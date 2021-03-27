/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import cart.ShoppingCart;
import enitity.Category;
import enitity.Product;
import java.io.IOException;
import java.util.Collection;
import javax.ejb.EJB;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import session.CategoryFacade;
import session.OrderManager;
import session.ProductFacade;

/**
 *
 * @author yasha
 */
@WebServlet(name = "Controller",
        loadOnStartup = 1,
        urlPatterns = {"/category",
            "/addToCart",
            "/viewCart",
            "/updateCart",
            "/checkout",
            "/purchase",
            "/chooseLanguage"
                ,"/register","/login"})
public class ControllerServelet extends HttpServlet {

    private String surcharge;

    @EJB
    private CategoryFacade categoryFacade;
    @EJB
    private ProductFacade productFacade;
    @EJB
    private OrderManager orderManager;

    @Override
    public void init(ServletConfig serveletConfig) throws ServletException {
        super.init(serveletConfig);

        surcharge = serveletConfig.getServletContext().getInitParameter("deliverySurcharge");

        // store category list in servlet context
        getServletContext().setAttribute("categories", categoryFacade.findAll());
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String userPath = request.getServletPath();

        HttpSession session = request.getSession();

        Category selectedCategory;
        Collection<Product> categoryProducts;

        //if categora page is rwquested 
        if (userPath.equals("/category")) {
            // get categoryId from request
            String categoryId = request.getQueryString();

            if (categoryId != null) {
                // get selected category
                selectedCategory = categoryFacade.find(Integer.parseInt(categoryId));

                // place selected category in request scope
                session.setAttribute("selectedCategory", selectedCategory);

                // get all products for selected category
                categoryProducts = selectedCategory.getProductCollection();

                // place category products in request scope
                session.setAttribute("categoryProducts", categoryProducts);
            }

        } //if cart tp age is requested 
        else if (userPath.equals("/viewCart")) {
            String clear = request.getParameter("clear");

            if ((clear != null) && clear.equals("true")) {

                ShoppingCart cart = (ShoppingCart) session.getAttribute("cart");
                cart.clear();
            }

            userPath = "/cart";

        } // if checkout page is requested 
        else if (userPath.equals("/checkout")) {

            ShoppingCart cart = (ShoppingCart) session.getAttribute("cart");

            // calculate total
            cart.calculateTotal(surcharge);

            // forward to checkout page and switch to a secure channel
            //ToDO: impletment checkout page request
        } // if ciew choose swtich language 
        else if (userPath.equals("/chooseLanguage")) {
            //implement language request

        }
        // user request dispath to forward request internally
        String url = "/WEB-INF/view" + userPath + ".jsp";
        try {
            request.getRequestDispatcher(url).forward(request, response);

        } catch (Exception ex) {
            ex.printStackTrace();
        }
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String userPath = request.getServletPath();
        HttpSession session = request.getSession();
        ShoppingCart cart = (ShoppingCart) session.getAttribute("cart");

        //if added to cart action is called 
        if (userPath.equals("/addToCart")) {
            //todo implement add a product to cart action
            if (cart == null) {
                cart = new ShoppingCart();
                session.setAttribute("cart", cart);

            }
            //get a user input from req
            String productId = request.getParameter("productId");
            if (!productId.isEmpty()) {
                Product product = productFacade.find(Integer.parseInt(productId));
                cart.addItem(product);
            }
            userPath = "/category";
        } //if updated cart action is called 
        else if (userPath.equals("/updateCart")) {

            // get input from request
            String productId = request.getParameter("productId");
            String quantity = request.getParameter("quantity");

            Product product = productFacade.find(Integer.parseInt(productId));
            cart.update(product, quantity);

            userPath = "/cart";

            // if purchase action is called
        } //if purchase actions is called
        else if (userPath.equals("/purchase")) {
            if (cart != null) {

                // extract user data from request
                String name = request.getParameter("name");
                String email = request.getParameter("email");
                String phone = request.getParameter("phone");
                String address = request.getParameter("address");
                String cityRegion = request.getParameter("cityRegion");
                String ccNumber = request.getParameter("creditcard");
                
                int orderId = orderManager.placeOrder(name, email, phone, address, cityRegion, ccNumber, cart);
            }

            userPath = "/confirmation";
        }

        String url = "/WEB-INF/view" + userPath + ".jsp";
        try {
            request.getRequestDispatcher(url).forward(request, response);

        } catch (Exception ex) {
            ex.printStackTrace();
        }

    }

}

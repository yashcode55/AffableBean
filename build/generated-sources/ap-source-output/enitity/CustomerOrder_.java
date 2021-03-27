package enitity;

import enitity.Customer;
import enitity.OrderedProduct;
import java.math.BigDecimal;
import java.util.Date;
import javax.annotation.Generated;
import javax.persistence.metamodel.CollectionAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2021-03-26T14:29:42")
@StaticMetamodel(CustomerOrder.class)
public class CustomerOrder_ { 

    public static volatile SingularAttribute<CustomerOrder, BigDecimal> amount;
    public static volatile SingularAttribute<CustomerOrder, Date> dateCreated;
    public static volatile SingularAttribute<CustomerOrder, Integer> confirmationNumber;
    public static volatile SingularAttribute<CustomerOrder, Customer> customerId;
    public static volatile SingularAttribute<CustomerOrder, Integer> id;
    public static volatile CollectionAttribute<CustomerOrder, OrderedProduct> orderedProductCollection;

}
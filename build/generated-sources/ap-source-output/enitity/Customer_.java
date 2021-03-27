package enitity;

import enitity.CustomerOrder;
import javax.annotation.Generated;
import javax.persistence.metamodel.CollectionAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2021-03-26T14:29:42")
@StaticMetamodel(Customer.class)
public class Customer_ { 

    public static volatile SingularAttribute<Customer, String> cityRegion;
    public static volatile SingularAttribute<Customer, String> ccNumber;
    public static volatile CollectionAttribute<Customer, CustomerOrder> customerOrderCollection;
    public static volatile SingularAttribute<Customer, String> address;
    public static volatile SingularAttribute<Customer, Integer> phone;
    public static volatile SingularAttribute<Customer, String> name;
    public static volatile SingularAttribute<Customer, Integer> id;
    public static volatile SingularAttribute<Customer, String> email;

}
package no.hvl.dat250.jpa.tutorial.creditcards;

import java.util.Collection;
import jakarta.persistence.*;

@Entity
public class Customer {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private String name;

    @ManyToMany
    private Collection<Address> adress;
    private Collection<CreditCard> creditCard;

    public String getName() {
        return name;
    }

    public Collection<Address> getAddresses() {
        return adress;
    }

    public Collection<CreditCard> getCreditCards() {
        return creditCard;
    }
}

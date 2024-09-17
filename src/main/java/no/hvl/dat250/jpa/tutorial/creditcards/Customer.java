package no.hvl.dat250.jpa.tutorial.creditcards;

import java.util.Collection;
import jakarta.persistence.*;
import java.util.ArrayList;

@Entity
public class Customer {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private String name;

    @ManyToMany
    private ArrayList<Address> adress = new ArrayList<Address>();
    
    @ManyToMany
    private ArrayList<CreditCard> creditCard = new ArrayList<CreditCard>();

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Collection<Address> getAddresses() {
        return adress;
    }

    public void addAddress(Address addresse) {
        this.adress.add(addresse);
    }

    public Collection<CreditCard> getCreditCards() {
        return creditCard;
    }

    public void addCreditCard(CreditCard creditCard) {
        this.creditCard.add(creditCard);
    }
}

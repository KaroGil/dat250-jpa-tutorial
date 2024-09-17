package no.hvl.dat250.jpa.tutorial.creditcards;

import jakarta.persistence.*;
import java.util.Collection;
import java.util.ArrayList;

@Entity
public class Bank {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private String name;

    @OneToMany
    private ArrayList<CreditCard> ownedCards = new ArrayList<CreditCard>();

    public Long getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Collection<CreditCard> getOwnedCards() {
        return ownedCards;
    }

    public void addOwnedCard(CreditCard ownedCard) {
        this.ownedCards.add(ownedCard);
    }
}

package no.hvl.dat250.jpa.tutorial.creditcards.driver;

import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityManagerFactory;
import jakarta.persistence.Persistence;
import no.hvl.dat250.jpa.tutorial.creditcards.Address;
import no.hvl.dat250.jpa.tutorial.creditcards.Bank;
import no.hvl.dat250.jpa.tutorial.creditcards.CreditCard;
import no.hvl.dat250.jpa.tutorial.creditcards.Customer;
import no.hvl.dat250.jpa.tutorial.creditcards.Pincode;

public class CreditCardsMain {

  static final String PERSISTENCE_UNIT_NAME = "jpa-tutorial";

  public static void main(String[] args) {
    try (EntityManagerFactory factory = Persistence.createEntityManagerFactory(
        PERSISTENCE_UNIT_NAME); EntityManager em = factory.createEntityManager()) {
      em.getTransaction().begin();
      createObjects(em);
      em.getTransaction().commit();
    }

  }

  private static void createObjects(EntityManager em) {
   // Create Address
   Address address = new Address();
   address.setStreet("Inndalsveien");
   address.setNumber(28);

   // Create Customer
   Customer customer = new Customer();
   customer.setName("Max Mustermann");
   customer.addAddress(address);

   address.addOwner(customer);

   // Create Bank
   Bank bank = new Bank();
   bank.setName("Pengebank");

   // Create CreditCard 1
   CreditCard card1 = new CreditCard();
   card1.setNumber(12345);
   card1.setBalance(-5000);
   card1.setCreditLimit(10000);
   card1.setCustomer(customer);
   card1.setOwningBank(bank);

   // Create Pincode 1
   Pincode pin1 = new Pincode();
   pin1.setCode("123");
   pin1.setCount(1);
   card1.setPincode(pin1);

   // Create CreditCard 2
   CreditCard card2 = new CreditCard();
   card2.setNumber(123);
   card2.setBalance(1);
   card2.setCreditLimit(2000);
   card2.setCustomer(customer);
   card2.setOwningBank(bank);

   // Create Pincode 2
   Pincode pin2 = new Pincode();
   pin2.setCode("123");
   pin2.setCount(1);
   card2.setPincode(pin2);

   // Persist all objects
   em.persist(customer);
   em.persist(bank);
   em.persist(card1);
   em.persist(card2);
  }
}

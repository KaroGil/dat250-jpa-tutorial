
    create table Address (
        number integer,
        id bigint generated by default as identity,
        street varchar(255),
        primary key (id)
    );

    create table Address_Customer (
        Address_id bigint not null,
        owners_id bigint not null,
        primary key (Address_id, owners_id)
    );

    create table Bank (
        id bigint generated by default as identity,
        name varchar(255),
        primary key (id)
    );

    create table Bank_CreditCard (
        Bank_id bigint not null,
        ownedCards_id bigint not null unique,
        primary key (Bank_id, ownedCards_id)
    );

    create table CreditCard (
        balance integer,
        creditLimit integer,
        number integer,
        customer_id bigint,
        id bigint generated by default as identity,
        owner_id bigint,
        pinCode_id bigint,
        primary key (id)
    );

    create table Customer (
        id bigint generated by default as identity,
        name varchar(255),
        primary key (id)
    );

    create table Customer_Address (
        Customer_id bigint not null,
        address_id bigint not null,
        primary key (Customer_id, address_id)
    );

    create table Customer_CreditCard (
        Customer_id bigint not null,
        creditCard_id bigint not null,
        primary key (Customer_id, creditCard_id)
    );

    create table Pincode (
        count integer,
        id bigint generated by default as identity,
        code varchar(255),
        primary key (id)
    );

    alter table if exists Address_Customer 
       add constraint FK63i2k9l07dovc8lcm1yvb4xqm 
       foreign key (owners_id) 
       references Customer;

    alter table if exists Address_Customer 
       add constraint FKt174op2ao20kqcufuv0jtngp5 
       foreign key (Address_id) 
       references Address;

    alter table if exists Bank_CreditCard 
       add constraint FKp0kj5rb9bwskhsul5kut7y8bt 
       foreign key (ownedCards_id) 
       references CreditCard;

    alter table if exists Bank_CreditCard 
       add constraint FKgahne1o6x3yer0f6xjx5g5nyo 
       foreign key (Bank_id) 
       references Bank;

    alter table if exists CreditCard 
       add constraint FKr73eujwdmgcc2bvrx2po05xt8 
       foreign key (customer_id) 
       references Customer;

    alter table if exists CreditCard 
       add constraint FK8lhfcyq010kaus95evwu55t3a 
       foreign key (owner_id) 
       references Bank;

    alter table if exists CreditCard 
       add constraint FKosjf9sesxdqo9sr2qin8vs01i 
       foreign key (pinCode_id) 
       references Pincode;

    alter table if exists Customer_Address 
       add constraint FKf48nf1nj4ny777ljsgwfm8i1y 
       foreign key (address_id) 
       references Address;

    alter table if exists Customer_Address 
       add constraint FKc3xuab6viv9u2bkydqyo63g6e 
       foreign key (Customer_id) 
       references Customer;

    alter table if exists Customer_CreditCard 
       add constraint FK45kmmu7e14l3bg2rjmgy2f03s 
       foreign key (creditCard_id) 
       references CreditCard;

    alter table if exists Customer_CreditCard 
       add constraint FKbcd9tsn3uxf491h4bv3vo023m 
       foreign key (Customer_id) 
       references Customer;

    create table Address (
        number integer,
        id bigint generated by default as identity,
        street varchar(255),
        primary key (id)
    );

    create table Address_Customer (
        Address_id bigint not null,
        owners_id bigint not null,
        primary key (Address_id, owners_id)
    );

    create table Bank (
        id bigint generated by default as identity,
        name varchar(255),
        primary key (id)
    );

    create table Bank_CreditCard (
        Bank_id bigint not null,
        ownedCards_id bigint not null unique,
        primary key (Bank_id, ownedCards_id)
    );

    create table CreditCard (
        balance integer,
        creditLimit integer,
        number integer,
        customer_id bigint,
        id bigint generated by default as identity,
        owner_id bigint,
        pinCode_id bigint,
        primary key (id)
    );

    create table Customer (
        id bigint generated by default as identity,
        name varchar(255),
        primary key (id)
    );

    create table Customer_Address (
        Customer_id bigint not null,
        address_id bigint not null,
        primary key (Customer_id, address_id)
    );

    create table Customer_CreditCard (
        Customer_id bigint not null,
        creditCard_id bigint not null,
        primary key (Customer_id, creditCard_id)
    );

    create table Pincode (
        count integer,
        id bigint generated by default as identity,
        code varchar(255),
        primary key (id)
    );

    alter table if exists Address_Customer 
       add constraint FK63i2k9l07dovc8lcm1yvb4xqm 
       foreign key (owners_id) 
       references Customer;

    alter table if exists Address_Customer 
       add constraint FKt174op2ao20kqcufuv0jtngp5 
       foreign key (Address_id) 
       references Address;

    alter table if exists Bank_CreditCard 
       add constraint FKp0kj5rb9bwskhsul5kut7y8bt 
       foreign key (ownedCards_id) 
       references CreditCard;

    alter table if exists Bank_CreditCard 
       add constraint FKgahne1o6x3yer0f6xjx5g5nyo 
       foreign key (Bank_id) 
       references Bank;

    alter table if exists CreditCard 
       add constraint FKr73eujwdmgcc2bvrx2po05xt8 
       foreign key (customer_id) 
       references Customer;

    alter table if exists CreditCard 
       add constraint FK8lhfcyq010kaus95evwu55t3a 
       foreign key (owner_id) 
       references Bank;

    alter table if exists CreditCard 
       add constraint FKosjf9sesxdqo9sr2qin8vs01i 
       foreign key (pinCode_id) 
       references Pincode;

    alter table if exists Customer_Address 
       add constraint FKf48nf1nj4ny777ljsgwfm8i1y 
       foreign key (address_id) 
       references Address;

    alter table if exists Customer_Address 
       add constraint FKc3xuab6viv9u2bkydqyo63g6e 
       foreign key (Customer_id) 
       references Customer;

    alter table if exists Customer_CreditCard 
       add constraint FK45kmmu7e14l3bg2rjmgy2f03s 
       foreign key (creditCard_id) 
       references CreditCard;

    alter table if exists Customer_CreditCard 
       add constraint FKbcd9tsn3uxf491h4bv3vo023m 
       foreign key (Customer_id) 
       references Customer;

    create table Address (
        number integer,
        id bigint generated by default as identity,
        street varchar(255),
        primary key (id)
    );

    create table Address_Customer (
        Address_id bigint not null,
        owners_id bigint not null,
        primary key (Address_id, owners_id)
    );

    create table Bank (
        id bigint generated by default as identity,
        name varchar(255),
        primary key (id)
    );

    create table Bank_CreditCard (
        Bank_id bigint not null,
        ownedCards_id bigint not null unique,
        primary key (Bank_id, ownedCards_id)
    );

    create table CreditCard (
        balance integer,
        creditLimit integer,
        number integer,
        customer_id bigint,
        id bigint generated by default as identity,
        owner_id bigint,
        pinCode_id bigint,
        primary key (id)
    );

    create table Customer (
        id bigint generated by default as identity,
        name varchar(255),
        primary key (id)
    );

    create table Customer_Address (
        Customer_id bigint not null,
        address_id bigint not null,
        primary key (Customer_id, address_id)
    );

    create table Customer_CreditCard (
        Customer_id bigint not null,
        creditCard_id bigint not null,
        primary key (Customer_id, creditCard_id)
    );

    create table Pincode (
        count integer,
        id bigint generated by default as identity,
        code varchar(255),
        primary key (id)
    );

    alter table if exists Address_Customer 
       add constraint FK63i2k9l07dovc8lcm1yvb4xqm 
       foreign key (owners_id) 
       references Customer;

    alter table if exists Address_Customer 
       add constraint FKt174op2ao20kqcufuv0jtngp5 
       foreign key (Address_id) 
       references Address;

    alter table if exists Bank_CreditCard 
       add constraint FKp0kj5rb9bwskhsul5kut7y8bt 
       foreign key (ownedCards_id) 
       references CreditCard;

    alter table if exists Bank_CreditCard 
       add constraint FKgahne1o6x3yer0f6xjx5g5nyo 
       foreign key (Bank_id) 
       references Bank;

    alter table if exists CreditCard 
       add constraint FKr73eujwdmgcc2bvrx2po05xt8 
       foreign key (customer_id) 
       references Customer;

    alter table if exists CreditCard 
       add constraint FK8lhfcyq010kaus95evwu55t3a 
       foreign key (owner_id) 
       references Bank;

    alter table if exists CreditCard 
       add constraint FKosjf9sesxdqo9sr2qin8vs01i 
       foreign key (pinCode_id) 
       references Pincode;

    alter table if exists Customer_Address 
       add constraint FKf48nf1nj4ny777ljsgwfm8i1y 
       foreign key (address_id) 
       references Address;

    alter table if exists Customer_Address 
       add constraint FKc3xuab6viv9u2bkydqyo63g6e 
       foreign key (Customer_id) 
       references Customer;

    alter table if exists Customer_CreditCard 
       add constraint FK45kmmu7e14l3bg2rjmgy2f03s 
       foreign key (creditCard_id) 
       references CreditCard;

    alter table if exists Customer_CreditCard 
       add constraint FKbcd9tsn3uxf491h4bv3vo023m 
       foreign key (Customer_id) 
       references Customer;

    create table Address (
        number integer,
        id bigint generated by default as identity,
        street varchar(255),
        primary key (id)
    );

    create table Address_Customer (
        Address_id bigint not null,
        owners_id bigint not null,
        primary key (Address_id, owners_id)
    );

    create table Bank (
        id bigint generated by default as identity,
        name varchar(255),
        primary key (id)
    );

    create table Bank_CreditCard (
        Bank_id bigint not null,
        ownedCards_id bigint not null unique,
        primary key (Bank_id, ownedCards_id)
    );

    create table CreditCard (
        balance integer,
        creditLimit integer,
        number integer,
        customer_id bigint,
        id bigint generated by default as identity,
        owner_id bigint,
        pinCode_id bigint,
        primary key (id)
    );

    create table Customer (
        id bigint generated by default as identity,
        name varchar(255),
        primary key (id)
    );

    create table Customer_Address (
        Customer_id bigint not null,
        address_id bigint not null,
        primary key (Customer_id, address_id)
    );

    create table Customer_CreditCard (
        Customer_id bigint not null,
        creditCard_id bigint not null,
        primary key (Customer_id, creditCard_id)
    );

    create table Pincode (
        count integer,
        id bigint generated by default as identity,
        code varchar(255),
        primary key (id)
    );

    alter table if exists Address_Customer 
       add constraint FK63i2k9l07dovc8lcm1yvb4xqm 
       foreign key (owners_id) 
       references Customer;

    alter table if exists Address_Customer 
       add constraint FKt174op2ao20kqcufuv0jtngp5 
       foreign key (Address_id) 
       references Address;

    alter table if exists Bank_CreditCard 
       add constraint FKp0kj5rb9bwskhsul5kut7y8bt 
       foreign key (ownedCards_id) 
       references CreditCard;

    alter table if exists Bank_CreditCard 
       add constraint FKgahne1o6x3yer0f6xjx5g5nyo 
       foreign key (Bank_id) 
       references Bank;

    alter table if exists CreditCard 
       add constraint FKr73eujwdmgcc2bvrx2po05xt8 
       foreign key (customer_id) 
       references Customer;

    alter table if exists CreditCard 
       add constraint FK8lhfcyq010kaus95evwu55t3a 
       foreign key (owner_id) 
       references Bank;

    alter table if exists CreditCard 
       add constraint FKosjf9sesxdqo9sr2qin8vs01i 
       foreign key (pinCode_id) 
       references Pincode;

    alter table if exists Customer_Address 
       add constraint FKf48nf1nj4ny777ljsgwfm8i1y 
       foreign key (address_id) 
       references Address;

    alter table if exists Customer_Address 
       add constraint FKc3xuab6viv9u2bkydqyo63g6e 
       foreign key (Customer_id) 
       references Customer;

    alter table if exists Customer_CreditCard 
       add constraint FK45kmmu7e14l3bg2rjmgy2f03s 
       foreign key (creditCard_id) 
       references CreditCard;

    alter table if exists Customer_CreditCard 
       add constraint FKbcd9tsn3uxf491h4bv3vo023m 
       foreign key (Customer_id) 
       references Customer;

    create table Address (
        number integer,
        id bigint generated by default as identity,
        street varchar(255),
        primary key (id)
    );

    create table Address_Customer (
        Address_id bigint not null,
        owners_id bigint not null,
        primary key (Address_id, owners_id)
    );

    create table Bank (
        id bigint generated by default as identity,
        name varchar(255),
        primary key (id)
    );

    create table Bank_CreditCard (
        Bank_id bigint not null,
        ownedCards_id bigint not null unique,
        primary key (Bank_id, ownedCards_id)
    );

    create table CreditCard (
        balance integer,
        creditLimit integer,
        number integer,
        customer_id bigint,
        id bigint generated by default as identity,
        owner_id bigint,
        pinCode_id bigint,
        primary key (id)
    );

    create table Customer (
        id bigint generated by default as identity,
        name varchar(255),
        primary key (id)
    );

    create table Customer_Address (
        Customer_id bigint not null,
        address_id bigint not null,
        primary key (Customer_id, address_id)
    );

    create table Customer_CreditCard (
        Customer_id bigint not null,
        creditCard_id bigint not null,
        primary key (Customer_id, creditCard_id)
    );

    create table Pincode (
        count integer,
        id bigint generated by default as identity,
        code varchar(255),
        primary key (id)
    );

    alter table if exists Address_Customer 
       add constraint FK63i2k9l07dovc8lcm1yvb4xqm 
       foreign key (owners_id) 
       references Customer;

    alter table if exists Address_Customer 
       add constraint FKt174op2ao20kqcufuv0jtngp5 
       foreign key (Address_id) 
       references Address;

    alter table if exists Bank_CreditCard 
       add constraint FKp0kj5rb9bwskhsul5kut7y8bt 
       foreign key (ownedCards_id) 
       references CreditCard;

    alter table if exists Bank_CreditCard 
       add constraint FKgahne1o6x3yer0f6xjx5g5nyo 
       foreign key (Bank_id) 
       references Bank;

    alter table if exists CreditCard 
       add constraint FKr73eujwdmgcc2bvrx2po05xt8 
       foreign key (customer_id) 
       references Customer;

    alter table if exists CreditCard 
       add constraint FK8lhfcyq010kaus95evwu55t3a 
       foreign key (owner_id) 
       references Bank;

    alter table if exists CreditCard 
       add constraint FKosjf9sesxdqo9sr2qin8vs01i 
       foreign key (pinCode_id) 
       references Pincode;

    alter table if exists Customer_Address 
       add constraint FKf48nf1nj4ny777ljsgwfm8i1y 
       foreign key (address_id) 
       references Address;

    alter table if exists Customer_Address 
       add constraint FKc3xuab6viv9u2bkydqyo63g6e 
       foreign key (Customer_id) 
       references Customer;

    alter table if exists Customer_CreditCard 
       add constraint FK45kmmu7e14l3bg2rjmgy2f03s 
       foreign key (creditCard_id) 
       references CreditCard;

    alter table if exists Customer_CreditCard 
       add constraint FKbcd9tsn3uxf491h4bv3vo023m 
       foreign key (Customer_id) 
       references Customer;

    create table Address (
        number integer,
        id bigint generated by default as identity,
        street varchar(255),
        primary key (id)
    );

    create table Address_Customer (
        Address_id bigint not null,
        owners_id bigint not null,
        primary key (Address_id, owners_id)
    );

    create table Bank (
        id bigint generated by default as identity,
        name varchar(255),
        primary key (id)
    );

    create table Bank_CreditCard (
        Bank_id bigint not null,
        ownedCards_id bigint not null unique,
        primary key (Bank_id, ownedCards_id)
    );

    create table CreditCard (
        balance integer,
        creditLimit integer,
        number integer,
        customer_id bigint,
        id bigint generated by default as identity,
        owner_id bigint,
        pinCode_id bigint,
        primary key (id)
    );

    create table Customer (
        id bigint generated by default as identity,
        name varchar(255),
        primary key (id)
    );

    create table Customer_Address (
        Customer_id bigint not null,
        address_id bigint not null,
        primary key (Customer_id, address_id)
    );

    create table Customer_CreditCard (
        Customer_id bigint not null,
        creditCard_id bigint not null,
        primary key (Customer_id, creditCard_id)
    );

    create table Pincode (
        count integer,
        id bigint generated by default as identity,
        code varchar(255),
        primary key (id)
    );

    alter table if exists Address_Customer 
       add constraint FK63i2k9l07dovc8lcm1yvb4xqm 
       foreign key (owners_id) 
       references Customer;

    alter table if exists Address_Customer 
       add constraint FKt174op2ao20kqcufuv0jtngp5 
       foreign key (Address_id) 
       references Address;

    alter table if exists Bank_CreditCard 
       add constraint FKp0kj5rb9bwskhsul5kut7y8bt 
       foreign key (ownedCards_id) 
       references CreditCard;

    alter table if exists Bank_CreditCard 
       add constraint FKgahne1o6x3yer0f6xjx5g5nyo 
       foreign key (Bank_id) 
       references Bank;

    alter table if exists CreditCard 
       add constraint FKr73eujwdmgcc2bvrx2po05xt8 
       foreign key (customer_id) 
       references Customer;

    alter table if exists CreditCard 
       add constraint FK8lhfcyq010kaus95evwu55t3a 
       foreign key (owner_id) 
       references Bank;

    alter table if exists CreditCard 
       add constraint FKosjf9sesxdqo9sr2qin8vs01i 
       foreign key (pinCode_id) 
       references Pincode;

    alter table if exists Customer_Address 
       add constraint FKf48nf1nj4ny777ljsgwfm8i1y 
       foreign key (address_id) 
       references Address;

    alter table if exists Customer_Address 
       add constraint FKc3xuab6viv9u2bkydqyo63g6e 
       foreign key (Customer_id) 
       references Customer;

    alter table if exists Customer_CreditCard 
       add constraint FK45kmmu7e14l3bg2rjmgy2f03s 
       foreign key (creditCard_id) 
       references CreditCard;

    alter table if exists Customer_CreditCard 
       add constraint FKbcd9tsn3uxf491h4bv3vo023m 
       foreign key (Customer_id) 
       references Customer;

    create table Address (
        number integer,
        id bigint generated by default as identity,
        street varchar(255),
        primary key (id)
    );

    create table Address_Customer (
        Address_id bigint not null,
        owners_id bigint not null,
        primary key (Address_id, owners_id)
    );

    create table Bank (
        id bigint generated by default as identity,
        name varchar(255),
        primary key (id)
    );

    create table Bank_CreditCard (
        Bank_id bigint not null,
        ownedCards_id bigint not null unique,
        primary key (Bank_id, ownedCards_id)
    );

    create table CreditCard (
        balance integer,
        creditLimit integer,
        number integer,
        customer_id bigint,
        id bigint generated by default as identity,
        owner_id bigint,
        pinCode_id bigint,
        primary key (id)
    );

    create table Customer (
        id bigint generated by default as identity,
        name varchar(255),
        primary key (id)
    );

    create table Customer_Address (
        Customer_id bigint not null,
        address_id bigint not null,
        primary key (Customer_id, address_id)
    );

    create table Customer_CreditCard (
        Customer_id bigint not null,
        creditCard_id bigint not null,
        primary key (Customer_id, creditCard_id)
    );

    create table Pincode (
        count integer,
        id bigint generated by default as identity,
        code varchar(255),
        primary key (id)
    );

    alter table if exists Address_Customer 
       add constraint FK63i2k9l07dovc8lcm1yvb4xqm 
       foreign key (owners_id) 
       references Customer;

    alter table if exists Address_Customer 
       add constraint FKt174op2ao20kqcufuv0jtngp5 
       foreign key (Address_id) 
       references Address;

    alter table if exists Bank_CreditCard 
       add constraint FKp0kj5rb9bwskhsul5kut7y8bt 
       foreign key (ownedCards_id) 
       references CreditCard;

    alter table if exists Bank_CreditCard 
       add constraint FKgahne1o6x3yer0f6xjx5g5nyo 
       foreign key (Bank_id) 
       references Bank;

    alter table if exists CreditCard 
       add constraint FKr73eujwdmgcc2bvrx2po05xt8 
       foreign key (customer_id) 
       references Customer;

    alter table if exists CreditCard 
       add constraint FK8lhfcyq010kaus95evwu55t3a 
       foreign key (owner_id) 
       references Bank;

    alter table if exists CreditCard 
       add constraint FKosjf9sesxdqo9sr2qin8vs01i 
       foreign key (pinCode_id) 
       references Pincode;

    alter table if exists Customer_Address 
       add constraint FKf48nf1nj4ny777ljsgwfm8i1y 
       foreign key (address_id) 
       references Address;

    alter table if exists Customer_Address 
       add constraint FKc3xuab6viv9u2bkydqyo63g6e 
       foreign key (Customer_id) 
       references Customer;

    alter table if exists Customer_CreditCard 
       add constraint FK45kmmu7e14l3bg2rjmgy2f03s 
       foreign key (creditCard_id) 
       references CreditCard;

    alter table if exists Customer_CreditCard 
       add constraint FKbcd9tsn3uxf491h4bv3vo023m 
       foreign key (Customer_id) 
       references Customer;

    create table Address (
        number integer,
        id bigint generated by default as identity,
        street varchar(255),
        primary key (id)
    );

    create table Address_Customer (
        Address_id bigint not null,
        owners_id bigint not null,
        primary key (Address_id, owners_id)
    );

    create table Bank (
        id bigint generated by default as identity,
        name varchar(255),
        primary key (id)
    );

    create table Bank_CreditCard (
        Bank_id bigint not null,
        ownedCards_id bigint not null unique,
        primary key (Bank_id, ownedCards_id)
    );

    create table CreditCard (
        balance integer,
        creditLimit integer,
        number integer,
        customer_id bigint,
        id bigint generated by default as identity,
        owner_id bigint,
        pinCode_id bigint,
        primary key (id)
    );

    create table Customer (
        id bigint generated by default as identity,
        name varchar(255),
        primary key (id)
    );

    create table Customer_Address (
        Customer_id bigint not null,
        address_id bigint not null,
        primary key (Customer_id, address_id)
    );

    create table Customer_CreditCard (
        Customer_id bigint not null,
        creditCard_id bigint not null,
        primary key (Customer_id, creditCard_id)
    );

    create table Pincode (
        count integer,
        id bigint generated by default as identity,
        code varchar(255),
        primary key (id)
    );

    alter table if exists Address_Customer 
       add constraint FK63i2k9l07dovc8lcm1yvb4xqm 
       foreign key (owners_id) 
       references Customer;

    alter table if exists Address_Customer 
       add constraint FKt174op2ao20kqcufuv0jtngp5 
       foreign key (Address_id) 
       references Address;

    alter table if exists Bank_CreditCard 
       add constraint FKp0kj5rb9bwskhsul5kut7y8bt 
       foreign key (ownedCards_id) 
       references CreditCard;

    alter table if exists Bank_CreditCard 
       add constraint FKgahne1o6x3yer0f6xjx5g5nyo 
       foreign key (Bank_id) 
       references Bank;

    alter table if exists CreditCard 
       add constraint FKr73eujwdmgcc2bvrx2po05xt8 
       foreign key (customer_id) 
       references Customer;

    alter table if exists CreditCard 
       add constraint FK8lhfcyq010kaus95evwu55t3a 
       foreign key (owner_id) 
       references Bank;

    alter table if exists CreditCard 
       add constraint FKosjf9sesxdqo9sr2qin8vs01i 
       foreign key (pinCode_id) 
       references Pincode;

    alter table if exists Customer_Address 
       add constraint FKf48nf1nj4ny777ljsgwfm8i1y 
       foreign key (address_id) 
       references Address;

    alter table if exists Customer_Address 
       add constraint FKc3xuab6viv9u2bkydqyo63g6e 
       foreign key (Customer_id) 
       references Customer;

    alter table if exists Customer_CreditCard 
       add constraint FK45kmmu7e14l3bg2rjmgy2f03s 
       foreign key (creditCard_id) 
       references CreditCard;

    alter table if exists Customer_CreditCard 
       add constraint FKbcd9tsn3uxf491h4bv3vo023m 
       foreign key (Customer_id) 
       references Customer;

    create table Address (
        number integer,
        id bigint generated by default as identity,
        street varchar(255),
        primary key (id)
    );

    create table Address_Customer (
        Address_id bigint not null,
        owners_id bigint not null,
        primary key (Address_id, owners_id)
    );

    create table Bank (
        id bigint generated by default as identity,
        name varchar(255),
        primary key (id)
    );

    create table Bank_CreditCard (
        Bank_id bigint not null,
        ownedCards_id bigint not null unique,
        primary key (Bank_id, ownedCards_id)
    );

    create table CreditCard (
        balance integer,
        creditLimit integer,
        number integer,
        customer_id bigint,
        id bigint generated by default as identity,
        owner_id bigint,
        pinCode_id bigint,
        primary key (id)
    );

    create table Customer (
        id bigint generated by default as identity,
        name varchar(255),
        primary key (id)
    );

    create table Customer_Address (
        Customer_id bigint not null,
        address_id bigint not null,
        primary key (Customer_id, address_id)
    );

    create table Customer_CreditCard (
        Customer_id bigint not null,
        creditCard_id bigint not null,
        primary key (Customer_id, creditCard_id)
    );

    create table Pincode (
        count integer,
        id bigint generated by default as identity,
        code varchar(255),
        primary key (id)
    );

    alter table if exists Address_Customer 
       add constraint FK63i2k9l07dovc8lcm1yvb4xqm 
       foreign key (owners_id) 
       references Customer;

    alter table if exists Address_Customer 
       add constraint FKt174op2ao20kqcufuv0jtngp5 
       foreign key (Address_id) 
       references Address;

    alter table if exists Bank_CreditCard 
       add constraint FKp0kj5rb9bwskhsul5kut7y8bt 
       foreign key (ownedCards_id) 
       references CreditCard;

    alter table if exists Bank_CreditCard 
       add constraint FKgahne1o6x3yer0f6xjx5g5nyo 
       foreign key (Bank_id) 
       references Bank;

    alter table if exists CreditCard 
       add constraint FKr73eujwdmgcc2bvrx2po05xt8 
       foreign key (customer_id) 
       references Customer;

    alter table if exists CreditCard 
       add constraint FK8lhfcyq010kaus95evwu55t3a 
       foreign key (owner_id) 
       references Bank;

    alter table if exists CreditCard 
       add constraint FKosjf9sesxdqo9sr2qin8vs01i 
       foreign key (pinCode_id) 
       references Pincode;

    alter table if exists Customer_Address 
       add constraint FKf48nf1nj4ny777ljsgwfm8i1y 
       foreign key (address_id) 
       references Address;

    alter table if exists Customer_Address 
       add constraint FKc3xuab6viv9u2bkydqyo63g6e 
       foreign key (Customer_id) 
       references Customer;

    alter table if exists Customer_CreditCard 
       add constraint FK45kmmu7e14l3bg2rjmgy2f03s 
       foreign key (creditCard_id) 
       references CreditCard;

    alter table if exists Customer_CreditCard 
       add constraint FKbcd9tsn3uxf491h4bv3vo023m 
       foreign key (Customer_id) 
       references Customer;

    create table Address (
        number integer,
        id bigint generated by default as identity,
        street varchar(255),
        primary key (id)
    );

    create table Address_Customer (
        Address_id bigint not null,
        owners_id bigint not null,
        primary key (Address_id, owners_id)
    );

    create table Bank (
        id bigint generated by default as identity,
        name varchar(255),
        primary key (id)
    );

    create table Bank_CreditCard (
        Bank_id bigint not null,
        ownedCards_id bigint not null unique,
        primary key (Bank_id, ownedCards_id)
    );

    create table CreditCard (
        balance integer,
        creditLimit integer,
        number integer,
        customer_id bigint,
        id bigint generated by default as identity,
        owner_id bigint,
        pinCode_id bigint,
        primary key (id)
    );

    create table Customer (
        id bigint generated by default as identity,
        name varchar(255),
        primary key (id)
    );

    create table Customer_Address (
        Customer_id bigint not null,
        address_id bigint not null,
        primary key (Customer_id, address_id)
    );

    create table Customer_CreditCard (
        Customer_id bigint not null,
        creditCard_id bigint not null,
        primary key (Customer_id, creditCard_id)
    );

    create table Pincode (
        count integer,
        id bigint generated by default as identity,
        code varchar(255),
        primary key (id)
    );

    alter table if exists Address_Customer 
       add constraint FK63i2k9l07dovc8lcm1yvb4xqm 
       foreign key (owners_id) 
       references Customer;

    alter table if exists Address_Customer 
       add constraint FKt174op2ao20kqcufuv0jtngp5 
       foreign key (Address_id) 
       references Address;

    alter table if exists Bank_CreditCard 
       add constraint FKp0kj5rb9bwskhsul5kut7y8bt 
       foreign key (ownedCards_id) 
       references CreditCard;

    alter table if exists Bank_CreditCard 
       add constraint FKgahne1o6x3yer0f6xjx5g5nyo 
       foreign key (Bank_id) 
       references Bank;

    alter table if exists CreditCard 
       add constraint FKr73eujwdmgcc2bvrx2po05xt8 
       foreign key (customer_id) 
       references Customer;

    alter table if exists CreditCard 
       add constraint FK8lhfcyq010kaus95evwu55t3a 
       foreign key (owner_id) 
       references Bank;

    alter table if exists CreditCard 
       add constraint FKosjf9sesxdqo9sr2qin8vs01i 
       foreign key (pinCode_id) 
       references Pincode;

    alter table if exists Customer_Address 
       add constraint FKf48nf1nj4ny777ljsgwfm8i1y 
       foreign key (address_id) 
       references Address;

    alter table if exists Customer_Address 
       add constraint FKc3xuab6viv9u2bkydqyo63g6e 
       foreign key (Customer_id) 
       references Customer;

    alter table if exists Customer_CreditCard 
       add constraint FK45kmmu7e14l3bg2rjmgy2f03s 
       foreign key (creditCard_id) 
       references CreditCard;

    alter table if exists Customer_CreditCard 
       add constraint FKbcd9tsn3uxf491h4bv3vo023m 
       foreign key (Customer_id) 
       references Customer;

    create table Address (
        number integer,
        id bigint generated by default as identity,
        street varchar(255),
        primary key (id)
    );

    create table Address_Customer (
        Address_id bigint not null,
        owners_id bigint not null,
        primary key (Address_id, owners_id)
    );

    create table Bank (
        id bigint generated by default as identity,
        name varchar(255),
        primary key (id)
    );

    create table Bank_CreditCard (
        Bank_id bigint not null,
        ownedCards_id bigint not null unique,
        primary key (Bank_id, ownedCards_id)
    );

    create table CreditCard (
        balance integer,
        creditLimit integer,
        number integer,
        customer_id bigint,
        id bigint generated by default as identity,
        owner_id bigint,
        pinCode_id bigint,
        primary key (id)
    );

    create table Customer (
        id bigint generated by default as identity,
        name varchar(255),
        primary key (id)
    );

    create table Customer_Address (
        Customer_id bigint not null,
        address_id bigint not null,
        primary key (Customer_id, address_id)
    );

    create table Customer_CreditCard (
        Customer_id bigint not null,
        creditCard_id bigint not null,
        primary key (Customer_id, creditCard_id)
    );

    create table Pincode (
        count integer,
        id bigint generated by default as identity,
        code varchar(255),
        primary key (id)
    );

    alter table if exists Address_Customer 
       add constraint FK63i2k9l07dovc8lcm1yvb4xqm 
       foreign key (owners_id) 
       references Customer;

    alter table if exists Address_Customer 
       add constraint FKt174op2ao20kqcufuv0jtngp5 
       foreign key (Address_id) 
       references Address;

    alter table if exists Bank_CreditCard 
       add constraint FKp0kj5rb9bwskhsul5kut7y8bt 
       foreign key (ownedCards_id) 
       references CreditCard;

    alter table if exists Bank_CreditCard 
       add constraint FKgahne1o6x3yer0f6xjx5g5nyo 
       foreign key (Bank_id) 
       references Bank;

    alter table if exists CreditCard 
       add constraint FKr73eujwdmgcc2bvrx2po05xt8 
       foreign key (customer_id) 
       references Customer;

    alter table if exists CreditCard 
       add constraint FK8lhfcyq010kaus95evwu55t3a 
       foreign key (owner_id) 
       references Bank;

    alter table if exists CreditCard 
       add constraint FKosjf9sesxdqo9sr2qin8vs01i 
       foreign key (pinCode_id) 
       references Pincode;

    alter table if exists Customer_Address 
       add constraint FKf48nf1nj4ny777ljsgwfm8i1y 
       foreign key (address_id) 
       references Address;

    alter table if exists Customer_Address 
       add constraint FKc3xuab6viv9u2bkydqyo63g6e 
       foreign key (Customer_id) 
       references Customer;

    alter table if exists Customer_CreditCard 
       add constraint FK45kmmu7e14l3bg2rjmgy2f03s 
       foreign key (creditCard_id) 
       references CreditCard;

    alter table if exists Customer_CreditCard 
       add constraint FKbcd9tsn3uxf491h4bv3vo023m 
       foreign key (Customer_id) 
       references Customer;

    create table Address (
        number integer,
        id bigint generated by default as identity,
        street varchar(255),
        primary key (id)
    );

    create table Address_Customer (
        Address_id bigint not null,
        owners_id bigint not null,
        primary key (Address_id, owners_id)
    );

    create table Bank (
        id bigint generated by default as identity,
        name varchar(255),
        primary key (id)
    );

    create table Bank_CreditCard (
        Bank_id bigint not null,
        ownedCards_id bigint not null unique,
        primary key (Bank_id, ownedCards_id)
    );

    create table CreditCard (
        balance integer,
        creditLimit integer,
        number integer,
        customer_id bigint,
        id bigint generated by default as identity,
        owner_id bigint,
        pinCode_id bigint,
        primary key (id)
    );

    create table Customer (
        id bigint generated by default as identity,
        name varchar(255),
        primary key (id)
    );

    create table Customer_Address (
        Customer_id bigint not null,
        address_id bigint not null,
        primary key (Customer_id, address_id)
    );

    create table Customer_CreditCard (
        Customer_id bigint not null,
        creditCard_id bigint not null,
        primary key (Customer_id, creditCard_id)
    );

    create table Pincode (
        count integer,
        id bigint generated by default as identity,
        code varchar(255),
        primary key (id)
    );

    alter table if exists Address_Customer 
       add constraint FK63i2k9l07dovc8lcm1yvb4xqm 
       foreign key (owners_id) 
       references Customer;

    alter table if exists Address_Customer 
       add constraint FKt174op2ao20kqcufuv0jtngp5 
       foreign key (Address_id) 
       references Address;

    alter table if exists Bank_CreditCard 
       add constraint FKp0kj5rb9bwskhsul5kut7y8bt 
       foreign key (ownedCards_id) 
       references CreditCard;

    alter table if exists Bank_CreditCard 
       add constraint FKgahne1o6x3yer0f6xjx5g5nyo 
       foreign key (Bank_id) 
       references Bank;

    alter table if exists CreditCard 
       add constraint FKr73eujwdmgcc2bvrx2po05xt8 
       foreign key (customer_id) 
       references Customer;

    alter table if exists CreditCard 
       add constraint FK8lhfcyq010kaus95evwu55t3a 
       foreign key (owner_id) 
       references Bank;

    alter table if exists CreditCard 
       add constraint FKosjf9sesxdqo9sr2qin8vs01i 
       foreign key (pinCode_id) 
       references Pincode;

    alter table if exists Customer_Address 
       add constraint FKf48nf1nj4ny777ljsgwfm8i1y 
       foreign key (address_id) 
       references Address;

    alter table if exists Customer_Address 
       add constraint FKc3xuab6viv9u2bkydqyo63g6e 
       foreign key (Customer_id) 
       references Customer;

    alter table if exists Customer_CreditCard 
       add constraint FK45kmmu7e14l3bg2rjmgy2f03s 
       foreign key (creditCard_id) 
       references CreditCard;

    alter table if exists Customer_CreditCard 
       add constraint FKbcd9tsn3uxf491h4bv3vo023m 
       foreign key (Customer_id) 
       references Customer;

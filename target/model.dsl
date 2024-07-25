supportStaff = person "IT Departement" "School Staff"
customer = person "Finance department" "Finance department of the School." "Customer"
customer -> supportStaff "Asks questions to"

group "School Accounting System" {
    mainframe = softwaresystem "Mainframe Banking System" "Stores all of the core banking information about customers, accounts, transactions, etc." "Existing"
    supportStaff -> mainframe "Uses"

    email = softwaresystem "E-mail System" "The internal Microsoft Exchange e-mail system." "Existing"
    email -> customer "Sends e-mails to"

    atm = softwaresystem "R" "Allows customers to withdraw cash." "Existing"
    atm -> mainframe "Uses"
    customer -> atm "Withdraws cash using"

    internetBankingSystem = softwaresystem "School Acounting DB" "Contains all information about finaces" {
        !include show-me-the-money/ibs.dsl
    }
    internetBankingSystem -> mainframe "Gets account information from, and makes payments using"   
    customer -> internetBankingSystem "Views and updates DB"
}


backoffice = person "Students" "Students within the School" "Bank Staff"
backoffice -> mainframe "Uses to get invoices"
# CSE311_Project

Description:
Suppose, I own a Bank, and I have stored all the information in account details schema. There are six tables in the account details schema. Those tables are account, borrower, branch, customer, depositor, and loan.


Account (account number, balance, branch name):
There is an account identified by account number. Total available balance at any given time represented by balance, and hosted branch name represented by branch name.
Borrower (customer name, loan number):
Each customer can take a loan from the bank against the loan number. A loan number can assign to multiple borrowers. If the same loan number is assign to multiple borrowers, this will represent a joint loan against that loan number.
Branch (branch name, branch city, asset):
A branch having a name is situate in a city having assets of a certain amount. There can be multiple branches in a city.


Customer (customer name, Customer Street, customer city):
A customer having a valid name lives at a street address in a city.


Depositor (account number, customer name):
A customer having a valid name has an account issued against an account number.


Loan (loan number, branch name, and amount):
Loan number identifies each loan, and each loan is issue by branch having branch name. Amount represents the issued total loan by a branch.

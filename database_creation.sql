---creation of User table
CREATE TABLE User (
    UserID INT AUTO_INCREMENT PRIMARY KEY,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    Email VARCHAR(100) UNIQUE NOT NULL
)

---creation of Category table
CREATE TABLE Category (
    Categoryid INT AUTO_INCREMENT PRIMARY KEY,
    Type VARCHAR(100) NOT NULL
)

---creation of UsePaymentMethod table
CREATE TABLE PaymentMethod (
    PaymentMethodID INT AUTO_INCREMENT PRIMARY KEY,
    MethodName VARCHAR(100) NOT NULL
)

---creation of Budget table
CREATE TABLE Budget (
    BudgetID INT AUTO_INCREMENT PRIMARY KEY,
    BudgetAmount DECIMAL(10,2) NOT NULL,
    UserID INT,
    FOREIGN KEY (UserID) REFERENCES User(UserID)
        ON DELETE CASCADE
        ON UPDATE CASCADE
)

---creation of Income table
CREATE TABLE Income (
    IncomeID INT AUTO_INCREMENT PRIMARY KEY,
    IncomeAmount DECIMAL(10,2) NOT NULL,
    IncomeDate DATE NOT NULL,
    UserID INT,
    CategoryID INT,
    FOREIGN KEY (UserID) REFERENCES User(UserID)
        ON DELETE CASCADE
        ON UPDATE CASCADE,
    FOREIGN KEY (CategoryID) REFERENCES Category(CategoryID)
        ON DELETE SET NULL
        ON UPDATE CASCADE
)

---creation of Expense table
CREATE TABLE Expense (
    ExpenseID INT AUTO_INCREMENT PRIMARY KEY,
    ExpenseAmount DECIMAL(10,2) NOT NULL,
    ExpenseDate DATE NOT NULL,
    CategoryID INT,
    UserID INT,
    PaymentMethodID INT,
    BudgetID INT,
    FOREIGN KEY (CategoryID) REFERENCES Category(CategoryID)
        ON DELETE SET NULL
        ON UPDATE CASCADE,
    FOREIGN KEY (UserID) REFERENCES User(UserID)
        ON DELETE CASCADE
        ON UPDATE CASCADE,
    FOREIGN KEY (PaymentMethodID) REFERENCES PaymentMethod(PaymentMethodID)
        ON DELETE SET NULL
        ON UPDATE CASCADE,
    FOREIGN KEY (BudgetID) REFERENCES Budget(BudgetID)
        ON DELETE SET NULL
        ON UPDATE CASCADE
)
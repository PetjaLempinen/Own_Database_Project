---How much has each user earned in total? 
SELECT Users.UserID, SUM(Income.IncomeAmount) AS TotalIncome
FROM Users
JOIN Income ON Users.UserID = Income.UserID
GROUP BY Users.UserID;

---How much has each user spent? 
SELECT User.UserID, SUM(Expense.ExpenseAmount) AS TotalExpenses
FROM User
JOIN Expense ON User.UserID = Expense.UserID
GROUP BY User.UserID;

---How much money was spent using each payment method?
SELECT PaymentMethod.MethodName, SUM(Expense.ExpenseAmount) AS TotalSpent
FROM Expense
JOIN PaymentMethod ON Expense.PaymentMethodID = PaymentMethod.PaymentMethodID
GROUP BY PaymentMethod.MethodName;

---How to compare every users budget with expenses? 
SELECT User.UserID, Budget.BudgetAmount, SUM(Expense.ExpenseAmount) AS ActualExpenses
FROM User
JOIN Budget ON User.UserID = Budget.UserID
JOIN Expense ON Budget.BudgetID = Expense.BudgetID
GROUP BY User.UserID, Budget.BudgetAmount;

---What is the largest expense that any user has made?
SELECT Expense.UserID, Expense.ExpenseAmount, Expense.ExpenseDate
FROM Expense
WHERE Expense.ExpenseAmount = (
    SELECT MAX(Expense.ExpenseAmount)
    FROM Expense
    WHERE Expense.UserID = Expense.UserID
);

---What is the smallest expense that any user has made?
SELECT Expense.UserID, Expense.ExpenseAmount, Expense.ExpenseDate
FROM Expense
WHERE Expense.ExpenseAmount = (
    SELECT MIN(Expense.ExpenseAmount)
    FROM Expense
    WHERE Expense.UserID = Expense.UserID
);

--- Creation of BudgetStatus VIEW
CREATE VIEW UserBudgetStatus AS
SELECT 
    User.UserID,
    Budget.BudgetAmount,
    SUM(Expense.ExpenseAmount) AS ActualExpenses,
    (Budget.BudgetAmount - SUM(Expense.ExpenseAmount)) AS RemainingBudget
FROM User
JOIN Budget ON User.UserID = Budget.UserID
JOIN Expense ON Budget.BudgetID = Expense.BudgetID
GROUP BY User.UserID, Budget.BudgetAmount;


#Q1

age=int(input("Enter the age-"))

if age<13:
    print("Child")
elif 13<age<20:
    print("Teenager")
else:
    print("Adult")


#Q2

blnce=int(input("Enter account balance:"))
withd=int(input("Amount to withdraw:"))

if withd>blnce:
        print("Insufficent Balance")
elif (withd%100==0) and (withd<=blnce):
        print("Transaction succesful")
else:
        print("Print amount in multiples of 100")
    
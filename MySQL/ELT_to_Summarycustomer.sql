Use DataEngineer;

CREATE procedure Insert_summary_customer()
BEGIN
Insert Into Marketing.Summary_customer(Total_user, Total_RelaxDuration, Total_MovieDuration, Total_ChildDuration, Total_SportDuration, Total_TvDuration, Total_Duration)
VALUES ((SELECT COUNT(Contract) from DataEngineer.Customer_behavior),
         (SELECT  SUM(RelaxDuration) from DataEngineer.Customer_behavior),
        (SELECT  SUM(MovieDuration) from DataEngineer.Customer_behavior),
        (SELECT SUM(ChildDuration) from DataEngineer.Customer_behavior),
        (SELECT SUM(SportDuration) from DataEngineer.Customer_behavior),
        (SELECT SUM(TvDuration) from DataEngineer.Customer_behavior),
        (SELECT SUM(TotalDuration) from DataEngineer.Customer_behavior)
         );
end;
CALL Insert_summary_customer()

SET SERVEROUTPUT ON;

CREATE OR REPLACE FUNCTION count_students (
    DepartmentID IN NUMBER
)
RETURN NUMBER
IS
    v_count NUMBER;
BEGIN
    SELECT COUNT(*)
    INTO v_count
    FROM Student
    WHERE Student.DepartmentID = DepartmentID;

    RETURN v_count;
END;
/

DECLARE
    v_total NUMBER;
BEGIN
    v_total := count_students(10);

    DBMS_OUTPUT.PUT_LINE(
        'Number of students in Department 10 = ' || v_total
    );
END;
/

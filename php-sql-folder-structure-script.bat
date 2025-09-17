@echo off
REM ==================================================
REM PHP & SQL Reference Guide - Setup Script (Windows)
REM Creates folders and empty Markdown files
REM ==================================================

REM Helper: Create folders if not exist
if not exist 01_php_basics mkdir 01_php_basics
if not exist 02_files_sessions mkdir 02_files_sessions
if not exist 03_sql mkdir 03_sql
if not exist 04_pdo mkdir 04_pdo
if not exist 05_crud mkdir 05_crud
if not exist 06_security mkdir 06_security
if not exist 07_oop mkdir 07_oop
if not exist 08_http_requests mkdir 08_http_requests

REM PHP Basics
echo # Hello World ^& Syntax > 01_php_basics\hello_world.md
echo # Variables ^& Data Types > 01_php_basics\variables_data_types.md
echo # Operators > 01_php_basics\operators.md
echo # Control Structures > 01_php_basics\control_structures.md
echo # Functions > 01_php_basics\functions.md
echo # Arrays ^& Strings > 01_php_basics\arrays_strings.md
echo # Working with Forms > 01_php_basics\forms.md

REM Files & Sessions
echo # File Handling (read ^& write) > 02_files_sessions\files.md
echo # Cookies ^& Sessions > 02_files_sessions\sessions.md

REM SQL Basics
echo # Introduction to SQL > 03_sql\sql_basics.md
echo # Creating ^& Modifying Tables > 03_sql\tables.md
echo # SQL Data Types > 03_sql\data_types.md
echo # SELECT Queries > 03_sql\select.md
echo # WHERE, ORDER BY, LIMIT > 03_sql\filters_sorting.md
echo # JOINs (INNER, LEFT, RIGHT) > 03_sql\joins.md

REM PDO
echo # PDO Introduction ^& Connecting to DB > 04_pdo\pdo_intro.md
echo # Prepared Statements > 04_pdo\prepared_statements.md
echo # Error Handling > 04_pdo\error_handling.md
echo # Transactions > 04_pdo\transactions.md

REM CRUD
echo # Create (INSERT) > 05_crud\create.md
echo # Read (SELECT) > 05_crud\read.md
echo # Update (UPDATE) > 05_crud\update.md
echo # Delete (DELETE) > 05_crud\delete.md
echo # Mini Project: CRUD with PDO > 05_crud\crud_project.md

REM Security
echo # Input Validation ^& Filtering > 06_security\input_validation.md
echo # Preventing SQL Injection > 06_security\sql_injection.md
echo # Password Hashing ^& Storage > 06_security\passwords.md
echo # Session Security > 06_security\session_security.md

REM OOP
echo # OOP Introduction > 07_oop\oop_intro.md
echo # MVC Basics > 07_oop\mvc.md
echo # Login System Project > 07_oop\login_system.md

REM HTTP Requests
echo # HTTP Basics (Request ^& Response Cycle) > 08_http_requests\http_basics.md
echo # GET vs POST > 08_http_requests\get_vs_post.md
echo # Working with Headers > 08_http_requests\headers.md
echo # Handling JSON ^& APIs > 08_http_requests\json_api.md

REM Main Index
echo # PHP ^& SQL Reference Guide > README.md
echo. >> README.md
echo (Table of contents will go here) >> README.md

echo.
echo ==================================================
echo Setup complete! All folders and Markdown files have been created.
echo ==================================================
pause

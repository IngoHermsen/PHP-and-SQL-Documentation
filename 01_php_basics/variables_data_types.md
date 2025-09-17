# Variables & Data Types

## Variables

Variables in PHP start with `$` and are case-sensitive.

```php
<?php
$name = "John";
$age = 25;
$user_email = "john@example.com";  // Valid: letters, numbers, underscores
// $2name = "Invalid";              // Invalid: starts with number
?>
```

## Data Types

PHP automatically determines data types based on the assigned value.

### Scalar Types (Single Values)

#### String

```php
<?php
$greeting = "Hello World";
$name = "John";
$message = "Hello $name";        // Variable interpolation
$literal = 'Hello $name';        // No interpolation
$combined = "Hello" . " World";  // Concatenation with .
?>
```

#### Integer & Float

```php
<?php
$count = 42;
$price = 19.99;
$negative = -17;
?>
```

#### Boolean

```php
<?php
$is_active = true;
$is_deleted = false;
?>
```

### Compound Types (Multiple Values)

#### Array

```php
<?php
// Indexed array
$colors = ["red", "green", "blue"];

// Associative array
$user = [
    "name" => "John",
    "age" => 30,
    "active" => true
];

echo $colors[0];       // Output: red
echo $user["name"];    // Output: John
?>
```
More about Arrays in [Arrays and Strings](arrays_strings.md)

#### Object

```php
<?php
class Person {
    public $name = "John";
    public function speak() {
        return "Hello!";
    }
}

$person = new Person();
echo $person->name;     // Output: John
echo $person->speak();  // Output: Hello!
?>
```

### Special Types

#### NULL

```php
<?php
$empty_var = null;
$undefined;  // Also null if not assigned
?>
```

## Type Checking & Conversion

```php
<?php
$value = "123";

// Check types
is_string($value);    // true
is_int($value);       // false
gettype($value);      // "string"

// Convert types
$number = (int) $value;     // 123
$float = (float) $value;    // 123.0
$string = (string) 42;      // "42"
$bool = (bool) 1;           // true

// Automatic conversion
$result = "10" + 5;         // 15 (string becomes int)
?>
```

## Variable Scope

```php
<?php
$global_var = "I'm global";

function test() {
    global $global_var;     // Access global variable
    $local_var = "I'm local"; // Only available inside function
    
    static $counter = 0;    // Remembers value between function calls
    $counter++;
    return $counter;
}
?>
```

## Constants

```php
<?php
define("SITE_NAME", "My Website");
const API_KEY = "abc123";

echo SITE_NAME;  // Output: My Website
?>
```

## Quick Example

```php
<?php
$user = [
    "username" => "johndoe",
    "email" => "john@example.com", 
    "balance" => 250.50,
    "active" => true
];

echo "User: " . $user["username"];
echo "Status: " . ($user["active"] ? "Active" : "Inactive");
echo "Balance: $" . number_format($user["balance"], 2);
?>
```

## Key Points

- Variables start with `$` and are case-sensitive
- Use `.` for string concatenation (not `+`)
- PHP automatically converts types when needed
- Use `is_type()` functions to check data types
- Arrays can be indexed `[0]` or associative `["key"]`

# Dart Null Safety – Comparison Between `?` and `!` and `?.`

## 1. Nullable Operator (`?`)

Used after a Data Type to allow a variable to accept either a value or `null`.

**Example:**

```dart
String name = "Nour"; // Non-nullable
String? age;          // Nullable

age = "25"; // Valid
age = null; // Valid
```

- `String`: Cannot accept null.
- `String?`: Can accept a String value or null.

## 2. Null Assertion Operator (`!`)

Used after a variable or expression to tell Dart that we are sure its value is NOT null.

**Example:**

```dart
String? name = "Nour";

print(name!.length); // 4
```

**Important:** If the value is null, using `!` causes a Runtime Error.

```dart
String? name = null;

print(name!.length); // Runtime Error
```

## 3. Null-aware Operator (`?.`)

Used to safely access a property or call a method only if the variable is NOT null.

If the variable is null, the expression returns null instead of throwing an error.

**Example:**

```dart
String? name = "Nour";

print(name?.length); // 4
```

```dart
String? name = null;

print(name?.length); // null
```

## 4. Comparison Table

| Operator | Name | Purpose |
|---|---|---|
| `?` | Nullable Operator | Allows a variable to accept null |
| `!` | Null Assertion Operator | Asserts that a value is not null |
| `?.` | Null-aware Operator | Safely accesses a property or method if the value is not null |

## 5. Practical Example

```dart
String? username = "Nour";

print(username);         // Nour
print(username!);        // Nour
print(username?.length); // 4
```

If `username = null`:

| Code | Output |
|---|---|
| `print(username)` | null |
| `print(username!)` | Runtime Error |
| `print(username?.length)` | null |

## 6. When to Use Each Operator?

- `?` → When a variable may have a null value.
- `!` → When you are certain that the value is not null.
- `?.` → When you want to access a property or method safely.

## 7. Important Notes

In Flutter, when working with APIs or Firebase, some data may be missing or null.

Instead of using `!` everywhere, consider using:

**A. Null-aware access (`?.`):**

```dart
print(userName?.length);
```

**B. Null-coalescing operator (`??`):**

Provides a default value if the variable is null.

```dart
String? userName;

print(userName ?? "Guest"); // Guest
```

**C. If statement:**

```dart
if (userName != null) {
  print(userName.length);
}
```

**Remember:**
- `?` → Can be null.
- `!` → Trust me, it's NOT null.
- `?.` → Access safely.
- `??` → Give me a default value if null.

**Best Practice:** Avoid using `!` unless you are certain that the value is not null. Prefer safe null handling using `?.`, `??`, or `if` statements.
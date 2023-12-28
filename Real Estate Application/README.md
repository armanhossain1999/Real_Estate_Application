## Customized Theme

In this project, we have customized our site's theme by incorporating the "eBusiness" Bootstrap template, which was created and provided by [BootstrapMade.com](https://bootstrapmade.com/). This template was updated on Sep 18, 2023, using Bootstrap v5.3.2.

- Template Name: eBusiness
- Template URL: [eBusiness Bootstrap Corporate Template](https://bootstrapmade.com/ebusiness-bootstrap-corporate-template/)
- Author: [BootstrapMade.com](https://bootstrapmade.com/)
- License: [Template License](https://bootstrapmade.com/license/)

By integrating this template, we have given our site a unique and visually appealing appearance that differentiates it from the standard .NET MVC template with Bootstrap.

For additional information on the template and its licensing terms, please visit the provided links.

---

Note: A comment has been added in the _Layout.cshtml file to attribute the source of our theme.



## Advanced Feature: View Components

View components in ASP.NET Core are a powerful tool for rendering complex, reusable chunks of content within your web application. They offer several advantages, including:

- Rendering a chunk of content rather than an entire response.
- Providing a clear separation of concerns and excellent testability, much like controllers and views.
- Supporting parameters and business logic.
- Being typically invoked from layout pages.

### When to Use View Components

View components shine when you need to implement reusable rendering logic that's too complex for a standard partial view. Consider using view components for features such as:

- Dynamic navigation menus
- A tag cloud that queries a database
- Sign-in panels
- Shopping carts
- Displaying recently published articles
- Sidebar content on a blog
- A sign-in panel that appears on every page and shows links to sign out or sign in based on the user's sign-in state.

### Anatomy of a View Component

A view component comprises two main parts:

1. The view component class, typically derived from `ViewComponent`.
2. The result it returns, which is usually a view.

While a view component can be a plain old C# object (POCO), most developers take advantage of the methods and properties available by deriving from `ViewComponent`.

For more in-depth information and usage examples, please refer to the official [ASP.NET Core documentation on view components](https://learn.microsoft.com/en-us/aspnet/core/mvc/views/view-components?view=aspnetcore-7.0#view-components-1).

This documentation provides comprehensive details on creating and using view components in your ASP.NET Core application.

### Example Usage

Here's a basic example of how to create and use a view component:

```csharp
using Microsoft.AspNetCore.Mvc;

public class MyViewComponent : ViewComponent
{
    public IViewComponentResult Invoke()
    {
        // Your business logic here
        // Return a view or HTML content
    }
}

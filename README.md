gradle Cookbook
===============
Installs Gradle

Requirements
------------
- `java` - gradle needs java 6+



default[:gradle][:version] = "1.10"
default[:gradle][:flavor] = "bin" # choices: all, bin, src
default[:gradle][:url] = "https://services.gradle.org/distributions/gradle"
default[:gradle][:home] = "/usr/local/bin/gradle"

Attributes
----------
<table>
  <tr>
    <th>Key</th>
    <th>Type</th>
    <th>Description</th>
    <th>Default</th>
  </tr>
  <tr>
    <td><tt>[:gradle][:version]</tt></td>
    <td>Version</td>
    <td></td>
    <td><tt>1.10</tt></td>
  </tr>
  <tr>
    <td><tt>[:gradle][:flavor]</tt></td>
    <td>Flavor</td>
    <td>Binary/Source/Both => (bin/src/all)</td>
    <td><tt>bin</tt></td>
  </tr>
  <tr>
    <td><tt>[:gradle:][:home]</tt></td>
    <td>home</td>
    <td>Install Path</td>
    <td><tt>/usr/local/bin/gradle/gradle-<version></tt></td>
  </tr>
</table>

Usage
-----
`recipe[android-studio]` will install gradle, by default.  (This is set in Android-Studio's attributes).  But I see why you might want to set it up independently (cough, cough, Jenkins, cough)
#### gradle::default
Just include `gradle` in your node's `run_list`:

```json
{
  "name":"my_node",
  "run_list": [
    "recipe[gradle]"
  ]
}
```

Contributing
------------
TODO: (optional) If this is a public cookbook, detail the process for contributing. If this is a private cookbook, remove this section.

e.g.
1. Fork the repository on Github
2. Create a named feature branch (like `add_component_x`)
3. Write your change
4. Write tests for your change (if applicable)
5. Run the tests, ensuring they all pass
6. Submit a Pull Request using Github

License and Authors
-------------------
Authors: TODO: List authors

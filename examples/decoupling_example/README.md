### Decoupling Example

In this example we want to no longer support `ap-south-1`

To do so we are going to decouple our providers and our resources by using two variables instead of one:
- `provider_regions`
- `resource_regions`

Then we can remove `ap-south-1` from our `resource_regions` variable. 
This allows Terraform to delete the resources in `ap-south-1` as they are no longer rendered but there is still a provider block there for it to do so.

After this has been ran into all accounts you can remove `ap-south-1` from the `provider_regions` variable if you so desire.
<a name="readme-top"></a>

# A better way of using AFT in a multi-region CT Landing Zone


[![Blog Post Badge](https://img.shields.io/badge/Blog%20Post-00A86A?style=flat-square&logo=medium&logoColor=white)](https://medium.com/@joshpattison23/a-better-way-of-using-aft-in-a-multi-region-ct-landing-zone-e8482ef72ea)
![Stars](https://img.shields.io/github/stars/pattisoj/aft-multi-region-ct-landing-zone-examples?style=flat-square)
![MIT License](https://img.shields.io/github/license/pattisoj/aft-multi-region-ct-landing-zone-examples?style=flat-square)

<details>
<summary>Table of contents</summary>
  <ol>
    <li>
      <a href="#about-the-project">About The Repository</a>
    </li>
    <li>
      <a href="#contributing">Contributing</a>
    </li>
    <li>
       <a href="#license">License</a>
    </li>
    <li>
       <a href="#contact">Contact</a>
    </li>
  </ol>
</details>

## About The Repository

This repository contains examples that relate to, and extend on, my Medium Blog Post - [A better way of using AFT in a multi-region CT Landing Zone](https://medium.com/@joshpattison23/a-better-way-of-using-aft-in-a-multi-region-ct-landing-zone-e8482ef72ea). 

Although this is detailed in my blog post, here is the command that AFT runs in order to turn Jinja files into Terraform -

```
for f in *.jinja; do jinja2 $f -D timestamp="$TIMESTAMP" -D tf_distribution_type=$TF_DISTRIBUTION -D provider_region=$CT_MGMT_REGION -D region=$TF_BACKEND_REGION -D aft_admin_role_arn=$AFT_EXEC_ROLE_ARN -D target_admin_role_arn=$VENDED_EXEC_ROLE_ARN -D bucket=$TF_S3_BUCKET -D key=$TF_S3_KEY -D dynamodb_table=$TF_DDB_TABLE -D kms_key_id=$TF_KMS_KEY_ID >> ./$(basename $f .jinja).tf; done
```
To use this locally, `cd` into the directory containing your Jinja Templates and run the command from within there. I suggest changing the variables (e.g `"$TIMESTAMP"`) into simply strings of themselves as this allows for easy use and tracking of where the variables will end up. I also suggest creating a `tmp` directory and editing the final part of the command to put the newly created Terraform in that new `tmp` directory (`./$(basename $f .jinja).tf` becomes `./tmp/$(basename $f .jinja).tf`) as this allows for easy clean up with `rm -rf tmp`.

I have included and example of what the produced Terraform looks like in the [blog_post_example](https://github.com/pattisoj/aft-multi-region-ct-landing-zone-examples/tree/blog-post-examples/examples/blog_post_example) and [module_example](https://github.com/pattisoj/aft-multi-region-ct-landing-zone-examples/tree/blog-post-examples/examples/module_example) directories.

<!-- CONTRIBUTING -->
## Contributing

I am sure the examples in this repository are nowhere near exhaustive. If you come up with another use case or example you would like to share to others please do not hesitate to do so. Any contributions you make are **greatly appreciated**.

1. Fork the Project
2. Create your Example Branch (`git checkout -b example/new_example`)
3. `CD` Into the `examples` Directory and Create a New Directory for your Example
4. Work your Magic :mage:
5. Commit your Changes (`git commit -m 'Added an Example'`)
6. Push to the Branch (`git push origin example/new_example`)
7. Open a Pull Request and detail your new Example!

<!-- LICENSE -->
## License

Distributed under the MIT License. See `LICENSE.txt` for more information.

<!-- CONTACT -->
## Contact

[![Twitter](https://img.shields.io/badge/Twitter-1DA1F2?style=for-the-badge&logo=twitter&logoColor=white)](https://twitter.com/_pattisoj) [![Linkedin](https://img.shields.io/badge/LinkedIn-0077B5?style=for-the-badge&logo=linkedin&logoColor=white)](https://www.linkedin.com/in/josh-pattison/)

<p align="right">(<a href="#readme-top">Back to top</a>)</p>

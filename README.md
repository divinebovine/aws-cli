# aws-cli

Docker image for AWS CLI v2

## Example Usage

```
- name: List S3 Bucket Contents
  uses: divinebovine/aws-cli@v1.0.0
  with:
    args: s3 ls s3://some-bucket/
  env:
    AWS_ACCESS_KEY_ID: ${{ secrets.AWS_ACCESS_KEY_ID }}
    AWS_SECRET_ACCESS_KEY: ${{ secrets.AWS_SECRET_ACCESS_KEY }}
    AWS_DEFAULT_REGION: "us-east-1"
```

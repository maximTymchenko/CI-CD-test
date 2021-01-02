aws s3 rm --recursive s3://ci-test1/index.html
aws s3 cp public s3://ci-test1/index.html --recursive --exclude "*.DS_Store" --acl public-read
aws cloudfront create-invalidation --distribution-id E1CJEH343DGUK3 --paths "/*"
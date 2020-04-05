## awspec  
[k1LoW/awspec: RSpec tests for your AWS resources\.](https://github.com/k1LoW/awspec)

## usage
build
```sh
docker build -t awspec .
```

init
```sh
docker run -it --rm -v ~/.aws:/root/aws -v $(PWD):/work awspec awspec init
```

run test
```sh
docker run -it --rm -v ~/.aws:/root/aws -v $(PWD):/work awspec rake spec
```

generate
```sh
docker run -it --rm -v ~/.aws:/root/aws -v $(PWD):/work awspec awspec generate ec2 vpc-abc123 >> spec/ec2_spec.rb
```
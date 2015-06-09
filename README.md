# ihuyi

互亿无线发送短信的 Gem。

## Installation

Add this line to your application's Gemfile:

    gem 'ihuyi'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install ihuyi

## Usage

### 生成配置文件

1. 执行 `rails g ihuyi` 生成配置文件 `config/initialiers/ihuyi.rb`

2. 替换 account、password

```ruby
# config/initialiers/ihuyi.rb
Ihuyi.account  = "Your Ihuyi Account"
Ihuyi.password = "Your Ihuyi Password(可以明文密码或使用32位MD5加密)"
```

### 发送短信

```ruby
  Ihuyi::SMS.deliver(15210972202, '您的验证码是：【变量】。请不要把验证码泄露给其他人。')
```
* 第一个参数是手机号码

* 第二个是短信内容。



[![Bitdeli Badge](https://d2weczhvl823v0.cloudfront.net/debbbbie/ihuyi/trend.png)](https://bitdeli.com/free "Bitdeli Badge")


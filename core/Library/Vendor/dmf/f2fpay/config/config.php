<?php
$config = array (
		//签名方式,默认为RSA2(RSA2048)
		'sign_type' => "RSA2",

		//支付宝公钥
		'alipay_public_key' => "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEA19e6t2QRcLKVr6RJzzDtIQQ7lyUoSt+SAz9J2xzY2KGObRCxJJe66TfN62V1WspLQKRzUlvbyiDcJBYQa2zWLEwUaavtEtvub8p/hb/Yw8f1vHy+ipi3Rpa0UDnygyd07t8CdpAnabaCkDbWFT7Dh8vN8FLSFX5KCbuPdxAr17qLaJl5a9Ns1dFFUWFucdkN+UxACy4xUZRamUp1hubRZNey9cu4r396EplqzgA6s3Yw8YgscjnBdM7vweyYiX5I0F+FQwtHpx0PKBrn9q+S445HP50Yc/gXUs3zdXzj7IM5o4a6/u5A5OiSa4hK+I9Shk1/LohXD7X4y4+CM5KlSwIDAQAB",

		//商户私钥
		'merchant_private_key' => "MIIEpQIBAAKCAQEAyXOIiDqnnWk4745ZCwA0/rnIdjBOML4bo53X79B9OLpFNGQs+DduSBn+HEIUE50ylgRbS+KhzK6Ev2eM9BNCzFTkV/ZW+8+MhBHAlNs7Ed6I9kZOvL5vsDKNU2/2uBcPF5wCJyMbdhrgXrY2X+jRvRmSudo07QVg5HaeUKEh35jB5F1dsCeEJ7q7zzzAF7lCQirIQ+TeIxDi3P6qzX/W05/4g1li/0YCRDT0psgR50wRvTQ6wAV8A1oUYsMrjnu1ikC9oqRJ/0Kt99ZL48zUJCQx+TJM7yAI9UT5zJUqgp02ylL1HNpvLozQoB958XuPoXOe9ZfkiQdiiAvw9e9xkQIDAQABAoIBAFVbn9lhSQ5YvGg835varZnVLIxvsWHT27A7PHj/1V9JBfPKEofmLNNeOB7PHOSmsf2AwRJpZ/drZxIXFVGCK8aandprpbWy3q5DO1+XePL8YPpBFjHBW1/EO7/D7D1af+mYEA13QbaMcs+O04FWDDDc+h/Hxq87nS+Q10oAzHKJ7bNZFckNKhtWG+YYjWGQeqYNVtyuwGkgCzWu/SUstq6w+Wia/o9DrA9hKuggbWqCIu8q+ISXmJd0HmLvW6pS5/PLJbBSgk/zKrXTM3l+oS3xE6d+uGU9PhBxvBL6sJJ2vfFJhJ3ZZ1DGe2Y2L7Fi1KjW8/Pv0pQjeI+ovUFL75UCgYEA8GRxz0stsCS1Rwd+c94g8aG2oh6aEBLaoRjyVkFi9skXl3uOgLyR37yLOiFPbqAA0U5CJbVCYsFXxFQ8bgQtCMN1hbtSVtmUU/C266qm8WK84Au1XtM6B8cs8NSb1qWVy6SFLxzvEOQIx+aCz6UnKO4d2/tycx0yssSmMWl3pVMCgYEA1ofZsq3HMkn8jGzEV0lerSSUS9BfAw4F2sGVuwOXWYiRUgj/GSXIIw4QPYKcPHqeqQv7QgZv+FPSmNumRdOON+SIemxGAWU4/SNcZKH3UJfz962wjpn2EgRFAAdomEQtL0efrgSVgHkg4hBR1hB1Ddxj8TYEFZLTi9OlyvYdbQsCgYEAl9ap+EhBBHg7NDEskx0j69u8EuyHXU27YHP0Zb0JOF3OE/WMDg6NiSd7PW1a0cIoogvvRggWdXAv8qdOQCNNGrLy4VRvbsIhqV9q+rIgnmlCabWbitiaV91bqoZwJIUUd7tkEF0TN7UBQtp7l5J2iKjWnWNWaBVyN250ltNKKlcCgYEAoZltxGmg7mHLKqBX+gRbnAM87isFFxD+Gf3O4zPeU2RLS0dZmcDbFIToeN0lAW3AjEhpOSAOQjoqHlj+1AR7UeEFaWqcBTsRhaWYWHmlCYGdFgoxQAn70TCEJXRvNpvMiZvjTbtIPqF/wqpWavC0q/9DDZUJ2JJkZiTE87EXE2cCgYEAh+bIKKs+6pqG9vQgiUYwIfeSHGT+w9I0czzaBjdr5S+4by/PfS0/zH5UELt1NM30Z1u5EnFYf8zayVEwfV7P/j1XhQsa8EAQAKUmuDN9Lt70cFcKV1dLL7o4F5AeWQLSBlx+hGB/ZDUn5xRQ46Ecb3rwJ3NcsoiSJe+9GqnnIrU=",

		//编码格式
		'charset' => "UTF-8",

		//支付宝网关
		'gatewayUrl' => "https://openapi.alipaydev.com/gateway.do",

		//应用ID
		'app_id' => "2016092000553798",

		//异步通知地址,只有扫码支付预下单可用
		'notify_url' => "http://www.baidu.com",

		//最大查询重试次数
		'MaxQueryRetry' => "10",

		//查询间隔
		'QueryDuration' => "3"
);
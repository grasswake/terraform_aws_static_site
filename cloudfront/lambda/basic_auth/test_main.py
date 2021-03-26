import main
import base64


def test_lambda_handler_failed():
    event = {
        "Records": [
            {
                "cf": {
                    "config": {
                        "distributionDomainName": "d111111abcdef8.cloudfront.net",
                        "distributionId": "EDFDVBD6EXAMPLE",
                        "eventType": "viewer-request",
                        "requestId": "4TyzHTaYWb1GX1qTfsHhEqV6HUDd_BzoBZnwfnvQc_1oF26ClkoUSEQ=="
                    },
                    "request": {
                        "clientIp": "203.0.113.178",
                        "headers": {
                            "host": [
                                {
                                    "key": "Host",
                                    "value": "d111111abcdef8.cloudfront.net"
                                }
                            ],
                            "user-agent": [
                                {
                                    "key": "User-Agent",
                                    "value": "curl/7.66.0"
                                }
                            ],
                            "accept": [
                                {
                                    "key": "accept",
                                    "value": "*/*"
                                }
                            ],
                            "authorization": [
                                {
                                    "key": "authorization",
                                    "value": "a:a"
                                }
                            ],
                        },
                        "method": "GET",
                        "querystring": "",
                        "uri": "/"
                    }
                }
            }
        ]
    }
    assert main.lambda_handler(event) == {
        'headers': {
            'www-authenticate': [
                {
                    'key': 'WWW-Authenticate',
                    'value': 'Basic'
                }
            ]
        },
        'status': 401,
        'body': 'Unauthorized'
    }


def test_lambda_handler_success():
    encoded_value = base64.b64encode("{}:{}".format(
        "periosprint", "69m$xSz2GGWx").encode('utf-8'))
    check_value = "Basic {}".format(encoded_value.decode(encoding='utf-8'))
    event = {
        "Records": [
            {
                "cf": {
                    "config": {
                        "distributionDomainName": "d111111abcdef8.cloudfront.net",
                        "distributionId": "EDFDVBD6EXAMPLE",
                        "eventType": "viewer-request",
                        "requestId": "4TyzHTaYWb1GX1qTfsHhEqV6HUDd_BzoBZnwfnvQc_1oF26ClkoUSEQ=="
                    },
                    "request": {
                        "clientIp": "203.0.113.178",
                        "headers": {
                            "host": [
                                {
                                    "key": "Host",
                                    "value": "d111111abcdef8.cloudfront.net"
                                }
                            ],
                            "user-agent": [
                                {
                                    "key": "User-Agent",
                                    "value": "curl/7.66.0"
                                }
                            ],
                            "accept": [
                                {
                                    "key": "accept",
                                    "value": "*/*"
                                }
                            ],
                            "authorization": [
                                {
                                    "key": "authorization",
                                    "value": check_value
                                }
                            ],
                        },
                        "method": "GET",
                        "querystring": "",
                        "uri": "/"
                    }
                }
            }
        ]
    }
    assert main.lambda_handler(event) == event.get("Records")[
        0].get("cf").get("request")


def test_check_authorization_header_failed():
    v = [
        {
            "key": "authorization",
            "value": "a:a"
        }
    ]
    assert main.check_authorization_header(v) == False


def test_check_authorization_header_success():
    encoded_value = base64.b64encode("{}:{}".format(
        "loginid", "password").encode('utf-8'))
    check_value = "Basic {}".format(encoded_value.decode(encoding='utf-8'))

    v = [
        {
            "key": "authorization",
            "value": check_value
        }
    ]
    assert main.check_authorization_header(v) == True

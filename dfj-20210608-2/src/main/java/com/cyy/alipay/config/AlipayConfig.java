package com.cyy.alipay.config;

import java.io.FileWriter;
import java.io.IOException;

/* *
 *类名：AlipayConfig
 *功能：基础配置类
 *详细：设置帐户有关信息及返回路径
 *修改日期：2017-04-05
 *说明：
 *以下代码只是为了方便商户测试而提供的样例代码，商户可以根据自己网站的需要，按照技术文档编写,并非一定要使用该代码。
 *该代码仅供学习和研究支付宝接口使用，只是提供一个参考。
 */

public class AlipayConfig {

	// ↓↓↓↓↓↓↓↓↓↓请在这里配置您的基本信息↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓

	// 应用ID,您的APPID，收款账号既是您的APPID对应支付宝账号
	public static String app_id = "9021000132622175";

	// 商户私钥，您的PKCS8格式RSA2私钥
	public static String merchant_private_key = "MIIEvQIBADANBgkqhkiG9w0BAQEFAASCBKcwggSjAgEAAoIBAQCViDqJllp2egaaBgSuD3/FwUzHN/juXYEeocAbJ62c/5/Inmw1F+MxAQeGYBKtpU5pvNnN5F3mo78ywotz1HXHgz4tiHCjL0QXt3k8K2QTNrgncpHG/E3Of4TgWY/SeDrxlKJGAsNUMgrSImeeOznAC98pH8UTHlYCv+GpfT6g7TQQpNNObH9IJckgCrhI4T+e5rRXvvT3CBNao4KOpkQLtYGSosmZc9rKgsfqOf0Qpd001ak9Y8628tGga3mrNPsivSoh0YZKA5Yz5Lg7rNIMxESCMsgLDMuSKN1e+/ec7R10hkljl2eiYWbX/dkVxalNqAL7iwY7tSwb5bOYCgq/AgMBAAECggEAcLoYVyzv2a04WNj8ojOxAWYt+Wmq0hfPhUYvSsloypiy3k0ACi6N6Z17DMRUkG+0Y2YpVFw6per/8sZS1uluORApya24LG0viimYzdFwSkPQJHzshPQju+7KP0+FaweUeBazFtBybIClQ7EIKHNBoBPTEm+O5FDUSpJZDqsKkcnZaMk2oSGly4E5AnA1eMbudGQN8TJLUtiUa89GMxl9mhL6gfDpZgGdW4MVB8niNvO8VOumbYpcnBX7TctbEcbSCRi2hgW5dQ94RTOb6UPmveMy5LyBmEFQdYvl2AmI9s4BywXLsIe5P/poeRreJy9jZyDfkptanp/jr/ayj8UfkQKBgQDLE7j1SiyJdodi76jTAUAdvJ2i+Af8xwKGJJyemcOVOPtuvMAAwUGrzzGQBidRWpW+uESrL/ZcDYROm2Caz5R3yHrq+lUaY2XgzSNgdnoBOfEOxFvQ20E0IP5sVUh4Qq/wz+N8LGnKOGTCqBftfee1sn381poxyOAH5k6+Z24CzQKBgQC8gEKesjlv4UWq40jubOH6dK63yeTayrkGGEFZRoRv5oxpIn42xYwrc9E4f3E+l/f/WjZ2ruwVmUhrjwts+MdtdKukO3RXSNfcCBa9UF2gLh/XUtVTlI0WgpWWxTRGUpCyr0VH/FQ/7g5hc4AIs/QS48GfUv1XmAiVEyQEi6v7uwKBgQDCPiUmCkK7YXJyQcZ7vbB0QRuO7CvHrxtM7+wXEACx1QU6kLQehLup+M7xcdFd0YV2HY8hJwlAV3V8MsaejXr3b/2SkMuiJ/0kn1L9S5W7Yo6ej1c7WNzvXbe+K3zb+v2LG23+MgUmdfZ68omgklN1yjsUArkOcZNIOxSKryfc6QKBgFBRBhHANqDpB1osxaJxWkfw95DvwUdIIVXrd8ymMz/KqAET5VtJCNRq4LaF9qaI8e4nbhVbqtP5H9ZUeLXRuod0sr2jZ4rZSsBB4g5/86SQgpiofqTCIut4cGxxUji0bVr1OzvU08D5mb8EC4Wpx1FVIebU4YU1DlMWeL5HFNyJAoGARuHeu45ssA0L7N8EvJvqzRv4nOwK6e7hPc/RGK2nNji9t3ktvmpjfYXQTkTdcRkfjrGvzPEsa0yYA8Ej3EPxrCM85uFDt4esYtcBvhFonwmmzn/bCFrtIH7lrdYU2d5vTYdYTkoEFO1TZ67ty2BtchVrsBwL4DLxEnBYikYG++g=";

	// 支付宝公钥,查看地址：https://openhome.alipay.com/platform/keyManage.htm
	// 对应APPID下的支付宝公钥。
	public static String alipay_public_key = "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAzFqZsDC0Nv7T+iNJ6fWjB5i1+tYK32t4pBhGMFOrtnnmG5/Wfxf55WAlALBNUQtwWgjeFIM4GXebW/monqFKBnZO0l42x30mvrht19GkAqME1Wo48mYFzVxYyXhLo2DtAP/+nX28BhK4ti3zy5pSso/I2e9S4pv6fqYCCiRawWQ5GSMdFjI9/AGhjqddU5xxW6esJ7k4iRxK72qfLcZqK+21bdH7O6YRK9cBzsQmkPHPiYlaQDV4YgbQjCK6W5O3S/9UTEgEJO+KKkcNaoK3jy0V0uBr0MUedqzicZkwScyuBLcevJz9WYkTxniyF53uwtmViTo5o6p4rl6+cfiOQQIDAQAB";

	// 服务器异步通知页面路径 需http://格式的完整路径，不能加?id=123这类自定义参数，必须外网可以正常访问
	public static String notify_url = "http://工程公网访问地址/alipay.trade.page.pay-JAVA-UTF-8/notify_url.jsp";

	// 页面跳转同步通知页面路径 需http://格式的完整路径，不能加?id=123这类自定义参数，必须外网可以正常访问
	public static String return_url = "http://工程公网访问地址/alipay.trade.page.pay-JAVA-UTF-8/return_url.jsp";

	// 签名方式
	public static String sign_type = "RSA2";

	// 字符编码格式
	public static String charset = "utf-8";

	// 支付宝网关
	public static String gatewayUrl = "https://openapi-sandbox.dl.alipaydev.com/gateway.do";

	// 支付宝网关
	public static String log_path = "C:\\";

	// ↑↑↑↑↑↑↑↑↑↑请在这里配置您的基本信息↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑

	/**
	 * 写日志，方便测试（看网站需求，也可以改成把记录存入数据库）
	 * 
	 * @param sWord
	 *            要写入日志里的文本内容
	 */
	public static void logResult(String sWord) {
		FileWriter writer = null;
		try {
			writer = new FileWriter(log_path + "alipay_log_"
					+ System.currentTimeMillis() + ".txt");
			writer.write(sWord);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if (writer != null) {
				try {
					writer.close();
				} catch (IOException e) {
					e.printStackTrace();
				}
			}
		}
	}
}

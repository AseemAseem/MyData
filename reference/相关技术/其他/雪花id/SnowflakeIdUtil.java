
import cn.hutool.core.lang.Snowflake;
import cn.hutool.core.util.IdUtil;
import lombok.extern.slf4j.Slf4j;
import org.apache.commons.lang3.RandomUtils;
import org.apache.commons.lang3.StringUtils;
import org.apache.commons.lang3.SystemUtils;

import java.net.InetAddress;
import java.net.UnknownHostException;

@Slf4j
public class SnowflakeIdUtil {

    private static Snowflake snowflake = IdUtil.getSnowflake(getWorkerId(), getDataCenterId());

    private static Long getWorkerId() {
        long workerId = 0;
        try {
            //获取ip
            InetAddress addr = InetAddress.getLocalHost();
            String hostAddress = addr.getHostAddress();
            int[] ints = StringUtils.toCodePoints(hostAddress);
            int sums = 0;
            for (int b : ints) {
                sums += b;
            }
            workerId = sums % 32;
        } catch (UnknownHostException e) {
            e.printStackTrace();
            // 如果获取失败，则使用随机数备用
            workerId = RandomUtils.nextLong(0, 31);
        }
        return workerId;
    }

    private static Long getDataCenterId() {
        String hostName = SystemUtils.getHostName();
        int[] ints = StringUtils.toCodePoints(hostName);
        int sums = 0;
        for (int i : ints) {
            sums += i;
        }
        long dataCenterId = sums % 32;
        return dataCenterId;
    }

    public static synchronized String getId() {
        return String.valueOf(snowflake.nextId());
    }

}
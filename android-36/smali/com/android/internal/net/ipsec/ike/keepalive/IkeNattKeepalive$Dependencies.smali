.class Lcom/android/internal/net/ipsec/ike/keepalive/IkeNattKeepalive$Dependencies;
.super Ljava/lang/Object;
.source "IkeNattKeepalive.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/net/ipsec/ike/keepalive/IkeNattKeepalive;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Dependencies"
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method blacklist createHardwareKeepaliveImpl(Landroid/content/Context;Landroid/net/ConnectivityManager;Lcom/android/internal/net/ipsec/ike/keepalive/IkeNattKeepalive$KeepaliveConfig;Lcom/android/internal/net/ipsec/ike/keepalive/HardwareKeepaliveImpl$HardwareKeepaliveCallback;)Lcom/android/internal/net/ipsec/ike/keepalive/HardwareKeepaliveImpl;
    .registers 19
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "connectMgr"    # Landroid/net/ConnectivityManager;
    .param p3, "nattKeepaliveConfig"    # Lcom/android/internal/net/ipsec/ike/keepalive/IkeNattKeepalive$KeepaliveConfig;
    .param p4, "hardwareKeepaliveCb"    # Lcom/android/internal/net/ipsec/ike/keepalive/HardwareKeepaliveImpl$HardwareKeepaliveCallback;

    .line 218
    move-object/from16 v0, p3

    iget-object v1, v0, Lcom/android/internal/net/ipsec/ike/keepalive/IkeNattKeepalive$KeepaliveConfig;->ikeAlarmConfig:Lcom/android/internal/net/ipsec/ike/utils/IkeAlarm$IkeAlarmConfig;

    iget-wide v1, v1, Lcom/android/internal/net/ipsec/ike/utils/IkeAlarm$IkeAlarmConfig;->delayMs:J

    .line 219
    .local v1, "keepaliveDelayMs":J
    new-instance v3, Lcom/android/internal/net/ipsec/ike/keepalive/HardwareKeepaliveImpl;

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 222
    invoke-virtual {v4, v1, v2}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v4

    long-to-int v6, v4

    iget-object v7, v0, Lcom/android/internal/net/ipsec/ike/keepalive/IkeNattKeepalive$KeepaliveConfig;->ikeParams:Landroid/net/ipsec/ike/IkeSessionParams;

    iget-object v8, v0, Lcom/android/internal/net/ipsec/ike/keepalive/IkeNattKeepalive$KeepaliveConfig;->src:Ljava/net/Inet4Address;

    iget-object v9, v0, Lcom/android/internal/net/ipsec/ike/keepalive/IkeNattKeepalive$KeepaliveConfig;->dest:Ljava/net/Inet4Address;

    iget-object v10, v0, Lcom/android/internal/net/ipsec/ike/keepalive/IkeNattKeepalive$KeepaliveConfig;->socket:Landroid/net/IpSecManager$UdpEncapsulationSocket;

    iget-object v11, v0, Lcom/android/internal/net/ipsec/ike/keepalive/IkeNattKeepalive$KeepaliveConfig;->network:Landroid/net/Network;

    iget-object v12, v0, Lcom/android/internal/net/ipsec/ike/keepalive/IkeNattKeepalive$KeepaliveConfig;->underpinnedNetwork:Landroid/net/Network;

    move-object v4, p1

    move-object/from16 v5, p2

    move-object/from16 v13, p4

    invoke-direct/range {v3 .. v13}, Lcom/android/internal/net/ipsec/ike/keepalive/HardwareKeepaliveImpl;-><init>(Landroid/content/Context;Landroid/net/ConnectivityManager;ILandroid/net/ipsec/ike/IkeSessionParams;Ljava/net/Inet4Address;Ljava/net/Inet4Address;Landroid/net/IpSecManager$UdpEncapsulationSocket;Landroid/net/Network;Landroid/net/Network;Lcom/android/internal/net/ipsec/ike/keepalive/HardwareKeepaliveImpl$HardwareKeepaliveCallback;)V

    .line 219
    return-object v3
.end method

.method blacklist createSoftwareKeepaliveImpl(Landroid/content/Context;Ljava/net/Inet4Address;Landroid/net/IpSecManager$UdpEncapsulationSocket;Lcom/android/internal/net/ipsec/ike/utils/IkeAlarm$IkeAlarmConfig;)Lcom/android/internal/net/ipsec/ike/keepalive/SoftwareKeepaliveImpl;
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dest"    # Ljava/net/Inet4Address;
    .param p3, "socket"    # Landroid/net/IpSecManager$UdpEncapsulationSocket;
    .param p4, "alarmConfig"    # Lcom/android/internal/net/ipsec/ike/utils/IkeAlarm$IkeAlarmConfig;

    .line 210
    new-instance v0, Lcom/android/internal/net/ipsec/ike/keepalive/SoftwareKeepaliveImpl;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/android/internal/net/ipsec/ike/keepalive/SoftwareKeepaliveImpl;-><init>(Landroid/content/Context;Ljava/net/Inet4Address;Landroid/net/IpSecManager$UdpEncapsulationSocket;Lcom/android/internal/net/ipsec/ike/utils/IkeAlarm$IkeAlarmConfig;)V

    return-object v0
.end method

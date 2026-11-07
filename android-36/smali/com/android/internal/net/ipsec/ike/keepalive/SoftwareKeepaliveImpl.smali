.class public final Lcom/android/internal/net/ipsec/ike/keepalive/SoftwareKeepaliveImpl;
.super Ljava/lang/Object;
.source "SoftwareKeepaliveImpl.java"

# interfaces
.implements Lcom/android/internal/net/ipsec/ike/keepalive/IkeNattKeepalive$NattKeepalive;


# static fields
.field private static final blacklist NATT_KEEPALIVE_PAYLOAD:[B

.field private static final blacklist TAG:Ljava/lang/String; = "SoftwareKeepaliveImpl"


# instance fields
.field private final blacklist mDestAddress:Ljava/net/Inet4Address;

.field private final blacklist mIkeAlarm:Lcom/android/internal/net/ipsec/ike/utils/IkeAlarm;

.field private final blacklist mSocket:Landroid/net/IpSecManager$UdpEncapsulationSocket;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 39
    const/4 v0, 0x1

    new-array v0, v0, [B

    const/4 v1, -0x1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    sput-object v0, Lcom/android/internal/net/ipsec/ike/keepalive/SoftwareKeepaliveImpl;->NATT_KEEPALIVE_PAYLOAD:[B

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Ljava/net/Inet4Address;Landroid/net/IpSecManager$UdpEncapsulationSocket;Lcom/android/internal/net/ipsec/ike/utils/IkeAlarm$IkeAlarmConfig;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dest"    # Ljava/net/Inet4Address;
    .param p3, "socket"    # Landroid/net/IpSecManager$UdpEncapsulationSocket;
    .param p4, "alarmConfig"    # Lcom/android/internal/net/ipsec/ike/utils/IkeAlarm$IkeAlarmConfig;

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p3, p0, Lcom/android/internal/net/ipsec/ike/keepalive/SoftwareKeepaliveImpl;->mSocket:Landroid/net/IpSecManager$UdpEncapsulationSocket;

    .line 56
    iput-object p2, p0, Lcom/android/internal/net/ipsec/ike/keepalive/SoftwareKeepaliveImpl;->mDestAddress:Ljava/net/Inet4Address;

    .line 62
    invoke-static {p4}, Lcom/android/internal/net/ipsec/ike/utils/IkeAlarm;->newExactAndAllowWhileIdleAlarm(Lcom/android/internal/net/ipsec/ike/utils/IkeAlarm$IkeAlarmConfig;)Lcom/android/internal/net/ipsec/ike/utils/IkeAlarm;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/net/ipsec/ike/keepalive/SoftwareKeepaliveImpl;->mIkeAlarm:Lcom/android/internal/net/ipsec/ike/utils/IkeAlarm;

    .line 63
    return-void
.end method

.method private blacklist sendKeepaliveAndScheduleNext()V
    .registers 7

    .line 82
    invoke-static {}, Landroid/net/ipsec/ike/IkeManager;->getIkeLog()Lcom/android/internal/net/utils/Log;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Send keepalive to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/net/ipsec/ike/keepalive/SoftwareKeepaliveImpl;->mDestAddress:Ljava/net/Inet4Address;

    invoke-virtual {v2}, Ljava/net/Inet4Address;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SoftwareKeepaliveImpl"

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/net/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    :try_start_22
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/keepalive/SoftwareKeepaliveImpl;->mSocket:Landroid/net/IpSecManager$UdpEncapsulationSocket;

    .line 85
    invoke-virtual {v0}, Landroid/net/IpSecManager$UdpEncapsulationSocket;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    sget-object v1, Lcom/android/internal/net/ipsec/ike/keepalive/SoftwareKeepaliveImpl;->NATT_KEEPALIVE_PAYLOAD:[B

    .line 86
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    iget-object v3, p0, Lcom/android/internal/net/ipsec/ike/keepalive/SoftwareKeepaliveImpl;->mDestAddress:Ljava/net/Inet4Address;

    .line 84
    const/4 v4, 0x0

    const/16 v5, 0x1194

    invoke-static {v0, v1, v4, v3, v5}, Landroid/system/Os;->sendto(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;ILjava/net/InetAddress;I)I
    :try_end_36
    .catch Landroid/system/ErrnoException; {:try_start_22 .. :try_end_36} :catch_37
    .catch Ljava/net/SocketException; {:try_start_22 .. :try_end_36} :catch_37

    .line 93
    goto :goto_58

    .line 91
    :catch_37
    move-exception v0

    .line 92
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Landroid/net/ipsec/ike/IkeManager;->getIkeLog()Lcom/android/internal/net/utils/Log;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to keepalive packet to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/net/ipsec/ike/keepalive/SoftwareKeepaliveImpl;->mDestAddress:Ljava/net/Inet4Address;

    invoke-virtual {v4}, Ljava/net/Inet4Address;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/internal/net/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 95
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_58
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/keepalive/SoftwareKeepaliveImpl;->mIkeAlarm:Lcom/android/internal/net/ipsec/ike/utils/IkeAlarm;

    invoke-virtual {v0}, Lcom/android/internal/net/ipsec/ike/utils/IkeAlarm;->schedule()V

    .line 96
    return-void
.end method


# virtual methods
.method public blacklist onAlarmFired()V
    .registers 1

    .line 77
    invoke-direct {p0}, Lcom/android/internal/net/ipsec/ike/keepalive/SoftwareKeepaliveImpl;->sendKeepaliveAndScheduleNext()V

    .line 78
    return-void
.end method

.method public blacklist start()V
    .registers 1

    .line 67
    invoke-direct {p0}, Lcom/android/internal/net/ipsec/ike/keepalive/SoftwareKeepaliveImpl;->sendKeepaliveAndScheduleNext()V

    .line 68
    return-void
.end method

.method public blacklist stop()V
    .registers 2

    .line 72
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/keepalive/SoftwareKeepaliveImpl;->mIkeAlarm:Lcom/android/internal/net/ipsec/ike/utils/IkeAlarm;

    invoke-virtual {v0}, Lcom/android/internal/net/ipsec/ike/utils/IkeAlarm;->cancel()V

    .line 73
    return-void
.end method

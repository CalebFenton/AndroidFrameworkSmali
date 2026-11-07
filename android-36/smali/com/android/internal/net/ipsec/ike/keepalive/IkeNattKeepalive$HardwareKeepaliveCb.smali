.class Lcom/android/internal/net/ipsec/ike/keepalive/IkeNattKeepalive$HardwareKeepaliveCb;
.super Ljava/lang/Object;
.source "IkeNattKeepalive.java"

# interfaces
.implements Lcom/android/internal/net/ipsec/ike/keepalive/HardwareKeepaliveImpl$HardwareKeepaliveCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/net/ipsec/ike/keepalive/IkeNattKeepalive;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HardwareKeepaliveCb"
.end annotation


# instance fields
.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mDest:Ljava/net/Inet4Address;

.field private final blacklist mIkeAlarmConfig:Lcom/android/internal/net/ipsec/ike/utils/IkeAlarm$IkeAlarmConfig;

.field private final blacklist mSocket:Landroid/net/IpSecManager$UdpEncapsulationSocket;

.field final synthetic blacklist this$0:Lcom/android/internal/net/ipsec/ike/keepalive/IkeNattKeepalive;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/net/ipsec/ike/keepalive/IkeNattKeepalive;Landroid/content/Context;Ljava/net/Inet4Address;Landroid/net/IpSecManager$UdpEncapsulationSocket;Lcom/android/internal/net/ipsec/ike/utils/IkeAlarm$IkeAlarmConfig;)V
    .registers 6
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "dest"    # Ljava/net/Inet4Address;
    .param p4, "socket"    # Landroid/net/IpSecManager$UdpEncapsulationSocket;
    .param p5, "ikeAlarmConfig"    # Lcom/android/internal/net/ipsec/ike/utils/IkeAlarm$IkeAlarmConfig;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 243
    iput-object p1, p0, Lcom/android/internal/net/ipsec/ike/keepalive/IkeNattKeepalive$HardwareKeepaliveCb;->this$0:Lcom/android/internal/net/ipsec/ike/keepalive/IkeNattKeepalive;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 244
    iput-object p2, p0, Lcom/android/internal/net/ipsec/ike/keepalive/IkeNattKeepalive$HardwareKeepaliveCb;->mContext:Landroid/content/Context;

    .line 245
    iput-object p3, p0, Lcom/android/internal/net/ipsec/ike/keepalive/IkeNattKeepalive$HardwareKeepaliveCb;->mDest:Ljava/net/Inet4Address;

    .line 246
    iput-object p4, p0, Lcom/android/internal/net/ipsec/ike/keepalive/IkeNattKeepalive$HardwareKeepaliveCb;->mSocket:Landroid/net/IpSecManager$UdpEncapsulationSocket;

    .line 247
    iput-object p5, p0, Lcom/android/internal/net/ipsec/ike/keepalive/IkeNattKeepalive$HardwareKeepaliveCb;->mIkeAlarmConfig:Lcom/android/internal/net/ipsec/ike/utils/IkeAlarm$IkeAlarmConfig;

    .line 248
    return-void
.end method


# virtual methods
.method public blacklist onHardwareOffloadError()V
    .registers 7

    .line 252
    invoke-static {}, Landroid/net/ipsec/ike/IkeManager;->getIkeLog()Lcom/android/internal/net/utils/Log;

    move-result-object v0

    const-string v1, "IkeNattKeepalive"

    const-string v2, "Switch to software keepalive"

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/net/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/keepalive/IkeNattKeepalive$HardwareKeepaliveCb;->this$0:Lcom/android/internal/net/ipsec/ike/keepalive/IkeNattKeepalive;

    invoke-static {v0}, Lcom/android/internal/net/ipsec/ike/keepalive/IkeNattKeepalive;->-$$Nest$fgetmNattKeepalive(Lcom/android/internal/net/ipsec/ike/keepalive/IkeNattKeepalive;)Lcom/android/internal/net/ipsec/ike/keepalive/IkeNattKeepalive$NattKeepalive;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/net/ipsec/ike/keepalive/IkeNattKeepalive$NattKeepalive;->stop()V

    .line 255
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/keepalive/IkeNattKeepalive$HardwareKeepaliveCb;->this$0:Lcom/android/internal/net/ipsec/ike/keepalive/IkeNattKeepalive;

    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/keepalive/IkeNattKeepalive$HardwareKeepaliveCb;->this$0:Lcom/android/internal/net/ipsec/ike/keepalive/IkeNattKeepalive;

    invoke-static {v1}, Lcom/android/internal/net/ipsec/ike/keepalive/IkeNattKeepalive;->-$$Nest$fgetmDeps(Lcom/android/internal/net/ipsec/ike/keepalive/IkeNattKeepalive;)Lcom/android/internal/net/ipsec/ike/keepalive/IkeNattKeepalive$Dependencies;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/net/ipsec/ike/keepalive/IkeNattKeepalive$HardwareKeepaliveCb;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/internal/net/ipsec/ike/keepalive/IkeNattKeepalive$HardwareKeepaliveCb;->mDest:Ljava/net/Inet4Address;

    iget-object v4, p0, Lcom/android/internal/net/ipsec/ike/keepalive/IkeNattKeepalive$HardwareKeepaliveCb;->mSocket:Landroid/net/IpSecManager$UdpEncapsulationSocket;

    iget-object v5, p0, Lcom/android/internal/net/ipsec/ike/keepalive/IkeNattKeepalive$HardwareKeepaliveCb;->mIkeAlarmConfig:Lcom/android/internal/net/ipsec/ike/utils/IkeAlarm$IkeAlarmConfig;

    .line 256
    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/internal/net/ipsec/ike/keepalive/IkeNattKeepalive$Dependencies;->createSoftwareKeepaliveImpl(Landroid/content/Context;Ljava/net/Inet4Address;Landroid/net/IpSecManager$UdpEncapsulationSocket;Lcom/android/internal/net/ipsec/ike/utils/IkeAlarm$IkeAlarmConfig;)Lcom/android/internal/net/ipsec/ike/keepalive/SoftwareKeepaliveImpl;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/net/ipsec/ike/keepalive/IkeNattKeepalive;->-$$Nest$fputmNattKeepalive(Lcom/android/internal/net/ipsec/ike/keepalive/IkeNattKeepalive;Lcom/android/internal/net/ipsec/ike/keepalive/IkeNattKeepalive$NattKeepalive;)V

    .line 257
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/keepalive/IkeNattKeepalive$HardwareKeepaliveCb;->this$0:Lcom/android/internal/net/ipsec/ike/keepalive/IkeNattKeepalive;

    invoke-static {v0}, Lcom/android/internal/net/ipsec/ike/keepalive/IkeNattKeepalive;->-$$Nest$fgetmNattKeepalive(Lcom/android/internal/net/ipsec/ike/keepalive/IkeNattKeepalive;)Lcom/android/internal/net/ipsec/ike/keepalive/IkeNattKeepalive$NattKeepalive;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/net/ipsec/ike/keepalive/IkeNattKeepalive$NattKeepalive;->start()V

    .line 258
    return-void
.end method

.method public blacklist onNetworkError()V
    .registers 2

    .line 270
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/keepalive/IkeNattKeepalive$HardwareKeepaliveCb;->this$0:Lcom/android/internal/net/ipsec/ike/keepalive/IkeNattKeepalive;

    invoke-virtual {v0}, Lcom/android/internal/net/ipsec/ike/keepalive/IkeNattKeepalive;->stop()V

    .line 271
    return-void
.end method

.method public blacklist onStopped(Lcom/android/internal/net/ipsec/ike/keepalive/HardwareKeepaliveImpl;)V
    .registers 5
    .param p1, "hardwareKeepalive"    # Lcom/android/internal/net/ipsec/ike/keepalive/HardwareKeepaliveImpl;

    .line 275
    invoke-static {}, Landroid/net/ipsec/ike/IkeManager;->getIkeLog()Lcom/android/internal/net/utils/Log;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Hardware keepalive onStopped on hardwareKeepalive "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 276
    const-string v2, "IkeNattKeepalive"

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/net/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/keepalive/IkeNattKeepalive$HardwareKeepaliveCb;->this$0:Lcom/android/internal/net/ipsec/ike/keepalive/IkeNattKeepalive;

    invoke-static {v0}, Lcom/android/internal/net/ipsec/ike/keepalive/IkeNattKeepalive;->-$$Nest$fgetmHardwareKeepalivePendingOnStopped(Lcom/android/internal/net/ipsec/ike/keepalive/IkeNattKeepalive;)Lcom/android/internal/net/ipsec/ike/keepalive/HardwareKeepaliveImpl;

    move-result-object v0

    if-ne p1, v0, :cond_29

    .line 281
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/keepalive/IkeNattKeepalive$HardwareKeepaliveCb;->this$0:Lcom/android/internal/net/ipsec/ike/keepalive/IkeNattKeepalive;

    invoke-static {v0}, Lcom/android/internal/net/ipsec/ike/keepalive/IkeNattKeepalive;->-$$Nest$mfinishRestartingWithNewHardwareKeepalive(Lcom/android/internal/net/ipsec/ike/keepalive/IkeNattKeepalive;)V

    .line 283
    :cond_29
    return-void
.end method

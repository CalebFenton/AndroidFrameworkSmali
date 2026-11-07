.class public Lcom/android/internal/net/ipsec/ike/keepalive/IkeNattKeepalive;
.super Ljava/lang/Object;
.source "IkeNattKeepalive.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/net/ipsec/ike/keepalive/IkeNattKeepalive$Dependencies;,
        Lcom/android/internal/net/ipsec/ike/keepalive/IkeNattKeepalive$KeepaliveConfig;,
        Lcom/android/internal/net/ipsec/ike/keepalive/IkeNattKeepalive$HardwareKeepaliveCb;,
        Lcom/android/internal/net/ipsec/ike/keepalive/IkeNattKeepalive$NattKeepalive;
    }
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "IkeNattKeepalive"


# instance fields
.field private final blacklist mConnectivityManager:Landroid/net/ConnectivityManager;

.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mDeps:Lcom/android/internal/net/ipsec/ike/keepalive/IkeNattKeepalive$Dependencies;

.field private blacklist mHardwareKeepalivePendingOnStopped:Lcom/android/internal/net/ipsec/ike/keepalive/HardwareKeepaliveImpl;

.field private blacklist mNattKeepalive:Lcom/android/internal/net/ipsec/ike/keepalive/IkeNattKeepalive$NattKeepalive;

.field private blacklist mNattKeepaliveConfig:Lcom/android/internal/net/ipsec/ike/keepalive/IkeNattKeepalive$KeepaliveConfig;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmDeps(Lcom/android/internal/net/ipsec/ike/keepalive/IkeNattKeepalive;)Lcom/android/internal/net/ipsec/ike/keepalive/IkeNattKeepalive$Dependencies;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/net/ipsec/ike/keepalive/IkeNattKeepalive;->mDeps:Lcom/android/internal/net/ipsec/ike/keepalive/IkeNattKeepalive$Dependencies;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmHardwareKeepalivePendingOnStopped(Lcom/android/internal/net/ipsec/ike/keepalive/IkeNattKeepalive;)Lcom/android/internal/net/ipsec/ike/keepalive/HardwareKeepaliveImpl;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/net/ipsec/ike/keepalive/IkeNattKeepalive;->mHardwareKeepalivePendingOnStopped:Lcom/android/internal/net/ipsec/ike/keepalive/HardwareKeepaliveImpl;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmNattKeepalive(Lcom/android/internal/net/ipsec/ike/keepalive/IkeNattKeepalive;)Lcom/android/internal/net/ipsec/ike/keepalive/IkeNattKeepalive$NattKeepalive;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/net/ipsec/ike/keepalive/IkeNattKeepalive;->mNattKeepalive:Lcom/android/internal/net/ipsec/ike/keepalive/IkeNattKeepalive$NattKeepalive;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmNattKeepalive(Lcom/android/internal/net/ipsec/ike/keepalive/IkeNattKeepalive;Lcom/android/internal/net/ipsec/ike/keepalive/IkeNattKeepalive$NattKeepalive;)V
    .registers 2

    iput-object p1, p0, Lcom/android/internal/net/ipsec/ike/keepalive/IkeNattKeepalive;->mNattKeepalive:Lcom/android/internal/net/ipsec/ike/keepalive/IkeNattKeepalive$NattKeepalive;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mfinishRestartingWithNewHardwareKeepalive(Lcom/android/internal/net/ipsec/ike/keepalive/IkeNattKeepalive;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/net/ipsec/ike/keepalive/IkeNattKeepalive;->finishRestartingWithNewHardwareKeepalive()V

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/net/ipsec/ike/IkeContext;Landroid/net/ConnectivityManager;Lcom/android/internal/net/ipsec/ike/keepalive/IkeNattKeepalive$KeepaliveConfig;)V
    .registers 5
    .param p1, "ikeContext"    # Lcom/android/internal/net/ipsec/ike/IkeContext;
    .param p2, "connectMgr"    # Landroid/net/ConnectivityManager;
    .param p3, "nattKeepaliveConfig"    # Lcom/android/internal/net/ipsec/ike/keepalive/IkeNattKeepalive$KeepaliveConfig;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 64
    new-instance v0, Lcom/android/internal/net/ipsec/ike/keepalive/IkeNattKeepalive$Dependencies;

    invoke-direct {v0}, Lcom/android/internal/net/ipsec/ike/keepalive/IkeNattKeepalive$Dependencies;-><init>()V

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/internal/net/ipsec/ike/keepalive/IkeNattKeepalive;-><init>(Lcom/android/internal/net/ipsec/ike/IkeContext;Landroid/net/ConnectivityManager;Lcom/android/internal/net/ipsec/ike/keepalive/IkeNattKeepalive$KeepaliveConfig;Lcom/android/internal/net/ipsec/ike/keepalive/IkeNattKeepalive$Dependencies;)V

    .line 65
    return-void
.end method

.method constructor blacklist <init>(Lcom/android/internal/net/ipsec/ike/IkeContext;Landroid/net/ConnectivityManager;Lcom/android/internal/net/ipsec/ike/keepalive/IkeNattKeepalive$KeepaliveConfig;Lcom/android/internal/net/ipsec/ike/keepalive/IkeNattKeepalive$Dependencies;)V
    .registers 15
    .param p1, "ikeContext"    # Lcom/android/internal/net/ipsec/ike/IkeContext;
    .param p2, "connectMgr"    # Landroid/net/ConnectivityManager;
    .param p3, "nattKeepaliveConfig"    # Lcom/android/internal/net/ipsec/ike/keepalive/IkeNattKeepalive$KeepaliveConfig;
    .param p4, "deps"    # Lcom/android/internal/net/ipsec/ike/keepalive/IkeNattKeepalive$Dependencies;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object p4, p0, Lcom/android/internal/net/ipsec/ike/keepalive/IkeNattKeepalive;->mDeps:Lcom/android/internal/net/ipsec/ike/keepalive/IkeNattKeepalive$Dependencies;

    .line 74
    invoke-virtual {p1}, Lcom/android/internal/net/ipsec/ike/IkeContext;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/net/ipsec/ike/keepalive/IkeNattKeepalive;->mContext:Landroid/content/Context;

    .line 75
    iput-object p2, p0, Lcom/android/internal/net/ipsec/ike/keepalive/IkeNattKeepalive;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 76
    iput-object p3, p0, Lcom/android/internal/net/ipsec/ike/keepalive/IkeNattKeepalive;->mNattKeepaliveConfig:Lcom/android/internal/net/ipsec/ike/keepalive/IkeNattKeepalive$KeepaliveConfig;

    .line 78
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/keepalive/IkeNattKeepalive;->mDeps:Lcom/android/internal/net/ipsec/ike/keepalive/IkeNattKeepalive$Dependencies;

    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/keepalive/IkeNattKeepalive;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/net/ipsec/ike/keepalive/IkeNattKeepalive;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object v3, p0, Lcom/android/internal/net/ipsec/ike/keepalive/IkeNattKeepalive;->mNattKeepaliveConfig:Lcom/android/internal/net/ipsec/ike/keepalive/IkeNattKeepalive$KeepaliveConfig;

    new-instance v4, Lcom/android/internal/net/ipsec/ike/keepalive/IkeNattKeepalive$HardwareKeepaliveCb;

    iget-object v6, p0, Lcom/android/internal/net/ipsec/ike/keepalive/IkeNattKeepalive;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/internal/net/ipsec/ike/keepalive/IkeNattKeepalive;->mNattKeepaliveConfig:Lcom/android/internal/net/ipsec/ike/keepalive/IkeNattKeepalive$KeepaliveConfig;

    iget-object v7, v5, Lcom/android/internal/net/ipsec/ike/keepalive/IkeNattKeepalive$KeepaliveConfig;->dest:Ljava/net/Inet4Address;

    iget-object v5, p0, Lcom/android/internal/net/ipsec/ike/keepalive/IkeNattKeepalive;->mNattKeepaliveConfig:Lcom/android/internal/net/ipsec/ike/keepalive/IkeNattKeepalive$KeepaliveConfig;

    iget-object v8, v5, Lcom/android/internal/net/ipsec/ike/keepalive/IkeNattKeepalive$KeepaliveConfig;->socket:Landroid/net/IpSecManager$UdpEncapsulationSocket;

    iget-object v5, p0, Lcom/android/internal/net/ipsec/ike/keepalive/IkeNattKeepalive;->mNattKeepaliveConfig:Lcom/android/internal/net/ipsec/ike/keepalive/IkeNattKeepalive$KeepaliveConfig;

    iget-object v9, v5, Lcom/android/internal/net/ipsec/ike/keepalive/IkeNattKeepalive$KeepaliveConfig;->ikeAlarmConfig:Lcom/android/internal/net/ipsec/ike/utils/IkeAlarm$IkeAlarmConfig;

    move-object v5, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/internal/net/ipsec/ike/keepalive/IkeNattKeepalive$HardwareKeepaliveCb;-><init>(Lcom/android/internal/net/ipsec/ike/keepalive/IkeNattKeepalive;Landroid/content/Context;Ljava/net/Inet4Address;Landroid/net/IpSecManager$UdpEncapsulationSocket;Lcom/android/internal/net/ipsec/ike/utils/IkeAlarm$IkeAlarmConfig;)V

    .line 79
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/net/ipsec/ike/keepalive/IkeNattKeepalive$Dependencies;->createHardwareKeepaliveImpl(Landroid/content/Context;Landroid/net/ConnectivityManager;Lcom/android/internal/net/ipsec/ike/keepalive/IkeNattKeepalive$KeepaliveConfig;Lcom/android/internal/net/ipsec/ike/keepalive/HardwareKeepaliveImpl$HardwareKeepaliveCallback;)Lcom/android/internal/net/ipsec/ike/keepalive/HardwareKeepaliveImpl;

    move-result-object v0

    iput-object v0, v5, Lcom/android/internal/net/ipsec/ike/keepalive/IkeNattKeepalive;->mNattKeepalive:Lcom/android/internal/net/ipsec/ike/keepalive/IkeNattKeepalive$NattKeepalive;

    .line 88
    return-void
.end method

.method private blacklist finishRestartingWithNewHardwareKeepalive()V
    .registers 11

    .line 135
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/net/ipsec/ike/keepalive/IkeNattKeepalive;->mHardwareKeepalivePendingOnStopped:Lcom/android/internal/net/ipsec/ike/keepalive/HardwareKeepaliveImpl;

    .line 137
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/keepalive/IkeNattKeepalive;->mNattKeepalive:Lcom/android/internal/net/ipsec/ike/keepalive/IkeNattKeepalive$NattKeepalive;

    invoke-interface {v0}, Lcom/android/internal/net/ipsec/ike/keepalive/IkeNattKeepalive$NattKeepalive;->stop()V

    .line 138
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/keepalive/IkeNattKeepalive;->mDeps:Lcom/android/internal/net/ipsec/ike/keepalive/IkeNattKeepalive$Dependencies;

    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/keepalive/IkeNattKeepalive;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/net/ipsec/ike/keepalive/IkeNattKeepalive;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object v3, p0, Lcom/android/internal/net/ipsec/ike/keepalive/IkeNattKeepalive;->mNattKeepaliveConfig:Lcom/android/internal/net/ipsec/ike/keepalive/IkeNattKeepalive$KeepaliveConfig;

    new-instance v4, Lcom/android/internal/net/ipsec/ike/keepalive/IkeNattKeepalive$HardwareKeepaliveCb;

    iget-object v6, p0, Lcom/android/internal/net/ipsec/ike/keepalive/IkeNattKeepalive;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/internal/net/ipsec/ike/keepalive/IkeNattKeepalive;->mNattKeepaliveConfig:Lcom/android/internal/net/ipsec/ike/keepalive/IkeNattKeepalive$KeepaliveConfig;

    iget-object v7, v5, Lcom/android/internal/net/ipsec/ike/keepalive/IkeNattKeepalive$KeepaliveConfig;->dest:Ljava/net/Inet4Address;

    iget-object v5, p0, Lcom/android/internal/net/ipsec/ike/keepalive/IkeNattKeepalive;->mNattKeepaliveConfig:Lcom/android/internal/net/ipsec/ike/keepalive/IkeNattKeepalive$KeepaliveConfig;

    iget-object v8, v5, Lcom/android/internal/net/ipsec/ike/keepalive/IkeNattKeepalive$KeepaliveConfig;->socket:Landroid/net/IpSecManager$UdpEncapsulationSocket;

    iget-object v5, p0, Lcom/android/internal/net/ipsec/ike/keepalive/IkeNattKeepalive;->mNattKeepaliveConfig:Lcom/android/internal/net/ipsec/ike/keepalive/IkeNattKeepalive$KeepaliveConfig;

    iget-object v9, v5, Lcom/android/internal/net/ipsec/ike/keepalive/IkeNattKeepalive$KeepaliveConfig;->ikeAlarmConfig:Lcom/android/internal/net/ipsec/ike/utils/IkeAlarm$IkeAlarmConfig;

    move-object v5, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/internal/net/ipsec/ike/keepalive/IkeNattKeepalive$HardwareKeepaliveCb;-><init>(Lcom/android/internal/net/ipsec/ike/keepalive/IkeNattKeepalive;Landroid/content/Context;Ljava/net/Inet4Address;Landroid/net/IpSecManager$UdpEncapsulationSocket;Lcom/android/internal/net/ipsec/ike/utils/IkeAlarm$IkeAlarmConfig;)V

    .line 139
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/net/ipsec/ike/keepalive/IkeNattKeepalive$Dependencies;->createHardwareKeepaliveImpl(Landroid/content/Context;Landroid/net/ConnectivityManager;Lcom/android/internal/net/ipsec/ike/keepalive/IkeNattKeepalive$KeepaliveConfig;Lcom/android/internal/net/ipsec/ike/keepalive/HardwareKeepaliveImpl$HardwareKeepaliveCallback;)Lcom/android/internal/net/ipsec/ike/keepalive/HardwareKeepaliveImpl;

    move-result-object v0

    iput-object v0, v5, Lcom/android/internal/net/ipsec/ike/keepalive/IkeNattKeepalive;->mNattKeepalive:Lcom/android/internal/net/ipsec/ike/keepalive/IkeNattKeepalive$NattKeepalive;

    .line 148
    iget-object v0, v5, Lcom/android/internal/net/ipsec/ike/keepalive/IkeNattKeepalive;->mNattKeepalive:Lcom/android/internal/net/ipsec/ike/keepalive/IkeNattKeepalive$NattKeepalive;

    invoke-interface {v0}, Lcom/android/internal/net/ipsec/ike/keepalive/IkeNattKeepalive$NattKeepalive;->start()V

    .line 149
    return-void
.end method


# virtual methods
.method public blacklist isRestarting()Z
    .registers 2

    .line 186
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/keepalive/IkeNattKeepalive;->mHardwareKeepalivePendingOnStopped:Lcom/android/internal/net/ipsec/ike/keepalive/HardwareKeepaliveImpl;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public blacklist onAlarmFired()V
    .registers 2

    .line 191
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/keepalive/IkeNattKeepalive;->mNattKeepalive:Lcom/android/internal/net/ipsec/ike/keepalive/IkeNattKeepalive$NattKeepalive;

    invoke-interface {v0}, Lcom/android/internal/net/ipsec/ike/keepalive/IkeNattKeepalive$NattKeepalive;->onAlarmFired()V

    .line 192
    return-void
.end method

.method public blacklist restart(Lcom/android/internal/net/ipsec/ike/keepalive/IkeNattKeepalive$KeepaliveConfig;)V
    .registers 7
    .param p1, "nattKeepaliveConfig"    # Lcom/android/internal/net/ipsec/ike/keepalive/IkeNattKeepalive$KeepaliveConfig;

    .line 153
    invoke-static {}, Landroid/net/ipsec/ike/IkeManager;->getIkeLog()Lcom/android/internal/net/utils/Log;

    move-result-object v0

    const-string v1, "restart"

    const-string v2, "IkeNattKeepalive"

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/net/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    iput-object p1, p0, Lcom/android/internal/net/ipsec/ike/keepalive/IkeNattKeepalive;->mNattKeepaliveConfig:Lcom/android/internal/net/ipsec/ike/keepalive/IkeNattKeepalive$KeepaliveConfig;

    .line 157
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/keepalive/IkeNattKeepalive;->mNattKeepalive:Lcom/android/internal/net/ipsec/ike/keepalive/IkeNattKeepalive$NattKeepalive;

    instance-of v0, v0, Lcom/android/internal/net/ipsec/ike/keepalive/HardwareKeepaliveImpl;

    if-eqz v0, :cond_3b

    .line 158
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/keepalive/IkeNattKeepalive;->mNattKeepalive:Lcom/android/internal/net/ipsec/ike/keepalive/IkeNattKeepalive$NattKeepalive;

    check-cast v0, Lcom/android/internal/net/ipsec/ike/keepalive/HardwareKeepaliveImpl;

    iput-object v0, p0, Lcom/android/internal/net/ipsec/ike/keepalive/IkeNattKeepalive;->mHardwareKeepalivePendingOnStopped:Lcom/android/internal/net/ipsec/ike/keepalive/HardwareKeepaliveImpl;

    .line 159
    invoke-static {}, Landroid/net/ipsec/ike/IkeManager;->getIkeLog()Lcom/android/internal/net/utils/Log;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Wait for onStopped on "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/internal/net/ipsec/ike/keepalive/IkeNattKeepalive;->mHardwareKeepalivePendingOnStopped:Lcom/android/internal/net/ipsec/ike/keepalive/HardwareKeepaliveImpl;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " before starting new hardware keepalive"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 160
    invoke-virtual {v0, v2, v1}, Lcom/android/internal/net/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    :cond_3b
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/keepalive/IkeNattKeepalive;->mHardwareKeepalivePendingOnStopped:Lcom/android/internal/net/ipsec/ike/keepalive/HardwareKeepaliveImpl;

    if-eqz v0, :cond_60

    .line 171
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/keepalive/IkeNattKeepalive;->mNattKeepalive:Lcom/android/internal/net/ipsec/ike/keepalive/IkeNattKeepalive$NattKeepalive;

    invoke-interface {v0}, Lcom/android/internal/net/ipsec/ike/keepalive/IkeNattKeepalive$NattKeepalive;->stop()V

    .line 172
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/keepalive/IkeNattKeepalive;->mDeps:Lcom/android/internal/net/ipsec/ike/keepalive/IkeNattKeepalive$Dependencies;

    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/keepalive/IkeNattKeepalive;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/net/ipsec/ike/keepalive/IkeNattKeepalive;->mNattKeepaliveConfig:Lcom/android/internal/net/ipsec/ike/keepalive/IkeNattKeepalive$KeepaliveConfig;

    iget-object v2, v2, Lcom/android/internal/net/ipsec/ike/keepalive/IkeNattKeepalive$KeepaliveConfig;->dest:Ljava/net/Inet4Address;

    iget-object v3, p0, Lcom/android/internal/net/ipsec/ike/keepalive/IkeNattKeepalive;->mNattKeepaliveConfig:Lcom/android/internal/net/ipsec/ike/keepalive/IkeNattKeepalive$KeepaliveConfig;

    iget-object v3, v3, Lcom/android/internal/net/ipsec/ike/keepalive/IkeNattKeepalive$KeepaliveConfig;->socket:Landroid/net/IpSecManager$UdpEncapsulationSocket;

    iget-object v4, p0, Lcom/android/internal/net/ipsec/ike/keepalive/IkeNattKeepalive;->mNattKeepaliveConfig:Lcom/android/internal/net/ipsec/ike/keepalive/IkeNattKeepalive$KeepaliveConfig;

    iget-object v4, v4, Lcom/android/internal/net/ipsec/ike/keepalive/IkeNattKeepalive$KeepaliveConfig;->ikeAlarmConfig:Lcom/android/internal/net/ipsec/ike/utils/IkeAlarm$IkeAlarmConfig;

    .line 173
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/net/ipsec/ike/keepalive/IkeNattKeepalive$Dependencies;->createSoftwareKeepaliveImpl(Landroid/content/Context;Ljava/net/Inet4Address;Landroid/net/IpSecManager$UdpEncapsulationSocket;Lcom/android/internal/net/ipsec/ike/utils/IkeAlarm$IkeAlarmConfig;)Lcom/android/internal/net/ipsec/ike/keepalive/SoftwareKeepaliveImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/net/ipsec/ike/keepalive/IkeNattKeepalive;->mNattKeepalive:Lcom/android/internal/net/ipsec/ike/keepalive/IkeNattKeepalive$NattKeepalive;

    .line 178
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/keepalive/IkeNattKeepalive;->mNattKeepalive:Lcom/android/internal/net/ipsec/ike/keepalive/IkeNattKeepalive$NattKeepalive;

    invoke-interface {v0}, Lcom/android/internal/net/ipsec/ike/keepalive/IkeNattKeepalive$NattKeepalive;->start()V

    goto :goto_63

    .line 180
    :cond_60
    invoke-direct {p0}, Lcom/android/internal/net/ipsec/ike/keepalive/IkeNattKeepalive;->finishRestartingWithNewHardwareKeepalive()V

    .line 182
    :goto_63
    return-void
.end method

.method public blacklist start()V
    .registers 4

    .line 122
    invoke-static {}, Landroid/net/ipsec/ike/IkeManager;->getIkeLog()Lcom/android/internal/net/utils/Log;

    move-result-object v0

    const-string v1, "IkeNattKeepalive"

    const-string v2, "Start NAT-T keepalive"

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/net/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/keepalive/IkeNattKeepalive;->mNattKeepalive:Lcom/android/internal/net/ipsec/ike/keepalive/IkeNattKeepalive$NattKeepalive;

    invoke-interface {v0}, Lcom/android/internal/net/ipsec/ike/keepalive/IkeNattKeepalive$NattKeepalive;->start()V

    .line 124
    return-void
.end method

.method public blacklist stop()V
    .registers 4

    .line 128
    invoke-static {}, Landroid/net/ipsec/ike/IkeManager;->getIkeLog()Lcom/android/internal/net/utils/Log;

    move-result-object v0

    const-string v1, "IkeNattKeepalive"

    const-string v2, "Stop NAT-T keepalive"

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/net/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/net/ipsec/ike/keepalive/IkeNattKeepalive;->mHardwareKeepalivePendingOnStopped:Lcom/android/internal/net/ipsec/ike/keepalive/HardwareKeepaliveImpl;

    .line 131
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/keepalive/IkeNattKeepalive;->mNattKeepalive:Lcom/android/internal/net/ipsec/ike/keepalive/IkeNattKeepalive$NattKeepalive;

    invoke-interface {v0}, Lcom/android/internal/net/ipsec/ike/keepalive/IkeNattKeepalive$NattKeepalive;->stop()V

    .line 132
    return-void
.end method

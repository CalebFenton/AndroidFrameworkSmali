.class public Lcom/android/internal/net/ipsec/ike/keepalive/HardwareKeepaliveImpl;
.super Ljava/lang/Object;
.source "HardwareKeepaliveImpl.java"

# interfaces
.implements Lcom/android/internal/net/ipsec/ike/keepalive/IkeNattKeepalive$NattKeepalive;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/net/ipsec/ike/keepalive/HardwareKeepaliveImpl$HardwareKeepaliveCallback;,
        Lcom/android/internal/net/ipsec/ike/keepalive/HardwareKeepaliveImpl$MySocketKeepaliveCb;
    }
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "HardwareKeepaliveImpl"


# instance fields
.field private final blacklist mHardwareKeepaliveCb:Lcom/android/internal/net/ipsec/ike/keepalive/HardwareKeepaliveImpl$HardwareKeepaliveCallback;

.field private final blacklist mKeepaliveDelaySeconds:I

.field private final blacklist mKeepaliveOptions:I

.field private final blacklist mSocketKeepalive:Landroid/net/SocketKeepalive;

.field private final blacklist mUnderpinnedNetwork:Landroid/net/Network;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmHardwareKeepaliveCb(Lcom/android/internal/net/ipsec/ike/keepalive/HardwareKeepaliveImpl;)Lcom/android/internal/net/ipsec/ike/keepalive/HardwareKeepaliveImpl$HardwareKeepaliveCallback;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/net/ipsec/ike/keepalive/HardwareKeepaliveImpl;->mHardwareKeepaliveCb:Lcom/android/internal/net/ipsec/ike/keepalive/HardwareKeepaliveImpl$HardwareKeepaliveCallback;

    return-object p0
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/net/ConnectivityManager;ILandroid/net/ipsec/ike/IkeSessionParams;Ljava/net/Inet4Address;Ljava/net/Inet4Address;Landroid/net/IpSecManager$UdpEncapsulationSocket;Landroid/net/Network;Landroid/net/Network;Lcom/android/internal/net/ipsec/ike/keepalive/HardwareKeepaliveImpl$HardwareKeepaliveCallback;)V
    .registers 20
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "connectMgr"    # Landroid/net/ConnectivityManager;
    .param p3, "keepaliveDelaySeconds"    # I
    .param p4, "ikeParams"    # Landroid/net/ipsec/ike/IkeSessionParams;
    .param p5, "src"    # Ljava/net/Inet4Address;
    .param p6, "dest"    # Ljava/net/Inet4Address;
    .param p7, "socket"    # Landroid/net/IpSecManager$UdpEncapsulationSocket;
    .param p8, "network"    # Landroid/net/Network;
    .param p9, "underpinnedNetwork"    # Landroid/net/Network;
    .param p10, "hardwareKeepaliveCb"    # Lcom/android/internal/net/ipsec/ike/keepalive/HardwareKeepaliveImpl$HardwareKeepaliveCallback;

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput p3, p0, Lcom/android/internal/net/ipsec/ike/keepalive/HardwareKeepaliveImpl;->mKeepaliveDelaySeconds:I

    .line 77
    move-object/from16 v0, p10

    iput-object v0, p0, Lcom/android/internal/net/ipsec/ike/keepalive/HardwareKeepaliveImpl;->mHardwareKeepaliveCb:Lcom/android/internal/net/ipsec/ike/keepalive/HardwareKeepaliveImpl$HardwareKeepaliveCallback;

    .line 78
    invoke-static {p4}, Lcom/android/internal/net/ipsec/ike/keepalive/HardwareKeepaliveImpl;->getKeepaliveStartOptions(Landroid/net/ipsec/ike/IkeSessionParams;)I

    move-result v1

    iput v1, p0, Lcom/android/internal/net/ipsec/ike/keepalive/HardwareKeepaliveImpl;->mKeepaliveOptions:I

    .line 79
    move-object/from16 v1, p9

    iput-object v1, p0, Lcom/android/internal/net/ipsec/ike/keepalive/HardwareKeepaliveImpl;->mUnderpinnedNetwork:Landroid/net/Network;

    .line 81
    nop

    .line 87
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v7

    new-instance v8, Lcom/android/internal/net/ipsec/ike/keepalive/HardwareKeepaliveImpl$MySocketKeepaliveCb;

    invoke-direct {v8, p0}, Lcom/android/internal/net/ipsec/ike/keepalive/HardwareKeepaliveImpl$MySocketKeepaliveCb;-><init>(Lcom/android/internal/net/ipsec/ike/keepalive/HardwareKeepaliveImpl;)V

    .line 82
    move-object v2, p2

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v4, p7

    move-object/from16 v3, p8

    invoke-virtual/range {v2 .. v8}, Landroid/net/ConnectivityManager;->createSocketKeepalive(Landroid/net/Network;Landroid/net/IpSecManager$UdpEncapsulationSocket;Ljava/net/InetAddress;Ljava/net/InetAddress;Ljava/util/concurrent/Executor;Landroid/net/SocketKeepalive$Callback;)Landroid/net/SocketKeepalive;

    move-result-object v7

    iput-object v7, p0, Lcom/android/internal/net/ipsec/ike/keepalive/HardwareKeepaliveImpl;->mSocketKeepalive:Landroid/net/SocketKeepalive;

    .line 89
    return-void
.end method

.method private static blacklist getKeepaliveStartOptions(Landroid/net/ipsec/ike/IkeSessionParams;)I
    .registers 3
    .param p0, "ikeParams"    # Landroid/net/ipsec/ike/IkeSessionParams;

    .line 108
    const/4 v0, 0x0

    .line 109
    .local v0, "flags":I
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Landroid/net/ipsec/ike/IkeSessionParams;->hasIkeOption(I)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 110
    or-int/lit8 v0, v0, 0x1

    .line 112
    :cond_b
    return v0
.end method


# virtual methods
.method public blacklist onAlarmFired()V
    .registers 1

    .line 105
    return-void
.end method

.method public blacklist start()V
    .registers 6

    .line 93
    invoke-static {}, Lcom/android/internal/net/ipsec/ike/shim/ShimUtils;->getInstance()Lcom/android/internal/net/ipsec/ike/shim/ShimUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/keepalive/HardwareKeepaliveImpl;->mSocketKeepalive:Landroid/net/SocketKeepalive;

    iget v2, p0, Lcom/android/internal/net/ipsec/ike/keepalive/HardwareKeepaliveImpl;->mKeepaliveDelaySeconds:I

    iget v3, p0, Lcom/android/internal/net/ipsec/ike/keepalive/HardwareKeepaliveImpl;->mKeepaliveOptions:I

    iget-object v4, p0, Lcom/android/internal/net/ipsec/ike/keepalive/HardwareKeepaliveImpl;->mUnderpinnedNetwork:Landroid/net/Network;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/net/ipsec/ike/shim/ShimUtils;->startKeepalive(Landroid/net/SocketKeepalive;IILandroid/net/Network;)V

    .line 95
    return-void
.end method

.method public blacklist stop()V
    .registers 2

    .line 99
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/keepalive/HardwareKeepaliveImpl;->mSocketKeepalive:Landroid/net/SocketKeepalive;

    invoke-virtual {v0}, Landroid/net/SocketKeepalive;->stop()V

    .line 100
    return-void
.end method

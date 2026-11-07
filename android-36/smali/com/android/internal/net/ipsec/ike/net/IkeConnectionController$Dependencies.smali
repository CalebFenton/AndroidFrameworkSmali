.class public Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController$Dependencies;
.super Ljava/lang/Object;
.source "IkeConnectionController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Dependencies"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 302
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist newIkeLocalAddressGenerator()Lcom/android/internal/net/ipsec/ike/net/IkeLocalAddressGenerator;
    .registers 2

    .line 305
    new-instance v0, Lcom/android/internal/net/ipsec/ike/net/IkeLocalAddressGenerator;

    invoke-direct {v0}, Lcom/android/internal/net/ipsec/ike/net/IkeLocalAddressGenerator;-><init>()V

    return-object v0
.end method

.method public blacklist newIkeNattKeepalive(Lcom/android/internal/net/ipsec/ike/IkeContext;Lcom/android/internal/net/ipsec/ike/keepalive/IkeNattKeepalive$KeepaliveConfig;)Lcom/android/internal/net/ipsec/ike/keepalive/IkeNattKeepalive;
    .registers 6
    .param p1, "ikeContext"    # Lcom/android/internal/net/ipsec/ike/IkeContext;
    .param p2, "keepaliveConfig"    # Lcom/android/internal/net/ipsec/ike/keepalive/IkeNattKeepalive$KeepaliveConfig;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 311
    new-instance v0, Lcom/android/internal/net/ipsec/ike/keepalive/IkeNattKeepalive;

    .line 314
    invoke-virtual {p1}, Lcom/android/internal/net/ipsec/ike/IkeContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Landroid/net/ConnectivityManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    invoke-direct {v0, p1, v1, p2}, Lcom/android/internal/net/ipsec/ike/keepalive/IkeNattKeepalive;-><init>(Lcom/android/internal/net/ipsec/ike/IkeContext;Landroid/net/ConnectivityManager;Lcom/android/internal/net/ipsec/ike/keepalive/IkeNattKeepalive$KeepaliveConfig;)V

    .line 316
    .local v0, "keepalive":Lcom/android/internal/net/ipsec/ike/keepalive/IkeNattKeepalive;
    invoke-virtual {v0}, Lcom/android/internal/net/ipsec/ike/keepalive/IkeNattKeepalive;->start()V

    .line 317
    return-object v0
.end method

.method public blacklist newIkeUdp4Socket(Lcom/android/internal/net/ipsec/ike/IkeSocketConfig;Lcom/android/internal/net/ipsec/ike/IkeSocket$Callback;Landroid/os/Handler;)Lcom/android/internal/net/ipsec/ike/IkeUdp4Socket;
    .registers 5
    .param p1, "sockConfig"    # Lcom/android/internal/net/ipsec/ike/IkeSocketConfig;
    .param p2, "callback"    # Lcom/android/internal/net/ipsec/ike/IkeSocket$Callback;
    .param p3, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 324
    invoke-static {p1, p2, p3}, Lcom/android/internal/net/ipsec/ike/IkeUdp4Socket;->getInstance(Lcom/android/internal/net/ipsec/ike/IkeSocketConfig;Lcom/android/internal/net/ipsec/ike/IkeSocket$Callback;Landroid/os/Handler;)Lcom/android/internal/net/ipsec/ike/IkeUdp4Socket;

    move-result-object v0

    return-object v0
.end method

.method public blacklist newIkeUdp6Socket(Lcom/android/internal/net/ipsec/ike/IkeSocketConfig;Lcom/android/internal/net/ipsec/ike/IkeSocket$Callback;Landroid/os/Handler;)Lcom/android/internal/net/ipsec/ike/IkeUdp6Socket;
    .registers 5
    .param p1, "sockConfig"    # Lcom/android/internal/net/ipsec/ike/IkeSocketConfig;
    .param p2, "callback"    # Lcom/android/internal/net/ipsec/ike/IkeSocket$Callback;
    .param p3, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 331
    invoke-static {p1, p2, p3}, Lcom/android/internal/net/ipsec/ike/IkeUdp6Socket;->getInstance(Lcom/android/internal/net/ipsec/ike/IkeSocketConfig;Lcom/android/internal/net/ipsec/ike/IkeSocket$Callback;Landroid/os/Handler;)Lcom/android/internal/net/ipsec/ike/IkeUdp6Socket;

    move-result-object v0

    return-object v0
.end method

.method public blacklist newIkeUdp6WithEncapPortSocket(Lcom/android/internal/net/ipsec/ike/IkeSocketConfig;Lcom/android/internal/net/ipsec/ike/IkeSocket$Callback;Landroid/os/Handler;)Lcom/android/internal/net/ipsec/ike/IkeUdp6WithEncapPortSocket;
    .registers 5
    .param p1, "sockConfig"    # Lcom/android/internal/net/ipsec/ike/IkeSocketConfig;
    .param p2, "callback"    # Lcom/android/internal/net/ipsec/ike/IkeSocket$Callback;
    .param p3, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 338
    invoke-static {p1, p2, p3}, Lcom/android/internal/net/ipsec/ike/IkeUdp6WithEncapPortSocket;->getIkeUdpEncapSocket(Lcom/android/internal/net/ipsec/ike/IkeSocketConfig;Lcom/android/internal/net/ipsec/ike/IkeSocket$Callback;Landroid/os/Handler;)Lcom/android/internal/net/ipsec/ike/IkeUdp6WithEncapPortSocket;

    move-result-object v0

    return-object v0
.end method

.method public blacklist newIkeUdpEncapSocket(Lcom/android/internal/net/ipsec/ike/IkeSocketConfig;Landroid/net/IpSecManager;Lcom/android/internal/net/ipsec/ike/IkeSocket$Callback;Landroid/os/Handler;)Lcom/android/internal/net/ipsec/ike/IkeUdpEncapSocket;
    .registers 6
    .param p1, "sockConfig"    # Lcom/android/internal/net/ipsec/ike/IkeSocketConfig;
    .param p2, "ipSecManager"    # Landroid/net/IpSecManager;
    .param p3, "callback"    # Lcom/android/internal/net/ipsec/ike/IkeSocket$Callback;
    .param p4, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/io/IOException;,
            Landroid/net/IpSecManager$ResourceUnavailableException;
        }
    .end annotation

    .line 348
    nop

    .line 349
    invoke-virtual {p4}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 348
    invoke-static {p1, p2, p3, v0}, Lcom/android/internal/net/ipsec/ike/IkeUdpEncapSocket;->getIkeUdpEncapSocket(Lcom/android/internal/net/ipsec/ike/IkeSocketConfig;Landroid/net/IpSecManager;Lcom/android/internal/net/ipsec/ike/IkeSocket$Callback;Landroid/os/Looper;)Lcom/android/internal/net/ipsec/ike/IkeUdpEncapSocket;

    move-result-object v0

    return-object v0
.end method

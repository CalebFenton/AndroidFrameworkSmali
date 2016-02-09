.class public Landroid/net/VpnService;
.super Landroid/app/Service;
.source "VpnService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/VpnService$Callback;,
        Landroid/net/VpnService$Builder;
    }
.end annotation


# static fields
.field public static final SERVICE_INTERFACE:Ljava/lang/String; = "android.net.VpnService"


# direct methods
.method static synthetic -wrap0()Landroid/net/IConnectivityManager;
    .locals 1

    #@0
    invoke-static {}, Landroid/net/VpnService;->getService()Landroid/net/IConnectivityManager;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap1(Ljava/net/InetAddress;I)V
    .locals 0
    .param p0, "address"    # Ljava/net/InetAddress;
    .param p1, "prefixLength"    # I

    #@0
    .prologue
    invoke-static {p0, p1}, Landroid/net/VpnService;->check(Ljava/net/InetAddress;I)V

    #@3
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 116
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    #@3
    return-void
.end method

.method private static check(Ljava/net/InetAddress;I)V
    .locals 2
    .param p0, "address"    # Ljava/net/InetAddress;
    .param p1, "prefixLength"    # I

    #@0
    .prologue
    .line 381
    invoke-virtual {p0}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 382
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@8
    const-string/jumbo v1, "Bad address"

    #@b
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 384
    :cond_0
    instance-of v0, p0, Ljava/net/Inet4Address;

    #@11
    if-eqz v0, :cond_2

    #@13
    .line 385
    if-ltz p1, :cond_1

    #@15
    const/16 v0, 0x20

    #@17
    if-le p1, v0, :cond_5

    #@19
    .line 386
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@1b
    const-string/jumbo v1, "Bad prefixLength"

    #@1e
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@21
    throw v0

    #@22
    .line 388
    :cond_2
    instance-of v0, p0, Ljava/net/Inet6Address;

    #@24
    if-eqz v0, :cond_4

    #@26
    .line 389
    if-ltz p1, :cond_3

    #@28
    const/16 v0, 0x80

    #@2a
    if-le p1, v0, :cond_5

    #@2c
    .line 390
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@2e
    const-string/jumbo v1, "Bad prefixLength"

    #@31
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@34
    throw v0

    #@35
    .line 393
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@37
    const-string/jumbo v1, "Unsupported family"

    #@3a
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@3d
    throw v0

    #@3e
    .line 380
    :cond_5
    return-void
.end method

.method private static getService()Landroid/net/IConnectivityManager;
    .locals 1

    #@0
    .prologue
    .line 131
    const-string/jumbo v0, "connectivity"

    #@3
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@6
    move-result-object v0

    #@7
    .line 130
    invoke-static {v0}, Landroid/net/IConnectivityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IConnectivityManager;

    #@a
    move-result-object v0

    #@b
    return-object v0
.end method

.method public static prepare(Landroid/content/Context;)Landroid/content/Intent;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 159
    :try_start_0
    invoke-static {}, Landroid/net/VpnService;->getService()Landroid/net/IConnectivityManager;

    #@4
    move-result-object v1

    #@5
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@8
    move-result-object v2

    #@9
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    #@c
    move-result v3

    #@d
    const/4 v4, 0x0

    #@e
    invoke-interface {v1, v2, v4, v3}, Landroid/net/IConnectivityManager;->prepareVpn(Ljava/lang/String;Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@11
    move-result v1

    #@12
    if-eqz v1, :cond_0

    #@14
    .line 160
    return-object v5

    #@15
    .line 162
    :catch_0
    move-exception v0

    #@16
    .line 165
    :cond_0
    invoke-static {}, Lcom/android/internal/net/VpnConfig;->getIntentForConfirmation()Landroid/content/Intent;

    #@19
    move-result-object v1

    #@1a
    return-object v1
.end method

.method public static prepareAndAuthorize(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 181
    invoke-static {}, Landroid/net/VpnService;->getService()Landroid/net/IConnectivityManager;

    #@3
    move-result-object v0

    #@4
    .line 182
    .local v0, "cm":Landroid/net/IConnectivityManager;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@7
    move-result-object v2

    #@8
    .line 185
    .local v2, "packageName":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    #@b
    move-result v3

    #@c
    .line 186
    .local v3, "userId":I
    const/4 v4, 0x0

    #@d
    invoke-interface {v0, v2, v4, v3}, Landroid/net/IConnectivityManager;->prepareVpn(Ljava/lang/String;Ljava/lang/String;I)Z

    #@10
    move-result v4

    #@11
    if-nez v4, :cond_0

    #@13
    .line 187
    const/4 v4, 0x0

    #@14
    invoke-interface {v0, v4, v2, v3}, Landroid/net/IConnectivityManager;->prepareVpn(Ljava/lang/String;Ljava/lang/String;I)Z

    #@17
    .line 189
    :cond_0
    const/4 v4, 0x1

    #@18
    invoke-interface {v0, v2, v3, v4}, Landroid/net/IConnectivityManager;->setVpnPackageAuthorization(Ljava/lang/String;IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@1b
    .line 180
    .end local v3    # "userId":I
    :goto_0
    return-void

    #@1c
    .line 190
    :catch_0
    move-exception v1

    #@1d
    .local v1, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method


# virtual methods
.method public addAddress(Ljava/net/InetAddress;I)Z
    .locals 3
    .param p1, "address"    # Ljava/net/InetAddress;
    .param p2, "prefixLength"    # I

    #@0
    .prologue
    .line 254
    invoke-static {p1, p2}, Landroid/net/VpnService;->check(Ljava/net/InetAddress;I)V

    #@3
    .line 256
    :try_start_0
    invoke-static {}, Landroid/net/VpnService;->getService()Landroid/net/IConnectivityManager;

    #@6
    move-result-object v1

    #@7
    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    #@a
    move-result-object v2

    #@b
    invoke-interface {v1, v2, p2}, Landroid/net/IConnectivityManager;->addVpnAddress(Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@e
    move-result v1

    #@f
    return v1

    #@10
    .line 257
    :catch_0
    move-exception v0

    #@11
    .line 258
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/IllegalStateException;

    #@13
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    #@16
    throw v1
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 342
    if-eqz p1, :cond_0

    #@3
    const-string/jumbo v0, "android.net.VpnService"

    #@6
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    #@9
    move-result-object v1

    #@a
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@d
    move-result v0

    #@e
    if-eqz v0, :cond_0

    #@10
    .line 343
    new-instance v0, Landroid/net/VpnService$Callback;

    #@12
    invoke-direct {v0, p0, v2}, Landroid/net/VpnService$Callback;-><init>(Landroid/net/VpnService;Landroid/net/VpnService$Callback;)V

    #@15
    return-object v0

    #@16
    .line 345
    :cond_0
    return-object v2
.end method

.method public onRevoke()V
    .locals 0

    #@0
    .prologue
    .line 360
    invoke-virtual {p0}, Landroid/net/VpnService;->stopSelf()V

    #@3
    .line 359
    return-void
.end method

.method public protect(I)Z
    .locals 1
    .param p1, "socket"    # I

    #@0
    .prologue
    .line 210
    invoke-static {p1}, Landroid/net/NetworkUtils;->protectFromVpn(I)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public protect(Ljava/net/DatagramSocket;)Z
    .locals 1
    .param p1, "socket"    # Ljava/net/DatagramSocket;

    #@0
    .prologue
    .line 231
    invoke-virtual {p1}, Ljava/net/DatagramSocket;->getFileDescriptor$()Ljava/io/FileDescriptor;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Ljava/io/FileDescriptor;->getInt$()I

    #@7
    move-result v0

    #@8
    invoke-virtual {p0, v0}, Landroid/net/VpnService;->protect(I)Z

    #@b
    move-result v0

    #@c
    return v0
.end method

.method public protect(Ljava/net/Socket;)Z
    .locals 1
    .param p1, "socket"    # Ljava/net/Socket;

    #@0
    .prologue
    .line 220
    invoke-virtual {p1}, Ljava/net/Socket;->getFileDescriptor$()Ljava/io/FileDescriptor;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Ljava/io/FileDescriptor;->getInt$()I

    #@7
    move-result v0

    #@8
    invoke-virtual {p0, v0}, Landroid/net/VpnService;->protect(I)Z

    #@b
    move-result v0

    #@c
    return v0
.end method

.method public removeAddress(Ljava/net/InetAddress;I)Z
    .locals 3
    .param p1, "address"    # Ljava/net/InetAddress;
    .param p2, "prefixLength"    # I

    #@0
    .prologue
    .line 284
    invoke-static {p1, p2}, Landroid/net/VpnService;->check(Ljava/net/InetAddress;I)V

    #@3
    .line 286
    :try_start_0
    invoke-static {}, Landroid/net/VpnService;->getService()Landroid/net/IConnectivityManager;

    #@6
    move-result-object v1

    #@7
    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    #@a
    move-result-object v2

    #@b
    invoke-interface {v1, v2, p2}, Landroid/net/IConnectivityManager;->removeVpnAddress(Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@e
    move-result v1

    #@f
    return v1

    #@10
    .line 287
    :catch_0
    move-exception v0

    #@11
    .line 288
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/IllegalStateException;

    #@13
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    #@16
    throw v1
.end method

.method public setUnderlyingNetworks([Landroid/net/Network;)Z
    .locals 2
    .param p1, "networks"    # [Landroid/net/Network;

    #@0
    .prologue
    .line 326
    :try_start_0
    invoke-static {}, Landroid/net/VpnService;->getService()Landroid/net/IConnectivityManager;

    #@3
    move-result-object v1

    #@4
    invoke-interface {v1, p1}, Landroid/net/IConnectivityManager;->setUnderlyingNetworksForVpn([Landroid/net/Network;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    move-result v1

    #@8
    return v1

    #@9
    .line 327
    :catch_0
    move-exception v0

    #@a
    .line 328
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/IllegalStateException;

    #@c
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    #@f
    throw v1
.end method

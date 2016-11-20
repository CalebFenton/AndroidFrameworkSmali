.class Lcom/android/server/net/NetworkPinner$Callback;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "NetworkPinner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/net/NetworkPinner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Callback"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 88
    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    #@3
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/net/NetworkPinner$Callback;)V
    .locals 0

    #@0
    .prologue
    invoke-direct {p0}, Lcom/android/server/net/NetworkPinner$Callback;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .locals 4
    .param p1, "network"    # Landroid/net/Network;

    #@0
    .prologue
    .line 91
    sget-object v1, Lcom/android/server/net/NetworkPinner;->sLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 92
    :try_start_0
    invoke-static {}, Lcom/android/server/net/NetworkPinner;->-get2()Lcom/android/server/net/NetworkPinner$Callback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    move-result-object v0

    #@7
    if-eq p0, v0, :cond_0

    #@9
    monitor-exit v1

    #@a
    return-void

    #@b
    .line 94
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/android/server/net/NetworkPinner;->-get1()Landroid/net/ConnectivityManager;

    #@e
    move-result-object v0

    #@f
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getBoundNetworkForProcess()Landroid/net/Network;

    #@12
    move-result-object v0

    #@13
    if-nez v0, :cond_1

    #@15
    sget-object v0, Lcom/android/server/net/NetworkPinner;->sNetwork:Landroid/net/Network;

    #@17
    if-nez v0, :cond_1

    #@19
    .line 95
    invoke-static {}, Lcom/android/server/net/NetworkPinner;->-get1()Landroid/net/ConnectivityManager;

    #@1c
    move-result-object v0

    #@1d
    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->bindProcessToNetwork(Landroid/net/Network;)Z

    #@20
    .line 96
    sput-object p1, Lcom/android/server/net/NetworkPinner;->sNetwork:Landroid/net/Network;

    #@22
    .line 97
    invoke-static {}, Lcom/android/server/net/NetworkPinner;->-get0()Ljava/lang/String;

    #@25
    move-result-object v0

    #@26
    new-instance v2, Ljava/lang/StringBuilder;

    #@28
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@2b
    const-string/jumbo v3, "Wifi alternate reality enabled on network "

    #@2e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v2

    #@32
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v2

    #@36
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@39
    move-result-object v2

    #@3a
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@3d
    .line 99
    :cond_1
    sget-object v0, Lcom/android/server/net/NetworkPinner;->sLock:Ljava/lang/Object;

    #@3f
    invoke-virtual {v0}, Ljava/lang/Object;->notify()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@42
    monitor-exit v1

    #@43
    .line 90
    return-void

    #@44
    .line 91
    :catchall_0
    move-exception v0

    #@45
    monitor-exit v1

    #@46
    throw v0
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 4
    .param p1, "network"    # Landroid/net/Network;

    #@0
    .prologue
    .line 105
    sget-object v1, Lcom/android/server/net/NetworkPinner;->sLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 106
    :try_start_0
    invoke-static {}, Lcom/android/server/net/NetworkPinner;->-get2()Lcom/android/server/net/NetworkPinner$Callback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    move-result-object v0

    #@7
    if-eq p0, v0, :cond_0

    #@9
    monitor-exit v1

    #@a
    return-void

    #@b
    .line 108
    :cond_0
    :try_start_1
    sget-object v0, Lcom/android/server/net/NetworkPinner;->sNetwork:Landroid/net/Network;

    #@d
    invoke-virtual {p1, v0}, Landroid/net/Network;->equals(Ljava/lang/Object;)Z

    #@10
    move-result v0

    #@11
    if-eqz v0, :cond_1

    #@13
    invoke-static {}, Lcom/android/server/net/NetworkPinner;->-get1()Landroid/net/ConnectivityManager;

    #@16
    move-result-object v0

    #@17
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getBoundNetworkForProcess()Landroid/net/Network;

    #@1a
    move-result-object v0

    #@1b
    invoke-virtual {p1, v0}, Landroid/net/Network;->equals(Ljava/lang/Object;)Z

    #@1e
    move-result v0

    #@1f
    if-eqz v0, :cond_1

    #@21
    .line 109
    invoke-static {}, Lcom/android/server/net/NetworkPinner;->unpin()V

    #@24
    .line 110
    invoke-static {}, Lcom/android/server/net/NetworkPinner;->-get0()Ljava/lang/String;

    #@27
    move-result-object v0

    #@28
    new-instance v2, Ljava/lang/StringBuilder;

    #@2a
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@2d
    const-string/jumbo v3, "Wifi alternate reality disabled on network "

    #@30
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v2

    #@34
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v2

    #@38
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3b
    move-result-object v2

    #@3c
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@3f
    .line 112
    :cond_1
    sget-object v0, Lcom/android/server/net/NetworkPinner;->sLock:Ljava/lang/Object;

    #@41
    invoke-virtual {v0}, Ljava/lang/Object;->notify()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@44
    monitor-exit v1

    #@45
    .line 104
    return-void

    #@46
    .line 105
    :catchall_0
    move-exception v0

    #@47
    monitor-exit v1

    #@48
    throw v0
.end method

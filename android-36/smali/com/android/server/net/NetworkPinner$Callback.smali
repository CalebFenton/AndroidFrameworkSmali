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
.method private constructor blacklist <init>()V
    .registers 1

    .line 88
    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/server/net/NetworkPinner-IA;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/server/net/NetworkPinner$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onAvailable(Landroid/net/Network;)V
    .registers 6
    .param p1, "network"    # Landroid/net/Network;

    .line 91
    sget-object v0, Lcom/android/server/net/NetworkPinner;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 92
    :try_start_3
    invoke-static {}, Lcom/android/server/net/NetworkPinner;->-$$Nest$sfgetsCallback()Lcom/android/server/net/NetworkPinner$Callback;

    move-result-object v1

    if-eq p0, v1, :cond_b

    monitor-exit v0

    return-void

    .line 94
    :cond_b
    invoke-static {}, Lcom/android/server/net/NetworkPinner;->-$$Nest$sfgetsCM()Landroid/net/ConnectivityManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getBoundNetworkForProcess()Landroid/net/Network;

    move-result-object v1

    if-nez v1, :cond_3c

    sget-object v1, Lcom/android/server/net/NetworkPinner;->sNetwork:Landroid/net/Network;

    if-nez v1, :cond_3c

    .line 95
    invoke-static {}, Lcom/android/server/net/NetworkPinner;->-$$Nest$sfgetsCM()Landroid/net/ConnectivityManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/net/ConnectivityManager;->bindProcessToNetwork(Landroid/net/Network;)Z

    .line 96
    sput-object p1, Lcom/android/server/net/NetworkPinner;->sNetwork:Landroid/net/Network;

    .line 97
    invoke-static {}, Lcom/android/server/net/NetworkPinner;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Wifi alternate reality enabled on network "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    :cond_3c
    sget-object v1, Lcom/android/server/net/NetworkPinner;->sLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 100
    monitor-exit v0

    .line 101
    return-void

    .line 100
    :catchall_43
    move-exception v1

    monitor-exit v0
    :try_end_45
    .catchall {:try_start_3 .. :try_end_45} :catchall_43

    throw v1
.end method

.method public whitelist onLost(Landroid/net/Network;)V
    .registers 6
    .param p1, "network"    # Landroid/net/Network;

    .line 105
    sget-object v0, Lcom/android/server/net/NetworkPinner;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 106
    :try_start_3
    invoke-static {}, Lcom/android/server/net/NetworkPinner;->-$$Nest$sfgetsCallback()Lcom/android/server/net/NetworkPinner$Callback;

    move-result-object v1

    if-eq p0, v1, :cond_b

    monitor-exit v0

    return-void

    .line 108
    :cond_b
    sget-object v1, Lcom/android/server/net/NetworkPinner;->sNetwork:Landroid/net/Network;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3e

    invoke-static {}, Lcom/android/server/net/NetworkPinner;->-$$Nest$sfgetsCM()Landroid/net/ConnectivityManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getBoundNetworkForProcess()Landroid/net/Network;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 109
    invoke-static {}, Lcom/android/server/net/NetworkPinner;->unpin()V

    .line 110
    invoke-static {}, Lcom/android/server/net/NetworkPinner;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Wifi alternate reality disabled on network "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    :cond_3e
    sget-object v1, Lcom/android/server/net/NetworkPinner;->sLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 113
    monitor-exit v0

    .line 114
    return-void

    .line 113
    :catchall_45
    move-exception v1

    monitor-exit v0
    :try_end_47
    .catchall {:try_start_3 .. :try_end_47} :catchall_45

    throw v1
.end method

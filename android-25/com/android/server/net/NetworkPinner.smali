.class public Lcom/android/server/net/NetworkPinner;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "NetworkPinner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/net/NetworkPinner$Callback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static sCM:Landroid/net/ConnectivityManager;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "sLock"
    .end annotation
.end field

.field private static sCallback:Lcom/android/server/net/NetworkPinner$Callback;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "sLock"
    .end annotation
.end field

.field protected static final sLock:Ljava/lang/Object;

.field protected static sNetwork:Landroid/net/Network;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "sLock"
    .end annotation
.end field


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    #@0
    sget-object v0, Lcom/android/server/net/NetworkPinner;->TAG:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method static synthetic -get1()Landroid/net/ConnectivityManager;
    .locals 1

    #@0
    sget-object v0, Lcom/android/server/net/NetworkPinner;->sCM:Landroid/net/ConnectivityManager;

    #@2
    return-object v0
.end method

.method static synthetic -get2()Lcom/android/server/net/NetworkPinner$Callback;
    .locals 1

    #@0
    sget-object v0, Lcom/android/server/net/NetworkPinner;->sCallback:Lcom/android/server/net/NetworkPinner$Callback;

    #@2
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 62
    const-class v0, Lcom/android/server/net/NetworkPinner;

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    sput-object v0, Lcom/android/server/net/NetworkPinner;->TAG:Ljava/lang/String;

    #@8
    .line 65
    new-instance v0, Ljava/lang/Object;

    #@a
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@d
    sput-object v0, Lcom/android/server/net/NetworkPinner;->sLock:Ljava/lang/Object;

    #@f
    .line 60
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 60
    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    #@3
    return-void
.end method

.method private static maybeInitConnectivityManager(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 78
    sget-object v0, Lcom/android/server/net/NetworkPinner;->sCM:Landroid/net/ConnectivityManager;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 81
    const-string/jumbo v0, "connectivity"

    #@7
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@a
    move-result-object v0

    #@b
    check-cast v0, Landroid/net/ConnectivityManager;

    #@d
    sput-object v0, Lcom/android/server/net/NetworkPinner;->sCM:Landroid/net/ConnectivityManager;

    #@f
    .line 82
    sget-object v0, Lcom/android/server/net/NetworkPinner;->sCM:Landroid/net/ConnectivityManager;

    #@11
    if-nez v0, :cond_0

    #@13
    .line 83
    new-instance v0, Ljava/lang/IllegalStateException;

    #@15
    const-string/jumbo v1, "Bad luck, ConnectivityService not started."

    #@18
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@1b
    throw v0

    #@1c
    .line 75
    :cond_0
    return-void
.end method

.method public static pin(Landroid/content/Context;Landroid/net/NetworkRequest;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "request"    # Landroid/net/NetworkRequest;

    #@0
    .prologue
    .line 118
    sget-object v2, Lcom/android/server/net/NetworkPinner;->sLock:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 119
    :try_start_0
    sget-object v1, Lcom/android/server/net/NetworkPinner;->sCallback:Lcom/android/server/net/NetworkPinner$Callback;

    #@5
    if-nez v1, :cond_0

    #@7
    .line 120
    invoke-static {p0}, Lcom/android/server/net/NetworkPinner;->maybeInitConnectivityManager(Landroid/content/Context;)V

    #@a
    .line 121
    new-instance v1, Lcom/android/server/net/NetworkPinner$Callback;

    #@c
    const/4 v3, 0x0

    #@d
    invoke-direct {v1, v3}, Lcom/android/server/net/NetworkPinner$Callback;-><init>(Lcom/android/server/net/NetworkPinner$Callback;)V

    #@10
    sput-object v1, Lcom/android/server/net/NetworkPinner;->sCallback:Lcom/android/server/net/NetworkPinner$Callback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    .line 123
    :try_start_1
    sget-object v1, Lcom/android/server/net/NetworkPinner;->sCM:Landroid/net/ConnectivityManager;

    #@14
    sget-object v3, Lcom/android/server/net/NetworkPinner;->sCallback:Lcom/android/server/net/NetworkPinner$Callback;

    #@16
    invoke-virtual {v1, p1, v3}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@19
    :cond_0
    :goto_0
    monitor-exit v2

    #@1a
    .line 117
    return-void

    #@1b
    .line 124
    :catch_0
    move-exception v0

    #@1c
    .line 125
    .local v0, "e":Ljava/lang/SecurityException;
    :try_start_2
    sget-object v1, Lcom/android/server/net/NetworkPinner;->TAG:Ljava/lang/String;

    #@1e
    const-string/jumbo v3, "Failed to register network callback"

    #@21
    invoke-static {v1, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@24
    .line 126
    const/4 v1, 0x0

    #@25
    sput-object v1, Lcom/android/server/net/NetworkPinner;->sCallback:Lcom/android/server/net/NetworkPinner$Callback;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@27
    goto :goto_0

    #@28
    .line 118
    .end local v0    # "e":Ljava/lang/SecurityException;
    :catchall_0
    move-exception v1

    #@29
    monitor-exit v2

    #@2a
    throw v1
.end method

.method public static unpin()V
    .locals 4

    #@0
    .prologue
    .line 133
    sget-object v2, Lcom/android/server/net/NetworkPinner;->sLock:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 134
    :try_start_0
    sget-object v1, Lcom/android/server/net/NetworkPinner;->sCallback:Lcom/android/server/net/NetworkPinner$Callback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    if-eqz v1, :cond_0

    #@7
    .line 136
    :try_start_1
    sget-object v1, Lcom/android/server/net/NetworkPinner;->sCM:Landroid/net/ConnectivityManager;

    #@9
    const/4 v3, 0x0

    #@a
    invoke-virtual {v1, v3}, Landroid/net/ConnectivityManager;->bindProcessToNetwork(Landroid/net/Network;)Z

    #@d
    .line 137
    sget-object v1, Lcom/android/server/net/NetworkPinner;->sCM:Landroid/net/ConnectivityManager;

    #@f
    sget-object v3, Lcom/android/server/net/NetworkPinner;->sCallback:Lcom/android/server/net/NetworkPinner$Callback;

    #@11
    invoke-virtual {v1, v3}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@14
    .line 141
    .local v0, "e":Ljava/lang/SecurityException;
    :goto_0
    const/4 v1, 0x0

    #@15
    :try_start_2
    sput-object v1, Lcom/android/server/net/NetworkPinner;->sCallback:Lcom/android/server/net/NetworkPinner$Callback;

    #@17
    .line 142
    const/4 v1, 0x0

    #@18
    sput-object v1, Lcom/android/server/net/NetworkPinner;->sNetwork:Landroid/net/Network;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@1a
    :cond_0
    monitor-exit v2

    #@1b
    .line 132
    return-void

    #@1c
    .line 138
    .end local v0    # "e":Ljava/lang/SecurityException;
    :catch_0
    move-exception v0

    #@1d
    .line 139
    .restart local v0    # "e":Ljava/lang/SecurityException;
    :try_start_3
    sget-object v1, Lcom/android/server/net/NetworkPinner;->TAG:Ljava/lang/String;

    #@1f
    const-string/jumbo v3, "Failed to unregister network callback"

    #@22
    invoke-static {v1, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@25
    goto :goto_0

    #@26
    .line 133
    :catchall_0
    move-exception v1

    #@27
    monitor-exit v2

    #@28
    throw v1
.end method

.class final Lcom/android/server/pm/EphemeralResolverConnection;
.super Ljava/lang/Object;
.source "EphemeralResolverConnection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/EphemeralResolverConnection$GetEphemeralResolveInfoCaller;,
        Lcom/android/server/pm/EphemeralResolverConnection$MyServiceConnection;
    }
.end annotation


# static fields
.field private static final BIND_SERVICE_TIMEOUT_MS:J


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mGetEphemeralResolveInfoCaller:Lcom/android/server/pm/EphemeralResolverConnection$GetEphemeralResolveInfoCaller;

.field private final mIntent:Landroid/content/Intent;

.field private final mLock:Ljava/lang/Object;

.field private mRemoteInstance:Lcom/android/internal/app/IEphemeralResolver;

.field private final mServiceConnection:Landroid/content/ServiceConnection;


# direct methods
.method static synthetic -get0(Lcom/android/server/pm/EphemeralResolverConnection;)Ljava/lang/Object;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/pm/EphemeralResolverConnection;->mLock:Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/pm/EphemeralResolverConnection;Lcom/android/internal/app/IEphemeralResolver;)Lcom/android/internal/app/IEphemeralResolver;
    .locals 0

    #@0
    iput-object p1, p0, Lcom/android/server/pm/EphemeralResolverConnection;->mRemoteInstance:Lcom/android/internal/app/IEphemeralResolver;

    #@2
    return-object p1
.end method

.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 50
    const-string/jumbo v0, "eng"

    #@3
    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    #@5
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@8
    move-result v0

    #@9
    if-eqz v0, :cond_0

    #@b
    const/16 v0, 0x12c

    #@d
    :goto_0
    int-to-long v0, v0

    #@e
    .line 49
    sput-wide v0, Lcom/android/server/pm/EphemeralResolverConnection;->BIND_SERVICE_TIMEOUT_MS:J

    #@10
    .line 47
    return-void

    #@11
    .line 50
    :cond_0
    const/16 v0, 0xc8

    #@13
    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "componentName"    # Landroid/content/ComponentName;

    #@0
    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 52
    new-instance v0, Ljava/lang/Object;

    #@5
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@8
    iput-object v0, p0, Lcom/android/server/pm/EphemeralResolverConnection;->mLock:Ljava/lang/Object;

    #@a
    .line 54
    new-instance v0, Lcom/android/server/pm/EphemeralResolverConnection$GetEphemeralResolveInfoCaller;

    #@c
    invoke-direct {v0}, Lcom/android/server/pm/EphemeralResolverConnection$GetEphemeralResolveInfoCaller;-><init>()V

    #@f
    .line 53
    iput-object v0, p0, Lcom/android/server/pm/EphemeralResolverConnection;->mGetEphemeralResolveInfoCaller:Lcom/android/server/pm/EphemeralResolverConnection$GetEphemeralResolveInfoCaller;

    #@11
    .line 55
    new-instance v0, Lcom/android/server/pm/EphemeralResolverConnection$MyServiceConnection;

    #@13
    const/4 v1, 0x0

    #@14
    invoke-direct {v0, p0, v1}, Lcom/android/server/pm/EphemeralResolverConnection$MyServiceConnection;-><init>(Lcom/android/server/pm/EphemeralResolverConnection;Lcom/android/server/pm/EphemeralResolverConnection$MyServiceConnection;)V

    #@17
    iput-object v0, p0, Lcom/android/server/pm/EphemeralResolverConnection;->mServiceConnection:Landroid/content/ServiceConnection;

    #@19
    .line 63
    iput-object p1, p0, Lcom/android/server/pm/EphemeralResolverConnection;->mContext:Landroid/content/Context;

    #@1b
    .line 64
    new-instance v0, Landroid/content/Intent;

    #@1d
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    #@20
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    #@23
    move-result-object v0

    #@24
    iput-object v0, p0, Lcom/android/server/pm/EphemeralResolverConnection;->mIntent:Landroid/content/Intent;

    #@26
    .line 62
    return-void
.end method

.method private bindLocked()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    #@0
    .prologue
    .line 110
    iget-object v3, p0, Lcom/android/server/pm/EphemeralResolverConnection;->mRemoteInstance:Lcom/android/internal/app/IEphemeralResolver;

    #@2
    if-eqz v3, :cond_0

    #@4
    .line 111
    return-void

    #@5
    .line 114
    :cond_0
    iget-object v3, p0, Lcom/android/server/pm/EphemeralResolverConnection;->mContext:Landroid/content/Context;

    #@7
    iget-object v8, p0, Lcom/android/server/pm/EphemeralResolverConnection;->mIntent:Landroid/content/Intent;

    #@9
    iget-object v9, p0, Lcom/android/server/pm/EphemeralResolverConnection;->mServiceConnection:Landroid/content/ServiceConnection;

    #@b
    .line 115
    sget-object v10, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    #@d
    const v11, 0x4000001

    #@10
    .line 114
    invoke-virtual {v3, v8, v9, v11, v10}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    #@13
    .line 117
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@16
    move-result-wide v6

    #@17
    .line 119
    .local v6, "startMillis":J
    :goto_0
    iget-object v3, p0, Lcom/android/server/pm/EphemeralResolverConnection;->mRemoteInstance:Lcom/android/internal/app/IEphemeralResolver;

    #@19
    if-eqz v3, :cond_1

    #@1b
    .line 134
    iget-object v3, p0, Lcom/android/server/pm/EphemeralResolverConnection;->mLock:Ljava/lang/Object;

    #@1d
    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    #@20
    .line 109
    return-void

    #@21
    .line 122
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@24
    move-result-wide v8

    #@25
    sub-long v0, v8, v6

    #@27
    .line 123
    .local v0, "elapsedMillis":J
    sget-wide v8, Lcom/android/server/pm/EphemeralResolverConnection;->BIND_SERVICE_TIMEOUT_MS:J

    #@29
    sub-long v4, v8, v0

    #@2b
    .line 124
    .local v4, "remainingMillis":J
    const-wide/16 v8, 0x0

    #@2d
    cmp-long v3, v4, v8

    #@2f
    if-gtz v3, :cond_2

    #@31
    .line 125
    new-instance v3, Ljava/util/concurrent/TimeoutException;

    #@33
    const-string/jumbo v8, "Didn\'t bind to resolver in time."

    #@36
    invoke-direct {v3, v8}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    #@39
    throw v3

    #@3a
    .line 128
    :cond_2
    :try_start_0
    iget-object v3, p0, Lcom/android/server/pm/EphemeralResolverConnection;->mLock:Ljava/lang/Object;

    #@3c
    invoke-virtual {v3, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    #@3f
    goto :goto_0

    #@40
    .line 129
    :catch_0
    move-exception v2

    #@41
    .local v2, "ie":Ljava/lang/InterruptedException;
    goto :goto_0
.end method

.method private getRemoteInstanceLazy()Lcom/android/internal/app/IEphemeralResolver;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    #@0
    .prologue
    .line 100
    iget-object v1, p0, Lcom/android/server/pm/EphemeralResolverConnection;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 101
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/EphemeralResolverConnection;->mRemoteInstance:Lcom/android/internal/app/IEphemeralResolver;

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 102
    iget-object v0, p0, Lcom/android/server/pm/EphemeralResolverConnection;->mRemoteInstance:Lcom/android/internal/app/IEphemeralResolver;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    monitor-exit v1

    #@a
    return-object v0

    #@b
    .line 104
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/pm/EphemeralResolverConnection;->bindLocked()V

    #@e
    .line 105
    iget-object v0, p0, Lcom/android/server/pm/EphemeralResolverConnection;->mRemoteInstance:Lcom/android/internal/app/IEphemeralResolver;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@10
    monitor-exit v1

    #@11
    return-object v0

    #@12
    .line 100
    :catchall_0
    move-exception v0

    #@13
    monitor-exit v1

    #@14
    throw v0
.end method

.method private throwIfCalledOnMainThread()V
    .locals 2

    #@0
    .prologue
    .line 138
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@3
    move-result-object v0

    #@4
    iget-object v1, p0, Lcom/android/server/pm/EphemeralResolverConnection;->mContext:Landroid/content/Context;

    #@6
    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    #@9
    move-result-object v1

    #@a
    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    #@d
    move-result-object v1

    #@e
    if-ne v0, v1, :cond_0

    #@10
    .line 139
    new-instance v0, Ljava/lang/RuntimeException;

    #@12
    const-string/jumbo v1, "Cannot invoke on the main thread"

    #@15
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@18
    throw v0

    #@19
    .line 137
    :cond_0
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 6
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "prefix"    # Ljava/lang/String;

    #@0
    .prologue
    .line 83
    iget-object v3, p0, Lcom/android/server/pm/EphemeralResolverConnection;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v3

    #@3
    .line 84
    :try_start_0
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    #@6
    move-result-object v2

    #@7
    const-string/jumbo v4, "bound="

    #@a
    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    #@d
    move-result-object v4

    #@e
    .line 85
    iget-object v2, p0, Lcom/android/server/pm/EphemeralResolverConnection;->mRemoteInstance:Lcom/android/internal/app/IEphemeralResolver;

    #@10
    if-eqz v2, :cond_0

    #@12
    const-string/jumbo v2, "true"

    #@15
    .line 84
    :goto_0
    invoke-virtual {v4, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    #@18
    move-result-object v2

    #@19
    invoke-virtual {v2}, Ljava/io/PrintWriter;->println()V

    #@1c
    .line 87
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1f
    .line 90
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/pm/EphemeralResolverConnection;->getRemoteInstanceLazy()Lcom/android/internal/app/IEphemeralResolver;

    #@22
    move-result-object v2

    #@23
    invoke-interface {v2}, Lcom/android/internal/app/IEphemeralResolver;->asBinder()Landroid/os/IBinder;

    #@26
    move-result-object v2

    #@27
    const/4 v4, 0x1

    #@28
    new-array v4, v4, [Ljava/lang/String;

    #@2a
    const/4 v5, 0x0

    #@2b
    aput-object p3, v4, v5

    #@2d
    invoke-interface {v2, p1, v4}, Landroid/os/IBinder;->dump(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@30
    :goto_1
    monitor-exit v3

    #@31
    .line 82
    return-void

    #@32
    .line 85
    :cond_0
    :try_start_2
    const-string/jumbo v2, "false"
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@35
    goto :goto_0

    #@36
    .line 83
    :catchall_0
    move-exception v2

    #@37
    monitor-exit v3

    #@38
    throw v2

    #@39
    .line 91
    :catch_0
    move-exception v1

    #@3a
    .local v1, "te":Ljava/util/concurrent/TimeoutException;
    goto :goto_1

    #@3b
    .line 93
    .end local v1    # "te":Ljava/util/concurrent/TimeoutException;
    :catch_1
    move-exception v0

    #@3c
    .local v0, "re":Landroid/os/RemoteException;
    goto :goto_1
.end method

.method public final getEphemeralResolveInfoList(I)Ljava/util/List;
    .locals 5
    .param p1, "hashPrefix"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/EphemeralResolveInfo;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 68
    invoke-direct {p0}, Lcom/android/server/pm/EphemeralResolverConnection;->throwIfCalledOnMainThread()V

    #@3
    .line 70
    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/EphemeralResolverConnection;->mGetEphemeralResolveInfoCaller:Lcom/android/server/pm/EphemeralResolverConnection$GetEphemeralResolveInfoCaller;

    #@5
    .line 71
    invoke-direct {p0}, Lcom/android/server/pm/EphemeralResolverConnection;->getRemoteInstanceLazy()Lcom/android/internal/app/IEphemeralResolver;

    #@8
    move-result-object v3

    #@9
    .line 70
    invoke-virtual {v2, v3, p1}, Lcom/android/server/pm/EphemeralResolverConnection$GetEphemeralResolveInfoCaller;->getEphemeralResolveInfoList(Lcom/android/internal/app/IEphemeralResolver;I)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    #@c
    move-result-object v2

    #@d
    .line 75
    iget-object v3, p0, Lcom/android/server/pm/EphemeralResolverConnection;->mLock:Ljava/lang/Object;

    #@f
    monitor-enter v3

    #@10
    .line 76
    :try_start_1
    iget-object v4, p0, Lcom/android/server/pm/EphemeralResolverConnection;->mLock:Ljava/lang/Object;

    #@12
    invoke-virtual {v4}, Ljava/lang/Object;->notifyAll()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@15
    monitor-exit v3

    #@16
    .line 70
    return-object v2

    #@17
    .line 75
    :catchall_0
    move-exception v2

    #@18
    monitor-exit v3

    #@19
    throw v2

    #@1a
    .line 73
    :catch_0
    move-exception v1

    #@1b
    .line 75
    .local v1, "te":Ljava/util/concurrent/TimeoutException;
    iget-object v3, p0, Lcom/android/server/pm/EphemeralResolverConnection;->mLock:Ljava/lang/Object;

    #@1d
    monitor-enter v3

    #@1e
    .line 76
    :try_start_2
    iget-object v2, p0, Lcom/android/server/pm/EphemeralResolverConnection;->mLock:Ljava/lang/Object;

    #@20
    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@23
    .end local v1    # "te":Ljava/util/concurrent/TimeoutException;
    :goto_0
    monitor-exit v3

    #@24
    .line 79
    const/4 v2, 0x0

    #@25
    return-object v2

    #@26
    .line 75
    .restart local v1    # "te":Ljava/util/concurrent/TimeoutException;
    :catchall_1
    move-exception v2

    #@27
    monitor-exit v3

    #@28
    throw v2

    #@29
    .line 72
    .end local v1    # "te":Ljava/util/concurrent/TimeoutException;
    :catch_1
    move-exception v0

    #@2a
    .line 75
    .local v0, "re":Landroid/os/RemoteException;
    iget-object v3, p0, Lcom/android/server/pm/EphemeralResolverConnection;->mLock:Ljava/lang/Object;

    #@2c
    monitor-enter v3

    #@2d
    .line 76
    :try_start_3
    iget-object v2, p0, Lcom/android/server/pm/EphemeralResolverConnection;->mLock:Ljava/lang/Object;

    #@2f
    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    #@32
    goto :goto_0

    #@33
    .line 75
    :catchall_2
    move-exception v2

    #@34
    monitor-exit v3

    #@35
    throw v2

    #@36
    .line 74
    .end local v0    # "re":Landroid/os/RemoteException;
    :catchall_3
    move-exception v2

    #@37
    .line 75
    iget-object v3, p0, Lcom/android/server/pm/EphemeralResolverConnection;->mLock:Ljava/lang/Object;

    #@39
    monitor-enter v3

    #@3a
    .line 76
    :try_start_4
    iget-object v4, p0, Lcom/android/server/pm/EphemeralResolverConnection;->mLock:Ljava/lang/Object;

    #@3c
    invoke-virtual {v4}, Ljava/lang/Object;->notifyAll()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    #@3f
    monitor-exit v3

    #@40
    .line 74
    throw v2

    #@41
    .line 75
    :catchall_4
    move-exception v2

    #@42
    monitor-exit v3

    #@43
    throw v2
.end method

.class public Landroid/os/UpdateLock;
.super Ljava/lang/Object;
.source "UpdateLock.java"


# static fields
.field private static final DEBUG:Z = false

.field public static final NOW_IS_CONVENIENT:Ljava/lang/String; = "nowisconvenient"

.field private static final TAG:Ljava/lang/String; = "UpdateLock"

.field public static final TIMESTAMP:Ljava/lang/String; = "timestamp"

.field public static final UPDATE_LOCK_CHANGED:Ljava/lang/String; = "android.os.UpdateLock.UPDATE_LOCK_CHANGED"

.field private static sService:Landroid/os/IUpdateLock;


# instance fields
.field mCount:I

.field mHeld:Z

.field mRefCounted:Z

.field final mTag:Ljava/lang/String;

.field mToken:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 42
    iput v1, p0, Landroid/os/UpdateLock;->mCount:I

    #@6
    .line 43
    const/4 v0, 0x1

    #@7
    iput-boolean v0, p0, Landroid/os/UpdateLock;->mRefCounted:Z

    #@9
    .line 44
    iput-boolean v1, p0, Landroid/os/UpdateLock;->mHeld:Z

    #@b
    .line 76
    iput-object p1, p0, Landroid/os/UpdateLock;->mTag:Ljava/lang/String;

    #@d
    .line 77
    new-instance v0, Landroid/os/Binder;

    #@f
    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    #@12
    iput-object v0, p0, Landroid/os/UpdateLock;->mToken:Landroid/os/IBinder;

    #@14
    .line 75
    return-void
.end method

.method private acquireLocked()V
    .locals 4

    #@0
    .prologue
    .line 113
    iget-boolean v1, p0, Landroid/os/UpdateLock;->mRefCounted:Z

    #@2
    if-eqz v1, :cond_0

    #@4
    iget v1, p0, Landroid/os/UpdateLock;->mCount:I

    #@6
    add-int/lit8 v2, v1, 0x1

    #@8
    iput v2, p0, Landroid/os/UpdateLock;->mCount:I

    #@a
    if-nez v1, :cond_2

    #@c
    .line 114
    :cond_0
    sget-object v1, Landroid/os/UpdateLock;->sService:Landroid/os/IUpdateLock;

    #@e
    if-eqz v1, :cond_1

    #@10
    .line 116
    :try_start_0
    sget-object v1, Landroid/os/UpdateLock;->sService:Landroid/os/IUpdateLock;

    #@12
    iget-object v2, p0, Landroid/os/UpdateLock;->mToken:Landroid/os/IBinder;

    #@14
    iget-object v3, p0, Landroid/os/UpdateLock;->mTag:Ljava/lang/String;

    #@16
    invoke-interface {v1, v2, v3}, Landroid/os/IUpdateLock;->acquireUpdateLock(Landroid/os/IBinder;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@19
    .line 121
    :cond_1
    :goto_0
    const/4 v1, 0x1

    #@1a
    iput-boolean v1, p0, Landroid/os/UpdateLock;->mHeld:Z

    #@1c
    .line 112
    :cond_2
    return-void

    #@1d
    .line 117
    :catch_0
    move-exception v0

    #@1e
    .line 118
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "UpdateLock"

    #@21
    const-string/jumbo v2, "Unable to contact service to acquire"

    #@24
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@27
    goto :goto_0
.end method

.method private static checkService()V
    .locals 1

    #@0
    .prologue
    .line 35
    sget-object v0, Landroid/os/UpdateLock;->sService:Landroid/os/IUpdateLock;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 37
    const-string/jumbo v0, "updatelock"

    #@7
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@a
    move-result-object v0

    #@b
    .line 36
    invoke-static {v0}, Landroid/os/IUpdateLock$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IUpdateLock;

    #@e
    move-result-object v0

    #@f
    sput-object v0, Landroid/os/UpdateLock;->sService:Landroid/os/IUpdateLock;

    #@11
    .line 34
    :cond_0
    return-void
.end method

.method private releaseLocked()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 137
    iget-boolean v1, p0, Landroid/os/UpdateLock;->mRefCounted:Z

    #@3
    if-eqz v1, :cond_0

    #@5
    iget v1, p0, Landroid/os/UpdateLock;->mCount:I

    #@7
    add-int/lit8 v1, v1, -0x1

    #@9
    iput v1, p0, Landroid/os/UpdateLock;->mCount:I

    #@b
    if-nez v1, :cond_2

    #@d
    .line 138
    :cond_0
    sget-object v1, Landroid/os/UpdateLock;->sService:Landroid/os/IUpdateLock;

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 140
    :try_start_0
    sget-object v1, Landroid/os/UpdateLock;->sService:Landroid/os/IUpdateLock;

    #@13
    iget-object v2, p0, Landroid/os/UpdateLock;->mToken:Landroid/os/IBinder;

    #@15
    invoke-interface {v1, v2}, Landroid/os/IUpdateLock;->releaseUpdateLock(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@18
    .line 145
    :cond_1
    :goto_0
    iput-boolean v3, p0, Landroid/os/UpdateLock;->mHeld:Z

    #@1a
    .line 147
    :cond_2
    iget v1, p0, Landroid/os/UpdateLock;->mCount:I

    #@1c
    if-gez v1, :cond_3

    #@1e
    .line 148
    new-instance v1, Ljava/lang/RuntimeException;

    #@20
    const-string/jumbo v2, "UpdateLock under-locked"

    #@23
    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@26
    throw v1

    #@27
    .line 141
    :catch_0
    move-exception v0

    #@28
    .line 142
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "UpdateLock"

    #@2b
    const-string/jumbo v2, "Unable to contact service to release"

    #@2e
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@31
    goto :goto_0

    #@32
    .line 136
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_3
    return-void
.end method


# virtual methods
.method public acquire()V
    .locals 2

    #@0
    .prologue
    .line 106
    invoke-static {}, Landroid/os/UpdateLock;->checkService()V

    #@3
    .line 107
    iget-object v0, p0, Landroid/os/UpdateLock;->mToken:Landroid/os/IBinder;

    #@5
    monitor-enter v0

    #@6
    .line 108
    :try_start_0
    invoke-direct {p0}, Landroid/os/UpdateLock;->acquireLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    monitor-exit v0

    #@a
    .line 102
    return-void

    #@b
    .line 107
    :catchall_0
    move-exception v1

    #@c
    monitor-exit v0

    #@d
    throw v1
.end method

.method protected finalize()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    #@0
    .prologue
    .line 154
    iget-object v2, p0, Landroid/os/UpdateLock;->mToken:Landroid/os/IBinder;

    #@2
    monitor-enter v2

    #@3
    .line 156
    :try_start_0
    iget-boolean v1, p0, Landroid/os/UpdateLock;->mHeld:Z

    #@5
    if-eqz v1, :cond_0

    #@7
    .line 157
    const-string/jumbo v1, "UpdateLock"

    #@a
    const-string/jumbo v3, "UpdateLock finalized while still held"

    #@d
    invoke-static {v1, v3}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    .line 159
    :try_start_1
    sget-object v1, Landroid/os/UpdateLock;->sService:Landroid/os/IUpdateLock;

    #@12
    iget-object v3, p0, Landroid/os/UpdateLock;->mToken:Landroid/os/IBinder;

    #@14
    invoke-interface {v1, v3}, Landroid/os/IUpdateLock;->releaseUpdateLock(Landroid/os/IBinder;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@17
    :cond_0
    :goto_0
    monitor-exit v2

    #@18
    .line 153
    return-void

    #@19
    .line 160
    :catch_0
    move-exception v0

    #@1a
    .line 161
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string/jumbo v1, "UpdateLock"

    #@1d
    const-string/jumbo v3, "Unable to contact service to release"

    #@20
    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@23
    goto :goto_0

    #@24
    .line 154
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    #@25
    monitor-exit v2

    #@26
    throw v1
.end method

.method public isHeld()Z
    .locals 2

    #@0
    .prologue
    .line 94
    iget-object v0, p0, Landroid/os/UpdateLock;->mToken:Landroid/os/IBinder;

    #@2
    monitor-enter v0

    #@3
    .line 95
    :try_start_0
    iget-boolean v1, p0, Landroid/os/UpdateLock;->mHeld:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    monitor-exit v0

    #@6
    return v1

    #@7
    .line 94
    :catchall_0
    move-exception v1

    #@8
    monitor-exit v0

    #@9
    throw v1
.end method

.method public release()V
    .locals 2

    #@0
    .prologue
    .line 130
    invoke-static {}, Landroid/os/UpdateLock;->checkService()V

    #@3
    .line 131
    iget-object v0, p0, Landroid/os/UpdateLock;->mToken:Landroid/os/IBinder;

    #@5
    monitor-enter v0

    #@6
    .line 132
    :try_start_0
    invoke-direct {p0}, Landroid/os/UpdateLock;->releaseLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    monitor-exit v0

    #@a
    .line 128
    return-void

    #@b
    .line 131
    :catchall_0
    move-exception v1

    #@c
    monitor-exit v0

    #@d
    throw v1
.end method

.method public setReferenceCounted(Z)V
    .locals 0
    .param p1, "isRefCounted"    # Z

    #@0
    .prologue
    .line 87
    iput-boolean p1, p0, Landroid/os/UpdateLock;->mRefCounted:Z

    #@2
    .line 83
    return-void
.end method

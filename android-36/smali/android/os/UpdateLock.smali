.class public Landroid/os/UpdateLock;
.super Ljava/lang/Object;
.source "UpdateLock.java"


# static fields
.field private static final greylist-max-o DEBUG:Z = false

.field public static final greylist-max-r NOW_IS_CONVENIENT:Ljava/lang/String; = "nowisconvenient"

.field private static final greylist-max-o TAG:Ljava/lang/String; = "UpdateLock"

.field public static final greylist-max-r TIMESTAMP:Ljava/lang/String; = "timestamp"

.field public static final greylist-max-r UPDATE_LOCK_CHANGED:Ljava/lang/String; = "android.os.UpdateLock.UPDATE_LOCK_CHANGED"

.field private static greylist-max-o sService:Landroid/os/IUpdateLock;


# instance fields
.field greylist-max-o mCount:I

.field greylist-max-o mHeld:Z

.field greylist-max-o mRefCounted:Z

.field final greylist-max-o mTag:Ljava/lang/String;

.field greylist-max-o mToken:Landroid/os/IBinder;


# direct methods
.method public constructor greylist-max-o <init>(Ljava/lang/String;)V
    .registers 4
    .param p1, "tag"    # Ljava/lang/String;

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput v0, p0, Landroid/os/UpdateLock;->mCount:I

    .line 44
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/os/UpdateLock;->mRefCounted:Z

    .line 45
    iput-boolean v0, p0, Landroid/os/UpdateLock;->mHeld:Z

    .line 80
    iput-object p1, p0, Landroid/os/UpdateLock;->mTag:Ljava/lang/String;

    .line 81
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Landroid/os/UpdateLock;->mToken:Landroid/os/IBinder;

    .line 82
    return-void
.end method

.method private greylist-max-o acquireLocked()V
    .registers 4

    .line 119
    iget-boolean v0, p0, Landroid/os/UpdateLock;->mRefCounted:Z

    if-eqz v0, :cond_c

    iget v0, p0, Landroid/os/UpdateLock;->mCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroid/os/UpdateLock;->mCount:I

    if-nez v0, :cond_25

    .line 120
    :cond_c
    sget-object v0, Landroid/os/UpdateLock;->sService:Landroid/os/IUpdateLock;

    if-eqz v0, :cond_22

    .line 122
    :try_start_10
    sget-object v0, Landroid/os/UpdateLock;->sService:Landroid/os/IUpdateLock;

    iget-object v1, p0, Landroid/os/UpdateLock;->mToken:Landroid/os/IBinder;

    iget-object v2, p0, Landroid/os/UpdateLock;->mTag:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/os/IUpdateLock;->acquireUpdateLock(Landroid/os/IBinder;Ljava/lang/String;)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_19} :catch_1a

    .line 125
    goto :goto_22

    .line 123
    :catch_1a
    move-exception v0

    .line 124
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "UpdateLock"

    const-string v2, "Unable to contact service to acquire"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_22
    :goto_22
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/os/UpdateLock;->mHeld:Z

    .line 129
    :cond_25
    return-void
.end method

.method private static greylist-max-o checkService()V
    .registers 1

    .line 36
    sget-object v0, Landroid/os/UpdateLock;->sService:Landroid/os/IUpdateLock;

    if-nez v0, :cond_12

    .line 37
    nop

    .line 38
    const-string/jumbo v0, "updatelock"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 37
    invoke-static {v0}, Landroid/os/IUpdateLock$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IUpdateLock;

    move-result-object v0

    sput-object v0, Landroid/os/UpdateLock;->sService:Landroid/os/IUpdateLock;

    .line 40
    :cond_12
    return-void
.end method

.method private greylist-max-o releaseLocked()V
    .registers 4

    .line 144
    iget-boolean v0, p0, Landroid/os/UpdateLock;->mRefCounted:Z

    if-eqz v0, :cond_c

    iget v0, p0, Landroid/os/UpdateLock;->mCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/os/UpdateLock;->mCount:I

    if-nez v0, :cond_23

    .line 145
    :cond_c
    sget-object v0, Landroid/os/UpdateLock;->sService:Landroid/os/IUpdateLock;

    if-eqz v0, :cond_20

    .line 147
    :try_start_10
    sget-object v0, Landroid/os/UpdateLock;->sService:Landroid/os/IUpdateLock;

    iget-object v1, p0, Landroid/os/UpdateLock;->mToken:Landroid/os/IBinder;

    invoke-interface {v0, v1}, Landroid/os/IUpdateLock;->releaseUpdateLock(Landroid/os/IBinder;)V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_17} :catch_18

    .line 150
    goto :goto_20

    .line 148
    :catch_18
    move-exception v0

    .line 149
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "UpdateLock"

    const-string v2, "Unable to contact service to release"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_20
    :goto_20
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/os/UpdateLock;->mHeld:Z

    .line 154
    :cond_23
    iget v0, p0, Landroid/os/UpdateLock;->mCount:I

    if-ltz v0, :cond_28

    .line 157
    return-void

    .line 155
    :cond_28
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "UpdateLock under-locked"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public greylist-max-r acquire()V
    .registers 3

    .line 112
    invoke-static {}, Landroid/os/UpdateLock;->checkService()V

    .line 113
    iget-object v0, p0, Landroid/os/UpdateLock;->mToken:Landroid/os/IBinder;

    monitor-enter v0

    .line 114
    :try_start_6
    invoke-direct {p0}, Landroid/os/UpdateLock;->acquireLocked()V

    .line 115
    monitor-exit v0

    .line 116
    return-void

    .line 115
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_6 .. :try_end_d} :catchall_b

    throw v1
.end method

.method protected whitelist test-api finalize()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 161
    iget-object v0, p0, Landroid/os/UpdateLock;->mToken:Landroid/os/IBinder;

    monitor-enter v0

    .line 163
    :try_start_3
    iget-boolean v1, p0, Landroid/os/UpdateLock;->mHeld:Z

    if-eqz v1, :cond_1e

    .line 164
    const-string v1, "UpdateLock"

    const-string v2, "UpdateLock finalized while still held"

    invoke-static {v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_20

    .line 166
    :try_start_e
    sget-object v1, Landroid/os/UpdateLock;->sService:Landroid/os/IUpdateLock;

    iget-object v2, p0, Landroid/os/UpdateLock;->mToken:Landroid/os/IBinder;

    invoke-interface {v1, v2}, Landroid/os/IUpdateLock;->releaseUpdateLock(Landroid/os/IBinder;)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_15} :catch_16
    .catchall {:try_start_e .. :try_end_15} :catchall_20

    .line 169
    goto :goto_1e

    .line 167
    :catch_16
    move-exception v1

    .line 168
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_17
    const-string v2, "UpdateLock"

    const-string v3, "Unable to contact service to release"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_1e
    :goto_1e
    monitor-exit v0

    .line 172
    return-void

    .line 171
    :catchall_20
    move-exception v1

    monitor-exit v0
    :try_end_22
    .catchall {:try_start_17 .. :try_end_22} :catchall_20

    throw v1
.end method

.method public greylist-max-r isHeld()Z
    .registers 3

    .line 99
    iget-object v0, p0, Landroid/os/UpdateLock;->mToken:Landroid/os/IBinder;

    monitor-enter v0

    .line 100
    :try_start_3
    iget-boolean v1, p0, Landroid/os/UpdateLock;->mHeld:Z

    monitor-exit v0

    return v1

    .line 101
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public greylist-max-r release()V
    .registers 3

    .line 137
    invoke-static {}, Landroid/os/UpdateLock;->checkService()V

    .line 138
    iget-object v0, p0, Landroid/os/UpdateLock;->mToken:Landroid/os/IBinder;

    monitor-enter v0

    .line 139
    :try_start_6
    invoke-direct {p0}, Landroid/os/UpdateLock;->releaseLocked()V

    .line 140
    monitor-exit v0

    .line 141
    return-void

    .line 140
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_6 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public greylist-max-o setReferenceCounted(Z)V
    .registers 2
    .param p1, "isRefCounted"    # Z

    .line 91
    iput-boolean p1, p0, Landroid/os/UpdateLock;->mRefCounted:Z

    .line 92
    return-void
.end method

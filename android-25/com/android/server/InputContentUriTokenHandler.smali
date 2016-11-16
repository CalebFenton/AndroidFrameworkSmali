.class final Lcom/android/server/InputContentUriTokenHandler;
.super Lcom/android/internal/inputmethod/IInputContentUriToken$Stub;
.source "InputContentUriTokenHandler.java"


# instance fields
.field private final mLock:Ljava/lang/Object;

.field private mPermissionOwnerToken:Landroid/os/IBinder;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mSourceUid:I

.field private final mSourceUserId:I

.field private final mTargetPackage:Ljava/lang/String;

.field private final mTargetUserId:I

.field private final mUri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Landroid/net/Uri;ILjava/lang/String;II)V
    .locals 1
    .param p1, "contentUri"    # Landroid/net/Uri;
    .param p2, "sourceUid"    # I
    .param p3, "targetPackage"    # Ljava/lang/String;
    .param p4, "sourceUserId"    # I
    .param p5, "targetUserId"    # I

    #@0
    .prologue
    .line 48
    invoke-direct {p0}, Lcom/android/internal/inputmethod/IInputContentUriToken$Stub;-><init>()V

    #@3
    .line 43
    new-instance v0, Ljava/lang/Object;

    #@5
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@8
    iput-object v0, p0, Lcom/android/server/InputContentUriTokenHandler;->mLock:Ljava/lang/Object;

    #@a
    .line 46
    const/4 v0, 0x0

    #@b
    iput-object v0, p0, Lcom/android/server/InputContentUriTokenHandler;->mPermissionOwnerToken:Landroid/os/IBinder;

    #@d
    .line 51
    iput-object p1, p0, Lcom/android/server/InputContentUriTokenHandler;->mUri:Landroid/net/Uri;

    #@f
    .line 52
    iput p2, p0, Lcom/android/server/InputContentUriTokenHandler;->mSourceUid:I

    #@11
    .line 53
    iput-object p3, p0, Lcom/android/server/InputContentUriTokenHandler;->mTargetPackage:Ljava/lang/String;

    #@13
    .line 54
    iput p4, p0, Lcom/android/server/InputContentUriTokenHandler;->mSourceUserId:I

    #@15
    .line 55
    iput p5, p0, Lcom/android/server/InputContentUriTokenHandler;->mTargetUserId:I

    #@17
    .line 50
    return-void
.end method

.method private doTakeLocked(Landroid/os/IBinder;)V
    .locals 12
    .param p1, "permissionOwner"    # Landroid/os/IBinder;

    #@0
    .prologue
    .line 78
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@3
    move-result-wide v10

    #@4
    .line 81
    .local v10, "origId":J
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@7
    move-result-object v0

    #@8
    .line 82
    iget v2, p0, Lcom/android/server/InputContentUriTokenHandler;->mSourceUid:I

    #@a
    iget-object v3, p0, Lcom/android/server/InputContentUriTokenHandler;->mTargetPackage:Ljava/lang/String;

    #@c
    iget-object v4, p0, Lcom/android/server/InputContentUriTokenHandler;->mUri:Landroid/net/Uri;

    #@e
    .line 83
    iget v6, p0, Lcom/android/server/InputContentUriTokenHandler;->mSourceUserId:I

    #@10
    iget v7, p0, Lcom/android/server/InputContentUriTokenHandler;->mTargetUserId:I

    #@12
    const/4 v5, 0x1

    #@13
    move-object v1, p1

    #@14
    .line 81
    invoke-interface/range {v0 .. v7}, Landroid/app/IActivityManager;->grantUriPermissionFromOwner(Landroid/os/IBinder;ILjava/lang/String;Landroid/net/Uri;III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@17
    .line 88
    :goto_0
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@1a
    .line 77
    return-void

    #@1b
    .line 84
    :catch_0
    move-exception v8

    #@1c
    .line 85
    .local v8, "e":Landroid/os/RemoteException;
    :try_start_1
    invoke-virtual {v8}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1f
    goto :goto_0

    #@20
    .line 87
    .end local v8    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v0

    #@21
    .line 88
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@24
    .line 87
    throw v0
.end method


# virtual methods
.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    #@0
    .prologue
    .line 116
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/InputContentUriTokenHandler;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    .line 118
    invoke-super {p0}, Lcom/android/internal/inputmethod/IInputContentUriToken$Stub;->finalize()V

    #@6
    .line 114
    return-void

    #@7
    .line 117
    :catchall_0
    move-exception v0

    #@8
    .line 118
    invoke-super {p0}, Lcom/android/internal/inputmethod/IInputContentUriToken$Stub;->finalize()V

    #@b
    .line 117
    throw v0
.end method

.method public release()V
    .locals 7

    #@0
    .prologue
    .line 94
    iget-object v2, p0, Lcom/android/server/InputContentUriTokenHandler;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 95
    :try_start_0
    iget-object v1, p0, Lcom/android/server/InputContentUriTokenHandler;->mPermissionOwnerToken:Landroid/os/IBinder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    if-nez v1, :cond_0

    #@7
    monitor-exit v2

    #@8
    .line 96
    return-void

    #@9
    .line 99
    :cond_0
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@c
    move-result-object v1

    #@d
    .line 100
    iget-object v3, p0, Lcom/android/server/InputContentUriTokenHandler;->mPermissionOwnerToken:Landroid/os/IBinder;

    #@f
    iget-object v4, p0, Lcom/android/server/InputContentUriTokenHandler;->mUri:Landroid/net/Uri;

    #@11
    .line 101
    iget v5, p0, Lcom/android/server/InputContentUriTokenHandler;->mSourceUserId:I

    #@13
    const/4 v6, 0x1

    #@14
    .line 99
    invoke-interface {v1, v3, v4, v6, v5}, Landroid/app/IActivityManager;->revokeUriPermissionFromOwner(Landroid/os/IBinder;Landroid/net/Uri;II)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@17
    .line 105
    const/4 v1, 0x0

    #@18
    :try_start_2
    iput-object v1, p0, Lcom/android/server/InputContentUriTokenHandler;->mPermissionOwnerToken:Landroid/os/IBinder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@1a
    :goto_0
    monitor-exit v2

    #@1b
    .line 93
    return-void

    #@1c
    .line 102
    :catch_0
    move-exception v0

    #@1d
    .line 103
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_3
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@20
    .line 105
    const/4 v1, 0x0

    #@21
    :try_start_4
    iput-object v1, p0, Lcom/android/server/InputContentUriTokenHandler;->mPermissionOwnerToken:Landroid/os/IBinder;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@23
    goto :goto_0

    #@24
    .line 94
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    #@25
    monitor-exit v2

    #@26
    throw v1

    #@27
    .line 104
    :catchall_1
    move-exception v1

    #@28
    .line 105
    const/4 v3, 0x0

    #@29
    :try_start_5
    iput-object v3, p0, Lcom/android/server/InputContentUriTokenHandler;->mPermissionOwnerToken:Landroid/os/IBinder;

    #@2b
    .line 104
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method public take()V
    .locals 4

    #@0
    .prologue
    .line 60
    iget-object v2, p0, Lcom/android/server/InputContentUriTokenHandler;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 61
    :try_start_0
    iget-object v1, p0, Lcom/android/server/InputContentUriTokenHandler;->mPermissionOwnerToken:Landroid/os/IBinder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    if-eqz v1, :cond_0

    #@7
    monitor-exit v2

    #@8
    .line 63
    return-void

    #@9
    .line 67
    :cond_0
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@c
    move-result-object v1

    #@d
    .line 68
    const-string/jumbo v3, "InputContentUriTokenHandler"

    #@10
    .line 67
    invoke-interface {v1, v3}, Landroid/app/IActivityManager;->newUriPermissionOwner(Ljava/lang/String;)Landroid/os/IBinder;

    #@13
    move-result-object v1

    #@14
    iput-object v1, p0, Lcom/android/server/InputContentUriTokenHandler;->mPermissionOwnerToken:Landroid/os/IBinder;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@16
    .line 73
    :goto_0
    :try_start_2
    iget-object v1, p0, Lcom/android/server/InputContentUriTokenHandler;->mPermissionOwnerToken:Landroid/os/IBinder;

    #@18
    invoke-direct {p0, v1}, Lcom/android/server/InputContentUriTokenHandler;->doTakeLocked(Landroid/os/IBinder;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@1b
    monitor-exit v2

    #@1c
    .line 59
    return-void

    #@1d
    .line 69
    :catch_0
    move-exception v0

    #@1e
    .line 70
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_3
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@21
    goto :goto_0

    #@22
    .line 60
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    #@23
    monitor-exit v2

    #@24
    throw v1
.end method

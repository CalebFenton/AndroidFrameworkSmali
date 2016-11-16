.class public Lcom/android/server/UpdateLockService;
.super Landroid/os/IUpdateLock$Stub;
.source "UpdateLockService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/UpdateLockService$LockWatcher;
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field static final PERMISSION:Ljava/lang/String; = "android.permission.UPDATE_LOCK"

.field static final TAG:Ljava/lang/String; = "UpdateLockService"


# instance fields
.field mContext:Landroid/content/Context;

.field mLocks:Lcom/android/server/UpdateLockService$LockWatcher;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 64
    invoke-direct {p0}, Landroid/os/IUpdateLock$Stub;-><init>()V

    #@3
    .line 65
    iput-object p1, p0, Lcom/android/server/UpdateLockService;->mContext:Landroid/content/Context;

    #@5
    .line 66
    new-instance v0, Lcom/android/server/UpdateLockService$LockWatcher;

    #@7
    new-instance v1, Landroid/os/Handler;

    #@9
    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    #@c
    const-string/jumbo v2, "UpdateLocks"

    #@f
    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/UpdateLockService$LockWatcher;-><init>(Lcom/android/server/UpdateLockService;Landroid/os/Handler;Ljava/lang/String;)V

    #@12
    iput-object v0, p0, Lcom/android/server/UpdateLockService;->mLocks:Lcom/android/server/UpdateLockService$LockWatcher;

    #@14
    .line 70
    const/4 v0, 0x1

    #@15
    invoke-virtual {p0, v0}, Lcom/android/server/UpdateLockService;->sendLockChangedBroadcast(Z)V

    #@18
    .line 64
    return-void
.end method

.method private makeTag(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;

    #@0
    .prologue
    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "{tag="

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v0

    #@10
    .line 109
    const-string/jumbo v1, " uid="

    #@13
    .line 108
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v0

    #@17
    .line 109
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@1a
    move-result v1

    #@1b
    .line 108
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    .line 110
    const-string/jumbo v1, " pid="

    #@22
    .line 108
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v0

    #@26
    .line 110
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@29
    move-result v1

    #@2a
    .line 108
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v0

    #@2e
    .line 110
    const/16 v1, 0x7d

    #@30
    .line 108
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@33
    move-result-object v0

    #@34
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@37
    move-result-object v0

    #@38
    return-object v0
.end method


# virtual methods
.method public acquireUpdateLock(Landroid/os/IBinder;Ljava/lang/String;)V
    .locals 3
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/server/UpdateLockService;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v1, "android.permission.UPDATE_LOCK"

    #@5
    const-string/jumbo v2, "acquireUpdateLock"

    #@8
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 94
    iget-object v0, p0, Lcom/android/server/UpdateLockService;->mLocks:Lcom/android/server/UpdateLockService$LockWatcher;

    #@d
    invoke-direct {p0, p2}, Lcom/android/server/UpdateLockService;->makeTag(Ljava/lang/String;)Ljava/lang/String;

    #@10
    move-result-object v1

    #@11
    invoke-virtual {v0, p1, v1}, Lcom/android/server/UpdateLockService$LockWatcher;->acquire(Landroid/os/IBinder;Ljava/lang/String;)V

    #@14
    .line 88
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/server/UpdateLockService;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v1, "android.permission.DUMP"

    #@5
    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    #@8
    move-result v0

    #@9
    if-eqz v0, :cond_0

    #@b
    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string/jumbo v1, "Permission Denial: can\'t dump update lock service from from pid="

    #@13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v0

    #@17
    .line 118
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@1a
    move-result v1

    #@1b
    .line 117
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    .line 119
    const-string/jumbo v1, ", uid="

    #@22
    .line 117
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v0

    #@26
    .line 119
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@29
    move-result v1

    #@2a
    .line 117
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v0

    #@2e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@31
    move-result-object v0

    #@32
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@35
    .line 120
    return-void

    #@36
    .line 123
    :cond_0
    iget-object v0, p0, Lcom/android/server/UpdateLockService;->mLocks:Lcom/android/server/UpdateLockService$LockWatcher;

    #@38
    invoke-virtual {v0, p2}, Lcom/android/server/UpdateLockService$LockWatcher;->dump(Ljava/io/PrintWriter;)V

    #@3b
    .line 114
    return-void
.end method

.method public releaseUpdateLock(Landroid/os/IBinder;)V
    .locals 3
    .param p1, "token"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/server/UpdateLockService;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v1, "android.permission.UPDATE_LOCK"

    #@5
    const-string/jumbo v2, "releaseUpdateLock"

    #@8
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 104
    iget-object v0, p0, Lcom/android/server/UpdateLockService;->mLocks:Lcom/android/server/UpdateLockService$LockWatcher;

    #@d
    invoke-virtual {v0, p1}, Lcom/android/server/UpdateLockService$LockWatcher;->release(Landroid/os/IBinder;)V

    #@10
    .line 98
    return-void
.end method

.method sendLockChangedBroadcast(Z)V
    .locals 8
    .param p1, "state"    # Z

    #@0
    .prologue
    .line 75
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@3
    move-result-wide v2

    #@4
    .line 77
    .local v2, "oldIdent":J
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    #@6
    const-string/jumbo v4, "android.os.UpdateLock.UPDATE_LOCK_CHANGED"

    #@9
    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@c
    .line 78
    const-string/jumbo v4, "nowisconvenient"

    #@f
    .line 77
    invoke-virtual {v1, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    #@12
    move-result-object v1

    #@13
    .line 79
    const-string/jumbo v4, "timestamp"

    #@16
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@19
    move-result-wide v6

    #@1a
    .line 77
    invoke-virtual {v1, v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    #@1d
    move-result-object v1

    #@1e
    .line 80
    const/high16 v4, 0x4000000

    #@20
    .line 77
    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@23
    move-result-object v0

    #@24
    .line 81
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/server/UpdateLockService;->mContext:Landroid/content/Context;

    #@26
    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    #@28
    invoke-virtual {v1, v0, v4}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2b
    .line 83
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@2e
    .line 73
    return-void

    #@2f
    .line 82
    .end local v0    # "intent":Landroid/content/Intent;
    :catchall_0
    move-exception v1

    #@30
    .line 83
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@33
    .line 82
    throw v1
.end method

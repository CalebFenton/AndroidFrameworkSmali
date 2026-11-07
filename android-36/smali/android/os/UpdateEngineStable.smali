.class public Landroid/os/UpdateEngineStable;
.super Ljava/lang/Object;
.source "UpdateEngineStable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/UpdateEngineStable$ErrorCode;
    }
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "UpdateEngineStable"

.field private static final blacklist UPDATE_ENGINE_STABLE_SERVICE:Ljava/lang/String; = "android.os.UpdateEngineStableService"


# instance fields
.field private final blacklist mUpdateEngineStable:Landroid/os/IUpdateEngineStable;

.field private blacklist mUpdateEngineStableCallback:Landroid/os/IUpdateEngineStableCallback;

.field private final blacklist mUpdateEngineStableCallbackLock:Ljava/lang/Object;


# direct methods
.method public constructor blacklist <init>()V
    .registers 3

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/UpdateEngineStable;->mUpdateEngineStableCallback:Landroid/os/IUpdateEngineStableCallback;

    .line 74
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/os/UpdateEngineStable;->mUpdateEngineStableCallbackLock:Ljava/lang/Object;

    .line 82
    nop

    .line 84
    const-string v0, "android.os.UpdateEngineStableService"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 83
    invoke-static {v0}, Landroid/os/IUpdateEngineStable$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IUpdateEngineStable;

    move-result-object v0

    iput-object v0, p0, Landroid/os/UpdateEngineStable;->mUpdateEngineStable:Landroid/os/IUpdateEngineStable;

    .line 85
    iget-object v0, p0, Landroid/os/UpdateEngineStable;->mUpdateEngineStable:Landroid/os/IUpdateEngineStable;

    if-eqz v0, :cond_1f

    .line 88
    return-void

    .line 86
    :cond_1f
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Failed to find android.os.UpdateEngineStableService"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public blacklist applyPayloadFd(Landroid/os/ParcelFileDescriptor;JJ[Ljava/lang/String;)V
    .registers 14
    .param p1, "fd"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "offset"    # J
    .param p4, "size"    # J
    .param p6, "headerKeyValuePairs"    # [Ljava/lang/String;

    .line 167
    :try_start_0
    iget-object v0, p0, Landroid/os/UpdateEngineStable;->mUpdateEngineStable:Landroid/os/IUpdateEngineStable;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_2} :catch_e

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move-object v6, p6

    .end local p1    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local p2    # "offset":J
    .end local p4    # "size":J
    .end local p6    # "headerKeyValuePairs":[Ljava/lang/String;
    .local v1, "fd":Landroid/os/ParcelFileDescriptor;
    .local v2, "offset":J
    .local v4, "size":J
    .local v6, "headerKeyValuePairs":[Ljava/lang/String;
    :try_start_6
    invoke-interface/range {v0 .. v6}, Landroid/os/IUpdateEngineStable;->applyPayloadFd(Landroid/os/ParcelFileDescriptor;JJ[Ljava/lang/String;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_9} :catch_b

    .line 170
    nop

    .line 171
    return-void

    .line 168
    :catch_b
    move-exception v0

    move-object p1, v0

    goto :goto_14

    .end local v1    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v2    # "offset":J
    .end local v4    # "size":J
    .end local v6    # "headerKeyValuePairs":[Ljava/lang/String;
    .restart local p1    # "fd":Landroid/os/ParcelFileDescriptor;
    .restart local p2    # "offset":J
    .restart local p4    # "size":J
    .restart local p6    # "headerKeyValuePairs":[Ljava/lang/String;
    :catch_e
    move-exception v0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move-object v6, p6

    move-object p1, v0

    .line 169
    .end local p2    # "offset":J
    .end local p4    # "size":J
    .end local p6    # "headerKeyValuePairs":[Ljava/lang/String;
    .restart local v1    # "fd":Landroid/os/ParcelFileDescriptor;
    .restart local v2    # "offset":J
    .restart local v4    # "size":J
    .restart local v6    # "headerKeyValuePairs":[Ljava/lang/String;
    .local p1, "e":Landroid/os/RemoteException;
    :goto_14
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p2

    throw p2
.end method

.method public blacklist bind(Landroid/os/UpdateEngineStableCallback;)Z
    .registers 3
    .param p1, "callback"    # Landroid/os/UpdateEngineStableCallback;

    .line 156
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/os/UpdateEngineStable;->bind(Landroid/os/UpdateEngineStableCallback;Landroid/os/Handler;)Z

    move-result v0

    return v0
.end method

.method public blacklist bind(Landroid/os/UpdateEngineStableCallback;Landroid/os/Handler;)Z
    .registers 6
    .param p1, "callback"    # Landroid/os/UpdateEngineStableCallback;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 98
    iget-object v0, p0, Landroid/os/UpdateEngineStable;->mUpdateEngineStableCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 99
    :try_start_3
    new-instance v1, Landroid/os/UpdateEngineStable$1;

    invoke-direct {v1, p0, p2, p1}, Landroid/os/UpdateEngineStable$1;-><init>(Landroid/os/UpdateEngineStable;Landroid/os/Handler;Landroid/os/UpdateEngineStableCallback;)V

    iput-object v1, p0, Landroid/os/UpdateEngineStable;->mUpdateEngineStableCallback:Landroid/os/IUpdateEngineStableCallback;
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_1a

    .line 143
    :try_start_a
    iget-object v1, p0, Landroid/os/UpdateEngineStable;->mUpdateEngineStable:Landroid/os/IUpdateEngineStable;

    iget-object v2, p0, Landroid/os/UpdateEngineStable;->mUpdateEngineStableCallback:Landroid/os/IUpdateEngineStableCallback;

    invoke-interface {v1, v2}, Landroid/os/IUpdateEngineStable;->bind(Landroid/os/IUpdateEngineStableCallback;)Z

    move-result v1
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_12} :catch_14
    .catchall {:try_start_a .. :try_end_12} :catchall_1a

    :try_start_12
    monitor-exit v0

    return v1

    .line 144
    :catch_14
    move-exception v1

    .line 145
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    .end local p0    # "this":Landroid/os/UpdateEngineStable;
    .end local p1    # "callback":Landroid/os/UpdateEngineStableCallback;
    .end local p2    # "handler":Landroid/os/Handler;
    throw v2

    .line 147
    .end local v1    # "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/os/UpdateEngineStable;
    .restart local p1    # "callback":Landroid/os/UpdateEngineStableCallback;
    .restart local p2    # "handler":Landroid/os/Handler;
    :catchall_1a
    move-exception v1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_12 .. :try_end_1c} :catchall_1a

    throw v1
.end method

.method public blacklist unbind()Z
    .registers 4

    .line 179
    iget-object v0, p0, Landroid/os/UpdateEngineStable;->mUpdateEngineStableCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 180
    :try_start_3
    iget-object v1, p0, Landroid/os/UpdateEngineStable;->mUpdateEngineStableCallback:Landroid/os/IUpdateEngineStableCallback;

    if-nez v1, :cond_a

    .line 181
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_1d

    const/4 v0, 0x1

    return v0

    .line 184
    :cond_a
    :try_start_a
    iget-object v1, p0, Landroid/os/UpdateEngineStable;->mUpdateEngineStable:Landroid/os/IUpdateEngineStable;

    iget-object v2, p0, Landroid/os/UpdateEngineStable;->mUpdateEngineStableCallback:Landroid/os/IUpdateEngineStableCallback;

    invoke-interface {v1, v2}, Landroid/os/IUpdateEngineStable;->unbind(Landroid/os/IUpdateEngineStableCallback;)Z

    move-result v1

    .line 185
    .local v1, "result":Z
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/os/UpdateEngineStable;->mUpdateEngineStableCallback:Landroid/os/IUpdateEngineStableCallback;
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_15} :catch_17
    .catchall {:try_start_a .. :try_end_15} :catchall_1d

    .line 186
    :try_start_15
    monitor-exit v0

    return v1

    .line 187
    .end local v1    # "result":Z
    :catch_17
    move-exception v1

    .line 188
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    .end local p0    # "this":Landroid/os/UpdateEngineStable;
    throw v2

    .line 190
    .end local v1    # "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/os/UpdateEngineStable;
    :catchall_1d
    move-exception v1

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_15 .. :try_end_1f} :catchall_1d

    throw v1
.end method

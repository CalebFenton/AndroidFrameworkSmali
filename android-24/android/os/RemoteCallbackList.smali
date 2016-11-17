.class public Landroid/os/RemoteCallbackList;
.super Ljava/lang/Object;
.source "RemoteCallbackList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/RemoteCallbackList$Callback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E::",
        "Landroid/os/IInterface;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mActiveBroadcast:[Ljava/lang/Object;

.field private mBroadcastCount:I

.field mCallbacks:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/os/IBinder;",
            "Landroid/os/RemoteCallbackList",
            "<TE;>.Callback;>;"
        }
    .end annotation
.end field

.field private mKilled:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 49
    .local p0, "this":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 51
    new-instance v0, Landroid/util/ArrayMap;

    #@5
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    #@8
    .line 50
    iput-object v0, p0, Landroid/os/RemoteCallbackList;->mCallbacks:Landroid/util/ArrayMap;

    #@a
    .line 53
    const/4 v0, -0x1

    #@b
    iput v0, p0, Landroid/os/RemoteCallbackList;->mBroadcastCount:I

    #@d
    .line 54
    const/4 v0, 0x0

    #@e
    iput-boolean v0, p0, Landroid/os/RemoteCallbackList;->mKilled:Z

    #@10
    .line 49
    return-void
.end method


# virtual methods
.method public beginBroadcast()I
    .locals 6

    #@0
    .prologue
    .local p0, "this":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<TE;>;"
    const/4 v5, 0x0

    #@1
    .line 227
    iget-object v4, p0, Landroid/os/RemoteCallbackList;->mCallbacks:Landroid/util/ArrayMap;

    #@3
    monitor-enter v4

    #@4
    .line 228
    :try_start_0
    iget v3, p0, Landroid/os/RemoteCallbackList;->mBroadcastCount:I

    #@6
    if-lez v3, :cond_0

    #@8
    .line 229
    new-instance v3, Ljava/lang/IllegalStateException;

    #@a
    .line 230
    const-string/jumbo v5, "beginBroadcast() called while already in a broadcast"

    #@d
    .line 229
    invoke-direct {v3, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@10
    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@11
    .line 227
    :catchall_0
    move-exception v3

    #@12
    monitor-exit v4

    #@13
    throw v3

    #@14
    .line 233
    :cond_0
    :try_start_1
    iget-object v3, p0, Landroid/os/RemoteCallbackList;->mCallbacks:Landroid/util/ArrayMap;

    #@16
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    #@19
    move-result v0

    #@1a
    iput v0, p0, Landroid/os/RemoteCallbackList;->mBroadcastCount:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1c
    .line 234
    .local v0, "N":I
    if-gtz v0, :cond_1

    #@1e
    monitor-exit v4

    #@1f
    .line 235
    return v5

    #@20
    .line 237
    :cond_1
    :try_start_2
    iget-object v1, p0, Landroid/os/RemoteCallbackList;->mActiveBroadcast:[Ljava/lang/Object;

    #@22
    .line 238
    .local v1, "active":[Ljava/lang/Object;
    if-eqz v1, :cond_2

    #@24
    array-length v3, v1

    #@25
    if-ge v3, v0, :cond_3

    #@27
    .line 239
    :cond_2
    new-array v1, v0, [Ljava/lang/Object;

    #@29
    iput-object v1, p0, Landroid/os/RemoteCallbackList;->mActiveBroadcast:[Ljava/lang/Object;

    #@2b
    .line 241
    :cond_3
    const/4 v2, 0x0

    #@2c
    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_4

    #@2e
    .line 242
    iget-object v3, p0, Landroid/os/RemoteCallbackList;->mCallbacks:Landroid/util/ArrayMap;

    #@30
    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@33
    move-result-object v3

    #@34
    aput-object v3, v1, v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@36
    .line 241
    add-int/lit8 v2, v2, 0x1

    #@38
    goto :goto_0

    #@39
    :cond_4
    monitor-exit v4

    #@3a
    .line 244
    return v0
.end method

.method public finishBroadcast()V
    .locals 5

    #@0
    .prologue
    .local p0, "this":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<TE;>;"
    const/4 v4, 0x0

    #@1
    .line 291
    iget v3, p0, Landroid/os/RemoteCallbackList;->mBroadcastCount:I

    #@3
    if-gez v3, :cond_0

    #@5
    .line 292
    new-instance v3, Ljava/lang/IllegalStateException;

    #@7
    .line 293
    const-string/jumbo v4, "finishBroadcast() called outside of a broadcast"

    #@a
    .line 292
    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@d
    throw v3

    #@e
    .line 296
    :cond_0
    iget-object v1, p0, Landroid/os/RemoteCallbackList;->mActiveBroadcast:[Ljava/lang/Object;

    #@10
    .line 297
    .local v1, "active":[Ljava/lang/Object;
    if-eqz v1, :cond_1

    #@12
    .line 298
    iget v0, p0, Landroid/os/RemoteCallbackList;->mBroadcastCount:I

    #@14
    .line 299
    .local v0, "N":I
    const/4 v2, 0x0

    #@15
    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    #@17
    .line 300
    aput-object v4, v1, v2

    #@19
    .line 299
    add-int/lit8 v2, v2, 0x1

    #@1b
    goto :goto_0

    #@1c
    .line 304
    .end local v0    # "N":I
    .end local v2    # "i":I
    :cond_1
    const/4 v3, -0x1

    #@1d
    iput v3, p0, Landroid/os/RemoteCallbackList;->mBroadcastCount:I

    #@1f
    .line 290
    return-void
.end method

.method public getBroadcastCookie(I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I

    #@0
    .prologue
    .line 280
    .local p0, "this":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<TE;>;"
    iget-object v0, p0, Landroid/os/RemoteCallbackList;->mActiveBroadcast:[Ljava/lang/Object;

    #@2
    aget-object v0, v0, p1

    #@4
    check-cast v0, Landroid/os/RemoteCallbackList$Callback;

    #@6
    iget-object v0, v0, Landroid/os/RemoteCallbackList$Callback;->mCookie:Ljava/lang/Object;

    #@8
    return-object v0
.end method

.method public getBroadcastItem(I)Landroid/os/IInterface;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    #@0
    .prologue
    .line 270
    .local p0, "this":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<TE;>;"
    iget-object v0, p0, Landroid/os/RemoteCallbackList;->mActiveBroadcast:[Ljava/lang/Object;

    #@2
    aget-object v0, v0, p1

    #@4
    check-cast v0, Landroid/os/RemoteCallbackList$Callback;

    #@6
    iget-object v0, v0, Landroid/os/RemoteCallbackList$Callback;->mCallback:Landroid/os/IInterface;

    #@8
    return-object v0
.end method

.method public getRegisteredCallbackCount()I
    .locals 2

    #@0
    .prologue
    .line 320
    .local p0, "this":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<TE;>;"
    iget-object v1, p0, Landroid/os/RemoteCallbackList;->mCallbacks:Landroid/util/ArrayMap;

    #@2
    monitor-enter v1

    #@3
    .line 321
    :try_start_0
    iget-boolean v0, p0, Landroid/os/RemoteCallbackList;->mKilled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 322
    const/4 v0, 0x0

    #@8
    monitor-exit v1

    #@9
    return v0

    #@a
    .line 324
    :cond_0
    :try_start_1
    iget-object v0, p0, Landroid/os/RemoteCallbackList;->mCallbacks:Landroid/util/ArrayMap;

    #@c
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@f
    move-result v0

    #@10
    monitor-exit v1

    #@11
    return v0

    #@12
    .line 320
    :catchall_0
    move-exception v0

    #@13
    monitor-exit v1

    #@14
    throw v0
.end method

.method public kill()V
    .locals 5

    #@0
    .prologue
    .line 160
    .local p0, "this":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<TE;>;"
    iget-object v3, p0, Landroid/os/RemoteCallbackList;->mCallbacks:Landroid/util/ArrayMap;

    #@2
    monitor-enter v3

    #@3
    .line 161
    :try_start_0
    iget-object v2, p0, Landroid/os/RemoteCallbackList;->mCallbacks:Landroid/util/ArrayMap;

    #@5
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    #@8
    move-result v2

    #@9
    add-int/lit8 v1, v2, -0x1

    #@b
    .local v1, "cbi":I
    :goto_0
    if-ltz v1, :cond_0

    #@d
    .line 162
    iget-object v2, p0, Landroid/os/RemoteCallbackList;->mCallbacks:Landroid/util/ArrayMap;

    #@f
    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@12
    move-result-object v0

    #@13
    check-cast v0, Landroid/os/RemoteCallbackList$Callback;

    #@15
    .line 163
    .local v0, "cb":Landroid/os/RemoteCallbackList$Callback;, "Landroid/os/RemoteCallbackList<TE;>.Callback;"
    iget-object v2, v0, Landroid/os/RemoteCallbackList$Callback;->mCallback:Landroid/os/IInterface;

    #@17
    invoke-interface {v2}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    #@1a
    move-result-object v2

    #@1b
    const/4 v4, 0x0

    #@1c
    invoke-interface {v2, v0, v4}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    #@1f
    .line 161
    add-int/lit8 v1, v1, -0x1

    #@21
    goto :goto_0

    #@22
    .line 165
    .end local v0    # "cb":Landroid/os/RemoteCallbackList$Callback;, "Landroid/os/RemoteCallbackList<TE;>.Callback;"
    :cond_0
    iget-object v2, p0, Landroid/os/RemoteCallbackList;->mCallbacks:Landroid/util/ArrayMap;

    #@24
    invoke-virtual {v2}, Landroid/util/ArrayMap;->clear()V

    #@27
    .line 166
    const/4 v2, 0x1

    #@28
    iput-boolean v2, p0, Landroid/os/RemoteCallbackList;->mKilled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2a
    monitor-exit v3

    #@2b
    .line 159
    return-void

    #@2c
    .line 160
    .end local v1    # "cbi":I
    :catchall_0
    move-exception v2

    #@2d
    monitor-exit v3

    #@2e
    throw v2
.end method

.method public onCallbackDied(Landroid/os/IInterface;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 174
    .local p0, "this":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<TE;>;"
    .local p1, "callback":Landroid/os/IInterface;, "TE;"
    return-void
.end method

.method public onCallbackDied(Landroid/os/IInterface;Ljava/lang/Object;)V
    .locals 0
    .param p2, "cookie"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    #@0
    .prologue
    .line 192
    .local p0, "this":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<TE;>;"
    .local p1, "callback":Landroid/os/IInterface;, "TE;"
    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->onCallbackDied(Landroid/os/IInterface;)V

    #@3
    .line 191
    return-void
.end method

.method public register(Landroid/os/IInterface;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    #@0
    .prologue
    .line 78
    .local p0, "this":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<TE;>;"
    .local p1, "callback":Landroid/os/IInterface;, "TE;"
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, v0}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;Ljava/lang/Object;)Z

    #@4
    move-result v0

    #@5
    return v0
.end method

.method public register(Landroid/os/IInterface;Ljava/lang/Object;)Z
    .locals 6
    .param p2, "cookie"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<TE;>;"
    .local p1, "callback":Landroid/os/IInterface;, "TE;"
    const/4 v5, 0x0

    #@1
    .line 107
    iget-object v4, p0, Landroid/os/RemoteCallbackList;->mCallbacks:Landroid/util/ArrayMap;

    #@3
    monitor-enter v4

    #@4
    .line 108
    :try_start_0
    iget-boolean v3, p0, Landroid/os/RemoteCallbackList;->mKilled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    if-eqz v3, :cond_0

    #@8
    monitor-exit v4

    #@9
    .line 109
    return v5

    #@a
    .line 111
    :cond_0
    :try_start_1
    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@d
    move-result-object v0

    #@e
    .line 113
    .local v0, "binder":Landroid/os/IBinder;
    :try_start_2
    new-instance v1, Landroid/os/RemoteCallbackList$Callback;

    #@10
    invoke-direct {v1, p0, p1, p2}, Landroid/os/RemoteCallbackList$Callback;-><init>(Landroid/os/RemoteCallbackList;Landroid/os/IInterface;Ljava/lang/Object;)V

    #@13
    .line 114
    .local v1, "cb":Landroid/os/RemoteCallbackList$Callback;, "Landroid/os/RemoteCallbackList<TE;>.Callback;"
    const/4 v3, 0x0

    #@14
    invoke-interface {v0, v1, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    #@17
    .line 115
    iget-object v3, p0, Landroid/os/RemoteCallbackList;->mCallbacks:Landroid/util/ArrayMap;

    #@19
    invoke-virtual {v3, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@1c
    .line 116
    const/4 v3, 0x1

    #@1d
    monitor-exit v4

    #@1e
    return v3

    #@1f
    .line 117
    .end local v1    # "cb":Landroid/os/RemoteCallbackList$Callback;, "Landroid/os/RemoteCallbackList<TE;>.Callback;"
    :catch_0
    move-exception v2

    #@20
    .local v2, "e":Landroid/os/RemoteException;
    monitor-exit v4

    #@21
    .line 118
    return v5

    #@22
    .line 107
    .end local v0    # "binder":Landroid/os/IBinder;
    .end local v2    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v3

    #@23
    monitor-exit v4

    #@24
    throw v3
.end method

.method public unregister(Landroid/os/IInterface;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<TE;>;"
    .local p1, "callback":Landroid/os/IInterface;, "TE;"
    const/4 v4, 0x0

    #@1
    .line 141
    iget-object v2, p0, Landroid/os/RemoteCallbackList;->mCallbacks:Landroid/util/ArrayMap;

    #@3
    monitor-enter v2

    #@4
    .line 142
    :try_start_0
    iget-object v1, p0, Landroid/os/RemoteCallbackList;->mCallbacks:Landroid/util/ArrayMap;

    #@6
    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    #@9
    move-result-object v3

    #@a
    invoke-virtual {v1, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@d
    move-result-object v0

    #@e
    check-cast v0, Landroid/os/RemoteCallbackList$Callback;

    #@10
    .line 143
    .local v0, "cb":Landroid/os/RemoteCallbackList$Callback;, "Landroid/os/RemoteCallbackList<TE;>.Callback;"
    if-eqz v0, :cond_0

    #@12
    .line 144
    iget-object v1, v0, Landroid/os/RemoteCallbackList$Callback;->mCallback:Landroid/os/IInterface;

    #@14
    invoke-interface {v1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    #@17
    move-result-object v1

    #@18
    const/4 v3, 0x0

    #@19
    invoke-interface {v1, v0, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    .line 145
    const/4 v1, 0x1

    #@1d
    monitor-exit v2

    #@1e
    return v1

    #@1f
    :cond_0
    monitor-exit v2

    #@20
    .line 147
    return v4

    #@21
    .line 141
    .end local v0    # "cb":Landroid/os/RemoteCallbackList$Callback;, "Landroid/os/RemoteCallbackList<TE;>.Callback;"
    :catchall_0
    move-exception v1

    #@22
    monitor-exit v2

    #@23
    throw v1
.end method

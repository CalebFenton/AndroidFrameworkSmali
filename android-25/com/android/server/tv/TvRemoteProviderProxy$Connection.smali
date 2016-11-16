.class final Lcom/android/server/tv/TvRemoteProviderProxy$Connection;
.super Ljava/lang/Object;
.source "TvRemoteProviderProxy.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/tv/TvRemoteProviderProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Connection"
.end annotation


# instance fields
.field private final mServiceInputProvider:Lcom/android/server/tv/TvRemoteProviderProxy$RemoteServiceInputProvider;

.field private final mTvRemoteProvider:Landroid/media/tv/ITvRemoteProvider;

.field final synthetic this$0:Lcom/android/server/tv/TvRemoteProviderProxy;


# direct methods
.method public constructor <init>(Lcom/android/server/tv/TvRemoteProviderProxy;Landroid/media/tv/ITvRemoteProvider;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/tv/TvRemoteProviderProxy;
    .param p2, "provider"    # Landroid/media/tv/ITvRemoteProvider;

    #@0
    .prologue
    .line 276
    iput-object p1, p0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->this$0:Lcom/android/server/tv/TvRemoteProviderProxy;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 277
    iput-object p2, p0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->mTvRemoteProvider:Landroid/media/tv/ITvRemoteProvider;

    #@7
    .line 278
    new-instance v0, Lcom/android/server/tv/TvRemoteProviderProxy$RemoteServiceInputProvider;

    #@9
    invoke-direct {v0, p0}, Lcom/android/server/tv/TvRemoteProviderProxy$RemoteServiceInputProvider;-><init>(Lcom/android/server/tv/TvRemoteProviderProxy$Connection;)V

    #@c
    iput-object v0, p0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->mServiceInputProvider:Lcom/android/server/tv/TvRemoteProviderProxy$RemoteServiceInputProvider;

    #@e
    .line 276
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    #@0
    .prologue
    .line 317
    iget-object v0, p0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->this$0:Lcom/android/server/tv/TvRemoteProviderProxy;

    #@2
    invoke-static {v0}, Lcom/android/server/tv/TvRemoteProviderProxy;->-get2(Lcom/android/server/tv/TvRemoteProviderProxy;)Landroid/os/Handler;

    #@5
    move-result-object v0

    #@6
    new-instance v1, Lcom/android/server/tv/TvRemoteProviderProxy$Connection$2;

    #@8
    invoke-direct {v1, p0}, Lcom/android/server/tv/TvRemoteProviderProxy$Connection$2;-><init>(Lcom/android/server/tv/TvRemoteProviderProxy$Connection;)V

    #@b
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@e
    .line 316
    return-void
.end method

.method clearInputBridge(Landroid/os/IBinder;)V
    .locals 6
    .param p1, "token"    # Landroid/os/IBinder;

    #@0
    .prologue
    .line 378
    iget-object v2, p0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->this$0:Lcom/android/server/tv/TvRemoteProviderProxy;

    #@2
    invoke-static {v2}, Lcom/android/server/tv/TvRemoteProviderProxy;->-get3(Lcom/android/server/tv/TvRemoteProviderProxy;)Ljava/lang/Object;

    #@5
    move-result-object v3

    #@6
    monitor-enter v3

    #@7
    .line 379
    :try_start_0
    iget-object v2, p0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->this$0:Lcom/android/server/tv/TvRemoteProviderProxy;

    #@9
    invoke-static {v2}, Lcom/android/server/tv/TvRemoteProviderProxy;->-get1(Lcom/android/server/tv/TvRemoteProviderProxy;)Lcom/android/server/tv/TvRemoteProviderProxy$Connection;

    #@c
    move-result-object v2

    #@d
    if-ne v2, p0, :cond_3

    #@f
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@12
    move-result v2

    #@13
    iget-object v4, p0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->this$0:Lcom/android/server/tv/TvRemoteProviderProxy;

    #@15
    invoke-static {v4}, Lcom/android/server/tv/TvRemoteProviderProxy;->-get5(Lcom/android/server/tv/TvRemoteProviderProxy;)I

    #@18
    move-result v4

    #@19
    if-ne v2, v4, :cond_3

    #@1b
    .line 380
    invoke-static {}, Lcom/android/server/tv/TvRemoteProviderProxy;->-get0()Z

    #@1e
    move-result v2

    #@1f
    if-eqz v2, :cond_0

    #@21
    .line 381
    const-string/jumbo v2, "TvRemoteProvProxy"

    #@24
    new-instance v4, Ljava/lang/StringBuilder;

    #@26
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@29
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v4

    #@2d
    const-string/jumbo v5, ": clearInputBridge,"

    #@30
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v4

    #@34
    .line 382
    const-string/jumbo v5, " token="

    #@37
    .line 381
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v4

    #@3b
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v4

    #@3f
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@42
    move-result-object v4

    #@43
    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@46
    .line 384
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@49
    move-result-wide v0

    #@4a
    .line 386
    .local v0, "idToken":J
    :try_start_1
    iget-object v2, p0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->this$0:Lcom/android/server/tv/TvRemoteProviderProxy;

    #@4c
    invoke-static {v2}, Lcom/android/server/tv/TvRemoteProviderProxy;->-get4(Lcom/android/server/tv/TvRemoteProviderProxy;)Lcom/android/server/tv/TvRemoteProviderProxy$ProviderMethods;

    #@4f
    move-result-object v2

    #@50
    if-eqz v2, :cond_1

    #@52
    .line 387
    iget-object v2, p0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->this$0:Lcom/android/server/tv/TvRemoteProviderProxy;

    #@54
    invoke-static {v2}, Lcom/android/server/tv/TvRemoteProviderProxy;->-get4(Lcom/android/server/tv/TvRemoteProviderProxy;)Lcom/android/server/tv/TvRemoteProviderProxy$ProviderMethods;

    #@57
    move-result-object v2

    #@58
    iget-object v4, p0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->this$0:Lcom/android/server/tv/TvRemoteProviderProxy;

    #@5a
    invoke-interface {v2, v4, p1}, Lcom/android/server/tv/TvRemoteProviderProxy$ProviderMethods;->clearInputBridge(Lcom/android/server/tv/TvRemoteProviderProxy;Landroid/os/IBinder;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@5d
    .line 390
    :cond_1
    :try_start_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@60
    .end local v0    # "idToken":J
    :cond_2
    :goto_0
    monitor-exit v3

    #@61
    .line 377
    return-void

    #@62
    .line 389
    .restart local v0    # "idToken":J
    :catchall_0
    move-exception v2

    #@63
    .line 390
    :try_start_3
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@66
    .line 389
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@67
    .line 378
    .end local v0    # "idToken":J
    :catchall_1
    move-exception v2

    #@68
    monitor-exit v3

    #@69
    throw v2

    #@6a
    .line 393
    :cond_3
    :try_start_4
    invoke-static {}, Lcom/android/server/tv/TvRemoteProviderProxy;->-get0()Z

    #@6d
    move-result v2

    #@6e
    if-eqz v2, :cond_2

    #@70
    .line 394
    const-string/jumbo v2, "TvRemoteProvProxy"

    #@73
    .line 395
    new-instance v4, Ljava/lang/StringBuilder;

    #@75
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@78
    const-string/jumbo v5, "clearInputBridge, Invalid connection or incorrect uid: "

    #@7b
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7e
    move-result-object v4

    #@7f
    .line 396
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@82
    move-result v5

    #@83
    .line 395
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@86
    move-result-object v4

    #@87
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8a
    move-result-object v4

    #@8b
    .line 394
    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@8e
    goto :goto_0
.end method

.method closeInputBridge(Landroid/os/IBinder;)V
    .locals 6
    .param p1, "token"    # Landroid/os/IBinder;

    #@0
    .prologue
    .line 353
    iget-object v2, p0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->this$0:Lcom/android/server/tv/TvRemoteProviderProxy;

    #@2
    invoke-static {v2}, Lcom/android/server/tv/TvRemoteProviderProxy;->-get3(Lcom/android/server/tv/TvRemoteProviderProxy;)Ljava/lang/Object;

    #@5
    move-result-object v3

    #@6
    monitor-enter v3

    #@7
    .line 354
    :try_start_0
    iget-object v2, p0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->this$0:Lcom/android/server/tv/TvRemoteProviderProxy;

    #@9
    invoke-static {v2}, Lcom/android/server/tv/TvRemoteProviderProxy;->-get1(Lcom/android/server/tv/TvRemoteProviderProxy;)Lcom/android/server/tv/TvRemoteProviderProxy$Connection;

    #@c
    move-result-object v2

    #@d
    if-ne v2, p0, :cond_3

    #@f
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@12
    move-result v2

    #@13
    iget-object v4, p0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->this$0:Lcom/android/server/tv/TvRemoteProviderProxy;

    #@15
    invoke-static {v4}, Lcom/android/server/tv/TvRemoteProviderProxy;->-get5(Lcom/android/server/tv/TvRemoteProviderProxy;)I

    #@18
    move-result v4

    #@19
    if-ne v2, v4, :cond_3

    #@1b
    .line 355
    invoke-static {}, Lcom/android/server/tv/TvRemoteProviderProxy;->-get0()Z

    #@1e
    move-result v2

    #@1f
    if-eqz v2, :cond_0

    #@21
    .line 356
    const-string/jumbo v2, "TvRemoteProvProxy"

    #@24
    new-instance v4, Ljava/lang/StringBuilder;

    #@26
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@29
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v4

    #@2d
    const-string/jumbo v5, ": closeInputBridge,"

    #@30
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v4

    #@34
    .line 357
    const-string/jumbo v5, " token="

    #@37
    .line 356
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v4

    #@3b
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v4

    #@3f
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@42
    move-result-object v4

    #@43
    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@46
    .line 359
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@49
    move-result-wide v0

    #@4a
    .line 361
    .local v0, "idToken":J
    :try_start_1
    iget-object v2, p0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->this$0:Lcom/android/server/tv/TvRemoteProviderProxy;

    #@4c
    invoke-static {v2}, Lcom/android/server/tv/TvRemoteProviderProxy;->-get4(Lcom/android/server/tv/TvRemoteProviderProxy;)Lcom/android/server/tv/TvRemoteProviderProxy$ProviderMethods;

    #@4f
    move-result-object v2

    #@50
    if-eqz v2, :cond_1

    #@52
    .line 362
    iget-object v2, p0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->this$0:Lcom/android/server/tv/TvRemoteProviderProxy;

    #@54
    invoke-static {v2}, Lcom/android/server/tv/TvRemoteProviderProxy;->-get4(Lcom/android/server/tv/TvRemoteProviderProxy;)Lcom/android/server/tv/TvRemoteProviderProxy$ProviderMethods;

    #@57
    move-result-object v2

    #@58
    iget-object v4, p0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->this$0:Lcom/android/server/tv/TvRemoteProviderProxy;

    #@5a
    invoke-interface {v2, v4, p1}, Lcom/android/server/tv/TvRemoteProviderProxy$ProviderMethods;->closeInputBridge(Lcom/android/server/tv/TvRemoteProviderProxy;Landroid/os/IBinder;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@5d
    .line 365
    :cond_1
    :try_start_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@60
    .end local v0    # "idToken":J
    :cond_2
    :goto_0
    monitor-exit v3

    #@61
    .line 352
    return-void

    #@62
    .line 364
    .restart local v0    # "idToken":J
    :catchall_0
    move-exception v2

    #@63
    .line 365
    :try_start_3
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@66
    .line 364
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@67
    .line 353
    .end local v0    # "idToken":J
    :catchall_1
    move-exception v2

    #@68
    monitor-exit v3

    #@69
    throw v2

    #@6a
    .line 368
    :cond_3
    :try_start_4
    invoke-static {}, Lcom/android/server/tv/TvRemoteProviderProxy;->-get0()Z

    #@6d
    move-result v2

    #@6e
    if-eqz v2, :cond_2

    #@70
    .line 369
    const-string/jumbo v2, "TvRemoteProvProxy"

    #@73
    .line 370
    new-instance v4, Ljava/lang/StringBuilder;

    #@75
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@78
    const-string/jumbo v5, "closeInputBridge, Invalid connection or incorrect uid: "

    #@7b
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7e
    move-result-object v4

    #@7f
    .line 371
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@82
    move-result v5

    #@83
    .line 370
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@86
    move-result-object v4

    #@87
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8a
    move-result-object v4

    #@8b
    .line 369
    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@8e
    goto :goto_0
.end method

.method public dispose()V
    .locals 2

    #@0
    .prologue
    .line 300
    invoke-static {}, Lcom/android/server/tv/TvRemoteProviderProxy;->-get0()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    const-string/jumbo v0, "TvRemoteProvProxy"

    #@9
    const-string/jumbo v1, "Connection::dispose()"

    #@c
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@f
    .line 301
    :cond_0
    iget-object v0, p0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->mTvRemoteProvider:Landroid/media/tv/ITvRemoteProvider;

    #@11
    invoke-interface {v0}, Landroid/media/tv/ITvRemoteProvider;->asBinder()Landroid/os/IBinder;

    #@14
    move-result-object v0

    #@15
    const/4 v1, 0x0

    #@16
    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    #@19
    .line 302
    iget-object v0, p0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->mServiceInputProvider:Lcom/android/server/tv/TvRemoteProviderProxy$RemoteServiceInputProvider;

    #@1b
    invoke-virtual {v0}, Lcom/android/server/tv/TvRemoteProviderProxy$RemoteServiceInputProvider;->dispose()V

    #@1e
    .line 299
    return-void
.end method

.method public onInputBridgeConnected(Landroid/os/IBinder;)V
    .locals 4
    .param p1, "token"    # Landroid/os/IBinder;

    #@0
    .prologue
    .line 307
    invoke-static {}, Lcom/android/server/tv/TvRemoteProviderProxy;->-get0()Z

    #@3
    move-result v1

    #@4
    if-eqz v1, :cond_0

    #@6
    const-string/jumbo v1, "TvRemoteProvProxy"

    #@9
    new-instance v2, Ljava/lang/StringBuilder;

    #@b
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v2

    #@12
    const-string/jumbo v3, ": onInputBridgeConnected"

    #@15
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v2

    #@19
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c
    move-result-object v2

    #@1d
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@20
    .line 309
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->mTvRemoteProvider:Landroid/media/tv/ITvRemoteProvider;

    #@22
    invoke-interface {v1, p1}, Landroid/media/tv/ITvRemoteProvider;->onInputBridgeConnected(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@25
    .line 306
    :goto_0
    return-void

    #@26
    .line 310
    :catch_0
    move-exception v0

    #@27
    .line 311
    .local v0, "ex":Landroid/os/RemoteException;
    const-string/jumbo v1, "TvRemoteProvProxy"

    #@2a
    const-string/jumbo v2, "Failed to deliver onInputBridgeConnected. "

    #@2d
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@30
    goto :goto_0
.end method

.method openInputBridge(Landroid/os/IBinder;Ljava/lang/String;III)V
    .locals 10
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "maxPointers"    # I

    #@0
    .prologue
    .line 327
    iget-object v0, p0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->this$0:Lcom/android/server/tv/TvRemoteProviderProxy;

    #@2
    invoke-static {v0}, Lcom/android/server/tv/TvRemoteProviderProxy;->-get3(Lcom/android/server/tv/TvRemoteProviderProxy;)Ljava/lang/Object;

    #@5
    move-result-object v7

    #@6
    monitor-enter v7

    #@7
    .line 328
    :try_start_0
    iget-object v0, p0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->this$0:Lcom/android/server/tv/TvRemoteProviderProxy;

    #@9
    invoke-static {v0}, Lcom/android/server/tv/TvRemoteProviderProxy;->-get1(Lcom/android/server/tv/TvRemoteProviderProxy;)Lcom/android/server/tv/TvRemoteProviderProxy$Connection;

    #@c
    move-result-object v0

    #@d
    if-ne v0, p0, :cond_3

    #@f
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@12
    move-result v0

    #@13
    iget-object v1, p0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->this$0:Lcom/android/server/tv/TvRemoteProviderProxy;

    #@15
    invoke-static {v1}, Lcom/android/server/tv/TvRemoteProviderProxy;->-get5(Lcom/android/server/tv/TvRemoteProviderProxy;)I

    #@18
    move-result v1

    #@19
    if-ne v0, v1, :cond_3

    #@1b
    .line 329
    invoke-static {}, Lcom/android/server/tv/TvRemoteProviderProxy;->-get0()Z

    #@1e
    move-result v0

    #@1f
    if-eqz v0, :cond_0

    #@21
    .line 330
    const-string/jumbo v0, "TvRemoteProvProxy"

    #@24
    new-instance v1, Ljava/lang/StringBuilder;

    #@26
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@29
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v1

    #@2d
    const-string/jumbo v2, ": openInputBridge,"

    #@30
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v1

    #@34
    .line 331
    const-string/jumbo v2, " token="

    #@37
    .line 330
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v1

    #@3b
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v1

    #@3f
    .line 331
    const-string/jumbo v2, ", name="

    #@42
    .line 330
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v1

    #@46
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@49
    move-result-object v1

    #@4a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4d
    move-result-object v1

    #@4e
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@51
    .line 333
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@54
    move-result-wide v8

    #@55
    .line 335
    .local v8, "idToken":J
    :try_start_1
    iget-object v0, p0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->this$0:Lcom/android/server/tv/TvRemoteProviderProxy;

    #@57
    invoke-static {v0}, Lcom/android/server/tv/TvRemoteProviderProxy;->-get4(Lcom/android/server/tv/TvRemoteProviderProxy;)Lcom/android/server/tv/TvRemoteProviderProxy$ProviderMethods;

    #@5a
    move-result-object v0

    #@5b
    if-eqz v0, :cond_1

    #@5d
    .line 336
    iget-object v0, p0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->this$0:Lcom/android/server/tv/TvRemoteProviderProxy;

    #@5f
    invoke-static {v0}, Lcom/android/server/tv/TvRemoteProviderProxy;->-get4(Lcom/android/server/tv/TvRemoteProviderProxy;)Lcom/android/server/tv/TvRemoteProviderProxy$ProviderMethods;

    #@62
    move-result-object v0

    #@63
    iget-object v1, p0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->this$0:Lcom/android/server/tv/TvRemoteProviderProxy;

    #@65
    move-object v2, p1

    #@66
    move-object v3, p2

    #@67
    move v4, p3

    #@68
    move v5, p4

    #@69
    move v6, p5

    #@6a
    invoke-interface/range {v0 .. v6}, Lcom/android/server/tv/TvRemoteProviderProxy$ProviderMethods;->openInputBridge(Lcom/android/server/tv/TvRemoteProviderProxy;Landroid/os/IBinder;Ljava/lang/String;III)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@6d
    .line 340
    :cond_1
    :try_start_2
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@70
    .end local v8    # "idToken":J
    :cond_2
    :goto_0
    monitor-exit v7

    #@71
    .line 326
    return-void

    #@72
    .line 339
    .restart local v8    # "idToken":J
    :catchall_0
    move-exception v0

    #@73
    .line 340
    :try_start_3
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@76
    .line 339
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@77
    .line 327
    .end local v8    # "idToken":J
    :catchall_1
    move-exception v0

    #@78
    monitor-exit v7

    #@79
    throw v0

    #@7a
    .line 343
    :cond_3
    :try_start_4
    invoke-static {}, Lcom/android/server/tv/TvRemoteProviderProxy;->-get0()Z

    #@7d
    move-result v0

    #@7e
    if-eqz v0, :cond_2

    #@80
    .line 344
    const-string/jumbo v0, "TvRemoteProvProxy"

    #@83
    .line 345
    new-instance v1, Ljava/lang/StringBuilder;

    #@85
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@88
    const-string/jumbo v2, "openInputBridge, Invalid connection or incorrect uid: "

    #@8b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8e
    move-result-object v1

    #@8f
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@92
    move-result v2

    #@93
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@96
    move-result-object v1

    #@97
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9a
    move-result-object v1

    #@9b
    .line 344
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@9e
    goto :goto_0
.end method

.method public register()Z
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 282
    invoke-static {}, Lcom/android/server/tv/TvRemoteProviderProxy;->-get0()Z

    #@4
    move-result v1

    #@5
    if-eqz v1, :cond_0

    #@7
    const-string/jumbo v1, "TvRemoteProvProxy"

    #@a
    const-string/jumbo v2, "Connection::register()"

    #@d
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@10
    .line 284
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->mTvRemoteProvider:Landroid/media/tv/ITvRemoteProvider;

    #@12
    invoke-interface {v1}, Landroid/media/tv/ITvRemoteProvider;->asBinder()Landroid/os/IBinder;

    #@15
    move-result-object v1

    #@16
    const/4 v2, 0x0

    #@17
    invoke-interface {v1, p0, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    #@1a
    .line 285
    iget-object v1, p0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->mTvRemoteProvider:Landroid/media/tv/ITvRemoteProvider;

    #@1c
    iget-object v2, p0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->mServiceInputProvider:Lcom/android/server/tv/TvRemoteProviderProxy$RemoteServiceInputProvider;

    #@1e
    invoke-interface {v1, v2}, Landroid/media/tv/ITvRemoteProvider;->setRemoteServiceInputSink(Landroid/media/tv/ITvRemoteServiceInput;)V

    #@21
    .line 286
    iget-object v1, p0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->this$0:Lcom/android/server/tv/TvRemoteProviderProxy;

    #@23
    invoke-static {v1}, Lcom/android/server/tv/TvRemoteProviderProxy;->-get2(Lcom/android/server/tv/TvRemoteProviderProxy;)Landroid/os/Handler;

    #@26
    move-result-object v1

    #@27
    new-instance v2, Lcom/android/server/tv/TvRemoteProviderProxy$Connection$1;

    #@29
    invoke-direct {v2, p0}, Lcom/android/server/tv/TvRemoteProviderProxy$Connection$1;-><init>(Lcom/android/server/tv/TvRemoteProviderProxy$Connection;)V

    #@2c
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@2f
    .line 292
    const/4 v1, 0x1

    #@30
    return v1

    #@31
    .line 293
    :catch_0
    move-exception v0

    #@32
    .line 294
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {p0}, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->binderDied()V

    #@35
    .line 296
    return v3
.end method

.method sendKeyDown(Landroid/os/IBinder;I)V
    .locals 6
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "keyCode"    # I

    #@0
    .prologue
    .line 425
    iget-object v2, p0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->this$0:Lcom/android/server/tv/TvRemoteProviderProxy;

    #@2
    invoke-static {v2}, Lcom/android/server/tv/TvRemoteProviderProxy;->-get3(Lcom/android/server/tv/TvRemoteProviderProxy;)Ljava/lang/Object;

    #@5
    move-result-object v3

    #@6
    monitor-enter v3

    #@7
    .line 426
    :try_start_0
    iget-object v2, p0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->this$0:Lcom/android/server/tv/TvRemoteProviderProxy;

    #@9
    invoke-static {v2}, Lcom/android/server/tv/TvRemoteProviderProxy;->-get1(Lcom/android/server/tv/TvRemoteProviderProxy;)Lcom/android/server/tv/TvRemoteProviderProxy$Connection;

    #@c
    move-result-object v2

    #@d
    if-ne v2, p0, :cond_2

    #@f
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@12
    move-result v2

    #@13
    iget-object v4, p0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->this$0:Lcom/android/server/tv/TvRemoteProviderProxy;

    #@15
    invoke-static {v4}, Lcom/android/server/tv/TvRemoteProviderProxy;->-get5(Lcom/android/server/tv/TvRemoteProviderProxy;)I

    #@18
    move-result v4

    #@19
    if-ne v2, v4, :cond_2

    #@1b
    .line 431
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@1e
    move-result-wide v0

    #@1f
    .line 433
    .local v0, "idToken":J
    :try_start_1
    iget-object v2, p0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->this$0:Lcom/android/server/tv/TvRemoteProviderProxy;

    #@21
    invoke-static {v2}, Lcom/android/server/tv/TvRemoteProviderProxy;->-get4(Lcom/android/server/tv/TvRemoteProviderProxy;)Lcom/android/server/tv/TvRemoteProviderProxy$ProviderMethods;

    #@24
    move-result-object v2

    #@25
    if-eqz v2, :cond_0

    #@27
    .line 434
    iget-object v2, p0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->this$0:Lcom/android/server/tv/TvRemoteProviderProxy;

    #@29
    invoke-static {v2}, Lcom/android/server/tv/TvRemoteProviderProxy;->-get4(Lcom/android/server/tv/TvRemoteProviderProxy;)Lcom/android/server/tv/TvRemoteProviderProxy$ProviderMethods;

    #@2c
    move-result-object v2

    #@2d
    iget-object v4, p0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->this$0:Lcom/android/server/tv/TvRemoteProviderProxy;

    #@2f
    invoke-interface {v2, v4, p1, p2}, Lcom/android/server/tv/TvRemoteProviderProxy$ProviderMethods;->sendKeyDown(Lcom/android/server/tv/TvRemoteProviderProxy;Landroid/os/IBinder;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@32
    .line 438
    :cond_0
    :try_start_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@35
    .end local v0    # "idToken":J
    :cond_1
    :goto_0
    monitor-exit v3

    #@36
    .line 424
    return-void

    #@37
    .line 437
    .restart local v0    # "idToken":J
    :catchall_0
    move-exception v2

    #@38
    .line 438
    :try_start_3
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@3b
    .line 437
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@3c
    .line 425
    .end local v0    # "idToken":J
    :catchall_1
    move-exception v2

    #@3d
    monitor-exit v3

    #@3e
    throw v2

    #@3f
    .line 441
    :cond_2
    :try_start_4
    invoke-static {}, Lcom/android/server/tv/TvRemoteProviderProxy;->-get0()Z

    #@42
    move-result v2

    #@43
    if-eqz v2, :cond_1

    #@45
    .line 442
    const-string/jumbo v2, "TvRemoteProvProxy"

    #@48
    .line 443
    new-instance v4, Ljava/lang/StringBuilder;

    #@4a
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@4d
    const-string/jumbo v5, "sendKeyDown, Invalid connection or incorrect uid: "

    #@50
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@53
    move-result-object v4

    #@54
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@57
    move-result v5

    #@58
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@5b
    move-result-object v4

    #@5c
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5f
    move-result-object v4

    #@60
    .line 442
    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@63
    goto :goto_0
.end method

.method sendKeyUp(Landroid/os/IBinder;I)V
    .locals 6
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "keyCode"    # I

    #@0
    .prologue
    .line 451
    iget-object v2, p0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->this$0:Lcom/android/server/tv/TvRemoteProviderProxy;

    #@2
    invoke-static {v2}, Lcom/android/server/tv/TvRemoteProviderProxy;->-get3(Lcom/android/server/tv/TvRemoteProviderProxy;)Ljava/lang/Object;

    #@5
    move-result-object v3

    #@6
    monitor-enter v3

    #@7
    .line 452
    :try_start_0
    iget-object v2, p0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->this$0:Lcom/android/server/tv/TvRemoteProviderProxy;

    #@9
    invoke-static {v2}, Lcom/android/server/tv/TvRemoteProviderProxy;->-get1(Lcom/android/server/tv/TvRemoteProviderProxy;)Lcom/android/server/tv/TvRemoteProviderProxy$Connection;

    #@c
    move-result-object v2

    #@d
    if-ne v2, p0, :cond_2

    #@f
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@12
    move-result v2

    #@13
    iget-object v4, p0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->this$0:Lcom/android/server/tv/TvRemoteProviderProxy;

    #@15
    invoke-static {v4}, Lcom/android/server/tv/TvRemoteProviderProxy;->-get5(Lcom/android/server/tv/TvRemoteProviderProxy;)I

    #@18
    move-result v4

    #@19
    if-ne v2, v4, :cond_2

    #@1b
    .line 457
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@1e
    move-result-wide v0

    #@1f
    .line 459
    .local v0, "idToken":J
    :try_start_1
    iget-object v2, p0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->this$0:Lcom/android/server/tv/TvRemoteProviderProxy;

    #@21
    invoke-static {v2}, Lcom/android/server/tv/TvRemoteProviderProxy;->-get4(Lcom/android/server/tv/TvRemoteProviderProxy;)Lcom/android/server/tv/TvRemoteProviderProxy$ProviderMethods;

    #@24
    move-result-object v2

    #@25
    if-eqz v2, :cond_0

    #@27
    .line 460
    iget-object v2, p0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->this$0:Lcom/android/server/tv/TvRemoteProviderProxy;

    #@29
    invoke-static {v2}, Lcom/android/server/tv/TvRemoteProviderProxy;->-get4(Lcom/android/server/tv/TvRemoteProviderProxy;)Lcom/android/server/tv/TvRemoteProviderProxy$ProviderMethods;

    #@2c
    move-result-object v2

    #@2d
    iget-object v4, p0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->this$0:Lcom/android/server/tv/TvRemoteProviderProxy;

    #@2f
    invoke-interface {v2, v4, p1, p2}, Lcom/android/server/tv/TvRemoteProviderProxy$ProviderMethods;->sendKeyUp(Lcom/android/server/tv/TvRemoteProviderProxy;Landroid/os/IBinder;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@32
    .line 463
    :cond_0
    :try_start_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@35
    .end local v0    # "idToken":J
    :cond_1
    :goto_0
    monitor-exit v3

    #@36
    .line 450
    return-void

    #@37
    .line 462
    .restart local v0    # "idToken":J
    :catchall_0
    move-exception v2

    #@38
    .line 463
    :try_start_3
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@3b
    .line 462
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@3c
    .line 451
    .end local v0    # "idToken":J
    :catchall_1
    move-exception v2

    #@3d
    monitor-exit v3

    #@3e
    throw v2

    #@3f
    .line 466
    :cond_2
    :try_start_4
    invoke-static {}, Lcom/android/server/tv/TvRemoteProviderProxy;->-get0()Z

    #@42
    move-result v2

    #@43
    if-eqz v2, :cond_1

    #@45
    .line 467
    const-string/jumbo v2, "TvRemoteProvProxy"

    #@48
    .line 468
    new-instance v4, Ljava/lang/StringBuilder;

    #@4a
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@4d
    const-string/jumbo v5, "sendKeyUp, Invalid connection or incorrect uid: "

    #@50
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@53
    move-result-object v4

    #@54
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@57
    move-result v5

    #@58
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@5b
    move-result-object v4

    #@5c
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5f
    move-result-object v4

    #@60
    .line 467
    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@63
    goto :goto_0
.end method

.method sendPointerDown(Landroid/os/IBinder;III)V
    .locals 9
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "pointerId"    # I
    .param p3, "x"    # I
    .param p4, "y"    # I

    #@0
    .prologue
    .line 476
    iget-object v0, p0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->this$0:Lcom/android/server/tv/TvRemoteProviderProxy;

    #@2
    invoke-static {v0}, Lcom/android/server/tv/TvRemoteProviderProxy;->-get3(Lcom/android/server/tv/TvRemoteProviderProxy;)Ljava/lang/Object;

    #@5
    move-result-object v8

    #@6
    monitor-enter v8

    #@7
    .line 477
    :try_start_0
    iget-object v0, p0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->this$0:Lcom/android/server/tv/TvRemoteProviderProxy;

    #@9
    invoke-static {v0}, Lcom/android/server/tv/TvRemoteProviderProxy;->-get1(Lcom/android/server/tv/TvRemoteProviderProxy;)Lcom/android/server/tv/TvRemoteProviderProxy$Connection;

    #@c
    move-result-object v0

    #@d
    if-ne v0, p0, :cond_2

    #@f
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@12
    move-result v0

    #@13
    iget-object v1, p0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->this$0:Lcom/android/server/tv/TvRemoteProviderProxy;

    #@15
    invoke-static {v1}, Lcom/android/server/tv/TvRemoteProviderProxy;->-get5(Lcom/android/server/tv/TvRemoteProviderProxy;)I

    #@18
    move-result v1

    #@19
    if-ne v0, v1, :cond_2

    #@1b
    .line 482
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@1e
    move-result-wide v6

    #@1f
    .line 484
    .local v6, "idToken":J
    :try_start_1
    iget-object v0, p0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->this$0:Lcom/android/server/tv/TvRemoteProviderProxy;

    #@21
    invoke-static {v0}, Lcom/android/server/tv/TvRemoteProviderProxy;->-get4(Lcom/android/server/tv/TvRemoteProviderProxy;)Lcom/android/server/tv/TvRemoteProviderProxy$ProviderMethods;

    #@24
    move-result-object v0

    #@25
    if-eqz v0, :cond_0

    #@27
    .line 485
    iget-object v0, p0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->this$0:Lcom/android/server/tv/TvRemoteProviderProxy;

    #@29
    invoke-static {v0}, Lcom/android/server/tv/TvRemoteProviderProxy;->-get4(Lcom/android/server/tv/TvRemoteProviderProxy;)Lcom/android/server/tv/TvRemoteProviderProxy$ProviderMethods;

    #@2c
    move-result-object v0

    #@2d
    iget-object v1, p0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->this$0:Lcom/android/server/tv/TvRemoteProviderProxy;

    #@2f
    move-object v2, p1

    #@30
    move v3, p2

    #@31
    move v4, p3

    #@32
    move v5, p4

    #@33
    invoke-interface/range {v0 .. v5}, Lcom/android/server/tv/TvRemoteProviderProxy$ProviderMethods;->sendPointerDown(Lcom/android/server/tv/TvRemoteProviderProxy;Landroid/os/IBinder;III)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@36
    .line 489
    :cond_0
    :try_start_2
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@39
    .end local v6    # "idToken":J
    :cond_1
    :goto_0
    monitor-exit v8

    #@3a
    .line 475
    return-void

    #@3b
    .line 488
    .restart local v6    # "idToken":J
    :catchall_0
    move-exception v0

    #@3c
    .line 489
    :try_start_3
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@3f
    .line 488
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@40
    .line 476
    .end local v6    # "idToken":J
    :catchall_1
    move-exception v0

    #@41
    monitor-exit v8

    #@42
    throw v0

    #@43
    .line 492
    :cond_2
    :try_start_4
    invoke-static {}, Lcom/android/server/tv/TvRemoteProviderProxy;->-get0()Z

    #@46
    move-result v0

    #@47
    if-eqz v0, :cond_1

    #@49
    .line 493
    const-string/jumbo v0, "TvRemoteProvProxy"

    #@4c
    .line 494
    new-instance v1, Ljava/lang/StringBuilder;

    #@4e
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@51
    const-string/jumbo v2, "sendPointerDown, Invalid connection or incorrect uid: "

    #@54
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@57
    move-result-object v1

    #@58
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@5b
    move-result v2

    #@5c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@5f
    move-result-object v1

    #@60
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@63
    move-result-object v1

    #@64
    .line 493
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@67
    goto :goto_0
.end method

.method sendPointerSync(Landroid/os/IBinder;)V
    .locals 6
    .param p1, "token"    # Landroid/os/IBinder;

    #@0
    .prologue
    .line 528
    iget-object v2, p0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->this$0:Lcom/android/server/tv/TvRemoteProviderProxy;

    #@2
    invoke-static {v2}, Lcom/android/server/tv/TvRemoteProviderProxy;->-get3(Lcom/android/server/tv/TvRemoteProviderProxy;)Ljava/lang/Object;

    #@5
    move-result-object v3

    #@6
    monitor-enter v3

    #@7
    .line 529
    :try_start_0
    iget-object v2, p0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->this$0:Lcom/android/server/tv/TvRemoteProviderProxy;

    #@9
    invoke-static {v2}, Lcom/android/server/tv/TvRemoteProviderProxy;->-get1(Lcom/android/server/tv/TvRemoteProviderProxy;)Lcom/android/server/tv/TvRemoteProviderProxy$Connection;

    #@c
    move-result-object v2

    #@d
    if-ne v2, p0, :cond_2

    #@f
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@12
    move-result v2

    #@13
    iget-object v4, p0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->this$0:Lcom/android/server/tv/TvRemoteProviderProxy;

    #@15
    invoke-static {v4}, Lcom/android/server/tv/TvRemoteProviderProxy;->-get5(Lcom/android/server/tv/TvRemoteProviderProxy;)I

    #@18
    move-result v4

    #@19
    if-ne v2, v4, :cond_2

    #@1b
    .line 534
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@1e
    move-result-wide v0

    #@1f
    .line 536
    .local v0, "idToken":J
    :try_start_1
    iget-object v2, p0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->this$0:Lcom/android/server/tv/TvRemoteProviderProxy;

    #@21
    invoke-static {v2}, Lcom/android/server/tv/TvRemoteProviderProxy;->-get4(Lcom/android/server/tv/TvRemoteProviderProxy;)Lcom/android/server/tv/TvRemoteProviderProxy$ProviderMethods;

    #@24
    move-result-object v2

    #@25
    if-eqz v2, :cond_0

    #@27
    .line 537
    iget-object v2, p0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->this$0:Lcom/android/server/tv/TvRemoteProviderProxy;

    #@29
    invoke-static {v2}, Lcom/android/server/tv/TvRemoteProviderProxy;->-get4(Lcom/android/server/tv/TvRemoteProviderProxy;)Lcom/android/server/tv/TvRemoteProviderProxy$ProviderMethods;

    #@2c
    move-result-object v2

    #@2d
    iget-object v4, p0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->this$0:Lcom/android/server/tv/TvRemoteProviderProxy;

    #@2f
    invoke-interface {v2, v4, p1}, Lcom/android/server/tv/TvRemoteProviderProxy$ProviderMethods;->sendPointerSync(Lcom/android/server/tv/TvRemoteProviderProxy;Landroid/os/IBinder;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@32
    .line 540
    :cond_0
    :try_start_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@35
    .end local v0    # "idToken":J
    :cond_1
    :goto_0
    monitor-exit v3

    #@36
    .line 527
    return-void

    #@37
    .line 539
    .restart local v0    # "idToken":J
    :catchall_0
    move-exception v2

    #@38
    .line 540
    :try_start_3
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@3b
    .line 539
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@3c
    .line 528
    .end local v0    # "idToken":J
    :catchall_1
    move-exception v2

    #@3d
    monitor-exit v3

    #@3e
    throw v2

    #@3f
    .line 543
    :cond_2
    :try_start_4
    invoke-static {}, Lcom/android/server/tv/TvRemoteProviderProxy;->-get0()Z

    #@42
    move-result v2

    #@43
    if-eqz v2, :cond_1

    #@45
    .line 544
    const-string/jumbo v2, "TvRemoteProvProxy"

    #@48
    .line 545
    new-instance v4, Ljava/lang/StringBuilder;

    #@4a
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@4d
    const-string/jumbo v5, "sendPointerSync, Invalid connection or incorrect uid: "

    #@50
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@53
    move-result-object v4

    #@54
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@57
    move-result v5

    #@58
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@5b
    move-result-object v4

    #@5c
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5f
    move-result-object v4

    #@60
    .line 544
    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@63
    goto :goto_0
.end method

.method sendPointerUp(Landroid/os/IBinder;I)V
    .locals 6
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "pointerId"    # I

    #@0
    .prologue
    .line 502
    iget-object v2, p0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->this$0:Lcom/android/server/tv/TvRemoteProviderProxy;

    #@2
    invoke-static {v2}, Lcom/android/server/tv/TvRemoteProviderProxy;->-get3(Lcom/android/server/tv/TvRemoteProviderProxy;)Ljava/lang/Object;

    #@5
    move-result-object v3

    #@6
    monitor-enter v3

    #@7
    .line 503
    :try_start_0
    iget-object v2, p0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->this$0:Lcom/android/server/tv/TvRemoteProviderProxy;

    #@9
    invoke-static {v2}, Lcom/android/server/tv/TvRemoteProviderProxy;->-get1(Lcom/android/server/tv/TvRemoteProviderProxy;)Lcom/android/server/tv/TvRemoteProviderProxy$Connection;

    #@c
    move-result-object v2

    #@d
    if-ne v2, p0, :cond_2

    #@f
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@12
    move-result v2

    #@13
    iget-object v4, p0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->this$0:Lcom/android/server/tv/TvRemoteProviderProxy;

    #@15
    invoke-static {v4}, Lcom/android/server/tv/TvRemoteProviderProxy;->-get5(Lcom/android/server/tv/TvRemoteProviderProxy;)I

    #@18
    move-result v4

    #@19
    if-ne v2, v4, :cond_2

    #@1b
    .line 508
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@1e
    move-result-wide v0

    #@1f
    .line 510
    .local v0, "idToken":J
    :try_start_1
    iget-object v2, p0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->this$0:Lcom/android/server/tv/TvRemoteProviderProxy;

    #@21
    invoke-static {v2}, Lcom/android/server/tv/TvRemoteProviderProxy;->-get4(Lcom/android/server/tv/TvRemoteProviderProxy;)Lcom/android/server/tv/TvRemoteProviderProxy$ProviderMethods;

    #@24
    move-result-object v2

    #@25
    if-eqz v2, :cond_0

    #@27
    .line 511
    iget-object v2, p0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->this$0:Lcom/android/server/tv/TvRemoteProviderProxy;

    #@29
    invoke-static {v2}, Lcom/android/server/tv/TvRemoteProviderProxy;->-get4(Lcom/android/server/tv/TvRemoteProviderProxy;)Lcom/android/server/tv/TvRemoteProviderProxy$ProviderMethods;

    #@2c
    move-result-object v2

    #@2d
    iget-object v4, p0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->this$0:Lcom/android/server/tv/TvRemoteProviderProxy;

    #@2f
    invoke-interface {v2, v4, p1, p2}, Lcom/android/server/tv/TvRemoteProviderProxy$ProviderMethods;->sendPointerUp(Lcom/android/server/tv/TvRemoteProviderProxy;Landroid/os/IBinder;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@32
    .line 515
    :cond_0
    :try_start_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@35
    .end local v0    # "idToken":J
    :cond_1
    :goto_0
    monitor-exit v3

    #@36
    .line 501
    return-void

    #@37
    .line 514
    .restart local v0    # "idToken":J
    :catchall_0
    move-exception v2

    #@38
    .line 515
    :try_start_3
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@3b
    .line 514
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@3c
    .line 502
    .end local v0    # "idToken":J
    :catchall_1
    move-exception v2

    #@3d
    monitor-exit v3

    #@3e
    throw v2

    #@3f
    .line 518
    :cond_2
    :try_start_4
    invoke-static {}, Lcom/android/server/tv/TvRemoteProviderProxy;->-get0()Z

    #@42
    move-result v2

    #@43
    if-eqz v2, :cond_1

    #@45
    .line 519
    const-string/jumbo v2, "TvRemoteProvProxy"

    #@48
    .line 520
    new-instance v4, Ljava/lang/StringBuilder;

    #@4a
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@4d
    const-string/jumbo v5, "sendPointerUp, Invalid connection or incorrect uid: "

    #@50
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@53
    move-result-object v4

    #@54
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@57
    move-result v5

    #@58
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@5b
    move-result-object v4

    #@5c
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5f
    move-result-object v4

    #@60
    .line 519
    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@63
    goto :goto_0
.end method

.method sendTimestamp(Landroid/os/IBinder;J)V
    .locals 6
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "timestamp"    # J

    #@0
    .prologue
    .line 403
    iget-object v2, p0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->this$0:Lcom/android/server/tv/TvRemoteProviderProxy;

    #@2
    invoke-static {v2}, Lcom/android/server/tv/TvRemoteProviderProxy;->-get3(Lcom/android/server/tv/TvRemoteProviderProxy;)Ljava/lang/Object;

    #@5
    move-result-object v3

    #@6
    monitor-enter v3

    #@7
    .line 404
    :try_start_0
    iget-object v2, p0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->this$0:Lcom/android/server/tv/TvRemoteProviderProxy;

    #@9
    invoke-static {v2}, Lcom/android/server/tv/TvRemoteProviderProxy;->-get1(Lcom/android/server/tv/TvRemoteProviderProxy;)Lcom/android/server/tv/TvRemoteProviderProxy$Connection;

    #@c
    move-result-object v2

    #@d
    if-ne v2, p0, :cond_2

    #@f
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@12
    move-result v2

    #@13
    iget-object v4, p0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->this$0:Lcom/android/server/tv/TvRemoteProviderProxy;

    #@15
    invoke-static {v4}, Lcom/android/server/tv/TvRemoteProviderProxy;->-get5(Lcom/android/server/tv/TvRemoteProviderProxy;)I

    #@18
    move-result v4

    #@19
    if-ne v2, v4, :cond_2

    #@1b
    .line 405
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@1e
    move-result-wide v0

    #@1f
    .line 407
    .local v0, "idToken":J
    :try_start_1
    iget-object v2, p0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->this$0:Lcom/android/server/tv/TvRemoteProviderProxy;

    #@21
    invoke-static {v2}, Lcom/android/server/tv/TvRemoteProviderProxy;->-get4(Lcom/android/server/tv/TvRemoteProviderProxy;)Lcom/android/server/tv/TvRemoteProviderProxy$ProviderMethods;

    #@24
    move-result-object v2

    #@25
    if-eqz v2, :cond_0

    #@27
    .line 408
    iget-object v2, p0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->this$0:Lcom/android/server/tv/TvRemoteProviderProxy;

    #@29
    invoke-static {v2}, Lcom/android/server/tv/TvRemoteProviderProxy;->-get4(Lcom/android/server/tv/TvRemoteProviderProxy;)Lcom/android/server/tv/TvRemoteProviderProxy$ProviderMethods;

    #@2c
    move-result-object v2

    #@2d
    iget-object v4, p0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->this$0:Lcom/android/server/tv/TvRemoteProviderProxy;

    #@2f
    invoke-interface {v2, v4, p1, p2, p3}, Lcom/android/server/tv/TvRemoteProviderProxy$ProviderMethods;->sendTimeStamp(Lcom/android/server/tv/TvRemoteProviderProxy;Landroid/os/IBinder;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@32
    .line 412
    :cond_0
    :try_start_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@35
    .end local v0    # "idToken":J
    :cond_1
    :goto_0
    monitor-exit v3

    #@36
    .line 402
    return-void

    #@37
    .line 411
    .restart local v0    # "idToken":J
    :catchall_0
    move-exception v2

    #@38
    .line 412
    :try_start_3
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@3b
    .line 411
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@3c
    .line 403
    .end local v0    # "idToken":J
    :catchall_1
    move-exception v2

    #@3d
    monitor-exit v3

    #@3e
    throw v2

    #@3f
    .line 415
    :cond_2
    :try_start_4
    invoke-static {}, Lcom/android/server/tv/TvRemoteProviderProxy;->-get0()Z

    #@42
    move-result v2

    #@43
    if-eqz v2, :cond_1

    #@45
    .line 416
    const-string/jumbo v2, "TvRemoteProvProxy"

    #@48
    .line 417
    new-instance v4, Ljava/lang/StringBuilder;

    #@4a
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@4d
    const-string/jumbo v5, "sendTimeStamp, Invalid connection or incorrect uid: "

    #@50
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@53
    move-result-object v4

    #@54
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@57
    move-result v5

    #@58
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@5b
    move-result-object v4

    #@5c
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5f
    move-result-object v4

    #@60
    .line 416
    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@63
    goto :goto_0
.end method

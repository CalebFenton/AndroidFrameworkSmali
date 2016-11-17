.class final Lcom/android/server/media/RemoteDisplayProviderProxy$Connection;
.super Ljava/lang/Object;
.source "RemoteDisplayProviderProxy.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/media/RemoteDisplayProviderProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Connection"
.end annotation


# instance fields
.field private final mCallback:Lcom/android/server/media/RemoteDisplayProviderProxy$ProviderCallback;

.field private final mProvider:Landroid/media/IRemoteDisplayProvider;

.field final synthetic this$0:Lcom/android/server/media/RemoteDisplayProviderProxy;


# direct methods
.method public constructor <init>(Lcom/android/server/media/RemoteDisplayProviderProxy;Landroid/media/IRemoteDisplayProvider;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/media/RemoteDisplayProviderProxy;
    .param p2, "provider"    # Landroid/media/IRemoteDisplayProvider;

    #@0
    .prologue
    .line 329
    iput-object p1, p0, Lcom/android/server/media/RemoteDisplayProviderProxy$Connection;->this$0:Lcom/android/server/media/RemoteDisplayProviderProxy;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 330
    iput-object p2, p0, Lcom/android/server/media/RemoteDisplayProviderProxy$Connection;->mProvider:Landroid/media/IRemoteDisplayProvider;

    #@7
    .line 331
    new-instance v0, Lcom/android/server/media/RemoteDisplayProviderProxy$ProviderCallback;

    #@9
    invoke-direct {v0, p0}, Lcom/android/server/media/RemoteDisplayProviderProxy$ProviderCallback;-><init>(Lcom/android/server/media/RemoteDisplayProviderProxy$Connection;)V

    #@c
    iput-object v0, p0, Lcom/android/server/media/RemoteDisplayProviderProxy$Connection;->mCallback:Lcom/android/server/media/RemoteDisplayProviderProxy$ProviderCallback;

    #@e
    .line 329
    return-void
.end method


# virtual methods
.method public adjustVolume(Ljava/lang/String;I)V
    .locals 3
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "volume"    # I

    #@0
    .prologue
    .line 390
    :try_start_0
    iget-object v1, p0, Lcom/android/server/media/RemoteDisplayProviderProxy$Connection;->mProvider:Landroid/media/IRemoteDisplayProvider;

    #@2
    invoke-interface {v1, p1, p2}, Landroid/media/IRemoteDisplayProvider;->adjustVolume(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 388
    :goto_0
    return-void

    #@6
    .line 391
    :catch_0
    move-exception v0

    #@7
    .line 392
    .local v0, "ex":Landroid/os/RemoteException;
    const-string/jumbo v1, "RemoteDisplayProvider"

    #@a
    const-string/jumbo v2, "Failed to deliver request to adjust display volume."

    #@d
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@10
    goto :goto_0
.end method

.method public binderDied()V
    .locals 2

    #@0
    .prologue
    .line 398
    iget-object v0, p0, Lcom/android/server/media/RemoteDisplayProviderProxy$Connection;->this$0:Lcom/android/server/media/RemoteDisplayProviderProxy;

    #@2
    invoke-static {v0}, Lcom/android/server/media/RemoteDisplayProviderProxy;->-get2(Lcom/android/server/media/RemoteDisplayProviderProxy;)Landroid/os/Handler;

    #@5
    move-result-object v0

    #@6
    new-instance v1, Lcom/android/server/media/RemoteDisplayProviderProxy$Connection$2;

    #@8
    invoke-direct {v1, p0}, Lcom/android/server/media/RemoteDisplayProviderProxy$Connection$2;-><init>(Lcom/android/server/media/RemoteDisplayProviderProxy$Connection;)V

    #@b
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@e
    .line 397
    return-void
.end method

.method public connect(Ljava/lang/String;)V
    .locals 3
    .param p1, "id"    # Ljava/lang/String;

    #@0
    .prologue
    .line 366
    :try_start_0
    iget-object v1, p0, Lcom/android/server/media/RemoteDisplayProviderProxy$Connection;->mProvider:Landroid/media/IRemoteDisplayProvider;

    #@2
    invoke-interface {v1, p1}, Landroid/media/IRemoteDisplayProvider;->connect(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 364
    :goto_0
    return-void

    #@6
    .line 367
    :catch_0
    move-exception v0

    #@7
    .line 368
    .local v0, "ex":Landroid/os/RemoteException;
    const-string/jumbo v1, "RemoteDisplayProvider"

    #@a
    const-string/jumbo v2, "Failed to deliver request to connect to display."

    #@d
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@10
    goto :goto_0
.end method

.method public disconnect(Ljava/lang/String;)V
    .locals 3
    .param p1, "id"    # Ljava/lang/String;

    #@0
    .prologue
    .line 374
    :try_start_0
    iget-object v1, p0, Lcom/android/server/media/RemoteDisplayProviderProxy$Connection;->mProvider:Landroid/media/IRemoteDisplayProvider;

    #@2
    invoke-interface {v1, p1}, Landroid/media/IRemoteDisplayProvider;->disconnect(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 372
    :goto_0
    return-void

    #@6
    .line 375
    :catch_0
    move-exception v0

    #@7
    .line 376
    .local v0, "ex":Landroid/os/RemoteException;
    const-string/jumbo v1, "RemoteDisplayProvider"

    #@a
    const-string/jumbo v2, "Failed to deliver request to disconnect from display."

    #@d
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@10
    goto :goto_0
.end method

.method public dispose()V
    .locals 2

    #@0
    .prologue
    .line 352
    iget-object v0, p0, Lcom/android/server/media/RemoteDisplayProviderProxy$Connection;->mProvider:Landroid/media/IRemoteDisplayProvider;

    #@2
    invoke-interface {v0}, Landroid/media/IRemoteDisplayProvider;->asBinder()Landroid/os/IBinder;

    #@5
    move-result-object v0

    #@6
    const/4 v1, 0x0

    #@7
    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    #@a
    .line 353
    iget-object v0, p0, Lcom/android/server/media/RemoteDisplayProviderProxy$Connection;->mCallback:Lcom/android/server/media/RemoteDisplayProviderProxy$ProviderCallback;

    #@c
    invoke-virtual {v0}, Lcom/android/server/media/RemoteDisplayProviderProxy$ProviderCallback;->dispose()V

    #@f
    .line 351
    return-void
.end method

.method postStateChanged(Landroid/media/RemoteDisplayState;)V
    .locals 2
    .param p1, "state"    # Landroid/media/RemoteDisplayState;

    #@0
    .prologue
    .line 407
    iget-object v0, p0, Lcom/android/server/media/RemoteDisplayProviderProxy$Connection;->this$0:Lcom/android/server/media/RemoteDisplayProviderProxy;

    #@2
    invoke-static {v0}, Lcom/android/server/media/RemoteDisplayProviderProxy;->-get2(Lcom/android/server/media/RemoteDisplayProviderProxy;)Landroid/os/Handler;

    #@5
    move-result-object v0

    #@6
    new-instance v1, Lcom/android/server/media/RemoteDisplayProviderProxy$Connection$3;

    #@8
    invoke-direct {v1, p0, p1}, Lcom/android/server/media/RemoteDisplayProviderProxy$Connection$3;-><init>(Lcom/android/server/media/RemoteDisplayProviderProxy$Connection;Landroid/media/RemoteDisplayState;)V

    #@b
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@e
    .line 406
    return-void
.end method

.method public register()Z
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 336
    :try_start_0
    iget-object v1, p0, Lcom/android/server/media/RemoteDisplayProviderProxy$Connection;->mProvider:Landroid/media/IRemoteDisplayProvider;

    #@3
    invoke-interface {v1}, Landroid/media/IRemoteDisplayProvider;->asBinder()Landroid/os/IBinder;

    #@6
    move-result-object v1

    #@7
    const/4 v2, 0x0

    #@8
    invoke-interface {v1, p0, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    #@b
    .line 337
    iget-object v1, p0, Lcom/android/server/media/RemoteDisplayProviderProxy$Connection;->mProvider:Landroid/media/IRemoteDisplayProvider;

    #@d
    iget-object v2, p0, Lcom/android/server/media/RemoteDisplayProviderProxy$Connection;->mCallback:Lcom/android/server/media/RemoteDisplayProviderProxy$ProviderCallback;

    #@f
    invoke-interface {v1, v2}, Landroid/media/IRemoteDisplayProvider;->setCallback(Landroid/media/IRemoteDisplayCallback;)V

    #@12
    .line 338
    iget-object v1, p0, Lcom/android/server/media/RemoteDisplayProviderProxy$Connection;->this$0:Lcom/android/server/media/RemoteDisplayProviderProxy;

    #@14
    invoke-static {v1}, Lcom/android/server/media/RemoteDisplayProviderProxy;->-get2(Lcom/android/server/media/RemoteDisplayProviderProxy;)Landroid/os/Handler;

    #@17
    move-result-object v1

    #@18
    new-instance v2, Lcom/android/server/media/RemoteDisplayProviderProxy$Connection$1;

    #@1a
    invoke-direct {v2, p0}, Lcom/android/server/media/RemoteDisplayProviderProxy$Connection$1;-><init>(Lcom/android/server/media/RemoteDisplayProviderProxy$Connection;)V

    #@1d
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@20
    .line 344
    const/4 v1, 0x1

    #@21
    return v1

    #@22
    .line 345
    :catch_0
    move-exception v0

    #@23
    .line 346
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {p0}, Lcom/android/server/media/RemoteDisplayProviderProxy$Connection;->binderDied()V

    #@26
    .line 348
    return v3
.end method

.method public setDiscoveryMode(I)V
    .locals 3
    .param p1, "mode"    # I

    #@0
    .prologue
    .line 358
    :try_start_0
    iget-object v1, p0, Lcom/android/server/media/RemoteDisplayProviderProxy$Connection;->mProvider:Landroid/media/IRemoteDisplayProvider;

    #@2
    invoke-interface {v1, p1}, Landroid/media/IRemoteDisplayProvider;->setDiscoveryMode(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 356
    :goto_0
    return-void

    #@6
    .line 359
    :catch_0
    move-exception v0

    #@7
    .line 360
    .local v0, "ex":Landroid/os/RemoteException;
    const-string/jumbo v1, "RemoteDisplayProvider"

    #@a
    const-string/jumbo v2, "Failed to deliver request to set discovery mode."

    #@d
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@10
    goto :goto_0
.end method

.method public setVolume(Ljava/lang/String;I)V
    .locals 3
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "volume"    # I

    #@0
    .prologue
    .line 382
    :try_start_0
    iget-object v1, p0, Lcom/android/server/media/RemoteDisplayProviderProxy$Connection;->mProvider:Landroid/media/IRemoteDisplayProvider;

    #@2
    invoke-interface {v1, p1, p2}, Landroid/media/IRemoteDisplayProvider;->setVolume(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 380
    :goto_0
    return-void

    #@6
    .line 383
    :catch_0
    move-exception v0

    #@7
    .line 384
    .local v0, "ex":Landroid/os/RemoteException;
    const-string/jumbo v1, "RemoteDisplayProvider"

    #@a
    const-string/jumbo v2, "Failed to deliver request to set display volume."

    #@d
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@10
    goto :goto_0
.end method

.class Landroid/service/media/MediaBrowserService$ServiceBinder;
.super Landroid/service/media/IMediaBrowserService$Stub;
.source "MediaBrowserService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/media/MediaBrowserService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ServiceBinder"
.end annotation


# instance fields
.field private final blacklist mServiceState:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/service/media/MediaBrowserService$ServiceState;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor blacklist <init>(Landroid/service/media/MediaBrowserService$ServiceState;)V
    .registers 3
    .param p1, "serviceState"    # Landroid/service/media/MediaBrowserService$ServiceState;

    .line 226
    invoke-direct {p0}, Landroid/service/media/IMediaBrowserService$Stub;-><init>()V

    .line 227
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Landroid/service/media/MediaBrowserService$ServiceBinder;->mServiceState:Ljava/util/concurrent/atomic/AtomicReference;

    .line 228
    invoke-virtual {p0, p1}, Landroid/service/media/MediaBrowserService$ServiceBinder;->setServiceState(Landroid/service/media/MediaBrowserService$ServiceState;)V

    .line 229
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/service/media/MediaBrowserService$ServiceState;Landroid/service/media/MediaBrowserService-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/service/media/MediaBrowserService$ServiceBinder;-><init>(Landroid/service/media/MediaBrowserService$ServiceState;)V

    return-void
.end method

.method static synthetic blacklist lambda$addSubscription$2(Landroid/service/media/MediaBrowserService$ServiceState;Ljava/lang/String;Landroid/service/media/IMediaBrowserServiceCallbacks;Landroid/os/IBinder;Landroid/os/Bundle;)V
    .registers 5
    .param p0, "serviceState"    # Landroid/service/media/MediaBrowserService$ServiceState;
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "callbacks"    # Landroid/service/media/IMediaBrowserServiceCallbacks;
    .param p3, "token"    # Landroid/os/IBinder;
    .param p4, "options"    # Landroid/os/Bundle;

    .line 279
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/service/media/MediaBrowserService$ServiceState;->addSubscriptionOnHandler(Ljava/lang/String;Landroid/service/media/IMediaBrowserServiceCallbacks;Landroid/os/IBinder;Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic blacklist lambda$connect$0(Landroid/service/media/MediaBrowserService$ServiceState;Ljava/lang/String;IILandroid/os/Bundle;Landroid/service/media/IMediaBrowserServiceCallbacks;)V
    .registers 6
    .param p0, "serviceState"    # Landroid/service/media/MediaBrowserService$ServiceState;
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .param p4, "rootHints"    # Landroid/os/Bundle;
    .param p5, "callbacks"    # Landroid/service/media/IMediaBrowserServiceCallbacks;

    .line 251
    invoke-virtual/range {p0 .. p5}, Landroid/service/media/MediaBrowserService$ServiceState;->connectOnHandler(Ljava/lang/String;IILandroid/os/Bundle;Landroid/service/media/IMediaBrowserServiceCallbacks;)V

    return-void
.end method

.method static synthetic blacklist lambda$disconnect$1(Landroid/service/media/MediaBrowserService$ServiceState;Landroid/service/media/IMediaBrowserServiceCallbacks;)V
    .registers 2
    .param p0, "serviceState"    # Landroid/service/media/MediaBrowserService$ServiceState;
    .param p1, "callbacks"    # Landroid/service/media/IMediaBrowserServiceCallbacks;

    .line 262
    invoke-virtual {p0, p1}, Landroid/service/media/MediaBrowserService$ServiceState;->removeConnectionRecordOnHandler(Landroid/service/media/IMediaBrowserServiceCallbacks;)V

    return-void
.end method

.method static synthetic blacklist lambda$getMediaItem$4(Landroid/service/media/MediaBrowserService$ServiceState;Ljava/lang/String;Landroid/service/media/IMediaBrowserServiceCallbacks;Landroid/os/ResultReceiver;)V
    .registers 4
    .param p0, "serviceState"    # Landroid/service/media/MediaBrowserService$ServiceState;
    .param p1, "mediaId"    # Ljava/lang/String;
    .param p2, "callbacks"    # Landroid/service/media/IMediaBrowserServiceCallbacks;
    .param p3, "receiver"    # Landroid/os/ResultReceiver;

    .line 313
    invoke-virtual {p0, p1, p2, p3}, Landroid/service/media/MediaBrowserService$ServiceState;->performLoadItemOnHandler(Ljava/lang/String;Landroid/service/media/IMediaBrowserServiceCallbacks;Landroid/os/ResultReceiver;)V

    return-void
.end method

.method static synthetic blacklist lambda$removeSubscription$3(Landroid/service/media/MediaBrowserService$ServiceState;Ljava/lang/String;Landroid/service/media/IMediaBrowserServiceCallbacks;Landroid/os/IBinder;)V
    .registers 6
    .param p0, "serviceState"    # Landroid/service/media/MediaBrowserService$ServiceState;
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "callbacks"    # Landroid/service/media/IMediaBrowserServiceCallbacks;
    .param p3, "token"    # Landroid/os/IBinder;

    .line 298
    invoke-virtual {p0, p1, p2, p3}, Landroid/service/media/MediaBrowserService$ServiceState;->removeSubscriptionOnHandler(Ljava/lang/String;Landroid/service/media/IMediaBrowserServiceCallbacks;Landroid/os/IBinder;)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 299
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "removeSubscription for id with no subscription: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaBrowserService"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    :cond_1f
    return-void
.end method


# virtual methods
.method public greylist-max-o addSubscription(Ljava/lang/String;Landroid/os/IBinder;Landroid/os/Bundle;Landroid/service/media/IMediaBrowserServiceCallbacks;)V
    .registers 12
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "options"    # Landroid/os/Bundle;
    .param p4, "callbacks"    # Landroid/service/media/IMediaBrowserServiceCallbacks;

    .line 273
    iget-object v0, p0, Landroid/service/media/MediaBrowserService$ServiceBinder;->mServiceState:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/service/media/MediaBrowserService$ServiceState;

    .line 274
    .local v2, "serviceState":Landroid/service/media/MediaBrowserService$ServiceState;
    if-nez v2, :cond_12

    .line 275
    return-void

    .line 278
    :cond_12
    new-instance v1, Landroid/service/media/MediaBrowserService$ServiceBinder$$ExternalSyntheticLambda4;

    move-object v3, p1

    move-object v5, p2

    move-object v6, p3

    move-object v4, p4

    .end local p1    # "id":Ljava/lang/String;
    .end local p2    # "token":Landroid/os/IBinder;
    .end local p3    # "options":Landroid/os/Bundle;
    .end local p4    # "callbacks":Landroid/service/media/IMediaBrowserServiceCallbacks;
    .local v3, "id":Ljava/lang/String;
    .local v4, "callbacks":Landroid/service/media/IMediaBrowserServiceCallbacks;
    .local v5, "token":Landroid/os/IBinder;
    .local v6, "options":Landroid/os/Bundle;
    invoke-direct/range {v1 .. v6}, Landroid/service/media/MediaBrowserService$ServiceBinder$$ExternalSyntheticLambda4;-><init>(Landroid/service/media/MediaBrowserService$ServiceState;Ljava/lang/String;Landroid/service/media/IMediaBrowserServiceCallbacks;Landroid/os/IBinder;Landroid/os/Bundle;)V

    invoke-virtual {v2, v1}, Landroid/service/media/MediaBrowserService$ServiceState;->postOnHandler(Ljava/lang/Runnable;)V

    .line 280
    return-void
.end method

.method public greylist-max-o addSubscriptionDeprecated(Ljava/lang/String;Landroid/service/media/IMediaBrowserServiceCallbacks;)V
    .registers 3
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "callbacks"    # Landroid/service/media/IMediaBrowserServiceCallbacks;

    .line 268
    return-void
.end method

.method public greylist-max-o connect(Ljava/lang/String;Landroid/os/Bundle;Landroid/service/media/IMediaBrowserServiceCallbacks;)V
    .registers 12
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "rootHints"    # Landroid/os/Bundle;
    .param p3, "callbacks"    # Landroid/service/media/IMediaBrowserServiceCallbacks;

    .line 238
    iget-object v0, p0, Landroid/service/media/MediaBrowserService$ServiceBinder;->mServiceState:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/service/media/MediaBrowserService$ServiceState;

    .line 239
    .local v2, "serviceState":Landroid/service/media/MediaBrowserService$ServiceState;
    if-nez v2, :cond_12

    .line 240
    return-void

    .line 243
    :cond_12
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    .line 244
    .local v4, "pid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 245
    .local v5, "uid":I
    invoke-virtual {v2, p1, v5}, Landroid/service/media/MediaBrowserService$ServiceState;->isValidPackage(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 250
    new-instance v1, Landroid/service/media/MediaBrowserService$ServiceBinder$$ExternalSyntheticLambda1;

    move-object v3, p1

    move-object v6, p2

    move-object v7, p3

    .end local p1    # "pkg":Ljava/lang/String;
    .end local p2    # "rootHints":Landroid/os/Bundle;
    .end local p3    # "callbacks":Landroid/service/media/IMediaBrowserServiceCallbacks;
    .local v3, "pkg":Ljava/lang/String;
    .local v6, "rootHints":Landroid/os/Bundle;
    .local v7, "callbacks":Landroid/service/media/IMediaBrowserServiceCallbacks;
    invoke-direct/range {v1 .. v7}, Landroid/service/media/MediaBrowserService$ServiceBinder$$ExternalSyntheticLambda1;-><init>(Landroid/service/media/MediaBrowserService$ServiceState;Ljava/lang/String;IILandroid/os/Bundle;Landroid/service/media/IMediaBrowserServiceCallbacks;)V

    invoke-virtual {v2, v1}, Landroid/service/media/MediaBrowserService$ServiceState;->postOnHandler(Ljava/lang/Runnable;)V

    .line 252
    return-void

    .line 246
    .end local v3    # "pkg":Ljava/lang/String;
    .end local v6    # "rootHints":Landroid/os/Bundle;
    .end local v7    # "callbacks":Landroid/service/media/IMediaBrowserServiceCallbacks;
    .restart local p1    # "pkg":Ljava/lang/String;
    .restart local p2    # "rootHints":Landroid/os/Bundle;
    .restart local p3    # "callbacks":Landroid/service/media/IMediaBrowserServiceCallbacks;
    :cond_2c
    move-object v3, p1

    move-object v6, p2

    move-object v7, p3

    .end local p1    # "pkg":Ljava/lang/String;
    .end local p2    # "rootHints":Landroid/os/Bundle;
    .end local p3    # "callbacks":Landroid/service/media/IMediaBrowserServiceCallbacks;
    .restart local v3    # "pkg":Ljava/lang/String;
    .restart local v6    # "rootHints":Landroid/os/Bundle;
    .restart local v7    # "callbacks":Landroid/service/media/IMediaBrowserServiceCallbacks;
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Package/uid mismatch: uid="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, " package="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public greylist-max-o disconnect(Landroid/service/media/IMediaBrowserServiceCallbacks;)V
    .registers 4
    .param p1, "callbacks"    # Landroid/service/media/IMediaBrowserServiceCallbacks;

    .line 256
    iget-object v0, p0, Landroid/service/media/MediaBrowserService$ServiceBinder;->mServiceState:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/media/MediaBrowserService$ServiceState;

    .line 257
    .local v0, "serviceState":Landroid/service/media/MediaBrowserService$ServiceState;
    if-nez v0, :cond_11

    .line 258
    return-void

    .line 261
    :cond_11
    new-instance v1, Landroid/service/media/MediaBrowserService$ServiceBinder$$ExternalSyntheticLambda3;

    invoke-direct {v1, v0, p1}, Landroid/service/media/MediaBrowserService$ServiceBinder$$ExternalSyntheticLambda3;-><init>(Landroid/service/media/MediaBrowserService$ServiceState;Landroid/service/media/IMediaBrowserServiceCallbacks;)V

    invoke-virtual {v0, v1}, Landroid/service/media/MediaBrowserService$ServiceState;->postOnHandler(Ljava/lang/Runnable;)V

    .line 263
    return-void
.end method

.method public greylist-max-o getMediaItem(Ljava/lang/String;Landroid/os/ResultReceiver;Landroid/service/media/IMediaBrowserServiceCallbacks;)V
    .registers 6
    .param p1, "mediaId"    # Ljava/lang/String;
    .param p2, "receiver"    # Landroid/os/ResultReceiver;
    .param p3, "callbacks"    # Landroid/service/media/IMediaBrowserServiceCallbacks;

    .line 307
    iget-object v0, p0, Landroid/service/media/MediaBrowserService$ServiceBinder;->mServiceState:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/media/MediaBrowserService$ServiceState;

    .line 308
    .local v0, "serviceState":Landroid/service/media/MediaBrowserService$ServiceState;
    if-nez v0, :cond_11

    .line 309
    return-void

    .line 312
    :cond_11
    new-instance v1, Landroid/service/media/MediaBrowserService$ServiceBinder$$ExternalSyntheticLambda2;

    invoke-direct {v1, v0, p1, p3, p2}, Landroid/service/media/MediaBrowserService$ServiceBinder$$ExternalSyntheticLambda2;-><init>(Landroid/service/media/MediaBrowserService$ServiceState;Ljava/lang/String;Landroid/service/media/IMediaBrowserServiceCallbacks;Landroid/os/ResultReceiver;)V

    invoke-virtual {v0, v1}, Landroid/service/media/MediaBrowserService$ServiceState;->postOnHandler(Ljava/lang/Runnable;)V

    .line 314
    return-void
.end method

.method public greylist-max-o removeSubscription(Ljava/lang/String;Landroid/os/IBinder;Landroid/service/media/IMediaBrowserServiceCallbacks;)V
    .registers 6
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "callbacks"    # Landroid/service/media/IMediaBrowserServiceCallbacks;

    .line 291
    iget-object v0, p0, Landroid/service/media/MediaBrowserService$ServiceBinder;->mServiceState:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/media/MediaBrowserService$ServiceState;

    .line 292
    .local v0, "serviceState":Landroid/service/media/MediaBrowserService$ServiceState;
    if-nez v0, :cond_11

    .line 293
    return-void

    .line 296
    :cond_11
    new-instance v1, Landroid/service/media/MediaBrowserService$ServiceBinder$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0, p1, p3, p2}, Landroid/service/media/MediaBrowserService$ServiceBinder$$ExternalSyntheticLambda0;-><init>(Landroid/service/media/MediaBrowserService$ServiceState;Ljava/lang/String;Landroid/service/media/IMediaBrowserServiceCallbacks;Landroid/os/IBinder;)V

    invoke-virtual {v0, v1}, Landroid/service/media/MediaBrowserService$ServiceState;->postOnHandler(Ljava/lang/Runnable;)V

    .line 302
    return-void
.end method

.method public greylist-max-o removeSubscriptionDeprecated(Ljava/lang/String;Landroid/service/media/IMediaBrowserServiceCallbacks;)V
    .registers 3
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "callbacks"    # Landroid/service/media/IMediaBrowserServiceCallbacks;

    .line 286
    return-void
.end method

.method public blacklist setServiceState(Landroid/service/media/MediaBrowserService$ServiceState;)V
    .registers 4
    .param p1, "serviceState"    # Landroid/service/media/MediaBrowserService$ServiceState;

    .line 232
    iget-object v0, p0, Landroid/service/media/MediaBrowserService$ServiceBinder;->mServiceState:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 233
    return-void
.end method

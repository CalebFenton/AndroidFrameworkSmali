.class final Landroid/media/MediaSession2Service$MediaSession2ServiceStub;
.super Landroid/media/IMediaSession2Service$Stub;
.source "MediaSession2Service.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaSession2Service;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MediaSession2ServiceStub"
.end annotation


# instance fields
.field final blacklist mHandler:Landroid/os/Handler;

.field final blacklist mService:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/media/MediaSession2Service;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic blacklist $r8$lambda$bNbLbED8AgSvfGQVi08tRnLg0AI(Landroid/media/MediaSession2Service$MediaSession2ServiceStub;Landroid/os/Bundle;IILandroid/media/Controller2Link;I)V
    .registers 6

    .line 0
    invoke-direct/range {p0 .. p5}, Landroid/media/MediaSession2Service$MediaSession2ServiceStub;->lambda$connect$0(Landroid/os/Bundle;IILandroid/media/Controller2Link;I)V

    return-void
.end method

.method constructor blacklist <init>(Landroid/media/MediaSession2Service;)V
    .registers 3

    .line 344
    invoke-direct {p0}, Landroid/media/IMediaSession2Service$Stub;-><init>()V

    .line 345
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/media/MediaSession2Service$MediaSession2ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    .line 346
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/app/Service;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/media/MediaSession2Service$MediaSession2ServiceStub;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private synthetic blacklist lambda$connect$0(Landroid/os/Bundle;IILandroid/media/Controller2Link;I)V
    .registers 17

    .line 369
    const-string v1, "Notifying the controller of its disconnection"

    const-string v2, "MediaSession2Service"

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 371
    :try_start_6
    iget-object p0, p0, Landroid/media/MediaSession2Service$MediaSession2ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/MediaSession2Service;

    if-nez p0, :cond_31

    .line 373
    invoke-static {}, Landroid/media/MediaSession2Service;->-$$Nest$sfgetDEBUG()Z

    move-result p0

    if-eqz p0, :cond_24

    .line 374
    const-string p0, "Service isn\'t available"

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_1b} :catch_20
    .catchall {:try_start_6 .. :try_end_1b} :catchall_1c

    goto :goto_24

    :catchall_1c
    move-exception v0

    move-object p0, v0

    goto/16 :goto_df

    :catch_20
    move-exception v0

    move-object p0, v0

    goto/16 :goto_cb

    .line 429
    :cond_24
    :goto_24
    invoke-static {}, Landroid/media/MediaSession2Service;->-$$Nest$sfgetDEBUG()Z

    move-result p0

    if-eqz p0, :cond_2d

    .line 430
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    :cond_2d
    :try_start_2d
    invoke-virtual {p4, v3}, Landroid/media/Controller2Link;->notifyDisconnected(I)V
    :try_end_30
    .catch Ljava/lang/RuntimeException; {:try_start_2d .. :try_end_30} :catch_de

    return-void

    .line 379
    :cond_31
    :try_start_31
    const-string v0, "android.media.key.PACKAGE_NAME"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 382
    new-instance v5, Landroid/media/session/MediaSessionManager$RemoteUserInfo;

    if-nez p2, :cond_42

    .line 384
    const-string v6, "android.media.key.PID"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    goto :goto_43

    :cond_42
    move v6, p2

    :goto_43
    invoke-direct {v5, v0, v6, p3}, Landroid/media/session/MediaSessionManager$RemoteUserInfo;-><init>(Ljava/lang/String;II)V

    .line 387
    const-string v0, "android.media.key.CONNECTION_HINTS"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_56

    .line 389
    const-string v0, "connectionHints shouldn\'t be null."

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    goto :goto_63

    .line 391
    :cond_56
    invoke-static {v0}, Landroid/media/MediaSession2;->hasCustomParcelable(Landroid/os/Bundle;)Z

    move-result v6

    if-eqz v6, :cond_63

    .line 392
    const-string v0, "connectionHints contain custom parcelable. Ignoring."

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    .line 396
    :cond_63
    :goto_63
    new-instance v6, Landroid/media/MediaSession2$ControllerInfo;

    .line 398
    invoke-virtual {p0}, Landroid/media/MediaSession2Service;->getMediaSessionManager()Landroid/media/session/MediaSessionManager;

    move-result-object v7

    .line 399
    invoke-virtual {v7, v5}, Landroid/media/session/MediaSessionManager;->isTrustedForMediaControl(Landroid/media/session/MediaSessionManager$RemoteUserInfo;)Z

    move-result v7

    invoke-direct {v6, v5, v7, p4, v0}, Landroid/media/MediaSession2$ControllerInfo;-><init>(Landroid/media/session/MediaSessionManager$RemoteUserInfo;ZLandroid/media/Controller2Link;Landroid/os/Bundle;)V

    .line 403
    invoke-static {}, Landroid/media/MediaSession2Service;->-$$Nest$sfgetDEBUG()Z

    move-result v0

    if-eqz v0, :cond_8a

    .line 404
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Handling incoming connection request from the controller="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    :cond_8a
    invoke-virtual {p0, v6}, Landroid/media/MediaSession2Service;->onGetSession(Landroid/media/MediaSession2$ControllerInfo;)Landroid/media/MediaSession2;

    move-result-object v5

    if-nez v5, :cond_b7

    .line 412
    invoke-static {}, Landroid/media/MediaSession2Service;->-$$Nest$sfgetDEBUG()Z

    move-result p0

    if-eqz p0, :cond_aa

    .line 413
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Rejecting incoming connection request from the controller="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_aa
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_aa} :catch_20
    .catchall {:try_start_31 .. :try_end_aa} :catchall_1c

    .line 429
    :cond_aa
    invoke-static {}, Landroid/media/MediaSession2Service;->-$$Nest$sfgetDEBUG()Z

    move-result p0

    if-eqz p0, :cond_b3

    .line 430
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    :cond_b3
    :try_start_b3
    invoke-virtual {p4, v3}, Landroid/media/Controller2Link;->notifyDisconnected(I)V
    :try_end_b6
    .catch Ljava/lang/RuntimeException; {:try_start_b3 .. :try_end_b6} :catch_de

    return-void

    .line 420
    :cond_b7
    :try_start_b7
    invoke-virtual {p0, v5}, Landroid/media/MediaSession2Service;->addSession(Landroid/media/MediaSession2;)V
    :try_end_ba
    .catch Ljava/lang/Exception; {:try_start_b7 .. :try_end_ba} :catch_20
    .catchall {:try_start_b7 .. :try_end_ba} :catchall_1c

    move-object v10, p1

    move v7, p2

    move v8, p3

    move-object v6, p4

    move/from16 v9, p5

    .line 422
    :try_start_c0
    invoke-virtual/range {v5 .. v10}, Landroid/media/MediaSession2;->onConnect(Landroid/media/Controller2Link;IIILandroid/os/Bundle;)V
    :try_end_c3
    .catch Ljava/lang/Exception; {:try_start_c0 .. :try_end_c3} :catch_c8
    .catchall {:try_start_c0 .. :try_end_c3} :catchall_c4

    return-void

    :catchall_c4
    move-exception v0

    move-object p0, v0

    move v4, v3

    goto :goto_df

    :catch_c8
    move-exception v0

    move-object p0, v0

    move v4, v3

    .line 425
    :goto_cb
    :try_start_cb
    const-string p1, "Failed to add a session to session service"

    invoke-static {v2, p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_d0
    .catchall {:try_start_cb .. :try_end_d0} :catchall_1c

    if-eqz v4, :cond_de

    .line 429
    invoke-static {}, Landroid/media/MediaSession2Service;->-$$Nest$sfgetDEBUG()Z

    move-result p0

    if-eqz p0, :cond_db

    .line 430
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    :cond_db
    :try_start_db
    invoke-virtual {p4, v3}, Landroid/media/Controller2Link;->notifyDisconnected(I)V
    :try_end_de
    .catch Ljava/lang/RuntimeException; {:try_start_db .. :try_end_de} :catch_de

    :catch_de
    :cond_de
    return-void

    :goto_df
    if-eqz v4, :cond_ed

    .line 429
    invoke-static {}, Landroid/media/MediaSession2Service;->-$$Nest$sfgetDEBUG()Z

    move-result p1

    if-eqz p1, :cond_ea

    .line 430
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    :cond_ea
    :try_start_ea
    invoke-virtual {p4, v3}, Landroid/media/Controller2Link;->notifyDisconnected(I)V
    :try_end_ed
    .catch Ljava/lang/RuntimeException; {:try_start_ea .. :try_end_ed} :catch_ed

    .line 439
    :catch_ed
    :cond_ed
    throw p0
.end method


# virtual methods
.method public whitelist test-api close()V
    .registers 3

    .line 448
    iget-object v0, p0, Landroid/media/MediaSession2Service$MediaSession2ServiceStub;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 449
    iget-object p0, p0, Landroid/media/MediaSession2Service$MediaSession2ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->clear()V

    return-void
.end method

.method public blacklist connect(Landroid/media/Controller2Link;ILandroid/os/Bundle;)V
    .registers 15

    .line 351
    iget-object v0, p0, Landroid/media/MediaSession2Service$MediaSession2ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "MediaSession2Service"

    if-nez v0, :cond_16

    .line 352
    invoke-static {}, Landroid/media/MediaSession2Service;->-$$Nest$sfgetDEBUG()Z

    move-result p0

    if-eqz p0, :cond_63

    .line 353
    const-string p0, "Service is already destroyed"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_16
    if-eqz p1, :cond_1a

    if-nez p3, :cond_1d

    :cond_1a
    move-object v7, p1

    move-object v4, p3

    goto :goto_41

    .line 364
    :cond_1d
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    .line 365
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    .line 366
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v9

    .line 368
    :try_start_29
    iget-object v0, p0, Landroid/media/MediaSession2Service$MediaSession2ServiceStub;->mHandler:Landroid/os/Handler;

    new-instance v2, Landroid/media/MediaSession2Service$MediaSession2ServiceStub$$ExternalSyntheticLambda0;

    move-object v3, p0

    move-object v7, p1

    move v8, p2

    move-object v4, p3

    invoke-direct/range {v2 .. v8}, Landroid/media/MediaSession2Service$MediaSession2ServiceStub$$ExternalSyntheticLambda0;-><init>(Landroid/media/MediaSession2Service$MediaSession2ServiceStub;Landroid/os/Bundle;IILandroid/media/Controller2Link;I)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_37
    .catchall {:try_start_29 .. :try_end_37} :catchall_3b

    .line 442
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_3b
    move-exception v0

    move-object p0, v0

    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 443
    throw p0

    .line 358
    :goto_41
    invoke-static {}, Landroid/media/MediaSession2Service;->-$$Nest$sfgetDEBUG()Z

    move-result p0

    if-eqz p0, :cond_63

    .line 359
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Ignoring calls with illegal arguments, caller="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", connectionRequest="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_63
    return-void
.end method

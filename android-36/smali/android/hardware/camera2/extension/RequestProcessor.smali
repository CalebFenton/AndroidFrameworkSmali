.class public final Landroid/hardware/camera2/extension/RequestProcessor;
.super Ljava/lang/Object;
.source "RequestProcessor.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/camera2/extension/RequestProcessor$Request;,
        Landroid/hardware/camera2/extension/RequestProcessor$RequestCallbackImpl;,
        Landroid/hardware/camera2/extension/RequestProcessor$RequestCallback;
    }
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "RequestProcessor"


# instance fields
.field private final blacklist mRequestProcessor:Landroid/hardware/camera2/extension/IRequestProcessorImpl;

.field private final blacklist mVendorId:J


# direct methods
.method constructor blacklist <init>(Landroid/hardware/camera2/extension/IRequestProcessorImpl;J)V
    .registers 4
    .param p1, "requestProcessor"    # Landroid/hardware/camera2/extension/IRequestProcessorImpl;
    .param p2, "vendorId"    # J

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Landroid/hardware/camera2/extension/RequestProcessor;->mRequestProcessor:Landroid/hardware/camera2/extension/IRequestProcessorImpl;

    .line 55
    iput-wide p2, p0, Landroid/hardware/camera2/extension/RequestProcessor;->mVendorId:J

    .line 56
    return-void
.end method


# virtual methods
.method public whitelist abortCaptures()V
    .registers 3

    .line 400
    :try_start_0
    iget-object v0, p0, Landroid/hardware/camera2/extension/RequestProcessor;->mRequestProcessor:Landroid/hardware/camera2/extension/IRequestProcessorImpl;

    invoke-interface {v0}, Landroid/hardware/camera2/extension/IRequestProcessorImpl;->abortCaptures()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 403
    nop

    .line 404
    return-void

    .line 401
    :catch_7
    move-exception v0

    .line 402
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public whitelist setRepeating(Landroid/hardware/camera2/extension/RequestProcessor$Request;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/extension/RequestProcessor$RequestCallback;)I
    .registers 10
    .param p1, "request"    # Landroid/hardware/camera2/extension/RequestProcessor$Request;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "callback"    # Landroid/hardware/camera2/extension/RequestProcessor$RequestCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 374
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 375
    .local v0, "requests":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/camera2/extension/RequestProcessor$Request;>;"
    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 376
    iget-wide v2, p0, Landroid/hardware/camera2/extension/RequestProcessor;->mVendorId:J

    .line 377
    invoke-static {v2, v3, v0}, Landroid/hardware/camera2/extension/RequestProcessor$Request;->initializeParcelable(JLjava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 379
    .local v2, "parcelableRequests":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/extension/Request;>;"
    const/4 v3, -0x1

    .line 381
    .local v3, "ret":I
    :try_start_11
    iget-object v4, p0, Landroid/hardware/camera2/extension/RequestProcessor;->mRequestProcessor:Landroid/hardware/camera2/extension/IRequestProcessorImpl;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/camera2/extension/Request;

    new-instance v5, Landroid/hardware/camera2/extension/RequestProcessor$RequestCallbackImpl;

    invoke-direct {v5, v0, p3, p2}, Landroid/hardware/camera2/extension/RequestProcessor$RequestCallbackImpl;-><init>(Ljava/util/List;Landroid/hardware/camera2/extension/RequestProcessor$RequestCallback;Ljava/util/concurrent/Executor;)V

    invoke-interface {v4, v1, v5}, Landroid/hardware/camera2/extension/IRequestProcessorImpl;->setRepeating(Landroid/hardware/camera2/extension/Request;Landroid/hardware/camera2/extension/IRequestCallback;)I

    move-result v1
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_22} :catch_30

    .line 385
    .end local v3    # "ret":I
    .local v1, "ret":I
    nop

    .line 386
    const/4 v3, -0x1

    if-eq v1, v3, :cond_27

    .line 392
    return v1

    .line 387
    :cond_27
    new-instance v3, Landroid/hardware/camera2/CameraAccessException;

    const/4 v4, 0x3

    const-string v5, "Failed to set the repeating request"

    invoke-direct {v3, v4, v5}, Landroid/hardware/camera2/CameraAccessException;-><init>(ILjava/lang/String;)V

    throw v3

    .line 383
    .end local v1    # "ret":I
    .restart local v3    # "ret":I
    :catch_30
    move-exception v1

    .line 384
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4
.end method

.method public whitelist stopRepeating()V
    .registers 3

    .line 411
    :try_start_0
    iget-object v0, p0, Landroid/hardware/camera2/extension/RequestProcessor;->mRequestProcessor:Landroid/hardware/camera2/extension/IRequestProcessorImpl;

    invoke-interface {v0}, Landroid/hardware/camera2/extension/IRequestProcessorImpl;->stopRepeating()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 414
    nop

    .line 415
    return-void

    .line 412
    :catch_7
    move-exception v0

    .line 413
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public whitelist submit(Landroid/hardware/camera2/extension/RequestProcessor$Request;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/extension/RequestProcessor$RequestCallback;)I
    .registers 10
    .param p1, "request"    # Landroid/hardware/camera2/extension/RequestProcessor$Request;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "callback"    # Landroid/hardware/camera2/extension/RequestProcessor$RequestCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 312
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 313
    .local v0, "requests":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/camera2/extension/RequestProcessor$Request;>;"
    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 314
    iget-wide v2, p0, Landroid/hardware/camera2/extension/RequestProcessor;->mVendorId:J

    .line 315
    invoke-static {v2, v3, v0}, Landroid/hardware/camera2/extension/RequestProcessor$Request;->initializeParcelable(JLjava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 317
    .local v2, "parcelableRequests":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/extension/Request;>;"
    const/4 v3, -0x1

    .line 319
    .local v3, "ret":I
    :try_start_11
    iget-object v4, p0, Landroid/hardware/camera2/extension/RequestProcessor;->mRequestProcessor:Landroid/hardware/camera2/extension/IRequestProcessorImpl;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/camera2/extension/Request;

    new-instance v5, Landroid/hardware/camera2/extension/RequestProcessor$RequestCallbackImpl;

    invoke-direct {v5, v0, p3, p2}, Landroid/hardware/camera2/extension/RequestProcessor$RequestCallbackImpl;-><init>(Ljava/util/List;Landroid/hardware/camera2/extension/RequestProcessor$RequestCallback;Ljava/util/concurrent/Executor;)V

    invoke-interface {v4, v1, v5}, Landroid/hardware/camera2/extension/IRequestProcessorImpl;->submit(Landroid/hardware/camera2/extension/Request;Landroid/hardware/camera2/extension/IRequestCallback;)I

    move-result v1
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_22} :catch_30

    .line 323
    .end local v3    # "ret":I
    .local v1, "ret":I
    nop

    .line 325
    const/4 v3, -0x1

    if-eq v1, v3, :cond_27

    .line 330
    return v1

    .line 326
    :cond_27
    new-instance v3, Landroid/hardware/camera2/CameraAccessException;

    const/4 v4, 0x3

    const-string v5, "Failed to submit capture request"

    invoke-direct {v3, v4, v5}, Landroid/hardware/camera2/CameraAccessException;-><init>(ILjava/lang/String;)V

    throw v3

    .line 321
    .end local v1    # "ret":I
    .restart local v3    # "ret":I
    :catch_30
    move-exception v1

    .line 322
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4
.end method

.method public whitelist submitBurst(Ljava/util/List;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/extension/RequestProcessor$RequestCallback;)I
    .registers 9
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "callback"    # Landroid/hardware/camera2/extension/RequestProcessor$RequestCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/extension/RequestProcessor$Request;",
            ">;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/hardware/camera2/extension/RequestProcessor$RequestCallback;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 344
    .local p1, "requests":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/extension/RequestProcessor$Request;>;"
    iget-wide v0, p0, Landroid/hardware/camera2/extension/RequestProcessor;->mVendorId:J

    .line 345
    invoke-static {v0, v1, p1}, Landroid/hardware/camera2/extension/RequestProcessor$Request;->initializeParcelable(JLjava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 347
    .local v0, "parcelableRequests":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/extension/Request;>;"
    const/4 v1, -0x1

    .line 349
    .local v1, "ret":I
    :try_start_7
    iget-object v2, p0, Landroid/hardware/camera2/extension/RequestProcessor;->mRequestProcessor:Landroid/hardware/camera2/extension/IRequestProcessorImpl;

    new-instance v3, Landroid/hardware/camera2/extension/RequestProcessor$RequestCallbackImpl;

    invoke-direct {v3, p1, p3, p2}, Landroid/hardware/camera2/extension/RequestProcessor$RequestCallbackImpl;-><init>(Ljava/util/List;Landroid/hardware/camera2/extension/RequestProcessor$RequestCallback;Ljava/util/concurrent/Executor;)V

    invoke-interface {v2, v0, v3}, Landroid/hardware/camera2/extension/IRequestProcessorImpl;->submitBurst(Ljava/util/List;Landroid/hardware/camera2/extension/IRequestCallback;)I

    move-result v2
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_12} :catch_20

    .line 353
    .end local v1    # "ret":I
    .local v2, "ret":I
    nop

    .line 355
    const/4 v1, -0x1

    if-eq v2, v1, :cond_17

    .line 360
    return v2

    .line 356
    :cond_17
    new-instance v1, Landroid/hardware/camera2/CameraAccessException;

    const/4 v3, 0x3

    const-string v4, "Failed to submit burst request"

    invoke-direct {v1, v3, v4}, Landroid/hardware/camera2/CameraAccessException;-><init>(ILjava/lang/String;)V

    throw v1

    .line 351
    .end local v2    # "ret":I
    .restart local v1    # "ret":I
    :catch_20
    move-exception v2

    .line 352
    .local v2, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

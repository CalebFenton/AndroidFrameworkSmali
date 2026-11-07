.class public abstract Landroid/app/job/JobServiceEngine;
.super Ljava/lang/Object;
.source "JobServiceEngine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/job/JobServiceEngine$JobInterface;,
        Landroid/app/job/JobServiceEngine$JobHandler;
    }
.end annotation


# static fields
.field private static final greylist-max-o MSG_EXECUTE_JOB:I = 0x0

.field private static final blacklist MSG_GET_TRANSFERRED_DOWNLOAD_BYTES:I = 0x3

.field private static final blacklist MSG_GET_TRANSFERRED_UPLOAD_BYTES:I = 0x4

.field private static final blacklist MSG_INFORM_OF_NETWORK_CHANGE:I = 0x8

.field private static final greylist-max-o MSG_JOB_FINISHED:I = 0x2

.field private static final blacklist MSG_SET_NOTIFICATION:I = 0x7

.field private static final greylist-max-o MSG_STOP_JOB:I = 0x1

.field private static final blacklist MSG_UPDATE_ESTIMATED_NETWORK_BYTES:I = 0x6

.field private static final blacklist MSG_UPDATE_TRANSFERRED_NETWORK_BYTES:I = 0x5

.field private static final greylist-max-o TAG:Ljava/lang/String; = "JobServiceEngine"


# instance fields
.field private final greylist-max-o mBinder:Landroid/app/job/IJobService;

.field greylist-max-o mHandler:Landroid/app/job/JobServiceEngine$JobHandler;


# direct methods
.method public constructor whitelist <init>(Landroid/app/Service;)V
    .registers 4
    .param p1, "service"    # Landroid/app/Service;

    .line 377
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 378
    new-instance v0, Landroid/app/job/JobServiceEngine$JobInterface;

    invoke-direct {v0, p0}, Landroid/app/job/JobServiceEngine$JobInterface;-><init>(Landroid/app/job/JobServiceEngine;)V

    iput-object v0, p0, Landroid/app/job/JobServiceEngine;->mBinder:Landroid/app/job/IJobService;

    .line 379
    new-instance v0, Landroid/app/job/JobServiceEngine$JobHandler;

    invoke-virtual {p1}, Landroid/app/Service;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/app/job/JobServiceEngine$JobHandler;-><init>(Landroid/app/job/JobServiceEngine;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/app/job/JobServiceEngine;->mHandler:Landroid/app/job/JobServiceEngine$JobHandler;

    .line 380
    return-void
.end method


# virtual methods
.method public final whitelist getBinder()Landroid/os/IBinder;
    .registers 2

    .line 387
    iget-object v0, p0, Landroid/app/job/JobServiceEngine;->mBinder:Landroid/app/job/IJobService;

    invoke-interface {v0}, Landroid/app/job/IJobService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getTransferredDownloadBytes(Landroid/app/job/JobParameters;Landroid/app/job/JobWorkItem;)J
    .registers 5
    .param p1, "params"    # Landroid/app/job/JobParameters;
    .param p2, "item"    # Landroid/app/job/JobWorkItem;

    .line 433
    const-wide/32 v0, 0xf38aa29

    invoke-static {v0, v1}, Landroid/compat/Compatibility;->isChangeEnabled(J)Z

    move-result v0

    if-nez v0, :cond_c

    .line 436
    const-wide/16 v0, 0x0

    return-wide v0

    .line 434
    :cond_c
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not implemented. Must override in a subclass."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist getTransferredUploadBytes(Landroid/app/job/JobParameters;Landroid/app/job/JobWorkItem;)J
    .registers 5
    .param p1, "params"    # Landroid/app/job/JobParameters;
    .param p2, "item"    # Landroid/app/job/JobWorkItem;

    .line 448
    const-wide/32 v0, 0xf38aa29

    invoke-static {v0, v1}, Landroid/compat/Compatibility;->isChangeEnabled(J)Z

    move-result v0

    if-nez v0, :cond_c

    .line 451
    const-wide/16 v0, 0x0

    return-wide v0

    .line 449
    :cond_c
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not implemented. Must override in a subclass."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist jobFinished(Landroid/app/job/JobParameters;Z)V
    .registers 5
    .param p1, "params"    # Landroid/app/job/JobParameters;
    .param p2, "needsReschedule"    # Z

    .line 407
    if-eqz p1, :cond_f

    .line 410
    iget-object v0, p0, Landroid/app/job/JobServiceEngine;->mHandler:Landroid/app/job/JobServiceEngine$JobHandler;

    const/4 v1, 0x2

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 411
    .local v0, "m":Landroid/os/Message;
    iput p2, v0, Landroid/os/Message;->arg2:I

    .line 412
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 413
    return-void

    .line 408
    .end local v0    # "m":Landroid/os/Message;
    :cond_f
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "params"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist onNetworkChanged(Landroid/app/job/JobParameters;)V
    .registers 4
    .param p1, "params"    # Landroid/app/job/JobParameters;

    .line 421
    const-string v0, "JobServiceEngine"

    const-string/jumbo v1, "onNetworkChanged() not implemented. Must override in a subclass."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    return-void
.end method

.method public abstract whitelist onStartJob(Landroid/app/job/JobParameters;)Z
.end method

.method public abstract whitelist onStopJob(Landroid/app/job/JobParameters;)Z
.end method

.method public whitelist setNotification(Landroid/app/job/JobParameters;ILandroid/app/Notification;I)V
    .registers 8
    .param p1, "params"    # Landroid/app/job/JobParameters;
    .param p2, "notificationId"    # I
    .param p3, "notification"    # Landroid/app/Notification;
    .param p4, "jobEndNotificationPolicy"    # I

    .line 502
    if-eqz p1, :cond_24

    .line 505
    if-eqz p3, :cond_1b

    .line 508
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 509
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 510
    iput-object p3, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 511
    iput p2, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 512
    iput p4, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 513
    iget-object v1, p0, Landroid/app/job/JobServiceEngine;->mHandler:Landroid/app/job/JobServiceEngine$JobHandler;

    const/4 v2, 0x7

    invoke-virtual {v1, v2, v0}, Landroid/app/job/JobServiceEngine$JobHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 514
    return-void

    .line 506
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :cond_1b
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "notification"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 503
    :cond_24
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "params"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist updateEstimatedNetworkBytes(Landroid/app/job/JobParameters;Landroid/app/job/JobWorkItem;JJ)V
    .registers 10
    .param p1, "params"    # Landroid/app/job/JobParameters;
    .param p2, "item"    # Landroid/app/job/JobWorkItem;
    .param p3, "downloadBytes"    # J
    .param p5, "uploadBytes"    # J

    .line 483
    if-eqz p1, :cond_19

    .line 486
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 487
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 488
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 489
    iput-wide p3, v0, Lcom/android/internal/os/SomeArgs;->argl1:J

    .line 490
    iput-wide p5, v0, Lcom/android/internal/os/SomeArgs;->argl2:J

    .line 491
    iget-object v1, p0, Landroid/app/job/JobServiceEngine;->mHandler:Landroid/app/job/JobServiceEngine$JobHandler;

    const/4 v2, 0x6

    invoke-virtual {v1, v2, v0}, Landroid/app/job/JobServiceEngine$JobHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 492
    return-void

    .line 484
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :cond_19
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "params"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist updateTransferredNetworkBytes(Landroid/app/job/JobParameters;Landroid/app/job/JobWorkItem;JJ)V
    .registers 10
    .param p1, "params"    # Landroid/app/job/JobParameters;
    .param p2, "item"    # Landroid/app/job/JobWorkItem;
    .param p3, "downloadBytes"    # J
    .param p5, "uploadBytes"    # J

    .line 463
    if-eqz p1, :cond_19

    .line 466
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 467
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 468
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 469
    iput-wide p3, v0, Lcom/android/internal/os/SomeArgs;->argl1:J

    .line 470
    iput-wide p5, v0, Lcom/android/internal/os/SomeArgs;->argl2:J

    .line 471
    iget-object v1, p0, Landroid/app/job/JobServiceEngine;->mHandler:Landroid/app/job/JobServiceEngine$JobHandler;

    const/4 v2, 0x5

    invoke-virtual {v1, v2, v0}, Landroid/app/job/JobServiceEngine$JobHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 472
    return-void

    .line 464
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :cond_19
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "params"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

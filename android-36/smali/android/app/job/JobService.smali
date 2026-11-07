.class public abstract Landroid/app/job/JobService;
.super Landroid/app/Service;
.source "JobService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/job/JobService$JobEndNotificationPolicy;
    }
.end annotation


# static fields
.field public static final whitelist JOB_END_NOTIFICATION_POLICY_DETACH:I = 0x0

.field public static final whitelist JOB_END_NOTIFICATION_POLICY_REMOVE:I = 0x1

.field public static final whitelist PERMISSION_BIND:Ljava/lang/String; = "android.permission.BIND_JOB_SERVICE"

.field private static final greylist-max-o TAG:Ljava/lang/String; = "JobService"


# instance fields
.field private greylist-max-o mEngine:Landroid/app/job/JobServiceEngine;


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 69
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist getTransferredDownloadBytes(Landroid/app/job/JobParameters;)J
    .registers 4
    .param p1, "params"    # Landroid/app/job/JobParameters;

    .line 346
    const-wide/32 v0, 0xf38aa29

    invoke-static {v0, v1}, Landroid/compat/Compatibility;->isChangeEnabled(J)Z

    move-result v0

    if-nez v0, :cond_c

    .line 351
    const-wide/16 v0, 0x0

    return-wide v0

    .line 349
    :cond_c
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not implemented. Must override in a subclass."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist getTransferredDownloadBytes(Landroid/app/job/JobParameters;Landroid/app/job/JobWorkItem;)J
    .registers 5
    .param p1, "params"    # Landroid/app/job/JobParameters;
    .param p2, "item"    # Landroid/app/job/JobWorkItem;

    .line 397
    if-nez p2, :cond_7

    .line 398
    invoke-virtual {p0, p1}, Landroid/app/job/JobService;->getTransferredDownloadBytes(Landroid/app/job/JobParameters;)J

    move-result-wide v0

    return-wide v0

    .line 400
    :cond_7
    const-wide/32 v0, 0xf38aa29

    invoke-static {v0, v1}, Landroid/compat/Compatibility;->isChangeEnabled(J)Z

    move-result v0

    if-nez v0, :cond_13

    .line 405
    const-wide/16 v0, 0x0

    return-wide v0

    .line 403
    :cond_13
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not implemented. Must override in a subclass."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist getTransferredUploadBytes(Landroid/app/job/JobParameters;)J
    .registers 4
    .param p1, "params"    # Landroid/app/job/JobParameters;

    .line 370
    const-wide/32 v0, 0xf38aa29

    invoke-static {v0, v1}, Landroid/compat/Compatibility;->isChangeEnabled(J)Z

    move-result v0

    if-nez v0, :cond_c

    .line 375
    const-wide/16 v0, 0x0

    return-wide v0

    .line 373
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

    .line 427
    if-nez p2, :cond_7

    .line 428
    invoke-virtual {p0, p1}, Landroid/app/job/JobService;->getTransferredUploadBytes(Landroid/app/job/JobParameters;)J

    move-result-wide v0

    return-wide v0

    .line 430
    :cond_7
    const-wide/32 v0, 0xf38aa29

    invoke-static {v0, v1}, Landroid/compat/Compatibility;->isChangeEnabled(J)Z

    move-result v0

    if-nez v0, :cond_13

    .line 435
    const-wide/16 v0, 0x0

    return-wide v0

    .line 433
    :cond_13
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not implemented. Must override in a subclass."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final whitelist jobFinished(Landroid/app/job/JobParameters;Z)V
    .registers 4
    .param p1, "params"    # Landroid/app/job/JobParameters;
    .param p2, "wantsReschedule"    # Z

    .line 189
    iget-object v0, p0, Landroid/app/job/JobService;->mEngine:Landroid/app/job/JobServiceEngine;

    invoke-virtual {v0, p1, p2}, Landroid/app/job/JobServiceEngine;->jobFinished(Landroid/app/job/JobParameters;Z)V

    .line 190
    return-void
.end method

.method public final whitelist onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .param p1, "intent"    # Landroid/content/Intent;

    .line 114
    iget-object v0, p0, Landroid/app/job/JobService;->mEngine:Landroid/app/job/JobServiceEngine;

    if-nez v0, :cond_b

    .line 115
    new-instance v0, Landroid/app/job/JobService$1;

    invoke-direct {v0, p0, p0}, Landroid/app/job/JobService$1;-><init>(Landroid/app/job/JobService;Landroid/app/Service;)V

    iput-object v0, p0, Landroid/app/job/JobService;->mEngine:Landroid/app/job/JobServiceEngine;

    .line 154
    :cond_b
    iget-object v0, p0, Landroid/app/job/JobService;->mEngine:Landroid/app/job/JobServiceEngine;

    invoke-virtual {v0}, Landroid/app/job/JobServiceEngine;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onNetworkChanged(Landroid/app/job/JobParameters;)V
    .registers 4
    .param p1, "params"    # Landroid/app/job/JobParameters;

    .line 284
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onNetworkChanged() not implemented in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ". Must override in a subclass."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "JobService"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    return-void
.end method

.method public abstract whitelist onStartJob(Landroid/app/job/JobParameters;)Z
.end method

.method public abstract whitelist onStopJob(Landroid/app/job/JobParameters;)Z
.end method

.method public final whitelist setNotification(Landroid/app/job/JobParameters;ILandroid/app/Notification;I)V
    .registers 6
    .param p1, "params"    # Landroid/app/job/JobParameters;
    .param p2, "notificationId"    # I
    .param p3, "notification"    # Landroid/app/Notification;
    .param p4, "jobEndNotificationPolicy"    # I

    .line 475
    iget-object v0, p0, Landroid/app/job/JobService;->mEngine:Landroid/app/job/JobServiceEngine;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/app/job/JobServiceEngine;->setNotification(Landroid/app/job/JobParameters;ILandroid/app/Notification;I)V

    .line 476
    return-void
.end method

.method public final whitelist updateEstimatedNetworkBytes(Landroid/app/job/JobParameters;JJ)V
    .registers 13
    .param p1, "params"    # Landroid/app/job/JobParameters;
    .param p2, "downloadBytes"    # J
    .param p4, "uploadBytes"    # J

    .line 295
    iget-object v0, p0, Landroid/app/job/JobService;->mEngine:Landroid/app/job/JobServiceEngine;

    const/4 v2, 0x0

    move-object v1, p1

    move-wide v3, p2

    move-wide v5, p4

    .end local p1    # "params":Landroid/app/job/JobParameters;
    .end local p2    # "downloadBytes":J
    .end local p4    # "uploadBytes":J
    .local v1, "params":Landroid/app/job/JobParameters;
    .local v3, "downloadBytes":J
    .local v5, "uploadBytes":J
    invoke-virtual/range {v0 .. v6}, Landroid/app/job/JobServiceEngine;->updateEstimatedNetworkBytes(Landroid/app/job/JobParameters;Landroid/app/job/JobWorkItem;JJ)V

    .line 296
    return-void
.end method

.method public final whitelist updateEstimatedNetworkBytes(Landroid/app/job/JobParameters;Landroid/app/job/JobWorkItem;JJ)V
    .registers 14
    .param p1, "params"    # Landroid/app/job/JobParameters;
    .param p2, "jobWorkItem"    # Landroid/app/job/JobWorkItem;
    .param p3, "downloadBytes"    # J
    .param p5, "uploadBytes"    # J

    .line 307
    iget-object v0, p0, Landroid/app/job/JobService;->mEngine:Landroid/app/job/JobServiceEngine;

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-wide v5, p5

    .end local p1    # "params":Landroid/app/job/JobParameters;
    .end local p2    # "jobWorkItem":Landroid/app/job/JobWorkItem;
    .end local p3    # "downloadBytes":J
    .end local p5    # "uploadBytes":J
    .local v1, "params":Landroid/app/job/JobParameters;
    .local v2, "jobWorkItem":Landroid/app/job/JobWorkItem;
    .local v3, "downloadBytes":J
    .local v5, "uploadBytes":J
    invoke-virtual/range {v0 .. v6}, Landroid/app/job/JobServiceEngine;->updateEstimatedNetworkBytes(Landroid/app/job/JobParameters;Landroid/app/job/JobWorkItem;JJ)V

    .line 308
    return-void
.end method

.method public final whitelist updateTransferredNetworkBytes(Landroid/app/job/JobParameters;JJ)V
    .registers 13
    .param p1, "params"    # Landroid/app/job/JobParameters;
    .param p2, "transferredDownloadBytes"    # J
    .param p4, "transferredUploadBytes"    # J

    .line 315
    iget-object v0, p0, Landroid/app/job/JobService;->mEngine:Landroid/app/job/JobServiceEngine;

    const/4 v2, 0x0

    move-object v1, p1

    move-wide v3, p2

    move-wide v5, p4

    .end local p1    # "params":Landroid/app/job/JobParameters;
    .end local p2    # "transferredDownloadBytes":J
    .end local p4    # "transferredUploadBytes":J
    .local v1, "params":Landroid/app/job/JobParameters;
    .local v3, "transferredDownloadBytes":J
    .local v5, "transferredUploadBytes":J
    invoke-virtual/range {v0 .. v6}, Landroid/app/job/JobServiceEngine;->updateTransferredNetworkBytes(Landroid/app/job/JobParameters;Landroid/app/job/JobWorkItem;JJ)V

    .line 317
    return-void
.end method

.method public final whitelist updateTransferredNetworkBytes(Landroid/app/job/JobParameters;Landroid/app/job/JobWorkItem;JJ)V
    .registers 14
    .param p1, "params"    # Landroid/app/job/JobParameters;
    .param p2, "item"    # Landroid/app/job/JobWorkItem;
    .param p3, "transferredDownloadBytes"    # J
    .param p5, "transferredUploadBytes"    # J

    .line 326
    iget-object v0, p0, Landroid/app/job/JobService;->mEngine:Landroid/app/job/JobServiceEngine;

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-wide v5, p5

    .end local p1    # "params":Landroid/app/job/JobParameters;
    .end local p2    # "item":Landroid/app/job/JobWorkItem;
    .end local p3    # "transferredDownloadBytes":J
    .end local p5    # "transferredUploadBytes":J
    .local v1, "params":Landroid/app/job/JobParameters;
    .local v2, "item":Landroid/app/job/JobWorkItem;
    .local v3, "transferredDownloadBytes":J
    .local v5, "transferredUploadBytes":J
    invoke-virtual/range {v0 .. v6}, Landroid/app/job/JobServiceEngine;->updateTransferredNetworkBytes(Landroid/app/job/JobParameters;Landroid/app/job/JobWorkItem;JJ)V

    .line 328
    return-void
.end method

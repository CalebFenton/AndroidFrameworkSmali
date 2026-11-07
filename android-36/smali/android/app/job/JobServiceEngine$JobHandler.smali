.class Landroid/app/job/JobServiceEngine$JobHandler;
.super Landroid/os/Handler;
.source "JobServiceEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/job/JobServiceEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "JobHandler"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/app/job/JobServiceEngine;


# direct methods
.method constructor blacklist <init>(Landroid/app/job/JobServiceEngine;Landroid/os/Looper;)V
    .registers 3
    .param p1, "this$0"    # Landroid/app/job/JobServiceEngine;
    .param p2, "looper"    # Landroid/os/Looper;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 158
    iput-object p1, p0, Landroid/app/job/JobServiceEngine$JobHandler;->this$0:Landroid/app/job/JobServiceEngine;

    .line 159
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 160
    return-void
.end method

.method private blacklist ackGetTransferredDownloadBytesMessage(Landroid/app/job/JobParameters;Landroid/app/job/JobWorkItem;J)V
    .registers 11
    .param p1, "params"    # Landroid/app/job/JobParameters;
    .param p2, "item"    # Landroid/app/job/JobWorkItem;
    .param p3, "progress"    # J

    .line 309
    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getCallback()Landroid/app/job/IJobCallback;

    move-result-object v0

    .line 310
    .local v0, "callback":Landroid/app/job/IJobCallback;
    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getJobId()I

    move-result v1

    .line 311
    .local v1, "jobId":I
    if-nez p2, :cond_c

    const/4 v2, -0x1

    goto :goto_10

    :cond_c
    invoke-virtual {p2}, Landroid/app/job/JobWorkItem;->getWorkId()I

    move-result v2

    .line 312
    .local v2, "workId":I
    :goto_10
    const-string v3, "JobServiceEngine"

    if-eqz v0, :cond_1f

    .line 314
    :try_start_14
    invoke-interface {v0, v1, v2, p3, p4}, Landroid/app/job/IJobCallback;->acknowledgeGetTransferredDownloadBytesMessage(IIJ)V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_17} :catch_18

    .line 317
    :goto_17
    goto :goto_2b

    .line 315
    :catch_18
    move-exception v4

    .line 316
    .local v4, "e":Landroid/os/RemoteException;
    const-string v5, "System unreachable for returning progress."

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v4    # "e":Landroid/os/RemoteException;
    goto :goto_17

    .line 318
    :cond_1f
    const/4 v4, 0x3

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_2b

    .line 319
    const-string v4, "Attempting to ack a job that has already been processed."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    :cond_2b
    :goto_2b
    return-void
.end method

.method private blacklist ackGetTransferredUploadBytesMessage(Landroid/app/job/JobParameters;Landroid/app/job/JobWorkItem;J)V
    .registers 11
    .param p1, "params"    # Landroid/app/job/JobParameters;
    .param p2, "item"    # Landroid/app/job/JobWorkItem;
    .param p3, "progress"    # J

    .line 325
    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getCallback()Landroid/app/job/IJobCallback;

    move-result-object v0

    .line 326
    .local v0, "callback":Landroid/app/job/IJobCallback;
    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getJobId()I

    move-result v1

    .line 327
    .local v1, "jobId":I
    if-nez p2, :cond_c

    const/4 v2, -0x1

    goto :goto_10

    :cond_c
    invoke-virtual {p2}, Landroid/app/job/JobWorkItem;->getWorkId()I

    move-result v2

    .line 328
    .local v2, "workId":I
    :goto_10
    const-string v3, "JobServiceEngine"

    if-eqz v0, :cond_1f

    .line 330
    :try_start_14
    invoke-interface {v0, v1, v2, p3, p4}, Landroid/app/job/IJobCallback;->acknowledgeGetTransferredUploadBytesMessage(IIJ)V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_17} :catch_18

    .line 333
    :goto_17
    goto :goto_2b

    .line 331
    :catch_18
    move-exception v4

    .line 332
    .local v4, "e":Landroid/os/RemoteException;
    const-string v5, "System unreachable for returning progress."

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v4    # "e":Landroid/os/RemoteException;
    goto :goto_17

    .line 334
    :cond_1f
    const/4 v4, 0x3

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_2b

    .line 335
    const-string v4, "Attempting to ack a job that has already been processed."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    :cond_2b
    :goto_2b
    return-void
.end method

.method private greylist-max-o ackStartMessage(Landroid/app/job/JobParameters;Z)V
    .registers 8
    .param p1, "params"    # Landroid/app/job/JobParameters;
    .param p2, "workOngoing"    # Z

    .line 340
    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getCallback()Landroid/app/job/IJobCallback;

    move-result-object v0

    .line 341
    .local v0, "callback":Landroid/app/job/IJobCallback;
    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getJobId()I

    move-result v1

    .line 342
    .local v1, "jobId":I
    const-string v2, "JobServiceEngine"

    if-eqz v0, :cond_17

    .line 344
    :try_start_c
    invoke-interface {v0, v1, p2}, Landroid/app/job/IJobCallback;->acknowledgeStartMessage(IZ)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_f} :catch_10

    .line 347
    :goto_f
    goto :goto_23

    .line 345
    :catch_10
    move-exception v3

    .line 346
    .local v3, "e":Landroid/os/RemoteException;
    const-string v4, "System unreachable for starting job."

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v3    # "e":Landroid/os/RemoteException;
    goto :goto_f

    .line 349
    :cond_17
    const/4 v3, 0x3

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_23

    .line 350
    const-string v3, "Attempting to ack a job that has already been processed."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    :cond_23
    :goto_23
    return-void
.end method

.method private greylist-max-o ackStopMessage(Landroid/app/job/JobParameters;Z)V
    .registers 8
    .param p1, "params"    # Landroid/app/job/JobParameters;
    .param p2, "reschedule"    # Z

    .line 356
    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getCallback()Landroid/app/job/IJobCallback;

    move-result-object v0

    .line 357
    .local v0, "callback":Landroid/app/job/IJobCallback;
    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getJobId()I

    move-result v1

    .line 358
    .local v1, "jobId":I
    const-string v2, "JobServiceEngine"

    if-eqz v0, :cond_17

    .line 360
    :try_start_c
    invoke-interface {v0, v1, p2}, Landroid/app/job/IJobCallback;->acknowledgeStopMessage(IZ)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_f} :catch_10

    .line 363
    :goto_f
    goto :goto_23

    .line 361
    :catch_10
    move-exception v3

    .line 362
    .local v3, "e":Landroid/os/RemoteException;
    const-string v4, "System unreachable for stopping job."

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v3    # "e":Landroid/os/RemoteException;
    goto :goto_f

    .line 365
    :cond_17
    const/4 v3, 0x3

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_23

    .line 366
    const-string v3, "Attempting to ack a job that has already been processed."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    :cond_23
    :goto_23
    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 13
    .param p1, "msg"    # Landroid/os/Message;

    .line 164
    iget v0, p1, Landroid/os/Message;->what:I

    const-string v1, "Error while executing job: "

    const-string v2, "JobServiceEngine"

    packed-switch v0, :pswitch_data_1a4

    .line 302
    const-string v0, "Unrecognised message received."

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1a3

    .line 292
    :pswitch_10
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Landroid/app/job/JobParameters;

    .line 294
    .local v3, "params":Landroid/app/job/JobParameters;
    :try_start_15
    iget-object v0, p0, Landroid/app/job/JobServiceEngine$JobHandler;->this$0:Landroid/app/job/JobServiceEngine;

    invoke-virtual {v0, v3}, Landroid/app/job/JobServiceEngine;->onNetworkChanged(Landroid/app/job/JobParameters;)V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_1a} :catch_1c

    .line 298
    goto/16 :goto_1a3

    .line 295
    :catch_1c
    move-exception v0

    .line 296
    .local v0, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v3}, Landroid/app/job/JobParameters;->getJobId()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 274
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v3    # "params":Landroid/app/job/JobParameters;
    :pswitch_3b
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    .line 275
    .local v1, "args":Lcom/android/internal/os/SomeArgs;
    iget-object v0, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Landroid/app/job/JobParameters;

    .line 276
    .restart local v3    # "params":Landroid/app/job/JobParameters;
    iget-object v0, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Landroid/app/Notification;

    .line 277
    .local v4, "notification":Landroid/app/Notification;
    invoke-virtual {v3}, Landroid/app/job/JobParameters;->getCallback()Landroid/app/job/IJobCallback;

    move-result-object v5

    .line 278
    .local v5, "callback":Landroid/app/job/IJobCallback;
    if-eqz v5, :cond_63

    .line 280
    :try_start_50
    invoke-virtual {v3}, Landroid/app/job/JobParameters;->getJobId()I

    move-result v0

    iget v6, v1, Lcom/android/internal/os/SomeArgs;->argi1:I

    iget v7, v1, Lcom/android/internal/os/SomeArgs;->argi2:I

    invoke-interface {v5, v0, v6, v4, v7}, Landroid/app/job/IJobCallback;->setNotification(IILandroid/app/Notification;I)V
    :try_end_5b
    .catch Landroid/os/RemoteException; {:try_start_50 .. :try_end_5b} :catch_5c

    goto :goto_62

    .line 282
    :catch_5c
    move-exception v0

    .line 283
    .local v0, "e":Landroid/os/RemoteException;
    const-string v6, "Error providing notification: binder has gone away."

    invoke-static {v2, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_62
    goto :goto_69

    .line 286
    :cond_63
    const-string/jumbo v0, "setNotification() called for a nonexistent job."

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    :goto_69
    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 289
    goto/16 :goto_1a3

    .line 255
    .end local v1    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v3    # "params":Landroid/app/job/JobParameters;
    .end local v4    # "notification":Landroid/app/Notification;
    .end local v5    # "callback":Landroid/app/job/IJobCallback;
    :pswitch_6e
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    .line 256
    .restart local v1    # "args":Lcom/android/internal/os/SomeArgs;
    iget-object v0, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Landroid/app/job/JobParameters;

    .line 257
    .restart local v3    # "params":Landroid/app/job/JobParameters;
    invoke-virtual {v3}, Landroid/app/job/JobParameters;->getCallback()Landroid/app/job/IJobCallback;

    move-result-object v4

    .line 258
    .local v4, "callback":Landroid/app/job/IJobCallback;
    if-eqz v4, :cond_96

    .line 260
    :try_start_7e
    invoke-virtual {v3}, Landroid/app/job/JobParameters;->getJobId()I

    move-result v5

    iget-object v0, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    move-object v6, v0

    check-cast v6, Landroid/app/job/JobWorkItem;

    iget-wide v7, v1, Lcom/android/internal/os/SomeArgs;->argl1:J

    iget-wide v9, v1, Lcom/android/internal/os/SomeArgs;->argl2:J

    invoke-interface/range {v4 .. v10}, Landroid/app/job/IJobCallback;->updateEstimatedNetworkBytes(ILandroid/app/job/JobWorkItem;JJ)V
    :try_end_8e
    .catch Landroid/os/RemoteException; {:try_start_7e .. :try_end_8e} :catch_8f

    goto :goto_95

    .line 262
    :catch_8f
    move-exception v0

    .line 263
    .restart local v0    # "e":Landroid/os/RemoteException;
    const-string v5, "Error updating estimated transfer size to system: binder has gone away."

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_95
    goto :goto_9c

    .line 267
    :cond_96
    const-string/jumbo v0, "updateEstimatedNetworkBytes() called for a nonexistent job id."

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    :goto_9c
    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 271
    goto/16 :goto_1a3

    .line 237
    .end local v1    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v3    # "params":Landroid/app/job/JobParameters;
    .end local v4    # "callback":Landroid/app/job/IJobCallback;
    :pswitch_a1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    .line 238
    .restart local v1    # "args":Lcom/android/internal/os/SomeArgs;
    iget-object v0, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Landroid/app/job/JobParameters;

    .line 239
    .restart local v3    # "params":Landroid/app/job/JobParameters;
    invoke-virtual {v3}, Landroid/app/job/JobParameters;->getCallback()Landroid/app/job/IJobCallback;

    move-result-object v4

    .line 240
    .restart local v4    # "callback":Landroid/app/job/IJobCallback;
    if-eqz v4, :cond_c9

    .line 242
    :try_start_b1
    invoke-virtual {v3}, Landroid/app/job/JobParameters;->getJobId()I

    move-result v5

    iget-object v0, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    move-object v6, v0

    check-cast v6, Landroid/app/job/JobWorkItem;

    iget-wide v7, v1, Lcom/android/internal/os/SomeArgs;->argl1:J

    iget-wide v9, v1, Lcom/android/internal/os/SomeArgs;->argl2:J

    invoke-interface/range {v4 .. v10}, Landroid/app/job/IJobCallback;->updateTransferredNetworkBytes(ILandroid/app/job/JobWorkItem;JJ)V
    :try_end_c1
    .catch Landroid/os/RemoteException; {:try_start_b1 .. :try_end_c1} :catch_c2

    goto :goto_c8

    .line 244
    :catch_c2
    move-exception v0

    .line 245
    .restart local v0    # "e":Landroid/os/RemoteException;
    const-string v5, "Error updating data transfer progress to system: binder has gone away."

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_c8
    goto :goto_cf

    .line 249
    :cond_c9
    const-string/jumbo v0, "updateDataTransferProgress() called for a nonexistent job id."

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    :goto_cf
    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 252
    goto/16 :goto_1a3

    .line 223
    .end local v1    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v3    # "params":Landroid/app/job/JobParameters;
    .end local v4    # "callback":Landroid/app/job/IJobCallback;
    :pswitch_d4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    .line 224
    .restart local v1    # "args":Lcom/android/internal/os/SomeArgs;
    iget-object v0, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Landroid/app/job/JobParameters;

    .line 225
    .restart local v3    # "params":Landroid/app/job/JobParameters;
    iget-object v0, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Landroid/app/job/JobWorkItem;

    .line 227
    .local v4, "item":Landroid/app/job/JobWorkItem;
    :try_start_e3
    iget-object v0, p0, Landroid/app/job/JobServiceEngine$JobHandler;->this$0:Landroid/app/job/JobServiceEngine;

    invoke-virtual {v0, v3, v4}, Landroid/app/job/JobServiceEngine;->getTransferredUploadBytes(Landroid/app/job/JobParameters;Landroid/app/job/JobWorkItem;)J

    move-result-wide v5

    .line 228
    .local v5, "ret":J
    invoke-direct {p0, v3, v4, v5, v6}, Landroid/app/job/JobServiceEngine$JobHandler;->ackGetTransferredUploadBytesMessage(Landroid/app/job/JobParameters;Landroid/app/job/JobWorkItem;J)V
    :try_end_ec
    .catch Ljava/lang/Exception; {:try_start_e3 .. :try_end_ec} :catch_f2

    .line 232
    .end local v5    # "ret":J
    nop

    .line 233
    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 234
    goto/16 :goto_1a3

    .line 229
    :catch_f2
    move-exception v0

    .line 230
    .local v0, "e":Ljava/lang/Exception;
    const-string v5, "Application unable to handle getTransferredUploadBytes."

    invoke-static {v2, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 231
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 209
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v3    # "params":Landroid/app/job/JobParameters;
    .end local v4    # "item":Landroid/app/job/JobWorkItem;
    :pswitch_fe
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    .line 210
    .restart local v1    # "args":Lcom/android/internal/os/SomeArgs;
    iget-object v0, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Landroid/app/job/JobParameters;

    .line 211
    .restart local v3    # "params":Landroid/app/job/JobParameters;
    iget-object v0, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Landroid/app/job/JobWorkItem;

    .line 213
    .restart local v4    # "item":Landroid/app/job/JobWorkItem;
    :try_start_10d
    iget-object v0, p0, Landroid/app/job/JobServiceEngine$JobHandler;->this$0:Landroid/app/job/JobServiceEngine;

    invoke-virtual {v0, v3, v4}, Landroid/app/job/JobServiceEngine;->getTransferredDownloadBytes(Landroid/app/job/JobParameters;Landroid/app/job/JobWorkItem;)J

    move-result-wide v5

    .line 214
    .restart local v5    # "ret":J
    invoke-direct {p0, v3, v4, v5, v6}, Landroid/app/job/JobServiceEngine$JobHandler;->ackGetTransferredDownloadBytesMessage(Landroid/app/job/JobParameters;Landroid/app/job/JobWorkItem;J)V
    :try_end_116
    .catch Ljava/lang/Exception; {:try_start_10d .. :try_end_116} :catch_11c

    .line 218
    .end local v5    # "ret":J
    nop

    .line 219
    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 220
    goto/16 :goto_1a3

    .line 215
    :catch_11c
    move-exception v0

    .line 216
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v5, "Application unable to handle getTransferredDownloadBytes."

    invoke-static {v2, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 217
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 192
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v3    # "params":Landroid/app/job/JobParameters;
    .end local v4    # "item":Landroid/app/job/JobWorkItem;
    :pswitch_128
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Landroid/app/job/JobParameters;

    .line 193
    .local v1, "params":Landroid/app/job/JobParameters;
    iget v0, p1, Landroid/os/Message;->arg2:I

    const/4 v3, 0x1

    if-ne v0, v3, :cond_133

    goto :goto_134

    :cond_133
    const/4 v3, 0x0

    .line 194
    .local v3, "needsReschedule":Z
    :goto_134
    invoke-virtual {v1}, Landroid/app/job/JobParameters;->getCallback()Landroid/app/job/IJobCallback;

    move-result-object v4

    .line 195
    .local v4, "callback":Landroid/app/job/IJobCallback;
    if-eqz v4, :cond_14c

    .line 197
    :try_start_13a
    invoke-virtual {v1}, Landroid/app/job/JobParameters;->disableCleaner()V

    .line 198
    invoke-virtual {v1}, Landroid/app/job/JobParameters;->getJobId()I

    move-result v0

    invoke-interface {v4, v0, v3}, Landroid/app/job/IJobCallback;->jobFinished(IZ)V
    :try_end_144
    .catch Landroid/os/RemoteException; {:try_start_13a .. :try_end_144} :catch_145

    goto :goto_14b

    .line 199
    :catch_145
    move-exception v0

    .line 200
    .local v0, "e":Landroid/os/RemoteException;
    const-string v5, "Error reporting job finish to system: binder has goneaway."

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_14b
    goto :goto_1a3

    .line 204
    :cond_14c
    const-string v0, "finishJob() called for a nonexistent job id."

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    goto :goto_1a3

    .line 181
    .end local v1    # "params":Landroid/app/job/JobParameters;
    .end local v3    # "needsReschedule":Z
    .end local v4    # "callback":Landroid/app/job/IJobCallback;
    :pswitch_152
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Landroid/app/job/JobParameters;

    .line 183
    .restart local v1    # "params":Landroid/app/job/JobParameters;
    :try_start_157
    iget-object v0, p0, Landroid/app/job/JobServiceEngine$JobHandler;->this$0:Landroid/app/job/JobServiceEngine;

    invoke-virtual {v0, v1}, Landroid/app/job/JobServiceEngine;->onStopJob(Landroid/app/job/JobParameters;)Z

    move-result v0

    .line 184
    .local v0, "ret":Z
    invoke-direct {p0, v1, v0}, Landroid/app/job/JobServiceEngine$JobHandler;->ackStopMessage(Landroid/app/job/JobParameters;Z)V
    :try_end_160
    .catch Ljava/lang/Exception; {:try_start_157 .. :try_end_160} :catch_161

    .line 188
    .end local v0    # "ret":Z
    goto :goto_1a3

    .line 185
    :catch_161
    move-exception v0

    .line 186
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "Application unable to handle onStopJob."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 187
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 166
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "params":Landroid/app/job/JobParameters;
    :pswitch_16d
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Landroid/app/job/JobParameters;

    .line 168
    .local v3, "params":Landroid/app/job/JobParameters;
    :try_start_172
    invoke-virtual {v3}, Landroid/app/job/JobParameters;->enableCleaner()V

    .line 169
    iget-object v0, p0, Landroid/app/job/JobServiceEngine$JobHandler;->this$0:Landroid/app/job/JobServiceEngine;

    invoke-virtual {v0, v3}, Landroid/app/job/JobServiceEngine;->onStartJob(Landroid/app/job/JobParameters;)Z

    move-result v0

    .line 170
    .local v0, "workOngoing":Z
    if-nez v0, :cond_180

    .line 171
    invoke-virtual {v3}, Landroid/app/job/JobParameters;->disableCleaner()V

    .line 173
    :cond_180
    invoke-direct {p0, v3, v0}, Landroid/app/job/JobServiceEngine$JobHandler;->ackStartMessage(Landroid/app/job/JobParameters;Z)V
    :try_end_183
    .catch Ljava/lang/Exception; {:try_start_172 .. :try_end_183} :catch_184

    .line 177
    .end local v0    # "workOngoing":Z
    goto :goto_1a3

    .line 174
    :catch_184
    move-exception v0

    .line 175
    .local v0, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v3}, Landroid/app/job/JobParameters;->getJobId()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 305
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v3    # "params":Landroid/app/job/JobParameters;
    :goto_1a3
    return-void

    :pswitch_data_1a4
    .packed-switch 0x0
        :pswitch_16d
        :pswitch_152
        :pswitch_128
        :pswitch_fe
        :pswitch_d4
        :pswitch_a1
        :pswitch_6e
        :pswitch_3b
        :pswitch_10
    .end packed-switch
.end method

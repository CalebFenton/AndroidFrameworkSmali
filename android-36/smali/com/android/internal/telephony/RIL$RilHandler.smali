.class public Lcom/android/internal/telephony/RIL$RilHandler;
.super Landroid/os/Handler;
.source "RIL.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/RIL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RilHandler"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/RIL;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/telephony/RIL;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 317
    iput-object p1, p0, Lcom/android/internal/telephony/RIL$RilHandler;->this$0:Lcom/android/internal/telephony/RIL;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 9

    .line 324
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eq v0, v1, :cond_13d

    const/4 v1, 0x4

    if-eq v0, v1, :cond_12e

    const/4 v1, 0x5

    if-eq v0, v1, :cond_ec

    const/4 v1, 0x6

    if-eq v0, v1, :cond_90

    const/4 v1, 0x7

    if-eq v0, v1, :cond_14

    goto/16 :goto_13c

    .line 395
    :cond_14
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 396
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 397
    iget-object p1, p0, Lcom/android/internal/telephony/RIL$RilHandler;->this$0:Lcom/android/internal/telephony/RIL;

    invoke-static {p1}, Lcom/android/internal/telephony/RIL;->-$$Nest$fgetmServiceCookies(Lcom/android/internal/telephony/RIL;)Landroid/util/SparseArray;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v5

    cmp-long p1, v3, v5

    if-nez p1, :cond_75

    .line 398
    iget-object p1, p0, Lcom/android/internal/telephony/RIL$RilHandler;->this$0:Lcom/android/internal/telephony/RIL;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleMessage: EVENT_AIDL_PROXY_DEAD cookie = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ", service = "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 399
    invoke-static {v0}, Lcom/android/internal/telephony/RIL;->-$$Nest$smserviceToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", cookie = "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/internal/telephony/RIL$RilHandler;->this$0:Lcom/android/internal/telephony/RIL;

    invoke-static {v3}, Lcom/android/internal/telephony/RIL;->-$$Nest$fgetmServiceCookies(Lcom/android/internal/telephony/RIL;)Landroid/util/SparseArray;

    move-result-object v3

    .line 400
    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 398
    invoke-virtual {p1, v3}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 401
    iget-object p1, p0, Lcom/android/internal/telephony/RIL$RilHandler;->this$0:Lcom/android/internal/telephony/RIL;

    iput-boolean v2, p1, Lcom/android/internal/telephony/RIL;->mIsRadioProxyInitialized:Z

    .line 402
    invoke-static {p1, v0}, Lcom/android/internal/telephony/RIL;->-$$Nest$mresetProxyAndRequestList(Lcom/android/internal/telephony/RIL;I)V

    .line 404
    iget-object p0, p0, Lcom/android/internal/telephony/RIL$RilHandler;->this$0:Lcom/android/internal/telephony/RIL;

    iget-object p0, p0, Lcom/android/internal/telephony/RIL;->mRilHandler:Lcom/android/internal/telephony/RIL$RilHandler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void

    .line 406
    :cond_75
    iget-object p0, p0, Lcom/android/internal/telephony/RIL$RilHandler;->this$0:Lcom/android/internal/telephony/RIL;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ignore stale EVENT_AIDL_PROXY_DEAD for service "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 407
    invoke-static {v0}, Lcom/android/internal/telephony/RIL;->-$$Nest$smserviceToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 406
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    return-void

    .line 384
    :cond_90
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 385
    iget-object v1, p0, Lcom/android/internal/telephony/RIL$RilHandler;->this$0:Lcom/android/internal/telephony/RIL;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleMessage: EVENT_RADIO_PROXY_DEAD cookie = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", service = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 386
    invoke-static {v0}, Lcom/android/internal/telephony/RIL;->-$$Nest$smserviceToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", service cookie = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/internal/telephony/RIL$RilHandler;->this$0:Lcom/android/internal/telephony/RIL;

    invoke-static {v4}, Lcom/android/internal/telephony/RIL;->-$$Nest$fgetmServiceCookies(Lcom/android/internal/telephony/RIL;)Landroid/util/SparseArray;

    move-result-object v4

    .line 387
    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 385
    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 388
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iget-object p1, p0, Lcom/android/internal/telephony/RIL$RilHandler;->this$0:Lcom/android/internal/telephony/RIL;

    invoke-static {p1}, Lcom/android/internal/telephony/RIL;->-$$Nest$fgetmServiceCookies(Lcom/android/internal/telephony/RIL;)Landroid/util/SparseArray;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v5

    cmp-long p1, v3, v5

    if-nez p1, :cond_13c

    .line 389
    iget-object p0, p0, Lcom/android/internal/telephony/RIL$RilHandler;->this$0:Lcom/android/internal/telephony/RIL;

    iput-boolean v2, p0, Lcom/android/internal/telephony/RIL;->mIsRadioProxyInitialized:Z

    .line 390
    invoke-static {p0, v0}, Lcom/android/internal/telephony/RIL;->-$$Nest$mresetProxyAndRequestList(Lcom/android/internal/telephony/RIL;I)V

    return-void

    .line 364
    :cond_ec
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 365
    iget-object v0, p0, Lcom/android/internal/telephony/RIL$RilHandler;->this$0:Lcom/android/internal/telephony/RIL;

    invoke-static {v0, p1}, Lcom/android/internal/telephony/RIL;->-$$Nest$mfindAndRemoveRequestFromList(Lcom/android/internal/telephony/RIL;I)Lcom/android/internal/telephony/RILRequest;

    move-result-object p1

    if-nez p1, :cond_fd

    goto :goto_13c

    .line 372
    :cond_fd
    iget-object v0, p1, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    if-eqz v0, :cond_125

    .line 373
    invoke-static {p1}, Lcom/android/internal/telephony/RIL;->-$$Nest$smgetResponseForTimedOutRILRequest(Lcom/android/internal/telephony/RILRequest;)Ljava/lang/Object;

    move-result-object v0

    .line 374
    iget-object v1, p1, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 375
    iget-object v0, p1, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 376
    iget-object v0, p0, Lcom/android/internal/telephony/RIL$RilHandler;->this$0:Lcom/android/internal/telephony/RIL;

    invoke-static {v0}, Lcom/android/internal/telephony/RIL;->-$$Nest$fgetmMetrics(Lcom/android/internal/telephony/RIL;)Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/RIL$RilHandler;->this$0:Lcom/android/internal/telephony/RIL;

    iget-object v1, v1, Lcom/android/internal/telephony/RIL;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget v2, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    iget v3, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeOnRilTimeoutResponse(III)V

    .line 379
    :cond_125
    iget-object p0, p0, Lcom/android/internal/telephony/RIL$RilHandler;->this$0:Lcom/android/internal/telephony/RIL;

    invoke-static {p0, p1}, Lcom/android/internal/telephony/RIL;->-$$Nest$mdecrementWakeLock(Lcom/android/internal/telephony/RIL;Lcom/android/internal/telephony/RILRequest;)V

    .line 380
    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->release()V

    return-void

    .line 356
    :cond_12e
    iget p1, p1, Landroid/os/Message;->arg1:I

    iget-object v0, p0, Lcom/android/internal/telephony/RIL$RilHandler;->this$0:Lcom/android/internal/telephony/RIL;

    iget v0, v0, Lcom/android/internal/telephony/RIL;->mAckWlSequenceNum:I

    if-ne p1, v0, :cond_13c

    iget-object p0, p0, Lcom/android/internal/telephony/RIL$RilHandler;->this$0:Lcom/android/internal/telephony/RIL;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/android/internal/telephony/RIL;->-$$Nest$mclearWakeLock(Lcom/android/internal/telephony/RIL;I)Z

    :cond_13c
    :goto_13c
    return-void

    .line 337
    :cond_13d
    iget-object v0, p0, Lcom/android/internal/telephony/RIL$RilHandler;->this$0:Lcom/android/internal/telephony/RIL;

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mRequestList:Landroid/util/SparseArray;

    monitor-enter v0

    .line 338
    :try_start_142
    iget p1, p1, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcom/android/internal/telephony/RIL$RilHandler;->this$0:Lcom/android/internal/telephony/RIL;

    iget v1, v1, Lcom/android/internal/telephony/RIL;->mWlSequenceNum:I

    if-ne p1, v1, :cond_1bc

    iget-object p1, p0, Lcom/android/internal/telephony/RIL$RilHandler;->this$0:Lcom/android/internal/telephony/RIL;

    invoke-static {p1, v2}, Lcom/android/internal/telephony/RIL;->-$$Nest$mclearWakeLock(Lcom/android/internal/telephony/RIL;I)Z

    move-result p1

    if-eqz p1, :cond_1bc

    .line 339
    iget-object p1, p0, Lcom/android/internal/telephony/RIL$RilHandler;->this$0:Lcom/android/internal/telephony/RIL;

    invoke-static {p1}, Lcom/android/internal/telephony/RIL;->-$$Nest$fgetmRadioBugDetector(Lcom/android/internal/telephony/RIL;)Lcom/android/internal/telephony/RadioBugDetector;

    move-result-object p1

    if-eqz p1, :cond_166

    .line 340
    iget-object p1, p0, Lcom/android/internal/telephony/RIL$RilHandler;->this$0:Lcom/android/internal/telephony/RIL;

    invoke-static {p1}, Lcom/android/internal/telephony/RIL;->-$$Nest$fgetmRadioBugDetector(Lcom/android/internal/telephony/RIL;)Lcom/android/internal/telephony/RadioBugDetector;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/telephony/RadioBugDetector;->processWakelockTimeout()V

    goto :goto_166

    :catchall_164
    move-exception p0

    goto :goto_1be

    .line 343
    :cond_166
    :goto_166
    iget-object p1, p0, Lcom/android/internal/telephony/RIL$RilHandler;->this$0:Lcom/android/internal/telephony/RIL;

    iget-object p1, p1, Lcom/android/internal/telephony/RIL;->mRequestList:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    .line 344
    iget-object v1, p0, Lcom/android/internal/telephony/RIL$RilHandler;->this$0:Lcom/android/internal/telephony/RIL;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WAKE_LOCK_TIMEOUT mRequestList="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    :goto_184
    if-ge v2, p1, :cond_1bc

    .line 346
    iget-object v1, p0, Lcom/android/internal/telephony/RIL$RilHandler;->this$0:Lcom/android/internal/telephony/RIL;

    iget-object v1, v1, Lcom/android/internal/telephony/RIL;->mRequestList:Landroid/util/SparseArray;

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/RILRequest;

    .line 347
    iget-object v3, p0, Lcom/android/internal/telephony/RIL$RilHandler;->this$0:Lcom/android/internal/telephony/RIL;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ": ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "] "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    .line 348
    invoke-static {v1}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 347
    invoke-virtual {v3, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_184

    .line 352
    :cond_1bc
    monitor-exit v0

    return-void

    :goto_1be
    monitor-exit v0
    :try_end_1bf
    .catchall {:try_start_142 .. :try_end_1bf} :catchall_164

    throw p0
.end method

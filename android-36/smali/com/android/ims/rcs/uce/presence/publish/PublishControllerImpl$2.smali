.class Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$2;
.super Ljava/lang/Object;
.source "PublishControllerImpl.java"

# interfaces
.implements Lcom/android/ims/rcs/uce/presence/publish/PublishController$PublishControllerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;


# direct methods
.method constructor blacklist <init>(Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 385
    iput-object p1, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$2;->this$0:Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist clearRequestCanceledTimer()V
    .registers 3

    .line 414
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$2;->this$0:Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;

    const-string v1, "clearRequestCanceledTimer"

    invoke-static {v0, v1}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->-$$Nest$mlogd(Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;Ljava/lang/String;)V

    .line 415
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$2;->this$0:Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;

    invoke-static {v0}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->-$$Nest$fgetmPublishHandler(Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;)Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;->clearRequestCanceledTimer()V

    .line 416
    return-void
.end method

.method public blacklist notifyPendingPublishRequest()V
    .registers 3

    .line 440
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$2;->this$0:Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;

    const-string v1, "notifyPendingPublishRequest"

    invoke-static {v0, v1}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->-$$Nest$mlogd(Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;Ljava/lang/String;)V

    .line 441
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$2;->this$0:Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;

    invoke-static {v0}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->-$$Nest$fgetmPublishHandler(Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;)Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;->sendPublishSentMessage()V

    .line 442
    return-void
.end method

.method public blacklist onRequestCommandError(Lcom/android/ims/rcs/uce/presence/publish/PublishRequestResponse;)V
    .registers 6
    .param p1, "requestResponse"    # Lcom/android/ims/rcs/uce/presence/publish/PublishRequestResponse;

    .line 394
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$2;->this$0:Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRequestCommandError: taskId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/ims/rcs/uce/presence/publish/PublishRequestResponse;->getTaskId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", time="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 395
    invoke-virtual {p1}, Lcom/android/ims/rcs/uce/presence/publish/PublishRequestResponse;->getResponseTimestamp()Ljava/time/Instant;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 394
    invoke-static {v0, v1}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->-$$Nest$mlogd(Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;Ljava/lang/String;)V

    .line 396
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$2;->this$0:Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;

    invoke-static {v0}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->-$$Nest$fgetmPublishHandler(Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;)Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;->sendRequestCommandErrorMessage(Lcom/android/ims/rcs/uce/presence/publish/PublishRequestResponse;)V

    .line 397
    return-void
.end method

.method public blacklist onRequestNetworkResp(Lcom/android/ims/rcs/uce/presence/publish/PublishRequestResponse;)V
    .registers 6
    .param p1, "requestResponse"    # Lcom/android/ims/rcs/uce/presence/publish/PublishRequestResponse;

    .line 401
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$2;->this$0:Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRequestNetworkResp: taskId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/ims/rcs/uce/presence/publish/PublishRequestResponse;->getTaskId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", time="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 402
    invoke-virtual {p1}, Lcom/android/ims/rcs/uce/presence/publish/PublishRequestResponse;->getResponseTimestamp()Ljava/time/Instant;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 401
    invoke-static {v0, v1}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->-$$Nest$mlogd(Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;Ljava/lang/String;)V

    .line 403
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$2;->this$0:Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;

    invoke-static {v0}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->-$$Nest$fgetmPublishHandler(Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;)Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;->sendRequestNetworkRespMessage(Lcom/android/ims/rcs/uce/presence/publish/PublishRequestResponse;)V

    .line 404
    return-void
.end method

.method public blacklist refreshDeviceState(ILjava/lang/String;)V
    .registers 5
    .param p1, "sipCode"    # I
    .param p2, "reason"    # Ljava/lang/String;

    .line 434
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$2;->this$0:Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;

    invoke-static {v0}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->-$$Nest$fgetmUceCtrlCallback(Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;)Lcom/android/ims/rcs/uce/UceController$UceControllerCallback;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, p1, p2, v1}, Lcom/android/ims/rcs/uce/UceController$UceControllerCallback;->refreshDeviceState(ILjava/lang/String;I)V

    .line 436
    return-void
.end method

.method public blacklist requestPublishFromInternal(I)V
    .registers 5
    .param p1, "type"    # I

    .line 388
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$2;->this$0:Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestPublishFromInternal: type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->-$$Nest$mlogd(Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;Ljava/lang/String;)V

    .line 389
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$2;->this$0:Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;

    invoke-static {v0}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->-$$Nest$fgetmPublishHandler(Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;)Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;->sendPublishMessage(I)V

    .line 390
    return-void
.end method

.method public blacklist setupRequestCanceledTimer(JJ)V
    .registers 8
    .param p1, "taskId"    # J
    .param p3, "delay"    # J

    .line 408
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$2;->this$0:Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setupRequestCanceledTimer: taskId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", delay="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->-$$Nest$mlogd(Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;Ljava/lang/String;)V

    .line 409
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$2;->this$0:Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;

    invoke-static {v0}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->-$$Nest$fgetmPublishHandler(Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;)Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;->sendRequestCanceledTimerMessage(JJ)V

    .line 410
    return-void
.end method

.method public blacklist updateImsUnregistered()V
    .registers 3

    .line 446
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$2;->this$0:Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;

    const-string v1, "updateImsUnregistered"

    invoke-static {v0, v1}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->-$$Nest$mlogd(Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;Ljava/lang/String;)V

    .line 447
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$2;->this$0:Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;

    invoke-static {v0}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->-$$Nest$fgetmPublishHandler(Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;)Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;->sendImsUnregisteredMessage()V

    .line 448
    return-void
.end method

.method public blacklist updatePublishRequestResult(ILjava/time/Instant;Ljava/lang/String;Landroid/telephony/ims/SipDetails;)V
    .registers 8
    .param p1, "state"    # I
    .param p2, "updatedTime"    # Ljava/time/Instant;
    .param p3, "pidfXml"    # Ljava/lang/String;
    .param p4, "details"    # Landroid/telephony/ims/SipDetails;

    .line 421
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$2;->this$0:Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updatePublishRequestResult: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", time="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->-$$Nest$mlogd(Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;Ljava/lang/String;)V

    .line 422
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$2;->this$0:Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;

    invoke-static {v0}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->-$$Nest$fgetmPublishHandler(Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;)Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;->sendPublishStateChangedMessage(ILjava/time/Instant;Ljava/lang/String;Landroid/telephony/ims/SipDetails;)V

    .line 424
    return-void
.end method

.method public blacklist updatePublishThrottle(I)V
    .registers 5
    .param p1, "value"    # I

    .line 428
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$2;->this$0:Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updatePublishThrottle: value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->-$$Nest$mlogd(Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;Ljava/lang/String;)V

    .line 429
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$2;->this$0:Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;

    invoke-static {v0}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->-$$Nest$fgetmPublishProcessor(Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;)Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->updatePublishThrottle(I)V

    .line 430
    return-void
.end method

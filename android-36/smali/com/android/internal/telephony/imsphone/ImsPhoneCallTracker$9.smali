.class Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$9;
.super Lcom/android/ims/ImsCall$Listener;
.source "ImsPhoneCallTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 4549
    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$9;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-direct {p0}, Lcom/android/ims/ImsCall$Listener;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onCallStartFailed(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsReasonInfo;)V
    .registers 6

    .line 4565
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$9;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mImsUssdListener onCallStartFailed reasonCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/telephony/ims/ImsReasonInfo;->getCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 4567
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$9;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fgetmUssdSession(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/ims/ImsCall;

    move-result-object v0

    if-eqz v0, :cond_61

    .line 4568
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$9;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    const-string v1, "mUssdSession is not null"

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 4570
    invoke-virtual {p2}, Landroid/telephony/ims/ImsReasonInfo;->getCode()I

    move-result v0

    const/16 v1, 0x92

    if-ne v0, v1, :cond_5a

    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$9;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fgetmUssdMethod(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_5a

    .line 4572
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$9;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fputmUssdSession(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/ims/ImsCall;)V

    .line 4573
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$9;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object p1, p1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getPendingMmiCodes()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 4574
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$9;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object p1, p1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->initiateSilentRedial()V

    .line 4575
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$9;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    const-string p1, "Initiated sending ussd by using silent redial."

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    return-void

    .line 4578
    :cond_5a
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$9;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    const-string v1, "Failed to start sending ussd by using silent resendUssd.!!"

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 4582
    :cond_61
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$9;->onCallTerminated(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsReasonInfo;)V

    return-void
.end method

.method public blacklist onCallStarted(Lcom/android/ims/ImsCall;)V
    .registers 4

    .line 4552
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$9;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    const-string v1, "mImsUssdListener onCallStarted"

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 4554
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$9;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fgetmUssdSession(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/ims/ImsCall;

    move-result-object v0

    if-ne p1, v0, :cond_2f

    .line 4555
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$9;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fgetmPendingUssd(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Landroid/os/Message;

    move-result-object p1

    if-eqz p1, :cond_2f

    .line 4556
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$9;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fgetmPendingUssd(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Landroid/os/Message;

    move-result-object p1

    invoke-static {p1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    .line 4557
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$9;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fgetmPendingUssd(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 4558
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$9;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fputmPendingUssd(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Landroid/os/Message;)V

    :cond_2f
    return-void
.end method

.method public blacklist onCallTerminated(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsReasonInfo;)V
    .registers 6

    .line 4587
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$9;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mImsUssdListener onCallTerminated reasonCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/telephony/ims/ImsReasonInfo;->getCode()I

    move-result p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 4588
    iget-object p2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$9;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    const/16 v0, 0x19

    invoke-virtual {p2, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 4589
    iget-object p2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$9;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    const/4 v0, 0x0

    invoke-static {p2, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fputmHasAttemptedStartOfCallHandover(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Z)V

    .line 4590
    iget-object p2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$9;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {p2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$munregisterForConnectivityChanges(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)V

    .line 4592
    iget-object p2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$9;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {p2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fgetmUssdSession(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/ims/ImsCall;

    move-result-object p2

    if-ne p1, p2, :cond_60

    .line 4593
    iget-object p2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$9;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    const/4 v0, 0x0

    invoke-static {p2, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fputmUssdSession(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/ims/ImsCall;)V

    .line 4594
    iget-object p2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$9;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {p2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fgetmPendingUssd(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Landroid/os/Message;

    move-result-object p2

    if-eqz p2, :cond_60

    .line 4595
    new-instance p2, Lcom/android/internal/telephony/CommandException;

    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {p2, v1}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    .line 4597
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$9;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fgetmPendingUssd(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Landroid/os/Message;

    move-result-object v1

    invoke-static {v1, v0, p2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 4598
    iget-object p2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$9;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {p2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fgetmPendingUssd(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    .line 4599
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$9;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fputmPendingUssd(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Landroid/os/Message;)V

    .line 4602
    :cond_60
    invoke-virtual {p1}, Lcom/android/ims/ImsCall;->close()V

    return-void
.end method

.method public blacklist onCallUssdMessageReceived(Lcom/android/ims/ImsCall;ILjava/lang/String;)V
    .registers 6

    .line 4608
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$9;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mImsUssdListener onCallUssdMessageReceived mode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    if-eqz p2, :cond_1d

    const/4 p1, 0x1

    if-eq p2, p1, :cond_1e

    const/4 p1, -0x1

    goto :goto_1e

    :cond_1d
    const/4 p1, 0x0

    .line 4622
    :cond_1e
    :goto_1e
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$9;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {p0, p1, p3}, Lcom/android/internal/telephony/imsphone/ImsPhone;->onIncomingUSSD(ILjava/lang/String;)V

    return-void
.end method

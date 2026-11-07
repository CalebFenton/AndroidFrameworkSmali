.class Lcom/android/internal/telephony/ims/ImsEnablementTracker$ImsEnablementTrackerStateMachine$Disabling;
.super Lcom/android/internal/telephony/State;
.source "ImsEnablementTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/ims/ImsEnablementTracker$ImsEnablementTrackerStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Disabling"
.end annotation


# instance fields
.field final synthetic blacklist this$1:Lcom/android/internal/telephony/ims/ImsEnablementTracker$ImsEnablementTrackerStateMachine;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/ims/ImsEnablementTracker$ImsEnablementTrackerStateMachine;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 426
    iput-object p1, p0, Lcom/android/internal/telephony/ims/ImsEnablementTracker$ImsEnablementTrackerStateMachine$Disabling;->this$1:Lcom/android/internal/telephony/ims/ImsEnablementTracker$ImsEnablementTrackerStateMachine;

    invoke-direct {p0}, Lcom/android/internal/telephony/State;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist enter()V
    .registers 9

    .line 431
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsEnablementTracker$ImsEnablementTrackerStateMachine$Disabling;->this$1:Lcom/android/internal/telephony/ims/ImsEnablementTracker$ImsEnablementTrackerStateMachine;

    invoke-static {v1}, Lcom/android/internal/telephony/ims/ImsEnablementTracker$ImsEnablementTrackerStateMachine;->-$$Nest$fgetmPhoneId(Lcom/android/internal/telephony/ims/ImsEnablementTracker$ImsEnablementTrackerStateMachine;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]Disabling state:enter"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsEnablementTracker"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    iget-object v2, p0, Lcom/android/internal/telephony/ims/ImsEnablementTracker$ImsEnablementTrackerStateMachine$Disabling;->this$1:Lcom/android/internal/telephony/ims/ImsEnablementTracker$ImsEnablementTrackerStateMachine;

    invoke-static {v2}, Lcom/android/internal/telephony/ims/ImsEnablementTracker$ImsEnablementTrackerStateMachine;->-$$Nest$fgetmSlotId(Lcom/android/internal/telephony/ims/ImsEnablementTracker$ImsEnablementTrackerStateMachine;)I

    move-result v4

    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsEnablementTracker$ImsEnablementTrackerStateMachine$Disabling;->this$1:Lcom/android/internal/telephony/ims/ImsEnablementTracker$ImsEnablementTrackerStateMachine;

    invoke-static {v0}, Lcom/android/internal/telephony/ims/ImsEnablementTracker$ImsEnablementTrackerStateMachine;->-$$Nest$fgetmSubId(Lcom/android/internal/telephony/ims/ImsEnablementTracker$ImsEnablementTrackerStateMachine;)I

    move-result v5

    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsEnablementTracker$ImsEnablementTrackerStateMachine$Disabling;->this$1:Lcom/android/internal/telephony/ims/ImsEnablementTracker$ImsEnablementTrackerStateMachine;

    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsEnablementTracker$ImsEnablementTrackerStateMachine;->this$0:Lcom/android/internal/telephony/ims/ImsEnablementTracker;

    .line 433
    invoke-virtual {p0}, Lcom/android/internal/telephony/ims/ImsEnablementTracker;->getRemainThrottleTime()J

    move-result-wide v6

    const/4 v3, 0x5

    .line 432
    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/telephony/StateMachine;->sendMessageDelayed(IIIJ)V

    return-void
.end method

.method public blacklist processMessage(Landroid/os/Message;)Z
    .registers 5

    .line 438
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsEnablementTracker$ImsEnablementTrackerStateMachine$Disabling;->this$1:Lcom/android/internal/telephony/ims/ImsEnablementTracker$ImsEnablementTrackerStateMachine;

    invoke-static {v1}, Lcom/android/internal/telephony/ims/ImsEnablementTracker$ImsEnablementTrackerStateMachine;->-$$Nest$fgetmPhoneId(Lcom/android/internal/telephony/ims/ImsEnablementTracker$ImsEnablementTrackerStateMachine;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]Disabling state:processMessage. msg.what="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/internal/telephony/ims/ImsEnablementTracker;->-$$Nest$sfgetEVENT_DESCRIPTION()Ljava/util/Map;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    .line 439
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",component:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsEnablementTracker$ImsEnablementTrackerStateMachine$Disabling;->this$1:Lcom/android/internal/telephony/ims/ImsEnablementTracker$ImsEnablementTrackerStateMachine;

    iget-object v1, v1, Lcom/android/internal/telephony/ims/ImsEnablementTracker$ImsEnablementTrackerStateMachine;->this$0:Lcom/android/internal/telephony/ims/ImsEnablementTracker;

    invoke-static {v1}, Lcom/android/internal/telephony/ims/ImsEnablementTracker;->-$$Nest$fgetmComponentName(Lcom/android/internal/telephony/ims/ImsEnablementTracker;)Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 438
    const-string v1, "ImsEnablementTracker"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_9d

    const/4 v2, 0x3

    if-eq v0, v2, :cond_82

    const/4 v2, 0x5

    if-eq v0, v2, :cond_69

    const/16 p1, 0x8

    if-eq v0, p1, :cond_5f

    const/16 p1, 0x9

    if-eq v0, p1, :cond_59

    const/4 p0, 0x0

    return p0

    .line 475
    :cond_59
    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsEnablementTracker$ImsEnablementTrackerStateMachine$Disabling;->this$1:Lcom/android/internal/telephony/ims/ImsEnablementTracker$ImsEnablementTrackerStateMachine;

    invoke-static {p0}, Lcom/android/internal/telephony/ims/ImsEnablementTracker$ImsEnablementTrackerStateMachine;->-$$Nest$mhandleInvalidSubIdMessage(Lcom/android/internal/telephony/ims/ImsEnablementTracker$ImsEnablementTrackerStateMachine;)V

    return v1

    .line 472
    :cond_5f
    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsEnablementTracker$ImsEnablementTrackerStateMachine$Disabling;->this$1:Lcom/android/internal/telephony/ims/ImsEnablementTracker$ImsEnablementTrackerStateMachine;

    invoke-static {p0}, Lcom/android/internal/telephony/ims/ImsEnablementTracker$ImsEnablementTrackerStateMachine;->-$$Nest$fgetmDisconnected(Lcom/android/internal/telephony/ims/ImsEnablementTracker$ImsEnablementTrackerStateMachine;)Lcom/android/internal/telephony/ims/ImsEnablementTracker$ImsEnablementTrackerStateMachine$Disconnected;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/internal/telephony/ims/ImsEnablementTracker$ImsEnablementTrackerStateMachine;->-$$Nest$mtransitionState(Lcom/android/internal/telephony/ims/ImsEnablementTracker$ImsEnablementTrackerStateMachine;Lcom/android/internal/telephony/State;)V

    return v1

    .line 461
    :cond_69
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsEnablementTracker$ImsEnablementTrackerStateMachine$Disabling;->this$1:Lcom/android/internal/telephony/ims/ImsEnablementTracker$ImsEnablementTrackerStateMachine;

    const/4 v2, 0x2

    # invokes: Lcom/android/internal/telephony/StateMachine;->removeMessages(I)V
    invoke-static {v0, v2}, Lcom/android/internal/telephony/ims/ImsEnablementTracker$ImsEnablementTrackerStateMachine;->access$000(Lcom/android/internal/telephony/ims/ImsEnablementTracker$ImsEnablementTrackerStateMachine;I)V

    .line 462
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsEnablementTracker$ImsEnablementTrackerStateMachine$Disabling;->this$1:Lcom/android/internal/telephony/ims/ImsEnablementTracker$ImsEnablementTrackerStateMachine;

    iget-object v0, v0, Lcom/android/internal/telephony/ims/ImsEnablementTracker$ImsEnablementTrackerStateMachine;->this$0:Lcom/android/internal/telephony/ims/ImsEnablementTracker;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-static {v0, v2, p1}, Lcom/android/internal/telephony/ims/ImsEnablementTracker;->-$$Nest$msendDisableIms(Lcom/android/internal/telephony/ims/ImsEnablementTracker;II)V

    .line 463
    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsEnablementTracker$ImsEnablementTrackerStateMachine$Disabling;->this$1:Lcom/android/internal/telephony/ims/ImsEnablementTracker$ImsEnablementTrackerStateMachine;

    iget-object p1, p0, Lcom/android/internal/telephony/ims/ImsEnablementTracker$ImsEnablementTrackerStateMachine;->mDisabled:Lcom/android/internal/telephony/ims/ImsEnablementTracker$ImsEnablementTrackerStateMachine$Disabled;

    invoke-static {p0, p1}, Lcom/android/internal/telephony/ims/ImsEnablementTracker$ImsEnablementTrackerStateMachine;->-$$Nest$mtransitionState(Lcom/android/internal/telephony/ims/ImsEnablementTracker$ImsEnablementTrackerStateMachine;Lcom/android/internal/telephony/State;)V

    return v1

    .line 466
    :cond_82
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsEnablementTracker$ImsEnablementTrackerStateMachine$Disabling;->this$1:Lcom/android/internal/telephony/ims/ImsEnablementTracker$ImsEnablementTrackerStateMachine;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v2}, Lcom/android/internal/telephony/ims/ImsEnablementTracker$ImsEnablementTrackerStateMachine;->-$$Nest$fputmSlotId(Lcom/android/internal/telephony/ims/ImsEnablementTracker$ImsEnablementTrackerStateMachine;I)V

    .line 467
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsEnablementTracker$ImsEnablementTrackerStateMachine$Disabling;->this$1:Lcom/android/internal/telephony/ims/ImsEnablementTracker$ImsEnablementTrackerStateMachine;

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-static {v0, p1}, Lcom/android/internal/telephony/ims/ImsEnablementTracker$ImsEnablementTrackerStateMachine;->-$$Nest$fputmSubId(Lcom/android/internal/telephony/ims/ImsEnablementTracker$ImsEnablementTrackerStateMachine;I)V

    .line 468
    iget-object p1, p0, Lcom/android/internal/telephony/ims/ImsEnablementTracker$ImsEnablementTrackerStateMachine$Disabling;->this$1:Lcom/android/internal/telephony/ims/ImsEnablementTracker$ImsEnablementTrackerStateMachine;

    invoke-virtual {p1}, Lcom/android/internal/telephony/ims/ImsEnablementTracker$ImsEnablementTrackerStateMachine;->clearAllMessage()V

    .line 469
    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsEnablementTracker$ImsEnablementTrackerStateMachine$Disabling;->this$1:Lcom/android/internal/telephony/ims/ImsEnablementTracker$ImsEnablementTrackerStateMachine;

    iget-object p1, p0, Lcom/android/internal/telephony/ims/ImsEnablementTracker$ImsEnablementTrackerStateMachine;->mResetting:Lcom/android/internal/telephony/ims/ImsEnablementTracker$ImsEnablementTrackerStateMachine$Resetting;

    invoke-static {p0, p1}, Lcom/android/internal/telephony/ims/ImsEnablementTracker$ImsEnablementTrackerStateMachine;->-$$Nest$mtransitionState(Lcom/android/internal/telephony/ims/ImsEnablementTracker$ImsEnablementTrackerStateMachine;Lcom/android/internal/telephony/State;)V

    return v1

    .line 443
    :cond_9d
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsEnablementTracker$ImsEnablementTrackerStateMachine$Disabling;->this$1:Lcom/android/internal/telephony/ims/ImsEnablementTracker$ImsEnablementTrackerStateMachine;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v2}, Lcom/android/internal/telephony/ims/ImsEnablementTracker$ImsEnablementTrackerStateMachine;->-$$Nest$fputmSlotId(Lcom/android/internal/telephony/ims/ImsEnablementTracker$ImsEnablementTrackerStateMachine;I)V

    .line 444
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsEnablementTracker$ImsEnablementTrackerStateMachine$Disabling;->this$1:Lcom/android/internal/telephony/ims/ImsEnablementTracker$ImsEnablementTrackerStateMachine;

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-static {v0, p1}, Lcom/android/internal/telephony/ims/ImsEnablementTracker$ImsEnablementTrackerStateMachine;->-$$Nest$fputmSubId(Lcom/android/internal/telephony/ims/ImsEnablementTracker$ImsEnablementTrackerStateMachine;I)V

    .line 445
    iget-object p1, p0, Lcom/android/internal/telephony/ims/ImsEnablementTracker$ImsEnablementTrackerStateMachine$Disabling;->this$1:Lcom/android/internal/telephony/ims/ImsEnablementTracker$ImsEnablementTrackerStateMachine;

    invoke-virtual {p1}, Lcom/android/internal/telephony/ims/ImsEnablementTracker$ImsEnablementTrackerStateMachine;->clearAllMessage()V

    .line 446
    iget-object p1, p0, Lcom/android/internal/telephony/ims/ImsEnablementTracker$ImsEnablementTrackerStateMachine$Disabling;->this$1:Lcom/android/internal/telephony/ims/ImsEnablementTracker$ImsEnablementTrackerStateMachine;

    invoke-static {p1}, Lcom/android/internal/telephony/ims/ImsEnablementTracker$ImsEnablementTrackerStateMachine;->-$$Nest$fgetmPreviousState(Lcom/android/internal/telephony/ims/ImsEnablementTracker$ImsEnablementTrackerStateMachine;)Lcom/android/internal/telephony/IState;

    move-result-object p1

    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsEnablementTracker$ImsEnablementTrackerStateMachine$Disabling;->this$1:Lcom/android/internal/telephony/ims/ImsEnablementTracker$ImsEnablementTrackerStateMachine;

    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsEnablementTracker$ImsEnablementTrackerStateMachine;->mResetting:Lcom/android/internal/telephony/ims/ImsEnablementTracker$ImsEnablementTrackerStateMachine$Resetting;

    if-ne p1, v0, :cond_c2

    .line 450
    iget-object p1, p0, Lcom/android/internal/telephony/ims/ImsEnablementTracker$ImsEnablementTrackerStateMachine;->mEnabling:Lcom/android/internal/telephony/ims/ImsEnablementTracker$ImsEnablementTrackerStateMachine$Enabling;

    invoke-static {p0, p1}, Lcom/android/internal/telephony/ims/ImsEnablementTracker$ImsEnablementTrackerStateMachine;->-$$Nest$mtransitionState(Lcom/android/internal/telephony/ims/ImsEnablementTracker$ImsEnablementTrackerStateMachine;Lcom/android/internal/telephony/State;)V

    goto :goto_c7

    .line 455
    :cond_c2
    iget-object p1, p0, Lcom/android/internal/telephony/ims/ImsEnablementTracker$ImsEnablementTrackerStateMachine;->mEnabled:Lcom/android/internal/telephony/ims/ImsEnablementTracker$ImsEnablementTrackerStateMachine$Enabled;

    invoke-static {p0, p1}, Lcom/android/internal/telephony/ims/ImsEnablementTracker$ImsEnablementTrackerStateMachine;->-$$Nest$mtransitionState(Lcom/android/internal/telephony/ims/ImsEnablementTracker$ImsEnablementTrackerStateMachine;Lcom/android/internal/telephony/State;)V

    :goto_c7
    return v1
.end method

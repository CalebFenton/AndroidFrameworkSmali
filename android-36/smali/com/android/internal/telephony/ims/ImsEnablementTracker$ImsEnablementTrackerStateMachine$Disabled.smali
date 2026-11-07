.class Lcom/android/internal/telephony/ims/ImsEnablementTracker$ImsEnablementTrackerStateMachine$Disabled;
.super Lcom/android/internal/telephony/State;
.source "ImsEnablementTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/ims/ImsEnablementTracker$ImsEnablementTrackerStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Disabled"
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

    .line 483
    iput-object p1, p0, Lcom/android/internal/telephony/ims/ImsEnablementTracker$ImsEnablementTrackerStateMachine$Disabled;->this$1:Lcom/android/internal/telephony/ims/ImsEnablementTracker$ImsEnablementTrackerStateMachine;

    invoke-direct {p0}, Lcom/android/internal/telephony/State;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist enter()V
    .registers 3

    .line 488
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsEnablementTracker$ImsEnablementTrackerStateMachine$Disabled;->this$1:Lcom/android/internal/telephony/ims/ImsEnablementTracker$ImsEnablementTrackerStateMachine;

    invoke-static {p0}, Lcom/android/internal/telephony/ims/ImsEnablementTracker$ImsEnablementTrackerStateMachine;->-$$Nest$fgetmPhoneId(Lcom/android/internal/telephony/ims/ImsEnablementTracker$ImsEnablementTrackerStateMachine;)I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "]Disabled state:enter"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ImsEnablementTracker"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public blacklist processMessage(Landroid/os/Message;)Z
    .registers 5

    .line 493
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsEnablementTracker$ImsEnablementTrackerStateMachine$Disabled;->this$1:Lcom/android/internal/telephony/ims/ImsEnablementTracker$ImsEnablementTrackerStateMachine;

    invoke-static {v1}, Lcom/android/internal/telephony/ims/ImsEnablementTracker$ImsEnablementTrackerStateMachine;->-$$Nest$fgetmPhoneId(Lcom/android/internal/telephony/ims/ImsEnablementTracker$ImsEnablementTrackerStateMachine;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]Disabled state:processMessage. msg.what="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/internal/telephony/ims/ImsEnablementTracker;->-$$Nest$sfgetEVENT_DESCRIPTION()Ljava/util/Map;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    .line 494
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",component:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsEnablementTracker$ImsEnablementTrackerStateMachine$Disabled;->this$1:Lcom/android/internal/telephony/ims/ImsEnablementTracker$ImsEnablementTrackerStateMachine;

    iget-object v1, v1, Lcom/android/internal/telephony/ims/ImsEnablementTracker$ImsEnablementTrackerStateMachine;->this$0:Lcom/android/internal/telephony/ims/ImsEnablementTracker;

    invoke-static {v1}, Lcom/android/internal/telephony/ims/ImsEnablementTracker;->-$$Nest$fgetmComponentName(Lcom/android/internal/telephony/ims/ImsEnablementTracker;)Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 493
    const-string v1, "ImsEnablementTracker"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_7c

    const/4 v2, 0x3

    if-eq v0, v2, :cond_66

    const/16 p1, 0x8

    if-eq v0, p1, :cond_5c

    const/16 p1, 0x9

    if-eq v0, p1, :cond_56

    const/4 p0, 0x0

    return p0

    .line 511
    :cond_56
    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsEnablementTracker$ImsEnablementTrackerStateMachine$Disabled;->this$1:Lcom/android/internal/telephony/ims/ImsEnablementTracker$ImsEnablementTrackerStateMachine;

    invoke-static {p0}, Lcom/android/internal/telephony/ims/ImsEnablementTracker$ImsEnablementTrackerStateMachine;->-$$Nest$mhandleInvalidSubIdMessage(Lcom/android/internal/telephony/ims/ImsEnablementTracker$ImsEnablementTrackerStateMachine;)V

    return v1

    .line 508
    :cond_5c
    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsEnablementTracker$ImsEnablementTrackerStateMachine$Disabled;->this$1:Lcom/android/internal/telephony/ims/ImsEnablementTracker$ImsEnablementTrackerStateMachine;

    invoke-static {p0}, Lcom/android/internal/telephony/ims/ImsEnablementTracker$ImsEnablementTrackerStateMachine;->-$$Nest$fgetmDisconnected(Lcom/android/internal/telephony/ims/ImsEnablementTracker$ImsEnablementTrackerStateMachine;)Lcom/android/internal/telephony/ims/ImsEnablementTracker$ImsEnablementTrackerStateMachine$Disconnected;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/internal/telephony/ims/ImsEnablementTracker$ImsEnablementTrackerStateMachine;->-$$Nest$mtransitionState(Lcom/android/internal/telephony/ims/ImsEnablementTracker$ImsEnablementTrackerStateMachine;Lcom/android/internal/telephony/State;)V

    return v1

    .line 503
    :cond_66
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsEnablementTracker$ImsEnablementTrackerStateMachine$Disabled;->this$1:Lcom/android/internal/telephony/ims/ImsEnablementTracker$ImsEnablementTrackerStateMachine;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v2}, Lcom/android/internal/telephony/ims/ImsEnablementTracker$ImsEnablementTrackerStateMachine;->-$$Nest$fputmSlotId(Lcom/android/internal/telephony/ims/ImsEnablementTracker$ImsEnablementTrackerStateMachine;I)V

    .line 504
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsEnablementTracker$ImsEnablementTrackerStateMachine$Disabled;->this$1:Lcom/android/internal/telephony/ims/ImsEnablementTracker$ImsEnablementTrackerStateMachine;

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-static {v0, p1}, Lcom/android/internal/telephony/ims/ImsEnablementTracker$ImsEnablementTrackerStateMachine;->-$$Nest$fputmSubId(Lcom/android/internal/telephony/ims/ImsEnablementTracker$ImsEnablementTrackerStateMachine;I)V

    .line 505
    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsEnablementTracker$ImsEnablementTrackerStateMachine$Disabled;->this$1:Lcom/android/internal/telephony/ims/ImsEnablementTracker$ImsEnablementTrackerStateMachine;

    iget-object p1, p0, Lcom/android/internal/telephony/ims/ImsEnablementTracker$ImsEnablementTrackerStateMachine;->mResetting:Lcom/android/internal/telephony/ims/ImsEnablementTracker$ImsEnablementTrackerStateMachine$Resetting;

    invoke-static {p0, p1}, Lcom/android/internal/telephony/ims/ImsEnablementTracker$ImsEnablementTrackerStateMachine;->-$$Nest$mtransitionState(Lcom/android/internal/telephony/ims/ImsEnablementTracker$ImsEnablementTrackerStateMachine;Lcom/android/internal/telephony/State;)V

    return v1

    .line 498
    :cond_7c
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsEnablementTracker$ImsEnablementTrackerStateMachine$Disabled;->this$1:Lcom/android/internal/telephony/ims/ImsEnablementTracker$ImsEnablementTrackerStateMachine;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v2}, Lcom/android/internal/telephony/ims/ImsEnablementTracker$ImsEnablementTrackerStateMachine;->-$$Nest$fputmSlotId(Lcom/android/internal/telephony/ims/ImsEnablementTracker$ImsEnablementTrackerStateMachine;I)V

    .line 499
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsEnablementTracker$ImsEnablementTrackerStateMachine$Disabled;->this$1:Lcom/android/internal/telephony/ims/ImsEnablementTracker$ImsEnablementTrackerStateMachine;

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-static {v0, p1}, Lcom/android/internal/telephony/ims/ImsEnablementTracker$ImsEnablementTrackerStateMachine;->-$$Nest$fputmSubId(Lcom/android/internal/telephony/ims/ImsEnablementTracker$ImsEnablementTrackerStateMachine;I)V

    .line 500
    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsEnablementTracker$ImsEnablementTrackerStateMachine$Disabled;->this$1:Lcom/android/internal/telephony/ims/ImsEnablementTracker$ImsEnablementTrackerStateMachine;

    iget-object p1, p0, Lcom/android/internal/telephony/ims/ImsEnablementTracker$ImsEnablementTrackerStateMachine;->mEnabling:Lcom/android/internal/telephony/ims/ImsEnablementTracker$ImsEnablementTrackerStateMachine$Enabling;

    invoke-static {p0, p1}, Lcom/android/internal/telephony/ims/ImsEnablementTracker$ImsEnablementTrackerStateMachine;->-$$Nest$mtransitionState(Lcom/android/internal/telephony/ims/ImsEnablementTracker$ImsEnablementTrackerStateMachine;Lcom/android/internal/telephony/State;)V

    return v1
.end method

.class Lcom/android/internal/telephony/ims/ImsEnablementTracker$ImsEnablementTrackerStateMachine$Disconnected;
.super Lcom/android/internal/telephony/State;
.source "ImsEnablementTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/ims/ImsEnablementTracker$ImsEnablementTrackerStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Disconnected"
.end annotation


# instance fields
.field private blacklist mLastMsg:I

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

    .line 614
    iput-object p1, p0, Lcom/android/internal/telephony/ims/ImsEnablementTracker$ImsEnablementTrackerStateMachine$Disconnected;->this$1:Lcom/android/internal/telephony/ims/ImsEnablementTracker$ImsEnablementTrackerStateMachine;

    invoke-direct {p0}, Lcom/android/internal/telephony/State;-><init>()V

    const/4 p1, 0x0

    .line 617
    iput p1, p0, Lcom/android/internal/telephony/ims/ImsEnablementTracker$ImsEnablementTrackerStateMachine$Disconnected;->mLastMsg:I

    return-void
.end method


# virtual methods
.method public blacklist enter()V
    .registers 3

    .line 621
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsEnablementTracker$ImsEnablementTrackerStateMachine$Disconnected;->this$1:Lcom/android/internal/telephony/ims/ImsEnablementTracker$ImsEnablementTrackerStateMachine;

    invoke-static {v1}, Lcom/android/internal/telephony/ims/ImsEnablementTracker$ImsEnablementTrackerStateMachine;->-$$Nest$fgetmPhoneId(Lcom/android/internal/telephony/ims/ImsEnablementTracker$ImsEnablementTrackerStateMachine;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]Disconnected state:enter"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsEnablementTracker"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 622
    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsEnablementTracker$ImsEnablementTrackerStateMachine$Disconnected;->this$1:Lcom/android/internal/telephony/ims/ImsEnablementTracker$ImsEnablementTrackerStateMachine;

    invoke-virtual {p0}, Lcom/android/internal/telephony/ims/ImsEnablementTracker$ImsEnablementTrackerStateMachine;->clearAllMessage()V

    return-void
.end method

.method public blacklist processMessage(Landroid/os/Message;)Z
    .registers 11

    .line 627
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsEnablementTracker$ImsEnablementTrackerStateMachine$Disconnected;->this$1:Lcom/android/internal/telephony/ims/ImsEnablementTracker$ImsEnablementTrackerStateMachine;

    invoke-static {v1}, Lcom/android/internal/telephony/ims/ImsEnablementTracker$ImsEnablementTrackerStateMachine;->-$$Nest$fgetmPhoneId(Lcom/android/internal/telephony/ims/ImsEnablementTracker$ImsEnablementTrackerStateMachine;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]Disconnected state:processMessage. msg.what="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/internal/telephony/ims/ImsEnablementTracker;->-$$Nest$sfgetEVENT_DESCRIPTION()Ljava/util/Map;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    .line 628
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",component:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsEnablementTracker$ImsEnablementTrackerStateMachine$Disconnected;->this$1:Lcom/android/internal/telephony/ims/ImsEnablementTracker$ImsEnablementTrackerStateMachine;

    iget-object v1, v1, Lcom/android/internal/telephony/ims/ImsEnablementTracker$ImsEnablementTrackerStateMachine;->this$0:Lcom/android/internal/telephony/ims/ImsEnablementTracker;

    invoke-static {v1}, Lcom/android/internal/telephony/ims/ImsEnablementTracker;->-$$Nest$fgetmComponentName(Lcom/android/internal/telephony/ims/ImsEnablementTracker;)Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 627
    const-string v1, "ImsEnablementTracker"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_78

    const/4 v2, 0x2

    if-eq v0, v2, :cond_78

    const/4 v2, 0x3

    if-eq v0, v2, :cond_78

    const/4 p1, 0x7

    const/4 v2, 0x0

    if-eq v0, p1, :cond_54

    return v2

    .line 632
    :cond_54
    iget-object p1, p0, Lcom/android/internal/telephony/ims/ImsEnablementTracker$ImsEnablementTrackerStateMachine$Disconnected;->this$1:Lcom/android/internal/telephony/ims/ImsEnablementTracker$ImsEnablementTrackerStateMachine;

    invoke-virtual {p1}, Lcom/android/internal/telephony/ims/ImsEnablementTracker$ImsEnablementTrackerStateMachine;->clearAllMessage()V

    .line 633
    iget-object p1, p0, Lcom/android/internal/telephony/ims/ImsEnablementTracker$ImsEnablementTrackerStateMachine$Disconnected;->this$1:Lcom/android/internal/telephony/ims/ImsEnablementTracker$ImsEnablementTrackerStateMachine;

    iget-object v0, p1, Lcom/android/internal/telephony/ims/ImsEnablementTracker$ImsEnablementTrackerStateMachine;->mDefault:Lcom/android/internal/telephony/ims/ImsEnablementTracker$ImsEnablementTrackerStateMachine$Default;

    invoke-static {p1, v0}, Lcom/android/internal/telephony/ims/ImsEnablementTracker$ImsEnablementTrackerStateMachine;->-$$Nest$mtransitionState(Lcom/android/internal/telephony/ims/ImsEnablementTracker$ImsEnablementTrackerStateMachine;Lcom/android/internal/telephony/State;)V

    .line 634
    iget v4, p0, Lcom/android/internal/telephony/ims/ImsEnablementTracker$ImsEnablementTrackerStateMachine$Disconnected;->mLastMsg:I

    if-eqz v4, :cond_77

    .line 635
    iget-object v3, p0, Lcom/android/internal/telephony/ims/ImsEnablementTracker$ImsEnablementTrackerStateMachine$Disconnected;->this$1:Lcom/android/internal/telephony/ims/ImsEnablementTracker$ImsEnablementTrackerStateMachine;

    invoke-static {v3}, Lcom/android/internal/telephony/ims/ImsEnablementTracker$ImsEnablementTrackerStateMachine;->-$$Nest$fgetmSlotId(Lcom/android/internal/telephony/ims/ImsEnablementTracker$ImsEnablementTrackerStateMachine;)I

    move-result v5

    iget-object p1, p0, Lcom/android/internal/telephony/ims/ImsEnablementTracker$ImsEnablementTrackerStateMachine$Disconnected;->this$1:Lcom/android/internal/telephony/ims/ImsEnablementTracker$ImsEnablementTrackerStateMachine;

    invoke-static {p1}, Lcom/android/internal/telephony/ims/ImsEnablementTracker$ImsEnablementTrackerStateMachine;->-$$Nest$fgetmSubId(Lcom/android/internal/telephony/ims/ImsEnablementTracker$ImsEnablementTrackerStateMachine;)I

    move-result v6

    const-wide/16 v7, 0x0

    invoke-virtual/range {v3 .. v8}, Lcom/android/internal/telephony/StateMachine;->sendMessageDelayed(IIIJ)V

    .line 636
    iput v2, p0, Lcom/android/internal/telephony/ims/ImsEnablementTracker$ImsEnablementTrackerStateMachine$Disconnected;->mLastMsg:I

    :cond_77
    return v1

    .line 642
    :cond_78
    iput v0, p0, Lcom/android/internal/telephony/ims/ImsEnablementTracker$ImsEnablementTrackerStateMachine$Disconnected;->mLastMsg:I

    .line 643
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsEnablementTracker$ImsEnablementTrackerStateMachine$Disconnected;->this$1:Lcom/android/internal/telephony/ims/ImsEnablementTracker$ImsEnablementTrackerStateMachine;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v2}, Lcom/android/internal/telephony/ims/ImsEnablementTracker$ImsEnablementTrackerStateMachine;->-$$Nest$fputmSlotId(Lcom/android/internal/telephony/ims/ImsEnablementTracker$ImsEnablementTrackerStateMachine;I)V

    .line 644
    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsEnablementTracker$ImsEnablementTrackerStateMachine$Disconnected;->this$1:Lcom/android/internal/telephony/ims/ImsEnablementTracker$ImsEnablementTrackerStateMachine;

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-static {p0, p1}, Lcom/android/internal/telephony/ims/ImsEnablementTracker$ImsEnablementTrackerStateMachine;->-$$Nest$fputmSubId(Lcom/android/internal/telephony/ims/ImsEnablementTracker$ImsEnablementTrackerStateMachine;I)V

    return v1
.end method

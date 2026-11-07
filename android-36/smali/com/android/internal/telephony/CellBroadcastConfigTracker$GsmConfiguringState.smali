.class Lcom/android/internal/telephony/CellBroadcastConfigTracker$GsmConfiguringState;
.super Lcom/android/internal/telephony/State;
.source "CellBroadcastConfigTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/CellBroadcastConfigTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GsmConfiguringState"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/CellBroadcastConfigTracker;


# direct methods
.method private constructor blacklist <init>(Lcom/android/internal/telephony/CellBroadcastConfigTracker;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 220
    iput-object p1, p0, Lcom/android/internal/telephony/CellBroadcastConfigTracker$GsmConfiguringState;->this$0:Lcom/android/internal/telephony/CellBroadcastConfigTracker;

    invoke-direct {p0}, Lcom/android/internal/telephony/State;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/telephony/CellBroadcastConfigTracker;Lcom/android/internal/telephony/CellBroadcastConfigTracker-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CellBroadcastConfigTracker$GsmConfiguringState;-><init>(Lcom/android/internal/telephony/CellBroadcastConfigTracker;)V

    return-void
.end method


# virtual methods
.method public blacklist processMessage(Landroid/os/Message;)Z
    .registers 8

    .line 224
    invoke-static {}, Lcom/android/internal/telephony/CellBroadcastConfigTracker;->-$$Nest$sfgetDBG()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 225
    iget-object v0, p0, Lcom/android/internal/telephony/CellBroadcastConfigTracker$GsmConfiguringState;->this$0:Lcom/android/internal/telephony/CellBroadcastConfigTracker;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GsmConfiguringState message:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/internal/telephony/StateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/internal/telephony/CellBroadcastConfigTracker;->access$600(Lcom/android/internal/telephony/CellBroadcastConfigTracker;Ljava/lang/String;)V

    .line 227
    :cond_1e
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_9e

    const/4 v2, 0x2

    if-eq v0, v2, :cond_28

    const/4 p0, 0x0

    return p0

    .line 233
    :cond_28
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 234
    iget-object v0, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/CellBroadcastConfigTracker$Request;

    .line 235
    invoke-static {}, Lcom/android/internal/telephony/CellBroadcastConfigTracker;->-$$Nest$sfgetDBG()Z

    move-result v3

    if-eqz v3, :cond_4c

    .line 236
    iget-object v3, p0, Lcom/android/internal/telephony/CellBroadcastConfigTracker$GsmConfiguringState;->this$0:Lcom/android/internal/telephony/CellBroadcastConfigTracker;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "GsmConfiguringState handle EVENT_CONFIGURATION_DONE with request:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/android/internal/telephony/StateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/internal/telephony/CellBroadcastConfigTracker;->access$700(Lcom/android/internal/telephony/CellBroadcastConfigTracker;Ljava/lang/String;)V

    .line 239
    :cond_4c
    iget-object p1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez p1, :cond_68

    .line 241
    iget-object p1, p0, Lcom/android/internal/telephony/CellBroadcastConfigTracker$GsmConfiguringState;->this$0:Lcom/android/internal/telephony/CellBroadcastConfigTracker;

    .line 242
    invoke-virtual {v0}, Lcom/android/internal/telephony/CellBroadcastConfigTracker$Request;->get3gppRanges()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    xor-int/2addr v2, v1

    .line 241
    invoke-static {p1, v1, v2, v0}, Lcom/android/internal/telephony/CellBroadcastConfigTracker;->-$$Nest$msetActivation(Lcom/android/internal/telephony/CellBroadcastConfigTracker;IZLcom/android/internal/telephony/CellBroadcastConfigTracker$Request;)V

    .line 243
    iget-object p0, p0, Lcom/android/internal/telephony/CellBroadcastConfigTracker$GsmConfiguringState;->this$0:Lcom/android/internal/telephony/CellBroadcastConfigTracker;

    invoke-static {p0}, Lcom/android/internal/telephony/CellBroadcastConfigTracker;->-$$Nest$fgetmGsmActivatingState(Lcom/android/internal/telephony/CellBroadcastConfigTracker;)Lcom/android/internal/telephony/CellBroadcastConfigTracker$GsmActivatingState;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/StateMachine;->transitionTo(Lcom/android/internal/telephony/IState;)V

    goto :goto_9d

    .line 245
    :cond_68
    iget-object p1, p0, Lcom/android/internal/telephony/CellBroadcastConfigTracker$GsmConfiguringState;->this$0:Lcom/android/internal/telephony/CellBroadcastConfigTracker;

    const-string v3, "Failed to set gsm config"

    # invokes: Lcom/android/internal/telephony/StateMachine;->logd(Ljava/lang/String;)V
    invoke-static {p1, v3}, Lcom/android/internal/telephony/CellBroadcastConfigTracker;->access$800(Lcom/android/internal/telephony/CellBroadcastConfigTracker;Ljava/lang/String;)V

    .line 246
    iget-object p1, p0, Lcom/android/internal/telephony/CellBroadcastConfigTracker$GsmConfiguringState;->this$0:Lcom/android/internal/telephony/CellBroadcastConfigTracker;

    invoke-static {p1}, Lcom/android/internal/telephony/CellBroadcastConfigTracker;->-$$Nest$fgetmLocalLog(Lcom/android/internal/telephony/CellBroadcastConfigTracker;)Lcom/android/internal/telephony/LocalLog;

    move-result-object p1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GsmConfiguringState Failed to set gsm config:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    .line 247
    invoke-virtual {v0}, Lcom/android/internal/telephony/CellBroadcastConfigTracker$Request;->getCallback()Ljava/util/function/Consumer;

    move-result-object p1

    .line 248
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 247
    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 250
    iget-object p0, p0, Lcom/android/internal/telephony/CellBroadcastConfigTracker$GsmConfiguringState;->this$0:Lcom/android/internal/telephony/CellBroadcastConfigTracker;

    invoke-static {p0}, Lcom/android/internal/telephony/CellBroadcastConfigTracker;->-$$Nest$fgetmIdleState(Lcom/android/internal/telephony/CellBroadcastConfigTracker;)Lcom/android/internal/telephony/CellBroadcastConfigTracker$IdleState;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/StateMachine;->transitionTo(Lcom/android/internal/telephony/IState;)V

    :goto_9d
    return v1

    .line 229
    :cond_9e
    iget-object p0, p0, Lcom/android/internal/telephony/CellBroadcastConfigTracker$GsmConfiguringState;->this$0:Lcom/android/internal/telephony/CellBroadcastConfigTracker;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/StateMachine;->deferMessage(Landroid/os/Message;)V

    return v1
.end method

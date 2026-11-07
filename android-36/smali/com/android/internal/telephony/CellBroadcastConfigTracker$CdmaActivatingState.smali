.class Lcom/android/internal/telephony/CellBroadcastConfigTracker$CdmaActivatingState;
.super Lcom/android/internal/telephony/State;
.source "CellBroadcastConfigTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/CellBroadcastConfigTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CdmaActivatingState"
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

    .line 366
    iput-object p1, p0, Lcom/android/internal/telephony/CellBroadcastConfigTracker$CdmaActivatingState;->this$0:Lcom/android/internal/telephony/CellBroadcastConfigTracker;

    invoke-direct {p0}, Lcom/android/internal/telephony/State;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/telephony/CellBroadcastConfigTracker;Lcom/android/internal/telephony/CellBroadcastConfigTracker-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CellBroadcastConfigTracker$CdmaActivatingState;-><init>(Lcom/android/internal/telephony/CellBroadcastConfigTracker;)V

    return-void
.end method


# virtual methods
.method public blacklist processMessage(Landroid/os/Message;)Z
    .registers 9

    .line 370
    invoke-static {}, Lcom/android/internal/telephony/CellBroadcastConfigTracker;->-$$Nest$sfgetDBG()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 371
    iget-object v0, p0, Lcom/android/internal/telephony/CellBroadcastConfigTracker$CdmaActivatingState;->this$0:Lcom/android/internal/telephony/CellBroadcastConfigTracker;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CdmaActivatingState message:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/internal/telephony/StateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/internal/telephony/CellBroadcastConfigTracker;->access$1600(Lcom/android/internal/telephony/CellBroadcastConfigTracker;Ljava/lang/String;)V

    .line 373
    :cond_1e
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_a5

    const/4 v2, 0x3

    const/4 v3, 0x0

    if-eq v0, v2, :cond_28

    return v3

    .line 379
    :cond_28
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 380
    iget-object v0, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/CellBroadcastConfigTracker$Request;

    .line 381
    invoke-static {}, Lcom/android/internal/telephony/CellBroadcastConfigTracker;->-$$Nest$sfgetDBG()Z

    move-result v4

    if-eqz v4, :cond_70

    .line 382
    iget-object v4, p0, Lcom/android/internal/telephony/CellBroadcastConfigTracker$CdmaActivatingState;->this$0:Lcom/android/internal/telephony/CellBroadcastConfigTracker;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CdmaActivatingState handle EVENT_ACTIVATION_DONE with request:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    # invokes: Lcom/android/internal/telephony/StateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/internal/telephony/CellBroadcastConfigTracker;->access$1700(Lcom/android/internal/telephony/CellBroadcastConfigTracker;Ljava/lang/String;)V

    .line 384
    iget-object v4, p0, Lcom/android/internal/telephony/CellBroadcastConfigTracker$CdmaActivatingState;->this$0:Lcom/android/internal/telephony/CellBroadcastConfigTracker;

    invoke-static {v4}, Lcom/android/internal/telephony/CellBroadcastConfigTracker;->-$$Nest$fgetmLocalLog(Lcom/android/internal/telephony/CellBroadcastConfigTracker;)Lcom/android/internal/telephony/LocalLog;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CdmaActivatingState EVENT_ACTIVATION_DONE, exception:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", request:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    .line 387
    :cond_70
    iget-object p1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez p1, :cond_89

    .line 388
    iget-object p1, p0, Lcom/android/internal/telephony/CellBroadcastConfigTracker$CdmaActivatingState;->this$0:Lcom/android/internal/telephony/CellBroadcastConfigTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CellBroadcastConfigTracker$Request;->get3gpp2Ranges()Ljava/util/List;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/android/internal/telephony/CellBroadcastConfigTracker;->-$$Nest$fputmCbRanges3gpp2(Lcom/android/internal/telephony/CellBroadcastConfigTracker;Ljava/util/List;)V

    .line 389
    invoke-virtual {v0}, Lcom/android/internal/telephony/CellBroadcastConfigTracker$Request;->getCallback()Ljava/util/function/Consumer;

    move-result-object p1

    .line 390
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 389
    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_9b

    .line 392
    :cond_89
    iget-object p1, p0, Lcom/android/internal/telephony/CellBroadcastConfigTracker$CdmaActivatingState;->this$0:Lcom/android/internal/telephony/CellBroadcastConfigTracker;

    const-string v3, "Failed to set cdma activation"

    # invokes: Lcom/android/internal/telephony/StateMachine;->logd(Ljava/lang/String;)V
    invoke-static {p1, v3}, Lcom/android/internal/telephony/CellBroadcastConfigTracker;->access$1800(Lcom/android/internal/telephony/CellBroadcastConfigTracker;Ljava/lang/String;)V

    .line 393
    invoke-virtual {v0}, Lcom/android/internal/telephony/CellBroadcastConfigTracker$Request;->getCallback()Ljava/util/function/Consumer;

    move-result-object p1

    .line 394
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 393
    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 397
    :goto_9b
    iget-object p0, p0, Lcom/android/internal/telephony/CellBroadcastConfigTracker$CdmaActivatingState;->this$0:Lcom/android/internal/telephony/CellBroadcastConfigTracker;

    invoke-static {p0}, Lcom/android/internal/telephony/CellBroadcastConfigTracker;->-$$Nest$fgetmIdleState(Lcom/android/internal/telephony/CellBroadcastConfigTracker;)Lcom/android/internal/telephony/CellBroadcastConfigTracker$IdleState;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/StateMachine;->transitionTo(Lcom/android/internal/telephony/IState;)V

    return v1

    .line 375
    :cond_a5
    iget-object p0, p0, Lcom/android/internal/telephony/CellBroadcastConfigTracker$CdmaActivatingState;->this$0:Lcom/android/internal/telephony/CellBroadcastConfigTracker;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/StateMachine;->deferMessage(Landroid/os/Message;)V

    return v1
.end method

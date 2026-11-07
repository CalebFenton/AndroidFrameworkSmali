.class Lcom/android/internal/telephony/CellBroadcastConfigTracker$IdleState;
.super Lcom/android/internal/telephony/State;
.source "CellBroadcastConfigTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/CellBroadcastConfigTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IdleState"
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

    .line 176
    iput-object p1, p0, Lcom/android/internal/telephony/CellBroadcastConfigTracker$IdleState;->this$0:Lcom/android/internal/telephony/CellBroadcastConfigTracker;

    invoke-direct {p0}, Lcom/android/internal/telephony/State;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/telephony/CellBroadcastConfigTracker;Lcom/android/internal/telephony/CellBroadcastConfigTracker-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CellBroadcastConfigTracker$IdleState;-><init>(Lcom/android/internal/telephony/CellBroadcastConfigTracker;)V

    return-void
.end method


# virtual methods
.method public blacklist processMessage(Landroid/os/Message;)Z
    .registers 7

    .line 180
    invoke-static {}, Lcom/android/internal/telephony/CellBroadcastConfigTracker;->-$$Nest$sfgetDBG()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 181
    iget-object v0, p0, Lcom/android/internal/telephony/CellBroadcastConfigTracker$IdleState;->this$0:Lcom/android/internal/telephony/CellBroadcastConfigTracker;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IdleState message:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/internal/telephony/StateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/internal/telephony/CellBroadcastConfigTracker;->access$300(Lcom/android/internal/telephony/CellBroadcastConfigTracker;Ljava/lang/String;)V

    .line 183
    :cond_1e
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_25

    return v2

    .line 185
    :cond_25
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/telephony/CellBroadcastConfigTracker$Request;

    .line 186
    invoke-static {}, Lcom/android/internal/telephony/CellBroadcastConfigTracker;->-$$Nest$sfgetDBG()Z

    move-result v0

    if-eqz v0, :cond_79

    .line 187
    iget-object v0, p0, Lcom/android/internal/telephony/CellBroadcastConfigTracker$IdleState;->this$0:Lcom/android/internal/telephony/CellBroadcastConfigTracker;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IdleState handle EVENT_REQUEST with request:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/android/internal/telephony/StateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v0, v3}, Lcom/android/internal/telephony/CellBroadcastConfigTracker;->access$400(Lcom/android/internal/telephony/CellBroadcastConfigTracker;Ljava/lang/String;)V

    .line 188
    iget-object v0, p0, Lcom/android/internal/telephony/CellBroadcastConfigTracker$IdleState;->this$0:Lcom/android/internal/telephony/CellBroadcastConfigTracker;

    invoke-static {v0}, Lcom/android/internal/telephony/CellBroadcastConfigTracker;->-$$Nest$fgetmLocalLog(Lcom/android/internal/telephony/CellBroadcastConfigTracker;)Lcom/android/internal/telephony/LocalLog;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", mCbRanges3gpp:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/internal/telephony/CellBroadcastConfigTracker$IdleState;->this$0:Lcom/android/internal/telephony/CellBroadcastConfigTracker;

    invoke-static {v4}, Lcom/android/internal/telephony/CellBroadcastConfigTracker;->-$$Nest$fgetmCbRanges3gpp(Lcom/android/internal/telephony/CellBroadcastConfigTracker;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", mCbRanges3gpp2:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/internal/telephony/CellBroadcastConfigTracker$IdleState;->this$0:Lcom/android/internal/telephony/CellBroadcastConfigTracker;

    invoke-static {v4}, Lcom/android/internal/telephony/CellBroadcastConfigTracker;->-$$Nest$fgetmCbRanges3gpp2(Lcom/android/internal/telephony/CellBroadcastConfigTracker;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    .line 192
    :cond_79
    iget-object v0, p0, Lcom/android/internal/telephony/CellBroadcastConfigTracker$IdleState;->this$0:Lcom/android/internal/telephony/CellBroadcastConfigTracker;

    invoke-static {v0}, Lcom/android/internal/telephony/CellBroadcastConfigTracker;->-$$Nest$fgetmCbRanges3gpp(Lcom/android/internal/telephony/CellBroadcastConfigTracker;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/internal/telephony/CellBroadcastConfigTracker$Request;->get3gppRanges()Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9c

    .line 194
    iget-object v0, p0, Lcom/android/internal/telephony/CellBroadcastConfigTracker$IdleState;->this$0:Lcom/android/internal/telephony/CellBroadcastConfigTracker;

    invoke-virtual {p1}, Lcom/android/internal/telephony/CellBroadcastConfigTracker$Request;->get3gppRanges()Ljava/util/List;

    move-result-object v2

    invoke-static {v0, v2, p1}, Lcom/android/internal/telephony/CellBroadcastConfigTracker;->-$$Nest$msetGsmConfig(Lcom/android/internal/telephony/CellBroadcastConfigTracker;Ljava/util/List;Lcom/android/internal/telephony/CellBroadcastConfigTracker$Request;)V

    .line 195
    iget-object p0, p0, Lcom/android/internal/telephony/CellBroadcastConfigTracker$IdleState;->this$0:Lcom/android/internal/telephony/CellBroadcastConfigTracker;

    invoke-static {p0}, Lcom/android/internal/telephony/CellBroadcastConfigTracker;->-$$Nest$fgetmGsmConfiguringState(Lcom/android/internal/telephony/CellBroadcastConfigTracker;)Lcom/android/internal/telephony/CellBroadcastConfigTracker$GsmConfiguringState;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/StateMachine;->transitionTo(Lcom/android/internal/telephony/IState;)V

    goto :goto_ae

    .line 203
    :cond_9c
    iget-object p0, p0, Lcom/android/internal/telephony/CellBroadcastConfigTracker$IdleState;->this$0:Lcom/android/internal/telephony/CellBroadcastConfigTracker;

    const-string v0, "Do nothing as the requested ranges are same as now"

    # invokes: Lcom/android/internal/telephony/StateMachine;->logd(Ljava/lang/String;)V
    invoke-static {p0, v0}, Lcom/android/internal/telephony/CellBroadcastConfigTracker;->access$500(Lcom/android/internal/telephony/CellBroadcastConfigTracker;Ljava/lang/String;)V

    .line 204
    invoke-virtual {p1}, Lcom/android/internal/telephony/CellBroadcastConfigTracker$Request;->getCallback()Ljava/util/function/Consumer;

    move-result-object p0

    .line 205
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 204
    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :goto_ae
    return v1
.end method

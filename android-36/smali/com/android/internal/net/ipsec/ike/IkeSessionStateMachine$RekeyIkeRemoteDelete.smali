.class Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$RekeyIkeRemoteDelete;
.super Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$SimulRekeyIkeRemoteDelete;
.source "IkeSessionStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RekeyIkeRemoteDelete"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 5612
    iput-object p1, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$RekeyIkeRemoteDelete;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    invoke-direct {p0, p1}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$SimulRekeyIkeRemoteDelete;-><init>(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;)V

    return-void
.end method


# virtual methods
.method public blacklist enterState()V
    .registers 5

    .line 5615
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$RekeyIkeRemoteDelete;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$RekeyIkeRemoteDelete;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v1, v1, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mRemoteInitNewIkeSaRecord:Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;

    iput-object v1, v0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mIkeSaRecordSurviving:Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;

    .line 5616
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$RekeyIkeRemoteDelete;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$RekeyIkeRemoteDelete;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v1, v1, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mCurrentIkeSaRecord:Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;

    iput-object v1, v0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mIkeSaRecordAwaitingRemoteDel:Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;

    .line 5618
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$RekeyIkeRemoteDelete;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    const/16 v1, 0x65

    sget-wide v2, Lcom/android/internal/net/ipsec/ike/AbstractSessionStateMachine;->REKEY_DELETE_TIMEOUT_MS:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->sendMessageDelayed(IJ)V

    .line 5619
    return-void
.end method

.method public blacklist exitState()V
    .registers 3

    .line 5637
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$RekeyIkeRemoteDelete;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    const/16 v1, 0x65

    # invokes: Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->removeMessages(I)V
    invoke-static {v0, v1}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->access$000(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;I)V

    .line 5638
    return-void
.end method

.method protected blacklist getMetricsStateCode()I
    .registers 2

    .line 5642
    const/16 v0, 0x10

    return v0
.end method

.method public blacklist processStateMessage(Landroid/os/Message;)Z
    .registers 4
    .param p1, "message"    # Landroid/os/Message;

    .line 5625
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x65

    if-ne v0, v1, :cond_14

    .line 5626
    invoke-virtual {p0}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$RekeyIkeRemoteDelete;->finishRekey()V

    .line 5627
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$RekeyIkeRemoteDelete;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$RekeyIkeRemoteDelete;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v1, v1, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mIdle:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$Idle;

    invoke-virtual {v0, v1}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->transitionTo(Lcom/android/internal/net/ipsec/ike/utils/IState;)V

    .line 5629
    const/4 v0, 0x1

    return v0

    .line 5631
    :cond_14
    invoke-super {p0, p1}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$SimulRekeyIkeRemoteDelete;->processStateMessage(Landroid/os/Message;)Z

    move-result v0

    return v0
.end method

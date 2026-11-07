.class Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$RekeyIkeLocalDelete;
.super Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$SimulRekeyIkeLocalDelete;
.source "IkeSessionStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RekeyIkeLocalDelete"
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

    .line 5577
    iput-object p1, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$RekeyIkeLocalDelete;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    invoke-direct {p0, p1}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$SimulRekeyIkeLocalDelete;-><init>(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;)V

    return-void
.end method


# virtual methods
.method public blacklist enterState()V
    .registers 6

    .line 5580
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$RekeyIkeLocalDelete;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$RekeyIkeLocalDelete;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v1, v1, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mLocalInitNewIkeSaRecord:Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;

    iput-object v1, v0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mIkeSaRecordSurviving:Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;

    .line 5581
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$RekeyIkeLocalDelete;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$RekeyIkeLocalDelete;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v1, v1, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mCurrentIkeSaRecord:Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;

    iput-object v1, v0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mIkeSaRecordAwaitingLocalDel:Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;

    .line 5582
    new-instance v0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$EncryptedRetransmitter;

    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$RekeyIkeLocalDelete;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v2, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$RekeyIkeLocalDelete;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v2, v2, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mIkeSaRecordAwaitingLocalDel:Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;

    iget-object v3, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$RekeyIkeLocalDelete;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v3, v3, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mIkeSaRecordAwaitingLocalDel:Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;

    .line 5585
    invoke-virtual {p0, v3}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$RekeyIkeLocalDelete;->buildIkeDeleteReq(Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;)Lcom/android/internal/net/ipsec/ike/message/IkeMessage;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$EncryptedRetransmitter;-><init>(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;Lcom/android/internal/net/ipsec/ike/message/IkeMessage;Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine-IA;)V

    iput-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$RekeyIkeLocalDelete;->mRetransmitter:Lcom/android/internal/net/ipsec/ike/utils/Retransmitter;

    .line 5586
    return-void
.end method

.method public blacklist exitState()V
    .registers 2

    .line 5595
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$RekeyIkeLocalDelete;->mRetransmitter:Lcom/android/internal/net/ipsec/ike/utils/Retransmitter;

    invoke-virtual {v0}, Lcom/android/internal/net/ipsec/ike/utils/Retransmitter;->stopRetransmitting()V

    .line 5596
    return-void
.end method

.method protected blacklist getMetricsStateCode()I
    .registers 2

    .line 5600
    const/16 v0, 0xf

    return v0
.end method

.method protected blacklist triggerRetransmit()V
    .registers 2

    .line 5590
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$RekeyIkeLocalDelete;->mRetransmitter:Lcom/android/internal/net/ipsec/ike/utils/Retransmitter;

    invoke-virtual {v0}, Lcom/android/internal/net/ipsec/ike/utils/Retransmitter;->retransmit()V

    .line 5591
    return-void
.end method

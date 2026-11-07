.class Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$DeleteIkeLocalDelete;
.super Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$DeleteBase;
.source "IkeSessionStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DeleteIkeLocalDelete"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;


# direct methods
.method public static synthetic blacklist $r8$lambda$-yzNNSRHDyxj95-oWVVv_TE23MA(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$DeleteIkeLocalDelete;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$DeleteIkeLocalDelete;->lambda$handleResponseIkeMessage$0()V

    return-void
.end method

.method constructor blacklist <init>(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 5647
    iput-object p1, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$DeleteIkeLocalDelete;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$DeleteBase;-><init>(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine-IA;)V

    return-void
.end method

.method private synthetic blacklist lambda$handleResponseIkeMessage$0()V
    .registers 2

    .line 5679
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$DeleteIkeLocalDelete;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    invoke-static {v0}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->-$$Nest$fgetmIkeSessionCallback(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;)Landroid/net/ipsec/ike/IkeSessionCallback;

    move-result-object v0

    invoke-interface {v0}, Landroid/net/ipsec/ike/IkeSessionCallback;->onClosed()V

    .line 5680
    return-void
.end method


# virtual methods
.method public blacklist enterState()V
    .registers 4

    .line 5650
    new-instance v0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$EncryptedRetransmitter;

    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$DeleteIkeLocalDelete;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v2, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$DeleteIkeLocalDelete;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v2, v2, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mCurrentIkeSaRecord:Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;

    invoke-virtual {p0, v2}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$DeleteIkeLocalDelete;->buildIkeDeleteReq(Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;)Lcom/android/internal/net/ipsec/ike/message/IkeMessage;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$EncryptedRetransmitter;-><init>(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;Lcom/android/internal/net/ipsec/ike/message/IkeMessage;)V

    iput-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$DeleteIkeLocalDelete;->mRetransmitter:Lcom/android/internal/net/ipsec/ike/utils/Retransmitter;

    .line 5651
    return-void
.end method

.method public blacklist exitState()V
    .registers 2

    .line 5703
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$DeleteIkeLocalDelete;->mRetransmitter:Lcom/android/internal/net/ipsec/ike/utils/Retransmitter;

    invoke-virtual {v0}, Lcom/android/internal/net/ipsec/ike/utils/Retransmitter;->stopRetransmitting()V

    .line 5704
    return-void
.end method

.method protected blacklist getMetricsStateCode()I
    .registers 2

    .line 5708
    const/16 v0, 0x11

    return v0
.end method

.method protected blacklist handleRequestIkeMessage(Lcom/android/internal/net/ipsec/ike/message/IkeMessage;ILandroid/os/Message;)V
    .registers 8
    .param p1, "ikeMessage"    # Lcom/android/internal/net/ipsec/ike/message/IkeMessage;
    .param p2, "ikeExchangeSubType"    # I
    .param p3, "message"    # Landroid/os/Message;

    .line 5661
    packed-switch p2, :pswitch_data_18

    .line 5666
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$DeleteIkeLocalDelete;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$DeleteIkeLocalDelete;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v1, v1, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mCurrentIkeSaRecord:Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;

    iget-object v2, p1, Lcom/android/internal/net/ipsec/ike/message/IkeMessage;->ikeHeader:Lcom/android/internal/net/ipsec/ike/message/IkeHeader;

    iget v2, v2, Lcom/android/internal/net/ipsec/ike/message/IkeHeader;->messageId:I

    const/16 v3, 0x2b

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->buildAndSendErrorNotificationResponse(Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;II)V

    .line 5671
    return-void

    .line 5663
    :pswitch_13
    invoke-virtual {p0, p1}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$DeleteIkeLocalDelete;->handleDeleteSessionRequest(Lcom/android/internal/net/ipsec/ike/message/IkeMessage;)V

    .line 5664
    return-void

    nop

    :pswitch_data_18
    .packed-switch 0x4
        :pswitch_13
    .end packed-switch
.end method

.method protected blacklist handleResponseGenericProcessError(Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;Landroid/net/ipsec/ike/exceptions/InvalidSyntaxException;)V
    .registers 5
    .param p1, "ikeSaRecord"    # Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;
    .param p2, "exception"    # Landroid/net/ipsec/ike/exceptions/InvalidSyntaxException;

    .line 5696
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$DeleteIkeLocalDelete;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    const-string v1, "Invalid syntax on IKE Delete response. Shutting down anyways"

    invoke-virtual {v0, v1, p2}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 5697
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$DeleteIkeLocalDelete;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    invoke-static {v0, p2}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->-$$Nest$mhandleIkeFatalError(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;Ljava/lang/Exception;)V

    .line 5698
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$DeleteIkeLocalDelete;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    invoke-virtual {v0}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->quitSessionNow()V

    .line 5699
    return-void
.end method

.method protected blacklist handleResponseIkeMessage(Lcom/android/internal/net/ipsec/ike/message/IkeMessage;)V
    .registers 4
    .param p1, "ikeMessage"    # Lcom/android/internal/net/ipsec/ike/message/IkeMessage;

    .line 5676
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$DeleteIkeLocalDelete;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v0, v0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mCurrentIkeSaRecord:Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$DeleteIkeLocalDelete;->validateIkeDeleteResp(Lcom/android/internal/net/ipsec/ike/message/IkeMessage;Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;)V

    .line 5677
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$DeleteIkeLocalDelete;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    new-instance v1, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$DeleteIkeLocalDelete$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$DeleteIkeLocalDelete$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$DeleteIkeLocalDelete;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->executeUserCallback(Ljava/lang/Runnable;)V

    .line 5682
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$DeleteIkeLocalDelete;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$DeleteIkeLocalDelete;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v1, v1, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mCurrentIkeSaRecord:Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;

    invoke-virtual {v0, v1}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->removeIkeSaRecord(Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;)V

    .line 5683
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$DeleteIkeLocalDelete;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v0, v0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mCurrentIkeSaRecord:Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;

    invoke-virtual {v0}, Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;->close()V

    .line 5684
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$DeleteIkeLocalDelete;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mCurrentIkeSaRecord:Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;

    .line 5686
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$DeleteIkeLocalDelete;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    invoke-virtual {v0, v1}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->recordMetricsEvent_sessionTerminated(Landroid/net/ipsec/ike/exceptions/IkeException;)V

    .line 5687
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$DeleteIkeLocalDelete;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    invoke-virtual {v0}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->quitSessionNow()V
    :try_end_30
    .catch Landroid/net/ipsec/ike/exceptions/InvalidSyntaxException; {:try_start_0 .. :try_end_30} :catch_31

    .line 5690
    goto :goto_39

    .line 5688
    :catch_31
    move-exception v0

    .line 5689
    .local v0, "e":Landroid/net/ipsec/ike/exceptions/InvalidSyntaxException;
    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$DeleteIkeLocalDelete;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v1, v1, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mCurrentIkeSaRecord:Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$DeleteIkeLocalDelete;->handleResponseGenericProcessError(Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;Landroid/net/ipsec/ike/exceptions/InvalidSyntaxException;)V

    .line 5691
    .end local v0    # "e":Landroid/net/ipsec/ike/exceptions/InvalidSyntaxException;
    :goto_39
    return-void
.end method

.method protected blacklist triggerRetransmit()V
    .registers 2

    .line 5655
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$DeleteIkeLocalDelete;->mRetransmitter:Lcom/android/internal/net/ipsec/ike/utils/Retransmitter;

    invoke-virtual {v0}, Lcom/android/internal/net/ipsec/ike/utils/Retransmitter;->retransmit()V

    .line 5656
    return-void
.end method

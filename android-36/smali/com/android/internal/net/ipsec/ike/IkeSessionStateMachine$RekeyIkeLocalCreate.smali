.class Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$RekeyIkeLocalCreate;
.super Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$RekeyIkeHandlerBase;
.source "IkeSessionStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RekeyIkeLocalCreate"
.end annotation


# instance fields
.field private blacklist mRekeyRequestMsg:Lcom/android/internal/net/ipsec/ike/message/IkeMessage;

.field final synthetic blacklist this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;


# direct methods
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

    .line 5021
    iput-object p1, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$RekeyIkeLocalCreate;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$RekeyIkeHandlerBase;-><init>(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine-IA;)V

    return-void
.end method

.method private blacklist buildIkeRekeyReq()Lcom/android/internal/net/ipsec/ike/message/IkeMessage;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5067
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/net/ipsec/ike/IkeSaProposal;

    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$RekeyIkeLocalCreate;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v1, v1, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mSaProposal:Landroid/net/ipsec/ike/IkeSaProposal;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 5071
    .local v0, "saProposals":[Landroid/net/ipsec/ike/IkeSaProposal;
    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$RekeyIkeLocalCreate;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    invoke-static {v1}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->-$$Nest$fgetmIkeSpiGenerator(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;)Lcom/android/internal/net/ipsec/ike/utils/IkeSpiGenerator;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$RekeyIkeLocalCreate;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    invoke-static {v2}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->-$$Nest$fgetmIkeConnectionCtrl(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;)Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;

    move-result-object v2

    .line 5075
    invoke-virtual {v2}, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$RekeyIkeLocalCreate;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v3, v3, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mIkeContext:Lcom/android/internal/net/ipsec/ike/IkeContext;

    .line 5076
    invoke-virtual {v3}, Lcom/android/internal/net/ipsec/ike/IkeContext;->getRandomnessFactory()Lcom/android/internal/net/ipsec/ike/utils/RandomnessFactory;

    move-result-object v3

    .line 5072
    invoke-static {v0, v1, v2, v3}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeSaHelper;->getRekeyIkeSaRequestPayloads([Landroid/net/ipsec/ike/IkeSaProposal;Lcom/android/internal/net/ipsec/ike/utils/IkeSpiGenerator;Ljava/net/InetAddress;Lcom/android/internal/net/ipsec/ike/utils/RandomnessFactory;)Ljava/util/List;

    move-result-object v1

    .line 5079
    .local v1, "payloadList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/net/ipsec/ike/message/IkePayload;>;"
    new-instance v2, Lcom/android/internal/net/ipsec/ike/message/IkeHeader;

    iget-object v3, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$RekeyIkeLocalCreate;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v3, v3, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mCurrentIkeSaRecord:Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;

    .line 5081
    invoke-virtual {v3}, Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;->getInitiatorSpi()J

    move-result-wide v3

    iget-object v5, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$RekeyIkeLocalCreate;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v5, v5, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mCurrentIkeSaRecord:Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;

    .line 5082
    invoke-virtual {v5}, Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;->getResponderSpi()J

    move-result-wide v5

    iget-object v7, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$RekeyIkeLocalCreate;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v7, v7, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mCurrentIkeSaRecord:Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;

    iget-boolean v10, v7, Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;->isLocalInit:Z

    iget-object v7, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$RekeyIkeLocalCreate;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v7, v7, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mCurrentIkeSaRecord:Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;

    .line 5087
    invoke-virtual {v7}, Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;->getLocalRequestMessageId()I

    move-result v11

    const/16 v7, 0x2e

    const/16 v8, 0x24

    const/4 v9, 0x0

    invoke-direct/range {v2 .. v11}, Lcom/android/internal/net/ipsec/ike/message/IkeHeader;-><init>(JJIIZZI)V

    .line 5089
    .local v2, "ikeHeader":Lcom/android/internal/net/ipsec/ike/message/IkeHeader;
    new-instance v3, Lcom/android/internal/net/ipsec/ike/message/IkeMessage;

    invoke-direct {v3, v2, v1}, Lcom/android/internal/net/ipsec/ike/message/IkeMessage;-><init>(Lcom/android/internal/net/ipsec/ike/message/IkeHeader;Ljava/util/List;)V

    return-object v3
.end method

.method private blacklist handleProcessRespOrSaCreationFailureAndQuit(Landroid/net/ipsec/ike/exceptions/IkeException;)V
    .registers 4
    .param p1, "exception"    # Landroid/net/ipsec/ike/exceptions/IkeException;

    .line 5165
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$RekeyIkeLocalCreate;->mRetransmitter:Lcom/android/internal/net/ipsec/ike/utils/Retransmitter;

    invoke-virtual {v0}, Lcom/android/internal/net/ipsec/ike/utils/Retransmitter;->stopRetransmitting()V

    .line 5167
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$RekeyIkeLocalCreate;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$RekeyIkeLocalCreate;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v1, v1, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mCurrentIkeSaRecord:Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;

    invoke-virtual {p0, v1}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$RekeyIkeLocalCreate;->buildIkeDeleteReq(Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;)Lcom/android/internal/net/ipsec/ike/message/IkeMessage;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->sendEncryptedIkeMessage(Lcom/android/internal/net/ipsec/ike/message/IkeMessage;)V

    .line 5168
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$RekeyIkeLocalCreate;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    invoke-static {v0, p1}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->-$$Nest$mhandleIkeFatalError(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;Ljava/lang/Exception;)V

    .line 5169
    return-void
.end method


# virtual methods
.method public blacklist enterState()V
    .registers 5

    .line 5027
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$RekeyIkeLocalCreate;->buildIkeRekeyReq()Lcom/android/internal/net/ipsec/ike/message/IkeMessage;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$RekeyIkeLocalCreate;->mRekeyRequestMsg:Lcom/android/internal/net/ipsec/ike/message/IkeMessage;

    .line 5028
    new-instance v0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$EncryptedRetransmitter;

    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$RekeyIkeLocalCreate;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v2, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$RekeyIkeLocalCreate;->mRekeyRequestMsg:Lcom/android/internal/net/ipsec/ike/message/IkeMessage;

    invoke-direct {v0, v1, v2}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$EncryptedRetransmitter;-><init>(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;Lcom/android/internal/net/ipsec/ike/message/IkeMessage;)V

    iput-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$RekeyIkeLocalCreate;->mRetransmitter:Lcom/android/internal/net/ipsec/ike/utils/Retransmitter;
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_11} :catch_12

    .line 5033
    goto :goto_2c

    .line 5029
    :catch_12
    move-exception v0

    .line 5030
    .local v0, "e":Ljava/io/IOException;
    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$RekeyIkeLocalCreate;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    const-string v2, "Fail to assign IKE SPI for rekey. Schedule a retry."

    invoke-virtual {v1, v2, v0}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 5031
    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$RekeyIkeLocalCreate;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v1, v1, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mCurrentIkeSaRecord:Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;

    sget-wide v2, Lcom/android/internal/net/ipsec/ike/AbstractSessionStateMachine;->RETRY_INTERVAL_MS:J

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;->rescheduleRekey(J)V

    .line 5032
    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$RekeyIkeLocalCreate;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v2, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$RekeyIkeLocalCreate;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v2, v2, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mIdle:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$Idle;

    invoke-virtual {v1, v2}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->transitionTo(Lcom/android/internal/net/ipsec/ike/utils/IState;)V

    .line 5034
    .end local v0    # "e":Ljava/io/IOException;
    :goto_2c
    return-void
.end method

.method public blacklist exitState()V
    .registers 4

    .line 5038
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$RekeyIkeLocalCreate;->mRekeyRequestMsg:Lcom/android/internal/net/ipsec/ike/message/IkeMessage;

    const-class v1, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload;

    .line 5039
    const/16 v2, 0x21

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/net/ipsec/ike/message/IkeMessage;->getPayloadForType(ILjava/lang/Class;)Lcom/android/internal/net/ipsec/ike/message/IkePayload;

    move-result-object v0

    check-cast v0, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload;

    .line 5041
    .local v0, "saPayload":Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload;
    if-eqz v0, :cond_11

    .line 5042
    invoke-virtual {v0}, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload;->releaseSpiResources()V

    .line 5044
    :cond_11
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$RekeyIkeLocalCreate;->mRekeyRequestMsg:Lcom/android/internal/net/ipsec/ike/message/IkeMessage;

    .line 5045
    return-void
.end method

.method protected blacklist getMetricsStateCode()I
    .registers 2

    .line 5173
    const/16 v0, 0xa

    return v0
.end method

.method protected blacklist handleRequestIkeMessage(Lcom/android/internal/net/ipsec/ike/message/IkeMessage;ILandroid/os/Message;)V
    .registers 8
    .param p1, "ikeMessage"    # Lcom/android/internal/net/ipsec/ike/message/IkeMessage;
    .param p2, "ikeExchangeSubType"    # I
    .param p3, "message"    # Landroid/os/Message;

    .line 5095
    sparse-switch p2, :sswitch_data_1c

    .line 5104
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$RekeyIkeLocalCreate;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$RekeyIkeLocalCreate;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v1, v1, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mCurrentIkeSaRecord:Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;

    iget-object v2, p1, Lcom/android/internal/net/ipsec/ike/message/IkeMessage;->ikeHeader:Lcom/android/internal/net/ipsec/ike/message/IkeHeader;

    iget v2, v2, Lcom/android/internal/net/ipsec/ike/message/IkeHeader;->messageId:I

    const/16 v3, 0x2b

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->buildAndSendErrorNotificationResponse(Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;II)V

    goto :goto_1b

    .line 5100
    :sswitch_13
    invoke-virtual {p0, p1}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$RekeyIkeLocalCreate;->handleGenericInfoRequest(Lcom/android/internal/net/ipsec/ike/message/IkeMessage;)V

    .line 5101
    goto :goto_1b

    .line 5097
    :sswitch_17
    invoke-virtual {p0, p1}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$RekeyIkeLocalCreate;->handleDeleteSessionRequest(Lcom/android/internal/net/ipsec/ike/message/IkeMessage;)V

    .line 5098
    nop

    .line 5109
    :goto_1b
    return-void

    :sswitch_data_1c
    .sparse-switch
        0x4 -> :sswitch_17
        0x8 -> :sswitch_13
    .end sparse-switch
.end method

.method protected blacklist handleResponseGenericProcessError(Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;Landroid/net/ipsec/ike/exceptions/InvalidSyntaxException;)V
    .registers 3
    .param p1, "ikeSaRecord"    # Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;
    .param p2, "ikeException"    # Landroid/net/ipsec/ike/exceptions/InvalidSyntaxException;

    .line 5157
    invoke-direct {p0, p2}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$RekeyIkeLocalCreate;->handleProcessRespOrSaCreationFailureAndQuit(Landroid/net/ipsec/ike/exceptions/IkeException;)V

    .line 5158
    return-void
.end method

.method protected blacklist handleResponseIkeMessage(Lcom/android/internal/net/ipsec/ike/message/IkeMessage;)V
    .registers 12
    .param p1, "ikeMessage"    # Lcom/android/internal/net/ipsec/ike/message/IkeMessage;

    .line 5115
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$RekeyIkeLocalCreate;->mRetransmitter:Lcom/android/internal/net/ipsec/ike/utils/Retransmitter;

    invoke-virtual {v0}, Lcom/android/internal/net/ipsec/ike/utils/Retransmitter;->getMessage()Lcom/android/internal/net/ipsec/ike/message/IkeMessage;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$RekeyIkeLocalCreate;->validateIkeRekeyResp(Lcom/android/internal/net/ipsec/ike/message/IkeMessage;Lcom/android/internal/net/ipsec/ike/message/IkeMessage;)V

    .line 5118
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$RekeyIkeLocalCreate;->handleErrorNotifyIfExists(Lcom/android/internal/net/ipsec/ike/message/IkeMessage;Z)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_28

    .line 5120
    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$RekeyIkeLocalCreate;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v3, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$RekeyIkeLocalCreate;->mRetransmitter:Lcom/android/internal/net/ipsec/ike/utils/Retransmitter;

    .line 5122
    invoke-virtual {v3}, Lcom/android/internal/net/ipsec/ike/utils/Retransmitter;->getMessage()Lcom/android/internal/net/ipsec/ike/message/IkeMessage;

    move-result-object v3

    .line 5121
    invoke-virtual {p0, v3, p1, v2}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$RekeyIkeLocalCreate;->validateAndBuildIkeSa(Lcom/android/internal/net/ipsec/ike/message/IkeMessage;Lcom/android/internal/net/ipsec/ike/message/IkeMessage;Z)Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;

    move-result-object v3

    iput-object v3, v1, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mLocalInitNewIkeSaRecord:Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;

    .line 5123
    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$RekeyIkeLocalCreate;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v3, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$RekeyIkeLocalCreate;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v3, v3, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mRekeyIkeLocalDelete:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$RekeyIkeLocalDelete;

    invoke-virtual {v1, v3}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->transitionTo(Lcom/android/internal/net/ipsec/ike/utils/IState;)V

    .line 5127
    :cond_28
    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$RekeyIkeLocalCreate;->mRetransmitter:Lcom/android/internal/net/ipsec/ike/utils/Retransmitter;

    invoke-virtual {v1}, Lcom/android/internal/net/ipsec/ike/utils/Retransmitter;->stopRetransmitting()V

    .line 5129
    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$RekeyIkeLocalCreate;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v1, v1, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mSaProposal:Landroid/net/ipsec/ike/IkeSaProposal;

    invoke-virtual {v1}, Landroid/net/ipsec/ike/IkeSaProposal;->getIntegrityAlgorithms()Ljava/util/List;

    move-result-object v1

    .line 5131
    .local v1, "integrityAlgorithms":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v3, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$RekeyIkeLocalCreate;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v4, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$RekeyIkeLocalCreate;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v4, v4, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mSaProposal:Landroid/net/ipsec/ike/IkeSaProposal;

    .line 5132
    invoke-virtual {v4}, Landroid/net/ipsec/ike/IkeSaProposal;->getDhGroups()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v5, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$RekeyIkeLocalCreate;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v5, v5, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mSaProposal:Landroid/net/ipsec/ike/IkeSaProposal;

    .line 5133
    invoke-virtual {v5}, Landroid/net/ipsec/ike/IkeSaProposal;->getEncryptionTransforms()[Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$EncryptionTransform;

    move-result-object v5

    aget-object v5, v5, v0

    iget v5, v5, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$EncryptionTransform;->id:I

    iget-object v6, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$RekeyIkeLocalCreate;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v6, v6, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mSaProposal:Landroid/net/ipsec/ike/IkeSaProposal;

    .line 5134
    invoke-virtual {v6}, Landroid/net/ipsec/ike/IkeSaProposal;->getEncryptionTransforms()[Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$EncryptionTransform;

    move-result-object v6

    aget-object v6, v6, v0

    invoke-virtual {v6}, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$EncryptionTransform;->getSpecifiedKeyLength()I

    move-result v6

    .line 5135
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_6b

    .line 5136
    move v7, v2

    goto :goto_76

    .line 5137
    :cond_6b
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move v7, v2

    :goto_76
    iget-object v2, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$RekeyIkeLocalCreate;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v2, v2, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mSaProposal:Landroid/net/ipsec/ike/IkeSaProposal;

    .line 5138
    invoke-virtual {v2}, Landroid/net/ipsec/ike/IkeSaProposal;->getPseudorandomFunctions()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 5131
    const/4 v9, 0x0

    invoke-virtual/range {v3 .. v9}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->recordMetricsEvent_SaNegotiation(IIIIILandroid/net/ipsec/ike/exceptions/IkeException;)V
    :try_end_8c
    .catch Landroid/net/ipsec/ike/exceptions/IkeProtocolException; {:try_start_0 .. :try_end_8c} :catch_96
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_8c} :catch_8d
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_8c} :catch_8d

    .end local v1    # "integrityAlgorithms":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    goto :goto_a9

    .line 5149
    :catch_8d
    move-exception v0

    .line 5150
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Landroid/net/ipsec/ike/exceptions/IkeException;->wrapAsIkeException(Ljava/lang/Exception;)Landroid/net/ipsec/ike/exceptions/IkeException;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$RekeyIkeLocalCreate;->handleProcessRespOrSaCreationFailureAndQuit(Landroid/net/ipsec/ike/exceptions/IkeException;)V

    goto :goto_aa

    .line 5140
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_96
    move-exception v0

    .line 5141
    .local v0, "e":Landroid/net/ipsec/ike/exceptions/IkeProtocolException;
    instance-of v1, v0, Landroid/net/ipsec/ike/exceptions/InvalidSyntaxException;

    if-eqz v1, :cond_9f

    .line 5142
    invoke-direct {p0, v0}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$RekeyIkeLocalCreate;->handleProcessRespOrSaCreationFailureAndQuit(Landroid/net/ipsec/ike/exceptions/IkeException;)V

    goto :goto_a9

    .line 5144
    :cond_9f
    new-instance v1, Landroid/net/ipsec/ike/exceptions/InvalidSyntaxException;

    const-string v2, "Error in processing IKE Rekey-Create response"

    invoke-direct {v1, v2, v0}, Landroid/net/ipsec/ike/exceptions/InvalidSyntaxException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {p0, v1}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$RekeyIkeLocalCreate;->handleProcessRespOrSaCreationFailureAndQuit(Landroid/net/ipsec/ike/exceptions/IkeException;)V

    .line 5151
    .end local v0    # "e":Landroid/net/ipsec/ike/exceptions/IkeProtocolException;
    :goto_a9
    nop

    .line 5152
    :goto_aa
    return-void
.end method

.method protected blacklist handleTempFailure()V
    .registers 4

    .line 5054
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$RekeyIkeLocalCreate;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    invoke-static {v0}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->-$$Nest$fgetmTempFailHandler(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;)Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$TempFailureHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$TempFailureHandler;->handleTempFailure()V

    .line 5055
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$RekeyIkeLocalCreate;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v0, v0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mCurrentIkeSaRecord:Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;

    sget-wide v1, Lcom/android/internal/net/ipsec/ike/AbstractSessionStateMachine;->RETRY_INTERVAL_MS:J

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;->rescheduleRekey(J)V

    .line 5056
    return-void
.end method

.method protected blacklist triggerRetransmit()V
    .registers 2

    .line 5049
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$RekeyIkeLocalCreate;->mRetransmitter:Lcom/android/internal/net/ipsec/ike/utils/Retransmitter;

    invoke-virtual {v0}, Lcom/android/internal/net/ipsec/ike/utils/Retransmitter;->retransmit()V

    .line 5050
    return-void
.end method

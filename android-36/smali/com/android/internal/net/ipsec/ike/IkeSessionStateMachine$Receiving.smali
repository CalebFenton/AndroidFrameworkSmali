.class Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$Receiving;
.super Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$RekeyIkeHandlerBase;
.source "IkeSessionStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Receiving"
.end annotation


# instance fields
.field private blacklist mProcedureFinished:Z

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

    .line 2530
    iput-object p1, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$Receiving;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$RekeyIkeHandlerBase;-><init>(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine-IA;)V

    .line 2531
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$Receiving;->mProcedureFinished:Z

    return-void
.end method

.method private blacklist handleRekeyCreationFailure(ILandroid/net/ipsec/ike/exceptions/IkeProtocolException;)V
    .registers 6
    .param p1, "messageId"    # I
    .param p2, "e"    # Landroid/net/ipsec/ike/exceptions/IkeProtocolException;

    .line 2660
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$Receiving;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    const-string v1, "Received invalid Rekey IKE request. Reject with error notification"

    invoke-virtual {v0, v1, p2}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2662
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$Receiving;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$Receiving;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v1, v1, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mCurrentIkeSaRecord:Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;

    .line 2663
    invoke-virtual {p2}, Landroid/net/ipsec/ike/exceptions/IkeProtocolException;->buildNotifyPayload()Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;

    move-result-object v2

    .line 2662
    invoke-virtual {v0, v1, p1, v2}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->buildAndSendNotificationResponse(Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;ILcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;)V

    .line 2664
    return-void
.end method


# virtual methods
.method public blacklist enterState()V
    .registers 2

    .line 2535
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$Receiving;->mProcedureFinished:Z

    .line 2536
    return-void
.end method

.method protected blacklist getMetricsStateCode()I
    .registers 2

    .line 2668
    const/16 v0, 0x9

    return v0
.end method

.method protected blacklist handleReceivedIkePacket(Landroid/os/Message;)V
    .registers 4
    .param p1, "message"    # Landroid/os/Message;

    .line 2540
    invoke-super {p0, p1}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$RekeyIkeHandlerBase;->handleReceivedIkePacket(Landroid/os/Message;)V

    .line 2545
    iget-boolean v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$Receiving;->mProcedureFinished:Z

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$Receiving;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$Receiving;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v1, v1, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mIdle:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$Idle;

    invoke-virtual {v0, v1}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->transitionTo(Lcom/android/internal/net/ipsec/ike/utils/IState;)V

    .line 2546
    :cond_10
    return-void
.end method

.method protected blacklist handleRequestIkeMessage(Lcom/android/internal/net/ipsec/ike/message/IkeMessage;ILandroid/os/Message;)V
    .registers 23
    .param p1, "ikeMessage"    # Lcom/android/internal/net/ipsec/ike/message/IkeMessage;
    .param p2, "ikeExchangeSubType"    # I
    .param p3, "message"    # Landroid/os/Message;

    .line 2551
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    const/4 v0, 0x0

    packed-switch v3, :pswitch_data_174

    .line 2657
    return-void

    .line 2653
    :pswitch_b
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$Receiving;->handleGenericInfoRequest(Lcom/android/internal/net/ipsec/ike/message/IkeMessage;)V

    .line 2654
    return-void

    .line 2559
    :pswitch_f
    :try_start_f
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$Receiving;->validateIkeRekeyReq(Lcom/android/internal/net/ipsec/ike/message/IkeMessage;)V

    .line 2565
    const-class v4, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload;

    .line 2566
    const/16 v5, 0x21

    invoke-virtual {v2, v5, v4}, Lcom/android/internal/net/ipsec/ike/message/IkeMessage;->getPayloadForType(ILjava/lang/Class;)Lcom/android/internal/net/ipsec/ike/message/IkePayload;

    move-result-object v4

    check-cast v4, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload;

    .line 2568
    .local v4, "reqSaPayload":Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload;
    iget-object v5, v1, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$Receiving;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v5, v5, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mSaProposal:Landroid/net/ipsec/ike/IkeSaProposal;

    .line 2569
    invoke-virtual {v4, v5}, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload;->getNegotiatedProposalNumber(Landroid/net/ipsec/ike/SaProposal;)B

    move-result v5

    .line 2571
    .local v5, "respProposalNumber":B
    const-class v6, Lcom/android/internal/net/ipsec/ike/message/IkeKePayload;

    .line 2572
    const/16 v7, 0x22

    invoke-virtual {v2, v7, v6}, Lcom/android/internal/net/ipsec/ike/message/IkeMessage;->getPayloadForType(ILjava/lang/Class;)Lcom/android/internal/net/ipsec/ike/message/IkePayload;

    move-result-object v6

    check-cast v6, Lcom/android/internal/net/ipsec/ike/message/IkeKePayload;

    .line 2574
    .local v6, "reqKePayload":Lcom/android/internal/net/ipsec/ike/message/IkeKePayload;
    iget v7, v6, Lcom/android/internal/net/ipsec/ike/message/IkeKePayload;->dhGroup:I

    iget-object v8, v1, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$Receiving;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v8, v8, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mSaProposal:Landroid/net/ipsec/ike/IkeSaProposal;

    invoke-virtual {v8}, Landroid/net/ipsec/ike/IkeSaProposal;->getDhGroups()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-ne v7, v8, :cond_10d

    .line 2578
    iget-object v7, v1, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$Receiving;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v7, v7, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mSaProposal:Landroid/net/ipsec/ike/IkeSaProposal;

    iget-object v8, v1, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$Receiving;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    invoke-static {v8}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->-$$Nest$fgetmIkeSpiGenerator(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;)Lcom/android/internal/net/ipsec/ike/utils/IkeSpiGenerator;

    move-result-object v8

    iget-object v9, v1, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$Receiving;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    invoke-static {v9}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->-$$Nest$fgetmIkeConnectionCtrl(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;)Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;

    move-result-object v9

    .line 2583
    invoke-virtual {v9}, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v9

    iget-object v10, v1, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$Receiving;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v10, v10, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mIkeContext:Lcom/android/internal/net/ipsec/ike/IkeContext;

    .line 2584
    invoke-virtual {v10}, Lcom/android/internal/net/ipsec/ike/IkeContext;->getRandomnessFactory()Lcom/android/internal/net/ipsec/ike/utils/RandomnessFactory;

    move-result-object v10

    .line 2579
    invoke-static {v5, v7, v8, v9, v10}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeSaHelper;->getRekeyIkeSaResponsePayloads(BLandroid/net/ipsec/ike/IkeSaProposal;Lcom/android/internal/net/ipsec/ike/utils/IkeSpiGenerator;Ljava/net/InetAddress;Lcom/android/internal/net/ipsec/ike/utils/RandomnessFactory;)Ljava/util/List;

    move-result-object v7

    .line 2587
    .local v7, "payloadList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/net/ipsec/ike/message/IkePayload;>;"
    new-instance v8, Lcom/android/internal/net/ipsec/ike/message/IkeHeader;

    iget-object v9, v1, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$Receiving;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v9, v9, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mCurrentIkeSaRecord:Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;

    .line 2589
    invoke-virtual {v9}, Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;->getInitiatorSpi()J

    move-result-wide v9

    iget-object v11, v1, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$Receiving;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v11, v11, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mCurrentIkeSaRecord:Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;

    .line 2590
    invoke-virtual {v11}, Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;->getResponderSpi()J

    move-result-wide v11

    iget-object v13, v1, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$Receiving;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v13, v13, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mCurrentIkeSaRecord:Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;

    iget-boolean v13, v13, Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;->isLocalInit:Z

    iget-object v14, v2, Lcom/android/internal/net/ipsec/ike/message/IkeMessage;->ikeHeader:Lcom/android/internal/net/ipsec/ike/message/IkeHeader;

    iget v14, v14, Lcom/android/internal/net/ipsec/ike/message/IkeHeader;->messageId:I

    move/from16 v16, v13

    const/16 v13, 0x2e

    move/from16 v17, v14

    const/16 v14, 0x24

    const/4 v15, 0x1

    invoke-direct/range {v8 .. v17}, Lcom/android/internal/net/ipsec/ike/message/IkeHeader;-><init>(JJIIZZI)V

    .line 2597
    .local v8, "ikeHeader":Lcom/android/internal/net/ipsec/ike/message/IkeHeader;
    new-instance v9, Lcom/android/internal/net/ipsec/ike/message/IkeMessage;

    invoke-direct {v9, v8, v7}, Lcom/android/internal/net/ipsec/ike/message/IkeMessage;-><init>(Lcom/android/internal/net/ipsec/ike/message/IkeHeader;Ljava/util/List;)V

    .line 2600
    .local v9, "responseIkeMessage":Lcom/android/internal/net/ipsec/ike/message/IkeMessage;
    iget-object v10, v1, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$Receiving;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    .line 2601
    invoke-virtual {v1, v2, v9, v0}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$Receiving;->validateAndBuildIkeSa(Lcom/android/internal/net/ipsec/ike/message/IkeMessage;Lcom/android/internal/net/ipsec/ike/message/IkeMessage;Z)Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;

    move-result-object v11

    iput-object v11, v10, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mRemoteInitNewIkeSaRecord:Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;

    .line 2604
    iget-object v10, v1, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$Receiving;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    invoke-virtual {v10, v9}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->sendEncryptedIkeMessage(Lcom/android/internal/net/ipsec/ike/message/IkeMessage;)V

    .line 2606
    iget-object v10, v1, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$Receiving;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v10, v10, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mSaProposal:Landroid/net/ipsec/ike/IkeSaProposal;

    invoke-virtual {v10}, Landroid/net/ipsec/ike/IkeSaProposal;->getIntegrityAlgorithms()Ljava/util/List;

    move-result-object v10

    .line 2608
    .local v10, "integrityAlgorithms":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v11, v1, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$Receiving;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v12, v1, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$Receiving;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v12, v12, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mSaProposal:Landroid/net/ipsec/ike/IkeSaProposal;

    .line 2609
    invoke-virtual {v12}, Landroid/net/ipsec/ike/IkeSaProposal;->getDhGroups()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    iget-object v13, v1, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$Receiving;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v13, v13, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mSaProposal:Landroid/net/ipsec/ike/IkeSaProposal;

    .line 2610
    invoke-virtual {v13}, Landroid/net/ipsec/ike/IkeSaProposal;->getEncryptionTransforms()[Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$EncryptionTransform;

    move-result-object v13

    aget-object v13, v13, v0

    iget v13, v13, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$EncryptionTransform;->id:I

    iget-object v14, v1, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$Receiving;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v14, v14, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mSaProposal:Landroid/net/ipsec/ike/IkeSaProposal;

    .line 2611
    invoke-virtual {v14}, Landroid/net/ipsec/ike/IkeSaProposal;->getEncryptionTransforms()[Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$EncryptionTransform;

    move-result-object v14

    aget-object v14, v14, v0

    invoke-virtual {v14}, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$EncryptionTransform;->getSpecifiedKeyLength()I

    move-result v14

    .line 2612
    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v15

    if-eqz v15, :cond_dc

    .line 2613
    const/4 v15, 0x1

    goto :goto_e6

    .line 2614
    :cond_dc
    invoke-interface {v10, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    :goto_e6
    iget-object v0, v1, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$Receiving;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v0, v0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mSaProposal:Landroid/net/ipsec/ike/IkeSaProposal;

    .line 2615
    invoke-virtual {v0}, Landroid/net/ipsec/ike/IkeSaProposal;->getPseudorandomFunctions()Ljava/util/List;

    move-result-object v0

    move-object/from16 v18, v4

    const/4 v4, 0x0

    .end local v4    # "reqSaPayload":Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload;
    .local v18, "reqSaPayload":Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload;
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v16

    .line 2608
    const/16 v17, 0x0

    invoke-virtual/range {v11 .. v17}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->recordMetricsEvent_SaNegotiation(IIIIILandroid/net/ipsec/ike/exceptions/IkeException;)V

    .line 2618
    iget-object v0, v1, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$Receiving;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v4, v1, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$Receiving;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v4, v4, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mRekeyIkeRemoteDelete:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$RekeyIkeRemoteDelete;

    invoke-virtual {v0, v4}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->transitionTo(Lcom/android/internal/net/ipsec/ike/utils/IState;)V

    .line 2619
    const/4 v4, 0x0

    iput-boolean v4, v1, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$Receiving;->mProcedureFinished:Z

    .end local v5    # "respProposalNumber":B
    .end local v6    # "reqKePayload":Lcom/android/internal/net/ipsec/ike/message/IkeKePayload;
    .end local v7    # "payloadList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/net/ipsec/ike/message/IkePayload;>;"
    .end local v8    # "ikeHeader":Lcom/android/internal/net/ipsec/ike/message/IkeHeader;
    .end local v9    # "responseIkeMessage":Lcom/android/internal/net/ipsec/ike/message/IkeMessage;
    .end local v10    # "integrityAlgorithms":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v18    # "reqSaPayload":Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload;
    goto :goto_150

    .line 2575
    .restart local v4    # "reqSaPayload":Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload;
    .restart local v5    # "respProposalNumber":B
    .restart local v6    # "reqKePayload":Lcom/android/internal/net/ipsec/ike/message/IkeKePayload;
    :cond_10d
    move-object/from16 v18, v4

    .end local v4    # "reqSaPayload":Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload;
    .restart local v18    # "reqSaPayload":Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload;
    new-instance v0, Landroid/net/ipsec/ike/exceptions/InvalidKeException;

    iget-object v4, v1, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$Receiving;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v4, v4, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mSaProposal:Landroid/net/ipsec/ike/IkeSaProposal;

    invoke-virtual {v4}, Landroid/net/ipsec/ike/IkeSaProposal;->getDhGroups()Ljava/util/List;

    move-result-object v4

    const/4 v7, 0x0

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {v0, v4}, Landroid/net/ipsec/ike/exceptions/InvalidKeException;-><init>(I)V

    .end local p0    # "this":Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$Receiving;
    .end local p1    # "ikeMessage":Lcom/android/internal/net/ipsec/ike/message/IkeMessage;
    .end local p2    # "ikeExchangeSubType":I
    .end local p3    # "message":Landroid/os/Message;
    throw v0
    :try_end_128
    .catch Landroid/net/ipsec/ike/exceptions/IkeProtocolException; {:try_start_f .. :try_end_128} :catch_148
    .catch Ljava/security/GeneralSecurityException; {:try_start_f .. :try_end_128} :catch_138
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_128} :catch_128

    .line 2627
    .end local v5    # "respProposalNumber":B
    .end local v6    # "reqKePayload":Lcom/android/internal/net/ipsec/ike/message/IkeKePayload;
    .end local v18    # "reqSaPayload":Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload;
    .restart local p0    # "this":Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$Receiving;
    .restart local p1    # "ikeMessage":Lcom/android/internal/net/ipsec/ike/message/IkeMessage;
    .restart local p2    # "ikeExchangeSubType":I
    .restart local p3    # "message":Landroid/os/Message;
    :catch_128
    move-exception v0

    .line 2628
    .local v0, "e":Ljava/io/IOException;
    iget-object v4, v2, Lcom/android/internal/net/ipsec/ike/message/IkeMessage;->ikeHeader:Lcom/android/internal/net/ipsec/ike/message/IkeHeader;

    iget v4, v4, Lcom/android/internal/net/ipsec/ike/message/IkeHeader;->messageId:I

    new-instance v5, Landroid/net/ipsec/ike/exceptions/NoValidProposalChosenException;

    const-string v6, "IKE SPI allocation collided - they reused an SPI."

    invoke-direct {v5, v6, v0}, Landroid/net/ipsec/ike/exceptions/NoValidProposalChosenException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {v1, v4, v5}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$Receiving;->handleRekeyCreationFailure(ILandroid/net/ipsec/ike/exceptions/IkeProtocolException;)V

    goto :goto_151

    .line 2622
    .end local v0    # "e":Ljava/io/IOException;
    :catch_138
    move-exception v0

    .line 2623
    .local v0, "e":Ljava/security/GeneralSecurityException;
    iget-object v4, v2, Lcom/android/internal/net/ipsec/ike/message/IkeMessage;->ikeHeader:Lcom/android/internal/net/ipsec/ike/message/IkeHeader;

    iget v4, v4, Lcom/android/internal/net/ipsec/ike/message/IkeHeader;->messageId:I

    new-instance v5, Landroid/net/ipsec/ike/exceptions/NoValidProposalChosenException;

    const-string v6, "Error in building new IKE SA"

    invoke-direct {v5, v6, v0}, Landroid/net/ipsec/ike/exceptions/NoValidProposalChosenException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {v1, v4, v5}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$Receiving;->handleRekeyCreationFailure(ILandroid/net/ipsec/ike/exceptions/IkeProtocolException;)V

    .end local v0    # "e":Ljava/security/GeneralSecurityException;
    goto :goto_150

    .line 2620
    :catch_148
    move-exception v0

    .line 2621
    .local v0, "e":Landroid/net/ipsec/ike/exceptions/IkeProtocolException;
    iget-object v4, v2, Lcom/android/internal/net/ipsec/ike/message/IkeMessage;->ikeHeader:Lcom/android/internal/net/ipsec/ike/message/IkeHeader;

    iget v4, v4, Lcom/android/internal/net/ipsec/ike/message/IkeHeader;->messageId:I

    invoke-direct {v1, v4, v0}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$Receiving;->handleRekeyCreationFailure(ILandroid/net/ipsec/ike/exceptions/IkeProtocolException;)V

    .line 2632
    .end local v0    # "e":Landroid/net/ipsec/ike/exceptions/IkeProtocolException;
    :goto_150
    nop

    .line 2633
    :goto_151
    return-void

    .line 2635
    :pswitch_152
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$Receiving;->handleDeleteSessionRequest(Lcom/android/internal/net/ipsec/ike/message/IkeMessage;)V

    .line 2638
    const/4 v4, 0x0

    iput-boolean v4, v1, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$Receiving;->mProcedureFinished:Z

    .line 2639
    return-void

    .line 2643
    :pswitch_159
    move v4, v0

    iget-object v0, v1, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$Receiving;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v5, v1, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$Receiving;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    .line 2644
    const/16 v6, 0x12f

    invoke-virtual {v5, v6, v3, v4, v2}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 2643
    invoke-virtual {v0, v5}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->deferMessage(Landroid/os/Message;)V

    .line 2649
    iget-object v0, v1, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$Receiving;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v5, v1, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$Receiving;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v5, v5, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mChildProcedureOngoing:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$ChildProcedureOngoing;

    invoke-virtual {v0, v5}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->transitionTo(Lcom/android/internal/net/ipsec/ike/utils/IState;)V

    .line 2650
    iput-boolean v4, v1, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$Receiving;->mProcedureFinished:Z

    .line 2651
    return-void

    nop

    :pswitch_data_174
    .packed-switch 0x3
        :pswitch_159
        :pswitch_152
        :pswitch_159
        :pswitch_f
        :pswitch_159
        :pswitch_b
    .end packed-switch
.end method

.class Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$RekeyChildRemoteCreate;
.super Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$ExceptionHandler;
.source "ChildSessionStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RekeyChildRemoteCreate"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;


# direct methods
.method public static synthetic blacklist $r8$lambda$nFE8es8bw0HzSCfMQaYrhrS77Vk(Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$RekeyChildRemoteCreate;Landroid/net/IpSecTransform;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$RekeyChildRemoteCreate;->lambda$handleCreateChildRequest$0(Landroid/net/IpSecTransform;)V

    return-void
.end method

.method constructor blacklist <init>(Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1813
    iput-object p1, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$RekeyChildRemoteCreate;->this$0:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;

    invoke-direct {p0, p1}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$ExceptionHandler;-><init>(Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;)V

    return-void
.end method

.method private blacklist handleCreateChildRequest(Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$ReceivedRequest;)V
    .registers 23
    .param p1, "req"    # Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$ReceivedRequest;

    .line 1832
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const/4 v3, 0x0

    .line 1833
    .local v3, "reqPayloads":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/net/ipsec/ike/message/IkePayload;>;"
    const/4 v4, 0x0

    .line 1835
    .local v4, "respPayloads":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/net/ipsec/ike/message/IkePayload;>;"
    :try_start_6
    iget-object v0, v2, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$ReceivedRequest;->requestPayloads:Ljava/util/List;
    :try_end_8
    .catch Landroid/net/ipsec/ike/exceptions/NoValidProposalChosenException; {:try_start_6 .. :try_end_8} :catch_215
    .catch Landroid/net/ipsec/ike/exceptions/InvalidKeException; {:try_start_6 .. :try_end_8} :catch_215
    .catch Landroid/net/IpSecManager$SpiUnavailableException; {:try_start_6 .. :try_end_8} :catch_209
    .catch Landroid/net/IpSecManager$ResourceUnavailableException; {:try_start_6 .. :try_end_8} :catch_209

    move-object v5, v0

    .line 1841
    .end local v3    # "reqPayloads":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/net/ipsec/ike/message/IkePayload;>;"
    .local v5, "reqPayloads":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/net/ipsec/ike/message/IkePayload;>;"
    :try_start_9
    const-class v0, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload;

    .line 1842
    const/16 v3, 0x21

    invoke-static {v3, v0, v5}, Lcom/android/internal/net/ipsec/ike/message/IkePayload;->getPayloadForTypeInProvidedList(ILjava/lang/Class;Ljava/util/List;)Lcom/android/internal/net/ipsec/ike/message/IkePayload;

    move-result-object v0

    check-cast v0, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload;

    .line 1845
    .local v0, "reqSaPayload":Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload;
    const-class v3, Lcom/android/internal/net/ipsec/ike/message/IkeKePayload;

    .line 1846
    const/16 v6, 0x22

    invoke-static {v6, v3, v5}, Lcom/android/internal/net/ipsec/ike/message/IkePayload;->getPayloadForTypeInProvidedList(ILjava/lang/Class;Ljava/util/List;)Lcom/android/internal/net/ipsec/ike/message/IkePayload;

    move-result-object v3

    check-cast v3, Lcom/android/internal/net/ipsec/ike/message/IkeKePayload;

    .line 1849
    .local v3, "reqKePayload":Lcom/android/internal/net/ipsec/ike/message/IkeKePayload;
    iget-object v6, v1, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$RekeyChildRemoteCreate;->this$0:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;

    iget-object v6, v6, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->mSaProposal:Landroid/net/ipsec/ike/ChildSaProposal;

    .line 1850
    .local v6, "saProposal":Landroid/net/ipsec/ike/ChildSaProposal;
    if-eqz v3, :cond_3c

    .line 1851
    iget-object v7, v1, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$RekeyChildRemoteCreate;->this$0:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;

    iget-object v7, v7, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->mSaProposal:Landroid/net/ipsec/ike/ChildSaProposal;

    iget-object v8, v1, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$RekeyChildRemoteCreate;->this$0:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;

    iget-object v8, v8, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->mChildSessionParams:Landroid/net/ipsec/ike/ChildSessionParams;

    .line 1854
    invoke-virtual {v8}, Landroid/net/ipsec/ike/ChildSessionParams;->getChildSaProposals()Ljava/util/List;

    move-result-object v8

    iget v9, v3, Lcom/android/internal/net/ipsec/ike/message/IkeKePayload;->dhGroup:I

    iget-object v10, v1, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$RekeyChildRemoteCreate;->this$0:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;

    iget v10, v10, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->mIkeDhGroup:I

    .line 1852
    invoke-virtual {v0, v7, v8, v9, v10}, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload;->getNegotiatedChildProposalWithDh(Landroid/net/ipsec/ike/ChildSaProposal;Ljava/util/List;II)Landroid/net/ipsec/ike/ChildSaProposal;

    move-result-object v7

    move-object v6, v7

    move-object v10, v6

    goto :goto_3d

    .line 1850
    :cond_3c
    move-object v10, v6

    .line 1860
    .end local v6    # "saProposal":Landroid/net/ipsec/ike/ChildSaProposal;
    .local v10, "saProposal":Landroid/net/ipsec/ike/ChildSaProposal;
    :goto_3d
    invoke-virtual {v0, v10}, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload;->getNegotiatedProposalNumber(Landroid/net/ipsec/ike/SaProposal;)B

    move-result v9

    .line 1862
    .local v9, "respProposalNumber":B
    iget-object v6, v1, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$RekeyChildRemoteCreate;->this$0:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;

    iget-object v6, v6, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->mIkeContext:Lcom/android/internal/net/ipsec/ike/IkeContext;

    .line 1864
    invoke-virtual {v6}, Lcom/android/internal/net/ipsec/ike/IkeContext;->getRandomnessFactory()Lcom/android/internal/net/ipsec/ike/utils/RandomnessFactory;

    move-result-object v6

    iget-object v7, v1, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$RekeyChildRemoteCreate;->this$0:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;

    invoke-static {v7}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->-$$Nest$fgetmIpSecSpiGenerator(Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;)Lcom/android/internal/net/ipsec/ike/utils/IpSecSpiGenerator;

    move-result-object v7

    iget-object v8, v1, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$RekeyChildRemoteCreate;->this$0:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;

    iget-object v8, v8, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->mLocalAddress:Ljava/net/InetAddress;

    iget-object v11, v1, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$RekeyChildRemoteCreate;->this$0:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;

    iget-object v11, v11, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->mLocalTs:[Landroid/net/ipsec/ike/IkeTrafficSelector;

    iget-object v12, v1, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$RekeyChildRemoteCreate;->this$0:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;

    iget-object v12, v12, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->mRemoteTs:[Landroid/net/ipsec/ike/IkeTrafficSelector;

    iget-object v13, v1, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$RekeyChildRemoteCreate;->this$0:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;

    iget-object v13, v13, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->mCurrentChildSaRecord:Lcom/android/internal/net/ipsec/ike/SaRecord$ChildSaRecord;

    .line 1871
    invoke-virtual {v13}, Lcom/android/internal/net/ipsec/ike/SaRecord$ChildSaRecord;->getLocalSpi()I

    move-result v13

    iget-object v14, v1, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$RekeyChildRemoteCreate;->this$0:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;

    iget-object v14, v14, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->mChildSessionParams:Landroid/net/ipsec/ike/ChildSessionParams;

    .line 1872
    invoke-virtual {v14}, Landroid/net/ipsec/ike/ChildSessionParams;->isTransportMode()Z

    move-result v14

    .line 1863
    invoke-static/range {v6 .. v14}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$CreateChildSaHelper;->getRekeyChildCreateRespPayloads(Lcom/android/internal/net/ipsec/ike/utils/RandomnessFactory;Lcom/android/internal/net/ipsec/ike/utils/IpSecSpiGenerator;Ljava/net/InetAddress;BLandroid/net/ipsec/ike/ChildSaProposal;[Landroid/net/ipsec/ike/IkeTrafficSelector;[Landroid/net/ipsec/ike/IkeTrafficSelector;IZ)Ljava/util/List;

    move-result-object v6
    :try_end_6f
    .catch Landroid/net/ipsec/ike/exceptions/NoValidProposalChosenException; {:try_start_9 .. :try_end_6f} :catch_206
    .catch Landroid/net/ipsec/ike/exceptions/InvalidKeException; {:try_start_9 .. :try_end_6f} :catch_206
    .catch Landroid/net/IpSecManager$SpiUnavailableException; {:try_start_9 .. :try_end_6f} :catch_203
    .catch Landroid/net/IpSecManager$ResourceUnavailableException; {:try_start_9 .. :try_end_6f} :catch_203

    .line 1880
    .end local v0    # "reqSaPayload":Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload;
    .end local v3    # "reqKePayload":Lcom/android/internal/net/ipsec/ike/message/IkeKePayload;
    .end local v4    # "respPayloads":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/net/ipsec/ike/message/IkePayload;>;"
    .end local v9    # "respProposalNumber":B
    .end local v10    # "saProposal":Landroid/net/ipsec/ike/ChildSaProposal;
    .local v6, "respPayloads":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/net/ipsec/ike/message/IkePayload;>;"
    nop

    .line 1882
    iget v7, v2, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$ReceivedRequest;->exchangeType:I

    iget-object v0, v1, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$RekeyChildRemoteCreate;->this$0:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;

    iget-object v0, v0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->mChildSessionParams:Landroid/net/ipsec/ike/ChildSessionParams;

    .line 1888
    invoke-virtual {v0}, Landroid/net/ipsec/ike/ChildSessionParams;->isTransportMode()Z

    move-result v9

    iget-object v0, v1, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$RekeyChildRemoteCreate;->this$0:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;

    invoke-static {v0}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->-$$Nest$fgetmIpSecSpiGenerator(Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;)Lcom/android/internal/net/ipsec/ike/utils/IpSecSpiGenerator;

    move-result-object v10

    iget-object v0, v1, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$RekeyChildRemoteCreate;->this$0:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;

    iget-object v11, v0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->mRemoteAddress:Ljava/net/InetAddress;

    .line 1883
    const/16 v8, 0x24

    invoke-static/range {v5 .. v11}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$CreateChildSaHelper;->validateAndNegotiateRekeyChildRequest(Ljava/util/List;Ljava/util/List;IIZLcom/android/internal/net/ipsec/ike/utils/IpSecSpiGenerator;Ljava/net/InetAddress;)Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$CreateChildResult;

    move-result-object v3

    .line 1892
    .local v3, "createChildResult":Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$CreateChildResult;
    iget v0, v3, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$CreateChildResult;->status:I

    packed-switch v0, :pswitch_data_21a

    .line 1987
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unrecognized status: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, v3, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$CreateChildResult;->status:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$RekeyChildRemoteCreate;->cleanUpAndQuit(Ljava/lang/RuntimeException;)V

    goto/16 :goto_202

    .line 1981
    :pswitch_ae
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unexpected processing status in Create Child request: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v7, v3, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$CreateChildResult;->status:I

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$RekeyChildRemoteCreate;->cleanUpAndQuit(Ljava/lang/RuntimeException;)V

    .line 1985
    goto/16 :goto_202

    .line 1971
    :pswitch_cd
    iget-object v0, v3, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$CreateChildResult;->exception:Landroid/net/ipsec/ike/exceptions/IkeException;

    .line 1972
    .local v0, "error":Landroid/net/ipsec/ike/exceptions/IkeException;
    instance-of v4, v0, Landroid/net/ipsec/ike/exceptions/IkeProtocolException;

    if-eqz v4, :cond_db

    .line 1973
    move-object v4, v0

    check-cast v4, Landroid/net/ipsec/ike/exceptions/IkeProtocolException;

    invoke-direct {v1, v4}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$RekeyChildRemoteCreate;->handleCreationFailureAndBackToIdle(Landroid/net/ipsec/ike/exceptions/IkeProtocolException;)V

    goto/16 :goto_202

    .line 1975
    :cond_db
    new-instance v4, Landroid/net/ipsec/ike/exceptions/NoValidProposalChosenException;

    const-string v7, "Error in validating Create Child request"

    invoke-direct {v4, v7, v0}, Landroid/net/ipsec/ike/exceptions/NoValidProposalChosenException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {v1, v4}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$RekeyChildRemoteCreate;->handleCreationFailureAndBackToIdle(Landroid/net/ipsec/ike/exceptions/IkeProtocolException;)V

    .line 1979
    goto/16 :goto_202

    .line 1896
    .end local v0    # "error":Landroid/net/ipsec/ike/exceptions/IkeException;
    :pswitch_e7
    :try_start_e7
    iget-object v0, v1, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$RekeyChildRemoteCreate;->this$0:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;

    iget-object v4, v3, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$CreateChildResult;->negotiatedProposal:Landroid/net/ipsec/ike/ChildSaProposal;

    iput-object v4, v0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->mSaProposal:Landroid/net/ipsec/ike/ChildSaProposal;

    .line 1898
    iget-object v0, v1, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$RekeyChildRemoteCreate;->this$0:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;

    iget-object v4, v1, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$RekeyChildRemoteCreate;->this$0:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;

    iget-object v4, v4, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->mIkeContext:Lcom/android/internal/net/ipsec/ike/IkeContext;

    .line 1900
    invoke-virtual {v4}, Lcom/android/internal/net/ipsec/ike/IkeContext;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v8, v3, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$CreateChildResult;->initSpi:Landroid/net/IpSecManager$SecurityParameterIndex;

    iget-object v9, v3, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$CreateChildResult;->respSpi:Landroid/net/IpSecManager$SecurityParameterIndex;

    iget-object v7, v1, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$RekeyChildRemoteCreate;->this$0:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;

    iget-object v10, v7, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->mLocalAddress:Ljava/net/InetAddress;

    iget-object v7, v1, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$RekeyChildRemoteCreate;->this$0:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;

    iget-object v11, v7, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->mRemoteAddress:Ljava/net/InetAddress;

    iget-object v7, v1, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$RekeyChildRemoteCreate;->this$0:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;

    iget-object v12, v7, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->mUdpEncapSocket:Landroid/net/IpSecManager$UdpEncapsulationSocket;

    iget-object v7, v1, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$RekeyChildRemoteCreate;->this$0:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;

    iget-object v13, v7, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->mIkePrf:Lcom/android/internal/net/ipsec/ike/crypto/IkeMacPrf;

    iget-object v7, v1, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$RekeyChildRemoteCreate;->this$0:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;

    iget-object v14, v7, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->mChildIntegrity:Lcom/android/internal/net/ipsec/ike/crypto/IkeMacIntegrity;

    iget-object v7, v1, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$RekeyChildRemoteCreate;->this$0:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;

    iget-object v15, v7, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->mChildCipher:Lcom/android/internal/net/ipsec/ike/crypto/IkeCipher;

    iget-object v7, v1, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$RekeyChildRemoteCreate;->this$0:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;

    iget-object v7, v7, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->mSkD:[B

    iget-object v2, v1, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$RekeyChildRemoteCreate;->this$0:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;

    iget-object v2, v2, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->mChildSessionParams:Landroid/net/ipsec/ike/ChildSessionParams;

    .line 1912
    invoke-virtual {v2}, Landroid/net/ipsec/ike/ChildSessionParams;->isTransportMode()Z

    move-result v17

    iget-object v2, v1, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$RekeyChildRemoteCreate;->this$0:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;

    move-object/from16 v16, v4

    iget-object v4, v3, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$CreateChildResult;->initSpi:Landroid/net/IpSecManager$SecurityParameterIndex;

    .line 1915
    invoke-virtual {v4}, Landroid/net/IpSecManager$SecurityParameterIndex;->getSpi()I

    move-result v4

    .line 1914
    invoke-static {v2, v4}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->-$$Nest$mbuildSaLifetimeAlarmSched(Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;I)Lcom/android/internal/net/ipsec/ike/SaRecord$SaLifetimeAlarmScheduler;

    move-result-object v19
    :try_end_12d
    .catch Ljava/security/GeneralSecurityException; {:try_start_e7 .. :try_end_12d} :catch_1e0
    .catch Landroid/net/IpSecManager$ResourceUnavailableException; {:try_start_e7 .. :try_end_12d} :catch_1e0
    .catch Landroid/net/IpSecManager$SpiUnavailableException; {:try_start_e7 .. :try_end_12d} :catch_1e0
    .catch Ljava/io/IOException; {:try_start_e7 .. :try_end_12d} :catch_1e0
    .catchall {:try_start_e7 .. :try_end_12d} :catchall_1de

    .line 1899
    const/16 v18, 0x0

    move-object/from16 v20, v6

    move-object v6, v5

    move-object/from16 v5, v16

    move-object/from16 v16, v7

    move-object/from16 v7, v20

    .end local v5    # "reqPayloads":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/net/ipsec/ike/message/IkePayload;>;"
    .local v6, "reqPayloads":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/net/ipsec/ike/message/IkePayload;>;"
    .local v7, "respPayloads":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/net/ipsec/ike/message/IkePayload;>;"
    :try_start_138
    invoke-static/range {v5 .. v19}, Lcom/android/internal/net/ipsec/ike/SaRecord$ChildSaRecord;->makeChildSaRecord(Landroid/content/Context;Ljava/util/List;Ljava/util/List;Landroid/net/IpSecManager$SecurityParameterIndex;Landroid/net/IpSecManager$SecurityParameterIndex;Ljava/net/InetAddress;Ljava/net/InetAddress;Landroid/net/IpSecManager$UdpEncapsulationSocket;Lcom/android/internal/net/ipsec/ike/crypto/IkeMacPrf;Lcom/android/internal/net/ipsec/ike/crypto/IkeMacIntegrity;Lcom/android/internal/net/ipsec/ike/crypto/IkeCipher;[BZZLcom/android/internal/net/ipsec/ike/SaRecord$SaLifetimeAlarmScheduler;)Lcom/android/internal/net/ipsec/ike/SaRecord$ChildSaRecord;

    move-result-object v2
    :try_end_13c
    .catch Ljava/security/GeneralSecurityException; {:try_start_138 .. :try_end_13c} :catch_1da
    .catch Landroid/net/IpSecManager$ResourceUnavailableException; {:try_start_138 .. :try_end_13c} :catch_1da
    .catch Landroid/net/IpSecManager$SpiUnavailableException; {:try_start_138 .. :try_end_13c} :catch_1da
    .catch Ljava/io/IOException; {:try_start_138 .. :try_end_13c} :catch_1da
    .catchall {:try_start_138 .. :try_end_13c} :catchall_1d6

    move-object v5, v6

    move-object v6, v7

    .end local v7    # "respPayloads":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/net/ipsec/ike/message/IkePayload;>;"
    .restart local v5    # "reqPayloads":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/net/ipsec/ike/message/IkePayload;>;"
    .local v6, "respPayloads":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/net/ipsec/ike/message/IkePayload;>;"
    :try_start_13e
    iput-object v2, v0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->mRemoteInitNewChildSaRecord:Lcom/android/internal/net/ipsec/ike/SaRecord$ChildSaRecord;

    .line 1917
    iget-object v0, v1, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$RekeyChildRemoteCreate;->this$0:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;

    invoke-static {v0}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->-$$Nest$fgetmChildSmCallback(Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;)Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$IChildSessionSmCallback;

    move-result-object v0

    iget-object v2, v1, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$RekeyChildRemoteCreate;->this$0:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;

    iget-object v2, v2, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->mRemoteInitNewChildSaRecord:Lcom/android/internal/net/ipsec/ike/SaRecord$ChildSaRecord;

    .line 1918
    invoke-virtual {v2}, Lcom/android/internal/net/ipsec/ike/SaRecord$ChildSaRecord;->getRemoteSpi()I

    move-result v2

    iget-object v4, v1, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$RekeyChildRemoteCreate;->this$0:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;

    .line 1917
    invoke-interface {v0, v2, v4}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$IChildSessionSmCallback;->onChildSaCreated(ILcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;)V

    .line 1925
    iget-object v0, v1, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$RekeyChildRemoteCreate;->this$0:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;

    iget-object v0, v0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->mRemoteInitNewChildSaRecord:Lcom/android/internal/net/ipsec/ike/SaRecord$ChildSaRecord;

    .line 1926
    invoke-virtual {v0}, Lcom/android/internal/net/ipsec/ike/SaRecord$ChildSaRecord;->getInboundIpSecTransform()Landroid/net/IpSecTransform;

    move-result-object v0

    .line 1927
    .local v0, "inTransform":Landroid/net/IpSecTransform;
    iget-object v2, v1, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$RekeyChildRemoteCreate;->this$0:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;

    new-instance v4, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$RekeyChildRemoteCreate$$ExternalSyntheticLambda0;

    invoke-direct {v4, v1, v0}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$RekeyChildRemoteCreate$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$RekeyChildRemoteCreate;Landroid/net/IpSecTransform;)V

    invoke-virtual {v2, v4}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->executeUserCallback(Ljava/lang/Runnable;)V

    .line 1933
    iget-object v2, v1, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$RekeyChildRemoteCreate;->this$0:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;

    invoke-static {v2}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->-$$Nest$fgetmChildSmCallback(Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;)Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$IChildSessionSmCallback;

    move-result-object v2

    iget-object v4, v1, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$RekeyChildRemoteCreate;->this$0:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;

    const/4 v7, 0x1

    const/16 v8, 0x24

    invoke-interface {v2, v8, v7, v6, v4}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$IChildSessionSmCallback;->onOutboundPayloadsReady(IZLjava/util/List;Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;)V

    .line 1939
    iget-object v2, v1, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$RekeyChildRemoteCreate;->this$0:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;

    iget-object v2, v2, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->mSaProposal:Landroid/net/ipsec/ike/ChildSaProposal;

    invoke-virtual {v2}, Landroid/net/ipsec/ike/ChildSaProposal;->getIntegrityAlgorithms()Ljava/util/List;

    move-result-object v2

    .line 1940
    .local v2, "integrityAlgorithms":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v4, v1, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$RekeyChildRemoteCreate;->this$0:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;

    iget-object v4, v4, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->mSaProposal:Landroid/net/ipsec/ike/ChildSaProposal;

    invoke-virtual {v4}, Landroid/net/ipsec/ike/ChildSaProposal;->getDhGroups()Ljava/util/List;

    move-result-object v4

    .line 1942
    .local v4, "dhGroups":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v8, v1, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$RekeyChildRemoteCreate;->this$0:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;

    .line 1943
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v9

    const/4 v10, 0x0

    if-eqz v9, :cond_18e

    .line 1944
    move v9, v10

    goto :goto_198

    .line 1945
    :cond_18e
    invoke-interface {v4, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    :goto_198
    iget-object v11, v1, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$RekeyChildRemoteCreate;->this$0:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;

    iget-object v11, v11, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->mSaProposal:Landroid/net/ipsec/ike/ChildSaProposal;

    .line 1946
    invoke-virtual {v11}, Landroid/net/ipsec/ike/ChildSaProposal;->getEncryptionTransforms()[Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$EncryptionTransform;

    move-result-object v11

    aget-object v11, v11, v10

    iget v11, v11, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$EncryptionTransform;->id:I

    iget-object v12, v1, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$RekeyChildRemoteCreate;->this$0:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;

    iget-object v12, v12, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->mSaProposal:Landroid/net/ipsec/ike/ChildSaProposal;

    .line 1947
    invoke-virtual {v12}, Landroid/net/ipsec/ike/ChildSaProposal;->getEncryptionTransforms()[Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$EncryptionTransform;

    move-result-object v12

    aget-object v12, v12, v10

    invoke-virtual {v12}, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$EncryptionTransform;->getSpecifiedKeyLength()I

    move-result v12

    .line 1948
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_1b9

    .line 1949
    goto :goto_1c3

    .line 1950
    :cond_1b9
    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    :goto_1c3
    nop

    .line 1942
    const/4 v13, 0x0

    const/4 v14, 0x0

    move v10, v11

    move v11, v12

    move v12, v7

    invoke-virtual/range {v8 .. v14}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->recordMetricsEvent_SaNegotiation(IIIIILandroid/net/ipsec/ike/exceptions/IkeException;)V

    .line 1954
    iget-object v7, v1, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$RekeyChildRemoteCreate;->this$0:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;

    iget-object v8, v1, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$RekeyChildRemoteCreate;->this$0:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;

    iget-object v8, v8, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->mRekeyChildRemoteDelete:Lcom/android/internal/net/ipsec/ike/utils/State;

    invoke-virtual {v7, v8}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->transitionTo(Lcom/android/internal/net/ipsec/ike/utils/IState;)V
    :try_end_1d5
    .catch Ljava/security/GeneralSecurityException; {:try_start_13e .. :try_end_1d5} :catch_1e0
    .catch Landroid/net/IpSecManager$ResourceUnavailableException; {:try_start_13e .. :try_end_1d5} :catch_1e0
    .catch Landroid/net/IpSecManager$SpiUnavailableException; {:try_start_13e .. :try_end_1d5} :catch_1e0
    .catch Ljava/io/IOException; {:try_start_13e .. :try_end_1d5} :catch_1e0
    .catchall {:try_start_13e .. :try_end_1d5} :catchall_1de

    .end local v0    # "inTransform":Landroid/net/IpSecTransform;
    .end local v2    # "integrityAlgorithms":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v4    # "dhGroups":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    goto :goto_1eb

    .line 1966
    .end local v5    # "reqPayloads":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/net/ipsec/ike/message/IkePayload;>;"
    .local v6, "reqPayloads":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/net/ipsec/ike/message/IkePayload;>;"
    .restart local v7    # "respPayloads":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/net/ipsec/ike/message/IkePayload;>;"
    :catchall_1d6
    move-exception v0

    move-object v5, v6

    move-object v6, v7

    .end local v7    # "respPayloads":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/net/ipsec/ike/message/IkePayload;>;"
    .restart local v5    # "reqPayloads":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/net/ipsec/ike/message/IkePayload;>;"
    .local v6, "respPayloads":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/net/ipsec/ike/message/IkePayload;>;"
    goto :goto_1f7

    .line 1955
    .end local v5    # "reqPayloads":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/net/ipsec/ike/message/IkePayload;>;"
    .local v6, "reqPayloads":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/net/ipsec/ike/message/IkePayload;>;"
    .restart local v7    # "respPayloads":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/net/ipsec/ike/message/IkePayload;>;"
    :catch_1da
    move-exception v0

    move-object v5, v6

    move-object v6, v7

    .end local v7    # "respPayloads":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/net/ipsec/ike/message/IkePayload;>;"
    .restart local v5    # "reqPayloads":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/net/ipsec/ike/message/IkePayload;>;"
    .local v6, "respPayloads":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/net/ipsec/ike/message/IkePayload;>;"
    goto :goto_1e1

    .line 1966
    :catchall_1de
    move-exception v0

    goto :goto_1f7

    .line 1955
    :catch_1e0
    move-exception v0

    .line 1960
    .local v0, "e":Ljava/lang/Exception;
    :goto_1e1
    :try_start_1e1
    new-instance v2, Landroid/net/ipsec/ike/exceptions/NoValidProposalChosenException;

    const-string v4, "Error in Child SA creation"

    invoke-direct {v2, v4, v0}, Landroid/net/ipsec/ike/exceptions/NoValidProposalChosenException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {v1, v2}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$RekeyChildRemoteCreate;->handleCreationFailureAndBackToIdle(Landroid/net/ipsec/ike/exceptions/IkeProtocolException;)V
    :try_end_1eb
    .catchall {:try_start_1e1 .. :try_end_1eb} :catchall_1de

    .line 1966
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1eb
    iget-object v0, v3, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$CreateChildResult;->initSpi:Landroid/net/IpSecManager$SecurityParameterIndex;

    invoke-virtual {v0}, Landroid/net/IpSecManager$SecurityParameterIndex;->close()V

    .line 1967
    iget-object v0, v3, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$CreateChildResult;->respSpi:Landroid/net/IpSecManager$SecurityParameterIndex;

    invoke-virtual {v0}, Landroid/net/IpSecManager$SecurityParameterIndex;->close()V

    .line 1968
    nop

    .line 1969
    goto :goto_202

    .line 1966
    :goto_1f7
    iget-object v2, v3, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$CreateChildResult;->initSpi:Landroid/net/IpSecManager$SecurityParameterIndex;

    invoke-virtual {v2}, Landroid/net/IpSecManager$SecurityParameterIndex;->close()V

    .line 1967
    iget-object v2, v3, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$CreateChildResult;->respSpi:Landroid/net/IpSecManager$SecurityParameterIndex;

    invoke-virtual {v2}, Landroid/net/IpSecManager$SecurityParameterIndex;->close()V

    .line 1968
    throw v0

    .line 1991
    :goto_202
    return-void

    .line 1876
    .end local v3    # "createChildResult":Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$CreateChildResult;
    .end local v6    # "respPayloads":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/net/ipsec/ike/message/IkePayload;>;"
    .local v4, "respPayloads":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/net/ipsec/ike/message/IkePayload;>;"
    :catch_203
    move-exception v0

    move-object v3, v5

    goto :goto_20a

    .line 1873
    :catch_206
    move-exception v0

    move-object v3, v5

    goto :goto_216

    .line 1876
    .end local v5    # "reqPayloads":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/net/ipsec/ike/message/IkePayload;>;"
    .local v3, "reqPayloads":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/net/ipsec/ike/message/IkePayload;>;"
    :catch_209
    move-exception v0

    .line 1877
    .local v0, "e":Landroid/util/AndroidException;
    :goto_20a
    new-instance v2, Landroid/net/ipsec/ike/exceptions/NoValidProposalChosenException;

    const-string v5, "Fail to assign inbound SPI"

    invoke-direct {v2, v5, v0}, Landroid/net/ipsec/ike/exceptions/NoValidProposalChosenException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {v1, v2}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$RekeyChildRemoteCreate;->handleCreationFailureAndBackToIdle(Landroid/net/ipsec/ike/exceptions/IkeProtocolException;)V

    .line 1879
    return-void

    .line 1873
    .end local v0    # "e":Landroid/util/AndroidException;
    :catch_215
    move-exception v0

    .line 1874
    .local v0, "e":Landroid/net/ipsec/ike/exceptions/IkeProtocolException;
    :goto_216
    invoke-direct {v1, v0}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$RekeyChildRemoteCreate;->handleCreationFailureAndBackToIdle(Landroid/net/ipsec/ike/exceptions/IkeProtocolException;)V

    .line 1875
    return-void

    :pswitch_data_21a
    .packed-switch 0x0
        :pswitch_e7
        :pswitch_cd
        :pswitch_ae
    .end packed-switch
.end method

.method private blacklist handleCreationFailureAndBackToIdle(Landroid/net/ipsec/ike/exceptions/IkeProtocolException;)V
    .registers 7
    .param p1, "e"    # Landroid/net/ipsec/ike/exceptions/IkeProtocolException;

    .line 1994
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$RekeyChildRemoteCreate;->this$0:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;

    const-string v1, "Received invalid Rekey Child request. Reject with error notification"

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1996
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1997
    .local v0, "payloads":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/net/ipsec/ike/message/IkePayload;>;"
    invoke-virtual {p1}, Landroid/net/ipsec/ike/exceptions/IkeProtocolException;->buildNotifyPayload()Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1998
    iget-object v2, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$RekeyChildRemoteCreate;->this$0:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;

    invoke-static {v2}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->-$$Nest$fgetmChildSmCallback(Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;)Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$IChildSessionSmCallback;

    move-result-object v2

    const/16 v3, 0x24

    iget-object v4, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$RekeyChildRemoteCreate;->this$0:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;

    invoke-interface {v2, v3, v1, v0, v4}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$IChildSessionSmCallback;->onOutboundPayloadsReady(IZLjava/util/List;Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;)V

    .line 2004
    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$RekeyChildRemoteCreate;->this$0:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;

    iget-object v2, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$RekeyChildRemoteCreate;->this$0:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;

    iget-object v2, v2, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->mIdle:Lcom/android/internal/net/ipsec/ike/utils/State;

    invoke-virtual {v1, v2}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->transitionTo(Lcom/android/internal/net/ipsec/ike/utils/IState;)V

    .line 2005
    return-void
.end method

.method private synthetic blacklist lambda$handleCreateChildRequest$0(Landroid/net/IpSecTransform;)V
    .registers 4
    .param p1, "inTransform"    # Landroid/net/IpSecTransform;

    .line 1929
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$RekeyChildRemoteCreate;->this$0:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;

    invoke-static {v0}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->-$$Nest$fgetmUserCallback(Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;)Landroid/net/ipsec/ike/ChildSessionCallback;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/net/ipsec/ike/ChildSessionCallback;->onIpSecTransformCreated(Landroid/net/IpSecTransform;I)V

    .line 1931
    return-void
.end method


# virtual methods
.method protected blacklist getMetricsStateCode()I
    .registers 2

    .line 2009
    const/16 v0, 0x6f

    return v0
.end method

.method public blacklist processStateMessage(Landroid/os/Message;)Z
    .registers 6
    .param p1, "message"    # Landroid/os/Message;

    .line 1816
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_16

    .line 1827
    return v1

    .line 1818
    :pswitch_7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$ReceivedRequest;

    .line 1820
    .local v0, "req":Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$ReceivedRequest;
    iget v2, v0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$ReceivedRequest;->exchangeSubtype:I

    const/4 v3, 0x7

    if-ne v2, v3, :cond_15

    .line 1821
    invoke-direct {p0, v0}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$RekeyChildRemoteCreate;->handleCreateChildRequest(Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$ReceivedRequest;)V

    .line 1822
    const/4 v1, 0x1

    return v1

    .line 1825
    :cond_15
    return v1

    :pswitch_data_16
    .packed-switch 0x12e
        :pswitch_7
    .end packed-switch
.end method

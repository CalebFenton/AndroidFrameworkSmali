.class Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuthPostEap;
.super Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuthFirstAndLastExchangeBase;
.source "IkeSessionStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CreateIkeLocalIkeAuthPostEap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuthFirstAndLastExchangeBase<",
        "Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$IkeAuthData;",
        ">;"
    }
.end annotation


# instance fields
.field private blacklist mEapMsk:[B

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

    .line 4662
    iput-object p1, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuthPostEap;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    invoke-direct {p0, p1}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuthFirstAndLastExchangeBase;-><init>(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;)V

    .line 4664
    const/4 v0, 0x0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuthPostEap;->mEapMsk:[B

    return-void
.end method

.method private blacklist validateIkeAuthResp(Lcom/android/internal/net/ipsec/ike/message/IkeMessage;)Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$MsgValidationResult;
    .registers 10
    .param p1, "authResp"    # Lcom/android/internal/net/ipsec/ike/message/IkeMessage;

    .line 4728
    const/4 v0, 0x0

    .line 4732
    .local v0, "authPayload":Lcom/android/internal/net/ipsec/ike/message/IkeAuthPayload;
    const/4 v1, 0x0

    .line 4734
    .local v1, "ike3gppPayloads":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/net/ipsec/ike/message/IkePayload;>;"
    :try_start_2
    iget-object v2, p1, Lcom/android/internal/net/ipsec/ike/message/IkeMessage;->ikePayloadList:Ljava/util/List;

    .line 4735
    const/4 v3, 0x2

    invoke-virtual {p0, v3, v2}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuthPostEap;->handle3gppRespAndExtractNonError3gppPayloads(ILjava/util/List;)Ljava/util/List;

    move-result-object v2
    :try_end_9
    .catch Landroid/net/ipsec/ike/exceptions/InvalidSyntaxException; {:try_start_2 .. :try_end_9} :catch_86

    .line 4739
    .end local v1    # "ike3gppPayloads":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/net/ipsec/ike/message/IkePayload;>;"
    .local v2, "ike3gppPayloads":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/net/ipsec/ike/message/IkePayload;>;"
    nop

    .line 4741
    new-instance v1, Ljava/util/ArrayList;

    iget-object v3, p1, Lcom/android/internal/net/ipsec/ike/message/IkeMessage;->ikePayloadList:Ljava/util/List;

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 4742
    .local v1, "payloadsWithout3gpp":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/net/ipsec/ike/message/IkePayload;>;"
    invoke-interface {v1, v2}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 4744
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_18
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_62

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/net/ipsec/ike/message/IkePayload;

    .line 4745
    .local v4, "payload":Lcom/android/internal/net/ipsec/ike/message/IkePayload;
    iget v5, v4, Lcom/android/internal/net/ipsec/ike/message/IkePayload;->payloadType:I

    sparse-switch v5, :sswitch_data_8c

    .line 4765
    iget-object v5, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuthPostEap;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Received unexpected payload in IKE AUTH response. Payload type: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v4, Lcom/android/internal/net/ipsec/ike/message/IkePayload;->payloadType:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->logw(Ljava/lang/String;)V

    goto :goto_61

    .line 4750
    :sswitch_44
    move-object v5, v4

    check-cast v5, Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;

    const-class v6, Lcom/android/internal/net/ipsec/ike/message/IkeAuthPayload;

    .line 4753
    const/16 v7, 0x27

    invoke-virtual {p1, v7, v6}, Lcom/android/internal/net/ipsec/ike/message/IkeMessage;->getPayloadForType(ILjava/lang/Class;)Lcom/android/internal/net/ipsec/ike/message/IkePayload;

    move-result-object v6

    check-cast v6, Lcom/android/internal/net/ipsec/ike/message/IkeAuthPayload;

    .line 4751
    invoke-virtual {p0, v5, v6}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuthPostEap;->handleNotifyInLastAuthResp(Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;Lcom/android/internal/net/ipsec/ike/message/IkeAuthPayload;)Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$MsgValidationResult;

    move-result-object v5

    .line 4755
    .local v5, "result":Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$MsgValidationResult;
    invoke-virtual {v5}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$MsgValidationResult;->getResult()I

    move-result v6

    if-eqz v6, :cond_61

    .line 4756
    return-object v5

    .line 4747
    .end local v5    # "result":Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$MsgValidationResult;
    :sswitch_5c
    move-object v0, v4

    check-cast v0, Lcom/android/internal/net/ipsec/ike/message/IkeAuthPayload;

    .line 4748
    goto :goto_61

    .line 4763
    :sswitch_60
    nop

    .line 4770
    .end local v4    # "payload":Lcom/android/internal/net/ipsec/ike/message/IkePayload;
    :cond_61
    :goto_61
    goto :goto_18

    .line 4773
    :cond_62
    if-nez v0, :cond_70

    .line 4774
    new-instance v3, Landroid/net/ipsec/ike/exceptions/AuthenticationFailedException;

    const-string v4, "Post-EAP Auth payload missing."

    invoke-direct {v3, v4}, Landroid/net/ipsec/ike/exceptions/AuthenticationFailedException;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$MsgValidationResult;->newResultInvalidMsg(Landroid/net/ipsec/ike/exceptions/IkeException;)Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$MsgValidationResult;

    move-result-object v3

    return-object v3

    .line 4779
    :cond_70
    :try_start_70
    iget-object v3, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuthPostEap;->mEapMsk:[B

    iget-object v4, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuthPostEap;->mSetupData:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$IkeInitData;

    check-cast v4, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$IkeAuthData;

    iget-object v4, v4, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$IkeAuthData;->respIdPayload:Lcom/android/internal/net/ipsec/ike/message/IkeIdPayload;

    invoke-virtual {p0, v3, v0, v4}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuthPostEap;->authenticatePsk([BLcom/android/internal/net/ipsec/ike/message/IkeAuthPayload;Lcom/android/internal/net/ipsec/ike/message/IkeIdPayload;)V

    .line 4780
    invoke-static {}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$MsgValidationResult;->newResultOk()Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$MsgValidationResult;

    move-result-object v3
    :try_end_7f
    .catch Landroid/net/ipsec/ike/exceptions/AuthenticationFailedException; {:try_start_70 .. :try_end_7f} :catch_80

    return-object v3

    .line 4781
    :catch_80
    move-exception v3

    .line 4782
    .local v3, "e":Landroid/net/ipsec/ike/exceptions/AuthenticationFailedException;
    invoke-static {v3}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$MsgValidationResult;->newResultInvalidMsg(Landroid/net/ipsec/ike/exceptions/IkeException;)Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$MsgValidationResult;

    move-result-object v4

    return-object v4

    .line 4737
    .end local v2    # "ike3gppPayloads":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/net/ipsec/ike/message/IkePayload;>;"
    .end local v3    # "e":Landroid/net/ipsec/ike/exceptions/AuthenticationFailedException;
    .local v1, "ike3gppPayloads":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/net/ipsec/ike/message/IkePayload;>;"
    :catch_86
    move-exception v2

    .line 4738
    .local v2, "e":Landroid/net/ipsec/ike/exceptions/InvalidSyntaxException;
    invoke-static {v2}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$MsgValidationResult;->newResultInvalidMsg(Landroid/net/ipsec/ike/exceptions/IkeException;)Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$MsgValidationResult;

    move-result-object v3

    return-object v3

    :sswitch_data_8c
    .sparse-switch
        0x21 -> :sswitch_60
        0x27 -> :sswitch_5c
        0x29 -> :sswitch_44
        0x2c -> :sswitch_60
        0x2d -> :sswitch_60
        0x2f -> :sswitch_60
    .end sparse-switch
.end method


# virtual methods
.method public blacklist exitState()V
    .registers 2

    .line 4788
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuthPostEap;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-boolean v0, v0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mIsClosing:Z

    if-eqz v0, :cond_f

    .line 4789
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuthPostEap;->mSetupData:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$IkeInitData;

    check-cast v0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$IkeAuthData;

    iget-object v0, v0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$IkeAuthData;->firstChildReqList:Ljava/util/List;

    invoke-static {v0}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$CreateChildSaHelper;->releaseSpiResources(Ljava/util/List;)V

    .line 4791
    :cond_f
    invoke-super {p0}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuthFirstAndLastExchangeBase;->exitState()V

    .line 4792
    return-void
.end method

.method protected blacklist getMetricsStateCode()I
    .registers 2

    .line 4796
    const/4 v0, 0x6

    return v0
.end method

.method protected blacklist handleResponseGenericProcessError(Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;Landroid/net/ipsec/ike/exceptions/InvalidSyntaxException;)V
    .registers 5
    .param p1, "ikeSaRecord"    # Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;
    .param p2, "ikeException"    # Landroid/net/ipsec/ike/exceptions/InvalidSyntaxException;

    .line 4721
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuthPostEap;->mRetransmitter:Lcom/android/internal/net/ipsec/ike/utils/Retransmitter;

    invoke-virtual {v0}, Lcom/android/internal/net/ipsec/ike/utils/Retransmitter;->stopRetransmitting()V

    .line 4723
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuthPostEap;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuthPostEap;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v1, v1, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mCurrentIkeSaRecord:Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;

    invoke-virtual {p0, v1}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuthPostEap;->buildIkeDeleteReq(Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;)Lcom/android/internal/net/ipsec/ike/message/IkeMessage;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->sendEncryptedIkeMessage(Lcom/android/internal/net/ipsec/ike/message/IkeMessage;)V

    .line 4724
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuthPostEap;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    invoke-static {v0, p2}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->-$$Nest$mhandleIkeFatalError(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;Ljava/lang/Exception;)V

    .line 4725
    return-void
.end method

.method protected blacklist handleResponseIkeMessage(Lcom/android/internal/net/ipsec/ike/message/IkeMessage;)V
    .registers 3
    .param p1, "ikeMessage"    # Lcom/android/internal/net/ipsec/ike/message/IkeMessage;

    .line 4696
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuthPostEap;->handleIkeAuthResponse(Lcom/android/internal/net/ipsec/ike/message/IkeMessage;Z)V

    .line 4697
    return-void
.end method

.method public blacklist processStateMessage(Landroid/os/Message;)Z
    .registers 11
    .param p1, "msg"    # Landroid/os/Message;

    .line 4668
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    sparse-switch v0, :sswitch_data_70

    .line 4690
    invoke-super {p0, p1}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuthFirstAndLastExchangeBase;->processStateMessage(Landroid/os/Message;)Z

    move-result v0

    return v0

    .line 4687
    :sswitch_b
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuthPostEap;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received SET_NETWORK cmd in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuthPostEap;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    invoke-virtual {v3}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->getCurrentStateName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->logWtf(Ljava/lang/String;)V

    .line 4688
    return v1

    .line 4670
    :sswitch_2a
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [B

    iput-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuthPostEap;->mEapMsk:[B

    .line 4672
    new-instance v2, Lcom/android/internal/net/ipsec/ike/message/IkeAuthPskPayload;

    iget-object v3, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuthPostEap;->mEapMsk:[B

    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuthPostEap;->mSetupData:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$IkeInitData;

    check-cast v0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$IkeAuthData;

    iget-object v4, v0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$IkeAuthData;->ikeInitRequestBytes:[B

    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuthPostEap;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v0, v0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mCurrentIkeSaRecord:Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;

    iget-object v5, v0, Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;->nonceResponder:[B

    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuthPostEap;->mSetupData:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$IkeInitData;

    check-cast v0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$IkeAuthData;

    iget-object v0, v0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$IkeAuthData;->initIdPayload:Lcom/android/internal/net/ipsec/ike/message/IkeIdPayload;

    .line 4677
    invoke-virtual {v0}, Lcom/android/internal/net/ipsec/ike/message/IkeIdPayload;->getEncodedPayloadBody()[B

    move-result-object v6

    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuthPostEap;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v7, v0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mIkePrf:Lcom/android/internal/net/ipsec/ike/crypto/IkeMacPrf;

    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuthPostEap;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v0, v0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mCurrentIkeSaRecord:Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;

    .line 4679
    invoke-virtual {v0}, Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;->getSkPi()[B

    move-result-object v8

    invoke-direct/range {v2 .. v8}, Lcom/android/internal/net/ipsec/ike/message/IkeAuthPskPayload;-><init>([B[B[B[BLcom/android/internal/net/ipsec/ike/crypto/IkeMacPrf;[B)V

    .line 4680
    .local v2, "pskPayload":Lcom/android/internal/net/ipsec/ike/message/IkeAuthPskPayload;
    const/4 v0, 0x1

    new-array v3, v0, [Lcom/android/internal/net/ipsec/ike/message/IkePayload;

    aput-object v2, v3, v1

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuthPostEap;->buildIkeAuthReqMessage(Ljava/util/List;)Lcom/android/internal/net/ipsec/ike/message/IkeMessage;

    move-result-object v1

    .line 4681
    .local v1, "postEapAuthMsg":Lcom/android/internal/net/ipsec/ike/message/IkeMessage;
    new-instance v3, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$EncryptedRetransmitter;

    iget-object v4, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuthPostEap;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    invoke-direct {v3, v4, v1}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$EncryptedRetransmitter;-><init>(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;Lcom/android/internal/net/ipsec/ike/message/IkeMessage;)V

    iput-object v3, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuthPostEap;->mRetransmitter:Lcom/android/internal/net/ipsec/ike/utils/Retransmitter;

    .line 4683
    return v0

    :sswitch_data_70
    .sparse-switch
        0x13a -> :sswitch_2a
        0x13d -> :sswitch_b
    .end sparse-switch
.end method

.method public blacklist validateAuthRespAndTakeNextStep(Lcom/android/internal/net/ipsec/ike/message/IkeMessage;)Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$MsgValidationResult;
    .registers 5
    .param p1, "ikeMessage"    # Lcom/android/internal/net/ipsec/ike/message/IkeMessage;

    .line 4701
    invoke-direct {p0, p1}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuthPostEap;->validateIkeAuthResp(Lcom/android/internal/net/ipsec/ike/message/IkeMessage;)Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$MsgValidationResult;

    move-result-object v0

    .line 4702
    .local v0, "validateResult":Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$MsgValidationResult;
    invoke-virtual {v0}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$MsgValidationResult;->getResult()I

    move-result v1

    if-eqz v1, :cond_b

    .line 4703
    return-object v0

    .line 4707
    :cond_b
    :try_start_b
    invoke-virtual {p0}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuthPostEap;->maybeEnableMobility()V
    :try_end_e
    .catch Landroid/net/ipsec/ike/exceptions/IkeException; {:try_start_b .. :try_end_e} :catch_f

    .line 4710
    goto :goto_13

    .line 4708
    :catch_f
    move-exception v1

    .line 4709
    .local v1, "e":Landroid/net/ipsec/ike/exceptions/IkeException;
    invoke-static {v1}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$MsgValidationResult;->newResultInvalidMsg(Landroid/net/ipsec/ike/exceptions/IkeException;)Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$MsgValidationResult;

    .line 4712
    .end local v1    # "e":Landroid/net/ipsec/ike/exceptions/IkeException;
    :goto_13
    invoke-virtual {p0, p1}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuthPostEap;->notifyIkeSessionSetup(Lcom/android/internal/net/ipsec/ike/message/IkeMessage;)V

    .line 4713
    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuthPostEap;->mSetupData:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$IkeInitData;

    check-cast v1, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$IkeAuthData;

    iget-object v1, v1, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$IkeAuthData;->firstChildReqList:Ljava/util/List;

    .line 4714
    invoke-virtual {p0, p1}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuthPostEap;->extractChildPayloadsFromMessage(Lcom/android/internal/net/ipsec/ike/message/IkeMessage;)Ljava/util/List;

    move-result-object v2

    .line 4713
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuthPostEap;->performFirstChildNegotiation(Ljava/util/List;Ljava/util/List;)V

    .line 4715
    invoke-static {}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$MsgValidationResult;->newResultOk()Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$MsgValidationResult;

    move-result-object v1

    return-object v1
.end method

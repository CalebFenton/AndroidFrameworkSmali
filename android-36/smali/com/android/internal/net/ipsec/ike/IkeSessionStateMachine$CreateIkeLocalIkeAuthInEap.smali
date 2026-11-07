.class Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuthInEap;
.super Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuthBase;
.source "IkeSessionStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CreateIkeLocalIkeAuthInEap"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuthInEap$IkeEapCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuthBase<",
        "Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$IkeAuthData;",
        ">;"
    }
.end annotation


# instance fields
.field private blacklist mEapAuthenticator:Lcom/android/internal/net/eap/EapAuthenticator;

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

    .line 4484
    iput-object p1, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuthInEap;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    invoke-direct {p0, p1}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuthBase;-><init>(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;)V

    return-void
.end method


# virtual methods
.method public blacklist enterState()V
    .registers 6

    .line 4489
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuthInEap;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v0, v0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mIkeSessionParams:Landroid/net/ipsec/ike/IkeSessionParams;

    .line 4490
    invoke-virtual {v0}, Landroid/net/ipsec/ike/IkeSessionParams;->getLocalAuthConfig()Landroid/net/ipsec/ike/IkeSessionParams$IkeAuthConfig;

    move-result-object v0

    check-cast v0, Landroid/net/ipsec/ike/IkeSessionParams$IkeAuthEapConfig;

    .line 4493
    .local v0, "ikeAuthEapConfig":Landroid/net/ipsec/ike/IkeSessionParams$IkeAuthEapConfig;
    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuthInEap;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    invoke-static {v1}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->-$$Nest$fgetmDeps(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;)Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$Dependencies;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuthInEap;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v2, v2, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mIkeContext:Lcom/android/internal/net/ipsec/ike/IkeContext;

    new-instance v3, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuthInEap$IkeEapCallback;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuthInEap$IkeEapCallback;-><init>(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuthInEap;Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine-IA;)V

    iget-object v4, v0, Landroid/net/ipsec/ike/IkeSessionParams$IkeAuthEapConfig;->mEapConfig:Landroid/net/eap/EapSessionConfig;

    .line 4494
    invoke-virtual {v1, v2, v3, v4}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$Dependencies;->newEapAuthenticator(Lcom/android/internal/net/ipsec/ike/IkeContext;Lcom/android/internal/net/eap/IEapCallback;Landroid/net/eap/EapSessionConfig;)Lcom/android/internal/net/eap/EapAuthenticator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuthInEap;->mEapAuthenticator:Lcom/android/internal/net/eap/EapAuthenticator;

    .line 4496
    return-void
.end method

.method public blacklist exitState()V
    .registers 2

    .line 4646
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuthInEap;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-boolean v0, v0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mIsClosing:Z

    if-eqz v0, :cond_f

    .line 4647
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuthInEap;->mSetupData:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$IkeInitData;

    check-cast v0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$IkeAuthData;

    iget-object v0, v0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$IkeAuthData;->firstChildReqList:Ljava/util/List;

    invoke-static {v0}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$CreateChildSaHelper;->releaseSpiResources(Ljava/util/List;)V

    .line 4649
    :cond_f
    invoke-super {p0}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuthBase;->exitState()V

    .line 4650
    return-void
.end method

.method protected blacklist getMetricsStateCode()I
    .registers 2

    .line 4654
    const/4 v0, 0x5

    return v0
.end method

.method protected blacklist handleResponseGenericProcessError(Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;Landroid/net/ipsec/ike/exceptions/InvalidSyntaxException;)V
    .registers 4
    .param p1, "ikeSaRecord"    # Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;
    .param p2, "ikeException"    # Landroid/net/ipsec/ike/exceptions/InvalidSyntaxException;

    .line 4608
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuthInEap;->mRetransmitter:Lcom/android/internal/net/ipsec/ike/utils/Retransmitter;

    invoke-virtual {v0}, Lcom/android/internal/net/ipsec/ike/utils/Retransmitter;->stopRetransmitting()V

    .line 4609
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuthInEap;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    invoke-static {v0, p2}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->-$$Nest$mhandleIkeFatalError(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;Ljava/lang/Exception;)V

    .line 4610
    return-void
.end method

.method protected blacklist handleResponseIkeMessage(Lcom/android/internal/net/ipsec/ike/message/IkeMessage;)V
    .registers 12
    .param p1, "ikeMessage"    # Lcom/android/internal/net/ipsec/ike/message/IkeMessage;

    .line 4551
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuthInEap;->mRetransmitter:Lcom/android/internal/net/ipsec/ike/utils/Retransmitter;

    invoke-virtual {v0}, Lcom/android/internal/net/ipsec/ike/utils/Retransmitter;->stopRetransmitting()V

    .line 4553
    iget-object v0, p1, Lcom/android/internal/net/ipsec/ike/message/IkeMessage;->ikeHeader:Lcom/android/internal/net/ipsec/ike/message/IkeHeader;

    iget v0, v0, Lcom/android/internal/net/ipsec/ike/message/IkeHeader;->exchangeType:I

    .line 4554
    .local v0, "exchangeType":I
    const/16 v1, 0x23

    if-ne v0, v1, :cond_90

    .line 4561
    iget-object v1, p1, Lcom/android/internal/net/ipsec/ike/message/IkeMessage;->ikePayloadList:Ljava/util/List;

    .line 4562
    const/4 v2, 0x2

    invoke-virtual {p0, v2, v1}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuthInEap;->handle3gppRespAndExtractNonError3gppPayloads(ILjava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 4565
    .local v1, "ike3gppPayloads":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/net/ipsec/ike/message/IkePayload;>;"
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p1, Lcom/android/internal/net/ipsec/ike/message/IkeMessage;->ikePayloadList:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 4566
    .local v2, "payloadsWithout3gpp":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/net/ipsec/ike/message/IkePayload;>;"
    invoke-interface {v2, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 4568
    const/4 v3, 0x0

    .line 4569
    .local v3, "eapPayload":Lcom/android/internal/net/ipsec/ike/message/IkeEapPayload;
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_23
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/net/ipsec/ike/message/IkePayload;

    .line 4570
    .local v5, "payload":Lcom/android/internal/net/ipsec/ike/message/IkePayload;
    iget v6, v5, Lcom/android/internal/net/ipsec/ike/message/IkePayload;->payloadType:I

    sparse-switch v6, :sswitch_data_b0

    .line 4588
    iget-object v6, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuthInEap;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    goto :goto_65

    .line 4572
    :sswitch_37
    move-object v6, v5

    check-cast v6, Lcom/android/internal/net/ipsec/ike/message/IkeEapPayload;

    .line 4573
    .end local v3    # "eapPayload":Lcom/android/internal/net/ipsec/ike/message/IkeEapPayload;
    .local v6, "eapPayload":Lcom/android/internal/net/ipsec/ike/message/IkeEapPayload;
    move-object v3, v6

    goto :goto_7d

    .line 4575
    .end local v6    # "eapPayload":Lcom/android/internal/net/ipsec/ike/message/IkeEapPayload;
    .restart local v3    # "eapPayload":Lcom/android/internal/net/ipsec/ike/message/IkeEapPayload;
    :sswitch_3c
    move-object v6, v5

    check-cast v6, Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;

    .line 4576
    .local v6, "notifyPayload":Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;
    invoke-virtual {v6}, Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;->isErrorNotify()Z

    move-result v7

    if-nez v7, :cond_60

    .line 4581
    iget-object v7, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuthInEap;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Received unknown or unexpected status notifications with notify type: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v6, Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;->notifyType:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->logw(Ljava/lang/String;)V

    .line 4586
    goto :goto_7d

    .line 4577
    :cond_60
    invoke-virtual {v6}, Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;->validateAndBuildIkeException()Landroid/net/ipsec/ike/exceptions/IkeProtocolException;

    move-result-object v4

    .end local p0    # "this":Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuthInEap;
    .end local p1    # "ikeMessage":Lcom/android/internal/net/ipsec/ike/message/IkeMessage;
    throw v4

    .line 4588
    .end local v6    # "notifyPayload":Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;
    .restart local p0    # "this":Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuthInEap;
    .restart local p1    # "ikeMessage":Lcom/android/internal/net/ipsec/ike/message/IkeMessage;
    :goto_65
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Received unexpected payload in IKE AUTH response. Payload type: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v5, Lcom/android/internal/net/ipsec/ike/message/IkePayload;->payloadType:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->logw(Ljava/lang/String;)V

    .line 4593
    .end local v5    # "payload":Lcom/android/internal/net/ipsec/ike/message/IkePayload;
    :goto_7d
    goto :goto_23

    .line 4595
    :cond_7e
    if-eqz v3, :cond_88

    .line 4599
    iget-object v4, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuthInEap;->mEapAuthenticator:Lcom/android/internal/net/eap/EapAuthenticator;

    iget-object v5, v3, Lcom/android/internal/net/ipsec/ike/message/IkeEapPayload;->eapMessage:[B

    invoke-virtual {v4, v5}, Lcom/android/internal/net/eap/EapAuthenticator;->processEapMessage([B)V

    .line 4602
    .end local v0    # "exchangeType":I
    .end local v1    # "ike3gppPayloads":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/net/ipsec/ike/message/IkePayload;>;"
    .end local v2    # "payloadsWithout3gpp":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/net/ipsec/ike/message/IkePayload;>;"
    .end local v3    # "eapPayload":Lcom/android/internal/net/ipsec/ike/message/IkeEapPayload;
    goto :goto_af

    .line 4596
    .restart local v0    # "exchangeType":I
    .restart local v1    # "ike3gppPayloads":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/net/ipsec/ike/message/IkePayload;>;"
    .restart local v2    # "payloadsWithout3gpp":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/net/ipsec/ike/message/IkePayload;>;"
    .restart local v3    # "eapPayload":Lcom/android/internal/net/ipsec/ike/message/IkeEapPayload;
    :cond_88
    new-instance v4, Landroid/net/ipsec/ike/exceptions/AuthenticationFailedException;

    const-string v5, "EAP Payload is missing."

    invoke-direct {v4, v5}, Landroid/net/ipsec/ike/exceptions/AuthenticationFailedException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuthInEap;
    .end local p1    # "ikeMessage":Lcom/android/internal/net/ipsec/ike/message/IkeMessage;
    throw v4

    .line 4555
    .end local v1    # "ike3gppPayloads":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/net/ipsec/ike/message/IkePayload;>;"
    .end local v2    # "payloadsWithout3gpp":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/net/ipsec/ike/message/IkePayload;>;"
    .end local v3    # "eapPayload":Lcom/android/internal/net/ipsec/ike/message/IkeEapPayload;
    .restart local p0    # "this":Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuthInEap;
    .restart local p1    # "ikeMessage":Lcom/android/internal/net/ipsec/ike/message/IkeMessage;
    :cond_90
    new-instance v1, Landroid/net/ipsec/ike/exceptions/InvalidSyntaxException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected EXCHANGE_TYPE_IKE_AUTH but received: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/net/ipsec/ike/exceptions/InvalidSyntaxException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuthInEap;
    .end local p1    # "ikeMessage":Lcom/android/internal/net/ipsec/ike/message/IkeMessage;
    throw v1
    :try_end_a9
    .catch Landroid/net/ipsec/ike/exceptions/IkeProtocolException; {:try_start_0 .. :try_end_a9} :catch_a9

    .line 4600
    .end local v0    # "exchangeType":I
    .restart local p0    # "this":Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuthInEap;
    .restart local p1    # "ikeMessage":Lcom/android/internal/net/ipsec/ike/message/IkeMessage;
    :catch_a9
    move-exception v0

    .line 4601
    .local v0, "exception":Landroid/net/ipsec/ike/exceptions/IkeProtocolException;
    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuthInEap;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    invoke-static {v1, v0}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->-$$Nest$mhandleIkeFatalError(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;Ljava/lang/Exception;)V

    .line 4603
    .end local v0    # "exception":Landroid/net/ipsec/ike/exceptions/IkeProtocolException;
    :goto_af
    return-void

    :sswitch_data_b0
    .sparse-switch
        0x29 -> :sswitch_3c
        0x30 -> :sswitch_37
    .end sparse-switch
.end method

.method public blacklist processStateMessage(Landroid/os/Message;)Z
    .registers 9
    .param p1, "msg"    # Landroid/os/Message;

    .line 4500
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_a2

    .line 4544
    :pswitch_6
    invoke-super {p0, p1}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuthBase;->processStateMessage(Landroid/os/Message;)Z

    move-result v0

    return v0

    .line 4541
    :pswitch_b
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuthInEap;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received SET_NETWORK cmd in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuthInEap;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    invoke-virtual {v2}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->getCurrentStateName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->logWtf(Ljava/lang/String;)V

    .line 4542
    const/4 v0, 0x0

    return v0

    .line 4533
    :pswitch_2b
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuthInEap;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    invoke-virtual {v0, p1}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->deferMessage(Landroid/os/Message;)V

    .line 4534
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuthInEap;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v0, v0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mCreateIkeLocalIkeAuthPostEap:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuthPostEap;

    iget-object v2, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuthInEap;->mSetupData:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$IkeInitData;

    check-cast v2, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$IkeAuthData;

    invoke-virtual {v0, v2}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuthPostEap;->setIkeSetupData(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$IkeInitData;)V

    .line 4535
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuthInEap;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v2, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuthInEap;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v2, v2, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mCreateIkeLocalIkeAuthPostEap:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuthPostEap;

    invoke-virtual {v0, v2}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->transitionTo(Lcom/android/internal/net/ipsec/ike/utils/IState;)V

    .line 4537
    return v1

    .line 4527
    :pswitch_45
    new-instance v0, Landroid/net/ipsec/ike/exceptions/AuthenticationFailedException;

    const-string v2, "EAP Authentication Failed"

    invoke-direct {v0, v2}, Landroid/net/ipsec/ike/exceptions/AuthenticationFailedException;-><init>(Ljava/lang/String;)V

    .line 4530
    .local v0, "exception":Landroid/net/ipsec/ike/exceptions/AuthenticationFailedException;
    iget-object v2, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuthInEap;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    invoke-static {v2, v0}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->-$$Nest$mhandleIkeFatalError(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;Ljava/lang/Exception;)V

    .line 4531
    return v1

    .line 4524
    .end local v0    # "exception":Landroid/net/ipsec/ike/exceptions/AuthenticationFailedException;
    :pswitch_52
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuthInEap;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    new-instance v2, Landroid/net/ipsec/ike/exceptions/AuthenticationFailedException;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Throwable;

    invoke-direct {v2, v3}, Landroid/net/ipsec/ike/exceptions/AuthenticationFailedException;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v0, v2}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->-$$Nest$mhandleIkeFatalError(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;Ljava/lang/Exception;)V

    .line 4525
    return v1

    .line 4507
    :pswitch_61
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$IkeEapOutboundMsgWrapper;

    .line 4508
    .local v0, "msgWrapper":Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$IkeEapOutboundMsgWrapper;
    new-instance v2, Lcom/android/internal/net/ipsec/ike/message/IkeEapPayload;

    invoke-virtual {v0}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$IkeEapOutboundMsgWrapper;->getEapMsg()[B

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/internal/net/ipsec/ike/message/IkeEapPayload;-><init>([B)V

    .line 4510
    .local v2, "eapPayload":Lcom/android/internal/net/ipsec/ike/message/IkeEapPayload;
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    .line 4511
    .local v3, "payloadList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/net/ipsec/ike/message/IkePayload;>;"
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4514
    iget-object v4, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuthInEap;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    invoke-static {v4}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->-$$Nest$fgetmIke3gppExtensionExchange(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;)Lcom/android/internal/net/ipsec/ike/ike3gpp/Ike3gppExtensionExchange;

    move-result-object v4

    .line 4516
    invoke-virtual {v0}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$IkeEapOutboundMsgWrapper;->isServerAuthenticated()Z

    move-result v5

    .line 4515
    invoke-virtual {v4, v5}, Lcom/android/internal/net/ipsec/ike/ike3gpp/Ike3gppExtensionExchange;->getRequestPayloadsInEap(Z)Ljava/util/List;

    move-result-object v4

    .line 4514
    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 4519
    new-instance v4, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$EncryptedRetransmitter;

    iget-object v5, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuthInEap;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    .line 4520
    invoke-virtual {p0, v3}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuthInEap;->buildIkeAuthReqMessage(Ljava/util/List;)Lcom/android/internal/net/ipsec/ike/message/IkeMessage;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$EncryptedRetransmitter;-><init>(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;Lcom/android/internal/net/ipsec/ike/message/IkeMessage;)V

    iput-object v4, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuthInEap;->mRetransmitter:Lcom/android/internal/net/ipsec/ike/utils/Retransmitter;

    .line 4522
    return v1

    .line 4502
    .end local v0    # "msgWrapper":Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$IkeEapOutboundMsgWrapper;
    .end local v2    # "eapPayload":Lcom/android/internal/net/ipsec/ike/message/IkeEapPayload;
    .end local v3    # "payloadList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/net/ipsec/ike/message/IkePayload;>;"
    :pswitch_95
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/net/ipsec/ike/message/IkeEapPayload;

    .line 4503
    .local v0, "ikeEapPayload":Lcom/android/internal/net/ipsec/ike/message/IkeEapPayload;
    iget-object v2, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuthInEap;->mEapAuthenticator:Lcom/android/internal/net/eap/EapAuthenticator;

    iget-object v3, v0, Lcom/android/internal/net/ipsec/ike/message/IkeEapPayload;->eapMessage:[B

    invoke-virtual {v2, v3}, Lcom/android/internal/net/eap/EapAuthenticator;->processEapMessage([B)V

    .line 4505
    return v1

    nop

    :pswitch_data_a2
    .packed-switch 0x135
        :pswitch_95
        :pswitch_61
        :pswitch_52
        :pswitch_45
        :pswitch_6
        :pswitch_2b
        :pswitch_6
        :pswitch_6
        :pswitch_b
    .end packed-switch
.end method

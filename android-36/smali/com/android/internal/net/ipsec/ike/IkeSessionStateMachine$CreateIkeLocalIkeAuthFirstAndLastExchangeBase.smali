.class abstract Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuthFirstAndLastExchangeBase;
.super Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuthBase;
.source "IkeSessionStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "CreateIkeLocalIkeAuthFirstAndLastExchangeBase"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$IkeInitData;",
        ">",
        "Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuthBase<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;


# direct methods
.method public static synthetic blacklist $r8$lambda$0lHrHSJHJULdPTF_NQBkWkHdbXo(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuthFirstAndLastExchangeBase;Landroid/net/ipsec/ike/IkeSessionConfiguration;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuthFirstAndLastExchangeBase;->lambda$notifyIkeSessionSetup$0(Landroid/net/ipsec/ike/IkeSessionConfiguration;)V

    return-void
.end method

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

    .line 3911
    .local p0, "this":Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuthFirstAndLastExchangeBase;, "Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuthFirstAndLastExchangeBase<TT;>;"
    iput-object p1, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuthFirstAndLastExchangeBase;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    invoke-direct {p0, p1}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuthBase;-><init>(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;)V

    return-void
.end method

.method private synthetic blacklist lambda$notifyIkeSessionSetup$0(Landroid/net/ipsec/ike/IkeSessionConfiguration;)V
    .registers 3
    .param p1, "ikeSessionConfig"    # Landroid/net/ipsec/ike/IkeSessionConfiguration;

    .line 3997
    .local p0, "this":Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuthFirstAndLastExchangeBase;, "Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuthFirstAndLastExchangeBase<TT;>;"
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuthFirstAndLastExchangeBase;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    invoke-static {v0}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->-$$Nest$fgetmIkeSessionCallback(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;)Landroid/net/ipsec/ike/IkeSessionCallback;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/net/ipsec/ike/IkeSessionCallback;->onOpened(Landroid/net/ipsec/ike/IkeSessionConfiguration;)V

    .line 3998
    return-void
.end method


# virtual methods
.method protected blacklist authenticatePsk([BLcom/android/internal/net/ipsec/ike/message/IkeAuthPayload;Lcom/android/internal/net/ipsec/ike/message/IkeIdPayload;)V
    .registers 13
    .param p1, "psk"    # [B
    .param p2, "authPayload"    # Lcom/android/internal/net/ipsec/ike/message/IkeAuthPayload;
    .param p3, "respIdPayload"    # Lcom/android/internal/net/ipsec/ike/message/IkeIdPayload;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/ipsec/ike/exceptions/AuthenticationFailedException;
        }
    .end annotation

    .line 3916
    .local p0, "this":Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuthFirstAndLastExchangeBase;, "Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuthFirstAndLastExchangeBase<TT;>;"
    iget v0, p2, Lcom/android/internal/net/ipsec/ike/message/IkeAuthPayload;->authMethod:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_27

    .line 3923
    move-object v2, p2

    check-cast v2, Lcom/android/internal/net/ipsec/ike/message/IkeAuthPskPayload;

    .line 3924
    .local v2, "pskPayload":Lcom/android/internal/net/ipsec/ike/message/IkeAuthPskPayload;
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuthFirstAndLastExchangeBase;->mSetupData:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$IkeInitData;

    iget-object v4, v0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$IkeInitData;->ikeInitResponseBytes:[B

    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuthFirstAndLastExchangeBase;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v0, v0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mCurrentIkeSaRecord:Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;

    iget-object v5, v0, Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;->nonceInitiator:[B

    .line 3928
    invoke-virtual {p3}, Lcom/android/internal/net/ipsec/ike/message/IkeIdPayload;->getEncodedPayloadBody()[B

    move-result-object v6

    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuthFirstAndLastExchangeBase;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v7, v0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mIkePrf:Lcom/android/internal/net/ipsec/ike/crypto/IkeMacPrf;

    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuthFirstAndLastExchangeBase;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v0, v0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mCurrentIkeSaRecord:Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;

    .line 3930
    invoke-virtual {v0}, Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;->getSkPr()[B

    move-result-object v8

    .line 3924
    move-object v3, p1

    .end local p1    # "psk":[B
    .local v3, "psk":[B
    invoke-virtual/range {v2 .. v8}, Lcom/android/internal/net/ipsec/ike/message/IkeAuthPskPayload;->verifyInboundSignature([B[B[B[BLcom/android/internal/net/ipsec/ike/crypto/IkeMacPrf;[B)V

    .line 3931
    return-void

    .line 3917
    .end local v2    # "pskPayload":Lcom/android/internal/net/ipsec/ike/message/IkeAuthPskPayload;
    .end local v3    # "psk":[B
    .restart local p1    # "psk":[B
    :cond_27
    move-object v3, p1

    .end local p1    # "psk":[B
    .restart local v3    # "psk":[B
    new-instance p1, Landroid/net/ipsec/ike/exceptions/AuthenticationFailedException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Expected the remote/server to use PSK-based authentication but they used: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p2, Lcom/android/internal/net/ipsec/ike/message/IkeAuthPayload;->authMethod:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/net/ipsec/ike/exceptions/AuthenticationFailedException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected blacklist buildIkeSessionConfiguration(Lcom/android/internal/net/ipsec/ike/message/IkeMessage;)Landroid/net/ipsec/ike/IkeSessionConfiguration;
    .registers 9
    .param p1, "ikeMessage"    # Lcom/android/internal/net/ipsec/ike/message/IkeMessage;

    .line 3975
    .local p0, "this":Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuthFirstAndLastExchangeBase;, "Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuthFirstAndLastExchangeBase<TT;>;"
    const-class v0, Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload;

    .line 3976
    const/16 v1, 0x2f

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/net/ipsec/ike/message/IkeMessage;->getPayloadForType(ILjava/lang/Class;)Lcom/android/internal/net/ipsec/ike/message/IkePayload;

    move-result-object v0

    check-cast v0, Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload;

    .line 3978
    .local v0, "configPayload":Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload;
    if-nez v0, :cond_14

    .line 3979
    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuthFirstAndLastExchangeBase;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    const-string v2, "No config payload in ikeMessage."

    invoke-virtual {v1, v2}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->logi(Ljava/lang/String;)V

    goto :goto_36

    .line 3980
    :cond_14
    iget v1, v0, Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload;->configType:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_36

    .line 3981
    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuthFirstAndLastExchangeBase;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected config payload. Config Type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload;->configType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->logi(Ljava/lang/String;)V

    .line 3982
    const/4 v0, 0x0

    move-object v3, v0

    goto :goto_37

    .line 3985
    :cond_36
    :goto_36
    move-object v3, v0

    .end local v0    # "configPayload":Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload;
    .local v3, "configPayload":Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload;
    :goto_37
    new-instance v1, Landroid/net/ipsec/ike/IkeSessionConfiguration;

    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuthFirstAndLastExchangeBase;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    invoke-static {v0}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->-$$Nest$fgetmIkeConnectionCtrl(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;)Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;

    move-result-object v0

    .line 3986
    invoke-virtual {v0}, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->buildIkeSessionConnectionInfo()Landroid/net/ipsec/ike/IkeSessionConnectionInfo;

    move-result-object v2

    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuthFirstAndLastExchangeBase;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v4, v0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mRemoteVendorIds:Ljava/util/List;

    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuthFirstAndLastExchangeBase;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v5, v0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mEnabledExtensions:Ljava/util/List;

    iget-object v6, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuthFirstAndLastExchangeBase;->mEapInfo:Landroid/net/eap/EapInfo;

    invoke-direct/range {v1 .. v6}, Landroid/net/ipsec/ike/IkeSessionConfiguration;-><init>(Landroid/net/ipsec/ike/IkeSessionConnectionInfo;Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload;Ljava/util/List;Ljava/util/List;Landroid/net/eap/EapInfo;)V

    .line 3985
    return-object v1
.end method

.method protected blacklist extractChildPayloadsFromMessage(Lcom/android/internal/net/ipsec/ike/message/IkeMessage;)Ljava/util/List;
    .registers 6
    .param p1, "ikeMessage"    # Lcom/android/internal/net/ipsec/ike/message/IkeMessage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/net/ipsec/ike/message/IkeMessage;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/internal/net/ipsec/ike/message/IkePayload;",
            ">;"
        }
    .end annotation

    .line 3934
    .local p0, "this":Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuthFirstAndLastExchangeBase;, "Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuthFirstAndLastExchangeBase<TT;>;"
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 3935
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/net/ipsec/ike/message/IkePayload;>;"
    iget-object v1, p1, Lcom/android/internal/net/ipsec/ike/message/IkeMessage;->ikePayloadList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/net/ipsec/ike/message/IkePayload;

    .line 3936
    .local v2, "payload":Lcom/android/internal/net/ipsec/ike/message/IkePayload;
    iget v3, v2, Lcom/android/internal/net/ipsec/ike/message/IkePayload;->payloadType:I

    sparse-switch v3, :sswitch_data_30

    goto :goto_2e

    .line 3944
    :sswitch_1d
    move-object v3, v2

    check-cast v3, Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;

    invoke-virtual {v3}, Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;->isNewChildSaNotify()Z

    move-result v3

    if-eqz v3, :cond_2e

    .line 3945
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2e

    .line 3941
    :sswitch_2a
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3942
    nop

    .line 3951
    .end local v2    # "payload":Lcom/android/internal/net/ipsec/ike/message/IkePayload;
    :cond_2e
    :goto_2e
    goto :goto_b

    .line 3954
    :cond_2f
    return-object v0

    :sswitch_data_30
    .sparse-switch
        0x21 -> :sswitch_2a
        0x29 -> :sswitch_1d
        0x2c -> :sswitch_2a
        0x2d -> :sswitch_2a
        0x2f -> :sswitch_2a
    .end sparse-switch
.end method

.method protected blacklist handleIkeAuthResponse(Lcom/android/internal/net/ipsec/ike/message/IkeMessage;Z)V
    .registers 8
    .param p1, "ikeMessage"    # Lcom/android/internal/net/ipsec/ike/message/IkeMessage;
    .param p2, "isServerExpectingMoreEap"    # Z

    .line 4048
    .local p0, "this":Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuthFirstAndLastExchangeBase;, "Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuthFirstAndLastExchangeBase<TT;>;"
    iget-object v0, p1, Lcom/android/internal/net/ipsec/ike/message/IkeMessage;->ikeHeader:Lcom/android/internal/net/ipsec/ike/message/IkeHeader;

    iget v0, v0, Lcom/android/internal/net/ipsec/ike/message/IkeHeader;->exchangeType:I

    .line 4049
    .local v0, "exchangeType":I
    const/16 v1, 0x23

    if-eq v0, v1, :cond_33

    .line 4050
    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuthFirstAndLastExchangeBase;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v2, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuthFirstAndLastExchangeBase;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v2, v2, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mCurrentIkeSaRecord:Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;

    invoke-virtual {p0, v2}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuthFirstAndLastExchangeBase;->buildIkeDeleteReq(Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;)Lcom/android/internal/net/ipsec/ike/message/IkeMessage;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->sendEncryptedIkeMessage(Lcom/android/internal/net/ipsec/ike/message/IkeMessage;)V

    .line 4051
    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuthFirstAndLastExchangeBase;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    new-instance v2, Landroid/net/ipsec/ike/exceptions/InvalidSyntaxException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Expected EXCHANGE_TYPE_IKE_AUTH but received: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/net/ipsec/ike/exceptions/InvalidSyntaxException;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->-$$Nest$mhandleIkeFatalError(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;Ljava/lang/Exception;)V

    .line 4054
    return-void

    .line 4057
    :cond_33
    invoke-virtual {p0, p1}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuthFirstAndLastExchangeBase;->validateAuthRespAndTakeNextStep(Lcom/android/internal/net/ipsec/ike/message/IkeMessage;)Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$MsgValidationResult;

    move-result-object v1

    .line 4059
    .local v1, "authRespResult":Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$MsgValidationResult;
    invoke-virtual {v1}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$MsgValidationResult;->getResult()I

    move-result v2

    if-eqz v2, :cond_5f

    .line 4060
    invoke-virtual {v1}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$MsgValidationResult;->getException()Landroid/net/ipsec/ike/exceptions/IkeException;

    move-result-object v2

    .line 4061
    .local v2, "e":Landroid/net/ipsec/ike/exceptions/IkeException;
    if-nez p2, :cond_56

    invoke-virtual {p0, v1}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuthFirstAndLastExchangeBase;->shouldSilentlyDelete(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$MsgValidationResult;)Z

    move-result v3

    if-nez v3, :cond_56

    .line 4063
    iget-object v3, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuthFirstAndLastExchangeBase;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v4, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuthFirstAndLastExchangeBase;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v4, v4, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mCurrentIkeSaRecord:Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;

    invoke-virtual {p0, v4}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuthFirstAndLastExchangeBase;->buildIkeDeleteReq(Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;)Lcom/android/internal/net/ipsec/ike/message/IkeMessage;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->sendEncryptedIkeMessage(Lcom/android/internal/net/ipsec/ike/message/IkeMessage;)V

    .line 4065
    :cond_56
    iget-object v3, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuthFirstAndLastExchangeBase;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    invoke-virtual {v1}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$MsgValidationResult;->getException()Landroid/net/ipsec/ike/exceptions/IkeException;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->-$$Nest$mhandleIkeFatalError(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;Ljava/lang/Exception;)V

    .line 4067
    .end local v2    # "e":Landroid/net/ipsec/ike/exceptions/IkeException;
    :cond_5f
    return-void
.end method

.method protected blacklist handleNotifyInLastAuthResp(Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;Lcom/android/internal/net/ipsec/ike/message/IkeAuthPayload;)Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$MsgValidationResult;
    .registers 6
    .param p1, "notifyPayload"    # Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;
    .param p2, "authPayload"    # Lcom/android/internal/net/ipsec/ike/message/IkeAuthPayload;

    .line 4003
    .local p0, "this":Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuthFirstAndLastExchangeBase;, "Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuthFirstAndLastExchangeBase<TT;>;"
    invoke-virtual {p1}, Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;->isErrorNotify()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 4004
    invoke-virtual {p1}, Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;->isNewChildSaNotify()Z

    move-result v0

    if-eqz v0, :cond_13

    if-eqz p2, :cond_13

    .line 4008
    invoke-static {}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$MsgValidationResult;->newResultOk()Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$MsgValidationResult;

    move-result-object v0

    return-object v0

    .line 4011
    :cond_13
    nop

    .line 4012
    :try_start_14
    invoke-virtual {p1}, Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;->validateAndBuildIkeException()Landroid/net/ipsec/ike/exceptions/IkeProtocolException;

    move-result-object v0

    .line 4011
    invoke-static {v0}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$MsgValidationResult;->newResultRcvErrorNotify(Landroid/net/ipsec/ike/exceptions/IkeProtocolException;)Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$MsgValidationResult;

    move-result-object v0
    :try_end_1c
    .catch Landroid/net/ipsec/ike/exceptions/InvalidSyntaxException; {:try_start_14 .. :try_end_1c} :catch_1d

    return-object v0

    .line 4013
    :catch_1d
    move-exception v0

    .line 4014
    .local v0, "e":Landroid/net/ipsec/ike/exceptions/InvalidSyntaxException;
    invoke-static {v0}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$MsgValidationResult;->newResultInvalidMsg(Landroid/net/ipsec/ike/exceptions/IkeException;)Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$MsgValidationResult;

    move-result-object v1

    return-object v1

    .line 4017
    .end local v0    # "e":Landroid/net/ipsec/ike/exceptions/InvalidSyntaxException;
    :cond_23
    invoke-virtual {p1}, Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;->isNewChildSaNotify()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 4020
    invoke-static {}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$MsgValidationResult;->newResultOk()Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$MsgValidationResult;

    move-result-object v0

    return-object v0

    .line 4021
    :cond_2e
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuthFirstAndLastExchangeBase;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v0, v0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mIkeSessionParams:Landroid/net/ipsec/ike/IkeSessionParams;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/net/ipsec/ike/IkeSessionParams;->hasIkeOption(I)Z

    move-result v0

    if-eqz v0, :cond_56

    iget v0, p1, Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;->notifyType:I

    const/16 v2, 0x400c

    if-ne v0, v2, :cond_56

    .line 4023
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuthFirstAndLastExchangeBase;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    const-string v2, "Both client and server support MOBIKE"

    invoke-virtual {v0, v2}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->logd(Ljava/lang/String;)V

    .line 4024
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuthFirstAndLastExchangeBase;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v0, v0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mEnabledExtensions:Ljava/util/List;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4026
    invoke-static {}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$MsgValidationResult;->newResultOk()Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$MsgValidationResult;

    move-result-object v0

    return-object v0

    .line 4030
    :cond_56
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuthFirstAndLastExchangeBase;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received unknown or unexpected status notifications with notify type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;->notifyType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->logw(Ljava/lang/String;)V

    .line 4034
    invoke-static {}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$MsgValidationResult;->newResultOk()Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$MsgValidationResult;

    move-result-object v0

    return-object v0
.end method

.method protected blacklist maybeEnableMobility()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/ipsec/ike/exceptions/IkeException;
        }
    .end annotation

    .line 4087
    .local p0, "this":Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuthFirstAndLastExchangeBase;, "Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuthFirstAndLastExchangeBase<TT;>;"
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuthFirstAndLastExchangeBase;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v0, v0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mEnabledExtensions:Ljava/util/List;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 4088
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuthFirstAndLastExchangeBase;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    const-string v1, "Enabling RFC4555 MOBIKE mobility"

    invoke-virtual {v0, v1}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->logd(Ljava/lang/String;)V

    .line 4089
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuthFirstAndLastExchangeBase;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    invoke-static {v0}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->-$$Nest$fgetmIkeConnectionCtrl(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;)Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->enableMobility()V

    .line 4090
    return-void

    .line 4091
    :cond_20
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuthFirstAndLastExchangeBase;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v0, v0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mIkeSessionParams:Landroid/net/ipsec/ike/IkeSessionParams;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/net/ipsec/ike/IkeSessionParams;->hasIkeOption(I)Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 4092
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuthFirstAndLastExchangeBase;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    const-string v1, "Enabling Rekey based mobility: IKE Session will try updating Child SA addresses with Rekey"

    invoke-virtual {v0, v1}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->logd(Ljava/lang/String;)V

    .line 4095
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuthFirstAndLastExchangeBase;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    invoke-static {v0}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->-$$Nest$fgetmIkeConnectionCtrl(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;)Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->enableMobility()V

    .line 4096
    return-void

    .line 4098
    :cond_3c
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuthFirstAndLastExchangeBase;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    const-string v1, "Mobility not enabled: IKE Session will not be able to handle network or address changes"

    invoke-virtual {v0, v1}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->logd(Ljava/lang/String;)V

    .line 4102
    return-void
.end method

.method protected blacklist notifyIkeSessionSetup(Lcom/android/internal/net/ipsec/ike/message/IkeMessage;)V
    .registers 5
    .param p1, "msg"    # Lcom/android/internal/net/ipsec/ike/message/IkeMessage;

    .line 3994
    .local p0, "this":Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuthFirstAndLastExchangeBase;, "Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuthFirstAndLastExchangeBase<TT;>;"
    invoke-virtual {p0, p1}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuthFirstAndLastExchangeBase;->buildIkeSessionConfiguration(Lcom/android/internal/net/ipsec/ike/message/IkeMessage;)Landroid/net/ipsec/ike/IkeSessionConfiguration;

    move-result-object v0

    .line 3995
    .local v0, "ikeSessionConfig":Landroid/net/ipsec/ike/IkeSessionConfiguration;
    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuthFirstAndLastExchangeBase;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    new-instance v2, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuthFirstAndLastExchangeBase$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v0}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuthFirstAndLastExchangeBase$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuthFirstAndLastExchangeBase;Landroid/net/ipsec/ike/IkeSessionConfiguration;)V

    invoke-virtual {v1, v2}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->executeUserCallback(Ljava/lang/Runnable;)V

    .line 3999
    return-void
.end method

.method protected blacklist performFirstChildNegotiation(Ljava/util/List;Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/net/ipsec/ike/message/IkePayload;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/internal/net/ipsec/ike/message/IkePayload;",
            ">;)V"
        }
    .end annotation

    .line 3959
    .local p0, "this":Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuthFirstAndLastExchangeBase;, "Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuthFirstAndLastExchangeBase<TT;>;"
    .local p1, "childReqList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/net/ipsec/ike/message/IkePayload;>;"
    .local p2, "childRespList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/net/ipsec/ike/message/IkePayload;>;"
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuthFirstAndLastExchangeBase;->mSetupData:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$IkeInitData;

    iget-object v0, v0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$IkeInitData;->ikeInitNoncePayload:Lcom/android/internal/net/ipsec/ike/message/IkeNoncePayload;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3960
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuthFirstAndLastExchangeBase;->mSetupData:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$IkeInitData;

    iget-object v0, v0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$IkeInitData;->ikeRespNoncePayload:Lcom/android/internal/net/ipsec/ike/message/IkeNoncePayload;

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3962
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuthFirstAndLastExchangeBase;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuthFirstAndLastExchangeBase;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    new-instance v2, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$FirstChildNegotiationData;

    iget-object v3, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuthFirstAndLastExchangeBase;->mSetupData:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$IkeInitData;

    iget-object v3, v3, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$IkeInitData;->firstChildSessionParams:Landroid/net/ipsec/ike/ChildSessionParams;

    iget-object v4, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuthFirstAndLastExchangeBase;->mSetupData:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$IkeInitData;

    iget-object v4, v4, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$IkeInitData;->firstChildCallback:Landroid/net/ipsec/ike/ChildSessionCallback;

    invoke-direct {v2, v3, v4, p1, p2}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$FirstChildNegotiationData;-><init>(Landroid/net/ipsec/ike/ChildSessionParams;Landroid/net/ipsec/ike/ChildSessionCallback;Ljava/util/List;Ljava/util/List;)V

    .line 3963
    const/16 v3, 0x132

    invoke-virtual {v1, v3, v2}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 3962
    invoke-virtual {v0, v1}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->deferMessage(Landroid/os/Message;)V

    .line 3971
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuthFirstAndLastExchangeBase;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuthFirstAndLastExchangeBase;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v1, v1, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mChildProcedureOngoing:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$ChildProcedureOngoing;

    invoke-virtual {v0, v1}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->transitionTo(Lcom/android/internal/net/ipsec/ike/utils/IState;)V

    .line 3972
    return-void
.end method

.method protected blacklist shouldSilentlyDelete(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$MsgValidationResult;)Z
    .registers 5
    .param p1, "authRespResult"    # Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$MsgValidationResult;

    .line 4076
    .local p0, "this":Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuthFirstAndLastExchangeBase;, "Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuthFirstAndLastExchangeBase<TT;>;"
    invoke-virtual {p1}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$MsgValidationResult;->getResult()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eq v0, v1, :cond_9

    .line 4077
    return v2

    .line 4080
    :cond_9
    invoke-virtual {p1}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$MsgValidationResult;->getException()Landroid/net/ipsec/ike/exceptions/IkeException;

    move-result-object v0

    .line 4081
    .local v0, "e":Landroid/net/ipsec/ike/exceptions/IkeException;
    instance-of v1, v0, Landroid/net/ipsec/ike/exceptions/InvalidSyntaxException;

    if-nez v1, :cond_19

    instance-of v1, v0, Landroid/net/ipsec/ike/exceptions/AuthenticationFailedException;

    if-nez v1, :cond_19

    instance-of v1, v0, Landroid/net/ipsec/ike/exceptions/UnsupportedCriticalPayloadException;

    if-eqz v1, :cond_1a

    :cond_19
    const/4 v2, 0x1

    :cond_1a
    return v2
.end method

.method protected abstract blacklist validateAuthRespAndTakeNextStep(Lcom/android/internal/net/ipsec/ike/message/IkeMessage;)Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$MsgValidationResult;
.end method

.class abstract Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$CreateChildLocalCreateBase;
.super Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$ExceptionHandler;
.source "ChildSessionStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "CreateChildLocalCreateBase"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;


# direct methods
.method public static synthetic blacklist $r8$lambda$Jyz4rSk698ZOZWzbHINWH3PVBSM(Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$CreateChildLocalCreateBase;Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$OnIpSecSaPairCreatedRunnable;Landroid/net/ipsec/ike/ChildSessionConfiguration;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$CreateChildLocalCreateBase;->lambda$validateAndBuildChild$0(Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$OnIpSecSaPairCreatedRunnable;Landroid/net/ipsec/ike/ChildSessionConfiguration;)V

    return-void
.end method

.method private constructor blacklist <init>(Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 840
    iput-object p1, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$CreateChildLocalCreateBase;->this$0:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;

    invoke-direct {p0, p1}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$ExceptionHandler;-><init>(Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;)V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$CreateChildLocalCreateBase;-><init>(Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;)V

    return-void
.end method

.method private blacklist buildChildSessionConfigFromResp(Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$CreateChildResult;Ljava/util/List;)Landroid/net/ipsec/ike/ChildSessionConfiguration;
    .registers 7
    .param p1, "createChildResult"    # Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$CreateChildResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$CreateChildResult;",
            "Ljava/util/List<",
            "Lcom/android/internal/net/ipsec/ike/message/IkePayload;",
            ">;)",
            "Landroid/net/ipsec/ike/ChildSessionConfiguration;"
        }
    .end annotation

    .line 970
    .local p2, "respPayloads":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/net/ipsec/ike/message/IkePayload;>;"
    const-class v0, Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload;

    .line 971
    const/16 v1, 0x2f

    invoke-static {v1, v0, p2}, Lcom/android/internal/net/ipsec/ike/message/IkePayload;->getPayloadForTypeInProvidedList(ILjava/lang/Class;Ljava/util/List;)Lcom/android/internal/net/ipsec/ike/message/IkePayload;

    move-result-object v0

    check-cast v0, Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload;

    .line 974
    .local v0, "configPayload":Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload;
    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$CreateChildLocalCreateBase;->this$0:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;

    iget-object v1, v1, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->mChildSessionParams:Landroid/net/ipsec/ike/ChildSessionParams;

    invoke-virtual {v1}, Landroid/net/ipsec/ike/ChildSessionParams;->isTransportMode()Z

    move-result v1

    if-nez v1, :cond_2e

    if-eqz v0, :cond_2e

    iget v1, v0, Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload;->configType:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1c

    goto :goto_2e

    .line 985
    :cond_1c
    new-instance v1, Landroid/net/ipsec/ike/ChildSessionConfiguration;

    iget-object v2, p1, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$CreateChildResult;->initTs:[Landroid/net/ipsec/ike/IkeTrafficSelector;

    .line 986
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p1, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$CreateChildResult;->respTs:[Landroid/net/ipsec/ike/IkeTrafficSelector;

    .line 987
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Landroid/net/ipsec/ike/ChildSessionConfiguration;-><init>(Ljava/util/List;Ljava/util/List;Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload;)V

    .line 985
    return-object v1

    .line 977
    :cond_2e
    :goto_2e
    if-eqz v0, :cond_4a

    .line 978
    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$CreateChildLocalCreateBase;->this$0:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;

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

    invoke-virtual {v1, v2}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->logw(Ljava/lang/String;)V

    .line 981
    :cond_4a
    new-instance v1, Landroid/net/ipsec/ike/ChildSessionConfiguration;

    iget-object v2, p1, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$CreateChildResult;->initTs:[Landroid/net/ipsec/ike/IkeTrafficSelector;

    .line 982
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p1, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$CreateChildResult;->respTs:[Landroid/net/ipsec/ike/IkeTrafficSelector;

    .line 983
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/net/ipsec/ike/ChildSessionConfiguration;-><init>(Ljava/util/List;Ljava/util/List;)V

    .line 981
    return-object v1
.end method

.method private blacklist handleCreationFailAndQuit(ILandroid/net/ipsec/ike/exceptions/IkeException;)V
    .registers 4
    .param p1, "registeredSpi"    # I
    .param p2, "exception"    # Landroid/net/ipsec/ike/exceptions/IkeException;

    .line 993
    if-eqz p1, :cond_b

    .line 994
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$CreateChildLocalCreateBase;->this$0:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;

    invoke-static {v0}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->-$$Nest$fgetmChildSmCallback(Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;)Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$IChildSessionSmCallback;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$IChildSessionSmCallback;->onChildSaDeleted(I)V

    .line 996
    :cond_b
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$CreateChildLocalCreateBase;->this$0:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;

    invoke-static {v0, p2}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->-$$Nest$mhandleChildFatalError(Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;Ljava/lang/Exception;)V

    .line 997
    return-void
.end method

.method private synthetic blacklist lambda$validateAndBuildChild$0(Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$OnIpSecSaPairCreatedRunnable;Landroid/net/ipsec/ike/ChildSessionConfiguration;)V
    .registers 4
    .param p1, "createRunnable"    # Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$OnIpSecSaPairCreatedRunnable;
    .param p2, "sessionConfig"    # Landroid/net/ipsec/ike/ChildSessionConfiguration;

    .line 897
    invoke-virtual {p1}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$OnIpSecSaPairCreatedRunnable;->run()V

    .line 898
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$CreateChildLocalCreateBase;->this$0:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;

    invoke-static {v0}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->-$$Nest$fgetmUserCallback(Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;)Landroid/net/ipsec/ike/ChildSessionCallback;

    move-result-object v0

    invoke-interface {v0, p2}, Landroid/net/ipsec/ike/ChildSessionCallback;->onOpened(Landroid/net/ipsec/ike/ChildSessionConfiguration;)V

    .line 899
    return-void
.end method

.method private blacklist setUpNegotiatedResult(Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$CreateChildResult;)V
    .registers 5
    .param p1, "createChildResult"    # Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$CreateChildResult;

    .line 956
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$CreateChildLocalCreateBase;->this$0:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;

    iget-object v1, p1, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$CreateChildResult;->negotiatedProposal:Landroid/net/ipsec/ike/ChildSaProposal;

    iput-object v1, v0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->mSaProposal:Landroid/net/ipsec/ike/ChildSaProposal;

    .line 957
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$CreateChildLocalCreateBase;->this$0:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;

    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$CreateChildLocalCreateBase;->this$0:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;

    iget-object v1, v1, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->mSaProposal:Landroid/net/ipsec/ike/ChildSaProposal;

    invoke-virtual {v1}, Landroid/net/ipsec/ike/ChildSaProposal;->getEncryptionTransforms()[Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$EncryptionTransform;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-static {v1}, Lcom/android/internal/net/ipsec/ike/crypto/IkeCipher;->create(Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$EncryptionTransform;)Lcom/android/internal/net/ipsec/ike/crypto/IkeCipher;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->mChildCipher:Lcom/android/internal/net/ipsec/ike/crypto/IkeCipher;

    .line 958
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$CreateChildLocalCreateBase;->this$0:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;

    iget-object v0, v0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->mSaProposal:Landroid/net/ipsec/ike/ChildSaProposal;

    invoke-virtual {v0}, Landroid/net/ipsec/ike/ChildSaProposal;->getIntegrityTransforms()[Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$IntegrityTransform;

    move-result-object v0

    array-length v0, v0

    if-eqz v0, :cond_44

    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$CreateChildLocalCreateBase;->this$0:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;

    iget-object v0, v0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->mSaProposal:Landroid/net/ipsec/ike/ChildSaProposal;

    .line 959
    invoke-virtual {v0}, Landroid/net/ipsec/ike/ChildSaProposal;->getIntegrityTransforms()[Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$IntegrityTransform;

    move-result-object v0

    aget-object v0, v0, v2

    iget v0, v0, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$IntegrityTransform;->id:I

    if-eqz v0, :cond_44

    .line 961
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$CreateChildLocalCreateBase;->this$0:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;

    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$CreateChildLocalCreateBase;->this$0:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;

    iget-object v1, v1, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->mSaProposal:Landroid/net/ipsec/ike/ChildSaProposal;

    invoke-virtual {v1}, Landroid/net/ipsec/ike/ChildSaProposal;->getIntegrityTransforms()[Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$IntegrityTransform;

    move-result-object v1

    aget-object v1, v1, v2

    invoke-static {v1}, Lcom/android/internal/net/ipsec/ike/crypto/IkeMacIntegrity;->create(Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$IntegrityTransform;)Lcom/android/internal/net/ipsec/ike/crypto/IkeMacIntegrity;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->mChildIntegrity:Lcom/android/internal/net/ipsec/ike/crypto/IkeMacIntegrity;

    .line 964
    :cond_44
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$CreateChildLocalCreateBase;->this$0:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;

    iget-object v1, p1, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$CreateChildResult;->initTs:[Landroid/net/ipsec/ike/IkeTrafficSelector;

    iput-object v1, v0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->mLocalTs:[Landroid/net/ipsec/ike/IkeTrafficSelector;

    .line 965
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$CreateChildLocalCreateBase;->this$0:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;

    iget-object v1, p1, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$CreateChildResult;->respTs:[Landroid/net/ipsec/ike/IkeTrafficSelector;

    iput-object v1, v0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->mRemoteTs:[Landroid/net/ipsec/ike/IkeTrafficSelector;

    .line 966
    return-void
.end method


# virtual methods
.method protected blacklist validateAndBuildChild(Ljava/util/List;Ljava/util/List;III)V
    .registers 14
    .param p3, "exchangeType"    # I
    .param p4, "expectedExchangeType"    # I
    .param p5, "registeredSpi"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/net/ipsec/ike/message/IkePayload;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/internal/net/ipsec/ike/message/IkePayload;",
            ">;III)V"
        }
    .end annotation

    .line 847
    .local p1, "reqPayloads":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/net/ipsec/ike/message/IkePayload;>;"
    .local p2, "respPayloads":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/net/ipsec/ike/message/IkePayload;>;"
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$CreateChildLocalCreateBase;->this$0:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;

    iget-object v0, v0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->mChildSessionParams:Landroid/net/ipsec/ike/ChildSessionParams;

    .line 856
    invoke-virtual {v0}, Landroid/net/ipsec/ike/ChildSessionParams;->isTransportMode()Z

    move-result v5

    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$CreateChildLocalCreateBase;->this$0:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;

    invoke-static {v0}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->-$$Nest$fgetmIpSecSpiGenerator(Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;)Lcom/android/internal/net/ipsec/ike/utils/IpSecSpiGenerator;

    move-result-object v6

    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$CreateChildLocalCreateBase;->this$0:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;

    iget-object v7, v0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->mRemoteAddress:Ljava/net/InetAddress;

    .line 851
    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    .end local p1    # "reqPayloads":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/net/ipsec/ike/message/IkePayload;>;"
    .end local p2    # "respPayloads":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/net/ipsec/ike/message/IkePayload;>;"
    .end local p3    # "exchangeType":I
    .end local p4    # "expectedExchangeType":I
    .local v1, "reqPayloads":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/net/ipsec/ike/message/IkePayload;>;"
    .local v2, "respPayloads":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/net/ipsec/ike/message/IkePayload;>;"
    .local v3, "exchangeType":I
    .local v4, "expectedExchangeType":I
    invoke-static/range {v1 .. v7}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$CreateChildSaHelper;->validateAndNegotiateInitChild(Ljava/util/List;Ljava/util/List;IIZLcom/android/internal/net/ipsec/ike/utils/IpSecSpiGenerator;Ljava/net/InetAddress;)Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$CreateChildResult;

    move-result-object p1

    .line 847
    invoke-virtual {p0, v1, v2, p5, p1}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$CreateChildLocalCreateBase;->validateAndBuildChild(Ljava/util/List;Ljava/util/List;ILcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$CreateChildResult;)V

    .line 859
    return-void
.end method

.method protected blacklist validateAndBuildChild(Ljava/util/List;Ljava/util/List;ILcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$CreateChildResult;)V
    .registers 26
    .param p3, "registeredSpi"    # I
    .param p4, "createChildResult"    # Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$CreateChildResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/net/ipsec/ike/message/IkePayload;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/internal/net/ipsec/ike/message/IkePayload;",
            ">;I",
            "Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$CreateChildResult;",
            ")V"
        }
    .end annotation

    .line 866
    .local p1, "reqPayloads":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/net/ipsec/ike/message/IkePayload;>;"
    .local p2, "respPayloads":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/net/ipsec/ike/message/IkePayload;>;"
    move-object/from16 v1, p0

    move/from16 v2, p3

    move-object/from16 v3, p4

    iget v0, v3, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$CreateChildResult;->status:I

    packed-switch v0, :pswitch_data_146

    .line 941
    move-object/from16 v7, p2

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unrecognized status: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v3, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$CreateChildResult;->status:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$CreateChildLocalCreateBase;->cleanUpAndQuit(Ljava/lang/RuntimeException;)V

    goto/16 :goto_145

    .line 938
    :pswitch_2c
    iget-object v0, v3, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$CreateChildResult;->exception:Landroid/net/ipsec/ike/exceptions/IkeException;

    invoke-direct {v1, v2, v0}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$CreateChildLocalCreateBase;->handleCreationFailAndQuit(ILandroid/net/ipsec/ike/exceptions/IkeException;)V

    .line 939
    move-object/from16 v7, p2

    goto/16 :goto_145

    .line 935
    :pswitch_35
    iget-object v0, v3, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$CreateChildResult;->exception:Landroid/net/ipsec/ike/exceptions/IkeException;

    invoke-direct {v1, v2, v0}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$CreateChildLocalCreateBase;->handleCreationFailAndQuit(ILandroid/net/ipsec/ike/exceptions/IkeException;)V

    .line 936
    move-object/from16 v7, p2

    goto/16 :goto_145

    .line 869
    :pswitch_3e
    :try_start_3e
    invoke-direct {v1, v3}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$CreateChildLocalCreateBase;->setUpNegotiatedResult(Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$CreateChildResult;)V

    .line 871
    iget-object v0, v1, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$CreateChildLocalCreateBase;->this$0:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;

    iget-object v4, v1, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$CreateChildLocalCreateBase;->this$0:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;

    iget-object v4, v4, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->mIkeContext:Lcom/android/internal/net/ipsec/ike/IkeContext;

    .line 873
    invoke-virtual {v4}, Lcom/android/internal/net/ipsec/ike/IkeContext;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v8, v3, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$CreateChildResult;->initSpi:Landroid/net/IpSecManager$SecurityParameterIndex;

    iget-object v9, v3, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$CreateChildResult;->respSpi:Landroid/net/IpSecManager$SecurityParameterIndex;

    iget-object v4, v1, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$CreateChildLocalCreateBase;->this$0:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;

    iget-object v10, v4, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->mLocalAddress:Ljava/net/InetAddress;

    iget-object v4, v1, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$CreateChildLocalCreateBase;->this$0:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;

    iget-object v11, v4, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->mRemoteAddress:Ljava/net/InetAddress;

    iget-object v4, v1, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$CreateChildLocalCreateBase;->this$0:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;

    iget-object v12, v4, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->mUdpEncapSocket:Landroid/net/IpSecManager$UdpEncapsulationSocket;

    iget-object v4, v1, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$CreateChildLocalCreateBase;->this$0:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;

    iget-object v13, v4, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->mIkePrf:Lcom/android/internal/net/ipsec/ike/crypto/IkeMacPrf;

    iget-object v4, v1, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$CreateChildLocalCreateBase;->this$0:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;

    iget-object v14, v4, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->mChildIntegrity:Lcom/android/internal/net/ipsec/ike/crypto/IkeMacIntegrity;

    iget-object v4, v1, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$CreateChildLocalCreateBase;->this$0:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;

    iget-object v15, v4, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->mChildCipher:Lcom/android/internal/net/ipsec/ike/crypto/IkeCipher;

    iget-object v4, v1, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$CreateChildLocalCreateBase;->this$0:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;

    iget-object v4, v4, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->mSkD:[B

    iget-object v6, v1, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$CreateChildLocalCreateBase;->this$0:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;

    iget-object v6, v6, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->mChildSessionParams:Landroid/net/ipsec/ike/ChildSessionParams;

    .line 885
    invoke-virtual {v6}, Landroid/net/ipsec/ike/ChildSessionParams;->isTransportMode()Z

    move-result v17

    iget-object v6, v1, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$CreateChildLocalCreateBase;->this$0:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;

    iget-object v7, v3, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$CreateChildResult;->respSpi:Landroid/net/IpSecManager$SecurityParameterIndex;

    .line 888
    invoke-virtual {v7}, Landroid/net/IpSecManager$SecurityParameterIndex;->getSpi()I

    move-result v7

    .line 887
    invoke-static {v6, v7}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->-$$Nest$mbuildSaLifetimeAlarmSched(Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;I)Lcom/android/internal/net/ipsec/ike/SaRecord$SaLifetimeAlarmScheduler;

    move-result-object v19
    :try_end_7f
    .catch Ljava/security/GeneralSecurityException; {:try_start_3e .. :try_end_7f} :catch_116
    .catch Landroid/net/IpSecManager$ResourceUnavailableException; {:try_start_3e .. :try_end_7f} :catch_116
    .catch Landroid/net/IpSecManager$SpiUnavailableException; {:try_start_3e .. :try_end_7f} :catch_116
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_7f} :catch_116
    .catchall {:try_start_3e .. :try_end_7f} :catchall_112

    .line 872
    const/16 v18, 0x1

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move-object/from16 v16, v4

    :try_start_87
    invoke-static/range {v5 .. v19}, Lcom/android/internal/net/ipsec/ike/SaRecord$ChildSaRecord;->makeChildSaRecord(Landroid/content/Context;Ljava/util/List;Ljava/util/List;Landroid/net/IpSecManager$SecurityParameterIndex;Landroid/net/IpSecManager$SecurityParameterIndex;Ljava/net/InetAddress;Ljava/net/InetAddress;Landroid/net/IpSecManager$UdpEncapsulationSocket;Lcom/android/internal/net/ipsec/ike/crypto/IkeMacPrf;Lcom/android/internal/net/ipsec/ike/crypto/IkeMacIntegrity;Lcom/android/internal/net/ipsec/ike/crypto/IkeCipher;[BZZLcom/android/internal/net/ipsec/ike/SaRecord$SaLifetimeAlarmScheduler;)Lcom/android/internal/net/ipsec/ike/SaRecord$ChildSaRecord;

    move-result-object v4
    :try_end_8b
    .catch Ljava/security/GeneralSecurityException; {:try_start_87 .. :try_end_8b} :catch_110
    .catch Landroid/net/IpSecManager$ResourceUnavailableException; {:try_start_87 .. :try_end_8b} :catch_110
    .catch Landroid/net/IpSecManager$SpiUnavailableException; {:try_start_87 .. :try_end_8b} :catch_110
    .catch Ljava/io/IOException; {:try_start_87 .. :try_end_8b} :catch_110
    .catchall {:try_start_87 .. :try_end_8b} :catchall_139

    :try_start_8b
    iput-object v4, v0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->mCurrentChildSaRecord:Lcom/android/internal/net/ipsec/ike/SaRecord$ChildSaRecord;
    :try_end_8d
    .catch Ljava/security/GeneralSecurityException; {:try_start_8b .. :try_end_8d} :catch_116
    .catch Landroid/net/IpSecManager$ResourceUnavailableException; {:try_start_8b .. :try_end_8d} :catch_116
    .catch Landroid/net/IpSecManager$SpiUnavailableException; {:try_start_8b .. :try_end_8d} :catch_116
    .catch Ljava/io/IOException; {:try_start_8b .. :try_end_8d} :catch_116
    .catchall {:try_start_8b .. :try_end_8d} :catchall_112

    .line 890
    nop

    .line 891
    move-object/from16 v7, p2

    :try_start_90
    invoke-direct {v1, v3, v7}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$CreateChildLocalCreateBase;->buildChildSessionConfigFromResp(Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$CreateChildResult;Ljava/util/List;)Landroid/net/ipsec/ike/ChildSessionConfiguration;

    move-result-object v0

    .line 893
    .local v0, "sessionConfig":Landroid/net/ipsec/ike/ChildSessionConfiguration;
    new-instance v4, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$OnIpSecSaPairCreatedRunnable;

    iget-object v5, v1, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$CreateChildLocalCreateBase;->this$0:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;

    iget-object v6, v1, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$CreateChildLocalCreateBase;->this$0:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;

    iget-object v6, v6, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->mCurrentChildSaRecord:Lcom/android/internal/net/ipsec/ike/SaRecord$ChildSaRecord;

    invoke-direct {v4, v5, v6}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$OnIpSecSaPairCreatedRunnable;-><init>(Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;Lcom/android/internal/net/ipsec/ike/SaRecord$ChildSaRecord;)V

    .line 895
    .local v4, "createRunnable":Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$OnIpSecSaPairCreatedRunnable;
    iget-object v5, v1, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$CreateChildLocalCreateBase;->this$0:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;

    new-instance v6, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$CreateChildLocalCreateBase$$ExternalSyntheticLambda0;

    invoke-direct {v6, v1, v4, v0}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$CreateChildLocalCreateBase$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$CreateChildLocalCreateBase;Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$OnIpSecSaPairCreatedRunnable;Landroid/net/ipsec/ike/ChildSessionConfiguration;)V

    invoke-virtual {v5, v6}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->executeUserCallback(Ljava/lang/Runnable;)V

    .line 901
    iget-object v5, v1, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$CreateChildLocalCreateBase;->this$0:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;

    iget-object v5, v5, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->mSaProposal:Landroid/net/ipsec/ike/ChildSaProposal;

    invoke-virtual {v5}, Landroid/net/ipsec/ike/ChildSaProposal;->getIntegrityAlgorithms()Ljava/util/List;

    move-result-object v5

    .line 902
    .local v5, "integrityAlgorithms":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v6, v1, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$CreateChildLocalCreateBase;->this$0:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;

    iget-object v6, v6, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->mSaProposal:Landroid/net/ipsec/ike/ChildSaProposal;

    invoke-virtual {v6}, Landroid/net/ipsec/ike/ChildSaProposal;->getDhGroups()Ljava/util/List;

    move-result-object v6

    .line 904
    .local v6, "dhGroups":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v8, v1, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$CreateChildLocalCreateBase;->this$0:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;

    .line 905
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v9

    const/4 v10, 0x0

    if-eqz v9, :cond_c4

    .line 906
    move v9, v10

    goto :goto_ce

    .line 907
    :cond_c4
    invoke-interface {v6, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    :goto_ce
    iget-object v11, v1, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$CreateChildLocalCreateBase;->this$0:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;

    iget-object v11, v11, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->mSaProposal:Landroid/net/ipsec/ike/ChildSaProposal;

    .line 908
    invoke-virtual {v11}, Landroid/net/ipsec/ike/ChildSaProposal;->getEncryptionTransforms()[Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$EncryptionTransform;

    move-result-object v11

    aget-object v11, v11, v10

    iget v11, v11, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$EncryptionTransform;->id:I

    iget-object v12, v1, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$CreateChildLocalCreateBase;->this$0:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;

    iget-object v12, v12, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->mSaProposal:Landroid/net/ipsec/ike/ChildSaProposal;

    .line 909
    invoke-virtual {v12}, Landroid/net/ipsec/ike/ChildSaProposal;->getEncryptionTransforms()[Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$EncryptionTransform;

    move-result-object v12

    aget-object v12, v12, v10

    invoke-virtual {v12}, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$EncryptionTransform;->getSpecifiedKeyLength()I

    move-result v12

    .line 910
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_f0

    .line 911
    const/4 v10, 0x1

    goto :goto_fa

    .line 912
    :cond_f0
    invoke-interface {v5, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    :goto_fa
    nop

    .line 904
    const/4 v13, 0x0

    const/4 v14, 0x0

    move/from16 v20, v12

    move v12, v10

    move v10, v11

    move/from16 v11, v20

    invoke-virtual/range {v8 .. v14}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->recordMetricsEvent_SaNegotiation(IIIIILandroid/net/ipsec/ike/exceptions/IkeException;)V

    .line 916
    iget-object v8, v1, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$CreateChildLocalCreateBase;->this$0:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;

    iget-object v9, v1, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$CreateChildLocalCreateBase;->this$0:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;

    iget-object v9, v9, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->mIdle:Lcom/android/internal/net/ipsec/ike/utils/State;

    invoke-virtual {v8, v9}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->transitionTo(Lcom/android/internal/net/ipsec/ike/utils/IState;)V
    :try_end_10f
    .catch Ljava/security/GeneralSecurityException; {:try_start_90 .. :try_end_10f} :catch_110
    .catch Landroid/net/IpSecManager$ResourceUnavailableException; {:try_start_90 .. :try_end_10f} :catch_110
    .catch Landroid/net/IpSecManager$SpiUnavailableException; {:try_start_90 .. :try_end_10f} :catch_110
    .catch Ljava/io/IOException; {:try_start_90 .. :try_end_10f} :catch_110
    .catchall {:try_start_90 .. :try_end_10f} :catchall_139

    .end local v0    # "sessionConfig":Landroid/net/ipsec/ike/ChildSessionConfiguration;
    .end local v4    # "createRunnable":Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$OnIpSecSaPairCreatedRunnable;
    .end local v5    # "integrityAlgorithms":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v6    # "dhGroups":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    goto :goto_12d

    .line 917
    :catch_110
    move-exception v0

    goto :goto_119

    .line 929
    :catchall_112
    move-exception v0

    move-object/from16 v7, p2

    goto :goto_13a

    .line 917
    :catch_116
    move-exception v0

    move-object/from16 v7, p2

    .line 924
    .local v0, "e":Ljava/lang/Exception;
    :goto_119
    :try_start_119
    iget-object v4, v1, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$CreateChildLocalCreateBase;->this$0:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;

    invoke-static {v4}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->-$$Nest$fgetmChildSmCallback(Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;)Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$IChildSessionSmCallback;

    move-result-object v4

    iget-object v5, v3, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$CreateChildResult;->respSpi:Landroid/net/IpSecManager$SecurityParameterIndex;

    invoke-virtual {v5}, Landroid/net/IpSecManager$SecurityParameterIndex;->getSpi()I

    move-result v5

    invoke-interface {v4, v5}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$IChildSessionSmCallback;->onChildSaDeleted(I)V

    .line 925
    iget-object v4, v1, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$CreateChildLocalCreateBase;->this$0:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;

    invoke-static {v4, v0}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->-$$Nest$mhandleChildFatalError(Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;Ljava/lang/Exception;)V
    :try_end_12d
    .catchall {:try_start_119 .. :try_end_12d} :catchall_139

    .line 929
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_12d
    iget-object v0, v3, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$CreateChildResult;->initSpi:Landroid/net/IpSecManager$SecurityParameterIndex;

    invoke-virtual {v0}, Landroid/net/IpSecManager$SecurityParameterIndex;->close()V

    .line 930
    iget-object v0, v3, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$CreateChildResult;->respSpi:Landroid/net/IpSecManager$SecurityParameterIndex;

    invoke-virtual {v0}, Landroid/net/IpSecManager$SecurityParameterIndex;->close()V

    .line 931
    nop

    .line 932
    goto :goto_145

    .line 929
    :catchall_139
    move-exception v0

    :goto_13a
    iget-object v4, v3, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$CreateChildResult;->initSpi:Landroid/net/IpSecManager$SecurityParameterIndex;

    invoke-virtual {v4}, Landroid/net/IpSecManager$SecurityParameterIndex;->close()V

    .line 930
    iget-object v4, v3, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$CreateChildResult;->respSpi:Landroid/net/IpSecManager$SecurityParameterIndex;

    invoke-virtual {v4}, Landroid/net/IpSecManager$SecurityParameterIndex;->close()V

    .line 931
    throw v0

    .line 945
    :goto_145
    return-void

    :pswitch_data_146
    .packed-switch 0x0
        :pswitch_3e
        :pswitch_35
        :pswitch_2c
    .end packed-switch
.end method

.class public Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeInit;
.super Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$BusyState;
.source "IkeSessionStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CreateIkeLocalIkeInit"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeInit$UnencryptedRetransmitter;
    }
.end annotation


# instance fields
.field private blacklist mIkeInitNoncePayload:Lcom/android/internal/net/ipsec/ike/message/IkeNoncePayload;

.field private blacklist mIkeInitRequestBytes:[B

.field private blacklist mIkeInitResponseBytes:[B

.field private blacklist mIkeRespNoncePayload:Lcom/android/internal/net/ipsec/ike/message/IkeNoncePayload;

.field private blacklist mInitialSetupData:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$InitialSetupData;

.field private blacklist mLocalIkeSpiResource:Lcom/android/internal/net/ipsec/ike/utils/IkeSecurityParameterIndex;

.field private blacklist mPeerSignatureHashAlgorithms:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Short;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mRemoteIkeSpiResource:Lcom/android/internal/net/ipsec/ike/utils/IkeSecurityParameterIndex;

.field final synthetic blacklist this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;)V
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

    .line 3205
    iput-object p1, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeInit;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$BusyState;-><init>(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine-IA;)V

    .line 3211
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeInit;->mPeerSignatureHashAlgorithms:Ljava/util/Set;

    return-void
.end method

.method private blacklist buildIkeInitReq()Lcom/android/internal/net/ipsec/ike/message/IkeMessage;
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3444
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeInit;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    invoke-static {v0}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->-$$Nest$fgetmIkeSpiGenerator(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;)Lcom/android/internal/net/ipsec/ike/utils/IkeSpiGenerator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeInit;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    invoke-static {v1}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->-$$Nest$fgetmIkeConnectionCtrl(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;)Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;

    move-result-object v1

    .line 3445
    invoke-virtual {v1}, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/net/ipsec/ike/utils/IkeSpiGenerator;->allocateSpi(Ljava/net/InetAddress;)Lcom/android/internal/net/ipsec/ike/utils/IkeSecurityParameterIndex;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeInit;->mLocalIkeSpiResource:Lcom/android/internal/net/ipsec/ike/utils/IkeSecurityParameterIndex;

    .line 3447
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeInit;->mLocalIkeSpiResource:Lcom/android/internal/net/ipsec/ike/utils/IkeSecurityParameterIndex;

    invoke-virtual {v0}, Lcom/android/internal/net/ipsec/ike/utils/IkeSecurityParameterIndex;->getSpi()J

    move-result-wide v2

    .line 3448
    .local v2, "initSpi":J
    const-wide/16 v4, 0x0

    .line 3452
    .local v4, "respSpi":J
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeInit;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v0, v0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mIkeSessionParams:Landroid/net/ipsec/ike/IkeSessionParams;

    invoke-virtual {v0}, Landroid/net/ipsec/ike/IkeSessionParams;->getSaProposalsInternal()[Landroid/net/ipsec/ike/IkeSaProposal;

    move-result-object v1

    .line 3453
    .local v1, "saProposals":[Landroid/net/ipsec/ike/IkeSaProposal;
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeInit;->mInitialSetupData:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$InitialSetupData;

    iget v0, v0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$InitialSetupData;->peerSelectedDhGroup:I

    iget-object v6, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeInit;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    invoke-static {v6}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->-$$Nest$fgetmIkeConnectionCtrl(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;)Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;

    move-result-object v6

    .line 3459
    invoke-virtual {v6}, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v7

    iget-object v6, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeInit;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    invoke-static {v6}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->-$$Nest$fgetmIkeConnectionCtrl(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;)Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;

    move-result-object v6

    .line 3460
    invoke-virtual {v6}, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->getRemoteAddress()Ljava/net/InetAddress;

    move-result-object v8

    iget-object v6, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeInit;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    invoke-static {v6}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->-$$Nest$fgetmIkeConnectionCtrl(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;)Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;

    move-result-object v6

    .line 3461
    invoke-virtual {v6}, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->getLocalPort()I

    move-result v9

    iget-object v6, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeInit;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    invoke-static {v6}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->-$$Nest$fgetmIkeConnectionCtrl(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;)Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;

    move-result-object v6

    .line 3462
    invoke-virtual {v6}, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->getRemotePort()I

    move-result v10

    iget-object v6, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeInit;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v6, v6, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mIkeContext:Lcom/android/internal/net/ipsec/ike/IkeContext;

    .line 3463
    invoke-virtual {v6}, Lcom/android/internal/net/ipsec/ike/IkeContext;->getRandomnessFactory()Lcom/android/internal/net/ipsec/ike/utils/RandomnessFactory;

    move-result-object v11

    iget-object v6, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeInit;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    .line 3464
    invoke-static {v6}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->-$$Nest$mneedEnableForceUdpEncap(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;)Z

    move-result v12

    .line 3454
    move-wide v5, v4

    move-wide v3, v2

    move v2, v0

    .end local v2    # "initSpi":J
    .end local v4    # "respSpi":J
    .local v3, "initSpi":J
    .local v5, "respSpi":J
    invoke-static/range {v1 .. v12}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeSaHelper;->getIkeInitSaRequestPayloads([Landroid/net/ipsec/ike/IkeSaProposal;IJJLjava/net/InetAddress;Ljava/net/InetAddress;IILcom/android/internal/net/ipsec/ike/utils/RandomnessFactory;Z)Ljava/util/List;

    move-result-object v0

    .line 3465
    move-object v11, v1

    move-wide v2, v3

    move-wide v4, v5

    .end local v1    # "saProposals":[Landroid/net/ipsec/ike/IkeSaProposal;
    .end local v3    # "initSpi":J
    .end local v5    # "respSpi":J
    .local v0, "payloadList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/net/ipsec/ike/message/IkePayload;>;"
    .restart local v2    # "initSpi":J
    .restart local v4    # "respSpi":J
    .local v11, "saProposals":[Landroid/net/ipsec/ike/IkeSaProposal;
    new-instance v1, Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;

    const/16 v6, 0x402e

    invoke-direct {v1, v6}, Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3469
    sget-object v1, Lcom/android/internal/net/ipsec/ike/message/IkeAuthDigitalSignPayload;->ALL_SIGNATURE_ALGO_TYPES:[S

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    .line 3470
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v12

    .line 3472
    .local v12, "signatureHashAlgoTypes":Ljava/nio/ByteBuffer;
    sget-object v1, Lcom/android/internal/net/ipsec/ike/message/IkeAuthDigitalSignPayload;->ALL_SIGNATURE_ALGO_TYPES:[S

    array-length v6, v1

    const/4 v7, 0x0

    :goto_81
    if-ge v7, v6, :cond_8b

    aget-short v8, v1, v7

    .line 3473
    .local v8, "type":S
    invoke-virtual {v12, v8}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 3472
    .end local v8    # "type":S
    add-int/lit8 v7, v7, 0x1

    goto :goto_81

    .line 3475
    :cond_8b
    new-instance v1, Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;

    .line 3478
    invoke-virtual {v12}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v6

    const/16 v7, 0x402f

    invoke-direct {v1, v7, v6}, Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;-><init>(I[B)V

    .line 3475
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3483
    new-instance v1, Lcom/android/internal/net/ipsec/ike/message/IkeHeader;

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/16 v6, 0x21

    const/16 v7, 0x22

    const/4 v8, 0x0

    invoke-direct/range {v1 .. v10}, Lcom/android/internal/net/ipsec/ike/message/IkeHeader;-><init>(JJIIZZI)V

    .line 3493
    .local v1, "ikeHeader":Lcom/android/internal/net/ipsec/ike/message/IkeHeader;
    new-instance v6, Lcom/android/internal/net/ipsec/ike/message/IkeMessage;

    invoke-direct {v6, v1, v0}, Lcom/android/internal/net/ipsec/ike/message/IkeMessage;-><init>(Lcom/android/internal/net/ipsec/ike/message/IkeHeader;Ljava/util/List;)V

    return-object v6
.end method

.method private blacklist buildReqWithCookie(Lcom/android/internal/net/ipsec/ike/message/IkeMessage;Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;)Lcom/android/internal/net/ipsec/ike/message/IkeMessage;
    .registers 15
    .param p1, "originalReq"    # Lcom/android/internal/net/ipsec/ike/message/IkeMessage;
    .param p2, "cookieNotify"    # Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;

    .line 3502
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3505
    .local v0, "payloads":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/net/ipsec/ike/message/IkePayload;>;"
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3507
    iget-object v1, p1, Lcom/android/internal/net/ipsec/ike/message/IkeMessage;->ikePayloadList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/net/ipsec/ike/message/IkePayload;

    .line 3509
    .local v2, "payload":Lcom/android/internal/net/ipsec/ike/message/IkePayload;
    instance-of v3, v2, Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;

    if-eqz v3, :cond_28

    move-object v3, v2

    check-cast v3, Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;

    iget v3, v3, Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;->notifyType:I

    const/16 v4, 0x4006

    if-ne v3, v4, :cond_28

    .line 3511
    goto :goto_e

    .line 3513
    :cond_28
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3514
    .end local v2    # "payload":Lcom/android/internal/net/ipsec/ike/message/IkePayload;
    goto :goto_e

    .line 3516
    :cond_2c
    iget-object v1, p1, Lcom/android/internal/net/ipsec/ike/message/IkeMessage;->ikeHeader:Lcom/android/internal/net/ipsec/ike/message/IkeHeader;

    .line 3517
    .local v1, "originalHeader":Lcom/android/internal/net/ipsec/ike/message/IkeHeader;
    new-instance v2, Lcom/android/internal/net/ipsec/ike/message/IkeHeader;

    iget-wide v3, v1, Lcom/android/internal/net/ipsec/ike/message/IkeHeader;->ikeInitiatorSpi:J

    iget-wide v5, v1, Lcom/android/internal/net/ipsec/ike/message/IkeHeader;->ikeResponderSpi:J

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/16 v7, 0x29

    const/16 v8, 0x22

    const/4 v9, 0x0

    invoke-direct/range {v2 .. v11}, Lcom/android/internal/net/ipsec/ike/message/IkeHeader;-><init>(JJIIZZI)V

    .line 3526
    .local v2, "header":Lcom/android/internal/net/ipsec/ike/message/IkeHeader;
    new-instance v3, Lcom/android/internal/net/ipsec/ike/message/IkeMessage;

    invoke-direct {v3, v2, v0}, Lcom/android/internal/net/ipsec/ike/message/IkeMessage;-><init>(Lcom/android/internal/net/ipsec/ike/message/IkeHeader;Ljava/util/List;)V

    return-object v3
.end method

.method private blacklist getNotifyCookie(Lcom/android/internal/net/ipsec/ike/message/IkeMessage;)Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;
    .registers 7
    .param p1, "ikeMessage"    # Lcom/android/internal/net/ipsec/ike/message/IkeMessage;

    .line 3330
    const-class v0, Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;

    .line 3331
    const/16 v1, 0x29

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/net/ipsec/ike/message/IkeMessage;->getPayloadListForType(ILjava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 3332
    .local v0, "notifyPayloads":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_20

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;

    .line 3333
    .local v2, "notify":Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;
    iget v3, v2, Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;->notifyType:I

    const/16 v4, 0x4006

    if-ne v3, v4, :cond_1f

    .line 3334
    return-object v2

    .line 3336
    .end local v2    # "notify":Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;
    :cond_1f
    goto :goto_c

    .line 3337
    :cond_20
    const/4 v1, 0x0

    return-object v1
.end method

.method private blacklist handleNatDetection(Lcom/android/internal/net/ipsec/ike/message/IkeMessage;Ljava/util/List;Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;)V
    .registers 12
    .param p1, "respMsg"    # Lcom/android/internal/net/ipsec/ike/message/IkeMessage;
    .param p3, "natDestPayload"    # Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/net/ipsec/ike/message/IkeMessage;",
            "Ljava/util/List<",
            "Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;",
            ">;",
            "Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/ipsec/ike/exceptions/InvalidSyntaxException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 3656
    .local p2, "natSourcePayloads":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;>;"
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeInit;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    invoke-static {v0, p2, p3}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->-$$Nest$mdidPeerIncludeNattDetectionPayloads(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;Ljava/util/List;Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 3657
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeInit;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    invoke-static {v0}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->-$$Nest$fgetmIkeConnectionCtrl(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;)Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->markSeverNattUnsupported()V

    .line 3658
    return-void

    .line 3662
    :cond_12
    iget-object v0, p1, Lcom/android/internal/net/ipsec/ike/message/IkeMessage;->ikeHeader:Lcom/android/internal/net/ipsec/ike/message/IkeHeader;

    iget-wide v2, v0, Lcom/android/internal/net/ipsec/ike/message/IkeHeader;->ikeInitiatorSpi:J

    .line 3663
    .local v2, "initIkeSpi":J
    iget-object v0, p1, Lcom/android/internal/net/ipsec/ike/message/IkeMessage;->ikeHeader:Lcom/android/internal/net/ipsec/ike/message/IkeHeader;

    iget-wide v4, v0, Lcom/android/internal/net/ipsec/ike/message/IkeHeader;->ikeResponderSpi:J

    .line 3664
    .local v4, "respIkeSpi":J
    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeInit;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    .line 3665
    move-object v6, p2

    move-object v7, p3

    .end local p2    # "natSourcePayloads":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;>;"
    .end local p3    # "natDestPayload":Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;
    .local v6, "natSourcePayloads":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;>;"
    .local v7, "natDestPayload":Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;
    invoke-static/range {v1 .. v7}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->-$$Nest$misLocalOrRemoteNatDetected(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;JJLjava/util/List;Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;)Z

    move-result p2

    .line 3669
    .local p2, "isNatDetected":Z
    :try_start_22
    iget-object p3, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeInit;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    invoke-static {p3}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->-$$Nest$fgetmIkeConnectionCtrl(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;)Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;

    move-result-object p3

    invoke-virtual {p3, p2, v2, v3}, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->handleNatDetectionResultInIkeInit(ZJ)V
    :try_end_2b
    .catch Landroid/net/ipsec/ike/exceptions/IkeException; {:try_start_22 .. :try_end_2b} :catch_2c

    .line 3672
    goto :goto_33

    .line 3670
    :catch_2c
    move-exception v0

    move-object p3, v0

    .line 3671
    .local p3, "e":Landroid/net/ipsec/ike/exceptions/IkeException;
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeInit;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    invoke-static {v0, p3}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->-$$Nest$mhandleIkeFatalError(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;Ljava/lang/Exception;)V

    .line 3673
    .end local p3    # "e":Landroid/net/ipsec/ike/exceptions/IkeException;
    :goto_33
    return-void
.end method

.method private blacklist sendRequest(Lcom/android/internal/net/ipsec/ike/message/IkeMessage;)V
    .registers 5
    .param p1, "request"    # Lcom/android/internal/net/ipsec/ike/message/IkeMessage;

    .line 3236
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeInit;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    invoke-static {v0}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->-$$Nest$fgetmIkeConnectionCtrl(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;)Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;

    move-result-object v0

    iget-object v1, p1, Lcom/android/internal/net/ipsec/ike/message/IkeMessage;->ikeHeader:Lcom/android/internal/net/ipsec/ike/message/IkeHeader;

    iget-wide v1, v1, Lcom/android/internal/net/ipsec/ike/message/IkeHeader;->ikeInitiatorSpi:J

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->registerIkeSpi(J)V

    .line 3238
    invoke-virtual {p1}, Lcom/android/internal/net/ipsec/ike/message/IkeMessage;->encode()[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeInit;->mIkeInitRequestBytes:[B

    .line 3239
    const-class v0, Lcom/android/internal/net/ipsec/ike/message/IkeNoncePayload;

    .line 3240
    const/16 v1, 0x28

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/net/ipsec/ike/message/IkeMessage;->getPayloadForType(ILjava/lang/Class;)Lcom/android/internal/net/ipsec/ike/message/IkePayload;

    move-result-object v0

    check-cast v0, Lcom/android/internal/net/ipsec/ike/message/IkeNoncePayload;

    iput-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeInit;->mIkeInitNoncePayload:Lcom/android/internal/net/ipsec/ike/message/IkeNoncePayload;

    .line 3242
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeInit;->mRetransmitter:Lcom/android/internal/net/ipsec/ike/utils/Retransmitter;

    if-eqz v0, :cond_28

    .line 3243
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeInit;->mRetransmitter:Lcom/android/internal/net/ipsec/ike/utils/Retransmitter;

    invoke-virtual {v0}, Lcom/android/internal/net/ipsec/ike/utils/Retransmitter;->stopRetransmitting()V

    .line 3245
    :cond_28
    new-instance v0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeInit$UnencryptedRetransmitter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeInit$UnencryptedRetransmitter;-><init>(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeInit;Lcom/android/internal/net/ipsec/ike/message/IkeMessage;Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine-IA;)V

    iput-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeInit;->mRetransmitter:Lcom/android/internal/net/ipsec/ike/utils/Retransmitter;

    .line 3246
    return-void
.end method

.method private blacklist validateIkeInitResp(Lcom/android/internal/net/ipsec/ike/message/IkeMessage;Lcom/android/internal/net/ipsec/ike/message/IkeMessage;)V
    .registers 15
    .param p1, "reqMsg"    # Lcom/android/internal/net/ipsec/ike/message/IkeMessage;
    .param p2, "respMsg"    # Lcom/android/internal/net/ipsec/ike/message/IkeMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/ipsec/ike/exceptions/IkeProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 3531
    iget-object v0, p2, Lcom/android/internal/net/ipsec/ike/message/IkeMessage;->ikeHeader:Lcom/android/internal/net/ipsec/ike/message/IkeHeader;

    .line 3532
    .local v0, "respIkeHeader":Lcom/android/internal/net/ipsec/ike/message/IkeHeader;
    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeInit;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    invoke-static {v1}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->-$$Nest$fgetmIkeSpiGenerator(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;)Lcom/android/internal/net/ipsec/ike/utils/IkeSpiGenerator;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeInit;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    invoke-static {v2}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->-$$Nest$fgetmIkeConnectionCtrl(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;)Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;

    move-result-object v2

    .line 3534
    invoke-virtual {v2}, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->getRemoteAddress()Ljava/net/InetAddress;

    move-result-object v2

    iget-wide v3, v0, Lcom/android/internal/net/ipsec/ike/message/IkeHeader;->ikeResponderSpi:J

    .line 3533
    invoke-virtual {v1, v2, v3, v4}, Lcom/android/internal/net/ipsec/ike/utils/IkeSpiGenerator;->allocateSpi(Ljava/net/InetAddress;J)Lcom/android/internal/net/ipsec/ike/utils/IkeSecurityParameterIndex;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeInit;->mRemoteIkeSpiResource:Lcom/android/internal/net/ipsec/ike/utils/IkeSecurityParameterIndex;

    .line 3536
    const/4 v1, 0x0

    .line 3537
    .local v1, "respSaPayload":Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload;
    const/4 v2, 0x0

    .line 3543
    .local v2, "respKePayload":Lcom/android/internal/net/ipsec/ike/message/IkeKePayload;
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    .line 3544
    .local v3, "natSourcePayloads":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;>;"
    const/4 v4, 0x0

    .line 3546
    .local v4, "natDestPayload":Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;
    const/4 v5, 0x0

    .line 3548
    .local v5, "hasNoncePayload":Z
    iget-object v6, p2, Lcom/android/internal/net/ipsec/ike/message/IkeMessage;->ikePayloadList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_29
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_ca

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/net/ipsec/ike/message/IkePayload;

    .line 3549
    .local v7, "payload":Lcom/android/internal/net/ipsec/ike/message/IkePayload;
    iget v8, v7, Lcom/android/internal/net/ipsec/ike/message/IkePayload;->payloadType:I

    packed-switch v8, :pswitch_data_16e

    .line 3606
    :pswitch_3a
    iget-object v8, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeInit;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Received unexpected payload in IKE INIT response. Payload type: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v7, Lcom/android/internal/net/ipsec/ike/message/IkePayload;->payloadType:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->logw(Ljava/lang/String;)V

    goto/16 :goto_c8

    .line 3564
    :pswitch_56
    iget-object v8, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeInit;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v8, v8, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mRemoteVendorIds:Ljava/util/List;

    move-object v9, v7

    check-cast v9, Lcom/android/internal/net/ipsec/ike/message/IkeVendorPayload;

    iget-object v9, v9, Lcom/android/internal/net/ipsec/ike/message/IkeVendorPayload;->vendorId:[B

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3565
    goto :goto_c8

    .line 3567
    :pswitch_63
    move-object v8, v7

    check-cast v8, Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;

    .line 3569
    .local v8, "notifyPayload":Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;
    invoke-virtual {v8}, Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;->isErrorNotify()Z

    move-result v9

    if-nez v9, :cond_b3

    .line 3573
    iget v9, v8, Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;->notifyType:I

    sparse-switch v9, :sswitch_data_188

    .line 3598
    iget-object v9, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeInit;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Received unknown or unexpected status notifications with notify type: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v8, Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;->notifyType:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->logw(Ljava/lang/String;)V

    .line 3604
    goto :goto_c8

    .line 3590
    :sswitch_8c
    iget-object v9, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeInit;->mPeerSignatureHashAlgorithms:Ljava/util/Set;

    .line 3592
    invoke-static {v8}, Lcom/android/internal/net/ipsec/ike/message/IkeAuthDigitalSignPayload;->getSignatureHashAlgorithmsFromIkeNotifyPayload(Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;)Ljava/util/Set;

    move-result-object v10

    .line 3590
    invoke-interface {v9, v10}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 3594
    goto :goto_c8

    .line 3587
    :sswitch_96
    iget-object v9, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeInit;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v9, v9, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mEnabledExtensions:Ljava/util/List;

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3588
    goto :goto_c8

    .line 3578
    :sswitch_a3
    if-nez v4, :cond_a7

    .line 3584
    move-object v4, v8

    .line 3585
    goto :goto_c8

    .line 3579
    :cond_a7
    new-instance v6, Landroid/net/ipsec/ike/exceptions/InvalidSyntaxException;

    const-string v9, "More than one NOTIFY_TYPE_NAT_DETECTION_DESTINATION_IP found"

    invoke-direct {v6, v9}, Landroid/net/ipsec/ike/exceptions/InvalidSyntaxException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 3575
    :sswitch_af
    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3576
    goto :goto_c8

    .line 3570
    :cond_b3
    invoke-virtual {v8}, Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;->validateAndBuildIkeException()Landroid/net/ipsec/ike/exceptions/IkeProtocolException;

    move-result-object v6

    throw v6

    .line 3560
    .end local v8    # "notifyPayload":Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;
    :pswitch_b8
    const/4 v5, 0x1

    .line 3561
    move-object v8, v7

    check-cast v8, Lcom/android/internal/net/ipsec/ike/message/IkeNoncePayload;

    iput-object v8, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeInit;->mIkeRespNoncePayload:Lcom/android/internal/net/ipsec/ike/message/IkeNoncePayload;

    .line 3562
    goto :goto_c8

    .line 3558
    :pswitch_bf
    goto :goto_c8

    .line 3554
    :pswitch_c0
    move-object v2, v7

    check-cast v2, Lcom/android/internal/net/ipsec/ike/message/IkeKePayload;

    .line 3555
    goto :goto_c8

    .line 3551
    :pswitch_c4
    move-object v1, v7

    check-cast v1, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload;

    .line 3552
    nop

    .line 3610
    .end local v7    # "payload":Lcom/android/internal/net/ipsec/ike/message/IkePayload;
    :goto_c8
    goto/16 :goto_29

    .line 3612
    :cond_ca
    if-eqz v1, :cond_166

    if-eqz v2, :cond_166

    if-eqz v5, :cond_166

    .line 3618
    const-class v6, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload;

    .line 3619
    const/16 v7, 0x21

    invoke-virtual {p1, v7, v6}, Lcom/android/internal/net/ipsec/ike/message/IkeMessage;->getPayloadForType(ILjava/lang/Class;)Lcom/android/internal/net/ipsec/ike/message/IkePayload;

    move-result-object v6

    check-cast v6, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload;

    .line 3620
    .local v6, "reqSaPayload":Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload;
    iget-object v7, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeInit;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v8, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeInit;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    invoke-static {v8}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->-$$Nest$fgetmIkeSpiGenerator(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;)Lcom/android/internal/net/ipsec/ike/utils/IkeSpiGenerator;

    move-result-object v8

    iget-object v9, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeInit;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    invoke-static {v9}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->-$$Nest$fgetmIkeConnectionCtrl(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;)Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;

    move-result-object v9

    .line 3625
    invoke-virtual {v9}, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->getRemoteAddress()Ljava/net/InetAddress;

    move-result-object v9

    .line 3621
    invoke-static {v6, v1, v8, v9}, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload;->getVerifiedNegotiatedIkeProposalPair(Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload;Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload;Lcom/android/internal/net/ipsec/ike/utils/IkeSpiGenerator;Ljava/net/InetAddress;)Landroid/util/Pair;

    move-result-object v8

    iget-object v8, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v8, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$IkeProposal;

    iget-object v8, v8, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$IkeProposal;->saProposal:Landroid/net/ipsec/ike/IkeSaProposal;

    iput-object v8, v7, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mSaProposal:Landroid/net/ipsec/ike/IkeSaProposal;

    .line 3633
    iget-object v7, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeInit;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v8, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeInit;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v8, v8, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mSaProposal:Landroid/net/ipsec/ike/IkeSaProposal;

    invoke-virtual {v8}, Landroid/net/ipsec/ike/IkeSaProposal;->getEncryptionTransforms()[Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$EncryptionTransform;

    move-result-object v8

    const/4 v9, 0x0

    aget-object v8, v8, v9

    invoke-static {v8}, Lcom/android/internal/net/ipsec/ike/crypto/IkeCipher;->create(Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$EncryptionTransform;)Lcom/android/internal/net/ipsec/ike/crypto/IkeCipher;

    move-result-object v8

    iput-object v8, v7, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mIkeCipher:Lcom/android/internal/net/ipsec/ike/crypto/IkeCipher;

    .line 3634
    iget-object v7, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeInit;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v7, v7, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mIkeCipher:Lcom/android/internal/net/ipsec/ike/crypto/IkeCipher;

    invoke-virtual {v7}, Lcom/android/internal/net/ipsec/ike/crypto/IkeCipher;->isAead()Z

    move-result v7

    if-nez v7, :cond_127

    .line 3635
    iget-object v7, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeInit;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v8, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeInit;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v8, v8, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mSaProposal:Landroid/net/ipsec/ike/IkeSaProposal;

    invoke-virtual {v8}, Landroid/net/ipsec/ike/IkeSaProposal;->getIntegrityTransforms()[Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$IntegrityTransform;

    move-result-object v8

    aget-object v8, v8, v9

    invoke-static {v8}, Lcom/android/internal/net/ipsec/ike/crypto/IkeMacIntegrity;->create(Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$IntegrityTransform;)Lcom/android/internal/net/ipsec/ike/crypto/IkeMacIntegrity;

    move-result-object v8

    iput-object v8, v7, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mIkeIntegrity:Lcom/android/internal/net/ipsec/ike/crypto/IkeMacIntegrity;

    .line 3637
    :cond_127
    iget-object v7, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeInit;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v8, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeInit;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v8, v8, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mSaProposal:Landroid/net/ipsec/ike/IkeSaProposal;

    invoke-virtual {v8}, Landroid/net/ipsec/ike/IkeSaProposal;->getPrfTransforms()[Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$PrfTransform;

    move-result-object v8

    aget-object v8, v8, v9

    invoke-static {v8}, Lcom/android/internal/net/ipsec/ike/crypto/IkeMacPrf;->create(Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$PrfTransform;)Lcom/android/internal/net/ipsec/ike/crypto/IkeMacPrf;

    move-result-object v8

    iput-object v8, v7, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mIkePrf:Lcom/android/internal/net/ipsec/ike/crypto/IkeMacPrf;

    .line 3639
    const-class v7, Lcom/android/internal/net/ipsec/ike/message/IkeKePayload;

    .line 3640
    const/16 v8, 0x22

    invoke-virtual {p1, v8, v7}, Lcom/android/internal/net/ipsec/ike/message/IkeMessage;->getPayloadForType(ILjava/lang/Class;)Lcom/android/internal/net/ipsec/ike/message/IkePayload;

    move-result-object v7

    check-cast v7, Lcom/android/internal/net/ipsec/ike/message/IkeKePayload;

    .line 3641
    .local v7, "reqKePayload":Lcom/android/internal/net/ipsec/ike/message/IkeKePayload;
    iget v8, v7, Lcom/android/internal/net/ipsec/ike/message/IkeKePayload;->dhGroup:I

    iget v9, v2, Lcom/android/internal/net/ipsec/ike/message/IkeKePayload;->dhGroup:I

    if-eq v8, v9, :cond_15a

    iget v8, v2, Lcom/android/internal/net/ipsec/ike/message/IkeKePayload;->dhGroup:I

    iget-object v9, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeInit;->mInitialSetupData:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$InitialSetupData;

    iget v9, v9, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$InitialSetupData;->peerSelectedDhGroup:I

    if-ne v8, v9, :cond_152

    goto :goto_15a

    .line 3643
    :cond_152
    new-instance v8, Landroid/net/ipsec/ike/exceptions/InvalidSyntaxException;

    const-string v9, "Received KE payload with mismatched DH group."

    invoke-direct {v8, v9}, Landroid/net/ipsec/ike/exceptions/InvalidSyntaxException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 3646
    :cond_15a
    :goto_15a
    const/16 v8, 0x4004

    invoke-virtual {p1, v8}, Lcom/android/internal/net/ipsec/ike/message/IkeMessage;->hasNotifyPayload(I)Z

    move-result v8

    if-eqz v8, :cond_165

    .line 3647
    invoke-direct {p0, p2, v3, v4}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeInit;->handleNatDetection(Lcom/android/internal/net/ipsec/ike/message/IkeMessage;Ljava/util/List;Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;)V

    .line 3649
    :cond_165
    return-void

    .line 3615
    .end local v6    # "reqSaPayload":Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload;
    .end local v7    # "reqKePayload":Lcom/android/internal/net/ipsec/ike/message/IkeKePayload;
    :cond_166
    new-instance v6, Landroid/net/ipsec/ike/exceptions/InvalidSyntaxException;

    const-string v7, "SA, KE, or Nonce payload missing."

    invoke-direct {v6, v7}, Landroid/net/ipsec/ike/exceptions/InvalidSyntaxException;-><init>(Ljava/lang/String;)V

    throw v6

    :pswitch_data_16e
    .packed-switch 0x21
        :pswitch_c4
        :pswitch_c0
        :pswitch_3a
        :pswitch_3a
        :pswitch_3a
        :pswitch_bf
        :pswitch_3a
        :pswitch_b8
        :pswitch_63
        :pswitch_3a
        :pswitch_56
    .end packed-switch

    :sswitch_data_188
    .sparse-switch
        0x4004 -> :sswitch_af
        0x4005 -> :sswitch_a3
        0x402e -> :sswitch_96
        0x402f -> :sswitch_8c
    .end sparse-switch
.end method


# virtual methods
.method public blacklist enterState()V
    .registers 4

    .line 3220
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeInit;->mInitialSetupData:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$InitialSetupData;

    if-nez v0, :cond_15

    .line 3221
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeInit;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "mInitialSetupData is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 3222
    invoke-static {v1}, Landroid/net/ipsec/ike/exceptions/IkeException;->wrapAsIkeException(Ljava/lang/Exception;)Landroid/net/ipsec/ike/exceptions/IkeException;

    move-result-object v1

    .line 3221
    invoke-static {v0, v1}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->-$$Nest$mhandleIkeFatalError(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;Ljava/lang/Exception;)V

    .line 3223
    return-void

    .line 3227
    :cond_15
    :try_start_15
    invoke-direct {p0}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeInit;->buildIkeInitReq()Lcom/android/internal/net/ipsec/ike/message/IkeMessage;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeInit;->sendRequest(Lcom/android/internal/net/ipsec/ike/message/IkeMessage;)V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_1c} :catch_1d

    .line 3231
    goto :goto_23

    .line 3228
    :catch_1d
    move-exception v0

    .line 3230
    .local v0, "e":Ljava/io/IOException;
    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeInit;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    invoke-static {v1, v0}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->-$$Nest$mhandleIkeFatalError(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;Ljava/lang/Exception;)V

    .line 3232
    .end local v0    # "e":Ljava/io/IOException;
    :goto_23
    return-void
.end method

.method public blacklist exitState()V
    .registers 3

    .line 3677
    invoke-super {p0}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$BusyState;->exitState()V

    .line 3679
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeInit;->mInitialSetupData:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$InitialSetupData;

    .line 3680
    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeInit;->mRetransmitter:Lcom/android/internal/net/ipsec/ike/utils/Retransmitter;

    if-eqz v1, :cond_f

    .line 3681
    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeInit;->mRetransmitter:Lcom/android/internal/net/ipsec/ike/utils/Retransmitter;

    invoke-virtual {v1}, Lcom/android/internal/net/ipsec/ike/utils/Retransmitter;->stopRetransmitting()V

    .line 3684
    :cond_f
    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeInit;->mLocalIkeSpiResource:Lcom/android/internal/net/ipsec/ike/utils/IkeSecurityParameterIndex;

    if-eqz v1, :cond_1a

    .line 3685
    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeInit;->mLocalIkeSpiResource:Lcom/android/internal/net/ipsec/ike/utils/IkeSecurityParameterIndex;

    invoke-virtual {v1}, Lcom/android/internal/net/ipsec/ike/utils/IkeSecurityParameterIndex;->close()V

    .line 3686
    iput-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeInit;->mLocalIkeSpiResource:Lcom/android/internal/net/ipsec/ike/utils/IkeSecurityParameterIndex;

    .line 3688
    :cond_1a
    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeInit;->mRemoteIkeSpiResource:Lcom/android/internal/net/ipsec/ike/utils/IkeSecurityParameterIndex;

    if-eqz v1, :cond_25

    .line 3689
    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeInit;->mRemoteIkeSpiResource:Lcom/android/internal/net/ipsec/ike/utils/IkeSecurityParameterIndex;

    invoke-virtual {v1}, Lcom/android/internal/net/ipsec/ike/utils/IkeSecurityParameterIndex;->close()V

    .line 3690
    iput-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeInit;->mRemoteIkeSpiResource:Lcom/android/internal/net/ipsec/ike/utils/IkeSecurityParameterIndex;

    .line 3692
    :cond_25
    return-void
.end method

.method protected blacklist getMetricsStateCode()I
    .registers 2

    .line 3728
    const/4 v0, 0x3

    return v0
.end method

.method protected blacklist handleReceivedIkePacket(Landroid/os/Message;)V
    .registers 10
    .param p1, "message"    # Landroid/os/Message;

    .line 3276
    const-string v0, "handleReceivedIkePacket: "

    .line 3278
    .local v0, "methodTag":Ljava/lang/String;
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$ReceivedIkePacket;

    .line 3279
    .local v1, "receivedIkePacket":Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$ReceivedIkePacket;
    iget-object v2, v1, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$ReceivedIkePacket;->ikeHeader:Lcom/android/internal/net/ipsec/ike/message/IkeHeader;

    .line 3280
    .local v2, "ikeHeader":Lcom/android/internal/net/ipsec/ike/message/IkeHeader;
    iget-object v3, v1, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$ReceivedIkePacket;->ikePacketBytes:[B

    .line 3282
    .local v3, "ikePacketBytes":[B
    iget-object v4, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeInit;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "Received an "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 3285
    invoke-virtual {v2}, Lcom/android/internal/net/ipsec/ike/message/IkeHeader;->getBasicInfoString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ". Packet size: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    array-length v6, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 3282
    invoke-virtual {v4, v5}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->logd(Ljava/lang/String;)V

    .line 3289
    iget-boolean v4, v2, Lcom/android/internal/net/ipsec/ike/message/IkeHeader;->isResponseMsg:Z

    if-eqz v4, :cond_a6

    .line 3290
    const/4 v4, 0x0

    invoke-static {v4, v2, v3}, Lcom/android/internal/net/ipsec/ike/message/IkeMessage;->decode(ILcom/android/internal/net/ipsec/ike/message/IkeHeader;[B)Lcom/android/internal/net/ipsec/ike/message/IkeMessage$DecodeResult;

    move-result-object v4

    .line 3292
    .local v4, "decodeResult":Lcom/android/internal/net/ipsec/ike/message/IkeMessage$DecodeResult;
    iget v5, v4, Lcom/android/internal/net/ipsec/ike/message/IkeMessage$DecodeResult;->status:I

    packed-switch v5, :pswitch_data_ae

    .line 3317
    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid decoding status: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v4, Lcom/android/internal/net/ipsec/ike/message/IkeMessage$DecodeResult;->status:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v5}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeInit;->cleanUpAndQuit(Ljava/lang/RuntimeException;)V

    goto :goto_a5

    .line 3312
    :pswitch_61
    iget-object v5, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeInit;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    move-object v6, v4

    check-cast v6, Lcom/android/internal/net/ipsec/ike/message/IkeMessage$DecodeResultError;

    iget-object v6, v6, Lcom/android/internal/net/ipsec/ike/message/IkeMessage$DecodeResultError;->ikeException:Landroid/net/ipsec/ike/exceptions/IkeException;

    const-string v7, "Discard unencrypted response with syntax error"

    invoke-virtual {v5, v7, v6}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->logi(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3315
    goto :goto_a5

    .line 3307
    :pswitch_6e
    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unexpected decoding status: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v4, Lcom/android/internal/net/ipsec/ike/message/IkeMessage$DecodeResult;->status:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v5}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeInit;->cleanUpAndQuit(Ljava/lang/RuntimeException;)V

    .line 3310
    goto :goto_a5

    .line 3294
    :pswitch_8c
    iput-object v3, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeInit;->mIkeInitResponseBytes:[B

    .line 3295
    move-object v5, v4

    check-cast v5, Lcom/android/internal/net/ipsec/ike/message/IkeMessage$DecodeResultOk;

    iget-object v5, v5, Lcom/android/internal/net/ipsec/ike/message/IkeMessage$DecodeResultOk;->ikeMessage:Lcom/android/internal/net/ipsec/ike/message/IkeMessage;

    invoke-virtual {p0, v5}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeInit;->handleResponseIkeMessage(Lcom/android/internal/net/ipsec/ike/message/IkeMessage;)V

    .line 3298
    iget-object v5, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeInit;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v5, v5, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mCurrentIkeSaRecord:Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;

    if-nez v5, :cond_9d

    goto :goto_a5

    .line 3300
    :cond_9d
    iget-object v5, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeInit;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v5, v5, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mCurrentIkeSaRecord:Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;

    invoke-virtual {v5}, Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;->incrementLocalRequestMessageId()V

    .line 3301
    nop

    .line 3322
    .end local v4    # "decodeResult":Lcom/android/internal/net/ipsec/ike/message/IkeMessage$DecodeResult;
    :goto_a5
    goto :goto_ad

    .line 3324
    :cond_a6
    iget-object v4, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeInit;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    const-string v5, "Received a request while waiting for IKE_INIT response. Discard it."

    invoke-virtual {v4, v5}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->logi(Ljava/lang/String;)V

    .line 3326
    :goto_ad
    return-void

    :pswitch_data_ae
    .packed-switch 0x0
        :pswitch_8c
        :pswitch_6e
        :pswitch_6e
        :pswitch_61
    .end packed-switch
.end method

.method protected blacklist handleResponseIkeMessage(Lcom/android/internal/net/ipsec/ike/message/IkeMessage;)V
    .registers 16
    .param p1, "ikeMessage"    # Lcom/android/internal/net/ipsec/ike/message/IkeMessage;

    .line 3343
    const/4 v1, 0x0

    :try_start_1
    iget-object v0, p1, Lcom/android/internal/net/ipsec/ike/message/IkeMessage;->ikeHeader:Lcom/android/internal/net/ipsec/ike/message/IkeHeader;

    iget v0, v0, Lcom/android/internal/net/ipsec/ike/message/IkeHeader;->exchangeType:I

    .line 3344
    .local v0, "exchangeType":I
    const/16 v2, 0x22

    if-ne v0, v2, :cond_f7

    .line 3350
    invoke-direct {p0, p1}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeInit;->getNotifyCookie(Lcom/android/internal/net/ipsec/ike/message/IkeMessage;)Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;

    move-result-object v2
    :try_end_d
    .catch Landroid/net/ipsec/ike/exceptions/IkeProtocolException; {:try_start_1 .. :try_end_d} :catch_113
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_d} :catch_113
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_d} :catch_113

    .line 3351
    .local v2, "inCookiePayload":Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;
    if-eqz v2, :cond_26

    .line 3352
    nop

    .line 3353
    :try_start_10
    invoke-static {v2}, Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;->handleCookieAndGenerateCopy(Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;)Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;

    move-result-object v3

    .line 3354
    .local v3, "outCookiePayload":Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;
    iget-object v4, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeInit;->mRetransmitter:Lcom/android/internal/net/ipsec/ike/utils/Retransmitter;

    .line 3355
    invoke-virtual {v4}, Lcom/android/internal/net/ipsec/ike/utils/Retransmitter;->getMessage()Lcom/android/internal/net/ipsec/ike/message/IkeMessage;

    move-result-object v4

    invoke-direct {p0, v4, v3}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeInit;->buildReqWithCookie(Lcom/android/internal/net/ipsec/ike/message/IkeMessage;Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;)Lcom/android/internal/net/ipsec/ike/message/IkeMessage;

    move-result-object v4

    .line 3357
    .local v4, "initReq":Lcom/android/internal/net/ipsec/ike/message/IkeMessage;
    invoke-direct {p0, v4}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeInit;->sendRequest(Lcom/android/internal/net/ipsec/ike/message/IkeMessage;)V
    :try_end_21
    .catch Landroid/net/ipsec/ike/exceptions/IkeProtocolException; {:try_start_10 .. :try_end_21} :catch_22
    .catch Ljava/security/GeneralSecurityException; {:try_start_10 .. :try_end_21} :catch_22
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_21} :catch_22

    .line 3358
    return-void

    .line 3398
    .end local v0    # "exchangeType":I
    .end local v2    # "inCookiePayload":Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;
    .end local v3    # "outCookiePayload":Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;
    .end local v4    # "initReq":Lcom/android/internal/net/ipsec/ike/message/IkeMessage;
    :catch_22
    move-exception v0

    move-object v6, p1

    goto/16 :goto_115

    .line 3362
    .restart local v0    # "exchangeType":I
    .restart local v2    # "inCookiePayload":Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;
    :cond_26
    :try_start_26
    iget-object v3, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeInit;->mRetransmitter:Lcom/android/internal/net/ipsec/ike/utils/Retransmitter;

    invoke-virtual {v3}, Lcom/android/internal/net/ipsec/ike/utils/Retransmitter;->getMessage()Lcom/android/internal/net/ipsec/ike/message/IkeMessage;

    move-result-object v3

    invoke-direct {p0, v3, p1}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeInit;->validateIkeInitResp(Lcom/android/internal/net/ipsec/ike/message/IkeMessage;Lcom/android/internal/net/ipsec/ike/message/IkeMessage;)V

    .line 3364
    iget-object v3, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeInit;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v4, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeInit;->mRetransmitter:Lcom/android/internal/net/ipsec/ike/utils/Retransmitter;

    .line 3366
    invoke-virtual {v4}, Lcom/android/internal/net/ipsec/ike/utils/Retransmitter;->getMessage()Lcom/android/internal/net/ipsec/ike/message/IkeMessage;

    move-result-object v5

    iget-object v7, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeInit;->mLocalIkeSpiResource:Lcom/android/internal/net/ipsec/ike/utils/IkeSecurityParameterIndex;

    iget-object v8, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeInit;->mRemoteIkeSpiResource:Lcom/android/internal/net/ipsec/ike/utils/IkeSecurityParameterIndex;

    iget-object v4, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeInit;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v9, v4, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mIkePrf:Lcom/android/internal/net/ipsec/ike/crypto/IkeMacPrf;

    .line 3371
    iget-object v4, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeInit;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v4, v4, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mIkeIntegrity:Lcom/android/internal/net/ipsec/ike/crypto/IkeMacIntegrity;

    if-nez v4, :cond_47

    move v10, v1

    goto :goto_50

    :cond_47
    iget-object v4, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeInit;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v4, v4, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mIkeIntegrity:Lcom/android/internal/net/ipsec/ike/crypto/IkeMacIntegrity;

    invoke-virtual {v4}, Lcom/android/internal/net/ipsec/ike/crypto/IkeMacIntegrity;->getKeyLength()I

    move-result v4

    move v10, v4

    :goto_50
    iget-object v4, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeInit;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v4, v4, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mIkeCipher:Lcom/android/internal/net/ipsec/ike/crypto/IkeCipher;

    .line 3372
    invoke-virtual {v4}, Lcom/android/internal/net/ipsec/ike/crypto/IkeCipher;->getKeyLength()I

    move-result v11

    iget-object v4, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeInit;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v6, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeInit;->mRemoteIkeSpiResource:Lcom/android/internal/net/ipsec/ike/utils/IkeSecurityParameterIndex;

    .line 3373
    invoke-virtual {v6}, Lcom/android/internal/net/ipsec/ike/utils/IkeSecurityParameterIndex;->getSpi()J

    move-result-wide v12

    invoke-virtual {v4, v12, v13}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->buildSaLifetimeAlarmScheduler(J)Lcom/android/internal/net/ipsec/ike/SaRecord$SaLifetimeAlarmScheduler;

    move-result-object v12
    :try_end_64
    .catch Landroid/net/ipsec/ike/exceptions/IkeProtocolException; {:try_start_26 .. :try_end_64} :catch_113
    .catch Ljava/security/GeneralSecurityException; {:try_start_26 .. :try_end_64} :catch_113
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_64} :catch_113

    .line 3365
    move-object v6, p1

    .end local p1    # "ikeMessage":Lcom/android/internal/net/ipsec/ike/message/IkeMessage;
    .local v6, "ikeMessage":Lcom/android/internal/net/ipsec/ike/message/IkeMessage;
    :try_start_65
    invoke-static/range {v5 .. v12}, Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;->makeFirstIkeSaRecord(Lcom/android/internal/net/ipsec/ike/message/IkeMessage;Lcom/android/internal/net/ipsec/ike/message/IkeMessage;Lcom/android/internal/net/ipsec/ike/utils/IkeSecurityParameterIndex;Lcom/android/internal/net/ipsec/ike/utils/IkeSecurityParameterIndex;Lcom/android/internal/net/ipsec/ike/crypto/IkeMacPrf;IILcom/android/internal/net/ipsec/ike/SaRecord$SaLifetimeAlarmScheduler;)Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;

    move-result-object p1

    iput-object p1, v3, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mCurrentIkeSaRecord:Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;

    .line 3375
    iget-object p1, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeInit;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v3, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeInit;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v3, v3, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mCurrentIkeSaRecord:Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;

    invoke-virtual {p1, v3}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->addIkeSaRecord(Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;)V

    .line 3377
    iget-object p1, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeInit;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object p1, p1, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mSaProposal:Landroid/net/ipsec/ike/IkeSaProposal;

    invoke-virtual {p1}, Landroid/net/ipsec/ike/IkeSaProposal;->getIntegrityAlgorithms()Ljava/util/List;

    move-result-object p1

    .line 3379
    .local p1, "integrityAlgorithms":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v7, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeInit;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v3, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeInit;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v3, v3, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mSaProposal:Landroid/net/ipsec/ike/IkeSaProposal;

    .line 3380
    invoke-virtual {v3}, Landroid/net/ipsec/ike/IkeSaProposal;->getDhGroups()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iget-object v3, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeInit;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v3, v3, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mSaProposal:Landroid/net/ipsec/ike/IkeSaProposal;

    .line 3381
    invoke-virtual {v3}, Landroid/net/ipsec/ike/IkeSaProposal;->getEncryptionTransforms()[Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$EncryptionTransform;

    move-result-object v3

    aget-object v3, v3, v1

    iget v9, v3, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$EncryptionTransform;->id:I

    iget-object v3, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeInit;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v3, v3, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mSaProposal:Landroid/net/ipsec/ike/IkeSaProposal;

    .line 3382
    invoke-virtual {v3}, Landroid/net/ipsec/ike/IkeSaProposal;->getEncryptionTransforms()[Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$EncryptionTransform;

    move-result-object v3

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$EncryptionTransform;->getSpecifiedKeyLength()I

    move-result v10

    .line 3383
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_b3

    .line 3384
    const/4 v3, 0x1

    move v11, v3

    goto :goto_be

    .line 3385
    :cond_b3
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    move v11, v3

    :goto_be
    iget-object v3, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeInit;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v3, v3, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mSaProposal:Landroid/net/ipsec/ike/IkeSaProposal;

    .line 3386
    invoke-virtual {v3}, Landroid/net/ipsec/ike/IkeSaProposal;->getPseudorandomFunctions()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v12

    .line 3379
    const/4 v13, 0x0

    invoke-virtual/range {v7 .. v13}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->recordMetricsEvent_SaNegotiation(IIIIILandroid/net/ipsec/ike/exceptions/IkeException;)V

    .line 3389
    iget-object v3, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeInit;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v3, v3, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mCreateIkeLocalIkeAuth:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuth;

    new-instance v7, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$IkeInitData;

    iget-object v8, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeInit;->mInitialSetupData:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$InitialSetupData;

    iget-object v9, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeInit;->mIkeInitRequestBytes:[B

    iget-object v10, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeInit;->mIkeInitResponseBytes:[B

    iget-object v11, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeInit;->mIkeInitNoncePayload:Lcom/android/internal/net/ipsec/ike/message/IkeNoncePayload;

    iget-object v12, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeInit;->mIkeRespNoncePayload:Lcom/android/internal/net/ipsec/ike/message/IkeNoncePayload;

    iget-object v13, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeInit;->mPeerSignatureHashAlgorithms:Ljava/util/Set;

    invoke-direct/range {v7 .. v13}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$IkeInitData;-><init>(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$InitialSetupData;[B[BLcom/android/internal/net/ipsec/ike/message/IkeNoncePayload;Lcom/android/internal/net/ipsec/ike/message/IkeNoncePayload;Ljava/util/Set;)V

    invoke-virtual {v3, v7}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuth;->setIkeSetupData(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$IkeInitData;)V

    .line 3397
    iget-object v3, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeInit;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v4, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeInit;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v4, v4, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mCreateIkeLocalIkeAuth:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuth;

    invoke-virtual {v3, v4}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->transitionTo(Lcom/android/internal/net/ipsec/ike/utils/IState;)V

    .line 3439
    .end local v0    # "exchangeType":I
    .end local v2    # "inCookiePayload":Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;
    .end local p1    # "integrityAlgorithms":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    goto/16 :goto_18a

    .line 3345
    .end local v6    # "ikeMessage":Lcom/android/internal/net/ipsec/ike/message/IkeMessage;
    .restart local v0    # "exchangeType":I
    .local p1, "ikeMessage":Lcom/android/internal/net/ipsec/ike/message/IkeMessage;
    :cond_f7
    move-object v6, p1

    .end local p1    # "ikeMessage":Lcom/android/internal/net/ipsec/ike/message/IkeMessage;
    .restart local v6    # "ikeMessage":Lcom/android/internal/net/ipsec/ike/message/IkeMessage;
    new-instance p1, Landroid/net/ipsec/ike/exceptions/InvalidSyntaxException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected EXCHANGE_TYPE_IKE_SA_INIT but received: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p1, v2}, Landroid/net/ipsec/ike/exceptions/InvalidSyntaxException;-><init>(Ljava/lang/String;)V

    .end local v6    # "ikeMessage":Lcom/android/internal/net/ipsec/ike/message/IkeMessage;
    .end local p0    # "this":Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeInit;
    throw p1
    :try_end_111
    .catch Landroid/net/ipsec/ike/exceptions/IkeProtocolException; {:try_start_65 .. :try_end_111} :catch_111
    .catch Ljava/security/GeneralSecurityException; {:try_start_65 .. :try_end_111} :catch_111
    .catch Ljava/io/IOException; {:try_start_65 .. :try_end_111} :catch_111

    .line 3398
    .end local v0    # "exchangeType":I
    .restart local v6    # "ikeMessage":Lcom/android/internal/net/ipsec/ike/message/IkeMessage;
    .restart local p0    # "this":Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeInit;
    :catch_111
    move-exception v0

    goto :goto_115

    .end local v6    # "ikeMessage":Lcom/android/internal/net/ipsec/ike/message/IkeMessage;
    .restart local p1    # "ikeMessage":Lcom/android/internal/net/ipsec/ike/message/IkeMessage;
    :catch_113
    move-exception v0

    move-object v6, p1

    .line 3399
    .end local p1    # "ikeMessage":Lcom/android/internal/net/ipsec/ike/message/IkeMessage;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v6    # "ikeMessage":Lcom/android/internal/net/ipsec/ike/message/IkeMessage;
    :goto_115
    instance-of p1, v0, Landroid/net/ipsec/ike/exceptions/InvalidKeException;

    if-eqz p1, :cond_185

    .line 3400
    move-object v13, v0

    check-cast v13, Landroid/net/ipsec/ike/exceptions/InvalidKeException;

    .line 3402
    .local v13, "keException":Landroid/net/ipsec/ike/exceptions/InvalidKeException;
    invoke-virtual {v13}, Landroid/net/ipsec/ike/exceptions/InvalidKeException;->getDhGroup()I

    move-result v8

    .line 3403
    .local v8, "requestedDhGroup":I
    const/4 p1, 0x1

    .line 3404
    .local p1, "doAllProposalsHaveDhGroup":Z
    iget-object v2, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeInit;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v2, v2, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mIkeSessionParams:Landroid/net/ipsec/ike/IkeSessionParams;

    invoke-virtual {v2}, Landroid/net/ipsec/ike/IkeSessionParams;->getSaProposalsInternal()[Landroid/net/ipsec/ike/IkeSaProposal;

    move-result-object v2

    array-length v3, v2

    :goto_12a
    if-ge v1, v3, :cond_13f

    aget-object v4, v2, v1

    .line 3405
    .local v4, "proposal":Landroid/net/ipsec/ike/IkeSaProposal;
    nop

    .line 3406
    invoke-virtual {v4}, Landroid/net/ipsec/ike/IkeSaProposal;->getDhGroups()Ljava/util/List;

    move-result-object v5

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    and-int/2addr p1, v5

    .line 3404
    .end local v4    # "proposal":Landroid/net/ipsec/ike/IkeSaProposal;
    add-int/lit8 v1, v1, 0x1

    goto :goto_12a

    .line 3411
    :cond_13f
    if-eqz p1, :cond_185

    .line 3413
    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeInit;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    invoke-static {v1}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->-$$Nest$fgetmIkeConnectionCtrl(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;)Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeInit;->mRetransmitter:Lcom/android/internal/net/ipsec/ike/utils/Retransmitter;

    .line 3414
    invoke-virtual {v2}, Lcom/android/internal/net/ipsec/ike/utils/Retransmitter;->getMessage()Lcom/android/internal/net/ipsec/ike/message/IkeMessage;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/net/ipsec/ike/message/IkeMessage;->ikeHeader:Lcom/android/internal/net/ipsec/ike/message/IkeHeader;

    iget-wide v2, v2, Lcom/android/internal/net/ipsec/ike/message/IkeHeader;->ikeInitiatorSpi:J

    .line 3413
    invoke-virtual {v1, v2, v3}, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->unregisterIkeSpi(J)V

    .line 3415
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeInit;->mIkeInitRequestBytes:[B

    .line 3416
    iput-object v1, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeInit;->mIkeInitNoncePayload:Lcom/android/internal/net/ipsec/ike/message/IkeNoncePayload;

    .line 3418
    iget-object v7, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeInit;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v7 .. v13}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->recordMetricsEvent_SaNegotiation(IIIIILandroid/net/ipsec/ike/exceptions/IkeException;)V

    .line 3426
    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeInit;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v1, v1, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mInitial:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$Initial;

    new-instance v2, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$InitialSetupData;

    iget-object v3, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeInit;->mInitialSetupData:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$InitialSetupData;

    iget-object v3, v3, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$InitialSetupData;->firstChildSessionParams:Landroid/net/ipsec/ike/ChildSessionParams;

    iget-object v4, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeInit;->mInitialSetupData:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$InitialSetupData;

    iget-object v4, v4, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$InitialSetupData;->firstChildCallback:Landroid/net/ipsec/ike/ChildSessionCallback;

    invoke-direct {v2, v3, v4, v8}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$InitialSetupData;-><init>(Landroid/net/ipsec/ike/ChildSessionParams;Landroid/net/ipsec/ike/ChildSessionCallback;I)V

    invoke-virtual {v1, v2}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$Initial;->setIkeSetupData(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$InitialSetupData;)V

    .line 3431
    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeInit;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v2, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeInit;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v2, v2, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mInitial:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$Initial;

    invoke-virtual {v1, v2}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->transitionTo(Lcom/android/internal/net/ipsec/ike/utils/IState;)V

    .line 3432
    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeInit;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    invoke-virtual {v1}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->openSession()V

    .line 3434
    return-void

    .line 3438
    .end local v8    # "requestedDhGroup":I
    .end local v13    # "keException":Landroid/net/ipsec/ike/exceptions/InvalidKeException;
    .end local p1    # "doAllProposalsHaveDhGroup":Z
    :cond_185
    iget-object p1, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeInit;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    invoke-static {p1, v0}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->-$$Nest$mhandleIkeFatalError(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;Ljava/lang/Exception;)V

    .line 3440
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_18a
    return-void
.end method

.method public blacklist processStateMessage(Landroid/os/Message;)Z
    .registers 5
    .param p1, "message"    # Landroid/os/Message;

    .line 3259
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_30

    .line 3271
    invoke-super {p0, p1}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$BusyState;->processStateMessage(Landroid/os/Message;)Z

    move-result v0

    return v0

    .line 3267
    :sswitch_a
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeInit;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received SET_NETWORK cmd in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeInit;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    invoke-virtual {v2}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->getCurrentStateName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->logWtf(Ljava/lang/String;)V

    .line 3268
    const/4 v0, 0x0

    return v0

    .line 3261
    :sswitch_2a
    invoke-virtual {p0, p1}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeInit;->handleReceivedIkePacket(Landroid/os/Message;)V

    .line 3262
    const/4 v0, 0x1

    return v0

    nop

    :sswitch_data_30
    .sparse-switch
        0x12d -> :sswitch_2a
        0x13d -> :sswitch_a
    .end sparse-switch
.end method

.method public blacklist setIkeSetupData(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$InitialSetupData;)V
    .registers 2
    .param p1, "setupData"    # Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$InitialSetupData;

    .line 3254
    iput-object p1, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeInit;->mInitialSetupData:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$InitialSetupData;

    .line 3255
    return-void
.end method

.method protected blacklist triggerRetransmit()V
    .registers 2

    .line 3250
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeInit;->mRetransmitter:Lcom/android/internal/net/ipsec/ike/utils/Retransmitter;

    invoke-virtual {v0}, Lcom/android/internal/net/ipsec/ike/utils/Retransmitter;->retransmit()V

    .line 3251
    return-void
.end method

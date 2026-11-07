.class Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuth;
.super Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuthFirstAndLastExchangeBase;
.source "IkeSessionStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CreateIkeLocalIkeAuth"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuthFirstAndLastExchangeBase<",
        "Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$IkeInitData;",
        ">;"
    }
.end annotation


# instance fields
.field private blacklist mFirstChildReqList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/net/ipsec/ike/message/IkePayload;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mInitIdPayload:Lcom/android/internal/net/ipsec/ike/message/IkeIdPayload;

.field private blacklist mRespIdPayload:Lcom/android/internal/net/ipsec/ike/message/IkeIdPayload;

.field private blacklist mUseEap:Z

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

    .line 4111
    iput-object p1, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuth;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    invoke-direct {p0, p1}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuthFirstAndLastExchangeBase;-><init>(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;)V

    return-void
.end method

.method private blacklist authenticate(Lcom/android/internal/net/ipsec/ike/message/IkeAuthPayload;Lcom/android/internal/net/ipsec/ike/message/IkeIdPayload;Ljava/util/List;)V
    .registers 7
    .param p1, "authPayload"    # Lcom/android/internal/net/ipsec/ike/message/IkeAuthPayload;
    .param p2, "respIdPayload"    # Lcom/android/internal/net/ipsec/ike/message/IkeIdPayload;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/net/ipsec/ike/message/IkeAuthPayload;",
            "Lcom/android/internal/net/ipsec/ike/message/IkeIdPayload;",
            "Ljava/util/List<",
            "Lcom/android/internal/net/ipsec/ike/message/IkeCertPayload;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/ipsec/ike/exceptions/AuthenticationFailedException;
        }
    .end annotation

    .line 4394
    .local p3, "certPayloads":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/net/ipsec/ike/message/IkeCertPayload;>;"
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuth;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v0, v0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mIkeSessionParams:Landroid/net/ipsec/ike/IkeSessionParams;

    invoke-virtual {v0}, Landroid/net/ipsec/ike/IkeSessionParams;->getRemoteAuthConfig()Landroid/net/ipsec/ike/IkeSessionParams$IkeAuthConfig;

    move-result-object v0

    iget v0, v0, Landroid/net/ipsec/ike/IkeSessionParams$IkeAuthConfig;->mAuthMethod:I

    packed-switch v0, :pswitch_data_4c

    .line 4411
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unrecognized auth method: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/android/internal/net/ipsec/ike/message/IkeAuthPayload;->authMethod:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuth;->cleanUpAndQuit(Ljava/lang/RuntimeException;)V

    goto :goto_4b

    .line 4402
    :pswitch_2b
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuth;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v0, v0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mIkeSessionParams:Landroid/net/ipsec/ike/IkeSessionParams;

    .line 4405
    invoke-virtual {v0}, Landroid/net/ipsec/ike/IkeSessionParams;->getRemoteAuthConfig()Landroid/net/ipsec/ike/IkeSessionParams$IkeAuthConfig;

    move-result-object v0

    check-cast v0, Landroid/net/ipsec/ike/IkeSessionParams$IkeAuthDigitalSignRemoteConfig;

    iget-object v0, v0, Landroid/net/ipsec/ike/IkeSessionParams$IkeAuthDigitalSignRemoteConfig;->mTrustAnchor:Ljava/security/cert/TrustAnchor;

    .line 4402
    invoke-direct {p0, p3, v0, p1, p2}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuth;->authenticateDigitalSignature(Ljava/util/List;Ljava/security/cert/TrustAnchor;Lcom/android/internal/net/ipsec/ike/message/IkeAuthPayload;Lcom/android/internal/net/ipsec/ike/message/IkeIdPayload;)V

    .line 4409
    goto :goto_4b

    .line 4396
    :pswitch_3b
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuth;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v0, v0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mIkeSessionParams:Landroid/net/ipsec/ike/IkeSessionParams;

    .line 4397
    invoke-virtual {v0}, Landroid/net/ipsec/ike/IkeSessionParams;->getRemoteAuthConfig()Landroid/net/ipsec/ike/IkeSessionParams$IkeAuthConfig;

    move-result-object v0

    check-cast v0, Landroid/net/ipsec/ike/IkeSessionParams$IkeAuthPskConfig;

    iget-object v0, v0, Landroid/net/ipsec/ike/IkeSessionParams$IkeAuthPskConfig;->mPsk:[B

    .line 4396
    invoke-virtual {p0, v0, p1, p2}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuth;->authenticatePsk([BLcom/android/internal/net/ipsec/ike/message/IkeAuthPayload;Lcom/android/internal/net/ipsec/ike/message/IkeIdPayload;)V

    .line 4400
    nop

    .line 4415
    :goto_4b
    return-void

    :pswitch_data_4c
    .packed-switch 0x1
        :pswitch_3b
        :pswitch_2b
    .end packed-switch
.end method

.method private blacklist authenticateDigitalSignature(Ljava/util/List;Ljava/security/cert/TrustAnchor;Lcom/android/internal/net/ipsec/ike/message/IkeAuthPayload;Lcom/android/internal/net/ipsec/ike/message/IkeIdPayload;)V
    .registers 15
    .param p2, "trustAnchor"    # Ljava/security/cert/TrustAnchor;
    .param p3, "authPayload"    # Lcom/android/internal/net/ipsec/ike/message/IkeAuthPayload;
    .param p4, "respIdPayload"    # Lcom/android/internal/net/ipsec/ike/message/IkeIdPayload;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/net/ipsec/ike/message/IkeCertPayload;",
            ">;",
            "Ljava/security/cert/TrustAnchor;",
            "Lcom/android/internal/net/ipsec/ike/message/IkeAuthPayload;",
            "Lcom/android/internal/net/ipsec/ike/message/IkeIdPayload;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/ipsec/ike/exceptions/AuthenticationFailedException;
        }
    .end annotation

    .line 4423
    .local p1, "certPayloads":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/net/ipsec/ike/message/IkeCertPayload;>;"
    iget v0, p3, Lcom/android/internal/net/ipsec/ike/message/IkeAuthPayload;->authMethod:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_27

    iget v0, p3, Lcom/android/internal/net/ipsec/ike/message/IkeAuthPayload;->authMethod:I

    const/16 v1, 0xe

    if-ne v0, v1, :cond_c

    goto :goto_27

    .line 4425
    :cond_c
    new-instance v0, Landroid/net/ipsec/ike/exceptions/AuthenticationFailedException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected the remote/server to use digital-signature-based authentication but they used: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p3, Lcom/android/internal/net/ipsec/ike/message/IkeAuthPayload;->authMethod:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/net/ipsec/ike/exceptions/AuthenticationFailedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4431
    :cond_27
    :goto_27
    const/4 v0, 0x0

    .line 4432
    .local v0, "endCert":Ljava/security/cert/X509Certificate;
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 4435
    .local v1, "certList":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v4, v0

    .end local v0    # "endCert":Ljava/security/cert/X509Certificate;
    .local v4, "endCert":Ljava/security/cert/X509Certificate;
    :goto_32
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/net/ipsec/ike/message/IkeCertPayload;

    .line 4436
    .local v0, "certPayload":Lcom/android/internal/net/ipsec/ike/message/IkeCertPayload;
    move-object v3, v0

    check-cast v3, Lcom/android/internal/net/ipsec/ike/message/IkeCertX509CertPayload;

    iget-object v3, v3, Lcom/android/internal/net/ipsec/ike/message/IkeCertX509CertPayload;->certificate:Ljava/security/cert/X509Certificate;

    .line 4439
    .local v3, "cert":Ljava/security/cert/X509Certificate;
    if-nez v4, :cond_46

    move-object v4, v3

    .line 4440
    :cond_46
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4441
    .end local v0    # "certPayload":Lcom/android/internal/net/ipsec/ike/message/IkeCertPayload;
    .end local v3    # "cert":Ljava/security/cert/X509Certificate;
    goto :goto_32

    .line 4443
    :cond_4a
    if-eqz v4, :cond_7c

    .line 4448
    invoke-virtual {p4, v4}, Lcom/android/internal/net/ipsec/ike/message/IkeIdPayload;->validateEndCertIdOrThrow(Ljava/security/cert/X509Certificate;)V

    .line 4451
    const/4 v0, 0x0

    if-nez p2, :cond_54

    move-object v2, v0

    goto :goto_58

    :cond_54
    invoke-static {p2}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    .line 4453
    .local v2, "trustAnchorSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/TrustAnchor;>;"
    :goto_58
    invoke-static {v4, v1, v0, v2}, Lcom/android/internal/net/ipsec/ike/message/IkeCertPayload;->validateCertificates(Ljava/security/cert/X509Certificate;Ljava/util/List;Ljava/util/List;Ljava/util/Set;)V

    .line 4456
    move-object v3, p3

    check-cast v3, Lcom/android/internal/net/ipsec/ike/message/IkeAuthDigitalSignPayload;

    .line 4457
    .local v3, "signPayload":Lcom/android/internal/net/ipsec/ike/message/IkeAuthDigitalSignPayload;
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuth;->mSetupData:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$IkeInitData;

    iget-object v5, v0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$IkeInitData;->ikeInitResponseBytes:[B

    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuth;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v0, v0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mCurrentIkeSaRecord:Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;

    iget-object v6, v0, Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;->nonceInitiator:[B

    .line 4461
    invoke-virtual {p4}, Lcom/android/internal/net/ipsec/ike/message/IkeIdPayload;->getEncodedPayloadBody()[B

    move-result-object v7

    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuth;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v8, v0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mIkePrf:Lcom/android/internal/net/ipsec/ike/crypto/IkeMacPrf;

    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuth;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v0, v0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mCurrentIkeSaRecord:Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;

    .line 4463
    invoke-virtual {v0}, Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;->getSkPr()[B

    move-result-object v9

    .line 4457
    invoke-virtual/range {v3 .. v9}, Lcom/android/internal/net/ipsec/ike/message/IkeAuthDigitalSignPayload;->verifyInboundSignature(Ljava/security/cert/X509Certificate;[B[B[BLcom/android/internal/net/ipsec/ike/crypto/IkeMacPrf;[B)V

    .line 4464
    return-void

    .line 4444
    .end local v2    # "trustAnchorSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/TrustAnchor;>;"
    .end local v3    # "signPayload":Lcom/android/internal/net/ipsec/ike/message/IkeAuthDigitalSignPayload;
    :cond_7c
    new-instance v0, Landroid/net/ipsec/ike/exceptions/AuthenticationFailedException;

    const-string v2, "The remote/server failed to provide a end certificate"

    invoke-direct {v0, v2}, Landroid/net/ipsec/ike/exceptions/AuthenticationFailedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist buildIkeAuthReq()Lcom/android/internal/net/ipsec/ike/message/IkeMessage;
    .registers 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/IpSecManager$SpiUnavailableException;,
            Landroid/net/IpSecManager$ResourceUnavailableException;
        }
    .end annotation

    .line 4205
    move-object/from16 v0, p0

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 4208
    .local v1, "payloadList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/net/ipsec/ike/message/IkePayload;>;"
    new-instance v2, Lcom/android/internal/net/ipsec/ike/message/IkeIdPayload;

    iget-object v3, v0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuth;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v3, v3, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mIkeSessionParams:Landroid/net/ipsec/ike/IkeSessionParams;

    .line 4210
    invoke-virtual {v3}, Landroid/net/ipsec/ike/IkeSessionParams;->getLocalIdentification()Landroid/net/ipsec/ike/IkeIdentification;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {v2, v4, v3}, Lcom/android/internal/net/ipsec/ike/message/IkeIdPayload;-><init>(ZLandroid/net/ipsec/ike/IkeIdentification;)V

    iput-object v2, v0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuth;->mInitIdPayload:Lcom/android/internal/net/ipsec/ike/message/IkeIdPayload;

    .line 4211
    new-instance v2, Lcom/android/internal/net/ipsec/ike/message/IkeIdPayload;

    iget-object v3, v0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuth;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v3, v3, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mIkeSessionParams:Landroid/net/ipsec/ike/IkeSessionParams;

    .line 4213
    invoke-virtual {v3}, Landroid/net/ipsec/ike/IkeSessionParams;->getRemoteIdentification()Landroid/net/ipsec/ike/IkeIdentification;

    move-result-object v3

    const/4 v5, 0x0

    invoke-direct {v2, v5, v3}, Lcom/android/internal/net/ipsec/ike/message/IkeIdPayload;-><init>(ZLandroid/net/ipsec/ike/IkeIdentification;)V

    .line 4214
    .local v2, "respIdPayload":Lcom/android/internal/net/ipsec/ike/message/IkeIdPayload;
    iget-object v3, v0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuth;->mInitIdPayload:Lcom/android/internal/net/ipsec/ike/message/IkeIdPayload;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4215
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4217
    iget-object v3, v0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuth;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v3, v3, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mIkeSessionParams:Landroid/net/ipsec/ike/IkeSessionParams;

    invoke-virtual {v3, v4}, Landroid/net/ipsec/ike/IkeSessionParams;->hasIkeOption(I)Z

    move-result v3

    if-eqz v3, :cond_41

    .line 4218
    new-instance v3, Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;

    const/16 v6, 0x4021

    invoke-direct {v3, v6}, Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;-><init>(I)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4222
    :cond_41
    iget-object v3, v0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuth;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v3, v3, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mIkeSessionParams:Landroid/net/ipsec/ike/IkeSessionParams;

    const/4 v6, 0x2

    invoke-virtual {v3, v6}, Landroid/net/ipsec/ike/IkeSessionParams;->hasIkeOption(I)Z

    move-result v3

    if-eqz v3, :cond_56

    .line 4223
    new-instance v3, Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;

    const/16 v7, 0x400c

    invoke-direct {v3, v7}, Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;-><init>(I)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4226
    :cond_56
    iget-object v3, v0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuth;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v3, v3, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mIkeSessionParams:Landroid/net/ipsec/ike/IkeSessionParams;

    const/4 v7, 0x4

    invoke-virtual {v3, v7}, Landroid/net/ipsec/ike/IkeSessionParams;->hasIkeOption(I)Z

    move-result v3

    if-eqz v3, :cond_6b

    .line 4227
    new-instance v3, Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;

    const/16 v7, 0x4000

    invoke-direct {v3, v7}, Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;-><init>(I)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4231
    :cond_6b
    iget-object v3, v0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuth;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v3, v3, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mIkeSessionParams:Landroid/net/ipsec/ike/IkeSessionParams;

    invoke-virtual {v3}, Landroid/net/ipsec/ike/IkeSessionParams;->getLocalAuthConfig()Landroid/net/ipsec/ike/IkeSessionParams$IkeAuthConfig;

    move-result-object v3

    .line 4232
    .local v3, "authConfig":Landroid/net/ipsec/ike/IkeSessionParams$IkeAuthConfig;
    iget v7, v3, Landroid/net/ipsec/ike/IkeSessionParams$IkeAuthConfig;->mAuthMethod:I

    packed-switch v7, :pswitch_data_18c

    .line 4271
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unrecognized authentication method: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v3, Landroid/net/ipsec/ike/IkeSessionParams$IkeAuthConfig;->mAuthMethod:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuth;->cleanUpAndQuit(Ljava/lang/RuntimeException;)V

    goto/16 :goto_123

    .line 4269
    :pswitch_97
    goto/16 :goto_123

    .line 4245
    :pswitch_99
    iget-object v7, v0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuth;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v7, v7, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mIkeSessionParams:Landroid/net/ipsec/ike/IkeSessionParams;

    .line 4246
    invoke-virtual {v7}, Landroid/net/ipsec/ike/IkeSessionParams;->getLocalAuthConfig()Landroid/net/ipsec/ike/IkeSessionParams$IkeAuthConfig;

    move-result-object v7

    check-cast v7, Landroid/net/ipsec/ike/IkeSessionParams$IkeAuthDigitalSignLocalConfig;

    .line 4249
    .local v7, "localAuthConfig":Landroid/net/ipsec/ike/IkeSessionParams$IkeAuthDigitalSignLocalConfig;
    new-instance v8, Lcom/android/internal/net/ipsec/ike/message/IkeCertX509CertPayload;

    .line 4250
    invoke-virtual {v7}, Landroid/net/ipsec/ike/IkeSessionParams$IkeAuthDigitalSignLocalConfig;->getClientEndCertificate()Ljava/security/cert/X509Certificate;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/android/internal/net/ipsec/ike/message/IkeCertX509CertPayload;-><init>(Ljava/security/cert/X509Certificate;)V

    .line 4249
    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4251
    iget-object v8, v7, Landroid/net/ipsec/ike/IkeSessionParams$IkeAuthDigitalSignLocalConfig;->mIntermediateCerts:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_b5
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_ca

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/security/cert/X509Certificate;

    .line 4252
    .local v9, "intermediateCert":Ljava/security/cert/X509Certificate;
    new-instance v10, Lcom/android/internal/net/ipsec/ike/message/IkeCertX509CertPayload;

    invoke-direct {v10, v9}, Lcom/android/internal/net/ipsec/ike/message/IkeCertX509CertPayload;-><init>(Ljava/security/cert/X509Certificate;)V

    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4253
    .end local v9    # "intermediateCert":Ljava/security/cert/X509Certificate;
    goto :goto_b5

    .line 4255
    :cond_ca
    new-instance v11, Lcom/android/internal/net/ipsec/ike/message/IkeAuthDigitalSignPayload;

    iget-object v8, v0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuth;->mSetupData:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$IkeInitData;

    iget-object v12, v8, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$IkeInitData;->peerSignatureHashAlgorithms:Ljava/util/Set;

    iget-object v13, v7, Landroid/net/ipsec/ike/IkeSessionParams$IkeAuthDigitalSignLocalConfig;->mPrivateKey:Ljava/security/PrivateKey;

    iget-object v8, v0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuth;->mSetupData:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$IkeInitData;

    iget-object v14, v8, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$IkeInitData;->ikeInitRequestBytes:[B

    iget-object v8, v0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuth;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v8, v8, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mCurrentIkeSaRecord:Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;

    iget-object v15, v8, Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;->nonceResponder:[B

    iget-object v8, v0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuth;->mInitIdPayload:Lcom/android/internal/net/ipsec/ike/message/IkeIdPayload;

    .line 4261
    invoke-virtual {v8}, Lcom/android/internal/net/ipsec/ike/message/IkeIdPayload;->getEncodedPayloadBody()[B

    move-result-object v16

    iget-object v8, v0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuth;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v8, v8, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mIkePrf:Lcom/android/internal/net/ipsec/ike/crypto/IkeMacPrf;

    iget-object v9, v0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuth;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v9, v9, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mCurrentIkeSaRecord:Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;

    .line 4263
    invoke-virtual {v9}, Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;->getSkPi()[B

    move-result-object v18

    move-object/from16 v17, v8

    invoke-direct/range {v11 .. v18}, Lcom/android/internal/net/ipsec/ike/message/IkeAuthDigitalSignPayload;-><init>(Ljava/util/Set;Ljava/security/PrivateKey;[B[B[BLcom/android/internal/net/ipsec/ike/crypto/IkeMacPrf;[B)V

    .line 4264
    .local v11, "digitalSignaturePayload":Lcom/android/internal/net/ipsec/ike/message/IkeAuthDigitalSignPayload;
    invoke-interface {v1, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4266
    goto :goto_123

    .line 4234
    .end local v7    # "localAuthConfig":Landroid/net/ipsec/ike/IkeSessionParams$IkeAuthDigitalSignLocalConfig;
    .end local v11    # "digitalSignaturePayload":Lcom/android/internal/net/ipsec/ike/message/IkeAuthDigitalSignPayload;
    :pswitch_f7
    new-instance v12, Lcom/android/internal/net/ipsec/ike/message/IkeAuthPskPayload;

    move-object v7, v3

    check-cast v7, Landroid/net/ipsec/ike/IkeSessionParams$IkeAuthPskConfig;

    iget-object v13, v7, Landroid/net/ipsec/ike/IkeSessionParams$IkeAuthPskConfig;->mPsk:[B

    iget-object v7, v0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuth;->mSetupData:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$IkeInitData;

    iget-object v14, v7, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$IkeInitData;->ikeInitRequestBytes:[B

    iget-object v7, v0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuth;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v7, v7, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mCurrentIkeSaRecord:Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;

    iget-object v15, v7, Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;->nonceResponder:[B

    iget-object v7, v0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuth;->mInitIdPayload:Lcom/android/internal/net/ipsec/ike/message/IkeIdPayload;

    .line 4239
    invoke-virtual {v7}, Lcom/android/internal/net/ipsec/ike/message/IkeIdPayload;->getEncodedPayloadBody()[B

    move-result-object v16

    iget-object v7, v0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuth;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v7, v7, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mIkePrf:Lcom/android/internal/net/ipsec/ike/crypto/IkeMacPrf;

    iget-object v8, v0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuth;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v8, v8, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mCurrentIkeSaRecord:Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;

    .line 4241
    invoke-virtual {v8}, Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;->getSkPi()[B

    move-result-object v18

    move-object/from16 v17, v7

    invoke-direct/range {v12 .. v18}, Lcom/android/internal/net/ipsec/ike/message/IkeAuthPskPayload;-><init>([B[B[B[BLcom/android/internal/net/ipsec/ike/crypto/IkeMacPrf;[B)V

    .line 4242
    .local v12, "pskPayload":Lcom/android/internal/net/ipsec/ike/message/IkeAuthPskPayload;
    invoke-interface {v1, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4243
    nop

    .line 4277
    .end local v12    # "pskPayload":Lcom/android/internal/net/ipsec/ike/message/IkeAuthPskPayload;
    :goto_123
    iget-object v7, v0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuth;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v7, v7, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mIkeContext:Lcom/android/internal/net/ipsec/ike/IkeContext;

    .line 4279
    invoke-virtual {v7}, Lcom/android/internal/net/ipsec/ike/IkeContext;->getRandomnessFactory()Lcom/android/internal/net/ipsec/ike/utils/RandomnessFactory;

    move-result-object v7

    iget-object v8, v0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuth;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    invoke-static {v8}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->-$$Nest$fgetmIpSecSpiGenerator(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;)Lcom/android/internal/net/ipsec/ike/utils/IpSecSpiGenerator;

    move-result-object v8

    iget-object v9, v0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuth;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    invoke-static {v9}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->-$$Nest$fgetmIkeConnectionCtrl(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;)Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;

    move-result-object v9

    .line 4281
    invoke-virtual {v9}, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v9

    iget-object v10, v0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuth;->mSetupData:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$IkeInitData;

    iget-object v10, v10, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$IkeInitData;->firstChildSessionParams:Landroid/net/ipsec/ike/ChildSessionParams;

    .line 4278
    invoke-static {v7, v8, v9, v10, v4}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$CreateChildSaHelper;->getInitChildCreateReqPayloads(Lcom/android/internal/net/ipsec/ike/utils/RandomnessFactory;Lcom/android/internal/net/ipsec/ike/utils/IpSecSpiGenerator;Ljava/net/InetAddress;Landroid/net/ipsec/ike/ChildSessionParams;Z)Ljava/util/List;

    move-result-object v4

    .line 4277
    invoke-interface {v1, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 4285
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 4286
    .local v4, "configAttributes":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$ConfigAttribute;>;"
    iget-object v7, v0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuth;->mSetupData:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$IkeInitData;

    iget-object v7, v7, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$IkeInitData;->firstChildSessionParams:Landroid/net/ipsec/ike/ChildSessionParams;

    .line 4288
    invoke-static {v7}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$CreateChildSaHelper;->getConfigAttributes(Landroid/net/ipsec/ike/ChildSessionParams;)[Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$ConfigAttribute;

    move-result-object v7

    .line 4287
    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    .line 4286
    invoke-interface {v4, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 4290
    iget-object v7, v0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuth;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v7, v7, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mIkeSessionParams:Landroid/net/ipsec/ike/IkeSessionParams;

    .line 4291
    invoke-virtual {v7}, Landroid/net/ipsec/ike/IkeSessionParams;->getConfigurationAttributesInternal()[Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$IkeConfigAttribute;

    move-result-object v7

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    .line 4290
    invoke-interface {v4, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 4293
    new-instance v7, Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$ConfigAttributeAppVersion;

    invoke-direct {v7}, Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$ConfigAttributeAppVersion;-><init>()V

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4294
    new-instance v7, Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload;

    invoke-direct {v7, v5, v4}, Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload;-><init>(ZLjava/util/List;)V

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4297
    iget-object v5, v0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuth;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    invoke-static {v5}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->-$$Nest$fgetmIke3gppExtensionExchange(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;)Lcom/android/internal/net/ipsec/ike/ike3gpp/Ike3gppExtensionExchange;

    move-result-object v5

    .line 4298
    invoke-virtual {v5, v6}, Lcom/android/internal/net/ipsec/ike/ike3gpp/Ike3gppExtensionExchange;->getRequestPayloads(I)Ljava/util/List;

    move-result-object v5

    .line 4297
    invoke-interface {v1, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 4300
    invoke-virtual {v0, v1}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuth;->buildIkeAuthReqMessage(Ljava/util/List;)Lcom/android/internal/net/ipsec/ike/message/IkeMessage;

    move-result-object v5

    return-object v5

    nop

    :pswitch_data_18c
    .packed-switch 0x1
        :pswitch_f7
        :pswitch_99
        :pswitch_97
    .end packed-switch
.end method

.method private blacklist validateIkeAuthResp(Lcom/android/internal/net/ipsec/ike/message/IkeMessage;)Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$MsgValidationResult;
    .registers 11
    .param p1, "authResp"    # Lcom/android/internal/net/ipsec/ike/message/IkeMessage;

    .line 4305
    const/4 v0, 0x0

    .line 4306
    .local v0, "authPayload":Lcom/android/internal/net/ipsec/ike/message/IkeAuthPayload;
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 4310
    .local v1, "certPayloads":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/net/ipsec/ike/message/IkeCertPayload;>;"
    const/4 v2, 0x0

    .line 4312
    .local v2, "ike3gppPayloads":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/net/ipsec/ike/message/IkePayload;>;"
    :try_start_7
    iget-object v3, p1, Lcom/android/internal/net/ipsec/ike/message/IkeMessage;->ikePayloadList:Ljava/util/List;

    .line 4313
    const/4 v4, 0x2

    invoke-virtual {p0, v4, v3}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuth;->handle3gppRespAndExtractNonError3gppPayloads(ILjava/util/List;)Ljava/util/List;

    move-result-object v3
    :try_end_e
    .catch Landroid/net/ipsec/ike/exceptions/InvalidSyntaxException; {:try_start_7 .. :try_end_e} :catch_d1

    .line 4317
    .end local v2    # "ike3gppPayloads":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/net/ipsec/ike/message/IkePayload;>;"
    .local v3, "ike3gppPayloads":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/net/ipsec/ike/message/IkePayload;>;"
    nop

    .line 4319
    new-instance v2, Ljava/util/ArrayList;

    iget-object v4, p1, Lcom/android/internal/net/ipsec/ike/message/IkeMessage;->ikePayloadList:Ljava/util/List;

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 4320
    .local v2, "payloadsWithout3gpp":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/net/ipsec/ike/message/IkePayload;>;"
    invoke-interface {v2, v3}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 4322
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/net/ipsec/ike/message/IkePayload;

    .line 4323
    .local v5, "payload":Lcom/android/internal/net/ipsec/ike/message/IkePayload;
    iget v6, v5, Lcom/android/internal/net/ipsec/ike/message/IkePayload;->payloadType:I

    packed-switch v6, :pswitch_data_d8

    .line 4359
    :pswitch_2e
    iget-object v6, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuth;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

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

    goto :goto_9b

    .line 4343
    :pswitch_49
    move-object v6, v5

    check-cast v6, Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;

    const-class v7, Lcom/android/internal/net/ipsec/ike/message/IkeAuthPayload;

    .line 4346
    const/16 v8, 0x27

    invoke-virtual {p1, v8, v7}, Lcom/android/internal/net/ipsec/ike/message/IkeMessage;->getPayloadForType(ILjava/lang/Class;)Lcom/android/internal/net/ipsec/ike/message/IkePayload;

    move-result-object v7

    check-cast v7, Lcom/android/internal/net/ipsec/ike/message/IkeAuthPayload;

    .line 4344
    invoke-virtual {p0, v6, v7}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuth;->handleNotifyInLastAuthResp(Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;Lcom/android/internal/net/ipsec/ike/message/IkeAuthPayload;)Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$MsgValidationResult;

    move-result-object v6

    .line 4348
    .local v6, "result":Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$MsgValidationResult;
    invoke-virtual {v6}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$MsgValidationResult;->getResult()I

    move-result v7

    if-eqz v7, :cond_9b

    .line 4349
    return-object v6

    .line 4337
    .end local v6    # "result":Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$MsgValidationResult;
    :pswitch_61
    move-object v0, v5

    check-cast v0, Lcom/android/internal/net/ipsec/ike/message/IkeAuthPayload;

    .line 4338
    goto :goto_9b

    .line 4340
    :pswitch_65
    move-object v6, v5

    check-cast v6, Lcom/android/internal/net/ipsec/ike/message/IkeCertPayload;

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4341
    goto :goto_9b

    .line 4325
    :pswitch_6c
    move-object v6, v5

    check-cast v6, Lcom/android/internal/net/ipsec/ike/message/IkeIdPayload;

    iput-object v6, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuth;->mRespIdPayload:Lcom/android/internal/net/ipsec/ike/message/IkeIdPayload;

    .line 4326
    iget-object v6, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuth;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v6, v6, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mIkeSessionParams:Landroid/net/ipsec/ike/IkeSessionParams;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/net/ipsec/ike/IkeSessionParams;->hasIkeOption(I)Z

    move-result v6

    if-nez v6, :cond_9b

    iget-object v6, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuth;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v6, v6, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mIkeSessionParams:Landroid/net/ipsec/ike/IkeSessionParams;

    .line 4329
    invoke-virtual {v6}, Landroid/net/ipsec/ike/IkeSessionParams;->getRemoteIdentification()Landroid/net/ipsec/ike/IkeIdentification;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuth;->mRespIdPayload:Lcom/android/internal/net/ipsec/ike/message/IkeIdPayload;

    iget-object v7, v7, Lcom/android/internal/net/ipsec/ike/message/IkeIdPayload;->ikeId:Landroid/net/ipsec/ike/IkeIdentification;

    .line 4330
    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_9b

    .line 4331
    new-instance v4, Landroid/net/ipsec/ike/exceptions/AuthenticationFailedException;

    const-string v6, "Unrecognized Responder Identification."

    invoke-direct {v4, v6}, Landroid/net/ipsec/ike/exceptions/AuthenticationFailedException;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$MsgValidationResult;->newResultInvalidMsg(Landroid/net/ipsec/ike/exceptions/IkeException;)Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$MsgValidationResult;

    move-result-object v4

    return-object v4

    .line 4357
    :pswitch_9a
    nop

    .line 4364
    .end local v5    # "payload":Lcom/android/internal/net/ipsec/ike/message/IkePayload;
    :cond_9b
    :goto_9b
    goto :goto_1d

    .line 4367
    :cond_9c
    if-nez v0, :cond_ae

    iget-object v4, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuth;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v4, v4, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mIkeSessionParams:Landroid/net/ipsec/ike/IkeSessionParams;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/net/ipsec/ike/IkeSessionParams;->hasIkeOption(I)Z

    move-result v4

    if-eqz v4, :cond_ae

    .line 4372
    invoke-static {}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$MsgValidationResult;->newResultOk()Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$MsgValidationResult;

    move-result-object v4

    return-object v4

    .line 4377
    :cond_ae
    if-eqz v0, :cond_c4

    :try_start_b0
    iget-object v4, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuth;->mRespIdPayload:Lcom/android/internal/net/ipsec/ike/message/IkeIdPayload;

    if-eqz v4, :cond_c4

    .line 4378
    iget-object v4, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuth;->mRespIdPayload:Lcom/android/internal/net/ipsec/ike/message/IkeIdPayload;

    invoke-direct {p0, v0, v4, v1}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuth;->authenticate(Lcom/android/internal/net/ipsec/ike/message/IkeAuthPayload;Lcom/android/internal/net/ipsec/ike/message/IkeIdPayload;Ljava/util/List;)V

    .line 4379
    invoke-static {}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$MsgValidationResult;->newResultOk()Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$MsgValidationResult;

    move-result-object v4
    :try_end_bd
    .catch Landroid/net/ipsec/ike/exceptions/AuthenticationFailedException; {:try_start_b0 .. :try_end_bd} :catch_be

    return-object v4

    .line 4381
    :catch_be
    move-exception v4

    .line 4382
    .local v4, "e":Landroid/net/ipsec/ike/exceptions/AuthenticationFailedException;
    invoke-static {v4}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$MsgValidationResult;->newResultInvalidMsg(Landroid/net/ipsec/ike/exceptions/IkeException;)Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$MsgValidationResult;

    move-result-object v5

    return-object v5

    .line 4383
    .end local v4    # "e":Landroid/net/ipsec/ike/exceptions/AuthenticationFailedException;
    :cond_c4
    nop

    .line 4385
    new-instance v4, Landroid/net/ipsec/ike/exceptions/AuthenticationFailedException;

    const-string v5, "ID-Responder or Auth payload is missing."

    invoke-direct {v4, v5}, Landroid/net/ipsec/ike/exceptions/AuthenticationFailedException;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$MsgValidationResult;->newResultInvalidMsg(Landroid/net/ipsec/ike/exceptions/IkeException;)Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$MsgValidationResult;

    move-result-object v4

    return-object v4

    .line 4315
    .end local v3    # "ike3gppPayloads":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/net/ipsec/ike/message/IkePayload;>;"
    .local v2, "ike3gppPayloads":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/net/ipsec/ike/message/IkePayload;>;"
    :catch_d1
    move-exception v3

    .line 4316
    .local v3, "e":Landroid/net/ipsec/ike/exceptions/InvalidSyntaxException;
    invoke-static {v3}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$MsgValidationResult;->newResultInvalidMsg(Landroid/net/ipsec/ike/exceptions/IkeException;)Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$MsgValidationResult;

    move-result-object v4

    return-object v4

    nop

    :pswitch_data_d8
    .packed-switch 0x21
        :pswitch_9a
        :pswitch_2e
        :pswitch_2e
        :pswitch_6c
        :pswitch_65
        :pswitch_2e
        :pswitch_61
        :pswitch_2e
        :pswitch_49
        :pswitch_2e
        :pswitch_2e
        :pswitch_9a
        :pswitch_9a
        :pswitch_2e
        :pswitch_9a
        :pswitch_9a
    .end packed-switch
.end method


# virtual methods
.method public blacklist enterState()V
    .registers 4

    .line 4120
    :try_start_0
    invoke-super {p0}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuthFirstAndLastExchangeBase;->enterState()V

    .line 4121
    new-instance v0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$EncryptedRetransmitter;

    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuth;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    invoke-direct {p0}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuth;->buildIkeAuthReq()Lcom/android/internal/net/ipsec/ike/message/IkeMessage;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$EncryptedRetransmitter;-><init>(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;Lcom/android/internal/net/ipsec/ike/message/IkeMessage;)V

    iput-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuth;->mRetransmitter:Lcom/android/internal/net/ipsec/ike/utils/Retransmitter;

    .line 4122
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuth;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v0, v0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mIkeSessionParams:Landroid/net/ipsec/ike/IkeSessionParams;

    .line 4124
    invoke-virtual {v0}, Landroid/net/ipsec/ike/IkeSessionParams;->getLocalAuthConfig()Landroid/net/ipsec/ike/IkeSessionParams$IkeAuthConfig;

    move-result-object v0

    iget v0, v0, Landroid/net/ipsec/ike/IkeSessionParams$IkeAuthConfig;->mAuthMethod:I

    const/4 v1, 0x3

    if-ne v1, v0, :cond_1f

    const/4 v0, 0x1

    goto :goto_20

    :cond_1f
    const/4 v0, 0x0

    :goto_20
    iput-boolean v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuth;->mUseEap:Z
    :try_end_22
    .catch Landroid/net/IpSecManager$SpiUnavailableException; {:try_start_0 .. :try_end_22} :catch_23
    .catch Landroid/net/IpSecManager$ResourceUnavailableException; {:try_start_0 .. :try_end_22} :catch_23

    .line 4128
    goto :goto_29

    .line 4125
    :catch_23
    move-exception v0

    .line 4127
    .local v0, "e":Landroid/util/AndroidException;
    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuth;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    invoke-static {v1, v0}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->-$$Nest$mhandleIkeFatalError(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;Ljava/lang/Exception;)V

    .line 4129
    .end local v0    # "e":Landroid/util/AndroidException;
    :goto_29
    return-void
.end method

.method public blacklist exitState()V
    .registers 2

    .line 4468
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuth;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-boolean v0, v0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mIsClosing:Z

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuth;->mFirstChildReqList:Ljava/util/List;

    if-eqz v0, :cond_f

    .line 4469
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuth;->mFirstChildReqList:Ljava/util/List;

    invoke-static {v0}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$CreateChildSaHelper;->releaseSpiResources(Ljava/util/List;)V

    .line 4471
    :cond_f
    invoke-super {p0}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuthFirstAndLastExchangeBase;->exitState()V

    .line 4472
    return-void
.end method

.method protected blacklist getMetricsStateCode()I
    .registers 2

    .line 4476
    const/4 v0, 0x4

    return v0
.end method

.method protected blacklist handleResponseGenericProcessError(Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;Landroid/net/ipsec/ike/exceptions/InvalidSyntaxException;)V
    .registers 5
    .param p1, "ikeSaRecord"    # Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;
    .param p2, "ikeException"    # Landroid/net/ipsec/ike/exceptions/InvalidSyntaxException;

    .line 4196
    iget-boolean v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuth;->mUseEap:Z

    if-nez v0, :cond_11

    .line 4198
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuth;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuth;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v1, v1, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mCurrentIkeSaRecord:Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;

    invoke-virtual {p0, v1}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuth;->buildIkeDeleteReq(Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;)Lcom/android/internal/net/ipsec/ike/message/IkeMessage;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->sendEncryptedIkeMessage(Lcom/android/internal/net/ipsec/ike/message/IkeMessage;)V

    .line 4200
    :cond_11
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuth;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    invoke-static {v0, p2}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->-$$Nest$mhandleIkeFatalError(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;Ljava/lang/Exception;)V

    .line 4201
    return-void
.end method

.method protected blacklist handleResponseIkeMessage(Lcom/android/internal/net/ipsec/ike/message/IkeMessage;)V
    .registers 3
    .param p1, "ikeMessage"    # Lcom/android/internal/net/ipsec/ike/message/IkeMessage;

    .line 4147
    iget-boolean v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuth;->mUseEap:Z

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuth;->handleIkeAuthResponse(Lcom/android/internal/net/ipsec/ike/message/IkeMessage;Z)V

    .line 4148
    return-void
.end method

.method public blacklist processStateMessage(Landroid/os/Message;)Z
    .registers 5
    .param p1, "message"    # Landroid/os/Message;

    .line 4133
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_2a

    .line 4141
    invoke-super {p0, p1}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuthFirstAndLastExchangeBase;->processStateMessage(Landroid/os/Message;)Z

    move-result v0

    return v0

    .line 4137
    :pswitch_a
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuth;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received SET_NETWORK cmd in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuth;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    invoke-virtual {v2}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->getCurrentStateName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->logWtf(Ljava/lang/String;)V

    .line 4138
    const/4 v0, 0x0

    return v0

    :pswitch_data_2a
    .packed-switch 0x13d
        :pswitch_a
    .end packed-switch
.end method

.method public blacklist validateAuthRespAndTakeNextStep(Lcom/android/internal/net/ipsec/ike/message/IkeMessage;)Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$MsgValidationResult;
    .registers 11
    .param p1, "ikeMessage"    # Lcom/android/internal/net/ipsec/ike/message/IkeMessage;

    .line 4152
    invoke-direct {p0, p1}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuth;->validateIkeAuthResp(Lcom/android/internal/net/ipsec/ike/message/IkeMessage;)Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$MsgValidationResult;

    move-result-object v0

    .line 4153
    .local v0, "validateResult":Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$MsgValidationResult;
    invoke-virtual {v0}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$MsgValidationResult;->getResult()I

    move-result v1

    if-eqz v1, :cond_b

    .line 4154
    return-object v0

    .line 4157
    :cond_b
    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuth;->mRetransmitter:Lcom/android/internal/net/ipsec/ike/utils/Retransmitter;

    .line 4158
    invoke-virtual {v1}, Lcom/android/internal/net/ipsec/ike/utils/Retransmitter;->getMessage()Lcom/android/internal/net/ipsec/ike/message/IkeMessage;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuth;->extractChildPayloadsFromMessage(Lcom/android/internal/net/ipsec/ike/message/IkeMessage;)Ljava/util/List;

    move-result-object v1

    .line 4159
    .local v1, "childReqList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/net/ipsec/ike/message/IkePayload;>;"
    iget-boolean v2, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuth;->mUseEap:Z

    if-eqz v2, :cond_5e

    .line 4162
    iput-object v1, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuth;->mFirstChildReqList:Ljava/util/List;

    .line 4164
    const-class v2, Lcom/android/internal/net/ipsec/ike/message/IkeEapPayload;

    .line 4165
    const/16 v3, 0x30

    invoke-virtual {p1, v3, v2}, Lcom/android/internal/net/ipsec/ike/message/IkeMessage;->getPayloadForType(ILjava/lang/Class;)Lcom/android/internal/net/ipsec/ike/message/IkePayload;

    move-result-object v2

    check-cast v2, Lcom/android/internal/net/ipsec/ike/message/IkeEapPayload;

    .line 4167
    .local v2, "ikeEapPayload":Lcom/android/internal/net/ipsec/ike/message/IkeEapPayload;
    if-nez v2, :cond_33

    .line 4168
    new-instance v3, Landroid/net/ipsec/ike/exceptions/AuthenticationFailedException;

    const-string v4, "Missing EAP payload"

    invoke-direct {v3, v4}, Landroid/net/ipsec/ike/exceptions/AuthenticationFailedException;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$MsgValidationResult;->newResultInvalidMsg(Landroid/net/ipsec/ike/exceptions/IkeException;)Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$MsgValidationResult;

    move-result-object v3

    return-object v3

    .line 4172
    :cond_33
    iget-object v3, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuth;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v4, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuth;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    const/16 v5, 0x135

    invoke-virtual {v4, v5, v2}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->deferMessage(Landroid/os/Message;)V

    .line 4174
    iget-object v3, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuth;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v3, v3, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mCreateIkeLocalIkeAuthInEap:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuthInEap;

    new-instance v4, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$IkeAuthData;

    iget-object v5, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuth;->mSetupData:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$IkeInitData;

    iget-object v6, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuth;->mInitIdPayload:Lcom/android/internal/net/ipsec/ike/message/IkeIdPayload;

    iget-object v7, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuth;->mRespIdPayload:Lcom/android/internal/net/ipsec/ike/message/IkeIdPayload;

    iget-object v8, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuth;->mFirstChildReqList:Ljava/util/List;

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$IkeAuthData;-><init>(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$IkeInitData;Lcom/android/internal/net/ipsec/ike/message/IkeIdPayload;Lcom/android/internal/net/ipsec/ike/message/IkeIdPayload;Ljava/util/List;)V

    invoke-virtual {v3, v4}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuthInEap;->setIkeSetupData(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$IkeInitData;)V

    .line 4177
    iget-object v3, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuth;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v4, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuth;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v4, v4, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mCreateIkeLocalIkeAuthInEap:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuthInEap;

    invoke-virtual {v3, v4}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->transitionTo(Lcom/android/internal/net/ipsec/ike/utils/IState;)V

    .line 4178
    .end local v2    # "ikeEapPayload":Lcom/android/internal/net/ipsec/ike/message/IkeEapPayload;
    goto :goto_6d

    .line 4180
    :cond_5e
    :try_start_5e
    invoke-virtual {p0}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuth;->maybeEnableMobility()V
    :try_end_61
    .catch Landroid/net/ipsec/ike/exceptions/IkeException; {:try_start_5e .. :try_end_61} :catch_72

    .line 4183
    nop

    .line 4185
    invoke-virtual {p0, p1}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuth;->notifyIkeSessionSetup(Lcom/android/internal/net/ipsec/ike/message/IkeMessage;)V

    .line 4186
    nop

    .line 4187
    invoke-virtual {p0, p1}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuth;->extractChildPayloadsFromMessage(Lcom/android/internal/net/ipsec/ike/message/IkeMessage;)Ljava/util/List;

    move-result-object v2

    .line 4186
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuth;->performFirstChildNegotiation(Ljava/util/List;Ljava/util/List;)V

    .line 4190
    :goto_6d
    invoke-static {}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$MsgValidationResult;->newResultOk()Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$MsgValidationResult;

    move-result-object v2

    return-object v2

    .line 4181
    :catch_72
    move-exception v2

    .line 4182
    .local v2, "e":Landroid/net/ipsec/ike/exceptions/IkeException;
    invoke-static {v2}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$MsgValidationResult;->newResultInvalidMsg(Landroid/net/ipsec/ike/exceptions/IkeException;)Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$MsgValidationResult;

    move-result-object v3

    return-object v3
.end method

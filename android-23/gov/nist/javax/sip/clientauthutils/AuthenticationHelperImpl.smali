.class public Lgov/nist/javax/sip/clientauthutils/AuthenticationHelperImpl;
.super Ljava/lang/Object;
.source "AuthenticationHelperImpl.java"

# interfaces
.implements Lgov/nist/javax/sip/clientauthutils/AuthenticationHelper;


# instance fields
.field private accountManager:Ljava/lang/Object;

.field private cachedCredentials:Lgov/nist/javax/sip/clientauthutils/CredentialsCache;

.field private headerFactory:Ljavax/sip/header/HeaderFactory;

.field private sipStack:Lgov/nist/javax/sip/SipStackImpl;

.field timer:Ljava/util/Timer;


# direct methods
.method public constructor <init>(Lgov/nist/javax/sip/SipStackImpl;Lgov/nist/javax/sip/clientauthutils/AccountManager;Ljavax/sip/header/HeaderFactory;)V
    .locals 2
    .param p1, "sipStack"    # Lgov/nist/javax/sip/SipStackImpl;
    .param p2, "accountManager"    # Lgov/nist/javax/sip/clientauthutils/AccountManager;
    .param p3, "headerFactory"    # Ljavax/sip/header/HeaderFactory;

    #@0
    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 73
    const/4 v0, 0x0

    #@4
    iput-object v0, p0, Lgov/nist/javax/sip/clientauthutils/AuthenticationHelperImpl;->accountManager:Ljava/lang/Object;

    #@6
    .line 94
    iput-object p2, p0, Lgov/nist/javax/sip/clientauthutils/AuthenticationHelperImpl;->accountManager:Ljava/lang/Object;

    #@8
    .line 95
    iput-object p3, p0, Lgov/nist/javax/sip/clientauthutils/AuthenticationHelperImpl;->headerFactory:Ljavax/sip/header/HeaderFactory;

    #@a
    .line 96
    iput-object p1, p0, Lgov/nist/javax/sip/clientauthutils/AuthenticationHelperImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    #@c
    .line 98
    new-instance v0, Lgov/nist/javax/sip/clientauthutils/CredentialsCache;

    #@e
    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getTimer()Ljava/util/Timer;

    #@11
    move-result-object v1

    #@12
    invoke-direct {v0, v1}, Lgov/nist/javax/sip/clientauthutils/CredentialsCache;-><init>(Ljava/util/Timer;)V

    #@15
    iput-object v0, p0, Lgov/nist/javax/sip/clientauthutils/AuthenticationHelperImpl;->cachedCredentials:Lgov/nist/javax/sip/clientauthutils/CredentialsCache;

    #@17
    .line 93
    return-void
.end method

.method public constructor <init>(Lgov/nist/javax/sip/SipStackImpl;Lgov/nist/javax/sip/clientauthutils/SecureAccountManager;Ljavax/sip/header/HeaderFactory;)V
    .locals 2
    .param p1, "sipStack"    # Lgov/nist/javax/sip/SipStackImpl;
    .param p2, "accountManager"    # Lgov/nist/javax/sip/clientauthutils/SecureAccountManager;
    .param p3, "headerFactory"    # Ljavax/sip/header/HeaderFactory;

    #@0
    .prologue
    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 73
    const/4 v0, 0x0

    #@4
    iput-object v0, p0, Lgov/nist/javax/sip/clientauthutils/AuthenticationHelperImpl;->accountManager:Ljava/lang/Object;

    #@6
    .line 111
    iput-object p2, p0, Lgov/nist/javax/sip/clientauthutils/AuthenticationHelperImpl;->accountManager:Ljava/lang/Object;

    #@8
    .line 112
    iput-object p3, p0, Lgov/nist/javax/sip/clientauthutils/AuthenticationHelperImpl;->headerFactory:Ljavax/sip/header/HeaderFactory;

    #@a
    .line 113
    iput-object p1, p0, Lgov/nist/javax/sip/clientauthutils/AuthenticationHelperImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    #@c
    .line 115
    new-instance v0, Lgov/nist/javax/sip/clientauthutils/CredentialsCache;

    #@e
    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getTimer()Ljava/util/Timer;

    #@11
    move-result-object v1

    #@12
    invoke-direct {v0, v1}, Lgov/nist/javax/sip/clientauthutils/CredentialsCache;-><init>(Ljava/util/Timer;)V

    #@15
    iput-object v0, p0, Lgov/nist/javax/sip/clientauthutils/AuthenticationHelperImpl;->cachedCredentials:Lgov/nist/javax/sip/clientauthutils/CredentialsCache;

    #@17
    .line 110
    return-void
.end method

.method private getAuthorization(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljavax/sip/header/WWWAuthenticateHeader;Lgov/nist/javax/sip/clientauthutils/UserCredentialHash;)Ljavax/sip/header/AuthorizationHeader;
    .locals 15
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "uri"    # Ljava/lang/String;
    .param p3, "requestBody"    # Ljava/lang/String;
    .param p4, "authHeader"    # Ljavax/sip/header/WWWAuthenticateHeader;
    .param p5, "userCredentials"    # Lgov/nist/javax/sip/clientauthutils/UserCredentialHash;

    #@0
    .prologue
    .line 364
    const/4 v14, 0x0

    #@1
    .line 368
    .local v14, "response":Ljava/lang/String;
    invoke-interface/range {p4 .. p4}, Ljavax/sip/header/WWWAuthenticateHeader;->getQop()Ljava/lang/String;

    #@4
    move-result-object v13

    #@5
    .line 369
    .local v13, "qopList":Ljava/lang/String;
    if-eqz v13, :cond_3

    #@7
    const-string/jumbo v9, "auth"

    #@a
    .line 370
    :goto_0
    const-string/jumbo v4, "00000001"

    #@d
    .line 371
    .local v4, "nc_value":Ljava/lang/String;
    const-string/jumbo v5, "xyz"

    #@10
    .line 373
    .local v5, "cnonce":Ljava/lang/String;
    invoke-interface/range {p4 .. p4}, Ljavax/sip/header/WWWAuthenticateHeader;->getAlgorithm()Ljava/lang/String;

    #@13
    move-result-object v1

    #@14
    .line 374
    invoke-interface/range {p5 .. p5}, Lgov/nist/javax/sip/clientauthutils/UserCredentialHash;->getHashUserDomainPassword()Ljava/lang/String;

    #@17
    move-result-object v2

    #@18
    invoke-interface/range {p4 .. p4}, Ljavax/sip/header/WWWAuthenticateHeader;->getNonce()Ljava/lang/String;

    #@1b
    move-result-object v3

    #@1c
    .line 376
    iget-object v6, p0, Lgov/nist/javax/sip/clientauthutils/AuthenticationHelperImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    #@1e
    invoke-virtual {v6}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    #@21
    move-result-object v10

    #@22
    move-object/from16 v6, p1

    #@24
    move-object/from16 v7, p2

    #@26
    move-object/from16 v8, p3

    #@28
    .line 373
    invoke-static/range {v1 .. v10}, Lgov/nist/javax/sip/clientauthutils/MessageDigestAlgorithm;->calculateResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lgov/nist/core/StackLogger;)Ljava/lang/String;

    #@2b
    move-result-object v14

    #@2c
    .line 378
    .local v14, "response":Ljava/lang/String;
    const/4 v11, 0x0

    #@2d
    .line 380
    .local v11, "authorization":Ljavax/sip/header/AuthorizationHeader;
    :try_start_0
    move-object/from16 v0, p4

    #@2f
    instance-of v1, v0, Ljavax/sip/header/ProxyAuthenticateHeader;

    #@31
    if-eqz v1, :cond_4

    #@33
    .line 381
    iget-object v1, p0, Lgov/nist/javax/sip/clientauthutils/AuthenticationHelperImpl;->headerFactory:Ljavax/sip/header/HeaderFactory;

    #@35
    invoke-interface/range {p4 .. p4}, Ljavax/sip/header/WWWAuthenticateHeader;->getScheme()Ljava/lang/String;

    #@38
    move-result-object v2

    #@39
    invoke-interface {v1, v2}, Ljavax/sip/header/HeaderFactory;->createProxyAuthorizationHeader(Ljava/lang/String;)Ljavax/sip/header/ProxyAuthorizationHeader;

    #@3c
    move-result-object v11

    #@3d
    .line 387
    .local v11, "authorization":Ljavax/sip/header/AuthorizationHeader;
    :goto_1
    invoke-interface/range {p5 .. p5}, Lgov/nist/javax/sip/clientauthutils/UserCredentialHash;->getUserName()Ljava/lang/String;

    #@40
    move-result-object v1

    #@41
    invoke-interface {v11, v1}, Ljavax/sip/header/AuthorizationHeader;->setUsername(Ljava/lang/String;)V

    #@44
    .line 388
    invoke-interface/range {p4 .. p4}, Ljavax/sip/header/WWWAuthenticateHeader;->getRealm()Ljava/lang/String;

    #@47
    move-result-object v1

    #@48
    invoke-interface {v11, v1}, Ljavax/sip/header/AuthorizationHeader;->setRealm(Ljava/lang/String;)V

    #@4b
    .line 389
    invoke-interface/range {p4 .. p4}, Ljavax/sip/header/WWWAuthenticateHeader;->getNonce()Ljava/lang/String;

    #@4e
    move-result-object v1

    #@4f
    invoke-interface {v11, v1}, Ljavax/sip/header/AuthorizationHeader;->setNonce(Ljava/lang/String;)V

    #@52
    .line 390
    const-string/jumbo v1, "uri"

    #@55
    move-object/from16 v0, p2

    #@57
    invoke-interface {v11, v1, v0}, Ljavax/sip/header/AuthorizationHeader;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    #@5a
    .line 391
    invoke-interface {v11, v14}, Ljavax/sip/header/AuthorizationHeader;->setResponse(Ljava/lang/String;)V

    #@5d
    .line 392
    invoke-interface/range {p4 .. p4}, Ljavax/sip/header/WWWAuthenticateHeader;->getAlgorithm()Ljava/lang/String;

    #@60
    move-result-object v1

    #@61
    if-eqz v1, :cond_0

    #@63
    .line 393
    invoke-interface/range {p4 .. p4}, Ljavax/sip/header/WWWAuthenticateHeader;->getAlgorithm()Ljava/lang/String;

    #@66
    move-result-object v1

    #@67
    invoke-interface {v11, v1}, Ljavax/sip/header/AuthorizationHeader;->setAlgorithm(Ljava/lang/String;)V

    #@6a
    .line 396
    :cond_0
    invoke-interface/range {p4 .. p4}, Ljavax/sip/header/WWWAuthenticateHeader;->getOpaque()Ljava/lang/String;

    #@6d
    move-result-object v1

    #@6e
    if-eqz v1, :cond_1

    #@70
    .line 397
    invoke-interface/range {p4 .. p4}, Ljavax/sip/header/WWWAuthenticateHeader;->getOpaque()Ljava/lang/String;

    #@73
    move-result-object v1

    #@74
    invoke-interface {v11, v1}, Ljavax/sip/header/AuthorizationHeader;->setOpaque(Ljava/lang/String;)V

    #@77
    .line 401
    :cond_1
    if-eqz v9, :cond_2

    #@79
    .line 402
    invoke-interface {v11, v9}, Ljavax/sip/header/AuthorizationHeader;->setQop(Ljava/lang/String;)V

    #@7c
    .line 403
    invoke-interface {v11, v5}, Ljavax/sip/header/AuthorizationHeader;->setCNonce(Ljava/lang/String;)V

    #@7f
    .line 404
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@82
    move-result v1

    #@83
    invoke-interface {v11, v1}, Ljavax/sip/header/AuthorizationHeader;->setNonceCount(I)V

    #@86
    .line 407
    :cond_2
    invoke-interface {v11, v14}, Ljavax/sip/header/AuthorizationHeader;->setResponse(Ljava/lang/String;)V

    #@89
    .line 413
    return-object v11

    #@8a
    .line 369
    .end local v4    # "nc_value":Ljava/lang/String;
    .end local v5    # "cnonce":Ljava/lang/String;
    .end local v11    # "authorization":Ljavax/sip/header/AuthorizationHeader;
    .local v14, "response":Ljava/lang/String;
    :cond_3
    const/4 v9, 0x0

    #@8b
    .local v9, "qop":Ljava/lang/String;
    goto/16 :goto_0

    #@8d
    .line 384
    .end local v9    # "qop":Ljava/lang/String;
    .restart local v4    # "nc_value":Ljava/lang/String;
    .restart local v5    # "cnonce":Ljava/lang/String;
    .local v11, "authorization":Ljavax/sip/header/AuthorizationHeader;
    .local v14, "response":Ljava/lang/String;
    :cond_4
    iget-object v1, p0, Lgov/nist/javax/sip/clientauthutils/AuthenticationHelperImpl;->headerFactory:Ljavax/sip/header/HeaderFactory;

    #@8f
    invoke-interface/range {p4 .. p4}, Ljavax/sip/header/WWWAuthenticateHeader;->getScheme()Ljava/lang/String;

    #@92
    move-result-object v2

    #@93
    invoke-interface {v1, v2}, Ljavax/sip/header/HeaderFactory;->createAuthorizationHeader(Ljava/lang/String;)Ljavax/sip/header/AuthorizationHeader;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    #@96
    move-result-object v11

    #@97
    .local v11, "authorization":Ljavax/sip/header/AuthorizationHeader;
    goto :goto_1

    #@98
    .line 409
    .end local v11    # "authorization":Ljavax/sip/header/AuthorizationHeader;
    :catch_0
    move-exception v12

    #@99
    .line 410
    .local v12, "ex":Ljava/text/ParseException;
    new-instance v1, Ljava/lang/RuntimeException;

    #@9b
    const-string/jumbo v2, "Failed to create an authorization header!"

    #@9e
    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@a1
    throw v1
.end method

.method private getAuthorization(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljavax/sip/header/WWWAuthenticateHeader;Lgov/nist/javax/sip/clientauthutils/UserCredentials;)Ljavax/sip/header/AuthorizationHeader;
    .locals 17
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "uri"    # Ljava/lang/String;
    .param p3, "requestBody"    # Ljava/lang/String;
    .param p4, "authHeader"    # Ljavax/sip/header/WWWAuthenticateHeader;
    .param p5, "userCredentials"    # Lgov/nist/javax/sip/clientauthutils/UserCredentials;

    #@0
    .prologue
    .line 297
    const/16 v16, 0x0

    #@2
    .line 301
    .local v16, "response":Ljava/lang/String;
    invoke-interface/range {p4 .. p4}, Ljavax/sip/header/WWWAuthenticateHeader;->getQop()Ljava/lang/String;

    #@5
    move-result-object v15

    #@6
    .line 302
    .local v15, "qopList":Ljava/lang/String;
    if-eqz v15, :cond_3

    #@8
    const-string/jumbo v11, "auth"

    #@b
    .line 303
    :goto_0
    const-string/jumbo v6, "00000001"

    #@e
    .line 304
    .local v6, "nc_value":Ljava/lang/String;
    const-string/jumbo v7, "xyz"

    #@11
    .line 306
    .local v7, "cnonce":Ljava/lang/String;
    invoke-interface/range {p4 .. p4}, Ljavax/sip/header/WWWAuthenticateHeader;->getAlgorithm()Ljava/lang/String;

    #@14
    move-result-object v1

    #@15
    .line 307
    invoke-interface/range {p5 .. p5}, Lgov/nist/javax/sip/clientauthutils/UserCredentials;->getUserName()Ljava/lang/String;

    #@18
    move-result-object v2

    #@19
    invoke-interface/range {p4 .. p4}, Ljavax/sip/header/WWWAuthenticateHeader;->getRealm()Ljava/lang/String;

    #@1c
    move-result-object v3

    #@1d
    invoke-interface/range {p5 .. p5}, Lgov/nist/javax/sip/clientauthutils/UserCredentials;->getPassword()Ljava/lang/String;

    #@20
    move-result-object v4

    #@21
    .line 308
    invoke-interface/range {p4 .. p4}, Ljavax/sip/header/WWWAuthenticateHeader;->getNonce()Ljava/lang/String;

    #@24
    move-result-object v5

    #@25
    .line 310
    move-object/from16 v0, p0

    #@27
    iget-object v8, v0, Lgov/nist/javax/sip/clientauthutils/AuthenticationHelperImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    #@29
    invoke-virtual {v8}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    #@2c
    move-result-object v12

    #@2d
    move-object/from16 v8, p1

    #@2f
    move-object/from16 v9, p2

    #@31
    move-object/from16 v10, p3

    #@33
    .line 306
    invoke-static/range {v1 .. v12}, Lgov/nist/javax/sip/clientauthutils/MessageDigestAlgorithm;->calculateResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lgov/nist/core/StackLogger;)Ljava/lang/String;

    #@36
    move-result-object v16

    #@37
    .line 312
    .local v16, "response":Ljava/lang/String;
    const/4 v13, 0x0

    #@38
    .line 314
    .local v13, "authorization":Ljavax/sip/header/AuthorizationHeader;
    :try_start_0
    move-object/from16 v0, p4

    #@3a
    instance-of v1, v0, Ljavax/sip/header/ProxyAuthenticateHeader;

    #@3c
    if-eqz v1, :cond_4

    #@3e
    .line 315
    move-object/from16 v0, p0

    #@40
    iget-object v1, v0, Lgov/nist/javax/sip/clientauthutils/AuthenticationHelperImpl;->headerFactory:Ljavax/sip/header/HeaderFactory;

    #@42
    invoke-interface/range {p4 .. p4}, Ljavax/sip/header/WWWAuthenticateHeader;->getScheme()Ljava/lang/String;

    #@45
    move-result-object v2

    #@46
    invoke-interface {v1, v2}, Ljavax/sip/header/HeaderFactory;->createProxyAuthorizationHeader(Ljava/lang/String;)Ljavax/sip/header/ProxyAuthorizationHeader;

    #@49
    move-result-object v13

    #@4a
    .line 321
    .local v13, "authorization":Ljavax/sip/header/AuthorizationHeader;
    :goto_1
    invoke-interface/range {p5 .. p5}, Lgov/nist/javax/sip/clientauthutils/UserCredentials;->getUserName()Ljava/lang/String;

    #@4d
    move-result-object v1

    #@4e
    invoke-interface {v13, v1}, Ljavax/sip/header/AuthorizationHeader;->setUsername(Ljava/lang/String;)V

    #@51
    .line 322
    invoke-interface/range {p4 .. p4}, Ljavax/sip/header/WWWAuthenticateHeader;->getRealm()Ljava/lang/String;

    #@54
    move-result-object v1

    #@55
    invoke-interface {v13, v1}, Ljavax/sip/header/AuthorizationHeader;->setRealm(Ljava/lang/String;)V

    #@58
    .line 323
    invoke-interface/range {p4 .. p4}, Ljavax/sip/header/WWWAuthenticateHeader;->getNonce()Ljava/lang/String;

    #@5b
    move-result-object v1

    #@5c
    invoke-interface {v13, v1}, Ljavax/sip/header/AuthorizationHeader;->setNonce(Ljava/lang/String;)V

    #@5f
    .line 324
    const-string/jumbo v1, "uri"

    #@62
    move-object/from16 v0, p2

    #@64
    invoke-interface {v13, v1, v0}, Ljavax/sip/header/AuthorizationHeader;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    #@67
    .line 325
    move-object/from16 v0, v16

    #@69
    invoke-interface {v13, v0}, Ljavax/sip/header/AuthorizationHeader;->setResponse(Ljava/lang/String;)V

    #@6c
    .line 326
    invoke-interface/range {p4 .. p4}, Ljavax/sip/header/WWWAuthenticateHeader;->getAlgorithm()Ljava/lang/String;

    #@6f
    move-result-object v1

    #@70
    if-eqz v1, :cond_0

    #@72
    .line 327
    invoke-interface/range {p4 .. p4}, Ljavax/sip/header/WWWAuthenticateHeader;->getAlgorithm()Ljava/lang/String;

    #@75
    move-result-object v1

    #@76
    invoke-interface {v13, v1}, Ljavax/sip/header/AuthorizationHeader;->setAlgorithm(Ljava/lang/String;)V

    #@79
    .line 330
    :cond_0
    invoke-interface/range {p4 .. p4}, Ljavax/sip/header/WWWAuthenticateHeader;->getOpaque()Ljava/lang/String;

    #@7c
    move-result-object v1

    #@7d
    if-eqz v1, :cond_1

    #@7f
    .line 331
    invoke-interface/range {p4 .. p4}, Ljavax/sip/header/WWWAuthenticateHeader;->getOpaque()Ljava/lang/String;

    #@82
    move-result-object v1

    #@83
    invoke-interface {v13, v1}, Ljavax/sip/header/AuthorizationHeader;->setOpaque(Ljava/lang/String;)V

    #@86
    .line 335
    :cond_1
    if-eqz v11, :cond_2

    #@88
    .line 336
    invoke-interface {v13, v11}, Ljavax/sip/header/AuthorizationHeader;->setQop(Ljava/lang/String;)V

    #@8b
    .line 337
    invoke-interface {v13, v7}, Ljavax/sip/header/AuthorizationHeader;->setCNonce(Ljava/lang/String;)V

    #@8e
    .line 338
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@91
    move-result v1

    #@92
    invoke-interface {v13, v1}, Ljavax/sip/header/AuthorizationHeader;->setNonceCount(I)V

    #@95
    .line 341
    :cond_2
    move-object/from16 v0, v16

    #@97
    invoke-interface {v13, v0}, Ljavax/sip/header/AuthorizationHeader;->setResponse(Ljava/lang/String;)V

    #@9a
    .line 347
    return-object v13

    #@9b
    .line 302
    .end local v6    # "nc_value":Ljava/lang/String;
    .end local v7    # "cnonce":Ljava/lang/String;
    .end local v13    # "authorization":Ljavax/sip/header/AuthorizationHeader;
    .local v16, "response":Ljava/lang/String;
    :cond_3
    const/4 v11, 0x0

    #@9c
    .local v11, "qop":Ljava/lang/String;
    goto/16 :goto_0

    #@9e
    .line 318
    .end local v11    # "qop":Ljava/lang/String;
    .restart local v6    # "nc_value":Ljava/lang/String;
    .restart local v7    # "cnonce":Ljava/lang/String;
    .local v13, "authorization":Ljavax/sip/header/AuthorizationHeader;
    .local v16, "response":Ljava/lang/String;
    :cond_4
    move-object/from16 v0, p0

    #@a0
    iget-object v1, v0, Lgov/nist/javax/sip/clientauthutils/AuthenticationHelperImpl;->headerFactory:Ljavax/sip/header/HeaderFactory;

    #@a2
    invoke-interface/range {p4 .. p4}, Ljavax/sip/header/WWWAuthenticateHeader;->getScheme()Ljava/lang/String;

    #@a5
    move-result-object v2

    #@a6
    invoke-interface {v1, v2}, Ljavax/sip/header/HeaderFactory;->createAuthorizationHeader(Ljava/lang/String;)Ljavax/sip/header/AuthorizationHeader;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    #@a9
    move-result-object v13

    #@aa
    .local v13, "authorization":Ljavax/sip/header/AuthorizationHeader;
    goto :goto_1

    #@ab
    .line 343
    .end local v13    # "authorization":Ljavax/sip/header/AuthorizationHeader;
    :catch_0
    move-exception v14

    #@ac
    .line 344
    .local v14, "ex":Ljava/text/ParseException;
    new-instance v1, Ljava/lang/RuntimeException;

    #@ae
    const-string/jumbo v2, "Failed to create an authorization header!"

    #@b1
    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@b4
    throw v1
.end method

.method private removeBranchID(Ljavax/sip/message/Request;)V
    .locals 2
    .param p1, "request"    # Ljavax/sip/message/Request;

    #@0
    .prologue
    .line 424
    const-string/jumbo v1, "Via"

    #@3
    invoke-interface {p1, v1}, Ljavax/sip/message/Request;->getHeader(Ljava/lang/String;)Ljavax/sip/header/Header;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Ljavax/sip/header/ViaHeader;

    #@9
    .line 426
    .local v0, "viaHeader":Ljavax/sip/header/ViaHeader;
    const-string/jumbo v1, "branch"

    #@c
    invoke-interface {v0, v1}, Ljavax/sip/header/ViaHeader;->removeParameter(Ljava/lang/String;)V

    #@f
    .line 422
    return-void
.end method


# virtual methods
.method public handleChallenge(Ljavax/sip/message/Response;Ljavax/sip/ClientTransaction;Ljavax/sip/SipProvider;I)Ljavax/sip/ClientTransaction;
    .locals 32
    .param p1, "challenge"    # Ljavax/sip/message/Response;
    .param p2, "challengedTransaction"    # Ljavax/sip/ClientTransaction;
    .param p3, "transactionCreator"    # Ljavax/sip/SipProvider;
    .param p4, "cacheTime"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;,
            Ljava/lang/NullPointerException;
        }
    .end annotation

    #@0
    .prologue
    .line 129
    :try_start_0
    move-object/from16 v0, p0

    #@2
    iget-object v2, v0, Lgov/nist/javax/sip/clientauthutils/AuthenticationHelperImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    #@4
    invoke-virtual {v2}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    #@7
    move-result v2

    #@8
    if-eqz v2, :cond_0

    #@a
    .line 130
    move-object/from16 v0, p0

    #@c
    iget-object v2, v0, Lgov/nist/javax/sip/clientauthutils/AuthenticationHelperImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    #@e
    invoke-virtual {v2}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    #@11
    move-result-object v2

    #@12
    new-instance v3, Ljava/lang/StringBuilder;

    #@14
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@17
    const-string/jumbo v4, "handleChallenge: "

    #@1a
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v3

    #@1e
    move-object/from16 v0, p1

    #@20
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v3

    #@24
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@27
    move-result-object v3

    #@28
    invoke-interface {v2, v3}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@2b
    .line 133
    :cond_0
    invoke-interface/range {p2 .. p2}, Ljavax/sip/ClientTransaction;->getRequest()Ljavax/sip/message/Request;

    #@2e
    move-result-object v17

    #@2f
    check-cast v17, Lgov/nist/javax/sip/message/SIPRequest;

    #@31
    .line 135
    .local v17, "challengedRequest":Lgov/nist/javax/sip/message/SIPRequest;
    const/16 v26, 0x0

    #@33
    .line 141
    .local v26, "reoriginatedRequest":Ljavax/sip/message/Request;
    invoke-virtual/range {v17 .. v17}, Lgov/nist/javax/sip/message/SIPRequest;->getToTag()Ljava/lang/String;

    #@36
    move-result-object v2

    #@37
    if-nez v2, :cond_1

    #@39
    .line 142
    invoke-interface/range {p2 .. p2}, Ljavax/sip/ClientTransaction;->getDialog()Ljavax/sip/Dialog;

    #@3c
    move-result-object v2

    #@3d
    if-nez v2, :cond_4

    #@3f
    .line 144
    :cond_1
    invoke-virtual/range {v17 .. v17}, Lgov/nist/javax/sip/message/SIPRequest;->clone()Ljava/lang/Object;

    #@42
    move-result-object v26

    #@43
    .end local v26    # "reoriginatedRequest":Ljavax/sip/message/Request;
    check-cast v26, Ljavax/sip/message/Request;

    #@45
    .line 169
    .local v26, "reoriginatedRequest":Ljavax/sip/message/Request;
    :cond_2
    move-object/from16 v0, p0

    #@47
    move-object/from16 v1, v26

    #@49
    invoke-direct {v0, v1}, Lgov/nist/javax/sip/clientauthutils/AuthenticationHelperImpl;->removeBranchID(Ljavax/sip/message/Request;)V

    #@4c
    .line 171
    if-eqz p1, :cond_3

    #@4e
    if-nez v26, :cond_6

    #@50
    .line 172
    :cond_3
    new-instance v2, Ljava/lang/NullPointerException;

    #@52
    const-string/jumbo v3, "A null argument was passed to handle challenge."

    #@55
    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@58
    throw v2
    :try_end_0
    .catch Ljavax/sip/SipException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    #@59
    .line 271
    .end local v17    # "challengedRequest":Lgov/nist/javax/sip/message/SIPRequest;
    .end local v26    # "reoriginatedRequest":Ljavax/sip/message/Request;
    :catch_0
    move-exception v20

    #@5a
    .line 272
    .local v20, "ex":Ljavax/sip/SipException;
    throw v20

    #@5b
    .line 143
    .end local v20    # "ex":Ljavax/sip/SipException;
    .restart local v17    # "challengedRequest":Lgov/nist/javax/sip/message/SIPRequest;
    .local v26, "reoriginatedRequest":Ljavax/sip/message/Request;
    :cond_4
    :try_start_1
    invoke-interface/range {p2 .. p2}, Ljavax/sip/ClientTransaction;->getDialog()Ljavax/sip/Dialog;

    #@5e
    move-result-object v2

    #@5f
    invoke-interface {v2}, Ljavax/sip/Dialog;->getState()Ljavax/sip/DialogState;

    #@62
    move-result-object v2

    #@63
    sget-object v3, Ljavax/sip/DialogState;->CONFIRMED:Ljavax/sip/DialogState;

    #@65
    if-ne v2, v3, :cond_1

    #@67
    .line 152
    invoke-interface/range {p2 .. p2}, Ljavax/sip/ClientTransaction;->getDialog()Ljavax/sip/Dialog;

    #@6a
    move-result-object v2

    #@6b
    invoke-virtual/range {v17 .. v17}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    #@6e
    move-result-object v3

    #@6f
    invoke-interface {v2, v3}, Ljavax/sip/Dialog;->createRequest(Ljava/lang/String;)Ljavax/sip/message/Request;

    #@72
    move-result-object v26

    #@73
    .line 153
    .local v26, "reoriginatedRequest":Ljavax/sip/message/Request;
    invoke-virtual/range {v17 .. v17}, Lgov/nist/javax/sip/message/SIPRequest;->getHeaderNames()Ljava/util/ListIterator;

    #@76
    move-result-object v22

    #@77
    .line 154
    .local v22, "headerNames":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_5
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    #@7a
    move-result v2

    #@7b
    if-eqz v2, :cond_2

    #@7d
    .line 155
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@80
    move-result-object v21

    #@81
    check-cast v21, Ljava/lang/String;

    #@83
    .line 156
    .local v21, "headerName":Ljava/lang/String;
    move-object/from16 v0, v26

    #@85
    move-object/from16 v1, v21

    #@87
    invoke-interface {v0, v1}, Ljavax/sip/message/Request;->getHeader(Ljava/lang/String;)Ljavax/sip/header/Header;

    #@8a
    move-result-object v2

    #@8b
    if-eqz v2, :cond_5

    #@8d
    .line 157
    move-object/from16 v0, v26

    #@8f
    move-object/from16 v1, v21

    #@91
    invoke-interface {v0, v1}, Ljavax/sip/message/Request;->getHeaders(Ljava/lang/String;)Ljava/util/ListIterator;

    #@94
    move-result-object v24

    #@95
    .line 158
    .local v24, "iterator":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Ljavax/sip/header/Header;>;"
    :goto_0
    invoke-interface/range {v24 .. v24}, Ljava/util/ListIterator;->hasNext()Z

    #@98
    move-result v2

    #@99
    if-eqz v2, :cond_5

    #@9b
    .line 159
    invoke-interface/range {v24 .. v24}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    #@9e
    move-result-object v2

    #@9f
    check-cast v2, Ljavax/sip/header/Header;

    #@a1
    move-object/from16 v0, v26

    #@a3
    invoke-interface {v0, v2}, Ljavax/sip/message/Request;->addHeader(Ljavax/sip/header/Header;)V
    :try_end_1
    .catch Ljavax/sip/SipException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    #@a6
    goto :goto_0

    #@a7
    .line 273
    .end local v17    # "challengedRequest":Lgov/nist/javax/sip/message/SIPRequest;
    .end local v21    # "headerName":Ljava/lang/String;
    .end local v22    # "headerNames":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v24    # "iterator":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Ljavax/sip/header/Header;>;"
    .end local v26    # "reoriginatedRequest":Ljavax/sip/message/Request;
    :catch_1
    move-exception v18

    #@a8
    .line 274
    .local v18, "ex":Ljava/lang/Exception;
    move-object/from16 v0, p0

    #@aa
    iget-object v2, v0, Lgov/nist/javax/sip/clientauthutils/AuthenticationHelperImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    #@ac
    invoke-virtual {v2}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    #@af
    move-result-object v2

    #@b0
    const-string/jumbo v3, "Unexpected exception "

    #@b3
    move-object/from16 v0, v18

    #@b5
    invoke-interface {v2, v3, v0}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;Ljava/lang/Exception;)V

    #@b8
    .line 275
    new-instance v2, Ljavax/sip/SipException;

    #@ba
    const-string/jumbo v3, "Unexpected exception "

    #@bd
    move-object/from16 v0, v18

    #@bf
    invoke-direct {v2, v3, v0}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@c2
    throw v2

    #@c3
    .line 175
    .end local v18    # "ex":Ljava/lang/Exception;
    .restart local v17    # "challengedRequest":Lgov/nist/javax/sip/message/SIPRequest;
    .restart local v26    # "reoriginatedRequest":Ljavax/sip/message/Request;
    :cond_6
    const/4 v14, 0x0

    #@c4
    .line 177
    .local v14, "authHeaders":Ljava/util/ListIterator;
    :try_start_2
    invoke-interface/range {p1 .. p1}, Ljavax/sip/message/Response;->getStatusCode()I

    #@c7
    move-result v2

    #@c8
    const/16 v3, 0x191

    #@ca
    if-ne v2, v3, :cond_7

    #@cc
    .line 178
    const-string/jumbo v2, "WWW-Authenticate"

    #@cf
    move-object/from16 v0, p1

    #@d1
    invoke-interface {v0, v2}, Ljavax/sip/message/Response;->getHeaders(Ljava/lang/String;)Ljava/util/ListIterator;

    #@d4
    move-result-object v14

    #@d5
    .line 185
    .local v14, "authHeaders":Ljava/util/ListIterator;
    :goto_1
    if-nez v14, :cond_9

    #@d7
    .line 186
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@d9
    .line 187
    const-string/jumbo v3, "Could not find WWWAuthenticate or ProxyAuthenticate headers"

    #@dc
    .line 186
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@df
    throw v2

    #@e0
    .line 179
    .local v14, "authHeaders":Ljava/util/ListIterator;
    :cond_7
    invoke-interface/range {p1 .. p1}, Ljavax/sip/message/Response;->getStatusCode()I

    #@e3
    move-result v2

    #@e4
    const/16 v3, 0x197

    #@e6
    if-ne v2, v3, :cond_8

    #@e8
    .line 180
    const-string/jumbo v2, "Proxy-Authenticate"

    #@eb
    move-object/from16 v0, p1

    #@ed
    invoke-interface {v0, v2}, Ljavax/sip/message/Response;->getHeaders(Ljava/lang/String;)Ljava/util/ListIterator;

    #@f0
    move-result-object v14

    #@f1
    .local v14, "authHeaders":Ljava/util/ListIterator;
    goto :goto_1

    #@f2
    .line 182
    .local v14, "authHeaders":Ljava/util/ListIterator;
    :cond_8
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@f4
    const-string/jumbo v3, "Unexpected status code "

    #@f7
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@fa
    throw v2

    #@fb
    .line 192
    .local v14, "authHeaders":Ljava/util/ListIterator;
    :cond_9
    const-string/jumbo v2, "Authorization"

    #@fe
    move-object/from16 v0, v26

    #@100
    invoke-interface {v0, v2}, Ljavax/sip/message/Request;->removeHeader(Ljava/lang/String;)V

    #@103
    .line 193
    const-string/jumbo v2, "Proxy-Authorization"

    #@106
    move-object/from16 v0, v26

    #@108
    invoke-interface {v0, v2}, Ljavax/sip/message/Request;->removeHeader(Ljava/lang/String;)V

    #@10b
    .line 199
    const-string/jumbo v2, "CSeq"

    #@10e
    move-object/from16 v0, v26

    #@110
    invoke-interface {v0, v2}, Ljavax/sip/message/Request;->getHeader(Ljava/lang/String;)Ljavax/sip/header/Header;

    #@113
    move-result-object v16

    #@114
    check-cast v16, Ljavax/sip/header/CSeqHeader;
    :try_end_2
    .catch Ljavax/sip/SipException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    #@116
    .line 201
    .local v16, "cSeq":Ljavax/sip/header/CSeqHeader;
    :try_start_3
    invoke-interface/range {v16 .. v16}, Ljavax/sip/header/CSeqHeader;->getSeqNumber()J

    #@119
    move-result-wide v2

    #@11a
    const-wide/16 v4, 0x1

    #@11c
    add-long/2addr v2, v4

    #@11d
    move-object/from16 v0, v16

    #@11f
    invoke-interface {v0, v2, v3}, Ljavax/sip/header/CSeqHeader;->setSeqNumber(J)V
    :try_end_3
    .catch Ljavax/sip/InvalidArgumentException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljavax/sip/SipException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    #@122
    .line 211
    :try_start_4
    invoke-virtual/range {v17 .. v17}, Lgov/nist/javax/sip/message/SIPRequest;->getRouteHeaders()Lgov/nist/javax/sip/header/RouteList;

    #@125
    move-result-object v2

    #@126
    if-nez v2, :cond_b

    #@128
    .line 212
    move-object/from16 v0, p2

    #@12a
    check-cast v0, Lgov/nist/javax/sip/stack/SIPClientTransaction;

    #@12c
    move-object v2, v0

    #@12d
    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getNextHop()Ljavax/sip/address/Hop;

    #@130
    move-result-object v23

    #@131
    .line 213
    .local v23, "hop":Ljavax/sip/address/Hop;
    invoke-interface/range {v26 .. v26}, Ljavax/sip/message/Request;->getRequestURI()Ljavax/sip/address/URI;

    #@134
    move-result-object v30

    #@135
    check-cast v30, Ljavax/sip/address/SipURI;

    #@137
    .line 215
    .local v30, "sipUri":Ljavax/sip/address/SipURI;
    invoke-interface/range {v23 .. v23}, Ljavax/sip/address/Hop;->getHost()Ljava/lang/String;

    #@13a
    move-result-object v2

    #@13b
    invoke-interface/range {v30 .. v30}, Ljavax/sip/address/SipURI;->getHost()Ljava/lang/String;

    #@13e
    move-result-object v3

    #@13f
    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@142
    move-result v2

    #@143
    if-nez v2, :cond_a

    #@145
    .line 216
    move-object/from16 v0, p0

    #@147
    iget-object v2, v0, Lgov/nist/javax/sip/clientauthutils/AuthenticationHelperImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    #@149
    move-object/from16 v0, v17

    #@14b
    invoke-virtual {v2, v0}, Lgov/nist/javax/sip/SipStackImpl;->getRouter(Lgov/nist/javax/sip/message/SIPRequest;)Ljavax/sip/address/Router;

    #@14e
    move-result-object v2

    #@14f
    invoke-interface {v2}, Ljavax/sip/address/Router;->getOutboundProxy()Ljavax/sip/address/Hop;

    #@152
    move-result-object v2

    #@153
    move-object/from16 v0, v23

    #@155
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@158
    move-result v2

    #@159
    if-eqz v2, :cond_e

    #@15b
    .line 219
    :cond_a
    :goto_2
    invoke-interface/range {v23 .. v23}, Ljavax/sip/address/Hop;->getPort()I

    #@15e
    move-result v2

    #@15f
    const/4 v3, -0x1

    #@160
    if-eq v2, v3, :cond_b

    #@162
    invoke-interface/range {v23 .. v23}, Ljavax/sip/address/Hop;->getPort()I

    #@165
    move-result v2

    #@166
    move-object/from16 v0, v30

    #@168
    invoke-interface {v0, v2}, Ljavax/sip/address/SipURI;->setPort(I)V

    #@16b
    .line 221
    .end local v23    # "hop":Ljavax/sip/address/Hop;
    .end local v30    # "sipUri":Ljavax/sip/address/SipURI;
    :cond_b
    move-object/from16 v0, p3

    #@16d
    move-object/from16 v1, v26

    #@16f
    invoke-interface {v0, v1}, Ljavax/sip/SipProvider;->getNewClientTransaction(Ljavax/sip/message/Request;)Ljavax/sip/ClientTransaction;

    #@172
    move-result-object v28

    #@173
    .line 224
    .local v28, "retryTran":Ljavax/sip/ClientTransaction;
    const/4 v6, 0x0

    #@174
    .line 225
    .local v6, "authHeader":Ljavax/sip/header/WWWAuthenticateHeader;
    invoke-interface/range {p2 .. p2}, Ljavax/sip/ClientTransaction;->getRequest()Ljavax/sip/message/Request;

    #@177
    move-result-object v2

    #@178
    invoke-interface {v2}, Ljavax/sip/message/Request;->getRequestURI()Ljavax/sip/address/URI;

    #@17b
    move-result-object v27

    #@17c
    check-cast v27, Ljavax/sip/address/SipURI;

    #@17e
    .line 226
    .end local v6    # "authHeader":Ljavax/sip/header/WWWAuthenticateHeader;
    .local v27, "requestUri":Ljavax/sip/address/SipURI;
    :goto_3
    invoke-interface {v14}, Ljava/util/ListIterator;->hasNext()Z

    #@181
    move-result v2

    #@182
    if-eqz v2, :cond_13

    #@184
    .line 227
    invoke-interface {v14}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    #@187
    move-result-object v6

    #@188
    check-cast v6, Ljavax/sip/header/WWWAuthenticateHeader;

    #@18a
    .line 228
    .local v6, "authHeader":Ljavax/sip/header/WWWAuthenticateHeader;
    invoke-interface {v6}, Ljavax/sip/header/WWWAuthenticateHeader;->getRealm()Ljava/lang/String;

    #@18d
    move-result-object v25

    #@18e
    .line 229
    .local v25, "realm":Ljava/lang/String;
    const/4 v15, 0x0

    #@18f
    .line 231
    .local v15, "authorization":Ljavax/sip/header/AuthorizationHeader;
    move-object/from16 v0, p0

    #@191
    iget-object v2, v0, Lgov/nist/javax/sip/clientauthutils/AuthenticationHelperImpl;->accountManager:Ljava/lang/Object;

    #@193
    instance-of v2, v2, Lgov/nist/javax/sip/clientauthutils/SecureAccountManager;

    #@195
    if-eqz v2, :cond_10

    #@197
    .line 233
    move-object/from16 v0, p0

    #@199
    iget-object v2, v0, Lgov/nist/javax/sip/clientauthutils/AuthenticationHelperImpl;->accountManager:Ljava/lang/Object;

    #@19b
    check-cast v2, Lgov/nist/javax/sip/clientauthutils/SecureAccountManager;

    #@19d
    move-object/from16 v0, p2

    #@19f
    move-object/from16 v1, v25

    #@1a1
    invoke-interface {v2, v0, v1}, Lgov/nist/javax/sip/clientauthutils/SecureAccountManager;->getCredentialHash(Ljavax/sip/ClientTransaction;Ljava/lang/String;)Lgov/nist/javax/sip/clientauthutils/UserCredentialHash;

    #@1a4
    move-result-object v7

    #@1a5
    .line 234
    .local v7, "credHash":Lgov/nist/javax/sip/clientauthutils/UserCredentialHash;
    invoke-interface/range {v26 .. v26}, Ljavax/sip/message/Request;->getRequestURI()Ljavax/sip/address/URI;

    #@1a8
    move-result-object v31

    #@1a9
    .line 235
    .local v31, "uri":Ljavax/sip/address/URI;
    invoke-interface {v7}, Lgov/nist/javax/sip/clientauthutils/UserCredentialHash;->getSipDomain()Ljava/lang/String;

    #@1ac
    move-result-object v29

    #@1ad
    .line 236
    .local v29, "sipDomain":Ljava/lang/String;
    invoke-interface/range {v26 .. v26}, Ljavax/sip/message/Request;->getMethod()Ljava/lang/String;

    #@1b0
    move-result-object v3

    #@1b1
    .line 237
    invoke-interface/range {v31 .. v31}, Ljavax/sip/address/URI;->toString()Ljava/lang/String;

    #@1b4
    move-result-object v4

    #@1b5
    .line 238
    invoke-interface/range {v26 .. v26}, Ljavax/sip/message/Request;->getContent()Ljava/lang/Object;

    #@1b8
    move-result-object v2

    #@1b9
    if-nez v2, :cond_f

    #@1bb
    const-string/jumbo v5, ""

    #@1be
    :goto_4
    move-object/from16 v2, p0

    #@1c0
    .line 236
    invoke-direct/range {v2 .. v7}, Lgov/nist/javax/sip/clientauthutils/AuthenticationHelperImpl;->getAuthorization(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljavax/sip/header/WWWAuthenticateHeader;Lgov/nist/javax/sip/clientauthutils/UserCredentialHash;)Ljavax/sip/header/AuthorizationHeader;

    #@1c3
    move-result-object v15

    #@1c4
    .line 255
    .end local v7    # "credHash":Lgov/nist/javax/sip/clientauthutils/UserCredentialHash;
    .end local v31    # "uri":Ljavax/sip/address/URI;
    .local v15, "authorization":Ljavax/sip/header/AuthorizationHeader;
    :goto_5
    move-object/from16 v0, p0

    #@1c6
    iget-object v2, v0, Lgov/nist/javax/sip/clientauthutils/AuthenticationHelperImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    #@1c8
    invoke-virtual {v2}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    #@1cb
    move-result v2

    #@1cc
    if-eqz v2, :cond_c

    #@1ce
    .line 256
    move-object/from16 v0, p0

    #@1d0
    iget-object v2, v0, Lgov/nist/javax/sip/clientauthutils/AuthenticationHelperImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    #@1d2
    invoke-virtual {v2}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    #@1d5
    move-result-object v2

    #@1d6
    .line 257
    new-instance v3, Ljava/lang/StringBuilder;

    #@1d8
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@1db
    const-string/jumbo v4, "Created authorization header: "

    #@1de
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e1
    move-result-object v3

    #@1e2
    invoke-interface {v15}, Ljavax/sip/header/AuthorizationHeader;->toString()Ljava/lang/String;

    #@1e5
    move-result-object v4

    #@1e6
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e9
    move-result-object v3

    #@1ea
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1ed
    move-result-object v3

    #@1ee
    .line 256
    invoke-interface {v2, v3}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@1f1
    .line 259
    :cond_c
    if-eqz p4, :cond_d

    #@1f3
    .line 260
    move-object/from16 v0, p0

    #@1f5
    iget-object v2, v0, Lgov/nist/javax/sip/clientauthutils/AuthenticationHelperImpl;->cachedCredentials:Lgov/nist/javax/sip/clientauthutils/CredentialsCache;

    #@1f7
    move-object/from16 v0, v29

    #@1f9
    move/from16 v1, p4

    #@1fb
    invoke-virtual {v2, v0, v15, v1}, Lgov/nist/javax/sip/clientauthutils/CredentialsCache;->cacheAuthorizationHeader(Ljava/lang/String;Ljavax/sip/header/AuthorizationHeader;I)V

    #@1fe
    .line 263
    :cond_d
    move-object/from16 v0, v26

    #@200
    invoke-interface {v0, v15}, Ljavax/sip/message/Request;->addHeader(Ljavax/sip/header/Header;)V

    #@203
    goto/16 :goto_3

    #@205
    .line 202
    .end local v6    # "authHeader":Ljavax/sip/header/WWWAuthenticateHeader;
    .end local v15    # "authorization":Ljavax/sip/header/AuthorizationHeader;
    .end local v25    # "realm":Ljava/lang/String;
    .end local v27    # "requestUri":Ljavax/sip/address/SipURI;
    .end local v28    # "retryTran":Ljavax/sip/ClientTransaction;
    .end local v29    # "sipDomain":Ljava/lang/String;
    :catch_2
    move-exception v19

    #@206
    .line 203
    .local v19, "ex":Ljavax/sip/InvalidArgumentException;
    new-instance v2, Ljavax/sip/SipException;

    #@208
    new-instance v3, Ljava/lang/StringBuilder;

    #@20a
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@20d
    const-string/jumbo v4, "Invalid CSeq -- could not increment : "

    #@210
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@213
    move-result-object v3

    #@214
    .line 204
    invoke-interface/range {v16 .. v16}, Ljavax/sip/header/CSeqHeader;->getSeqNumber()J

    #@217
    move-result-wide v4

    #@218
    .line 203
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@21b
    move-result-object v3

    #@21c
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21f
    move-result-object v3

    #@220
    invoke-direct {v2, v3}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    #@223
    throw v2

    #@224
    .line 218
    .end local v19    # "ex":Ljavax/sip/InvalidArgumentException;
    .restart local v23    # "hop":Ljavax/sip/address/Hop;
    .restart local v30    # "sipUri":Ljavax/sip/address/SipURI;
    :cond_e
    invoke-interface/range {v23 .. v23}, Ljavax/sip/address/Hop;->getHost()Ljava/lang/String;

    #@227
    move-result-object v2

    #@228
    move-object/from16 v0, v30

    #@22a
    invoke-interface {v0, v2}, Ljavax/sip/address/SipURI;->setMAddrParam(Ljava/lang/String;)V

    #@22d
    goto/16 :goto_2

    #@22f
    .line 238
    .end local v23    # "hop":Ljavax/sip/address/Hop;
    .end local v30    # "sipUri":Ljavax/sip/address/SipURI;
    .restart local v6    # "authHeader":Ljavax/sip/header/WWWAuthenticateHeader;
    .restart local v7    # "credHash":Lgov/nist/javax/sip/clientauthutils/UserCredentialHash;
    .local v15, "authorization":Ljavax/sip/header/AuthorizationHeader;
    .restart local v25    # "realm":Ljava/lang/String;
    .restart local v27    # "requestUri":Ljavax/sip/address/SipURI;
    .restart local v28    # "retryTran":Ljavax/sip/ClientTransaction;
    .restart local v29    # "sipDomain":Ljava/lang/String;
    .restart local v31    # "uri":Ljavax/sip/address/URI;
    :cond_f
    new-instance v5, Ljava/lang/String;

    #@231
    .line 239
    invoke-interface/range {v26 .. v26}, Ljavax/sip/message/Request;->getRawContent()[B

    #@234
    move-result-object v2

    #@235
    .line 238
    invoke-direct {v5, v2}, Ljava/lang/String;-><init>([B)V

    #@238
    goto :goto_4

    #@239
    .line 241
    .end local v7    # "credHash":Lgov/nist/javax/sip/clientauthutils/UserCredentialHash;
    .end local v29    # "sipDomain":Ljava/lang/String;
    .end local v31    # "uri":Ljavax/sip/address/URI;
    :cond_10
    move-object/from16 v0, p0

    #@23b
    iget-object v2, v0, Lgov/nist/javax/sip/clientauthutils/AuthenticationHelperImpl;->accountManager:Ljava/lang/Object;

    #@23d
    check-cast v2, Lgov/nist/javax/sip/clientauthutils/AccountManager;

    #@23f
    move-object/from16 v0, p2

    #@241
    move-object/from16 v1, v25

    #@243
    invoke-interface {v2, v0, v1}, Lgov/nist/javax/sip/clientauthutils/AccountManager;->getCredentials(Ljavax/sip/ClientTransaction;Ljava/lang/String;)Lgov/nist/javax/sip/clientauthutils/UserCredentials;

    #@246
    move-result-object v13

    #@247
    .line 242
    .local v13, "userCreds":Lgov/nist/javax/sip/clientauthutils/UserCredentials;
    invoke-interface {v13}, Lgov/nist/javax/sip/clientauthutils/UserCredentials;->getSipDomain()Ljava/lang/String;

    #@24a
    move-result-object v29

    #@24b
    .line 243
    .restart local v29    # "sipDomain":Ljava/lang/String;
    if-nez v13, :cond_11

    #@24d
    .line 244
    new-instance v2, Ljavax/sip/SipException;

    #@24f
    .line 245
    const-string/jumbo v3, "Cannot find user creds for the given user name and realm"

    #@252
    .line 244
    invoke-direct {v2, v3}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    #@255
    throw v2

    #@256
    .line 250
    :cond_11
    invoke-interface/range {v26 .. v26}, Ljavax/sip/message/Request;->getMethod()Ljava/lang/String;

    #@259
    move-result-object v9

    #@25a
    .line 251
    invoke-interface/range {v26 .. v26}, Ljavax/sip/message/Request;->getRequestURI()Ljavax/sip/address/URI;

    #@25d
    move-result-object v2

    #@25e
    invoke-interface {v2}, Ljavax/sip/address/URI;->toString()Ljava/lang/String;

    #@261
    move-result-object v10

    #@262
    .line 252
    invoke-interface/range {v26 .. v26}, Ljavax/sip/message/Request;->getContent()Ljava/lang/Object;

    #@265
    move-result-object v2

    #@266
    if-nez v2, :cond_12

    #@268
    const-string/jumbo v11, ""

    #@26b
    :goto_6
    move-object/from16 v8, p0

    #@26d
    move-object v12, v6

    #@26e
    .line 250
    invoke-direct/range {v8 .. v13}, Lgov/nist/javax/sip/clientauthutils/AuthenticationHelperImpl;->getAuthorization(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljavax/sip/header/WWWAuthenticateHeader;Lgov/nist/javax/sip/clientauthutils/UserCredentials;)Ljavax/sip/header/AuthorizationHeader;

    #@271
    move-result-object v15

    #@272
    .local v15, "authorization":Ljavax/sip/header/AuthorizationHeader;
    goto/16 :goto_5

    #@274
    .line 252
    .local v15, "authorization":Ljavax/sip/header/AuthorizationHeader;
    :cond_12
    new-instance v11, Ljava/lang/String;

    #@276
    .line 253
    invoke-interface/range {v26 .. v26}, Ljavax/sip/message/Request;->getRawContent()[B

    #@279
    move-result-object v2

    #@27a
    .line 252
    invoke-direct {v11, v2}, Ljava/lang/String;-><init>([B)V

    #@27d
    goto :goto_6

    #@27e
    .line 266
    .end local v6    # "authHeader":Ljavax/sip/header/WWWAuthenticateHeader;
    .end local v13    # "userCreds":Lgov/nist/javax/sip/clientauthutils/UserCredentials;
    .end local v15    # "authorization":Ljavax/sip/header/AuthorizationHeader;
    .end local v25    # "realm":Ljava/lang/String;
    .end local v29    # "sipDomain":Ljava/lang/String;
    :cond_13
    move-object/from16 v0, p0

    #@280
    iget-object v2, v0, Lgov/nist/javax/sip/clientauthutils/AuthenticationHelperImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    #@282
    invoke-virtual {v2}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    #@285
    move-result v2

    #@286
    if-eqz v2, :cond_14

    #@288
    .line 267
    move-object/from16 v0, p0

    #@28a
    iget-object v2, v0, Lgov/nist/javax/sip/clientauthutils/AuthenticationHelperImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    #@28c
    invoke-virtual {v2}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    #@28f
    move-result-object v2

    #@290
    .line 268
    new-instance v3, Ljava/lang/StringBuilder;

    #@292
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@295
    const-string/jumbo v4, "Returning authorization transaction."

    #@298
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29b
    move-result-object v3

    #@29c
    move-object/from16 v0, v28

    #@29e
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2a1
    move-result-object v3

    #@2a2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2a5
    move-result-object v3

    #@2a6
    .line 267
    invoke-interface {v2, v3}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V
    :try_end_4
    .catch Ljavax/sip/SipException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    #@2a9
    .line 270
    :cond_14
    return-object v28
.end method

.method public removeCachedAuthenticationHeaders(Ljava/lang/String;)V
    .locals 2
    .param p1, "callId"    # Ljava/lang/String;

    #@0
    .prologue
    .line 462
    if-nez p1, :cond_0

    #@2
    .line 463
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v1, "Null callId argument "

    #@7
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 464
    :cond_0
    iget-object v0, p0, Lgov/nist/javax/sip/clientauthutils/AuthenticationHelperImpl;->cachedCredentials:Lgov/nist/javax/sip/clientauthutils/CredentialsCache;

    #@d
    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/clientauthutils/CredentialsCache;->removeAuthenticationHeader(Ljava/lang/String;)V

    #@10
    .line 461
    return-void
.end method

.method public setAuthenticationHeaders(Ljavax/sip/message/Request;)V
    .locals 8
    .param p1, "request"    # Ljavax/sip/message/Request;

    #@0
    .prologue
    move-object v4, p1

    #@1
    .line 436
    check-cast v4, Lgov/nist/javax/sip/message/SIPRequest;

    #@3
    .line 438
    .local v4, "sipRequest":Lgov/nist/javax/sip/message/SIPRequest;
    invoke-virtual {v4}, Lgov/nist/javax/sip/message/SIPRequest;->getCallId()Ljavax/sip/header/CallIdHeader;

    #@6
    move-result-object v5

    #@7
    invoke-interface {v5}, Ljavax/sip/header/CallIdHeader;->getCallId()Ljava/lang/String;

    #@a
    move-result-object v3

    #@b
    .line 440
    .local v3, "callId":Ljava/lang/String;
    const-string/jumbo v5, "Authorization"

    #@e
    invoke-interface {p1, v5}, Ljavax/sip/message/Request;->removeHeader(Ljava/lang/String;)V

    #@11
    .line 441
    iget-object v5, p0, Lgov/nist/javax/sip/clientauthutils/AuthenticationHelperImpl;->cachedCredentials:Lgov/nist/javax/sip/clientauthutils/CredentialsCache;

    #@13
    invoke-virtual {v5, v3}, Lgov/nist/javax/sip/clientauthutils/CredentialsCache;->getCachedAuthorizationHeaders(Ljava/lang/String;)Ljava/util/Collection;

    #@16
    move-result-object v2

    #@17
    .line 443
    .local v2, "authHeaders":Ljava/util/Collection;, "Ljava/util/Collection<Ljavax/sip/header/AuthorizationHeader;>;"
    if-nez v2, :cond_1

    #@19
    .line 444
    iget-object v5, p0, Lgov/nist/javax/sip/clientauthutils/AuthenticationHelperImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    #@1b
    invoke-virtual {v5}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    #@1e
    move-result v5

    #@1f
    if-eqz v5, :cond_0

    #@21
    .line 445
    iget-object v5, p0, Lgov/nist/javax/sip/clientauthutils/AuthenticationHelperImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    #@23
    invoke-virtual {v5}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    #@26
    move-result-object v5

    #@27
    .line 446
    new-instance v6, Ljava/lang/StringBuilder;

    #@29
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@2c
    const-string/jumbo v7, "Could not find authentication headers for "

    #@2f
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v6

    #@33
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v6

    #@37
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3a
    move-result-object v6

    #@3b
    .line 445
    invoke-interface {v5, v6}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@3e
    .line 447
    :cond_0
    return-void

    #@3f
    .line 450
    :cond_1
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@42
    move-result-object v1

    #@43
    .local v1, "authHeader$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@46
    move-result v5

    #@47
    if-eqz v5, :cond_2

    #@49
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@4c
    move-result-object v0

    #@4d
    check-cast v0, Ljavax/sip/header/AuthorizationHeader;

    #@4f
    .line 451
    .local v0, "authHeader":Ljavax/sip/header/AuthorizationHeader;
    invoke-interface {p1, v0}, Ljavax/sip/message/Request;->addHeader(Ljavax/sip/header/Header;)V

    #@52
    goto :goto_0

    #@53
    .line 435
    .end local v0    # "authHeader":Ljavax/sip/header/AuthorizationHeader;
    :cond_2
    return-void
.end method

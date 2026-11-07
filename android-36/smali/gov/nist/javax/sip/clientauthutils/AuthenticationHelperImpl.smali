.class public Lgov/nist/javax/sip/clientauthutils/AuthenticationHelperImpl;
.super Ljava/lang/Object;
.source "AuthenticationHelperImpl.java"

# interfaces
.implements Lgov/nist/javax/sip/clientauthutils/AuthenticationHelper;


# instance fields
.field private greylist accountManager:Ljava/lang/Object;

.field private greylist cachedCredentials:Lgov/nist/javax/sip/clientauthutils/CredentialsCache;

.field private greylist headerFactory:Ljavax/sip/header/HeaderFactory;

.field private greylist sipStack:Lgov/nist/javax/sip/SipStackImpl;

.field greylist timer:Ljava/util/Timer;


# direct methods
.method public constructor greylist <init>(Lgov/nist/javax/sip/SipStackImpl;Lgov/nist/javax/sip/clientauthutils/AccountManager;Ljavax/sip/header/HeaderFactory;)V
    .registers 6
    .param p1, "sipStack"    # Lgov/nist/javax/sip/SipStackImpl;
    .param p2, "accountManager"    # Lgov/nist/javax/sip/clientauthutils/AccountManager;
    .param p3, "headerFactory"    # Ljavax/sip/header/HeaderFactory;

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    const/4 v0, 0x0

    iput-object v0, p0, Lgov/nist/javax/sip/clientauthutils/AuthenticationHelperImpl;->accountManager:Ljava/lang/Object;

    .line 94
    iput-object p2, p0, Lgov/nist/javax/sip/clientauthutils/AuthenticationHelperImpl;->accountManager:Ljava/lang/Object;

    .line 95
    iput-object p3, p0, Lgov/nist/javax/sip/clientauthutils/AuthenticationHelperImpl;->headerFactory:Ljavax/sip/header/HeaderFactory;

    .line 96
    iput-object p1, p0, Lgov/nist/javax/sip/clientauthutils/AuthenticationHelperImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    .line 98
    new-instance v0, Lgov/nist/javax/sip/clientauthutils/CredentialsCache;

    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getTimer()Ljava/util/Timer;

    move-result-object v1

    invoke-direct {v0, v1}, Lgov/nist/javax/sip/clientauthutils/CredentialsCache;-><init>(Ljava/util/Timer;)V

    iput-object v0, p0, Lgov/nist/javax/sip/clientauthutils/AuthenticationHelperImpl;->cachedCredentials:Lgov/nist/javax/sip/clientauthutils/CredentialsCache;

    .line 99
    return-void
.end method

.method public constructor greylist <init>(Lgov/nist/javax/sip/SipStackImpl;Lgov/nist/javax/sip/clientauthutils/SecureAccountManager;Ljavax/sip/header/HeaderFactory;)V
    .registers 6
    .param p1, "sipStack"    # Lgov/nist/javax/sip/SipStackImpl;
    .param p2, "accountManager"    # Lgov/nist/javax/sip/clientauthutils/SecureAccountManager;
    .param p3, "headerFactory"    # Ljavax/sip/header/HeaderFactory;

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    const/4 v0, 0x0

    iput-object v0, p0, Lgov/nist/javax/sip/clientauthutils/AuthenticationHelperImpl;->accountManager:Ljava/lang/Object;

    .line 111
    iput-object p2, p0, Lgov/nist/javax/sip/clientauthutils/AuthenticationHelperImpl;->accountManager:Ljava/lang/Object;

    .line 112
    iput-object p3, p0, Lgov/nist/javax/sip/clientauthutils/AuthenticationHelperImpl;->headerFactory:Ljavax/sip/header/HeaderFactory;

    .line 113
    iput-object p1, p0, Lgov/nist/javax/sip/clientauthutils/AuthenticationHelperImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    .line 115
    new-instance v0, Lgov/nist/javax/sip/clientauthutils/CredentialsCache;

    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getTimer()Ljava/util/Timer;

    move-result-object v1

    invoke-direct {v0, v1}, Lgov/nist/javax/sip/clientauthutils/CredentialsCache;-><init>(Ljava/util/Timer;)V

    iput-object v0, p0, Lgov/nist/javax/sip/clientauthutils/AuthenticationHelperImpl;->cachedCredentials:Lgov/nist/javax/sip/clientauthutils/CredentialsCache;

    .line 116
    return-void
.end method

.method private greylist getAuthorization(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljavax/sip/header/WWWAuthenticateHeader;Lgov/nist/javax/sip/clientauthutils/UserCredentialHash;)Ljavax/sip/header/AuthorizationHeader;
    .registers 19
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "uri"    # Ljava/lang/String;
    .param p3, "requestBody"    # Ljava/lang/String;
    .param p4, "authHeader"    # Ljavax/sip/header/WWWAuthenticateHeader;
    .param p5, "userCredentials"    # Lgov/nist/javax/sip/clientauthutils/UserCredentialHash;

    .line 364
    const/4 v0, 0x0

    .line 368
    .local v0, "response":Ljava/lang/String;
    invoke-interface/range {p4 .. p4}, Ljavax/sip/header/WWWAuthenticateHeader;->getQop()Ljava/lang/String;

    move-result-object v1

    .line 369
    .local v1, "qopList":Ljava/lang/String;
    if-eqz v1, :cond_a

    const-string v2, "auth"

    goto :goto_b

    :cond_a
    const/4 v2, 0x0

    :goto_b
    move-object v11, v2

    .line 370
    .local v11, "qop":Ljava/lang/String;
    const-string v6, "00000001"

    .line 371
    .local v6, "nc_value":Ljava/lang/String;
    const-string v7, "xyz"

    .line 373
    .local v7, "cnonce":Ljava/lang/String;
    invoke-interface/range {p4 .. p4}, Ljavax/sip/header/WWWAuthenticateHeader;->getAlgorithm()Ljava/lang/String;

    move-result-object v3

    .line 374
    invoke-interface/range {p5 .. p5}, Lgov/nist/javax/sip/clientauthutils/UserCredentialHash;->getHashUserDomainPassword()Ljava/lang/String;

    move-result-object v4

    invoke-interface/range {p4 .. p4}, Ljavax/sip/header/WWWAuthenticateHeader;->getNonce()Ljava/lang/String;

    move-result-object v5

    iget-object v2, p0, Lgov/nist/javax/sip/clientauthutils/AuthenticationHelperImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    .line 376
    invoke-virtual {v2}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v12

    .line 373
    move-object v8, p1

    move-object v9, p2

    move-object/from16 v10, p3

    invoke-static/range {v3 .. v12}, Lgov/nist/javax/sip/clientauthutils/MessageDigestAlgorithm;->calculateResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lgov/nist/core/StackLogger;)Ljava/lang/String;

    move-result-object v2

    .line 378
    .end local v0    # "response":Ljava/lang/String;
    .local v2, "response":Ljava/lang/String;
    const/4 v3, 0x0

    .line 380
    .local v3, "authorization":Ljavax/sip/header/AuthorizationHeader;
    move-object/from16 v4, p4

    :try_start_2d
    instance-of v0, v4, Ljavax/sip/header/ProxyAuthenticateHeader;

    if-eqz v0, :cond_3d

    .line 381
    iget-object v0, p0, Lgov/nist/javax/sip/clientauthutils/AuthenticationHelperImpl;->headerFactory:Ljavax/sip/header/HeaderFactory;

    .line 382
    invoke-interface {v4}, Ljavax/sip/header/WWWAuthenticateHeader;->getScheme()Ljava/lang/String;

    move-result-object v5

    .line 381
    invoke-interface {v0, v5}, Ljavax/sip/header/HeaderFactory;->createProxyAuthorizationHeader(Ljava/lang/String;)Ljavax/sip/header/ProxyAuthorizationHeader;

    move-result-object v0

    move-object v3, v0

    .end local v3    # "authorization":Ljavax/sip/header/AuthorizationHeader;
    .local v0, "authorization":Ljavax/sip/header/AuthorizationHeader;
    goto :goto_48

    .line 384
    .end local v0    # "authorization":Ljavax/sip/header/AuthorizationHeader;
    .restart local v3    # "authorization":Ljavax/sip/header/AuthorizationHeader;
    :cond_3d
    iget-object v0, p0, Lgov/nist/javax/sip/clientauthutils/AuthenticationHelperImpl;->headerFactory:Ljavax/sip/header/HeaderFactory;

    invoke-interface {v4}, Ljavax/sip/header/WWWAuthenticateHeader;->getScheme()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Ljavax/sip/header/HeaderFactory;->createAuthorizationHeader(Ljava/lang/String;)Ljavax/sip/header/AuthorizationHeader;

    move-result-object v0

    .end local v3    # "authorization":Ljavax/sip/header/AuthorizationHeader;
    .restart local v0    # "authorization":Ljavax/sip/header/AuthorizationHeader;
    move-object v3, v0

    .line 387
    .end local v0    # "authorization":Ljavax/sip/header/AuthorizationHeader;
    .restart local v3    # "authorization":Ljavax/sip/header/AuthorizationHeader;
    :goto_48
    invoke-interface/range {p5 .. p5}, Lgov/nist/javax/sip/clientauthutils/UserCredentialHash;->getUserName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljavax/sip/header/AuthorizationHeader;->setUsername(Ljava/lang/String;)V

    .line 388
    invoke-interface {v4}, Ljavax/sip/header/WWWAuthenticateHeader;->getRealm()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljavax/sip/header/AuthorizationHeader;->setRealm(Ljava/lang/String;)V

    .line 389
    invoke-interface {v4}, Ljavax/sip/header/WWWAuthenticateHeader;->getNonce()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljavax/sip/header/AuthorizationHeader;->setNonce(Ljava/lang/String;)V

    .line 390
    const-string v0, "uri"

    invoke-interface {v3, v0, p2}, Ljavax/sip/header/AuthorizationHeader;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    invoke-interface {v3, v2}, Ljavax/sip/header/AuthorizationHeader;->setResponse(Ljava/lang/String;)V

    .line 392
    invoke-interface {v4}, Ljavax/sip/header/WWWAuthenticateHeader;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_72

    .line 393
    invoke-interface {v4}, Ljavax/sip/header/WWWAuthenticateHeader;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljavax/sip/header/AuthorizationHeader;->setAlgorithm(Ljava/lang/String;)V

    .line 396
    :cond_72
    invoke-interface {v4}, Ljavax/sip/header/WWWAuthenticateHeader;->getOpaque()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7f

    .line 397
    invoke-interface {v4}, Ljavax/sip/header/WWWAuthenticateHeader;->getOpaque()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljavax/sip/header/AuthorizationHeader;->setOpaque(Ljava/lang/String;)V

    .line 401
    :cond_7f
    if-eqz v11, :cond_8e

    .line 402
    invoke-interface {v3, v11}, Ljavax/sip/header/AuthorizationHeader;->setQop(Ljava/lang/String;)V

    .line 403
    invoke-interface {v3, v7}, Ljavax/sip/header/AuthorizationHeader;->setCNonce(Ljava/lang/String;)V

    .line 404
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v3, v0}, Ljavax/sip/header/AuthorizationHeader;->setNonceCount(I)V

    .line 407
    :cond_8e
    invoke-interface {v3, v2}, Ljavax/sip/header/AuthorizationHeader;->setResponse(Ljava/lang/String;)V
    :try_end_91
    .catch Ljava/text/ParseException; {:try_start_2d .. :try_end_91} :catch_93

    .line 411
    nop

    .line 413
    return-object v3

    .line 409
    :catch_93
    move-exception v0

    .line 410
    .local v0, "ex":Ljava/text/ParseException;
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v8, "Failed to create an authorization header!"

    invoke-direct {v5, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method private greylist getAuthorization(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljavax/sip/header/WWWAuthenticateHeader;Lgov/nist/javax/sip/clientauthutils/UserCredentials;)Ljavax/sip/header/AuthorizationHeader;
    .registers 22
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "uri"    # Ljava/lang/String;
    .param p3, "requestBody"    # Ljava/lang/String;
    .param p4, "authHeader"    # Ljavax/sip/header/WWWAuthenticateHeader;
    .param p5, "userCredentials"    # Lgov/nist/javax/sip/clientauthutils/UserCredentials;

    .line 297
    move-object/from16 v1, p0

    const/4 v0, 0x0

    .line 301
    .local v0, "response":Ljava/lang/String;
    invoke-interface/range {p4 .. p4}, Ljavax/sip/header/WWWAuthenticateHeader;->getQop()Ljava/lang/String;

    move-result-object v2

    .line 302
    .local v2, "qopList":Ljava/lang/String;
    if-eqz v2, :cond_c

    const-string v3, "auth"

    goto :goto_d

    :cond_c
    const/4 v3, 0x0

    :goto_d
    move-object v14, v3

    .line 303
    .local v14, "qop":Ljava/lang/String;
    const-string v9, "00000001"

    .line 304
    .local v9, "nc_value":Ljava/lang/String;
    const-string v10, "xyz"

    .line 306
    .local v10, "cnonce":Ljava/lang/String;
    invoke-interface/range {p4 .. p4}, Ljavax/sip/header/WWWAuthenticateHeader;->getAlgorithm()Ljava/lang/String;

    move-result-object v4

    .line 307
    invoke-interface/range {p5 .. p5}, Lgov/nist/javax/sip/clientauthutils/UserCredentials;->getUserName()Ljava/lang/String;

    move-result-object v5

    invoke-interface/range {p4 .. p4}, Ljavax/sip/header/WWWAuthenticateHeader;->getRealm()Ljava/lang/String;

    move-result-object v6

    .line 308
    invoke-interface/range {p5 .. p5}, Lgov/nist/javax/sip/clientauthutils/UserCredentials;->getPassword()Ljava/lang/String;

    move-result-object v7

    invoke-interface/range {p4 .. p4}, Ljavax/sip/header/WWWAuthenticateHeader;->getNonce()Ljava/lang/String;

    move-result-object v8

    iget-object v3, v1, Lgov/nist/javax/sip/clientauthutils/AuthenticationHelperImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    .line 310
    invoke-virtual {v3}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v15

    .line 306
    move-object/from16 v11, p1

    move-object/from16 v12, p2

    move-object/from16 v13, p3

    invoke-static/range {v4 .. v15}, Lgov/nist/javax/sip/clientauthutils/MessageDigestAlgorithm;->calculateResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lgov/nist/core/StackLogger;)Ljava/lang/String;

    move-result-object v3

    .line 312
    .end local v0    # "response":Ljava/lang/String;
    .local v3, "response":Ljava/lang/String;
    const/4 v4, 0x0

    .line 314
    .local v4, "authorization":Ljavax/sip/header/AuthorizationHeader;
    move-object/from16 v5, p4

    :try_start_39
    instance-of v0, v5, Ljavax/sip/header/ProxyAuthenticateHeader;

    if-eqz v0, :cond_49

    .line 315
    iget-object v0, v1, Lgov/nist/javax/sip/clientauthutils/AuthenticationHelperImpl;->headerFactory:Ljavax/sip/header/HeaderFactory;

    .line 316
    invoke-interface {v5}, Ljavax/sip/header/WWWAuthenticateHeader;->getScheme()Ljava/lang/String;

    move-result-object v6

    .line 315
    invoke-interface {v0, v6}, Ljavax/sip/header/HeaderFactory;->createProxyAuthorizationHeader(Ljava/lang/String;)Ljavax/sip/header/ProxyAuthorizationHeader;

    move-result-object v0

    move-object v4, v0

    .end local v4    # "authorization":Ljavax/sip/header/AuthorizationHeader;
    .local v0, "authorization":Ljavax/sip/header/AuthorizationHeader;
    goto :goto_54

    .line 318
    .end local v0    # "authorization":Ljavax/sip/header/AuthorizationHeader;
    .restart local v4    # "authorization":Ljavax/sip/header/AuthorizationHeader;
    :cond_49
    iget-object v0, v1, Lgov/nist/javax/sip/clientauthutils/AuthenticationHelperImpl;->headerFactory:Ljavax/sip/header/HeaderFactory;

    invoke-interface {v5}, Ljavax/sip/header/WWWAuthenticateHeader;->getScheme()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6}, Ljavax/sip/header/HeaderFactory;->createAuthorizationHeader(Ljava/lang/String;)Ljavax/sip/header/AuthorizationHeader;

    move-result-object v0

    .end local v4    # "authorization":Ljavax/sip/header/AuthorizationHeader;
    .restart local v0    # "authorization":Ljavax/sip/header/AuthorizationHeader;
    move-object v4, v0

    .line 321
    .end local v0    # "authorization":Ljavax/sip/header/AuthorizationHeader;
    .restart local v4    # "authorization":Ljavax/sip/header/AuthorizationHeader;
    :goto_54
    invoke-interface/range {p5 .. p5}, Lgov/nist/javax/sip/clientauthutils/UserCredentials;->getUserName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0}, Ljavax/sip/header/AuthorizationHeader;->setUsername(Ljava/lang/String;)V

    .line 322
    invoke-interface {v5}, Ljavax/sip/header/WWWAuthenticateHeader;->getRealm()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0}, Ljavax/sip/header/AuthorizationHeader;->setRealm(Ljava/lang/String;)V

    .line 323
    invoke-interface {v5}, Ljavax/sip/header/WWWAuthenticateHeader;->getNonce()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0}, Ljavax/sip/header/AuthorizationHeader;->setNonce(Ljava/lang/String;)V

    .line 324
    const-string v0, "uri"
    :try_end_6b
    .catch Ljava/text/ParseException; {:try_start_39 .. :try_end_6b} :catch_a3

    move-object/from16 v12, p2

    :try_start_6d
    invoke-interface {v4, v0, v12}, Ljavax/sip/header/AuthorizationHeader;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    invoke-interface {v4, v3}, Ljavax/sip/header/AuthorizationHeader;->setResponse(Ljava/lang/String;)V

    .line 326
    invoke-interface {v5}, Ljavax/sip/header/WWWAuthenticateHeader;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_80

    .line 327
    invoke-interface {v5}, Ljavax/sip/header/WWWAuthenticateHeader;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0}, Ljavax/sip/header/AuthorizationHeader;->setAlgorithm(Ljava/lang/String;)V

    .line 330
    :cond_80
    invoke-interface {v5}, Ljavax/sip/header/WWWAuthenticateHeader;->getOpaque()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8d

    .line 331
    invoke-interface {v5}, Ljavax/sip/header/WWWAuthenticateHeader;->getOpaque()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0}, Ljavax/sip/header/AuthorizationHeader;->setOpaque(Ljava/lang/String;)V

    .line 335
    :cond_8d
    if-eqz v14, :cond_9c

    .line 336
    invoke-interface {v4, v14}, Ljavax/sip/header/AuthorizationHeader;->setQop(Ljava/lang/String;)V

    .line 337
    invoke-interface {v4, v10}, Ljavax/sip/header/AuthorizationHeader;->setCNonce(Ljava/lang/String;)V

    .line 338
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v4, v0}, Ljavax/sip/header/AuthorizationHeader;->setNonceCount(I)V

    .line 341
    :cond_9c
    invoke-interface {v4, v3}, Ljavax/sip/header/AuthorizationHeader;->setResponse(Ljava/lang/String;)V
    :try_end_9f
    .catch Ljava/text/ParseException; {:try_start_6d .. :try_end_9f} :catch_a1

    .line 345
    nop

    .line 347
    return-object v4

    .line 343
    :catch_a1
    move-exception v0

    goto :goto_a6

    :catch_a3
    move-exception v0

    move-object/from16 v12, p2

    .line 344
    .local v0, "ex":Ljava/text/ParseException;
    :goto_a6
    new-instance v6, Ljava/lang/RuntimeException;

    const-string v7, "Failed to create an authorization header!"

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method private greylist removeBranchID(Ljavax/sip/message/Request;)V
    .registers 4
    .param p1, "request"    # Ljavax/sip/message/Request;

    .line 424
    const-string v0, "Via"

    invoke-interface {p1, v0}, Ljavax/sip/message/Request;->getHeader(Ljava/lang/String;)Ljavax/sip/header/Header;

    move-result-object v0

    check-cast v0, Ljavax/sip/header/ViaHeader;

    .line 426
    .local v0, "viaHeader":Ljavax/sip/header/ViaHeader;
    const-string v1, "branch"

    invoke-interface {v0, v1}, Ljavax/sip/header/ViaHeader;->removeParameter(Ljava/lang/String;)V

    .line 428
    return-void
.end method


# virtual methods
.method public greylist handleChallenge(Ljavax/sip/message/Response;Ljavax/sip/ClientTransaction;Ljavax/sip/SipProvider;I)Ljavax/sip/ClientTransaction;
    .registers 26
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

    .line 129
    move-object/from16 v1, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move/from16 v9, p4

    :try_start_8
    iget-object v0, v1, Lgov/nist/javax/sip/clientauthutils/AuthenticationHelperImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v0}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 130
    iget-object v0, v1, Lgov/nist/javax/sip/clientauthutils/AuthenticationHelperImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v0}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleChallenge: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 133
    :cond_2c
    invoke-interface {v8}, Ljavax/sip/ClientTransaction;->getRequest()Ljavax/sip/message/Request;

    move-result-object v0

    check-cast v0, Lgov/nist/javax/sip/message/SIPRequest;

    move-object v10, v0

    .line 135
    .local v10, "challengedRequest":Lgov/nist/javax/sip/message/SIPRequest;
    const/4 v0, 0x0

    .line 141
    .local v0, "reoriginatedRequest":Ljavax/sip/message/Request;
    invoke-virtual {v10}, Lgov/nist/javax/sip/message/SIPRequest;->getToTag()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_87

    .line 142
    invoke-interface {v8}, Ljavax/sip/ClientTransaction;->getDialog()Ljavax/sip/Dialog;

    move-result-object v2

    if-eqz v2, :cond_87

    .line 143
    invoke-interface {v8}, Ljavax/sip/ClientTransaction;->getDialog()Ljavax/sip/Dialog;

    move-result-object v2

    invoke-interface {v2}, Ljavax/sip/Dialog;->getState()Ljavax/sip/DialogState;

    move-result-object v2

    sget-object v3, Ljavax/sip/DialogState;->CONFIRMED:Ljavax/sip/DialogState;

    if-eq v2, v3, :cond_4d

    goto :goto_87

    .line 151
    :cond_4d
    nop

    .line 152
    invoke-interface {v8}, Ljavax/sip/ClientTransaction;->getDialog()Ljavax/sip/Dialog;

    move-result-object v2

    invoke-virtual {v10}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljavax/sip/Dialog;->createRequest(Ljava/lang/String;)Ljavax/sip/message/Request;

    move-result-object v2

    .line 153
    .end local v0    # "reoriginatedRequest":Ljavax/sip/message/Request;
    .local v2, "reoriginatedRequest":Ljavax/sip/message/Request;
    invoke-virtual {v10}, Lgov/nist/javax/sip/message/SIPRequest;->getHeaderNames()Ljava/util/ListIterator;

    move-result-object v0

    .line 154
    .local v0, "headerNames":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_5e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_85

    .line 155
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 156
    .local v3, "headerName":Ljava/lang/String;
    invoke-interface {v2, v3}, Ljavax/sip/message/Request;->getHeader(Ljava/lang/String;)Ljavax/sip/header/Header;

    move-result-object v4

    if-eqz v4, :cond_84

    .line 157
    invoke-interface {v2, v3}, Ljavax/sip/message/Request;->getHeaders(Ljava/lang/String;)Ljava/util/ListIterator;

    move-result-object v4

    .line 158
    .local v4, "iterator":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Ljavax/sip/header/Header;>;"
    :goto_74
    invoke-interface {v4}, Ljava/util/ListIterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_84

    .line 159
    invoke-interface {v4}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljavax/sip/header/Header;

    invoke-interface {v2, v5}, Ljavax/sip/message/Request;->addHeader(Ljavax/sip/header/Header;)V

    goto :goto_74

    .line 162
    .end local v3    # "headerName":Ljava/lang/String;
    .end local v4    # "iterator":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Ljavax/sip/header/Header;>;"
    :cond_84
    goto :goto_5e

    .line 154
    :cond_85
    move-object v11, v2

    goto :goto_8e

    .line 144
    .end local v2    # "reoriginatedRequest":Ljavax/sip/message/Request;
    .local v0, "reoriginatedRequest":Ljavax/sip/message/Request;
    :cond_87
    :goto_87
    invoke-virtual {v10}, Lgov/nist/javax/sip/message/SIPRequest;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/sip/message/Request;

    move-object v11, v2

    .line 169
    .end local v0    # "reoriginatedRequest":Ljavax/sip/message/Request;
    .local v11, "reoriginatedRequest":Ljavax/sip/message/Request;
    :goto_8e
    invoke-direct {v1, v11}, Lgov/nist/javax/sip/clientauthutils/AuthenticationHelperImpl;->removeBranchID(Ljavax/sip/message/Request;)V

    .line 171
    if-eqz v7, :cond_264

    if-eqz v11, :cond_264

    .line 175
    const/4 v0, 0x0

    .line 177
    .local v0, "authHeaders":Ljava/util/ListIterator;
    invoke-interface {v7}, Ljavax/sip/message/Response;->getStatusCode()I

    move-result v2

    const/16 v3, 0x191

    if-ne v2, v3, :cond_a6

    .line 178
    const-string v2, "WWW-Authenticate"

    invoke-interface {v7, v2}, Ljavax/sip/message/Response;->getHeaders(Ljava/lang/String;)Ljava/util/ListIterator;

    move-result-object v2

    move-object v12, v2

    .end local v0    # "authHeaders":Ljava/util/ListIterator;
    .local v2, "authHeaders":Ljava/util/ListIterator;
    goto :goto_b5

    .line 179
    .end local v2    # "authHeaders":Ljava/util/ListIterator;
    .restart local v0    # "authHeaders":Ljava/util/ListIterator;
    :cond_a6
    invoke-interface {v7}, Ljavax/sip/message/Response;->getStatusCode()I

    move-result v2

    const/16 v3, 0x197

    if-ne v2, v3, :cond_25a

    .line 180
    const-string v2, "Proxy-Authenticate"

    invoke-interface {v7, v2}, Ljavax/sip/message/Response;->getHeaders(Ljava/lang/String;)Ljava/util/ListIterator;

    move-result-object v2

    move-object v12, v2

    .line 185
    .end local v0    # "authHeaders":Ljava/util/ListIterator;
    .local v12, "authHeaders":Ljava/util/ListIterator;
    :goto_b5
    if-eqz v12, :cond_250

    .line 192
    const-string v0, "Authorization"

    invoke-interface {v11, v0}, Ljavax/sip/message/Request;->removeHeader(Ljava/lang/String;)V

    .line 193
    const-string v0, "Proxy-Authorization"

    invoke-interface {v11, v0}, Ljavax/sip/message/Request;->removeHeader(Ljava/lang/String;)V

    .line 199
    const-string v0, "CSeq"

    invoke-interface {v11, v0}, Ljavax/sip/message/Request;->getHeader(Ljava/lang/String;)Ljavax/sip/header/Header;

    move-result-object v0

    check-cast v0, Ljavax/sip/header/CSeqHeader;
    :try_end_c9
    .catch Ljavax/sip/SipException; {:try_start_8 .. :try_end_c9} :catch_286
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_c9} :catch_272

    move-object v13, v0

    .line 201
    .local v13, "cSeq":Ljavax/sip/header/CSeqHeader;
    :try_start_ca
    invoke-interface {v13}, Ljavax/sip/header/CSeqHeader;->getSeqNumber()J

    move-result-wide v2

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    invoke-interface {v13, v2, v3}, Ljavax/sip/header/CSeqHeader;->setSeqNumber(J)V
    :try_end_d4
    .catch Ljavax/sip/InvalidArgumentException; {:try_start_ca .. :try_end_d4} :catch_230
    .catch Ljavax/sip/SipException; {:try_start_ca .. :try_end_d4} :catch_286
    .catch Ljava/lang/Exception; {:try_start_ca .. :try_end_d4} :catch_272

    .line 205
    nop

    .line 211
    :try_start_d5
    invoke-virtual {v10}, Lgov/nist/javax/sip/message/SIPRequest;->getRouteHeaders()Lgov/nist/javax/sip/header/RouteList;

    move-result-object v0

    if-nez v0, :cond_11b

    .line 212
    move-object v0, v8

    check-cast v0, Lgov/nist/javax/sip/stack/SIPClientTransaction;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getNextHop()Ljavax/sip/address/Hop;

    move-result-object v0

    .line 213
    .local v0, "hop":Ljavax/sip/address/Hop;
    invoke-interface {v11}, Ljavax/sip/message/Request;->getRequestURI()Ljavax/sip/address/URI;

    move-result-object v2

    check-cast v2, Ljavax/sip/address/SipURI;

    .line 215
    .local v2, "sipUri":Ljavax/sip/address/SipURI;
    invoke-interface {v0}, Ljavax/sip/address/Hop;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2}, Ljavax/sip/address/SipURI;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_10d

    iget-object v3, v1, Lgov/nist/javax/sip/clientauthutils/AuthenticationHelperImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    .line 216
    invoke-virtual {v3, v10}, Lgov/nist/javax/sip/SipStackImpl;->getRouter(Lgov/nist/javax/sip/message/SIPRequest;)Ljavax/sip/address/Router;

    move-result-object v3

    invoke-interface {v3}, Ljavax/sip/address/Router;->getOutboundProxy()Ljavax/sip/address/Hop;

    move-result-object v3

    invoke-interface {v0, v3}, Ljavax/sip/address/Hop;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_10d

    .line 218
    invoke-interface {v0}, Ljavax/sip/address/Hop;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljavax/sip/address/SipURI;->setMAddrParam(Ljava/lang/String;)V

    .line 219
    :cond_10d
    invoke-interface {v0}, Ljavax/sip/address/Hop;->getPort()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_11b

    invoke-interface {v0}, Ljavax/sip/address/Hop;->getPort()I

    move-result v3

    invoke-interface {v2, v3}, Ljavax/sip/address/SipURI;->setPort(I)V
    :try_end_11b
    .catch Ljavax/sip/SipException; {:try_start_d5 .. :try_end_11b} :catch_286
    .catch Ljava/lang/Exception; {:try_start_d5 .. :try_end_11b} :catch_272

    .line 221
    .end local v0    # "hop":Ljavax/sip/address/Hop;
    .end local v2    # "sipUri":Ljavax/sip/address/SipURI;
    :cond_11b
    nop

    .line 222
    move-object/from16 v14, p3

    :try_start_11e
    invoke-interface {v14, v11}, Ljavax/sip/SipProvider;->getNewClientTransaction(Ljavax/sip/message/Request;)Ljavax/sip/ClientTransaction;

    move-result-object v0

    .line 224
    .local v0, "retryTran":Ljavax/sip/ClientTransaction;
    const/4 v2, 0x0

    .line 225
    .local v2, "authHeader":Ljavax/sip/header/WWWAuthenticateHeader;
    invoke-interface {v8}, Ljavax/sip/ClientTransaction;->getRequest()Ljavax/sip/message/Request;

    move-result-object v3

    invoke-interface {v3}, Ljavax/sip/message/Request;->getRequestURI()Ljavax/sip/address/URI;

    move-result-object v3

    check-cast v3, Ljavax/sip/address/SipURI;

    move-object v15, v3

    .line 226
    .local v15, "requestUri":Ljavax/sip/address/SipURI;
    :goto_12e
    invoke-interface {v12}, Ljava/util/ListIterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_20b

    .line 227
    invoke-interface {v12}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Ljavax/sip/header/WWWAuthenticateHeader;

    .line 228
    .end local v2    # "authHeader":Ljavax/sip/header/WWWAuthenticateHeader;
    .local v5, "authHeader":Ljavax/sip/header/WWWAuthenticateHeader;
    invoke-interface {v5}, Ljavax/sip/header/WWWAuthenticateHeader;->getRealm()Ljava/lang/String;

    move-result-object v2

    .line 229
    .local v2, "realm":Ljava/lang/String;
    const/16 v16, 0x0

    .line 231
    .local v16, "authorization":Ljavax/sip/header/AuthorizationHeader;
    iget-object v3, v1, Lgov/nist/javax/sip/clientauthutils/AuthenticationHelperImpl;->accountManager:Ljava/lang/Object;

    instance-of v3, v3, Lgov/nist/javax/sip/clientauthutils/SecureAccountManager;
    :try_end_145
    .catch Ljavax/sip/SipException; {:try_start_11e .. :try_end_145} :catch_270
    .catch Ljava/lang/Exception; {:try_start_11e .. :try_end_145} :catch_26e

    const-string v4, ""

    if-eqz v3, :cond_18e

    .line 232
    :try_start_149
    iget-object v3, v1, Lgov/nist/javax/sip/clientauthutils/AuthenticationHelperImpl;->accountManager:Ljava/lang/Object;

    check-cast v3, Lgov/nist/javax/sip/clientauthutils/SecureAccountManager;

    .line 233
    invoke-interface {v3, v8, v2}, Lgov/nist/javax/sip/clientauthutils/SecureAccountManager;->getCredentialHash(Ljavax/sip/ClientTransaction;Ljava/lang/String;)Lgov/nist/javax/sip/clientauthutils/UserCredentialHash;

    move-result-object v6

    .line 234
    .local v6, "credHash":Lgov/nist/javax/sip/clientauthutils/UserCredentialHash;
    invoke-interface {v11}, Ljavax/sip/message/Request;->getRequestURI()Ljavax/sip/address/URI;

    move-result-object v3

    move-object/from16 v17, v3

    .line 235
    .local v17, "uri":Ljavax/sip/address/URI;
    invoke-interface {v6}, Lgov/nist/javax/sip/clientauthutils/UserCredentialHash;->getSipDomain()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v18, v3

    .line 236
    .local v18, "sipDomain":Ljava/lang/String;
    nop

    .line 237
    move-object v3, v2

    .end local v2    # "realm":Ljava/lang/String;
    .local v3, "realm":Ljava/lang/String;
    invoke-interface {v11}, Ljavax/sip/message/Request;->getMethod()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v19, v3

    .end local v3    # "realm":Ljava/lang/String;
    .local v19, "realm":Ljava/lang/String;
    invoke-interface/range {v17 .. v17}, Ljavax/sip/address/URI;->toString()Ljava/lang/String;

    move-result-object v3

    .line 238
    invoke-interface {v11}, Ljavax/sip/message/Request;->getContent()Ljava/lang/Object;

    move-result-object v20

    if-nez v20, :cond_170

    goto :goto_179

    :cond_170
    new-instance v4, Ljava/lang/String;
    :try_end_172
    .catch Ljavax/sip/SipException; {:try_start_149 .. :try_end_172} :catch_270
    .catch Ljava/lang/Exception; {:try_start_149 .. :try_end_172} :catch_26e

    .line 239
    :try_start_172
    invoke-interface {v11}, Ljavax/sip/message/Request;->getRawContent()[B

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/lang/String;-><init>([B)V
    :try_end_179
    .catch Ljavax/sip/SipException; {:try_start_172 .. :try_end_179} :catch_189
    .catch Ljava/lang/Exception; {:try_start_172 .. :try_end_179} :catch_184

    .line 236
    :goto_179
    move-object/from16 v1, p0

    move-object/from16 v7, v19

    .end local v19    # "realm":Ljava/lang/String;
    .local v7, "realm":Ljava/lang/String;
    :try_start_17d
    invoke-direct/range {v1 .. v6}, Lgov/nist/javax/sip/clientauthutils/AuthenticationHelperImpl;->getAuthorization(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljavax/sip/header/WWWAuthenticateHeader;Lgov/nist/javax/sip/clientauthutils/UserCredentialHash;)Ljavax/sip/header/AuthorizationHeader;

    move-result-object v2

    .line 240
    .end local v6    # "credHash":Lgov/nist/javax/sip/clientauthutils/UserCredentialHash;
    .end local v16    # "authorization":Ljavax/sip/header/AuthorizationHeader;
    .end local v17    # "uri":Ljavax/sip/address/URI;
    .local v2, "authorization":Ljavax/sip/header/AuthorizationHeader;
    move-object/from16 v3, v18

    goto :goto_1c4

    .line 273
    .end local v0    # "retryTran":Ljavax/sip/ClientTransaction;
    .end local v2    # "authorization":Ljavax/sip/header/AuthorizationHeader;
    .end local v5    # "authHeader":Ljavax/sip/header/WWWAuthenticateHeader;
    .end local v7    # "realm":Ljava/lang/String;
    .end local v10    # "challengedRequest":Lgov/nist/javax/sip/message/SIPRequest;
    .end local v11    # "reoriginatedRequest":Ljavax/sip/message/Request;
    .end local v12    # "authHeaders":Ljava/util/ListIterator;
    .end local v13    # "cSeq":Ljavax/sip/header/CSeqHeader;
    .end local v15    # "requestUri":Ljavax/sip/address/SipURI;
    .end local v18    # "sipDomain":Ljava/lang/String;
    :catch_184
    move-exception v0

    move-object/from16 v1, p0

    goto/16 :goto_275

    .line 271
    :catch_189
    move-exception v0

    move-object/from16 v1, p0

    goto/16 :goto_289

    .line 241
    .restart local v0    # "retryTran":Ljavax/sip/ClientTransaction;
    .local v2, "realm":Ljava/lang/String;
    .restart local v5    # "authHeader":Ljavax/sip/header/WWWAuthenticateHeader;
    .restart local v10    # "challengedRequest":Lgov/nist/javax/sip/message/SIPRequest;
    .restart local v11    # "reoriginatedRequest":Ljavax/sip/message/Request;
    .restart local v12    # "authHeaders":Ljava/util/ListIterator;
    .restart local v13    # "cSeq":Ljavax/sip/header/CSeqHeader;
    .restart local v15    # "requestUri":Ljavax/sip/address/SipURI;
    .restart local v16    # "authorization":Ljavax/sip/header/AuthorizationHeader;
    :cond_18e
    move-object v7, v2

    .end local v2    # "realm":Ljava/lang/String;
    .restart local v7    # "realm":Ljava/lang/String;
    iget-object v2, v1, Lgov/nist/javax/sip/clientauthutils/AuthenticationHelperImpl;->accountManager:Ljava/lang/Object;

    check-cast v2, Lgov/nist/javax/sip/clientauthutils/AccountManager;

    invoke-interface {v2, v8, v7}, Lgov/nist/javax/sip/clientauthutils/AccountManager;->getCredentials(Ljavax/sip/ClientTransaction;Ljava/lang/String;)Lgov/nist/javax/sip/clientauthutils/UserCredentials;

    move-result-object v6

    .line 242
    .local v6, "userCreds":Lgov/nist/javax/sip/clientauthutils/UserCredentials;
    invoke-interface {v6}, Lgov/nist/javax/sip/clientauthutils/UserCredentials;->getSipDomain()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v18, v2

    .line 243
    .restart local v18    # "sipDomain":Ljava/lang/String;
    if-eqz v6, :cond_201

    .line 250
    nop

    .line 251
    invoke-interface {v11}, Ljavax/sip/message/Request;->getMethod()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v11}, Ljavax/sip/message/Request;->getRequestURI()Ljavax/sip/address/URI;

    move-result-object v3

    invoke-interface {v3}, Ljavax/sip/address/URI;->toString()Ljava/lang/String;

    move-result-object v3

    .line 252
    invoke-interface {v11}, Ljavax/sip/message/Request;->getContent()Ljava/lang/Object;

    move-result-object v17

    if-nez v17, :cond_1b3

    goto :goto_1bc

    :cond_1b3
    new-instance v4, Ljava/lang/String;
    :try_end_1b5
    .catch Ljavax/sip/SipException; {:try_start_17d .. :try_end_1b5} :catch_270
    .catch Ljava/lang/Exception; {:try_start_17d .. :try_end_1b5} :catch_26e

    .line 253
    :try_start_1b5
    invoke-interface {v11}, Ljavax/sip/message/Request;->getRawContent()[B

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/lang/String;-><init>([B)V
    :try_end_1bc
    .catch Ljavax/sip/SipException; {:try_start_1b5 .. :try_end_1bc} :catch_189
    .catch Ljava/lang/Exception; {:try_start_1b5 .. :try_end_1bc} :catch_184

    .line 250
    :goto_1bc
    move-object/from16 v1, p0

    :try_start_1be
    invoke-direct/range {v1 .. v6}, Lgov/nist/javax/sip/clientauthutils/AuthenticationHelperImpl;->getAuthorization(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljavax/sip/header/WWWAuthenticateHeader;Lgov/nist/javax/sip/clientauthutils/UserCredentials;)Ljavax/sip/header/AuthorizationHeader;

    move-result-object v2

    move-object/from16 v3, v18

    .line 255
    .end local v6    # "userCreds":Lgov/nist/javax/sip/clientauthutils/UserCredentials;
    .end local v16    # "authorization":Ljavax/sip/header/AuthorizationHeader;
    .end local v18    # "sipDomain":Ljava/lang/String;
    .local v2, "authorization":Ljavax/sip/header/AuthorizationHeader;
    .local v3, "sipDomain":Ljava/lang/String;
    :goto_1c4
    iget-object v4, v1, Lgov/nist/javax/sip/clientauthutils/AuthenticationHelperImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v4}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v4

    if-eqz v4, :cond_1ef

    .line 256
    iget-object v4, v1, Lgov/nist/javax/sip/clientauthutils/AuthenticationHelperImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v4}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v17, v5

    .end local v5    # "authHeader":Ljavax/sip/header/WWWAuthenticateHeader;
    .local v17, "authHeader":Ljavax/sip/header/WWWAuthenticateHeader;
    const-string v5, "Created authorization header: "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 257
    invoke-interface {v2}, Ljavax/sip/header/AuthorizationHeader;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 256
    invoke-interface {v4, v5}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto :goto_1f1

    .line 255
    .end local v17    # "authHeader":Ljavax/sip/header/WWWAuthenticateHeader;
    .restart local v5    # "authHeader":Ljavax/sip/header/WWWAuthenticateHeader;
    :cond_1ef
    move-object/from16 v17, v5

    .line 259
    .end local v5    # "authHeader":Ljavax/sip/header/WWWAuthenticateHeader;
    .restart local v17    # "authHeader":Ljavax/sip/header/WWWAuthenticateHeader;
    :goto_1f1
    if-eqz v9, :cond_1f8

    .line 260
    iget-object v4, v1, Lgov/nist/javax/sip/clientauthutils/AuthenticationHelperImpl;->cachedCredentials:Lgov/nist/javax/sip/clientauthutils/CredentialsCache;

    invoke-virtual {v4, v3, v2, v9}, Lgov/nist/javax/sip/clientauthutils/CredentialsCache;->cacheAuthorizationHeader(Ljava/lang/String;Ljavax/sip/header/AuthorizationHeader;I)V

    .line 263
    :cond_1f8
    invoke-interface {v11, v2}, Ljavax/sip/message/Request;->addHeader(Ljavax/sip/header/Header;)V

    .line 264
    .end local v2    # "authorization":Ljavax/sip/header/AuthorizationHeader;
    .end local v3    # "sipDomain":Ljava/lang/String;
    .end local v7    # "realm":Ljava/lang/String;
    move-object/from16 v7, p1

    move-object/from16 v2, v17

    goto/16 :goto_12e

    .line 244
    .end local v17    # "authHeader":Ljavax/sip/header/WWWAuthenticateHeader;
    .restart local v5    # "authHeader":Ljavax/sip/header/WWWAuthenticateHeader;
    .restart local v6    # "userCreds":Lgov/nist/javax/sip/clientauthutils/UserCredentials;
    .restart local v7    # "realm":Ljava/lang/String;
    .restart local v16    # "authorization":Ljavax/sip/header/AuthorizationHeader;
    .restart local v18    # "sipDomain":Ljava/lang/String;
    :cond_201
    move-object/from16 v17, v5

    .end local v5    # "authHeader":Ljavax/sip/header/WWWAuthenticateHeader;
    .restart local v17    # "authHeader":Ljavax/sip/header/WWWAuthenticateHeader;
    new-instance v2, Ljavax/sip/SipException;

    const-string v3, "Cannot find user creds for the given user name and realm"

    invoke-direct {v2, v3}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lgov/nist/javax/sip/clientauthutils/AuthenticationHelperImpl;
    .end local p1    # "challenge":Ljavax/sip/message/Response;
    .end local p2    # "challengedTransaction":Ljavax/sip/ClientTransaction;
    .end local p3    # "transactionCreator":Ljavax/sip/SipProvider;
    .end local p4    # "cacheTime":I
    throw v2

    .line 266
    .end local v6    # "userCreds":Lgov/nist/javax/sip/clientauthutils/UserCredentials;
    .end local v7    # "realm":Ljava/lang/String;
    .end local v16    # "authorization":Ljavax/sip/header/AuthorizationHeader;
    .end local v17    # "authHeader":Ljavax/sip/header/WWWAuthenticateHeader;
    .end local v18    # "sipDomain":Ljava/lang/String;
    .local v2, "authHeader":Ljavax/sip/header/WWWAuthenticateHeader;
    .restart local p0    # "this":Lgov/nist/javax/sip/clientauthutils/AuthenticationHelperImpl;
    .restart local p1    # "challenge":Ljavax/sip/message/Response;
    .restart local p2    # "challengedTransaction":Ljavax/sip/ClientTransaction;
    .restart local p3    # "transactionCreator":Ljavax/sip/SipProvider;
    .restart local p4    # "cacheTime":I
    :cond_20b
    iget-object v3, v1, Lgov/nist/javax/sip/clientauthutils/AuthenticationHelperImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v3}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v3

    if-eqz v3, :cond_22f

    .line 267
    iget-object v3, v1, Lgov/nist/javax/sip/clientauthutils/AuthenticationHelperImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v3}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Returning authorization transaction."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 270
    :cond_22f
    return-object v0

    .line 202
    .end local v0    # "retryTran":Ljavax/sip/ClientTransaction;
    .end local v2    # "authHeader":Ljavax/sip/header/WWWAuthenticateHeader;
    .end local v15    # "requestUri":Ljavax/sip/address/SipURI;
    :catch_230
    move-exception v0

    move-object/from16 v14, p3

    .line 203
    .local v0, "ex":Ljavax/sip/InvalidArgumentException;
    new-instance v2, Ljavax/sip/SipException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid CSeq -- could not increment : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 204
    invoke-interface {v13}, Ljavax/sip/header/CSeqHeader;->getSeqNumber()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lgov/nist/javax/sip/clientauthutils/AuthenticationHelperImpl;
    .end local p1    # "challenge":Ljavax/sip/message/Response;
    .end local p2    # "challengedTransaction":Ljavax/sip/ClientTransaction;
    .end local p3    # "transactionCreator":Ljavax/sip/SipProvider;
    .end local p4    # "cacheTime":I
    throw v2

    .line 186
    .end local v0    # "ex":Ljavax/sip/InvalidArgumentException;
    .end local v13    # "cSeq":Ljavax/sip/header/CSeqHeader;
    .restart local p0    # "this":Lgov/nist/javax/sip/clientauthutils/AuthenticationHelperImpl;
    .restart local p1    # "challenge":Ljavax/sip/message/Response;
    .restart local p2    # "challengedTransaction":Ljavax/sip/ClientTransaction;
    .restart local p3    # "transactionCreator":Ljavax/sip/SipProvider;
    .restart local p4    # "cacheTime":I
    :cond_250
    move-object/from16 v14, p3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Could not find WWWAuthenticate or ProxyAuthenticate headers"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lgov/nist/javax/sip/clientauthutils/AuthenticationHelperImpl;
    .end local p1    # "challenge":Ljavax/sip/message/Response;
    .end local p2    # "challengedTransaction":Ljavax/sip/ClientTransaction;
    .end local p3    # "transactionCreator":Ljavax/sip/SipProvider;
    .end local p4    # "cacheTime":I
    throw v0

    .line 182
    .end local v12    # "authHeaders":Ljava/util/ListIterator;
    .local v0, "authHeaders":Ljava/util/ListIterator;
    .restart local p0    # "this":Lgov/nist/javax/sip/clientauthutils/AuthenticationHelperImpl;
    .restart local p1    # "challenge":Ljavax/sip/message/Response;
    .restart local p2    # "challengedTransaction":Ljavax/sip/ClientTransaction;
    .restart local p3    # "transactionCreator":Ljavax/sip/SipProvider;
    .restart local p4    # "cacheTime":I
    :cond_25a
    move-object/from16 v14, p3

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Unexpected status code "

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lgov/nist/javax/sip/clientauthutils/AuthenticationHelperImpl;
    .end local p1    # "challenge":Ljavax/sip/message/Response;
    .end local p2    # "challengedTransaction":Ljavax/sip/ClientTransaction;
    .end local p3    # "transactionCreator":Ljavax/sip/SipProvider;
    .end local p4    # "cacheTime":I
    throw v2

    .line 171
    .end local v0    # "authHeaders":Ljava/util/ListIterator;
    .restart local p0    # "this":Lgov/nist/javax/sip/clientauthutils/AuthenticationHelperImpl;
    .restart local p1    # "challenge":Ljavax/sip/message/Response;
    .restart local p2    # "challengedTransaction":Ljavax/sip/ClientTransaction;
    .restart local p3    # "transactionCreator":Ljavax/sip/SipProvider;
    .restart local p4    # "cacheTime":I
    :cond_264
    move-object/from16 v14, p3

    .line 172
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v2, "A null argument was passed to handle challenge."

    invoke-direct {v0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lgov/nist/javax/sip/clientauthutils/AuthenticationHelperImpl;
    .end local p1    # "challenge":Ljavax/sip/message/Response;
    .end local p2    # "challengedTransaction":Ljavax/sip/ClientTransaction;
    .end local p3    # "transactionCreator":Ljavax/sip/SipProvider;
    .end local p4    # "cacheTime":I
    throw v0
    :try_end_26e
    .catch Ljavax/sip/SipException; {:try_start_1be .. :try_end_26e} :catch_270
    .catch Ljava/lang/Exception; {:try_start_1be .. :try_end_26e} :catch_26e

    .line 273
    .end local v10    # "challengedRequest":Lgov/nist/javax/sip/message/SIPRequest;
    .end local v11    # "reoriginatedRequest":Ljavax/sip/message/Request;
    .restart local p0    # "this":Lgov/nist/javax/sip/clientauthutils/AuthenticationHelperImpl;
    .restart local p1    # "challenge":Ljavax/sip/message/Response;
    .restart local p2    # "challengedTransaction":Ljavax/sip/ClientTransaction;
    .restart local p3    # "transactionCreator":Ljavax/sip/SipProvider;
    .restart local p4    # "cacheTime":I
    :catch_26e
    move-exception v0

    goto :goto_275

    .line 271
    :catch_270
    move-exception v0

    goto :goto_289

    .line 273
    :catch_272
    move-exception v0

    move-object/from16 v14, p3

    .line 274
    .local v0, "ex":Ljava/lang/Exception;
    :goto_275
    iget-object v2, v1, Lgov/nist/javax/sip/clientauthutils/AuthenticationHelperImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v2}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v2

    const-string v3, "Unexpected exception "

    invoke-interface {v2, v3, v0}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 275
    new-instance v2, Ljavax/sip/SipException;

    invoke-direct {v2, v3, v0}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 271
    .end local v0    # "ex":Ljava/lang/Exception;
    :catch_286
    move-exception v0

    move-object/from16 v14, p3

    .line 272
    .local v0, "ex":Ljavax/sip/SipException;
    :goto_289
    throw v0
.end method

.method public greylist removeCachedAuthenticationHeaders(Ljava/lang/String;)V
    .registers 4
    .param p1, "callId"    # Ljava/lang/String;

    .line 462
    if-eqz p1, :cond_8

    .line 464
    iget-object v0, p0, Lgov/nist/javax/sip/clientauthutils/AuthenticationHelperImpl;->cachedCredentials:Lgov/nist/javax/sip/clientauthutils/CredentialsCache;

    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/clientauthutils/CredentialsCache;->removeAuthenticationHeader(Ljava/lang/String;)V

    .line 466
    return-void

    .line 463
    :cond_8
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null callId argument "

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist setAuthenticationHeaders(Ljavax/sip/message/Request;)V
    .registers 8
    .param p1, "request"    # Ljavax/sip/message/Request;

    .line 436
    move-object v0, p1

    check-cast v0, Lgov/nist/javax/sip/message/SIPRequest;

    .line 438
    .local v0, "sipRequest":Lgov/nist/javax/sip/message/SIPRequest;
    invoke-virtual {v0}, Lgov/nist/javax/sip/message/SIPRequest;->getCallId()Ljavax/sip/header/CallIdHeader;

    move-result-object v1

    invoke-interface {v1}, Ljavax/sip/header/CallIdHeader;->getCallId()Ljava/lang/String;

    move-result-object v1

    .line 440
    .local v1, "callId":Ljava/lang/String;
    const-string v2, "Authorization"

    invoke-interface {p1, v2}, Ljavax/sip/message/Request;->removeHeader(Ljava/lang/String;)V

    .line 441
    iget-object v2, p0, Lgov/nist/javax/sip/clientauthutils/AuthenticationHelperImpl;->cachedCredentials:Lgov/nist/javax/sip/clientauthutils/CredentialsCache;

    .line 442
    invoke-virtual {v2, v1}, Lgov/nist/javax/sip/clientauthutils/CredentialsCache;->getCachedAuthorizationHeaders(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v2

    .line 443
    .local v2, "authHeaders":Ljava/util/Collection;, "Ljava/util/Collection<Ljavax/sip/header/AuthorizationHeader;>;"
    if-nez v2, :cond_3d

    .line 444
    iget-object v3, p0, Lgov/nist/javax/sip/clientauthutils/AuthenticationHelperImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v3}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v3

    if-eqz v3, :cond_3c

    .line 445
    iget-object v3, p0, Lgov/nist/javax/sip/clientauthutils/AuthenticationHelperImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v3}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not find authentication headers for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 447
    :cond_3c
    return-void

    .line 450
    :cond_3d
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_41
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_51

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavax/sip/header/AuthorizationHeader;

    .line 451
    .local v4, "authHeader":Ljavax/sip/header/AuthorizationHeader;
    invoke-interface {p1, v4}, Ljavax/sip/message/Request;->addHeader(Ljavax/sip/header/Header;)V

    .line 452
    .end local v4    # "authHeader":Ljavax/sip/header/AuthorizationHeader;
    goto :goto_41

    .line 454
    :cond_51
    return-void
.end method

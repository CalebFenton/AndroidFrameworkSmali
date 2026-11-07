.class Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;
.super Landroid/net/sip/ISipSession$Stub;
.source "SipSessionGroup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/sip/SipSessionGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SipSessionImpl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SipKeepAlive;,
        Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SessionTimer;
    }
.end annotation


# static fields
.field private static final blacklist SSI_DBG:Z = true

.field private static final blacklist SSI_TAG:Ljava/lang/String; = "SipSessionImpl"


# instance fields
.field blacklist mAuthenticationRetryCount:I

.field blacklist mClientTransaction:Ljavax/sip/ClientTransaction;

.field blacklist mDialog:Ljavax/sip/Dialog;

.field blacklist mInCall:Z

.field blacklist mInviteReceived:Ljavax/sip/RequestEvent;

.field blacklist mPeerProfile:Landroid/net/sip/SipProfile;

.field blacklist mPeerSessionDescription:Ljava/lang/String;

.field blacklist mProxy:Lcom/android/server/sip/SipSessionListenerProxy;

.field blacklist mReferSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

.field blacklist mReferredBy:Lgov/nist/javax/sip/header/extensions/ReferredByHeader;

.field blacklist mReplaces:Ljava/lang/String;

.field blacklist mServerTransaction:Ljavax/sip/ServerTransaction;

.field blacklist mSessionTimer:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SessionTimer;

.field private blacklist mSipKeepAlive:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SipKeepAlive;

.field private blacklist mSipSessionImpl:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

.field blacklist mState:I

.field final synthetic blacklist this$0:Lcom/android/server/sip/SipSessionGroup;


# direct methods
.method static bridge synthetic blacklist -$$Nest$mcancelSessionTimer(Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->cancelSessionTimer()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monError(Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;ILjava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->onError(ILjava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monError(Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;Ljava/lang/Throwable;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mprocessCommand(Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;Ljava/util/EventObject;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->processCommand(Ljava/util/EventObject;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mreset(Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->reset()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mstartSessionTimer(Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->startSessionTimer(I)V

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/server/sip/SipSessionGroup;Landroid/net/sip/ISipSessionListener;)V
    .registers 4
    .param p1, "this$0"    # Lcom/android/server/sip/SipSessionGroup;
    .param p2, "listener"    # Landroid/net/sip/ISipSessionListener;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 592
    iput-object p1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    invoke-direct {p0}, Landroid/net/sip/ISipSession$Stub;-><init>()V

    .line 538
    new-instance v0, Lcom/android/server/sip/SipSessionListenerProxy;

    invoke-direct {v0}, Lcom/android/server/sip/SipSessionListenerProxy;-><init>()V

    iput-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mProxy:Lcom/android/server/sip/SipSessionListenerProxy;

    .line 539
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mState:I

    .line 593
    invoke-virtual {p0, p2}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->setListener(Landroid/net/sip/ISipSessionListener;)V

    .line 594
    return-void
.end method

.method private blacklist cancelSessionTimer()V
    .registers 2

    .line 1361
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mSessionTimer:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SessionTimer;

    if-eqz v0, :cond_c

    .line 1362
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mSessionTimer:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SessionTimer;

    invoke-virtual {v0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SessionTimer;->cancel()V

    .line 1363
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mSessionTimer:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SessionTimer;

    .line 1365
    :cond_c
    return-void
.end method

.method private blacklist createErrorMessage(Ljavax/sip/message/Response;)Ljava/lang/String;
    .registers 4
    .param p1, "response"    # Ljavax/sip/message/Response;

    .line 1368
    invoke-interface {p1}, Ljavax/sip/message/Response;->getReasonPhrase()Ljava/lang/String;

    move-result-object v0

    .line 1369
    invoke-interface {p1}, Ljavax/sip/message/Response;->getStatusCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    .line 1368
    const-string v1, "%s (%d)"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private blacklist crossDomainAuthenticationRequired(Ljavax/sip/message/Response;)Z
    .registers 5
    .param p1, "response"    # Ljavax/sip/message/Response;

    .line 1006
    invoke-direct {p0, p1}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->getRealmFromResponse(Ljavax/sip/message/Response;)Ljava/lang/String;

    move-result-object v0

    .line 1007
    .local v0, "realm":Ljava/lang/String;
    if-nez v0, :cond_8

    const-string v0, ""

    .line 1008
    :cond_8
    iget-object v1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    invoke-static {v1}, Lcom/android/server/sip/SipSessionGroup;->-$$Nest$fgetmLocalProfile(Lcom/android/server/sip/SipSessionGroup;)Landroid/net/sip/SipProfile;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/sip/SipProfile;->getSipDomain()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    return v1
.end method

.method private blacklist doCommandAsync(Ljava/util/EventObject;)V
    .registers 5
    .param p1, "command"    # Ljava/util/EventObject;

    .line 682
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$1;

    invoke-direct {v1, p0, p1}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$1;-><init>(Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;Ljava/util/EventObject;)V

    const-string v2, "SipSessionAsyncCmdThread"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 694
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 695
    return-void
.end method

.method private blacklist enableKeepAlive()V
    .registers 5

    .line 1373
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mSipSessionImpl:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    if-eqz v0, :cond_a

    .line 1374
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mSipSessionImpl:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    invoke-virtual {v0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->stopKeepAliveProcess()V

    goto :goto_10

    .line 1376
    :cond_a
    invoke-virtual {p0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->duplicate()Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mSipSessionImpl:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    .line 1379
    :goto_10
    :try_start_10
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mSipSessionImpl:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    iget-object v1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mPeerProfile:Landroid/net/sip/SipProfile;

    const/4 v2, 0x0

    const/16 v3, 0xa

    invoke-virtual {v0, v3, v1, v2}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->startKeepAliveProcess(ILandroid/net/sip/SipProfile;Lcom/android/server/sip/SipSessionGroup$KeepAliveProcessCallback;)V
    :try_end_1a
    .catch Ljavax/sip/SipException; {:try_start_10 .. :try_end_1a} :catch_1b

    .line 1384
    goto :goto_28

    .line 1381
    :catch_1b
    move-exception v0

    .line 1382
    .local v0, "e":Ljavax/sip/SipException;
    iget-object v1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    const-string v2, "keepalive cannot be enabled; ignored"

    invoke-static {v1, v2, v0}, Lcom/android/server/sip/SipSessionGroup;->-$$Nest$mloge(Lcom/android/server/sip/SipSessionGroup;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1383
    iget-object v1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mSipSessionImpl:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    invoke-virtual {v1}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->stopKeepAliveProcess()V

    .line 1385
    .end local v0    # "e":Ljavax/sip/SipException;
    :goto_28
    return-void
.end method

.method private blacklist endCallNormally()V
    .registers 2

    .line 1396
    invoke-direct {p0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->reset()V

    .line 1397
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mProxy:Lcom/android/server/sip/SipSessionListenerProxy;

    invoke-virtual {v0, p0}, Lcom/android/server/sip/SipSessionListenerProxy;->onCallEnded(Landroid/net/sip/ISipSession;)V

    .line 1398
    return-void
.end method

.method private blacklist endCallOnBusy()V
    .registers 2

    .line 1406
    invoke-direct {p0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->reset()V

    .line 1407
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mProxy:Lcom/android/server/sip/SipSessionListenerProxy;

    invoke-virtual {v0, p0}, Lcom/android/server/sip/SipSessionListenerProxy;->onCallBusy(Landroid/net/sip/ISipSession;)V

    .line 1408
    return-void
.end method

.method private blacklist endCallOnError(ILjava/lang/String;)V
    .registers 4
    .param p1, "errorCode"    # I
    .param p2, "message"    # Ljava/lang/String;

    .line 1401
    invoke-direct {p0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->reset()V

    .line 1402
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mProxy:Lcom/android/server/sip/SipSessionListenerProxy;

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/server/sip/SipSessionListenerProxy;->onError(Landroid/net/sip/ISipSession;ILjava/lang/String;)V

    .line 1403
    return-void
.end method

.method private blacklist endingCall(Ljava/util/EventObject;)Z
    .registers 7
    .param p1, "evt"    # Ljava/util/EventObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    .line 1331
    const-string v0, "BYE"

    invoke-static {v0, p1}, Lcom/android/server/sip/SipSessionGroup;->-$$Nest$smexpectResponse(Ljava/lang/String;Ljava/util/EventObject;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 1332
    move-object v0, p1

    check-cast v0, Ljavax/sip/ResponseEvent;

    .line 1333
    .local v0, "event":Ljavax/sip/ResponseEvent;
    invoke-virtual {v0}, Ljavax/sip/ResponseEvent;->getResponse()Ljavax/sip/message/Response;

    move-result-object v1

    .line 1335
    .local v1, "response":Ljavax/sip/message/Response;
    invoke-interface {v1}, Ljavax/sip/message/Response;->getStatusCode()I

    move-result v2

    .line 1336
    .local v2, "statusCode":I
    const/4 v3, 0x1

    sparse-switch v2, :sswitch_data_28

    goto :goto_1f

    .line 1339
    :sswitch_18
    invoke-direct {p0, v0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->handleAuthentication(Ljavax/sip/ResponseEvent;)Z

    move-result v4

    if-eqz v4, :cond_1f

    .line 1340
    return v3

    .line 1345
    :cond_1f
    :goto_1f
    invoke-direct {p0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->cancelSessionTimer()V

    .line 1346
    invoke-direct {p0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->reset()V

    .line 1347
    return v3

    .line 1349
    .end local v0    # "event":Ljavax/sip/ResponseEvent;
    .end local v1    # "response":Ljavax/sip/message/Response;
    .end local v2    # "statusCode":I
    :cond_26
    const/4 v0, 0x0

    return v0

    :sswitch_data_28
    .sparse-switch
        0x191 -> :sswitch_18
        0x197 -> :sswitch_18
    .end sparse-switch
.end method

.method private blacklist establishCall(Z)V
    .registers 4
    .param p1, "enableKeepAlive"    # Z

    .line 1388
    const/16 v0, 0x8

    iput v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mState:I

    .line 1389
    invoke-direct {p0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->cancelSessionTimer()V

    .line 1390
    iget-boolean v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mInCall:Z

    if-nez v0, :cond_10

    if-eqz p1, :cond_10

    invoke-direct {p0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->enableKeepAlive()V

    .line 1391
    :cond_10
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mInCall:Z

    .line 1392
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mProxy:Lcom/android/server/sip/SipSessionListenerProxy;

    iget-object v1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mPeerSessionDescription:Ljava/lang/String;

    invoke-virtual {v0, p0, v1}, Lcom/android/server/sip/SipSessionListenerProxy;->onCallEstablished(Landroid/net/sip/ISipSession;Ljava/lang/String;)V

    .line 1393
    return-void
.end method

.method private blacklist getAccountManager()Lgov/nist/javax/sip/clientauthutils/AccountManager;
    .registers 2

    .line 1012
    new-instance v0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$2;

    invoke-direct {v0, p0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$2;-><init>(Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;)V

    return-object v0
.end method

.method private blacklist getErrorCode(I)I
    .registers 3
    .param p1, "responseStatusCode"    # I

    .line 1438
    sparse-switch p1, :sswitch_data_12

    .line 1456
    const/16 v0, 0x1f4

    if-ge p1, v0, :cond_f

    .line 1457
    const/4 v0, -0x4

    return v0

    .line 1450
    :sswitch_9
    const/4 v0, -0x6

    return v0

    .line 1453
    :sswitch_b
    const/4 v0, -0x5

    return v0

    .line 1445
    :sswitch_d
    const/4 v0, -0x7

    return v0

    .line 1459
    :cond_f
    const/4 v0, -0x2

    return v0

    nop

    :sswitch_data_12
    .sparse-switch
        0x193 -> :sswitch_d
        0x194 -> :sswitch_d
        0x196 -> :sswitch_d
        0x198 -> :sswitch_b
        0x19a -> :sswitch_d
        0x19e -> :sswitch_9
        0x1e0 -> :sswitch_d
        0x1e4 -> :sswitch_9
        0x1e5 -> :sswitch_9
        0x1e8 -> :sswitch_d
    .end sparse-switch
.end method

.method private blacklist getErrorCode(Ljava/lang/Throwable;)I
    .registers 4
    .param p1, "exception"    # Ljava/lang/Throwable;

    .line 1465
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 1466
    .local v0, "message":Ljava/lang/String;
    instance-of v1, p1, Ljava/net/UnknownHostException;

    if-eqz v1, :cond_b

    .line 1467
    const/16 v1, -0xc

    return v1

    .line 1468
    :cond_b
    instance-of v1, p1, Ljava/io/IOException;

    if-eqz v1, :cond_11

    .line 1469
    const/4 v1, -0x1

    return v1

    .line 1471
    :cond_11
    const/4 v1, -0x4

    return v1
.end method

.method private blacklist getExpiryTime(Ljavax/sip/message/Response;)I
    .registers 7
    .param p1, "response"    # Ljavax/sip/message/Response;

    .line 925
    const/4 v0, -0x1

    .line 926
    .local v0, "time":I
    const-string v1, "Contact"

    invoke-interface {p1, v1}, Ljavax/sip/message/Response;->getHeader(Ljava/lang/String;)Ljavax/sip/header/Header;

    move-result-object v1

    check-cast v1, Ljavax/sip/header/ContactHeader;

    .line 927
    .local v1, "contact":Ljavax/sip/header/ContactHeader;
    if-eqz v1, :cond_f

    .line 928
    invoke-interface {v1}, Ljavax/sip/header/ContactHeader;->getExpires()I

    move-result v0

    .line 930
    :cond_f
    const-string v2, "Expires"

    invoke-interface {p1, v2}, Ljavax/sip/message/Response;->getHeader(Ljava/lang/String;)Ljavax/sip/header/Header;

    move-result-object v2

    check-cast v2, Ljavax/sip/header/ExpiresHeader;

    .line 931
    .local v2, "expires":Ljavax/sip/header/ExpiresHeader;
    if-eqz v2, :cond_25

    if-ltz v0, :cond_21

    invoke-interface {v2}, Ljavax/sip/header/ExpiresHeader;->getExpires()I

    move-result v3

    if-le v0, v3, :cond_25

    .line 932
    :cond_21
    invoke-interface {v2}, Ljavax/sip/header/ExpiresHeader;->getExpires()I

    move-result v0

    .line 934
    :cond_25
    if-gtz v0, :cond_29

    .line 935
    const/16 v0, 0xe10

    .line 937
    :cond_29
    const-string v3, "Min-Expires"

    invoke-interface {p1, v3}, Ljavax/sip/message/Response;->getHeader(Ljava/lang/String;)Ljavax/sip/header/Header;

    move-result-object v3

    move-object v2, v3

    check-cast v2, Ljavax/sip/header/ExpiresHeader;

    .line 938
    if-eqz v2, :cond_3e

    invoke-interface {v2}, Ljavax/sip/header/ExpiresHeader;->getExpires()I

    move-result v3

    if-ge v0, v3, :cond_3e

    .line 939
    invoke-interface {v2}, Ljavax/sip/header/ExpiresHeader;->getExpires()I

    move-result v0

    .line 942
    :cond_3e
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Expiry time = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->log(Ljava/lang/String;)V

    .line 944
    return v0
.end method

.method private blacklist getNonceFromResponse(Ljavax/sip/message/Response;)Ljava/lang/String;
    .registers 5
    .param p1, "response"    # Ljavax/sip/message/Response;

    .line 1048
    const-string v0, "WWW-Authenticate"

    invoke-interface {p1, v0}, Ljavax/sip/message/Response;->getHeader(Ljava/lang/String;)Ljavax/sip/header/Header;

    move-result-object v0

    check-cast v0, Lgov/nist/javax/sip/header/WWWAuthenticate;

    .line 1050
    .local v0, "wwwAuth":Lgov/nist/javax/sip/header/WWWAuthenticate;
    if-eqz v0, :cond_f

    invoke-virtual {v0}, Lgov/nist/javax/sip/header/WWWAuthenticate;->getNonce()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1051
    :cond_f
    const-string v1, "Proxy-Authenticate"

    invoke-interface {p1, v1}, Ljavax/sip/message/Response;->getHeader(Ljava/lang/String;)Ljavax/sip/header/Header;

    move-result-object v1

    check-cast v1, Lgov/nist/javax/sip/header/ProxyAuthenticate;

    .line 1053
    .local v1, "proxyAuth":Lgov/nist/javax/sip/header/ProxyAuthenticate;
    if-nez v1, :cond_1b

    const/4 v2, 0x0

    goto :goto_1f

    :cond_1b
    invoke-virtual {v1}, Lgov/nist/javax/sip/header/ProxyAuthenticate;->getNonce()Ljava/lang/String;

    move-result-object v2

    :goto_1f
    return-object v2
.end method

.method private blacklist getRealmFromResponse(Ljavax/sip/message/Response;)Ljava/lang/String;
    .registers 5
    .param p1, "response"    # Ljavax/sip/message/Response;

    .line 1039
    const-string v0, "WWW-Authenticate"

    invoke-interface {p1, v0}, Ljavax/sip/message/Response;->getHeader(Ljava/lang/String;)Ljavax/sip/header/Header;

    move-result-object v0

    check-cast v0, Lgov/nist/javax/sip/header/WWWAuthenticate;

    .line 1041
    .local v0, "wwwAuth":Lgov/nist/javax/sip/header/WWWAuthenticate;
    if-eqz v0, :cond_f

    invoke-virtual {v0}, Lgov/nist/javax/sip/header/WWWAuthenticate;->getRealm()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1042
    :cond_f
    const-string v1, "Proxy-Authenticate"

    invoke-interface {p1, v1}, Ljavax/sip/message/Response;->getHeader(Ljava/lang/String;)Ljavax/sip/header/Header;

    move-result-object v1

    check-cast v1, Lgov/nist/javax/sip/header/ProxyAuthenticate;

    .line 1044
    .local v1, "proxyAuth":Lgov/nist/javax/sip/header/ProxyAuthenticate;
    if-nez v1, :cond_1b

    const/4 v2, 0x0

    goto :goto_1f

    :cond_1b
    invoke-virtual {v1}, Lgov/nist/javax/sip/header/ProxyAuthenticate;->getRealm()Ljava/lang/String;

    move-result-object v2

    :goto_1f
    return-object v2
.end method

.method private blacklist getResponseString(I)Ljava/lang/String;
    .registers 4
    .param p1, "statusCode"    # I

    .line 1057
    new-instance v0, Lgov/nist/javax/sip/header/StatusLine;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/StatusLine;-><init>()V

    .line 1058
    .local v0, "statusLine":Lgov/nist/javax/sip/header/StatusLine;
    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/StatusLine;->setStatusCode(I)V

    .line 1059
    invoke-static {p1}, Lgov/nist/javax/sip/message/SIPResponse;->getReasonPhrase(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/header/StatusLine;->setReasonPhrase(Ljava/lang/String;)V

    .line 1060
    invoke-virtual {v0}, Lgov/nist/javax/sip/header/StatusLine;->encode()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private blacklist getTransaction()Ljavax/sip/Transaction;
    .registers 2

    .line 663
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mClientTransaction:Ljavax/sip/ClientTransaction;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mClientTransaction:Ljavax/sip/ClientTransaction;

    return-object v0

    .line 664
    :cond_7
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mServerTransaction:Ljavax/sip/ServerTransaction;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mServerTransaction:Ljavax/sip/ServerTransaction;

    return-object v0

    .line 665
    :cond_e
    const/4 v0, 0x0

    return-object v0
.end method

.method private blacklist handleAuthentication(Ljavax/sip/ResponseEvent;)Z
    .registers 7
    .param p1, "event"    # Ljavax/sip/ResponseEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    .line 977
    invoke-virtual {p1}, Ljavax/sip/ResponseEvent;->getResponse()Ljavax/sip/message/Response;

    move-result-object v0

    .line 978
    .local v0, "response":Ljavax/sip/message/Response;
    invoke-direct {p0, v0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->getNonceFromResponse(Ljavax/sip/message/Response;)Ljava/lang/String;

    move-result-object v1

    .line 979
    .local v1, "nonce":Ljava/lang/String;
    const/4 v2, 0x0

    if-nez v1, :cond_12

    .line 980
    const/4 v3, -0x2

    const-string v4, "server does not provide challenge"

    invoke-direct {p0, v3, v4}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->onError(ILjava/lang/String;)V

    .line 982
    return v2

    .line 983
    :cond_12
    iget v3, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mAuthenticationRetryCount:I

    const/4 v4, 0x2

    if-ge v3, v4, :cond_54

    .line 984
    iget-object v2, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    invoke-static {v2}, Lcom/android/server/sip/SipSessionGroup;->-$$Nest$fgetmSipHelper(Lcom/android/server/sip/SipSessionGroup;)Lcom/android/server/sip/SipHelper;

    move-result-object v2

    .line 985
    invoke-direct {p0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->getAccountManager()Lgov/nist/javax/sip/clientauthutils/AccountManager;

    move-result-object v3

    .line 984
    invoke-virtual {v2, p1, v3}, Lcom/android/server/sip/SipHelper;->handleChallenge(Ljavax/sip/ResponseEvent;Lgov/nist/javax/sip/clientauthutils/AccountManager;)Ljavax/sip/ClientTransaction;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mClientTransaction:Ljavax/sip/ClientTransaction;

    .line 986
    iget-object v2, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mClientTransaction:Ljavax/sip/ClientTransaction;

    invoke-interface {v2}, Ljavax/sip/ClientTransaction;->getDialog()Ljavax/sip/Dialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mDialog:Ljavax/sip/Dialog;

    .line 987
    iget v2, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mAuthenticationRetryCount:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mAuthenticationRetryCount:I

    .line 988
    invoke-static {p0, p1}, Lcom/android/server/sip/SipSessionGroup;->-$$Nest$smisLoggable(Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;Ljava/util/EventObject;)Z

    move-result v2

    if-eqz v2, :cond_53

    .line 989
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "   authentication retry count="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mAuthenticationRetryCount:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->log(Ljava/lang/String;)V

    .line 992
    :cond_53
    return v3

    .line 994
    :cond_54
    invoke-direct {p0, v0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->crossDomainAuthenticationRequired(Ljavax/sip/message/Response;)Z

    move-result v3

    if-eqz v3, :cond_65

    .line 995
    nop

    .line 996
    invoke-direct {p0, v0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->getRealmFromResponse(Ljavax/sip/message/Response;)Ljava/lang/String;

    move-result-object v3

    .line 995
    const/16 v4, -0xb

    invoke-direct {p0, v4, v3}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->onError(ILjava/lang/String;)V

    goto :goto_6b

    .line 998
    :cond_65
    const/4 v3, -0x8

    const-string v4, "incorrect username or password"

    invoke-direct {p0, v3, v4}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->onError(ILjava/lang/String;)V

    .line 1001
    :goto_6b
    return v2
.end method

.method private blacklist inCall(Ljava/util/EventObject;)Z
    .registers 7
    .param p1, "evt"    # Ljava/util/EventObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    .line 1296
    invoke-static {}, Lcom/android/server/sip/SipSessionGroup;->-$$Nest$sfgetEND_CALL()Ljava/util/EventObject;

    move-result-object v0

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-ne v0, p1, :cond_20

    .line 1298
    const/16 v0, 0xa

    iput v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mState:I

    .line 1299
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    invoke-static {v0}, Lcom/android/server/sip/SipSessionGroup;->-$$Nest$fgetmSipHelper(Lcom/android/server/sip/SipSessionGroup;)Lcom/android/server/sip/SipHelper;

    move-result-object v0

    iget-object v3, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mDialog:Ljavax/sip/Dialog;

    invoke-virtual {v0, v3}, Lcom/android/server/sip/SipHelper;->sendBye(Ljavax/sip/Dialog;)V

    .line 1300
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mProxy:Lcom/android/server/sip/SipSessionListenerProxy;

    invoke-virtual {v0, p0}, Lcom/android/server/sip/SipSessionListenerProxy;->onCallEnded(Landroid/net/sip/ISipSession;)V

    .line 1301
    invoke-direct {p0, v1}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->startSessionTimer(I)V

    .line 1302
    return v2

    .line 1303
    :cond_20
    const-string v0, "INVITE"

    invoke-static {v0, p1}, Lcom/android/server/sip/SipSessionGroup;->-$$Nest$smisRequestEvent(Ljava/lang/String;Ljava/util/EventObject;)Z

    move-result v0

    if-eqz v0, :cond_48

    .line 1305
    iput v1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mState:I

    .line 1306
    move-object v0, p1

    check-cast v0, Ljavax/sip/RequestEvent;

    iput-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mInviteReceived:Ljavax/sip/RequestEvent;

    .line 1307
    .local v0, "event":Ljavax/sip/RequestEvent;
    iget-object v1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    invoke-virtual {v0}, Ljavax/sip/RequestEvent;->getRequest()Ljavax/sip/message/Request;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/server/sip/SipSessionGroup;->-$$Nest$mextractContent(Lcom/android/server/sip/SipSessionGroup;Ljavax/sip/message/Message;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mPeerSessionDescription:Ljava/lang/String;

    .line 1308
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mServerTransaction:Ljavax/sip/ServerTransaction;

    .line 1309
    iget-object v1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mProxy:Lcom/android/server/sip/SipSessionListenerProxy;

    iget-object v3, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mPeerProfile:Landroid/net/sip/SipProfile;

    iget-object v4, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mPeerSessionDescription:Ljava/lang/String;

    invoke-virtual {v1, p0, v3, v4}, Lcom/android/server/sip/SipSessionListenerProxy;->onRinging(Landroid/net/sip/ISipSession;Landroid/net/sip/SipProfile;Ljava/lang/String;)V

    .line 1310
    return v2

    .line 1311
    .end local v0    # "event":Ljavax/sip/RequestEvent;
    :cond_48
    const-string v0, "BYE"

    invoke-static {v0, p1}, Lcom/android/server/sip/SipSessionGroup;->-$$Nest$smisRequestEvent(Ljava/lang/String;Ljava/util/EventObject;)Z

    move-result v0

    if-eqz v0, :cond_62

    .line 1312
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    invoke-static {v0}, Lcom/android/server/sip/SipSessionGroup;->-$$Nest$fgetmSipHelper(Lcom/android/server/sip/SipSessionGroup;)Lcom/android/server/sip/SipHelper;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Ljavax/sip/RequestEvent;

    const/16 v3, 0xc8

    invoke-virtual {v0, v1, v3}, Lcom/android/server/sip/SipHelper;->sendResponse(Ljavax/sip/RequestEvent;I)V

    .line 1313
    invoke-direct {p0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->endCallNormally()V

    .line 1314
    return v2

    .line 1315
    :cond_62
    const-string v0, "REFER"

    invoke-static {v0, p1}, Lcom/android/server/sip/SipSessionGroup;->-$$Nest$smisRequestEvent(Ljava/lang/String;Ljava/util/EventObject;)Z

    move-result v0

    if-eqz v0, :cond_72

    .line 1316
    move-object v0, p1

    check-cast v0, Ljavax/sip/RequestEvent;

    invoke-direct {p0, v0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->processReferRequest(Ljavax/sip/RequestEvent;)Z

    move-result v0

    return v0

    .line 1317
    :cond_72
    instance-of v0, p1, Lcom/android/server/sip/SipSessionGroup$MakeCallCommand;

    if-eqz v0, :cond_99

    .line 1319
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mState:I

    .line 1320
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    invoke-static {v0}, Lcom/android/server/sip/SipSessionGroup;->-$$Nest$fgetmSipHelper(Lcom/android/server/sip/SipSessionGroup;)Lcom/android/server/sip/SipHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mDialog:Ljavax/sip/Dialog;

    move-object v3, p1

    check-cast v3, Lcom/android/server/sip/SipSessionGroup$MakeCallCommand;

    .line 1321
    invoke-virtual {v3}, Lcom/android/server/sip/SipSessionGroup$MakeCallCommand;->getSessionDescription()Ljava/lang/String;

    move-result-object v3

    .line 1320
    invoke-virtual {v0, v1, v3}, Lcom/android/server/sip/SipHelper;->sendReinvite(Ljavax/sip/Dialog;Ljava/lang/String;)Ljavax/sip/ClientTransaction;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mClientTransaction:Ljavax/sip/ClientTransaction;

    .line 1322
    move-object v0, p1

    check-cast v0, Lcom/android/server/sip/SipSessionGroup$MakeCallCommand;

    invoke-virtual {v0}, Lcom/android/server/sip/SipSessionGroup$MakeCallCommand;->getTimeout()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->startSessionTimer(I)V

    .line 1323
    return v2

    .line 1324
    :cond_99
    instance-of v0, p1, Ljavax/sip/ResponseEvent;

    if-eqz v0, :cond_a6

    .line 1325
    const-string v0, "NOTIFY"

    invoke-static {v0, p1}, Lcom/android/server/sip/SipSessionGroup;->-$$Nest$smexpectResponse(Ljava/lang/String;Ljava/util/EventObject;)Z

    move-result v0

    if-eqz v0, :cond_a6

    return v2

    .line 1327
    :cond_a6
    const/4 v0, 0x0

    return v0
.end method

.method private blacklist incomingCall(Ljava/util/EventObject;)Z
    .registers 11
    .param p1, "evt"    # Ljava/util/EventObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    .line 1104
    instance-of v0, p1, Lcom/android/server/sip/SipSessionGroup$MakeCallCommand;

    const/4 v1, 0x1

    if-eqz v0, :cond_3c

    .line 1106
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mState:I

    .line 1107
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    invoke-static {v0}, Lcom/android/server/sip/SipSessionGroup;->-$$Nest$fgetmSipHelper(Lcom/android/server/sip/SipSessionGroup;)Lcom/android/server/sip/SipHelper;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mInviteReceived:Ljavax/sip/RequestEvent;

    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    invoke-static {v0}, Lcom/android/server/sip/SipSessionGroup;->-$$Nest$fgetmLocalProfile(Lcom/android/server/sip/SipSessionGroup;)Landroid/net/sip/SipProfile;

    move-result-object v4

    move-object v0, p1

    check-cast v0, Lcom/android/server/sip/SipSessionGroup$MakeCallCommand;

    .line 1109
    invoke-virtual {v0}, Lcom/android/server/sip/SipSessionGroup$MakeCallCommand;->getSessionDescription()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mServerTransaction:Ljavax/sip/ServerTransaction;

    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    invoke-static {v0}, Lcom/android/server/sip/SipSessionGroup;->-$$Nest$fgetmExternalIp(Lcom/android/server/sip/SipSessionGroup;)Ljava/lang/String;

    move-result-object v7

    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    invoke-static {v0}, Lcom/android/server/sip/SipSessionGroup;->-$$Nest$fgetmExternalPort(Lcom/android/server/sip/SipSessionGroup;)I

    move-result v8

    .line 1107
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/sip/SipHelper;->sendInviteOk(Ljavax/sip/RequestEvent;Landroid/net/sip/SipProfile;Ljava/lang/String;Ljavax/sip/ServerTransaction;Ljava/lang/String;I)Ljavax/sip/ServerTransaction;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mServerTransaction:Ljavax/sip/ServerTransaction;

    .line 1112
    move-object v0, p1

    check-cast v0, Lcom/android/server/sip/SipSessionGroup$MakeCallCommand;

    invoke-virtual {v0}, Lcom/android/server/sip/SipSessionGroup$MakeCallCommand;->getTimeout()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->startSessionTimer(I)V

    .line 1113
    return v1

    .line 1114
    :cond_3c
    invoke-static {}, Lcom/android/server/sip/SipSessionGroup;->-$$Nest$sfgetEND_CALL()Ljava/util/EventObject;

    move-result-object v0

    if-ne v0, p1, :cond_53

    .line 1115
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    invoke-static {v0}, Lcom/android/server/sip/SipSessionGroup;->-$$Nest$fgetmSipHelper(Lcom/android/server/sip/SipSessionGroup;)Lcom/android/server/sip/SipHelper;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mInviteReceived:Ljavax/sip/RequestEvent;

    iget-object v3, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mServerTransaction:Ljavax/sip/ServerTransaction;

    invoke-virtual {v0, v2, v3}, Lcom/android/server/sip/SipHelper;->sendInviteBusyHere(Ljavax/sip/RequestEvent;Ljavax/sip/ServerTransaction;)V

    .line 1117
    invoke-direct {p0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->endCallNormally()V

    .line 1118
    return v1

    .line 1119
    :cond_53
    const-string v0, "CANCEL"

    invoke-static {v0, p1}, Lcom/android/server/sip/SipSessionGroup;->-$$Nest$smisRequestEvent(Ljava/lang/String;Ljava/util/EventObject;)Z

    move-result v0

    if-eqz v0, :cond_7e

    .line 1120
    move-object v0, p1

    check-cast v0, Ljavax/sip/RequestEvent;

    .line 1121
    .local v0, "event":Ljavax/sip/RequestEvent;
    iget-object v2, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    invoke-static {v2}, Lcom/android/server/sip/SipSessionGroup;->-$$Nest$fgetmSipHelper(Lcom/android/server/sip/SipSessionGroup;)Lcom/android/server/sip/SipHelper;

    move-result-object v2

    const/16 v3, 0xc8

    invoke-virtual {v2, v0, v3}, Lcom/android/server/sip/SipHelper;->sendResponse(Ljavax/sip/RequestEvent;I)V

    .line 1122
    iget-object v2, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    invoke-static {v2}, Lcom/android/server/sip/SipSessionGroup;->-$$Nest$fgetmSipHelper(Lcom/android/server/sip/SipSessionGroup;)Lcom/android/server/sip/SipHelper;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mInviteReceived:Ljavax/sip/RequestEvent;

    .line 1123
    invoke-virtual {v3}, Ljavax/sip/RequestEvent;->getRequest()Ljavax/sip/message/Request;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mServerTransaction:Ljavax/sip/ServerTransaction;

    .line 1122
    invoke-virtual {v2, v3, v4}, Lcom/android/server/sip/SipHelper;->sendInviteRequestTerminated(Ljavax/sip/message/Request;Ljavax/sip/ServerTransaction;)V

    .line 1124
    invoke-direct {p0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->endCallNormally()V

    .line 1125
    return v1

    .line 1127
    .end local v0    # "event":Ljavax/sip/RequestEvent;
    :cond_7e
    const/4 v0, 0x0

    return v0
.end method

.method private blacklist incomingCallToInCall(Ljava/util/EventObject;)Z
    .registers 6
    .param p1, "evt"    # Ljava/util/EventObject;

    .line 1132
    const-string v0, "ACK"

    invoke-static {v0, p1}, Lcom/android/server/sip/SipSessionGroup;->-$$Nest$smisRequestEvent(Ljava/lang/String;Ljava/util/EventObject;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2a

    .line 1133
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    move-object v3, p1

    check-cast v3, Ljavax/sip/RequestEvent;

    invoke-virtual {v3}, Ljavax/sip/RequestEvent;->getRequest()Ljavax/sip/message/Request;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/server/sip/SipSessionGroup;->-$$Nest$mextractContent(Lcom/android/server/sip/SipSessionGroup;Ljavax/sip/message/Message;)Ljava/lang/String;

    move-result-object v0

    .line 1134
    .local v0, "sdp":Ljava/lang/String;
    if-eqz v0, :cond_1b

    iput-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mPeerSessionDescription:Ljava/lang/String;

    .line 1135
    :cond_1b
    iget-object v3, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mPeerSessionDescription:Ljava/lang/String;

    if-nez v3, :cond_26

    .line 1136
    const/4 v2, -0x4

    const-string v3, "peer sdp is empty"

    invoke-direct {p0, v2, v3}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->onError(ILjava/lang/String;)V

    goto :goto_29

    .line 1138
    :cond_26
    invoke-direct {p0, v2}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->establishCall(Z)V

    .line 1140
    :goto_29
    return v1

    .line 1141
    .end local v0    # "sdp":Ljava/lang/String;
    :cond_2a
    const-string v0, "CANCEL"

    invoke-static {v0, p1}, Lcom/android/server/sip/SipSessionGroup;->-$$Nest$smisRequestEvent(Ljava/lang/String;Ljava/util/EventObject;)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 1144
    return v1

    .line 1146
    :cond_33
    return v2
.end method

.method private blacklist isCurrentTransaction(Ljavax/sip/TransactionTerminatedEvent;)Z
    .registers 7
    .param p1, "event"    # Ljavax/sip/TransactionTerminatedEvent;

    .line 859
    invoke-virtual {p1}, Ljavax/sip/TransactionTerminatedEvent;->isServerTransaction()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 860
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mServerTransaction:Ljavax/sip/ServerTransaction;

    goto :goto_b

    .line 861
    :cond_9
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mClientTransaction:Ljavax/sip/ClientTransaction;

    :goto_b
    nop

    .line 862
    .local v0, "current":Ljavax/sip/Transaction;
    invoke-virtual {p1}, Ljavax/sip/TransactionTerminatedEvent;->isServerTransaction()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 863
    invoke-virtual {p1}, Ljavax/sip/TransactionTerminatedEvent;->getServerTransaction()Ljavax/sip/ServerTransaction;

    move-result-object v1

    goto :goto_1b

    .line 864
    :cond_17
    invoke-virtual {p1}, Ljavax/sip/TransactionTerminatedEvent;->getClientTransaction()Ljavax/sip/ClientTransaction;

    move-result-object v1

    :goto_1b
    nop

    .line 866
    .local v1, "target":Ljavax/sip/Transaction;
    if-eq v0, v1, :cond_4e

    iget v2, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mState:I

    const/16 v3, 0x9

    if-eq v2, v3, :cond_4e

    .line 867
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "not the current transaction; current="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 868
    invoke-direct {p0, v0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->toString(Ljavax/sip/Transaction;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", target="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, v1}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->toString(Ljavax/sip/Transaction;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 867
    invoke-direct {p0, v2}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->log(Ljava/lang/String;)V

    .line 869
    const/4 v2, 0x0

    return v2

    .line 870
    :cond_4e
    const/4 v2, 0x1

    if-eqz v0, :cond_6c

    .line 871
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "transaction terminated: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0, v0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->toString(Ljavax/sip/Transaction;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->log(Ljava/lang/String;)V

    .line 872
    return v2

    .line 875
    :cond_6c
    return v2
.end method

.method private blacklist log(Ljava/lang/String;)V
    .registers 3
    .param p1, "s"    # Ljava/lang/String;

    .line 1668
    const-string v0, "SipSessionImpl"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1669
    return-void
.end method

.method private blacklist onError(ILjava/lang/String;)V
    .registers 4
    .param p1, "errorCode"    # I
    .param p2, "message"    # Ljava/lang/String;

    .line 1411
    invoke-direct {p0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->cancelSessionTimer()V

    .line 1412
    iget v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mState:I

    packed-switch v0, :pswitch_data_12

    .line 1418
    invoke-direct {p0, p1, p2}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->endCallOnError(ILjava/lang/String;)V

    goto :goto_10

    .line 1415
    :pswitch_c
    invoke-direct {p0, p1, p2}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->onRegistrationFailed(ILjava/lang/String;)V

    .line 1416
    nop

    .line 1420
    :goto_10
    return-void

    nop

    :pswitch_data_12
    .packed-switch 0x1
        :pswitch_c
        :pswitch_c
    .end packed-switch
.end method

.method private blacklist onError(Ljava/lang/Throwable;)V
    .registers 4
    .param p1, "exception"    # Ljava/lang/Throwable;

    .line 1424
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    invoke-static {v0, p1}, Lcom/android/server/sip/SipSessionGroup;->-$$Nest$mgetRootCause(Lcom/android/server/sip/SipSessionGroup;Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p1

    .line 1425
    invoke-direct {p0, p1}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->getErrorCode(Ljava/lang/Throwable;)I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->onError(ILjava/lang/String;)V

    .line 1426
    return-void
.end method

.method private blacklist onError(Ljavax/sip/message/Response;)V
    .registers 5
    .param p1, "response"    # Ljavax/sip/message/Response;

    .line 1429
    invoke-interface {p1}, Ljavax/sip/message/Response;->getStatusCode()I

    move-result v0

    .line 1430
    .local v0, "statusCode":I
    iget-boolean v1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mInCall:Z

    if-nez v1, :cond_10

    const/16 v1, 0x1e6

    if-ne v0, v1, :cond_10

    .line 1431
    invoke-direct {p0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->endCallOnBusy()V

    goto :goto_1b

    .line 1433
    :cond_10
    invoke-direct {p0, v0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->getErrorCode(I)I

    move-result v1

    invoke-direct {p0, p1}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->createErrorMessage(Ljavax/sip/message/Response;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->onError(ILjava/lang/String;)V

    .line 1435
    :goto_1b
    return-void
.end method

.method private blacklist onRegistrationDone(I)V
    .registers 3
    .param p1, "duration"    # I

    .line 1476
    invoke-direct {p0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->reset()V

    .line 1477
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mProxy:Lcom/android/server/sip/SipSessionListenerProxy;

    invoke-virtual {v0, p0, p1}, Lcom/android/server/sip/SipSessionListenerProxy;->onRegistrationDone(Landroid/net/sip/ISipSession;I)V

    .line 1478
    return-void
.end method

.method private blacklist onRegistrationFailed(ILjava/lang/String;)V
    .registers 4
    .param p1, "errorCode"    # I
    .param p2, "message"    # Ljava/lang/String;

    .line 1481
    invoke-direct {p0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->reset()V

    .line 1482
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mProxy:Lcom/android/server/sip/SipSessionListenerProxy;

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/server/sip/SipSessionListenerProxy;->onRegistrationFailed(Landroid/net/sip/ISipSession;ILjava/lang/String;)V

    .line 1483
    return-void
.end method

.method private blacklist onRegistrationFailed(Ljavax/sip/message/Response;)V
    .registers 5
    .param p1, "response"    # Ljavax/sip/message/Response;

    .line 1486
    invoke-interface {p1}, Ljavax/sip/message/Response;->getStatusCode()I

    move-result v0

    .line 1487
    .local v0, "statusCode":I
    invoke-direct {p0, v0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->getErrorCode(I)I

    move-result v1

    .line 1488
    invoke-direct {p0, p1}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->createErrorMessage(Ljavax/sip/message/Response;)Ljava/lang/String;

    move-result-object v2

    .line 1487
    invoke-direct {p0, v1, v2}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->onRegistrationFailed(ILjava/lang/String;)V

    .line 1489
    return-void
.end method

.method private blacklist outgoingCall(Ljava/util/EventObject;)Z
    .registers 10
    .param p1, "evt"    # Ljava/util/EventObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    .line 1150
    const-string v0, "INVITE"

    invoke-static {v0, p1}, Lcom/android/server/sip/SipSessionGroup;->-$$Nest$smexpectResponse(Ljava/lang/String;Ljava/util/EventObject;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_8d

    .line 1151
    move-object v0, p1

    check-cast v0, Ljavax/sip/ResponseEvent;

    .line 1152
    .local v0, "event":Ljavax/sip/ResponseEvent;
    invoke-virtual {v0}, Ljavax/sip/ResponseEvent;->getResponse()Ljavax/sip/message/Response;

    move-result-object v1

    .line 1154
    .local v1, "response":Ljavax/sip/message/Response;
    invoke-interface {v1}, Ljavax/sip/message/Response;->getStatusCode()I

    move-result v4

    .line 1155
    .local v4, "statusCode":I
    sparse-switch v4, :sswitch_data_be

    .line 1189
    iget-object v5, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mReferSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    if-eqz v5, :cond_7f

    .line 1190
    iget-object v5, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    invoke-static {v5}, Lcom/android/server/sip/SipSessionGroup;->-$$Nest$fgetmSipHelper(Lcom/android/server/sip/SipSessionGroup;)Lcom/android/server/sip/SipHelper;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mReferSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    iget-object v6, v6, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mDialog:Ljavax/sip/Dialog;

    .line 1191
    const/16 v7, 0x1f7

    invoke-direct {p0, v7}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->getResponseString(I)Ljava/lang/String;

    move-result-object v7

    .line 1190
    invoke-virtual {v5, v6, v7}, Lcom/android/server/sip/SipHelper;->sendReferNotify(Ljavax/sip/Dialog;Ljava/lang/String;)V

    goto :goto_7f

    .line 1187
    :sswitch_30
    return v3

    .line 1181
    :sswitch_31
    invoke-direct {p0, v0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->handleAuthentication(Ljavax/sip/ResponseEvent;)Z

    move-result v2

    if-eqz v2, :cond_3c

    .line 1182
    iget-object v2, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    invoke-static {v2, p0}, Lcom/android/server/sip/SipSessionGroup;->-$$Nest$maddSipSession(Lcom/android/server/sip/SipSessionGroup;Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;)V

    .line 1184
    :cond_3c
    return v3

    .line 1169
    :sswitch_3d
    iget-object v2, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mReferSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    if-eqz v2, :cond_57

    .line 1170
    iget-object v2, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    invoke-static {v2}, Lcom/android/server/sip/SipSessionGroup;->-$$Nest$fgetmSipHelper(Lcom/android/server/sip/SipSessionGroup;)Lcom/android/server/sip/SipHelper;

    move-result-object v2

    iget-object v5, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mReferSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    iget-object v5, v5, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mDialog:Ljavax/sip/Dialog;

    .line 1171
    const/16 v6, 0xc8

    invoke-direct {p0, v6}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->getResponseString(I)Ljava/lang/String;

    move-result-object v6

    .line 1170
    invoke-virtual {v2, v5, v6}, Lcom/android/server/sip/SipHelper;->sendReferNotify(Ljavax/sip/Dialog;Ljava/lang/String;)V

    .line 1173
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mReferSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    .line 1175
    :cond_57
    iget-object v2, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    invoke-static {v2}, Lcom/android/server/sip/SipSessionGroup;->-$$Nest$fgetmSipHelper(Lcom/android/server/sip/SipSessionGroup;)Lcom/android/server/sip/SipHelper;

    move-result-object v2

    iget-object v5, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mDialog:Ljavax/sip/Dialog;

    invoke-virtual {v2, v0, v5}, Lcom/android/server/sip/SipHelper;->sendInviteAck(Ljavax/sip/ResponseEvent;Ljavax/sip/Dialog;)V

    .line 1176
    iget-object v2, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    invoke-static {v2, v1}, Lcom/android/server/sip/SipSessionGroup;->-$$Nest$mextractContent(Lcom/android/server/sip/SipSessionGroup;Ljavax/sip/message/Message;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mPeerSessionDescription:Ljava/lang/String;

    .line 1177
    invoke-direct {p0, v3}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->establishCall(Z)V

    .line 1178
    return v3

    .line 1162
    :sswitch_6e
    iget v2, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mState:I

    const/4 v5, 0x5

    if-ne v2, v5, :cond_7e

    .line 1163
    const/4 v2, 0x6

    iput v2, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mState:I

    .line 1164
    invoke-direct {p0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->cancelSessionTimer()V

    .line 1165
    iget-object v2, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mProxy:Lcom/android/server/sip/SipSessionListenerProxy;

    invoke-virtual {v2, p0}, Lcom/android/server/sip/SipSessionListenerProxy;->onRingingBack(Landroid/net/sip/ISipSession;)V

    .line 1167
    :cond_7e
    return v3

    .line 1193
    :cond_7f
    :goto_7f
    const/16 v5, 0x190

    if-lt v4, v5, :cond_87

    .line 1195
    invoke-direct {p0, v1}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->onError(Ljavax/sip/message/Response;)V

    .line 1196
    return v3

    .line 1197
    :cond_87
    const/16 v5, 0x12c

    if-lt v4, v5, :cond_8c

    .line 1203
    return v2

    .line 1200
    :cond_8c
    return v3

    .line 1204
    .end local v0    # "event":Ljavax/sip/ResponseEvent;
    .end local v1    # "response":Ljavax/sip/message/Response;
    .end local v4    # "statusCode":I
    :cond_8d
    invoke-static {}, Lcom/android/server/sip/SipSessionGroup;->-$$Nest$sfgetEND_CALL()Ljava/util/EventObject;

    move-result-object v1

    if-ne v1, p1, :cond_a6

    .line 1208
    const/4 v0, 0x7

    iput v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mState:I

    .line 1209
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    invoke-static {v0}, Lcom/android/server/sip/SipSessionGroup;->-$$Nest$fgetmSipHelper(Lcom/android/server/sip/SipSessionGroup;)Lcom/android/server/sip/SipHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mClientTransaction:Ljavax/sip/ClientTransaction;

    invoke-virtual {v0, v1}, Lcom/android/server/sip/SipHelper;->sendCancel(Ljavax/sip/ClientTransaction;)V

    .line 1210
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->startSessionTimer(I)V

    .line 1211
    return v3

    .line 1212
    :cond_a6
    invoke-static {v0, p1}, Lcom/android/server/sip/SipSessionGroup;->-$$Nest$smisRequestEvent(Ljava/lang/String;Ljava/util/EventObject;)Z

    move-result v0

    if-eqz v0, :cond_bd

    .line 1215
    move-object v0, p1

    check-cast v0, Ljavax/sip/RequestEvent;

    .line 1216
    .local v0, "event":Ljavax/sip/RequestEvent;
    iget-object v1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    invoke-static {v1}, Lcom/android/server/sip/SipSessionGroup;->-$$Nest$fgetmSipHelper(Lcom/android/server/sip/SipSessionGroup;)Lcom/android/server/sip/SipHelper;

    move-result-object v1

    .line 1217
    invoke-virtual {v0}, Ljavax/sip/RequestEvent;->getServerTransaction()Ljavax/sip/ServerTransaction;

    move-result-object v2

    .line 1216
    invoke-virtual {v1, v0, v2}, Lcom/android/server/sip/SipHelper;->sendInviteBusyHere(Ljavax/sip/RequestEvent;Ljavax/sip/ServerTransaction;)V

    .line 1218
    return v3

    .line 1220
    .end local v0    # "event":Ljavax/sip/RequestEvent;
    :cond_bd
    return v2

    :sswitch_data_be
    .sparse-switch
        0xb4 -> :sswitch_6e
        0xb5 -> :sswitch_6e
        0xb6 -> :sswitch_6e
        0xb7 -> :sswitch_6e
        0xc8 -> :sswitch_3d
        0x191 -> :sswitch_31
        0x197 -> :sswitch_31
        0x1eb -> :sswitch_30
    .end sparse-switch
.end method

.method private blacklist outgoingCallToReady(Ljava/util/EventObject;)Z
    .registers 8
    .param p1, "evt"    # Ljava/util/EventObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    .line 1225
    instance-of v0, p1, Ljavax/sip/ResponseEvent;

    const/4 v1, 0x0

    if-eqz v0, :cond_3c

    .line 1226
    move-object v0, p1

    check-cast v0, Ljavax/sip/ResponseEvent;

    .line 1227
    .local v0, "event":Ljavax/sip/ResponseEvent;
    invoke-virtual {v0}, Ljavax/sip/ResponseEvent;->getResponse()Ljavax/sip/message/Response;

    move-result-object v2

    .line 1228
    .local v2, "response":Ljavax/sip/message/Response;
    invoke-interface {v2}, Ljavax/sip/message/Response;->getStatusCode()I

    move-result v3

    .line 1229
    .local v3, "statusCode":I
    const-string v4, "CANCEL"

    invoke-static {v4, p1}, Lcom/android/server/sip/SipSessionGroup;->-$$Nest$smexpectResponse(Ljava/lang/String;Ljava/util/EventObject;)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_1e

    .line 1230
    const/16 v4, 0xc8

    if-ne v3, v4, :cond_32

    .line 1232
    return v5

    .line 1234
    :cond_1e
    const-string v4, "INVITE"

    invoke-static {v4, p1}, Lcom/android/server/sip/SipSessionGroup;->-$$Nest$smexpectResponse(Ljava/lang/String;Ljava/util/EventObject;)Z

    move-result v4

    if-eqz v4, :cond_3b

    .line 1235
    sparse-switch v3, :sswitch_data_4e

    .line 1241
    goto :goto_32

    .line 1240
    :sswitch_2a
    invoke-direct {p0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->endCallNormally()V

    .line 1241
    return v5

    .line 1237
    :sswitch_2e
    invoke-direct {p0, p1}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->outgoingCall(Ljava/util/EventObject;)Z

    .line 1238
    return v5

    .line 1247
    :cond_32
    :goto_32
    const/16 v4, 0x190

    if-lt v3, v4, :cond_3a

    .line 1248
    invoke-direct {p0, v2}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->onError(Ljavax/sip/message/Response;)V

    .line 1249
    return v5

    .line 1247
    .end local v0    # "event":Ljavax/sip/ResponseEvent;
    .end local v2    # "response":Ljavax/sip/message/Response;
    .end local v3    # "statusCode":I
    :cond_3a
    goto :goto_4b

    .line 1244
    .restart local v0    # "event":Ljavax/sip/ResponseEvent;
    .restart local v2    # "response":Ljavax/sip/message/Response;
    .restart local v3    # "statusCode":I
    :cond_3b
    return v1

    .line 1251
    .end local v0    # "event":Ljavax/sip/ResponseEvent;
    .end local v2    # "response":Ljavax/sip/message/Response;
    .end local v3    # "statusCode":I
    :cond_3c
    instance-of v0, p1, Ljavax/sip/TransactionTerminatedEvent;

    if-eqz v0, :cond_4b

    .line 1256
    new-instance v0, Ljavax/sip/SipException;

    const-string v2, "timed out"

    invoke-direct {v0, v2}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->onError(Ljava/lang/Throwable;)V

    goto :goto_4c

    .line 1251
    :cond_4b
    :goto_4b
    nop

    .line 1258
    :goto_4c
    return v1

    nop

    :sswitch_data_4e
    .sparse-switch
        0xc8 -> :sswitch_2e
        0x1e7 -> :sswitch_2a
    .end sparse-switch
.end method

.method private blacklist processCommand(Ljava/util/EventObject;)V
    .registers 4
    .param p1, "command"    # Ljava/util/EventObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    .line 738
    invoke-static {p1}, Lcom/android/server/sip/SipSessionGroup;->-$$Nest$smisLoggable(Ljava/util/EventObject;)Z

    move-result v0

    if-eqz v0, :cond_1c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "process cmd: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->log(Ljava/lang/String;)V

    .line 739
    :cond_1c
    invoke-virtual {p0, p1}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->process(Ljava/util/EventObject;)Z

    move-result v0

    if-nez v0, :cond_3a

    .line 740
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cannot initiate a new transaction to execute: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, -0x9

    invoke-direct {p0, v1, v0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->onError(ILjava/lang/String;)V

    .line 744
    :cond_3a
    return-void
.end method

.method private blacklist processDialogTerminated(Ljavax/sip/DialogTerminatedEvent;)V
    .registers 4
    .param p1, "event"    # Ljavax/sip/DialogTerminatedEvent;

    .line 850
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mDialog:Ljavax/sip/Dialog;

    invoke-virtual {p1}, Ljavax/sip/DialogTerminatedEvent;->getDialog()Ljavax/sip/Dialog;

    move-result-object v1

    if-ne v0, v1, :cond_13

    .line 851
    new-instance v0, Ljavax/sip/SipException;

    const-string v1, "dialog terminated"

    invoke-direct {v0, v1}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->onError(Ljava/lang/Throwable;)V

    goto :goto_39

    .line 853
    :cond_13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "not the current dialog; current="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mDialog:Ljavax/sip/Dialog;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", terminated="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 854
    invoke-virtual {p1}, Ljavax/sip/DialogTerminatedEvent;->getDialog()Ljavax/sip/Dialog;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 853
    invoke-direct {p0, v0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->log(Ljava/lang/String;)V

    .line 856
    :goto_39
    return-void
.end method

.method private blacklist processExceptions(Ljava/util/EventObject;)Z
    .registers 6
    .param p1, "evt"    # Ljava/util/EventObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    .line 820
    const-string v0, "BYE"

    invoke-static {v0, p1}, Lcom/android/server/sip/SipSessionGroup;->-$$Nest$smisRequestEvent(Ljava/lang/String;Ljava/util/EventObject;)Z

    move-result v0

    const/16 v1, 0xc8

    const/4 v2, 0x1

    if-eqz v0, :cond_1b

    .line 822
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    invoke-static {v0}, Lcom/android/server/sip/SipSessionGroup;->-$$Nest$fgetmSipHelper(Lcom/android/server/sip/SipSessionGroup;)Lcom/android/server/sip/SipHelper;

    move-result-object v0

    move-object v3, p1

    check-cast v3, Ljavax/sip/RequestEvent;

    invoke-virtual {v0, v3, v1}, Lcom/android/server/sip/SipHelper;->sendResponse(Ljavax/sip/RequestEvent;I)V

    .line 823
    invoke-direct {p0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->endCallNormally()V

    .line 824
    return v2

    .line 825
    :cond_1b
    const-string v0, "CANCEL"

    invoke-static {v0, p1}, Lcom/android/server/sip/SipSessionGroup;->-$$Nest$smisRequestEvent(Ljava/lang/String;Ljava/util/EventObject;)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 826
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    invoke-static {v0}, Lcom/android/server/sip/SipSessionGroup;->-$$Nest$fgetmSipHelper(Lcom/android/server/sip/SipSessionGroup;)Lcom/android/server/sip/SipHelper;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Ljavax/sip/RequestEvent;

    const/16 v3, 0x1e1

    invoke-virtual {v0, v1, v3}, Lcom/android/server/sip/SipHelper;->sendResponse(Ljavax/sip/RequestEvent;I)V

    .line 828
    return v2

    .line 829
    :cond_32
    instance-of v0, p1, Ljavax/sip/TransactionTerminatedEvent;

    if-eqz v0, :cond_51

    .line 830
    move-object v0, p1

    check-cast v0, Ljavax/sip/TransactionTerminatedEvent;

    invoke-direct {p0, v0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->isCurrentTransaction(Ljavax/sip/TransactionTerminatedEvent;)Z

    move-result v0

    if-eqz v0, :cond_71

    .line 831
    instance-of v0, p1, Ljavax/sip/TimeoutEvent;

    if-eqz v0, :cond_4a

    .line 832
    move-object v0, p1

    check-cast v0, Ljavax/sip/TimeoutEvent;

    invoke-direct {p0, v0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->processTimeout(Ljavax/sip/TimeoutEvent;)V

    goto :goto_50

    .line 834
    :cond_4a
    move-object v0, p1

    check-cast v0, Ljavax/sip/TransactionTerminatedEvent;

    invoke-direct {p0, v0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->processTransactionTerminated(Ljavax/sip/TransactionTerminatedEvent;)V

    .line 837
    :goto_50
    return v2

    .line 839
    :cond_51
    const-string v0, "OPTIONS"

    invoke-static {v0, p1}, Lcom/android/server/sip/SipSessionGroup;->-$$Nest$smisRequestEvent(Ljava/lang/String;Ljava/util/EventObject;)Z

    move-result v0

    if-eqz v0, :cond_66

    .line 840
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    invoke-static {v0}, Lcom/android/server/sip/SipSessionGroup;->-$$Nest$fgetmSipHelper(Lcom/android/server/sip/SipSessionGroup;)Lcom/android/server/sip/SipHelper;

    move-result-object v0

    move-object v3, p1

    check-cast v3, Ljavax/sip/RequestEvent;

    invoke-virtual {v0, v3, v1}, Lcom/android/server/sip/SipHelper;->sendResponse(Ljavax/sip/RequestEvent;I)V

    .line 841
    return v2

    .line 842
    :cond_66
    instance-of v0, p1, Ljavax/sip/DialogTerminatedEvent;

    if-eqz v0, :cond_71

    .line 843
    move-object v0, p1

    check-cast v0, Ljavax/sip/DialogTerminatedEvent;

    invoke-direct {p0, v0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->processDialogTerminated(Ljavax/sip/DialogTerminatedEvent;)V

    .line 844
    return v2

    .line 846
    :cond_71
    const/4 v0, 0x0

    return v0
.end method

.method private blacklist processReferRequest(Ljavax/sip/RequestEvent;)Z
    .registers 11
    .param p1, "event"    # Ljavax/sip/RequestEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    .line 1264
    :try_start_0
    invoke-virtual {p1}, Ljavax/sip/RequestEvent;->getRequest()Ljavax/sip/message/Request;

    move-result-object v0

    const-string v1, "Refer-To"

    .line 1265
    invoke-interface {v0, v1}, Ljavax/sip/message/Request;->getHeader(Ljava/lang/String;)Ljavax/sip/header/Header;

    move-result-object v0

    check-cast v0, Ljavax/sip/header/ReferToHeader;

    .line 1266
    .local v0, "referto":Ljavax/sip/header/ReferToHeader;
    invoke-interface {v0}, Ljavax/sip/header/ReferToHeader;->getAddress()Ljavax/sip/address/Address;

    move-result-object v1

    .line 1267
    .local v1, "address":Ljavax/sip/address/Address;
    invoke-interface {v1}, Ljavax/sip/address/Address;->getURI()Ljavax/sip/address/URI;

    move-result-object v2

    check-cast v2, Ljavax/sip/address/SipURI;

    .line 1268
    .local v2, "uri":Ljavax/sip/address/SipURI;
    const-string v3, "Replaces"

    invoke-interface {v2, v3}, Ljavax/sip/address/SipURI;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1269
    .local v3, "replacesHeader":Ljava/lang/String;
    invoke-interface {v2}, Ljavax/sip/address/SipURI;->getUser()Ljava/lang/String;

    move-result-object v4

    .line 1270
    .local v4, "username":Ljava/lang/String;
    const/4 v5, 0x0

    if-nez v4, :cond_2f

    .line 1271
    iget-object v6, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    invoke-static {v6}, Lcom/android/server/sip/SipSessionGroup;->-$$Nest$fgetmSipHelper(Lcom/android/server/sip/SipSessionGroup;)Lcom/android/server/sip/SipHelper;

    move-result-object v6

    const/16 v7, 0x190

    invoke-virtual {v6, p1, v7}, Lcom/android/server/sip/SipHelper;->sendResponse(Ljavax/sip/RequestEvent;I)V

    .line 1272
    return v5

    .line 1275
    :cond_2f
    iget-object v6, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    invoke-static {v6}, Lcom/android/server/sip/SipSessionGroup;->-$$Nest$fgetmSipHelper(Lcom/android/server/sip/SipSessionGroup;)Lcom/android/server/sip/SipHelper;

    move-result-object v6

    const/16 v7, 0xca

    invoke-virtual {v6, p1, v7}, Lcom/android/server/sip/SipHelper;->sendResponse(Ljavax/sip/RequestEvent;I)V

    .line 1276
    iget-object v6, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    iget-object v7, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mProxy:Lcom/android/server/sip/SipSessionListenerProxy;

    .line 1277
    invoke-virtual {v7}, Lcom/android/server/sip/SipSessionListenerProxy;->getListener()Landroid/net/sip/ISipSessionListener;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    invoke-static {v8}, Lcom/android/server/sip/SipSessionGroup;->-$$Nest$fgetmSipHelper(Lcom/android/server/sip/SipSessionGroup;)Lcom/android/server/sip/SipHelper;

    move-result-object v8

    .line 1278
    invoke-virtual {v8, p1}, Lcom/android/server/sip/SipHelper;->getServerTransaction(Ljavax/sip/RequestEvent;)Ljavax/sip/ServerTransaction;

    move-result-object v8

    .line 1276
    invoke-static {v6, p1, v7, v8, v5}, Lcom/android/server/sip/SipSessionGroup;->-$$Nest$mcreateNewSession(Lcom/android/server/sip/SipSessionGroup;Ljavax/sip/RequestEvent;Landroid/net/sip/ISipSessionListener;Ljavax/sip/ServerTransaction;I)Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    move-result-object v5

    .line 1280
    .local v5, "newSession":Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;
    iput-object p0, v5, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mReferSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    .line 1281
    invoke-virtual {p1}, Ljavax/sip/RequestEvent;->getRequest()Ljavax/sip/message/Request;

    move-result-object v6

    const-string v7, "Referred-By"

    .line 1282
    invoke-interface {v6, v7}, Ljavax/sip/message/Request;->getHeader(Ljava/lang/String;)Ljavax/sip/header/Header;

    move-result-object v6

    check-cast v6, Lgov/nist/javax/sip/header/extensions/ReferredByHeader;

    iput-object v6, v5, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mReferredBy:Lgov/nist/javax/sip/header/extensions/ReferredByHeader;

    .line 1283
    iput-object v3, v5, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mReplaces:Ljava/lang/String;

    .line 1284
    invoke-static {v0}, Lcom/android/server/sip/SipSessionGroup;->-$$Nest$smcreatePeerProfile(Ljavax/sip/header/HeaderAddress;)Landroid/net/sip/SipProfile;

    move-result-object v6

    iput-object v6, v5, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mPeerProfile:Landroid/net/sip/SipProfile;

    .line 1285
    iget-object v6, v5, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mProxy:Lcom/android/server/sip/SipSessionListenerProxy;

    const/4 v7, 0x0

    invoke-virtual {v6, v5, v7}, Lcom/android/server/sip/SipSessionListenerProxy;->onCallTransferring(Landroid/net/sip/ISipSession;Ljava/lang/String;)V
    :try_end_6e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_6e} :catch_70

    .line 1287
    const/4 v6, 0x1

    return v6

    .line 1288
    .end local v0    # "referto":Ljavax/sip/header/ReferToHeader;
    .end local v1    # "address":Ljavax/sip/address/Address;
    .end local v2    # "uri":Ljavax/sip/address/SipURI;
    .end local v3    # "replacesHeader":Ljava/lang/String;
    .end local v4    # "username":Ljava/lang/String;
    .end local v5    # "newSession":Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;
    :catch_70
    move-exception v0

    .line 1289
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljavax/sip/SipException;

    const-string v2, "createPeerProfile()"

    invoke-direct {v1, v2, v0}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private blacklist processTimeout(Ljavax/sip/TimeoutEvent;)V
    .registers 4
    .param p1, "event"    # Ljavax/sip/TimeoutEvent;

    .line 904
    const-string v0, "processing Timeout..."

    invoke-direct {p0, v0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->log(Ljava/lang/String;)V

    .line 905
    iget v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mState:I

    packed-switch v0, :pswitch_data_24

    .line 919
    :pswitch_a
    const-string v0, "   do nothing"

    invoke-direct {p0, v0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->log(Ljava/lang/String;)V

    goto :goto_22

    .line 915
    :pswitch_10
    const/4 v0, -0x5

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->onError(ILjava/lang/String;)V

    .line 916
    goto :goto_22

    .line 908
    :pswitch_19
    invoke-direct {p0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->reset()V

    .line 909
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mProxy:Lcom/android/server/sip/SipSessionListenerProxy;

    invoke-virtual {v0, p0}, Lcom/android/server/sip/SipSessionListenerProxy;->onRegistrationTimeout(Landroid/net/sip/ISipSession;)V

    .line 910
    nop

    .line 922
    :goto_22
    return-void

    nop

    :pswitch_data_24
    .packed-switch 0x1
        :pswitch_19
        :pswitch_19
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_a
        :pswitch_10
    .end packed-switch
.end method

.method private blacklist processTransactionTerminated(Ljavax/sip/TransactionTerminatedEvent;)V
    .registers 4
    .param p1, "event"    # Ljavax/sip/TransactionTerminatedEvent;

    .line 891
    iget v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mState:I

    sparse-switch v0, :sswitch_data_2a

    .line 897
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Transaction terminated early: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->log(Ljava/lang/String;)V

    .line 898
    const/4 v0, -0x3

    const-string v1, "transaction terminated"

    invoke-direct {p0, v0, v1}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->onError(ILjava/lang/String;)V

    goto :goto_28

    .line 894
    :sswitch_22
    const-string v0, "Transaction terminated; do nothing"

    invoke-direct {p0, v0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->log(Ljava/lang/String;)V

    .line 895
    nop

    .line 901
    :goto_28
    return-void

    nop

    :sswitch_data_2a
    .sparse-switch
        0x0 -> :sswitch_22
        0x8 -> :sswitch_22
    .end sparse-switch
.end method

.method private blacklist readyForCall(Ljava/util/EventObject;)Z
    .registers 12
    .param p1, "evt"    # Ljava/util/EventObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    .line 1065
    instance-of v0, p1, Lcom/android/server/sip/SipSessionGroup$MakeCallCommand;

    const/4 v1, 0x1

    if-eqz v0, :cond_62

    .line 1066
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mState:I

    .line 1067
    move-object v0, p1

    check-cast v0, Lcom/android/server/sip/SipSessionGroup$MakeCallCommand;

    .line 1068
    .local v0, "cmd":Lcom/android/server/sip/SipSessionGroup$MakeCallCommand;
    invoke-virtual {v0}, Lcom/android/server/sip/SipSessionGroup$MakeCallCommand;->getPeerProfile()Landroid/net/sip/SipProfile;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mPeerProfile:Landroid/net/sip/SipProfile;

    .line 1069
    iget-object v2, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mReferSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    if-eqz v2, :cond_28

    .line 1070
    iget-object v2, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    invoke-static {v2}, Lcom/android/server/sip/SipSessionGroup;->-$$Nest$fgetmSipHelper(Lcom/android/server/sip/SipSessionGroup;)Lcom/android/server/sip/SipHelper;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mReferSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    iget-object v3, v3, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mDialog:Ljavax/sip/Dialog;

    .line 1071
    const/16 v4, 0x64

    invoke-direct {p0, v4}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->getResponseString(I)Ljava/lang/String;

    move-result-object v4

    .line 1070
    invoke-virtual {v2, v3, v4}, Lcom/android/server/sip/SipHelper;->sendReferNotify(Ljavax/sip/Dialog;Ljava/lang/String;)V

    .line 1073
    :cond_28
    iget-object v2, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    invoke-static {v2}, Lcom/android/server/sip/SipSessionGroup;->-$$Nest$fgetmSipHelper(Lcom/android/server/sip/SipSessionGroup;)Lcom/android/server/sip/SipHelper;

    move-result-object v3

    iget-object v2, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    invoke-static {v2}, Lcom/android/server/sip/SipSessionGroup;->-$$Nest$fgetmLocalProfile(Lcom/android/server/sip/SipSessionGroup;)Landroid/net/sip/SipProfile;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mPeerProfile:Landroid/net/sip/SipProfile;

    .line 1074
    invoke-virtual {v0}, Lcom/android/server/sip/SipSessionGroup$MakeCallCommand;->getSessionDescription()Ljava/lang/String;

    move-result-object v6

    .line 1075
    invoke-virtual {p0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->generateTag()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mReferredBy:Lgov/nist/javax/sip/header/extensions/ReferredByHeader;

    iget-object v9, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mReplaces:Ljava/lang/String;

    .line 1073
    invoke-virtual/range {v3 .. v9}, Lcom/android/server/sip/SipHelper;->sendInvite(Landroid/net/sip/SipProfile;Landroid/net/sip/SipProfile;Ljava/lang/String;Ljava/lang/String;Lgov/nist/javax/sip/header/extensions/ReferredByHeader;Ljava/lang/String;)Ljavax/sip/ClientTransaction;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mClientTransaction:Ljavax/sip/ClientTransaction;

    .line 1076
    iget-object v2, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mClientTransaction:Ljavax/sip/ClientTransaction;

    invoke-interface {v2}, Ljavax/sip/ClientTransaction;->getDialog()Ljavax/sip/Dialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mDialog:Ljavax/sip/Dialog;

    .line 1077
    iget-object v2, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    invoke-static {v2, p0}, Lcom/android/server/sip/SipSessionGroup;->-$$Nest$maddSipSession(Lcom/android/server/sip/SipSessionGroup;Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;)V

    .line 1078
    invoke-virtual {v0}, Lcom/android/server/sip/SipSessionGroup$MakeCallCommand;->getTimeout()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->startSessionTimer(I)V

    .line 1079
    iget-object v2, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mProxy:Lcom/android/server/sip/SipSessionListenerProxy;

    invoke-virtual {v2, p0}, Lcom/android/server/sip/SipSessionListenerProxy;->onCalling(Landroid/net/sip/ISipSession;)V

    .line 1080
    return v1

    .line 1081
    .end local v0    # "cmd":Lcom/android/server/sip/SipSessionGroup$MakeCallCommand;
    :cond_62
    instance-of v0, p1, Lcom/android/server/sip/SipSessionGroup$RegisterCommand;

    if-eqz v0, :cond_98

    .line 1082
    iput v1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mState:I

    .line 1083
    move-object v0, p1

    check-cast v0, Lcom/android/server/sip/SipSessionGroup$RegisterCommand;

    invoke-virtual {v0}, Lcom/android/server/sip/SipSessionGroup$RegisterCommand;->getDuration()I

    move-result v0

    .line 1084
    .local v0, "duration":I
    iget-object v2, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    invoke-static {v2}, Lcom/android/server/sip/SipSessionGroup;->-$$Nest$fgetmSipHelper(Lcom/android/server/sip/SipSessionGroup;)Lcom/android/server/sip/SipHelper;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    invoke-static {v3}, Lcom/android/server/sip/SipSessionGroup;->-$$Nest$fgetmLocalProfile(Lcom/android/server/sip/SipSessionGroup;)Landroid/net/sip/SipProfile;

    move-result-object v3

    .line 1085
    invoke-virtual {p0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->generateTag()Ljava/lang/String;

    move-result-object v4

    .line 1084
    invoke-virtual {v2, v3, v4, v0}, Lcom/android/server/sip/SipHelper;->sendRegister(Landroid/net/sip/SipProfile;Ljava/lang/String;I)Ljavax/sip/ClientTransaction;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mClientTransaction:Ljavax/sip/ClientTransaction;

    .line 1086
    iget-object v2, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mClientTransaction:Ljavax/sip/ClientTransaction;

    invoke-interface {v2}, Ljavax/sip/ClientTransaction;->getDialog()Ljavax/sip/Dialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mDialog:Ljavax/sip/Dialog;

    .line 1087
    iget-object v2, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    invoke-static {v2, p0}, Lcom/android/server/sip/SipSessionGroup;->-$$Nest$maddSipSession(Lcom/android/server/sip/SipSessionGroup;Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;)V

    .line 1088
    iget-object v2, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mProxy:Lcom/android/server/sip/SipSessionListenerProxy;

    invoke-virtual {v2, p0}, Lcom/android/server/sip/SipSessionListenerProxy;->onRegistering(Landroid/net/sip/ISipSession;)V

    .line 1089
    return v1

    .line 1090
    .end local v0    # "duration":I
    :cond_98
    invoke-static {}, Lcom/android/server/sip/SipSessionGroup;->-$$Nest$sfgetDEREGISTER()Ljava/util/EventObject;

    move-result-object v0

    const/4 v2, 0x0

    if-ne v0, p1, :cond_cb

    .line 1091
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mState:I

    .line 1092
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    invoke-static {v0}, Lcom/android/server/sip/SipSessionGroup;->-$$Nest$fgetmSipHelper(Lcom/android/server/sip/SipSessionGroup;)Lcom/android/server/sip/SipHelper;

    move-result-object v0

    iget-object v3, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    invoke-static {v3}, Lcom/android/server/sip/SipSessionGroup;->-$$Nest$fgetmLocalProfile(Lcom/android/server/sip/SipSessionGroup;)Landroid/net/sip/SipProfile;

    move-result-object v3

    .line 1093
    invoke-virtual {p0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->generateTag()Ljava/lang/String;

    move-result-object v4

    .line 1092
    invoke-virtual {v0, v3, v4, v2}, Lcom/android/server/sip/SipHelper;->sendRegister(Landroid/net/sip/SipProfile;Ljava/lang/String;I)Ljavax/sip/ClientTransaction;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mClientTransaction:Ljavax/sip/ClientTransaction;

    .line 1094
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mClientTransaction:Ljavax/sip/ClientTransaction;

    invoke-interface {v0}, Ljavax/sip/ClientTransaction;->getDialog()Ljavax/sip/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mDialog:Ljavax/sip/Dialog;

    .line 1095
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    invoke-static {v0, p0}, Lcom/android/server/sip/SipSessionGroup;->-$$Nest$maddSipSession(Lcom/android/server/sip/SipSessionGroup;Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;)V

    .line 1096
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mProxy:Lcom/android/server/sip/SipSessionListenerProxy;

    invoke-virtual {v0, p0}, Lcom/android/server/sip/SipSessionListenerProxy;->onRegistering(Landroid/net/sip/ISipSession;)V

    .line 1097
    return v1

    .line 1099
    :cond_cb
    return v2
.end method

.method private blacklist registeringToReady(Ljava/util/EventObject;)Z
    .registers 8
    .param p1, "evt"    # Ljava/util/EventObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    .line 949
    const-string v0, "REGISTER"

    invoke-static {v0, p1}, Lcom/android/server/sip/SipSessionGroup;->-$$Nest$smexpectResponse(Ljava/lang/String;Ljava/util/EventObject;)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 950
    move-object v0, p1

    check-cast v0, Ljavax/sip/ResponseEvent;

    .line 951
    .local v0, "event":Ljavax/sip/ResponseEvent;
    invoke-virtual {v0}, Ljavax/sip/ResponseEvent;->getResponse()Ljavax/sip/message/Response;

    move-result-object v1

    .line 953
    .local v1, "response":Ljavax/sip/message/Response;
    invoke-interface {v1}, Ljavax/sip/message/Response;->getStatusCode()I

    move-result v2

    .line 954
    .local v2, "statusCode":I
    const/4 v3, 0x1

    sparse-switch v2, :sswitch_data_3a

    .line 966
    const/16 v4, 0x1f4

    if-lt v2, v4, :cond_38

    .line 967
    invoke-direct {p0, v1}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->onRegistrationFailed(Ljavax/sip/message/Response;)V

    .line 968
    return v3

    .line 963
    :sswitch_1f
    invoke-direct {p0, v0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->handleAuthentication(Ljavax/sip/ResponseEvent;)Z

    .line 964
    return v3

    .line 956
    :sswitch_23
    iget v4, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mState:I

    .line 957
    .local v4, "state":I
    if-ne v4, v3, :cond_33

    .line 958
    move-object v5, p1

    check-cast v5, Ljavax/sip/ResponseEvent;

    invoke-virtual {v5}, Ljavax/sip/ResponseEvent;->getResponse()Ljavax/sip/message/Response;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->getExpiryTime(Ljavax/sip/message/Response;)I

    move-result v5

    goto :goto_34

    .line 959
    :cond_33
    const/4 v5, -0x1

    .line 957
    :goto_34
    invoke-direct {p0, v5}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->onRegistrationDone(I)V

    .line 960
    return v3

    .line 972
    .end local v0    # "event":Ljavax/sip/ResponseEvent;
    .end local v1    # "response":Ljavax/sip/message/Response;
    .end local v2    # "statusCode":I
    .end local v4    # "state":I
    :cond_38
    const/4 v0, 0x0

    return v0

    :sswitch_data_3a
    .sparse-switch
        0xc8 -> :sswitch_23
        0x191 -> :sswitch_1f
        0x197 -> :sswitch_1f
    .end sparse-switch
.end method

.method private blacklist reset()V
    .registers 3

    .line 601
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mInCall:Z

    .line 602
    iget-object v1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    invoke-static {v1, p0}, Lcom/android/server/sip/SipSessionGroup;->-$$Nest$mremoveSipSession(Lcom/android/server/sip/SipSessionGroup;Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;)V

    .line 603
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mPeerProfile:Landroid/net/sip/SipProfile;

    .line 604
    iput v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mState:I

    .line 605
    iput-object v1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mInviteReceived:Ljavax/sip/RequestEvent;

    .line 606
    iput-object v1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mPeerSessionDescription:Ljava/lang/String;

    .line 607
    iput v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mAuthenticationRetryCount:I

    .line 608
    iput-object v1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mReferSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    .line 609
    iput-object v1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mReferredBy:Lgov/nist/javax/sip/header/extensions/ReferredByHeader;

    .line 610
    iput-object v1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mReplaces:Ljava/lang/String;

    .line 612
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mDialog:Ljavax/sip/Dialog;

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mDialog:Ljavax/sip/Dialog;

    invoke-interface {v0}, Ljavax/sip/Dialog;->delete()V

    .line 613
    :cond_22
    iput-object v1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mDialog:Ljavax/sip/Dialog;

    .line 616
    :try_start_24
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mServerTransaction:Ljavax/sip/ServerTransaction;

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mServerTransaction:Ljavax/sip/ServerTransaction;

    invoke-interface {v0}, Ljavax/sip/ServerTransaction;->terminate()V
    :try_end_2d
    .catch Ljavax/sip/ObjectInUseException; {:try_start_24 .. :try_end_2d} :catch_2e

    .line 619
    :cond_2d
    goto :goto_2f

    .line 617
    :catch_2e
    move-exception v0

    .line 620
    :goto_2f
    iput-object v1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mServerTransaction:Ljavax/sip/ServerTransaction;

    .line 623
    :try_start_31
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mClientTransaction:Ljavax/sip/ClientTransaction;

    if-eqz v0, :cond_3a

    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mClientTransaction:Ljavax/sip/ClientTransaction;

    invoke-interface {v0}, Ljavax/sip/ClientTransaction;->terminate()V
    :try_end_3a
    .catch Ljavax/sip/ObjectInUseException; {:try_start_31 .. :try_end_3a} :catch_3b

    .line 626
    :cond_3a
    goto :goto_3c

    .line 624
    :catch_3b
    move-exception v0

    .line 627
    :goto_3c
    iput-object v1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mClientTransaction:Ljavax/sip/ClientTransaction;

    .line 629
    invoke-direct {p0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->cancelSessionTimer()V

    .line 631
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mSipSessionImpl:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    if-eqz v0, :cond_4c

    .line 632
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mSipSessionImpl:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    invoke-virtual {v0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->stopKeepAliveProcess()V

    .line 633
    iput-object v1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mSipSessionImpl:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    .line 635
    :cond_4c
    return-void
.end method

.method private blacklist startSessionTimer(I)V
    .registers 3
    .param p1, "timeout"    # I

    .line 1354
    if-lez p1, :cond_e

    .line 1355
    new-instance v0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SessionTimer;

    invoke-direct {v0, p0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SessionTimer;-><init>(Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;)V

    iput-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mSessionTimer:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SessionTimer;

    .line 1356
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mSessionTimer:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SessionTimer;

    invoke-virtual {v0, p1}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SessionTimer;->start(I)V

    .line 1358
    :cond_e
    return-void
.end method

.method private blacklist toString(Ljavax/sip/Transaction;)Ljava/lang/String;
    .registers 9
    .param p1, "transaction"    # Ljavax/sip/Transaction;

    .line 880
    if-nez p1, :cond_5

    const-string v0, "null"

    return-object v0

    .line 881
    :cond_5
    invoke-interface {p1}, Ljavax/sip/Transaction;->getRequest()Ljavax/sip/message/Request;

    move-result-object v0

    .line 882
    .local v0, "request":Ljavax/sip/message/Request;
    invoke-interface {p1}, Ljavax/sip/Transaction;->getDialog()Ljavax/sip/Dialog;

    move-result-object v1

    .line 883
    .local v1, "dialog":Ljavax/sip/Dialog;
    const-string v2, "CSeq"

    invoke-interface {v0, v2}, Ljavax/sip/message/Request;->getHeader(Ljava/lang/String;)Ljavax/sip/header/Header;

    move-result-object v2

    check-cast v2, Ljavax/sip/header/CSeqHeader;

    .line 884
    .local v2, "cseq":Ljavax/sip/header/CSeqHeader;
    invoke-interface {v0}, Ljavax/sip/message/Request;->getMethod()Ljava/lang/String;

    move-result-object v3

    .line 885
    invoke-interface {v2}, Ljavax/sip/header/CSeqHeader;->getSeqNumber()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {p1}, Ljavax/sip/Transaction;->getState()Ljavax/sip/TransactionState;

    move-result-object v5

    .line 886
    if-nez v1, :cond_2a

    const-string v6, "-"

    goto :goto_2e

    :cond_2a
    invoke-interface {v1}, Ljavax/sip/Dialog;->getState()Ljavax/sip/DialogState;

    move-result-object v6

    :goto_2e
    filled-new-array {v3, v4, v5, v6}, [Ljava/lang/Object;

    move-result-object v3

    .line 884
    const-string v4, "req=%s,%s,s=%s,ds=%s,"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method


# virtual methods
.method public blacklist answerCall(Ljava/lang/String;I)V
    .registers 7
    .param p1, "sessionDescription"    # Ljava/lang/String;
    .param p2, "timeout"    # I

    .line 706
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    monitor-enter v0

    .line 707
    :try_start_3
    iget-object v1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mPeerProfile:Landroid/net/sip/SipProfile;

    if-nez v1, :cond_9

    monitor-exit v0

    return-void

    .line 708
    :cond_9
    new-instance v1, Lcom/android/server/sip/SipSessionGroup$MakeCallCommand;

    iget-object v2, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    iget-object v3, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mPeerProfile:Landroid/net/sip/SipProfile;

    invoke-direct {v1, v2, v3, p1, p2}, Lcom/android/server/sip/SipSessionGroup$MakeCallCommand;-><init>(Lcom/android/server/sip/SipSessionGroup;Landroid/net/sip/SipProfile;Ljava/lang/String;I)V

    invoke-direct {p0, v1}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->doCommandAsync(Ljava/util/EventObject;)V

    .line 710
    monitor-exit v0

    .line 711
    return-void

    .line 710
    :catchall_17
    move-exception v1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw v1
.end method

.method public blacklist changeCall(Ljava/lang/String;I)V
    .registers 7
    .param p1, "sessionDescription"    # Ljava/lang/String;
    .param p2, "timeout"    # I

    .line 720
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    monitor-enter v0

    .line 721
    :try_start_3
    iget-object v1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mPeerProfile:Landroid/net/sip/SipProfile;

    if-nez v1, :cond_9

    monitor-exit v0

    return-void

    .line 722
    :cond_9
    new-instance v1, Lcom/android/server/sip/SipSessionGroup$MakeCallCommand;

    iget-object v2, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    iget-object v3, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mPeerProfile:Landroid/net/sip/SipProfile;

    invoke-direct {v1, v2, v3, p1, p2}, Lcom/android/server/sip/SipSessionGroup$MakeCallCommand;-><init>(Lcom/android/server/sip/SipSessionGroup;Landroid/net/sip/SipProfile;Ljava/lang/String;I)V

    invoke-direct {p0, v1}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->doCommandAsync(Ljava/util/EventObject;)V

    .line 724
    monitor-exit v0

    .line 725
    return-void

    .line 724
    :catchall_17
    move-exception v1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw v1
.end method

.method blacklist duplicate()Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;
    .registers 4

    .line 597
    new-instance v0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    iget-object v1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    iget-object v2, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mProxy:Lcom/android/server/sip/SipSessionListenerProxy;

    invoke-virtual {v2}, Lcom/android/server/sip/SipSessionListenerProxy;->getListener()Landroid/net/sip/ISipSessionListener;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;-><init>(Lcom/android/server/sip/SipSessionGroup;Landroid/net/sip/ISipSessionListener;)V

    return-object v0
.end method

.method public blacklist endCall()V
    .registers 2

    .line 715
    invoke-static {}, Lcom/android/server/sip/SipSessionGroup;->-$$Nest$sfgetEND_CALL()Ljava/util/EventObject;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->doCommandAsync(Ljava/util/EventObject;)V

    .line 716
    return-void
.end method

.method protected blacklist generateTag()Ljava/lang/String;
    .registers 5

    .line 748
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide/high16 v2, 0x41f0000000000000L    # 4.294967296E9

    mul-double/2addr v0, v2

    double-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getCallId()Ljava/lang/String;
    .registers 2

    .line 659
    invoke-direct {p0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->getTransaction()Ljavax/sip/Transaction;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/sip/SipHelper;->getCallId(Ljavax/sip/Transaction;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getLocalIp()Ljava/lang/String;
    .registers 2

    .line 644
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    invoke-static {v0}, Lcom/android/server/sip/SipSessionGroup;->-$$Nest$fgetmLocalIp(Lcom/android/server/sip/SipSessionGroup;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getLocalProfile()Landroid/net/sip/SipProfile;
    .registers 2

    .line 649
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    invoke-static {v0}, Lcom/android/server/sip/SipSessionGroup;->-$$Nest$fgetmLocalProfile(Lcom/android/server/sip/SipSessionGroup;)Landroid/net/sip/SipProfile;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getPeerProfile()Landroid/net/sip/SipProfile;
    .registers 2

    .line 654
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mPeerProfile:Landroid/net/sip/SipProfile;

    return-object v0
.end method

.method public blacklist getState()I
    .registers 2

    .line 670
    iget v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mState:I

    return v0
.end method

.method public blacklist isInCall()Z
    .registers 2

    .line 639
    iget-boolean v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mInCall:Z

    return v0
.end method

.method public blacklist makeCall(Landroid/net/sip/SipProfile;Ljava/lang/String;I)V
    .registers 6
    .param p1, "peerProfile"    # Landroid/net/sip/SipProfile;
    .param p2, "sessionDescription"    # Ljava/lang/String;
    .param p3, "timeout"    # I

    .line 700
    new-instance v0, Lcom/android/server/sip/SipSessionGroup$MakeCallCommand;

    iget-object v1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    invoke-direct {v0, v1, p1, p2, p3}, Lcom/android/server/sip/SipSessionGroup$MakeCallCommand;-><init>(Lcom/android/server/sip/SipSessionGroup;Landroid/net/sip/SipProfile;Ljava/lang/String;I)V

    invoke-direct {p0, v0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->doCommandAsync(Ljava/util/EventObject;)V

    .line 702
    return-void
.end method

.method public blacklist process(Ljava/util/EventObject;)Z
    .registers 8
    .param p1, "evt"    # Ljava/util/EventObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    .line 763
    invoke-static {p0, p1}, Lcom/android/server/sip/SipSessionGroup;->-$$Nest$smisLoggable(Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;Ljava/util/EventObject;)Z

    move-result v0

    if-eqz v0, :cond_3a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " ~~~~~   "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mState:I

    .line 764
    invoke-static {v1}, Landroid/net/sip/SipSession$State;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": processing "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 765
    invoke-static {p1}, Lcom/android/server/sip/SipSessionGroup;->-$$Nest$smlogEvt(Ljava/util/EventObject;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 763
    invoke-direct {p0, v0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->log(Ljava/lang/String;)V

    .line 766
    :cond_3a
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    monitor-enter v0

    .line 767
    :try_start_3d
    iget-object v1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    invoke-virtual {v1}, Lcom/android/server/sip/SipSessionGroup;->isClosed()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_48

    monitor-exit v0

    return v2

    .line 769
    :cond_48
    iget-object v1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mSipKeepAlive:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SipKeepAlive;

    const/4 v3, 0x1

    if-eqz v1, :cond_57

    .line 771
    iget-object v1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mSipKeepAlive:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SipKeepAlive;

    invoke-virtual {v1, p1}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SipKeepAlive;->process(Ljava/util/EventObject;)Z

    move-result v1

    if-eqz v1, :cond_57

    monitor-exit v0

    return v3

    .line 774
    :cond_57
    const/4 v1, 0x0

    .line 775
    .local v1, "dialog":Ljavax/sip/Dialog;
    instance-of v4, p1, Ljavax/sip/RequestEvent;

    if-eqz v4, :cond_65

    .line 776
    move-object v4, p1

    check-cast v4, Ljavax/sip/RequestEvent;

    invoke-virtual {v4}, Ljavax/sip/RequestEvent;->getDialog()Ljavax/sip/Dialog;

    move-result-object v4

    move-object v1, v4

    goto :goto_79

    .line 777
    :cond_65
    instance-of v4, p1, Ljavax/sip/ResponseEvent;

    if-eqz v4, :cond_79

    .line 778
    move-object v4, p1

    check-cast v4, Ljavax/sip/ResponseEvent;

    invoke-virtual {v4}, Ljavax/sip/ResponseEvent;->getDialog()Ljavax/sip/Dialog;

    move-result-object v4

    move-object v1, v4

    .line 779
    iget-object v4, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    move-object v5, p1

    check-cast v5, Ljavax/sip/ResponseEvent;

    invoke-static {v4, v5}, Lcom/android/server/sip/SipSessionGroup;->-$$Nest$mextractExternalAddress(Lcom/android/server/sip/SipSessionGroup;Ljavax/sip/ResponseEvent;)V

    .line 781
    :cond_79
    :goto_79
    if-eqz v1, :cond_7d

    iput-object v1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mDialog:Ljavax/sip/Dialog;

    .line 785
    :cond_7d
    iget v4, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mState:I

    packed-switch v4, :pswitch_data_ba

    .line 813
    :pswitch_82
    const/4 v4, 0x0

    .local v4, "processed":Z
    goto :goto_ac

    .line 810
    .end local v4    # "processed":Z
    :pswitch_84
    invoke-direct {p0, p1}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->endingCall(Ljava/util/EventObject;)Z

    move-result v4

    .line 811
    .restart local v4    # "processed":Z
    goto :goto_ac

    .line 807
    .end local v4    # "processed":Z
    :pswitch_89
    invoke-direct {p0, p1}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->inCall(Ljava/util/EventObject;)Z

    move-result v4

    .line 808
    .restart local v4    # "processed":Z
    goto :goto_ac

    .line 804
    .end local v4    # "processed":Z
    :pswitch_8e
    invoke-direct {p0, p1}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->outgoingCallToReady(Ljava/util/EventObject;)Z

    move-result v4

    .line 805
    .restart local v4    # "processed":Z
    goto :goto_ac

    .line 801
    .end local v4    # "processed":Z
    :pswitch_93
    invoke-direct {p0, p1}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->outgoingCall(Ljava/util/EventObject;)Z

    move-result v4

    .line 802
    .restart local v4    # "processed":Z
    goto :goto_ac

    .line 797
    .end local v4    # "processed":Z
    :pswitch_98
    invoke-direct {p0, p1}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->incomingCallToInCall(Ljava/util/EventObject;)Z

    move-result v4

    .line 798
    .restart local v4    # "processed":Z
    goto :goto_ac

    .line 794
    .end local v4    # "processed":Z
    :pswitch_9d
    invoke-direct {p0, p1}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->incomingCall(Ljava/util/EventObject;)Z

    move-result v4

    .line 795
    .restart local v4    # "processed":Z
    goto :goto_ac

    .line 788
    .end local v4    # "processed":Z
    :pswitch_a2
    invoke-direct {p0, p1}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->registeringToReady(Ljava/util/EventObject;)Z

    move-result v4

    .line 789
    .restart local v4    # "processed":Z
    goto :goto_ac

    .line 791
    .end local v4    # "processed":Z
    :pswitch_a7
    invoke-direct {p0, p1}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->readyForCall(Ljava/util/EventObject;)Z

    move-result v4

    .line 792
    .restart local v4    # "processed":Z
    nop

    .line 815
    :goto_ac
    if-nez v4, :cond_b4

    invoke-direct {p0, p1}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->processExceptions(Ljava/util/EventObject;)Z

    move-result v5

    if-eqz v5, :cond_b5

    :cond_b4
    move v2, v3

    :cond_b5
    monitor-exit v0

    return v2

    .line 816
    .end local v1    # "dialog":Ljavax/sip/Dialog;
    .end local v4    # "processed":Z
    :catchall_b7
    move-exception v1

    monitor-exit v0
    :try_end_b9
    .catchall {:try_start_3d .. :try_end_b9} :catchall_b7

    throw v1

    :pswitch_data_ba
    .packed-switch 0x0
        :pswitch_a7
        :pswitch_a2
        :pswitch_a2
        :pswitch_9d
        :pswitch_98
        :pswitch_93
        :pswitch_93
        :pswitch_8e
        :pswitch_89
        :pswitch_82
        :pswitch_84
    .end packed-switch
.end method

.method public blacklist register(I)V
    .registers 4
    .param p1, "duration"    # I

    .line 729
    new-instance v0, Lcom/android/server/sip/SipSessionGroup$RegisterCommand;

    iget-object v1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    invoke-direct {v0, v1, p1}, Lcom/android/server/sip/SipSessionGroup$RegisterCommand;-><init>(Lcom/android/server/sip/SipSessionGroup;I)V

    invoke-direct {p0, v0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->doCommandAsync(Ljava/util/EventObject;)V

    .line 730
    return-void
.end method

.method public blacklist setListener(Landroid/net/sip/ISipSessionListener;)V
    .registers 4
    .param p1, "listener"    # Landroid/net/sip/ISipSessionListener;

    .line 675
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mProxy:Lcom/android/server/sip/SipSessionListenerProxy;

    instance-of v1, p1, Lcom/android/server/sip/SipSessionListenerProxy;

    if-eqz v1, :cond_e

    .line 676
    move-object v1, p1

    check-cast v1, Lcom/android/server/sip/SipSessionListenerProxy;

    invoke-virtual {v1}, Lcom/android/server/sip/SipSessionListenerProxy;->getListener()Landroid/net/sip/ISipSessionListener;

    move-result-object v1

    goto :goto_f

    .line 677
    :cond_e
    move-object v1, p1

    .line 675
    :goto_f
    invoke-virtual {v0, v1}, Lcom/android/server/sip/SipSessionListenerProxy;->setListener(Landroid/net/sip/ISipSessionListener;)V

    .line 678
    return-void
.end method

.method public blacklist startKeepAliveProcess(ILandroid/net/sip/SipProfile;Lcom/android/server/sip/SipSessionGroup$KeepAliveProcessCallback;)V
    .registers 7
    .param p1, "interval"    # I
    .param p2, "peerProfile"    # Landroid/net/sip/SipProfile;
    .param p3, "callback"    # Lcom/android/server/sip/SipSessionGroup$KeepAliveProcessCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    .line 1504
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    monitor-enter v0

    .line 1505
    :try_start_3
    iget-object v1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mSipKeepAlive:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SipKeepAlive;

    if-nez v1, :cond_1e

    .line 1509
    iput-object p2, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mPeerProfile:Landroid/net/sip/SipProfile;

    .line 1510
    new-instance v1, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SipKeepAlive;

    invoke-direct {v1, p0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SipKeepAlive;-><init>(Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;)V

    iput-object v1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mSipKeepAlive:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SipKeepAlive;

    .line 1511
    iget-object v1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mProxy:Lcom/android/server/sip/SipSessionListenerProxy;

    iget-object v2, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mSipKeepAlive:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SipKeepAlive;

    invoke-virtual {v1, v2}, Lcom/android/server/sip/SipSessionListenerProxy;->setListener(Landroid/net/sip/ISipSessionListener;)V

    .line 1512
    iget-object v1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mSipKeepAlive:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SipKeepAlive;

    invoke-virtual {v1, p1, p3}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SipKeepAlive;->start(ILcom/android/server/sip/SipSessionGroup$KeepAliveProcessCallback;)V

    .line 1513
    monitor-exit v0

    .line 1514
    return-void

    .line 1506
    :cond_1e
    new-instance v1, Ljavax/sip/SipException;

    const-string v2, "Cannot create more than one keepalive process in a SipSession"

    invoke-direct {v1, v2}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;
    .end local p1    # "interval":I
    .end local p2    # "peerProfile":Landroid/net/sip/SipProfile;
    .end local p3    # "callback":Lcom/android/server/sip/SipSessionGroup$KeepAliveProcessCallback;
    throw v1

    .line 1513
    .restart local p0    # "this":Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;
    .restart local p1    # "interval":I
    .restart local p2    # "peerProfile":Landroid/net/sip/SipProfile;
    .restart local p3    # "callback":Lcom/android/server/sip/SipSessionGroup$KeepAliveProcessCallback;
    :catchall_26
    move-exception v1

    monitor-exit v0
    :try_end_28
    .catchall {:try_start_3 .. :try_end_28} :catchall_26

    throw v1
.end method

.method public blacklist startKeepAliveProcess(ILcom/android/server/sip/SipSessionGroup$KeepAliveProcessCallback;)V
    .registers 5
    .param p1, "interval"    # I
    .param p2, "callback"    # Lcom/android/server/sip/SipSessionGroup$KeepAliveProcessCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    .line 1495
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    monitor-enter v0

    .line 1496
    :try_start_3
    iget-object v1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    invoke-static {v1}, Lcom/android/server/sip/SipSessionGroup;->-$$Nest$fgetmLocalProfile(Lcom/android/server/sip/SipSessionGroup;)Landroid/net/sip/SipProfile;

    move-result-object v1

    invoke-virtual {p0, p1, v1, p2}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->startKeepAliveProcess(ILandroid/net/sip/SipProfile;Lcom/android/server/sip/SipSessionGroup$KeepAliveProcessCallback;)V

    .line 1497
    monitor-exit v0

    .line 1498
    return-void

    .line 1497
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method

.method public blacklist stopKeepAliveProcess()V
    .registers 3

    .line 1517
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    monitor-enter v0

    .line 1518
    :try_start_3
    iget-object v1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mSipKeepAlive:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SipKeepAlive;

    if-eqz v1, :cond_f

    .line 1519
    iget-object v1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mSipKeepAlive:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SipKeepAlive;

    invoke-virtual {v1}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SipKeepAlive;->stop()V

    .line 1520
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mSipKeepAlive:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SipKeepAlive;

    .line 1522
    :cond_f
    monitor-exit v0

    .line 1523
    return-void

    .line 1522
    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 754
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 755
    .local v0, "s":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "@"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mState:I

    .line 756
    invoke-static {v2}, Landroid/net/sip/SipSession$State;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_2b
    .catchall {:try_start_0 .. :try_end_2b} :catchall_2c

    .line 755
    return-object v1

    .line 757
    .end local v0    # "s":Ljava/lang/String;
    :catchall_2c
    move-exception v0

    .line 758
    .local v0, "e":Ljava/lang/Throwable;
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public blacklist unregister()V
    .registers 2

    .line 734
    invoke-static {}, Lcom/android/server/sip/SipSessionGroup;->-$$Nest$sfgetDEREGISTER()Ljava/util/EventObject;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->doCommandAsync(Ljava/util/EventObject;)V

    .line 735
    return-void
.end method

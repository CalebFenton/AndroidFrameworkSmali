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
        Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SessionTimer;,
        Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SipKeepAlive;
    }
.end annotation


# static fields
.field private static final SSI_DBG:Z = true

.field private static final SSI_TAG:Ljava/lang/String; = "SipSessionImpl"


# instance fields
.field mAuthenticationRetryCount:I

.field mClientTransaction:Ljavax/sip/ClientTransaction;

.field mDialog:Ljavax/sip/Dialog;

.field mInCall:Z

.field mInviteReceived:Ljavax/sip/RequestEvent;

.field mPeerProfile:Landroid/net/sip/SipProfile;

.field mPeerSessionDescription:Ljava/lang/String;

.field mProxy:Lcom/android/server/sip/SipSessionListenerProxy;

.field mReferSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

.field mReferredBy:Lgov/nist/javax/sip/header/extensions/ReferredByHeader;

.field mReplaces:Ljava/lang/String;

.field mServerTransaction:Ljavax/sip/ServerTransaction;

.field mSessionTimer:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SessionTimer;

.field private mSipKeepAlive:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SipKeepAlive;

.field private mSipSessionImpl:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

.field mState:I

.field final synthetic this$0:Lcom/android/server/sip/SipSessionGroup;


# direct methods
.method static synthetic -wrap0(Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->cancelSessionTimer()V

    #@3
    return-void
.end method

.method static synthetic -wrap1(Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;ILjava/lang/String;)V
    .locals 0
    .param p1, "errorCode"    # I
    .param p2, "message"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->onError(ILjava/lang/String;)V

    #@3
    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "exception"    # Ljava/lang/Throwable;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->onError(Ljava/lang/Throwable;)V

    #@3
    return-void
.end method

.method static synthetic -wrap3(Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;Ljava/util/EventObject;)V
    .locals 0
    .param p1, "command"    # Ljava/util/EventObject;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->processCommand(Ljava/util/EventObject;)V

    #@3
    return-void
.end method

.method static synthetic -wrap4(Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->reset()V

    #@3
    return-void
.end method

.method static synthetic -wrap5(Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;I)V
    .locals 0
    .param p1, "timeout"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->startSessionTimer(I)V

    #@3
    return-void
.end method

.method public constructor <init>(Lcom/android/server/sip/SipSessionGroup;Landroid/net/sip/ISipSessionListener;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/sip/SipSessionGroup;
    .param p2, "listener"    # Landroid/net/sip/ISipSessionListener;

    #@0
    .prologue
    .line 592
    iput-object p1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    #@2
    invoke-direct {p0}, Landroid/net/sip/ISipSession$Stub;-><init>()V

    #@5
    .line 538
    new-instance v0, Lcom/android/server/sip/SipSessionListenerProxy;

    #@7
    invoke-direct {v0}, Lcom/android/server/sip/SipSessionListenerProxy;-><init>()V

    #@a
    iput-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mProxy:Lcom/android/server/sip/SipSessionListenerProxy;

    #@c
    .line 539
    const/4 v0, 0x0

    #@d
    iput v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mState:I

    #@f
    .line 593
    invoke-virtual {p0, p2}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->setListener(Landroid/net/sip/ISipSessionListener;)V

    #@12
    .line 592
    return-void
.end method

.method private cancelSessionTimer()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1361
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mSessionTimer:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SessionTimer;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 1362
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mSessionTimer:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SessionTimer;

    #@7
    invoke-virtual {v0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SessionTimer;->cancel()V

    #@a
    .line 1363
    iput-object v1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mSessionTimer:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SessionTimer;

    #@c
    .line 1360
    :cond_0
    return-void
.end method

.method private createErrorMessage(Ljavax/sip/message/Response;)Ljava/lang/String;
    .locals 4
    .param p1, "response"    # Ljavax/sip/message/Response;

    #@0
    .prologue
    .line 1368
    const-string/jumbo v0, "%s (%d)"

    #@3
    const/4 v1, 0x2

    #@4
    new-array v1, v1, [Ljava/lang/Object;

    #@6
    invoke-interface {p1}, Ljavax/sip/message/Response;->getReasonPhrase()Ljava/lang/String;

    #@9
    move-result-object v2

    #@a
    const/4 v3, 0x0

    #@b
    aput-object v2, v1, v3

    #@d
    .line 1369
    invoke-interface {p1}, Ljavax/sip/message/Response;->getStatusCode()I

    #@10
    move-result v2

    #@11
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@14
    move-result-object v2

    #@15
    const/4 v3, 0x1

    #@16
    aput-object v2, v1, v3

    #@18
    .line 1368
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@1b
    move-result-object v0

    #@1c
    return-object v0
.end method

.method private crossDomainAuthenticationRequired(Ljavax/sip/message/Response;)Z
    .locals 3
    .param p1, "response"    # Ljavax/sip/message/Response;

    #@0
    .prologue
    .line 1006
    invoke-direct {p0, p1}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->getRealmFromResponse(Ljavax/sip/message/Response;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 1007
    .local v0, "realm":Ljava/lang/String;
    if-nez v0, :cond_0

    #@6
    const-string/jumbo v0, ""

    #@9
    .line 1008
    :cond_0
    iget-object v1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    #@b
    invoke-static {v1}, Lcom/android/server/sip/SipSessionGroup;->-get5(Lcom/android/server/sip/SipSessionGroup;)Landroid/net/sip/SipProfile;

    #@e
    move-result-object v1

    #@f
    invoke-virtual {v1}, Landroid/net/sip/SipProfile;->getSipDomain()Ljava/lang/String;

    #@12
    move-result-object v1

    #@13
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@16
    move-result-object v1

    #@17
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@1a
    move-result-object v2

    #@1b
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1e
    move-result v1

    #@1f
    if-eqz v1, :cond_1

    #@21
    const/4 v1, 0x0

    #@22
    :goto_0
    return v1

    #@23
    :cond_1
    const/4 v1, 0x1

    #@24
    goto :goto_0
.end method

.method private doCommandAsync(Ljava/util/EventObject;)V
    .locals 3
    .param p1, "command"    # Ljava/util/EventObject;

    #@0
    .prologue
    .line 682
    new-instance v0, Ljava/lang/Thread;

    #@2
    new-instance v1, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$1;

    #@4
    invoke-direct {v1, p0, p1}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$1;-><init>(Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;Ljava/util/EventObject;)V

    #@7
    .line 694
    const-string/jumbo v2, "SipSessionAsyncCmdThread"

    #@a
    .line 682
    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    #@d
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    #@10
    .line 681
    return-void
.end method

.method private enableKeepAlive()V
    .locals 5

    #@0
    .prologue
    .line 1373
    iget-object v1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mSipSessionImpl:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 1374
    iget-object v1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mSipSessionImpl:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    #@6
    invoke-virtual {v1}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->stopKeepAliveProcess()V

    #@9
    .line 1379
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mSipSessionImpl:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    #@b
    .line 1380
    iget-object v2, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mPeerProfile:Landroid/net/sip/SipProfile;

    #@d
    const/16 v3, 0xa

    #@f
    const/4 v4, 0x0

    #@10
    .line 1379
    invoke-virtual {v1, v3, v2, v4}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->startKeepAliveProcess(ILandroid/net/sip/SipProfile;Lcom/android/server/sip/SipSessionGroup$KeepAliveProcessCallback;)V
    :try_end_0
    .catch Ljavax/sip/SipException; {:try_start_0 .. :try_end_0} :catch_0

    #@13
    .line 1372
    :goto_1
    return-void

    #@14
    .line 1376
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->duplicate()Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    #@17
    move-result-object v1

    #@18
    iput-object v1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mSipSessionImpl:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    #@1a
    goto :goto_0

    #@1b
    .line 1381
    :catch_0
    move-exception v0

    #@1c
    .line 1382
    .local v0, "e":Ljavax/sip/SipException;
    iget-object v1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    #@1e
    const-string/jumbo v2, "keepalive cannot be enabled; ignored"

    #@21
    invoke-static {v1, v2, v0}, Lcom/android/server/sip/SipSessionGroup;->-wrap11(Lcom/android/server/sip/SipSessionGroup;Ljava/lang/String;Ljava/lang/Throwable;)V

    #@24
    .line 1383
    iget-object v1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mSipSessionImpl:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    #@26
    invoke-virtual {v1}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->stopKeepAliveProcess()V

    #@29
    goto :goto_1
.end method

.method private endCallNormally()V
    .locals 1

    #@0
    .prologue
    .line 1396
    invoke-direct {p0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->reset()V

    #@3
    .line 1397
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mProxy:Lcom/android/server/sip/SipSessionListenerProxy;

    #@5
    invoke-virtual {v0, p0}, Lcom/android/server/sip/SipSessionListenerProxy;->onCallEnded(Landroid/net/sip/ISipSession;)V

    #@8
    .line 1395
    return-void
.end method

.method private endCallOnBusy()V
    .locals 1

    #@0
    .prologue
    .line 1406
    invoke-direct {p0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->reset()V

    #@3
    .line 1407
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mProxy:Lcom/android/server/sip/SipSessionListenerProxy;

    #@5
    invoke-virtual {v0, p0}, Lcom/android/server/sip/SipSessionListenerProxy;->onCallBusy(Landroid/net/sip/ISipSession;)V

    #@8
    .line 1405
    return-void
.end method

.method private endCallOnError(ILjava/lang/String;)V
    .locals 1
    .param p1, "errorCode"    # I
    .param p2, "message"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1401
    invoke-direct {p0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->reset()V

    #@3
    .line 1402
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mProxy:Lcom/android/server/sip/SipSessionListenerProxy;

    #@5
    invoke-virtual {v0, p0, p1, p2}, Lcom/android/server/sip/SipSessionListenerProxy;->onError(Landroid/net/sip/ISipSession;ILjava/lang/String;)V

    #@8
    .line 1400
    return-void
.end method

.method private endingCall(Ljava/util/EventObject;)Z
    .locals 5
    .param p1, "evt"    # Ljava/util/EventObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    .line 1331
    const-string/jumbo v3, "BYE"

    #@4
    invoke-static {v3, p1}, Lcom/android/server/sip/SipSessionGroup;->-wrap1(Ljava/lang/String;Ljava/util/EventObject;)Z

    #@7
    move-result v3

    #@8
    if-eqz v3, :cond_1

    #@a
    move-object v0, p1

    #@b
    .line 1332
    check-cast v0, Ljavax/sip/ResponseEvent;

    #@d
    .line 1333
    .local v0, "event":Ljavax/sip/ResponseEvent;
    invoke-virtual {v0}, Ljavax/sip/ResponseEvent;->getResponse()Ljavax/sip/message/Response;

    #@10
    move-result-object v1

    #@11
    .line 1335
    .local v1, "response":Ljavax/sip/message/Response;
    invoke-interface {v1}, Ljavax/sip/message/Response;->getStatusCode()I

    #@14
    move-result v2

    #@15
    .line 1336
    .local v2, "statusCode":I
    sparse-switch v2, :sswitch_data_0

    #@18
    .line 1345
    :cond_0
    invoke-direct {p0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->cancelSessionTimer()V

    #@1b
    .line 1346
    invoke-direct {p0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->reset()V

    #@1e
    .line 1347
    return v4

    #@1f
    .line 1339
    :sswitch_0
    invoke-direct {p0, v0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->handleAuthentication(Ljavax/sip/ResponseEvent;)Z

    #@22
    move-result v3

    #@23
    if-eqz v3, :cond_0

    #@25
    .line 1340
    return v4

    #@26
    .line 1349
    .end local v0    # "event":Ljavax/sip/ResponseEvent;
    .end local v1    # "response":Ljavax/sip/message/Response;
    .end local v2    # "statusCode":I
    :cond_1
    const/4 v3, 0x0

    #@27
    return v3

    #@28
    .line 1336
    :sswitch_data_0
    .sparse-switch
        0x191 -> :sswitch_0
        0x197 -> :sswitch_0
    .end sparse-switch
.end method

.method private establishCall(Z)V
    .locals 2
    .param p1, "enableKeepAlive"    # Z

    #@0
    .prologue
    .line 1388
    const/16 v0, 0x8

    #@2
    iput v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mState:I

    #@4
    .line 1389
    invoke-direct {p0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->cancelSessionTimer()V

    #@7
    .line 1390
    iget-boolean v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mInCall:Z

    #@9
    if-nez v0, :cond_0

    #@b
    if-eqz p1, :cond_0

    #@d
    invoke-direct {p0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->enableKeepAlive()V

    #@10
    .line 1391
    :cond_0
    const/4 v0, 0x1

    #@11
    iput-boolean v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mInCall:Z

    #@13
    .line 1392
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mProxy:Lcom/android/server/sip/SipSessionListenerProxy;

    #@15
    iget-object v1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mPeerSessionDescription:Ljava/lang/String;

    #@17
    invoke-virtual {v0, p0, v1}, Lcom/android/server/sip/SipSessionListenerProxy;->onCallEstablished(Landroid/net/sip/ISipSession;Ljava/lang/String;)V

    #@1a
    .line 1387
    return-void
.end method

.method private getAccountManager()Lgov/nist/javax/sip/clientauthutils/AccountManager;
    .locals 1

    #@0
    .prologue
    .line 1012
    new-instance v0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$2;

    #@2
    invoke-direct {v0, p0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$2;-><init>(Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;)V

    #@5
    return-object v0
.end method

.method private getErrorCode(I)I
    .locals 1
    .param p1, "responseStatusCode"    # I

    #@0
    .prologue
    .line 1438
    sparse-switch p1, :sswitch_data_0

    #@3
    .line 1456
    const/16 v0, 0x1f4

    #@5
    if-ge p1, v0, :cond_0

    #@7
    .line 1457
    const/4 v0, -0x4

    #@8
    return v0

    #@9
    .line 1445
    :sswitch_0
    const/4 v0, -0x7

    #@a
    return v0

    #@b
    .line 1450
    :sswitch_1
    const/4 v0, -0x6

    #@c
    return v0

    #@d
    .line 1453
    :sswitch_2
    const/4 v0, -0x5

    #@e
    return v0

    #@f
    .line 1459
    :cond_0
    const/4 v0, -0x2

    #@10
    return v0

    #@11
    .line 1438
    nop

    #@12
    :sswitch_data_0
    .sparse-switch
        0x193 -> :sswitch_0
        0x194 -> :sswitch_0
        0x196 -> :sswitch_0
        0x198 -> :sswitch_2
        0x19a -> :sswitch_0
        0x19e -> :sswitch_1
        0x1e0 -> :sswitch_0
        0x1e4 -> :sswitch_1
        0x1e5 -> :sswitch_1
        0x1e8 -> :sswitch_0
    .end sparse-switch
.end method

.method private getErrorCode(Ljava/lang/Throwable;)I
    .locals 2
    .param p1, "exception"    # Ljava/lang/Throwable;

    #@0
    .prologue
    .line 1465
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 1466
    .local v0, "message":Ljava/lang/String;
    instance-of v1, p1, Ljava/net/UnknownHostException;

    #@6
    if-eqz v1, :cond_0

    #@8
    .line 1467
    const/16 v1, -0xc

    #@a
    return v1

    #@b
    .line 1468
    :cond_0
    instance-of v1, p1, Ljava/io/IOException;

    #@d
    if-eqz v1, :cond_1

    #@f
    .line 1469
    const/4 v1, -0x1

    #@10
    return v1

    #@11
    .line 1471
    :cond_1
    const/4 v1, -0x4

    #@12
    return v1
.end method

.method private getExpiryTime(Ljavax/sip/message/Response;)I
    .locals 5
    .param p1, "response"    # Ljavax/sip/message/Response;

    #@0
    .prologue
    .line 925
    const/4 v2, -0x1

    #@1
    .line 926
    .local v2, "time":I
    const-string/jumbo v3, "Contact"

    #@4
    invoke-interface {p1, v3}, Ljavax/sip/message/Response;->getHeader(Ljava/lang/String;)Ljavax/sip/header/Header;

    #@7
    move-result-object v0

    #@8
    check-cast v0, Ljavax/sip/header/ContactHeader;

    #@a
    .line 927
    .local v0, "contact":Ljavax/sip/header/ContactHeader;
    if-eqz v0, :cond_0

    #@c
    .line 928
    invoke-interface {v0}, Ljavax/sip/header/ContactHeader;->getExpires()I

    #@f
    move-result v2

    #@10
    .line 930
    :cond_0
    const-string/jumbo v3, "Expires"

    #@13
    invoke-interface {p1, v3}, Ljavax/sip/message/Response;->getHeader(Ljava/lang/String;)Ljavax/sip/header/Header;

    #@16
    move-result-object v1

    #@17
    check-cast v1, Ljavax/sip/header/ExpiresHeader;

    #@19
    .line 931
    .local v1, "expires":Ljavax/sip/header/ExpiresHeader;
    if-eqz v1, :cond_2

    #@1b
    if-ltz v2, :cond_1

    #@1d
    invoke-interface {v1}, Ljavax/sip/header/ExpiresHeader;->getExpires()I

    #@20
    move-result v3

    #@21
    if-le v2, v3, :cond_2

    #@23
    .line 932
    :cond_1
    invoke-interface {v1}, Ljavax/sip/header/ExpiresHeader;->getExpires()I

    #@26
    move-result v2

    #@27
    .line 934
    :cond_2
    if-gtz v2, :cond_3

    #@29
    .line 935
    const/16 v2, 0xe10

    #@2b
    .line 937
    :cond_3
    const-string/jumbo v3, "Min-Expires"

    #@2e
    invoke-interface {p1, v3}, Ljavax/sip/message/Response;->getHeader(Ljava/lang/String;)Ljavax/sip/header/Header;

    #@31
    move-result-object v1

    #@32
    .end local v1    # "expires":Ljavax/sip/header/ExpiresHeader;
    check-cast v1, Ljavax/sip/header/ExpiresHeader;

    #@34
    .line 938
    .restart local v1    # "expires":Ljavax/sip/header/ExpiresHeader;
    if-eqz v1, :cond_4

    #@36
    invoke-interface {v1}, Ljavax/sip/header/ExpiresHeader;->getExpires()I

    #@39
    move-result v3

    #@3a
    if-ge v2, v3, :cond_4

    #@3c
    .line 939
    invoke-interface {v1}, Ljavax/sip/header/ExpiresHeader;->getExpires()I

    #@3f
    move-result v2

    #@40
    .line 942
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    #@42
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@45
    const-string/jumbo v4, "Expiry time = "

    #@48
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v3

    #@4c
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v3

    #@50
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@53
    move-result-object v3

    #@54
    invoke-direct {p0, v3}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->log(Ljava/lang/String;)V

    #@57
    .line 944
    return v2
.end method

.method private getNonceFromResponse(Ljavax/sip/message/Response;)Ljava/lang/String;
    .locals 4
    .param p1, "response"    # Ljavax/sip/message/Response;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1049
    const-string/jumbo v3, "WWW-Authenticate"

    #@4
    .line 1048
    invoke-interface {p1, v3}, Ljavax/sip/message/Response;->getHeader(Ljava/lang/String;)Ljavax/sip/header/Header;

    #@7
    move-result-object v1

    #@8
    check-cast v1, Lgov/nist/javax/sip/header/WWWAuthenticate;

    #@a
    .line 1050
    .local v1, "wwwAuth":Lgov/nist/javax/sip/header/WWWAuthenticate;
    if-eqz v1, :cond_0

    #@c
    invoke-virtual {v1}, Lgov/nist/javax/sip/header/WWWAuthenticate;->getNonce()Ljava/lang/String;

    #@f
    move-result-object v2

    #@10
    return-object v2

    #@11
    .line 1052
    :cond_0
    const-string/jumbo v3, "Proxy-Authenticate"

    #@14
    .line 1051
    invoke-interface {p1, v3}, Ljavax/sip/message/Response;->getHeader(Ljava/lang/String;)Ljavax/sip/header/Header;

    #@17
    move-result-object v0

    #@18
    check-cast v0, Lgov/nist/javax/sip/header/ProxyAuthenticate;

    #@1a
    .line 1053
    .local v0, "proxyAuth":Lgov/nist/javax/sip/header/ProxyAuthenticate;
    if-nez v0, :cond_1

    #@1c
    :goto_0
    return-object v2

    #@1d
    :cond_1
    invoke-virtual {v0}, Lgov/nist/javax/sip/header/ProxyAuthenticate;->getNonce()Ljava/lang/String;

    #@20
    move-result-object v2

    #@21
    goto :goto_0
.end method

.method private getRealmFromResponse(Ljavax/sip/message/Response;)Ljava/lang/String;
    .locals 4
    .param p1, "response"    # Ljavax/sip/message/Response;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1040
    const-string/jumbo v3, "WWW-Authenticate"

    #@4
    .line 1039
    invoke-interface {p1, v3}, Ljavax/sip/message/Response;->getHeader(Ljava/lang/String;)Ljavax/sip/header/Header;

    #@7
    move-result-object v1

    #@8
    check-cast v1, Lgov/nist/javax/sip/header/WWWAuthenticate;

    #@a
    .line 1041
    .local v1, "wwwAuth":Lgov/nist/javax/sip/header/WWWAuthenticate;
    if-eqz v1, :cond_0

    #@c
    invoke-virtual {v1}, Lgov/nist/javax/sip/header/WWWAuthenticate;->getRealm()Ljava/lang/String;

    #@f
    move-result-object v2

    #@10
    return-object v2

    #@11
    .line 1043
    :cond_0
    const-string/jumbo v3, "Proxy-Authenticate"

    #@14
    .line 1042
    invoke-interface {p1, v3}, Ljavax/sip/message/Response;->getHeader(Ljava/lang/String;)Ljavax/sip/header/Header;

    #@17
    move-result-object v0

    #@18
    check-cast v0, Lgov/nist/javax/sip/header/ProxyAuthenticate;

    #@1a
    .line 1044
    .local v0, "proxyAuth":Lgov/nist/javax/sip/header/ProxyAuthenticate;
    if-nez v0, :cond_1

    #@1c
    :goto_0
    return-object v2

    #@1d
    :cond_1
    invoke-virtual {v0}, Lgov/nist/javax/sip/header/ProxyAuthenticate;->getRealm()Ljava/lang/String;

    #@20
    move-result-object v2

    #@21
    goto :goto_0
.end method

.method private getResponseString(I)Ljava/lang/String;
    .locals 2
    .param p1, "statusCode"    # I

    #@0
    .prologue
    .line 1057
    new-instance v0, Lgov/nist/javax/sip/header/StatusLine;

    #@2
    invoke-direct {v0}, Lgov/nist/javax/sip/header/StatusLine;-><init>()V

    #@5
    .line 1058
    .local v0, "statusLine":Lgov/nist/javax/sip/header/StatusLine;
    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/StatusLine;->setStatusCode(I)V

    #@8
    .line 1059
    invoke-static {p1}, Lgov/nist/javax/sip/message/SIPResponse;->getReasonPhrase(I)Ljava/lang/String;

    #@b
    move-result-object v1

    #@c
    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/header/StatusLine;->setReasonPhrase(Ljava/lang/String;)V

    #@f
    .line 1060
    invoke-virtual {v0}, Lgov/nist/javax/sip/header/StatusLine;->encode()Ljava/lang/String;

    #@12
    move-result-object v1

    #@13
    return-object v1
.end method

.method private getTransaction()Ljavax/sip/Transaction;
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 663
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mClientTransaction:Ljavax/sip/ClientTransaction;

    #@3
    if-eqz v0, :cond_0

    #@5
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mClientTransaction:Ljavax/sip/ClientTransaction;

    #@7
    return-object v0

    #@8
    .line 664
    :cond_0
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mServerTransaction:Ljavax/sip/ServerTransaction;

    #@a
    if-eqz v0, :cond_1

    #@c
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mServerTransaction:Ljavax/sip/ServerTransaction;

    #@e
    return-object v0

    #@f
    .line 665
    :cond_1
    return-object v1
.end method

.method private handleAuthentication(Ljavax/sip/ResponseEvent;)Z
    .locals 5
    .param p1, "event"    # Ljavax/sip/ResponseEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 977
    invoke-virtual {p1}, Ljavax/sip/ResponseEvent;->getResponse()Ljavax/sip/message/Response;

    #@4
    move-result-object v1

    #@5
    .line 978
    .local v1, "response":Ljavax/sip/message/Response;
    invoke-direct {p0, v1}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->getNonceFromResponse(Ljavax/sip/message/Response;)Ljava/lang/String;

    #@8
    move-result-object v0

    #@9
    .line 979
    .local v0, "nonce":Ljava/lang/String;
    if-nez v0, :cond_0

    #@b
    .line 981
    const-string/jumbo v2, "server does not provide challenge"

    #@e
    .line 980
    const/4 v3, -0x2

    #@f
    invoke-direct {p0, v3, v2}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->onError(ILjava/lang/String;)V

    #@12
    .line 982
    return v4

    #@13
    .line 983
    :cond_0
    iget v2, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mAuthenticationRetryCount:I

    #@15
    const/4 v3, 0x2

    #@16
    if-ge v2, v3, :cond_2

    #@18
    .line 984
    iget-object v2, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    #@1a
    invoke-static {v2}, Lcom/android/server/sip/SipSessionGroup;->-get8(Lcom/android/server/sip/SipSessionGroup;)Lcom/android/server/sip/SipHelper;

    #@1d
    move-result-object v2

    #@1e
    .line 985
    invoke-direct {p0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->getAccountManager()Lgov/nist/javax/sip/clientauthutils/AccountManager;

    #@21
    move-result-object v3

    #@22
    .line 984
    invoke-virtual {v2, p1, v3}, Lcom/android/server/sip/SipHelper;->handleChallenge(Ljavax/sip/ResponseEvent;Lgov/nist/javax/sip/clientauthutils/AccountManager;)Ljavax/sip/ClientTransaction;

    #@25
    move-result-object v2

    #@26
    iput-object v2, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mClientTransaction:Ljavax/sip/ClientTransaction;

    #@28
    .line 986
    iget-object v2, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mClientTransaction:Ljavax/sip/ClientTransaction;

    #@2a
    invoke-interface {v2}, Ljavax/sip/ClientTransaction;->getDialog()Ljavax/sip/Dialog;

    #@2d
    move-result-object v2

    #@2e
    iput-object v2, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mDialog:Ljavax/sip/Dialog;

    #@30
    .line 987
    iget v2, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mAuthenticationRetryCount:I

    #@32
    add-int/lit8 v2, v2, 0x1

    #@34
    iput v2, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mAuthenticationRetryCount:I

    #@36
    .line 988
    invoke-static {p0, p1}, Lcom/android/server/sip/SipSessionGroup;->-wrap2(Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;Ljava/util/EventObject;)Z

    #@39
    move-result v2

    #@3a
    if-eqz v2, :cond_1

    #@3c
    .line 989
    new-instance v2, Ljava/lang/StringBuilder;

    #@3e
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@41
    const-string/jumbo v3, "   authentication retry count="

    #@44
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v2

    #@48
    .line 990
    iget v3, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mAuthenticationRetryCount:I

    #@4a
    .line 989
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v2

    #@4e
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@51
    move-result-object v2

    #@52
    invoke-direct {p0, v2}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->log(Ljava/lang/String;)V

    #@55
    .line 992
    :cond_1
    const/4 v2, 0x1

    #@56
    return v2

    #@57
    .line 994
    :cond_2
    invoke-direct {p0, v1}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->crossDomainAuthenticationRequired(Ljavax/sip/message/Response;)Z

    #@5a
    move-result v2

    #@5b
    if-eqz v2, :cond_3

    #@5d
    .line 996
    invoke-direct {p0, v1}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->getRealmFromResponse(Ljavax/sip/message/Response;)Ljava/lang/String;

    #@60
    move-result-object v2

    #@61
    .line 995
    const/16 v3, -0xb

    #@63
    invoke-direct {p0, v3, v2}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->onError(ILjava/lang/String;)V

    #@66
    .line 1001
    :goto_0
    return v4

    #@67
    .line 999
    :cond_3
    const-string/jumbo v2, "incorrect username or password"

    #@6a
    .line 998
    const/4 v3, -0x8

    #@6b
    invoke-direct {p0, v3, v2}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->onError(ILjava/lang/String;)V

    #@6e
    goto :goto_0
.end method

.method private inCall(Ljava/util/EventObject;)Z
    .locals 5
    .param p1, "evt"    # Ljava/util/EventObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x3

    #@1
    const/4 v4, 0x1

    #@2
    .line 1296
    invoke-static {}, Lcom/android/server/sip/SipSessionGroup;->-get1()Ljava/util/EventObject;

    #@5
    move-result-object v1

    #@6
    if-ne v1, p1, :cond_0

    #@8
    .line 1298
    const/16 v1, 0xa

    #@a
    iput v1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mState:I

    #@c
    .line 1299
    iget-object v1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    #@e
    invoke-static {v1}, Lcom/android/server/sip/SipSessionGroup;->-get8(Lcom/android/server/sip/SipSessionGroup;)Lcom/android/server/sip/SipHelper;

    #@11
    move-result-object v1

    #@12
    iget-object v2, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mDialog:Ljavax/sip/Dialog;

    #@14
    invoke-virtual {v1, v2}, Lcom/android/server/sip/SipHelper;->sendBye(Ljavax/sip/Dialog;)V

    #@17
    .line 1300
    iget-object v1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mProxy:Lcom/android/server/sip/SipSessionListenerProxy;

    #@19
    invoke-virtual {v1, p0}, Lcom/android/server/sip/SipSessionListenerProxy;->onCallEnded(Landroid/net/sip/ISipSession;)V

    #@1c
    .line 1301
    invoke-direct {p0, v3}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->startSessionTimer(I)V

    #@1f
    .line 1302
    return v4

    #@20
    .line 1303
    :cond_0
    const-string/jumbo v1, "INVITE"

    #@23
    invoke-static {v1, p1}, Lcom/android/server/sip/SipSessionGroup;->-wrap4(Ljava/lang/String;Ljava/util/EventObject;)Z

    #@26
    move-result v1

    #@27
    if-eqz v1, :cond_1

    #@29
    .line 1305
    iput v3, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mState:I

    #@2b
    move-object v0, p1

    #@2c
    .line 1306
    check-cast v0, Ljavax/sip/RequestEvent;

    #@2e
    iput-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mInviteReceived:Ljavax/sip/RequestEvent;

    #@30
    .line 1307
    .local v0, "event":Ljavax/sip/RequestEvent;
    iget-object v1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    #@32
    invoke-virtual {v0}, Ljavax/sip/RequestEvent;->getRequest()Ljavax/sip/message/Request;

    #@35
    move-result-object v2

    #@36
    invoke-static {v1, v2}, Lcom/android/server/sip/SipSessionGroup;->-wrap6(Lcom/android/server/sip/SipSessionGroup;Ljavax/sip/message/Message;)Ljava/lang/String;

    #@39
    move-result-object v1

    #@3a
    iput-object v1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mPeerSessionDescription:Ljava/lang/String;

    #@3c
    .line 1308
    const/4 v1, 0x0

    #@3d
    iput-object v1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mServerTransaction:Ljavax/sip/ServerTransaction;

    #@3f
    .line 1309
    iget-object v1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mProxy:Lcom/android/server/sip/SipSessionListenerProxy;

    #@41
    iget-object v2, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mPeerProfile:Landroid/net/sip/SipProfile;

    #@43
    iget-object v3, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mPeerSessionDescription:Ljava/lang/String;

    #@45
    invoke-virtual {v1, p0, v2, v3}, Lcom/android/server/sip/SipSessionListenerProxy;->onRinging(Landroid/net/sip/ISipSession;Landroid/net/sip/SipProfile;Ljava/lang/String;)V

    #@48
    .line 1310
    return v4

    #@49
    .line 1311
    .end local v0    # "event":Ljavax/sip/RequestEvent;
    :cond_1
    const-string/jumbo v1, "BYE"

    #@4c
    invoke-static {v1, p1}, Lcom/android/server/sip/SipSessionGroup;->-wrap4(Ljava/lang/String;Ljava/util/EventObject;)Z

    #@4f
    move-result v1

    #@50
    if-eqz v1, :cond_2

    #@52
    .line 1312
    iget-object v1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    #@54
    invoke-static {v1}, Lcom/android/server/sip/SipSessionGroup;->-get8(Lcom/android/server/sip/SipSessionGroup;)Lcom/android/server/sip/SipHelper;

    #@57
    move-result-object v1

    #@58
    check-cast p1, Ljavax/sip/RequestEvent;

    #@5a
    .end local p1    # "evt":Ljava/util/EventObject;
    const/16 v2, 0xc8

    #@5c
    invoke-virtual {v1, p1, v2}, Lcom/android/server/sip/SipHelper;->sendResponse(Ljavax/sip/RequestEvent;I)V

    #@5f
    .line 1313
    invoke-direct {p0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->endCallNormally()V

    #@62
    .line 1314
    return v4

    #@63
    .line 1315
    .restart local p1    # "evt":Ljava/util/EventObject;
    :cond_2
    const-string/jumbo v1, "REFER"

    #@66
    invoke-static {v1, p1}, Lcom/android/server/sip/SipSessionGroup;->-wrap4(Ljava/lang/String;Ljava/util/EventObject;)Z

    #@69
    move-result v1

    #@6a
    if-eqz v1, :cond_3

    #@6c
    .line 1316
    check-cast p1, Ljavax/sip/RequestEvent;

    #@6e
    .end local p1    # "evt":Ljava/util/EventObject;
    invoke-direct {p0, p1}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->processReferRequest(Ljavax/sip/RequestEvent;)Z

    #@71
    move-result v1

    #@72
    return v1

    #@73
    .line 1317
    .restart local p1    # "evt":Ljava/util/EventObject;
    :cond_3
    instance-of v1, p1, Lcom/android/server/sip/SipSessionGroup$MakeCallCommand;

    #@75
    if-eqz v1, :cond_4

    #@77
    .line 1319
    const/4 v1, 0x5

    #@78
    iput v1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mState:I

    #@7a
    .line 1320
    iget-object v1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    #@7c
    invoke-static {v1}, Lcom/android/server/sip/SipSessionGroup;->-get8(Lcom/android/server/sip/SipSessionGroup;)Lcom/android/server/sip/SipHelper;

    #@7f
    move-result-object v2

    #@80
    iget-object v3, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mDialog:Ljavax/sip/Dialog;

    #@82
    move-object v1, p1

    #@83
    .line 1321
    check-cast v1, Lcom/android/server/sip/SipSessionGroup$MakeCallCommand;

    #@85
    invoke-virtual {v1}, Lcom/android/server/sip/SipSessionGroup$MakeCallCommand;->getSessionDescription()Ljava/lang/String;

    #@88
    move-result-object v1

    #@89
    .line 1320
    invoke-virtual {v2, v3, v1}, Lcom/android/server/sip/SipHelper;->sendReinvite(Ljavax/sip/Dialog;Ljava/lang/String;)Ljavax/sip/ClientTransaction;

    #@8c
    move-result-object v1

    #@8d
    iput-object v1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mClientTransaction:Ljavax/sip/ClientTransaction;

    #@8f
    .line 1322
    check-cast p1, Lcom/android/server/sip/SipSessionGroup$MakeCallCommand;

    #@91
    .end local p1    # "evt":Ljava/util/EventObject;
    invoke-virtual {p1}, Lcom/android/server/sip/SipSessionGroup$MakeCallCommand;->getTimeout()I

    #@94
    move-result v1

    #@95
    invoke-direct {p0, v1}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->startSessionTimer(I)V

    #@98
    .line 1323
    return v4

    #@99
    .line 1324
    .restart local p1    # "evt":Ljava/util/EventObject;
    :cond_4
    instance-of v1, p1, Ljavax/sip/ResponseEvent;

    #@9b
    if-eqz v1, :cond_5

    #@9d
    .line 1325
    const-string/jumbo v1, "NOTIFY"

    #@a0
    invoke-static {v1, p1}, Lcom/android/server/sip/SipSessionGroup;->-wrap1(Ljava/lang/String;Ljava/util/EventObject;)Z

    #@a3
    move-result v1

    #@a4
    if-eqz v1, :cond_5

    #@a6
    return v4

    #@a7
    .line 1327
    :cond_5
    const/4 v1, 0x0

    #@a8
    return v1
.end method

.method private incomingCall(Ljava/util/EventObject;)Z
    .locals 9
    .param p1, "evt"    # Ljava/util/EventObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v8, 0x1

    #@1
    .line 1104
    instance-of v0, p1, Lcom/android/server/sip/SipSessionGroup$MakeCallCommand;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 1106
    const/4 v0, 0x4

    #@6
    iput v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mState:I

    #@8
    .line 1107
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    #@a
    invoke-static {v0}, Lcom/android/server/sip/SipSessionGroup;->-get8(Lcom/android/server/sip/SipSessionGroup;)Lcom/android/server/sip/SipHelper;

    #@d
    move-result-object v0

    #@e
    iget-object v1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mInviteReceived:Ljavax/sip/RequestEvent;

    #@10
    .line 1108
    iget-object v2, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    #@12
    invoke-static {v2}, Lcom/android/server/sip/SipSessionGroup;->-get5(Lcom/android/server/sip/SipSessionGroup;)Landroid/net/sip/SipProfile;

    #@15
    move-result-object v2

    #@16
    move-object v3, p1

    #@17
    .line 1109
    check-cast v3, Lcom/android/server/sip/SipSessionGroup$MakeCallCommand;

    #@19
    invoke-virtual {v3}, Lcom/android/server/sip/SipSessionGroup$MakeCallCommand;->getSessionDescription()Ljava/lang/String;

    #@1c
    move-result-object v3

    #@1d
    .line 1110
    iget-object v4, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mServerTransaction:Ljavax/sip/ServerTransaction;

    #@1f
    .line 1111
    iget-object v5, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    #@21
    invoke-static {v5}, Lcom/android/server/sip/SipSessionGroup;->-get2(Lcom/android/server/sip/SipSessionGroup;)Ljava/lang/String;

    #@24
    move-result-object v5

    #@25
    iget-object v6, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    #@27
    invoke-static {v6}, Lcom/android/server/sip/SipSessionGroup;->-get3(Lcom/android/server/sip/SipSessionGroup;)I

    #@2a
    move-result v6

    #@2b
    .line 1107
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/sip/SipHelper;->sendInviteOk(Ljavax/sip/RequestEvent;Landroid/net/sip/SipProfile;Ljava/lang/String;Ljavax/sip/ServerTransaction;Ljava/lang/String;I)Ljavax/sip/ServerTransaction;

    #@2e
    move-result-object v0

    #@2f
    iput-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mServerTransaction:Ljavax/sip/ServerTransaction;

    #@31
    .line 1112
    check-cast p1, Lcom/android/server/sip/SipSessionGroup$MakeCallCommand;

    #@33
    .end local p1    # "evt":Ljava/util/EventObject;
    invoke-virtual {p1}, Lcom/android/server/sip/SipSessionGroup$MakeCallCommand;->getTimeout()I

    #@36
    move-result v0

    #@37
    invoke-direct {p0, v0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->startSessionTimer(I)V

    #@3a
    .line 1113
    return v8

    #@3b
    .line 1114
    .restart local p1    # "evt":Ljava/util/EventObject;
    :cond_0
    invoke-static {}, Lcom/android/server/sip/SipSessionGroup;->-get1()Ljava/util/EventObject;

    #@3e
    move-result-object v0

    #@3f
    if-ne v0, p1, :cond_1

    #@41
    .line 1115
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    #@43
    invoke-static {v0}, Lcom/android/server/sip/SipSessionGroup;->-get8(Lcom/android/server/sip/SipSessionGroup;)Lcom/android/server/sip/SipHelper;

    #@46
    move-result-object v0

    #@47
    iget-object v1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mInviteReceived:Ljavax/sip/RequestEvent;

    #@49
    .line 1116
    iget-object v2, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mServerTransaction:Ljavax/sip/ServerTransaction;

    #@4b
    .line 1115
    invoke-virtual {v0, v1, v2}, Lcom/android/server/sip/SipHelper;->sendInviteBusyHere(Ljavax/sip/RequestEvent;Ljavax/sip/ServerTransaction;)V

    #@4e
    .line 1117
    invoke-direct {p0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->endCallNormally()V

    #@51
    .line 1118
    return v8

    #@52
    .line 1119
    :cond_1
    const-string/jumbo v0, "CANCEL"

    #@55
    invoke-static {v0, p1}, Lcom/android/server/sip/SipSessionGroup;->-wrap4(Ljava/lang/String;Ljava/util/EventObject;)Z

    #@58
    move-result v0

    #@59
    if-eqz v0, :cond_2

    #@5b
    move-object v7, p1

    #@5c
    .line 1120
    check-cast v7, Ljavax/sip/RequestEvent;

    #@5e
    .line 1121
    .local v7, "event":Ljavax/sip/RequestEvent;
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    #@60
    invoke-static {v0}, Lcom/android/server/sip/SipSessionGroup;->-get8(Lcom/android/server/sip/SipSessionGroup;)Lcom/android/server/sip/SipHelper;

    #@63
    move-result-object v0

    #@64
    const/16 v1, 0xc8

    #@66
    invoke-virtual {v0, v7, v1}, Lcom/android/server/sip/SipHelper;->sendResponse(Ljavax/sip/RequestEvent;I)V

    #@69
    .line 1122
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    #@6b
    invoke-static {v0}, Lcom/android/server/sip/SipSessionGroup;->-get8(Lcom/android/server/sip/SipSessionGroup;)Lcom/android/server/sip/SipHelper;

    #@6e
    move-result-object v0

    #@6f
    .line 1123
    iget-object v1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mInviteReceived:Ljavax/sip/RequestEvent;

    #@71
    invoke-virtual {v1}, Ljavax/sip/RequestEvent;->getRequest()Ljavax/sip/message/Request;

    #@74
    move-result-object v1

    #@75
    iget-object v2, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mServerTransaction:Ljavax/sip/ServerTransaction;

    #@77
    .line 1122
    invoke-virtual {v0, v1, v2}, Lcom/android/server/sip/SipHelper;->sendInviteRequestTerminated(Ljavax/sip/message/Request;Ljavax/sip/ServerTransaction;)V

    #@7a
    .line 1124
    invoke-direct {p0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->endCallNormally()V

    #@7d
    .line 1125
    return v8

    #@7e
    .line 1127
    .end local v7    # "event":Ljavax/sip/RequestEvent;
    :cond_2
    const/4 v0, 0x0

    #@7f
    return v0
.end method

.method private incomingCallToInCall(Ljava/util/EventObject;)Z
    .locals 5
    .param p1, "evt"    # Ljava/util/EventObject;

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 1132
    const-string/jumbo v1, "ACK"

    #@5
    invoke-static {v1, p1}, Lcom/android/server/sip/SipSessionGroup;->-wrap4(Ljava/lang/String;Ljava/util/EventObject;)Z

    #@8
    move-result v1

    #@9
    if-eqz v1, :cond_2

    #@b
    .line 1133
    iget-object v1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    #@d
    check-cast p1, Ljavax/sip/RequestEvent;

    #@f
    .end local p1    # "evt":Ljava/util/EventObject;
    invoke-virtual {p1}, Ljavax/sip/RequestEvent;->getRequest()Ljavax/sip/message/Request;

    #@12
    move-result-object v2

    #@13
    invoke-static {v1, v2}, Lcom/android/server/sip/SipSessionGroup;->-wrap6(Lcom/android/server/sip/SipSessionGroup;Ljavax/sip/message/Message;)Ljava/lang/String;

    #@16
    move-result-object v0

    #@17
    .line 1134
    .local v0, "sdp":Ljava/lang/String;
    if-eqz v0, :cond_0

    #@19
    iput-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mPeerSessionDescription:Ljava/lang/String;

    #@1b
    .line 1135
    :cond_0
    iget-object v1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mPeerSessionDescription:Ljava/lang/String;

    #@1d
    if-nez v1, :cond_1

    #@1f
    .line 1136
    const-string/jumbo v1, "peer sdp is empty"

    #@22
    const/4 v2, -0x4

    #@23
    invoke-direct {p0, v2, v1}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->onError(ILjava/lang/String;)V

    #@26
    .line 1140
    :goto_0
    return v4

    #@27
    .line 1138
    :cond_1
    invoke-direct {p0, v3}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->establishCall(Z)V

    #@2a
    goto :goto_0

    #@2b
    .line 1141
    .end local v0    # "sdp":Ljava/lang/String;
    .restart local p1    # "evt":Ljava/util/EventObject;
    :cond_2
    const-string/jumbo v1, "CANCEL"

    #@2e
    invoke-static {v1, p1}, Lcom/android/server/sip/SipSessionGroup;->-wrap4(Ljava/lang/String;Ljava/util/EventObject;)Z

    #@31
    move-result v1

    #@32
    if-eqz v1, :cond_3

    #@34
    .line 1144
    return v4

    #@35
    .line 1146
    :cond_3
    return v3
.end method

.method private isCurrentTransaction(Ljavax/sip/TransactionTerminatedEvent;)Z
    .locals 5
    .param p1, "event"    # Ljavax/sip/TransactionTerminatedEvent;

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    .line 859
    invoke-virtual {p1}, Ljavax/sip/TransactionTerminatedEvent;->isServerTransaction()Z

    #@4
    move-result v2

    #@5
    if-eqz v2, :cond_0

    #@7
    .line 860
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mServerTransaction:Ljavax/sip/ServerTransaction;

    #@9
    .line 862
    .local v0, "current":Ljavax/sip/Transaction;
    :goto_0
    invoke-virtual {p1}, Ljavax/sip/TransactionTerminatedEvent;->isServerTransaction()Z

    #@c
    move-result v2

    #@d
    if-eqz v2, :cond_1

    #@f
    .line 863
    invoke-virtual {p1}, Ljavax/sip/TransactionTerminatedEvent;->getServerTransaction()Ljavax/sip/ServerTransaction;

    #@12
    move-result-object v1

    #@13
    .line 866
    .local v1, "target":Ljavax/sip/Transaction;
    :goto_1
    if-eq v0, v1, :cond_2

    #@15
    iget v2, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mState:I

    #@17
    const/16 v3, 0x9

    #@19
    if-eq v2, v3, :cond_2

    #@1b
    .line 867
    new-instance v2, Ljava/lang/StringBuilder;

    #@1d
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@20
    const-string/jumbo v3, "not the current transaction; current="

    #@23
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v2

    #@27
    .line 868
    invoke-direct {p0, v0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->toString(Ljavax/sip/Transaction;)Ljava/lang/String;

    #@2a
    move-result-object v3

    #@2b
    .line 867
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v2

    #@2f
    .line 868
    const-string/jumbo v3, ", target="

    #@32
    .line 867
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v2

    #@36
    .line 868
    invoke-direct {p0, v1}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->toString(Ljavax/sip/Transaction;)Ljava/lang/String;

    #@39
    move-result-object v3

    #@3a
    .line 867
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v2

    #@3e
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@41
    move-result-object v2

    #@42
    invoke-direct {p0, v2}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->log(Ljava/lang/String;)V

    #@45
    .line 869
    const/4 v2, 0x0

    #@46
    return v2

    #@47
    .line 861
    .end local v0    # "current":Ljavax/sip/Transaction;
    .end local v1    # "target":Ljavax/sip/Transaction;
    :cond_0
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mClientTransaction:Ljavax/sip/ClientTransaction;

    #@49
    .restart local v0    # "current":Ljavax/sip/Transaction;
    goto :goto_0

    #@4a
    .line 864
    :cond_1
    invoke-virtual {p1}, Ljavax/sip/TransactionTerminatedEvent;->getClientTransaction()Ljavax/sip/ClientTransaction;

    #@4d
    move-result-object v1

    #@4e
    .restart local v1    # "target":Ljavax/sip/Transaction;
    goto :goto_1

    #@4f
    .line 870
    :cond_2
    if-eqz v0, :cond_3

    #@51
    .line 871
    new-instance v2, Ljava/lang/StringBuilder;

    #@53
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@56
    const-string/jumbo v3, "transaction terminated: "

    #@59
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5c
    move-result-object v2

    #@5d
    invoke-direct {p0, v0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->toString(Ljavax/sip/Transaction;)Ljava/lang/String;

    #@60
    move-result-object v3

    #@61
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@64
    move-result-object v2

    #@65
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@68
    move-result-object v2

    #@69
    invoke-direct {p0, v2}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->log(Ljava/lang/String;)V

    #@6c
    .line 872
    return v4

    #@6d
    .line 875
    :cond_3
    return v4
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1668
    const-string/jumbo v0, "SipSessionImpl"

    #@3
    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@6
    .line 1667
    return-void
.end method

.method private onError(ILjava/lang/String;)V
    .locals 1
    .param p1, "errorCode"    # I
    .param p2, "message"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1411
    invoke-direct {p0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->cancelSessionTimer()V

    #@3
    .line 1412
    iget v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mState:I

    #@5
    packed-switch v0, :pswitch_data_0

    #@8
    .line 1418
    invoke-direct {p0, p1, p2}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->endCallOnError(ILjava/lang/String;)V

    #@b
    .line 1410
    :goto_0
    return-void

    #@c
    .line 1415
    :pswitch_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->onRegistrationFailed(ILjava/lang/String;)V

    #@f
    goto :goto_0

    #@10
    .line 1412
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private onError(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "exception"    # Ljava/lang/Throwable;

    #@0
    .prologue
    .line 1424
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    #@2
    invoke-static {v0, p1}, Lcom/android/server/sip/SipSessionGroup;->-wrap8(Lcom/android/server/sip/SipSessionGroup;Ljava/lang/Throwable;)Ljava/lang/Throwable;

    #@5
    move-result-object p1

    #@6
    .line 1425
    invoke-direct {p0, p1}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->getErrorCode(Ljava/lang/Throwable;)I

    #@9
    move-result v0

    #@a
    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    #@d
    move-result-object v1

    #@e
    invoke-direct {p0, v0, v1}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->onError(ILjava/lang/String;)V

    #@11
    .line 1423
    return-void
.end method

.method private onError(Ljavax/sip/message/Response;)V
    .locals 3
    .param p1, "response"    # Ljavax/sip/message/Response;

    #@0
    .prologue
    .line 1429
    invoke-interface {p1}, Ljavax/sip/message/Response;->getStatusCode()I

    #@3
    move-result v0

    #@4
    .line 1430
    .local v0, "statusCode":I
    iget-boolean v1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mInCall:Z

    #@6
    if-nez v1, :cond_0

    #@8
    const/16 v1, 0x1e6

    #@a
    if-ne v0, v1, :cond_0

    #@c
    .line 1431
    invoke-direct {p0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->endCallOnBusy()V

    #@f
    .line 1428
    :goto_0
    return-void

    #@10
    .line 1433
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->getErrorCode(I)I

    #@13
    move-result v1

    #@14
    invoke-direct {p0, p1}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->createErrorMessage(Ljavax/sip/message/Response;)Ljava/lang/String;

    #@17
    move-result-object v2

    #@18
    invoke-direct {p0, v1, v2}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->onError(ILjava/lang/String;)V

    #@1b
    goto :goto_0
.end method

.method private onRegistrationDone(I)V
    .locals 1
    .param p1, "duration"    # I

    #@0
    .prologue
    .line 1476
    invoke-direct {p0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->reset()V

    #@3
    .line 1477
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mProxy:Lcom/android/server/sip/SipSessionListenerProxy;

    #@5
    invoke-virtual {v0, p0, p1}, Lcom/android/server/sip/SipSessionListenerProxy;->onRegistrationDone(Landroid/net/sip/ISipSession;I)V

    #@8
    .line 1475
    return-void
.end method

.method private onRegistrationFailed(ILjava/lang/String;)V
    .locals 1
    .param p1, "errorCode"    # I
    .param p2, "message"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1481
    invoke-direct {p0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->reset()V

    #@3
    .line 1482
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mProxy:Lcom/android/server/sip/SipSessionListenerProxy;

    #@5
    invoke-virtual {v0, p0, p1, p2}, Lcom/android/server/sip/SipSessionListenerProxy;->onRegistrationFailed(Landroid/net/sip/ISipSession;ILjava/lang/String;)V

    #@8
    .line 1480
    return-void
.end method

.method private onRegistrationFailed(Ljavax/sip/message/Response;)V
    .locals 3
    .param p1, "response"    # Ljavax/sip/message/Response;

    #@0
    .prologue
    .line 1486
    invoke-interface {p1}, Ljavax/sip/message/Response;->getStatusCode()I

    #@3
    move-result v0

    #@4
    .line 1487
    .local v0, "statusCode":I
    invoke-direct {p0, v0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->getErrorCode(I)I

    #@7
    move-result v1

    #@8
    .line 1488
    invoke-direct {p0, p1}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->createErrorMessage(Ljavax/sip/message/Response;)Ljava/lang/String;

    #@b
    move-result-object v2

    #@c
    .line 1487
    invoke-direct {p0, v1, v2}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->onRegistrationFailed(ILjava/lang/String;)V

    #@f
    .line 1485
    return-void
.end method

.method private outgoingCall(Ljava/util/EventObject;)Z
    .locals 10
    .param p1, "evt"    # Ljava/util/EventObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v9, 0x0

    #@1
    const/4 v8, 0x0

    #@2
    const/4 v7, 0x1

    #@3
    .line 1150
    const-string/jumbo v4, "INVITE"

    #@6
    invoke-static {v4, p1}, Lcom/android/server/sip/SipSessionGroup;->-wrap1(Ljava/lang/String;Ljava/util/EventObject;)Z

    #@9
    move-result v4

    #@a
    if-eqz v4, :cond_6

    #@c
    move-object v1, p1

    #@d
    .line 1151
    check-cast v1, Ljavax/sip/ResponseEvent;

    #@f
    .line 1152
    .local v1, "event":Ljavax/sip/ResponseEvent;
    invoke-virtual {v1}, Ljavax/sip/ResponseEvent;->getResponse()Ljavax/sip/message/Response;

    #@12
    move-result-object v2

    #@13
    .line 1154
    .local v2, "response":Ljavax/sip/message/Response;
    invoke-interface {v2}, Ljavax/sip/message/Response;->getStatusCode()I

    #@16
    move-result v3

    #@17
    .line 1155
    .local v3, "statusCode":I
    sparse-switch v3, :sswitch_data_0

    #@1a
    .line 1189
    iget-object v4, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mReferSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    #@1c
    if-eqz v4, :cond_0

    #@1e
    .line 1190
    iget-object v4, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    #@20
    invoke-static {v4}, Lcom/android/server/sip/SipSessionGroup;->-get8(Lcom/android/server/sip/SipSessionGroup;)Lcom/android/server/sip/SipHelper;

    #@23
    move-result-object v4

    #@24
    iget-object v5, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mReferSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    #@26
    iget-object v5, v5, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mDialog:Ljavax/sip/Dialog;

    #@28
    .line 1191
    const/16 v6, 0x1f7

    #@2a
    invoke-direct {p0, v6}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->getResponseString(I)Ljava/lang/String;

    #@2d
    move-result-object v6

    #@2e
    .line 1190
    invoke-virtual {v4, v5, v6}, Lcom/android/server/sip/SipHelper;->sendReferNotify(Ljavax/sip/Dialog;Ljava/lang/String;)V

    #@31
    .line 1193
    :cond_0
    const/16 v4, 0x190

    #@33
    if-lt v3, v4, :cond_4

    #@35
    .line 1195
    invoke-direct {p0, v2}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->onError(Ljavax/sip/message/Response;)V

    #@38
    .line 1196
    return v7

    #@39
    .line 1162
    :sswitch_0
    iget v4, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mState:I

    #@3b
    const/4 v5, 0x5

    #@3c
    if-ne v4, v5, :cond_1

    #@3e
    .line 1163
    const/4 v4, 0x6

    #@3f
    iput v4, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mState:I

    #@41
    .line 1164
    invoke-direct {p0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->cancelSessionTimer()V

    #@44
    .line 1165
    iget-object v4, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mProxy:Lcom/android/server/sip/SipSessionListenerProxy;

    #@46
    invoke-virtual {v4, p0}, Lcom/android/server/sip/SipSessionListenerProxy;->onRingingBack(Landroid/net/sip/ISipSession;)V

    #@49
    .line 1167
    :cond_1
    return v7

    #@4a
    .line 1169
    :sswitch_1
    iget-object v4, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mReferSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    #@4c
    if-eqz v4, :cond_2

    #@4e
    .line 1170
    iget-object v4, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    #@50
    invoke-static {v4}, Lcom/android/server/sip/SipSessionGroup;->-get8(Lcom/android/server/sip/SipSessionGroup;)Lcom/android/server/sip/SipHelper;

    #@53
    move-result-object v4

    #@54
    iget-object v5, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mReferSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    #@56
    iget-object v5, v5, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mDialog:Ljavax/sip/Dialog;

    #@58
    .line 1171
    const/16 v6, 0xc8

    #@5a
    invoke-direct {p0, v6}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->getResponseString(I)Ljava/lang/String;

    #@5d
    move-result-object v6

    #@5e
    .line 1170
    invoke-virtual {v4, v5, v6}, Lcom/android/server/sip/SipHelper;->sendReferNotify(Ljavax/sip/Dialog;Ljava/lang/String;)V

    #@61
    .line 1173
    iput-object v8, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mReferSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    #@63
    .line 1175
    :cond_2
    iget-object v4, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    #@65
    invoke-static {v4}, Lcom/android/server/sip/SipSessionGroup;->-get8(Lcom/android/server/sip/SipSessionGroup;)Lcom/android/server/sip/SipHelper;

    #@68
    move-result-object v4

    #@69
    iget-object v5, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mDialog:Ljavax/sip/Dialog;

    #@6b
    invoke-virtual {v4, v1, v5}, Lcom/android/server/sip/SipHelper;->sendInviteAck(Ljavax/sip/ResponseEvent;Ljavax/sip/Dialog;)V

    #@6e
    .line 1176
    iget-object v4, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    #@70
    invoke-static {v4, v2}, Lcom/android/server/sip/SipSessionGroup;->-wrap6(Lcom/android/server/sip/SipSessionGroup;Ljavax/sip/message/Message;)Ljava/lang/String;

    #@73
    move-result-object v4

    #@74
    iput-object v4, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mPeerSessionDescription:Ljava/lang/String;

    #@76
    .line 1177
    invoke-direct {p0, v7}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->establishCall(Z)V

    #@79
    .line 1178
    return v7

    #@7a
    .line 1181
    :sswitch_2
    invoke-direct {p0, v1}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->handleAuthentication(Ljavax/sip/ResponseEvent;)Z

    #@7d
    move-result v4

    #@7e
    if-eqz v4, :cond_3

    #@80
    .line 1182
    iget-object v4, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    #@82
    invoke-static {v4, p0}, Lcom/android/server/sip/SipSessionGroup;->-wrap9(Lcom/android/server/sip/SipSessionGroup;Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;)V

    #@85
    .line 1184
    :cond_3
    return v7

    #@86
    .line 1187
    :sswitch_3
    return v7

    #@87
    .line 1197
    :cond_4
    const/16 v4, 0x12c

    #@89
    if-lt v3, v4, :cond_5

    #@8b
    .line 1203
    return v9

    #@8c
    .line 1200
    :cond_5
    return v7

    #@8d
    .line 1204
    .end local v1    # "event":Ljavax/sip/ResponseEvent;
    .end local v2    # "response":Ljavax/sip/message/Response;
    .end local v3    # "statusCode":I
    :cond_6
    invoke-static {}, Lcom/android/server/sip/SipSessionGroup;->-get1()Ljava/util/EventObject;

    #@90
    move-result-object v4

    #@91
    if-ne v4, p1, :cond_7

    #@93
    .line 1208
    const/4 v4, 0x7

    #@94
    iput v4, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mState:I

    #@96
    .line 1209
    iget-object v4, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    #@98
    invoke-static {v4}, Lcom/android/server/sip/SipSessionGroup;->-get8(Lcom/android/server/sip/SipSessionGroup;)Lcom/android/server/sip/SipHelper;

    #@9b
    move-result-object v4

    #@9c
    iget-object v5, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mClientTransaction:Ljavax/sip/ClientTransaction;

    #@9e
    invoke-virtual {v4, v5}, Lcom/android/server/sip/SipHelper;->sendCancel(Ljavax/sip/ClientTransaction;)V

    #@a1
    .line 1210
    const/4 v4, 0x3

    #@a2
    invoke-direct {p0, v4}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->startSessionTimer(I)V

    #@a5
    .line 1211
    return v7

    #@a6
    .line 1212
    :cond_7
    const-string/jumbo v4, "INVITE"

    #@a9
    invoke-static {v4, p1}, Lcom/android/server/sip/SipSessionGroup;->-wrap4(Ljava/lang/String;Ljava/util/EventObject;)Z

    #@ac
    move-result v4

    #@ad
    if-eqz v4, :cond_8

    #@af
    move-object v0, p1

    #@b0
    .line 1215
    check-cast v0, Ljavax/sip/RequestEvent;

    #@b2
    .line 1216
    .local v0, "event":Ljavax/sip/RequestEvent;
    iget-object v4, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    #@b4
    invoke-static {v4}, Lcom/android/server/sip/SipSessionGroup;->-get8(Lcom/android/server/sip/SipSessionGroup;)Lcom/android/server/sip/SipHelper;

    #@b7
    move-result-object v4

    #@b8
    .line 1217
    invoke-virtual {v0}, Ljavax/sip/RequestEvent;->getServerTransaction()Ljavax/sip/ServerTransaction;

    #@bb
    move-result-object v5

    #@bc
    .line 1216
    invoke-virtual {v4, v0, v5}, Lcom/android/server/sip/SipHelper;->sendInviteBusyHere(Ljavax/sip/RequestEvent;Ljavax/sip/ServerTransaction;)V

    #@bf
    .line 1218
    return v7

    #@c0
    .line 1220
    .end local v0    # "event":Ljavax/sip/RequestEvent;
    :cond_8
    return v9

    #@c1
    .line 1155
    nop

    #@c2
    :sswitch_data_0
    .sparse-switch
        0xb4 -> :sswitch_0
        0xb5 -> :sswitch_0
        0xb6 -> :sswitch_0
        0xb7 -> :sswitch_0
        0xc8 -> :sswitch_1
        0x191 -> :sswitch_2
        0x197 -> :sswitch_2
        0x1eb -> :sswitch_3
    .end sparse-switch
.end method

.method private outgoingCallToReady(Ljava/util/EventObject;)Z
    .locals 6
    .param p1, "evt"    # Ljava/util/EventObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    const/4 v4, 0x1

    #@2
    .line 1225
    instance-of v3, p1, Ljavax/sip/ResponseEvent;

    #@4
    if-eqz v3, :cond_3

    #@6
    move-object v0, p1

    #@7
    .line 1226
    check-cast v0, Ljavax/sip/ResponseEvent;

    #@9
    .line 1227
    .local v0, "event":Ljavax/sip/ResponseEvent;
    invoke-virtual {v0}, Ljavax/sip/ResponseEvent;->getResponse()Ljavax/sip/message/Response;

    #@c
    move-result-object v1

    #@d
    .line 1228
    .local v1, "response":Ljavax/sip/message/Response;
    invoke-interface {v1}, Ljavax/sip/message/Response;->getStatusCode()I

    #@10
    move-result v2

    #@11
    .line 1229
    .local v2, "statusCode":I
    const-string/jumbo v3, "CANCEL"

    #@14
    invoke-static {v3, p1}, Lcom/android/server/sip/SipSessionGroup;->-wrap1(Ljava/lang/String;Ljava/util/EventObject;)Z

    #@17
    move-result v3

    #@18
    if-eqz v3, :cond_0

    #@1a
    .line 1230
    const/16 v3, 0xc8

    #@1c
    if-ne v2, v3, :cond_1

    #@1e
    .line 1232
    return v4

    #@1f
    .line 1234
    :cond_0
    const-string/jumbo v3, "INVITE"

    #@22
    invoke-static {v3, p1}, Lcom/android/server/sip/SipSessionGroup;->-wrap1(Ljava/lang/String;Ljava/util/EventObject;)Z

    #@25
    move-result v3

    #@26
    if-eqz v3, :cond_2

    #@28
    .line 1235
    sparse-switch v2, :sswitch_data_0

    #@2b
    .line 1247
    :cond_1
    const/16 v3, 0x190

    #@2d
    if-lt v2, v3, :cond_4

    #@2f
    .line 1248
    invoke-direct {p0, v1}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->onError(Ljavax/sip/message/Response;)V

    #@32
    .line 1249
    return v4

    #@33
    .line 1237
    :sswitch_0
    invoke-direct {p0, p1}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->outgoingCall(Ljava/util/EventObject;)Z

    #@36
    .line 1238
    return v4

    #@37
    .line 1240
    :sswitch_1
    invoke-direct {p0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->endCallNormally()V

    #@3a
    .line 1241
    return v4

    #@3b
    .line 1244
    :cond_2
    return v5

    #@3c
    .line 1251
    .end local v0    # "event":Ljavax/sip/ResponseEvent;
    .end local v1    # "response":Ljavax/sip/message/Response;
    .end local v2    # "statusCode":I
    :cond_3
    instance-of v3, p1, Ljavax/sip/TransactionTerminatedEvent;

    #@3e
    if-eqz v3, :cond_4

    #@40
    .line 1256
    new-instance v3, Ljavax/sip/SipException;

    #@42
    const-string/jumbo v4, "timed out"

    #@45
    invoke-direct {v3, v4}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    #@48
    invoke-direct {p0, v3}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->onError(Ljava/lang/Throwable;)V

    #@4b
    .line 1258
    :cond_4
    return v5

    #@4c
    .line 1235
    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_0
        0x1e7 -> :sswitch_1
    .end sparse-switch
.end method

.method private processCommand(Ljava/util/EventObject;)V
    .locals 2
    .param p1, "command"    # Ljava/util/EventObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    #@0
    .prologue
    .line 738
    invoke-static {p1}, Lcom/android/server/sip/SipSessionGroup;->-wrap3(Ljava/util/EventObject;)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    new-instance v0, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    const-string/jumbo v1, "process cmd: "

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v0

    #@16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@19
    move-result-object v0

    #@1a
    invoke-direct {p0, v0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->log(Ljava/lang/String;)V

    #@1d
    .line 739
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->process(Ljava/util/EventObject;)Z

    #@20
    move-result v0

    #@21
    if-nez v0, :cond_1

    #@23
    .line 741
    new-instance v0, Ljava/lang/StringBuilder;

    #@25
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@28
    const-string/jumbo v1, "cannot initiate a new transaction to execute: "

    #@2b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v0

    #@2f
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v0

    #@33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@36
    move-result-object v0

    #@37
    .line 740
    const/16 v1, -0x9

    #@39
    invoke-direct {p0, v1, v0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->onError(ILjava/lang/String;)V

    #@3c
    .line 737
    :cond_1
    return-void
.end method

.method private processDialogTerminated(Ljavax/sip/DialogTerminatedEvent;)V
    .locals 2
    .param p1, "event"    # Ljavax/sip/DialogTerminatedEvent;

    #@0
    .prologue
    .line 850
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mDialog:Ljavax/sip/Dialog;

    #@2
    invoke-virtual {p1}, Ljavax/sip/DialogTerminatedEvent;->getDialog()Ljavax/sip/Dialog;

    #@5
    move-result-object v1

    #@6
    if-ne v0, v1, :cond_0

    #@8
    .line 851
    new-instance v0, Ljavax/sip/SipException;

    #@a
    const-string/jumbo v1, "dialog terminated"

    #@d
    invoke-direct {v0, v1}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    #@10
    invoke-direct {p0, v0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->onError(Ljava/lang/Throwable;)V

    #@13
    .line 849
    :goto_0
    return-void

    #@14
    .line 853
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    #@16
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@19
    const-string/jumbo v1, "not the current dialog; current="

    #@1c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v0

    #@20
    iget-object v1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mDialog:Ljavax/sip/Dialog;

    #@22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v0

    #@26
    .line 854
    const-string/jumbo v1, ", terminated="

    #@29
    .line 853
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v0

    #@2d
    .line 854
    invoke-virtual {p1}, Ljavax/sip/DialogTerminatedEvent;->getDialog()Ljavax/sip/Dialog;

    #@30
    move-result-object v1

    #@31
    .line 853
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v0

    #@35
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@38
    move-result-object v0

    #@39
    invoke-direct {p0, v0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->log(Ljava/lang/String;)V

    #@3c
    goto :goto_0
.end method

.method private processExceptions(Ljava/util/EventObject;)Z
    .locals 3
    .param p1, "evt"    # Ljava/util/EventObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    #@0
    .prologue
    const/16 v1, 0xc8

    #@2
    const/4 v2, 0x1

    #@3
    .line 820
    const-string/jumbo v0, "BYE"

    #@6
    invoke-static {v0, p1}, Lcom/android/server/sip/SipSessionGroup;->-wrap4(Ljava/lang/String;Ljava/util/EventObject;)Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_0

    #@c
    .line 822
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    #@e
    invoke-static {v0}, Lcom/android/server/sip/SipSessionGroup;->-get8(Lcom/android/server/sip/SipSessionGroup;)Lcom/android/server/sip/SipHelper;

    #@11
    move-result-object v0

    #@12
    check-cast p1, Ljavax/sip/RequestEvent;

    #@14
    .end local p1    # "evt":Ljava/util/EventObject;
    invoke-virtual {v0, p1, v1}, Lcom/android/server/sip/SipHelper;->sendResponse(Ljavax/sip/RequestEvent;I)V

    #@17
    .line 823
    invoke-direct {p0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->endCallNormally()V

    #@1a
    .line 824
    return v2

    #@1b
    .line 825
    .restart local p1    # "evt":Ljava/util/EventObject;
    :cond_0
    const-string/jumbo v0, "CANCEL"

    #@1e
    invoke-static {v0, p1}, Lcom/android/server/sip/SipSessionGroup;->-wrap4(Ljava/lang/String;Ljava/util/EventObject;)Z

    #@21
    move-result v0

    #@22
    if-eqz v0, :cond_1

    #@24
    .line 826
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    #@26
    invoke-static {v0}, Lcom/android/server/sip/SipSessionGroup;->-get8(Lcom/android/server/sip/SipSessionGroup;)Lcom/android/server/sip/SipHelper;

    #@29
    move-result-object v0

    #@2a
    check-cast p1, Ljavax/sip/RequestEvent;

    #@2c
    .line 827
    .end local p1    # "evt":Ljava/util/EventObject;
    const/16 v1, 0x1e1

    #@2e
    .line 826
    invoke-virtual {v0, p1, v1}, Lcom/android/server/sip/SipHelper;->sendResponse(Ljavax/sip/RequestEvent;I)V

    #@31
    .line 828
    return v2

    #@32
    .line 829
    .restart local p1    # "evt":Ljava/util/EventObject;
    :cond_1
    instance-of v0, p1, Ljavax/sip/TransactionTerminatedEvent;

    #@34
    if-eqz v0, :cond_3

    #@36
    move-object v0, p1

    #@37
    .line 830
    check-cast v0, Ljavax/sip/TransactionTerminatedEvent;

    #@39
    invoke-direct {p0, v0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->isCurrentTransaction(Ljavax/sip/TransactionTerminatedEvent;)Z

    #@3c
    move-result v0

    #@3d
    if-eqz v0, :cond_5

    #@3f
    .line 831
    instance-of v0, p1, Ljavax/sip/TimeoutEvent;

    #@41
    if-eqz v0, :cond_2

    #@43
    .line 832
    check-cast p1, Ljavax/sip/TimeoutEvent;

    #@45
    .end local p1    # "evt":Ljava/util/EventObject;
    invoke-direct {p0, p1}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->processTimeout(Ljavax/sip/TimeoutEvent;)V

    #@48
    .line 837
    :goto_0
    return v2

    #@49
    .line 835
    .restart local p1    # "evt":Ljava/util/EventObject;
    :cond_2
    check-cast p1, Ljavax/sip/TransactionTerminatedEvent;

    #@4b
    .line 834
    .end local p1    # "evt":Ljava/util/EventObject;
    invoke-direct {p0, p1}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->processTransactionTerminated(Ljavax/sip/TransactionTerminatedEvent;)V

    #@4e
    goto :goto_0

    #@4f
    .line 839
    .restart local p1    # "evt":Ljava/util/EventObject;
    :cond_3
    const-string/jumbo v0, "OPTIONS"

    #@52
    invoke-static {v0, p1}, Lcom/android/server/sip/SipSessionGroup;->-wrap4(Ljava/lang/String;Ljava/util/EventObject;)Z

    #@55
    move-result v0

    #@56
    if-eqz v0, :cond_4

    #@58
    .line 840
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    #@5a
    invoke-static {v0}, Lcom/android/server/sip/SipSessionGroup;->-get8(Lcom/android/server/sip/SipSessionGroup;)Lcom/android/server/sip/SipHelper;

    #@5d
    move-result-object v0

    #@5e
    check-cast p1, Ljavax/sip/RequestEvent;

    #@60
    .end local p1    # "evt":Ljava/util/EventObject;
    invoke-virtual {v0, p1, v1}, Lcom/android/server/sip/SipHelper;->sendResponse(Ljavax/sip/RequestEvent;I)V

    #@63
    .line 841
    return v2

    #@64
    .line 842
    .restart local p1    # "evt":Ljava/util/EventObject;
    :cond_4
    instance-of v0, p1, Ljavax/sip/DialogTerminatedEvent;

    #@66
    if-eqz v0, :cond_5

    #@68
    .line 843
    check-cast p1, Ljavax/sip/DialogTerminatedEvent;

    #@6a
    .end local p1    # "evt":Ljava/util/EventObject;
    invoke-direct {p0, p1}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->processDialogTerminated(Ljavax/sip/DialogTerminatedEvent;)V

    #@6d
    .line 844
    return v2

    #@6e
    .line 846
    .restart local p1    # "evt":Ljava/util/EventObject;
    :cond_5
    const/4 v0, 0x0

    #@6f
    return v0
.end method

.method private processReferRequest(Ljavax/sip/RequestEvent;)Z
    .locals 11
    .param p1, "event"    # Ljavax/sip/RequestEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v9, 0x0

    #@1
    .line 1264
    :try_start_0
    invoke-virtual {p1}, Ljavax/sip/RequestEvent;->getRequest()Ljavax/sip/message/Request;

    #@4
    move-result-object v7

    #@5
    .line 1265
    const-string/jumbo v8, "Refer-To"

    #@8
    .line 1264
    invoke-interface {v7, v8}, Ljavax/sip/message/Request;->getHeader(Ljava/lang/String;)Ljavax/sip/header/Header;

    #@b
    move-result-object v3

    #@c
    check-cast v3, Ljavax/sip/header/ReferToHeader;

    #@e
    .line 1266
    .local v3, "referto":Ljavax/sip/header/ReferToHeader;
    invoke-interface {v3}, Ljavax/sip/header/ReferToHeader;->getAddress()Ljavax/sip/address/Address;

    #@11
    move-result-object v0

    #@12
    .line 1267
    .local v0, "address":Ljavax/sip/address/Address;
    invoke-interface {v0}, Ljavax/sip/address/Address;->getURI()Ljavax/sip/address/URI;

    #@15
    move-result-object v5

    #@16
    check-cast v5, Ljavax/sip/address/SipURI;

    #@18
    .line 1268
    .local v5, "uri":Ljavax/sip/address/SipURI;
    const-string/jumbo v7, "Replaces"

    #@1b
    invoke-interface {v5, v7}, Ljavax/sip/address/SipURI;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    #@1e
    move-result-object v4

    #@1f
    .line 1269
    .local v4, "replacesHeader":Ljava/lang/String;
    invoke-interface {v5}, Ljavax/sip/address/SipURI;->getUser()Ljava/lang/String;

    #@22
    move-result-object v6

    #@23
    .line 1270
    .local v6, "username":Ljava/lang/String;
    if-nez v6, :cond_0

    #@25
    .line 1271
    iget-object v7, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    #@27
    invoke-static {v7}, Lcom/android/server/sip/SipSessionGroup;->-get8(Lcom/android/server/sip/SipSessionGroup;)Lcom/android/server/sip/SipHelper;

    #@2a
    move-result-object v7

    #@2b
    const/16 v8, 0x190

    #@2d
    invoke-virtual {v7, p1, v8}, Lcom/android/server/sip/SipHelper;->sendResponse(Ljavax/sip/RequestEvent;I)V

    #@30
    .line 1272
    return v9

    #@31
    .line 1275
    :cond_0
    iget-object v7, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    #@33
    invoke-static {v7}, Lcom/android/server/sip/SipSessionGroup;->-get8(Lcom/android/server/sip/SipSessionGroup;)Lcom/android/server/sip/SipHelper;

    #@36
    move-result-object v7

    #@37
    const/16 v8, 0xca

    #@39
    invoke-virtual {v7, p1, v8}, Lcom/android/server/sip/SipHelper;->sendResponse(Ljavax/sip/RequestEvent;I)V

    #@3c
    .line 1276
    iget-object v7, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    #@3e
    .line 1277
    iget-object v8, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mProxy:Lcom/android/server/sip/SipSessionListenerProxy;

    #@40
    invoke-virtual {v8}, Lcom/android/server/sip/SipSessionListenerProxy;->getListener()Landroid/net/sip/ISipSessionListener;

    #@43
    move-result-object v8

    #@44
    .line 1278
    iget-object v9, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    #@46
    invoke-static {v9}, Lcom/android/server/sip/SipSessionGroup;->-get8(Lcom/android/server/sip/SipSessionGroup;)Lcom/android/server/sip/SipHelper;

    #@49
    move-result-object v9

    #@4a
    invoke-virtual {v9, p1}, Lcom/android/server/sip/SipHelper;->getServerTransaction(Ljavax/sip/RequestEvent;)Ljavax/sip/ServerTransaction;

    #@4d
    move-result-object v9

    #@4e
    .line 1279
    const/4 v10, 0x0

    #@4f
    .line 1276
    invoke-static {v7, p1, v8, v9, v10}, Lcom/android/server/sip/SipSessionGroup;->-wrap5(Lcom/android/server/sip/SipSessionGroup;Ljavax/sip/RequestEvent;Landroid/net/sip/ISipSessionListener;Ljavax/sip/ServerTransaction;I)Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    #@52
    move-result-object v2

    #@53
    .line 1280
    .local v2, "newSession":Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;
    iput-object p0, v2, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mReferSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    #@55
    .line 1281
    invoke-virtual {p1}, Ljavax/sip/RequestEvent;->getRequest()Ljavax/sip/message/Request;

    #@58
    move-result-object v7

    #@59
    .line 1282
    const-string/jumbo v8, "Referred-By"

    #@5c
    .line 1281
    invoke-interface {v7, v8}, Ljavax/sip/message/Request;->getHeader(Ljava/lang/String;)Ljavax/sip/header/Header;

    #@5f
    move-result-object v7

    #@60
    check-cast v7, Lgov/nist/javax/sip/header/extensions/ReferredByHeader;

    #@62
    iput-object v7, v2, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mReferredBy:Lgov/nist/javax/sip/header/extensions/ReferredByHeader;

    #@64
    .line 1283
    iput-object v4, v2, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mReplaces:Ljava/lang/String;

    #@66
    .line 1284
    invoke-static {v3}, Lcom/android/server/sip/SipSessionGroup;->-wrap0(Ljavax/sip/header/HeaderAddress;)Landroid/net/sip/SipProfile;

    #@69
    move-result-object v7

    #@6a
    iput-object v7, v2, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mPeerProfile:Landroid/net/sip/SipProfile;

    #@6c
    .line 1285
    iget-object v7, v2, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mProxy:Lcom/android/server/sip/SipSessionListenerProxy;

    #@6e
    .line 1286
    const/4 v8, 0x0

    #@6f
    .line 1285
    invoke-virtual {v7, v2, v8}, Lcom/android/server/sip/SipSessionListenerProxy;->onCallTransferring(Landroid/net/sip/ISipSession;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    #@72
    .line 1287
    const/4 v7, 0x1

    #@73
    return v7

    #@74
    .line 1288
    .end local v0    # "address":Ljavax/sip/address/Address;
    .end local v2    # "newSession":Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;
    .end local v3    # "referto":Ljavax/sip/header/ReferToHeader;
    .end local v4    # "replacesHeader":Ljava/lang/String;
    .end local v5    # "uri":Ljavax/sip/address/SipURI;
    .end local v6    # "username":Ljava/lang/String;
    :catch_0
    move-exception v1

    #@75
    .line 1289
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    new-instance v7, Ljavax/sip/SipException;

    #@77
    const-string/jumbo v8, "createPeerProfile()"

    #@7a
    invoke-direct {v7, v8, v1}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@7d
    throw v7
.end method

.method private processTimeout(Ljavax/sip/TimeoutEvent;)V
    .locals 2
    .param p1, "event"    # Ljavax/sip/TimeoutEvent;

    #@0
    .prologue
    .line 904
    const-string/jumbo v0, "processing Timeout..."

    #@3
    invoke-direct {p0, v0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->log(Ljava/lang/String;)V

    #@6
    .line 905
    iget v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mState:I

    #@8
    packed-switch v0, :pswitch_data_0

    #@b
    .line 919
    :pswitch_0
    const-string/jumbo v0, "   do nothing"

    #@e
    invoke-direct {p0, v0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->log(Ljava/lang/String;)V

    #@11
    .line 903
    :goto_0
    return-void

    #@12
    .line 908
    :pswitch_1
    invoke-direct {p0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->reset()V

    #@15
    .line 909
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mProxy:Lcom/android/server/sip/SipSessionListenerProxy;

    #@17
    invoke-virtual {v0, p0}, Lcom/android/server/sip/SipSessionListenerProxy;->onRegistrationTimeout(Landroid/net/sip/ISipSession;)V

    #@1a
    goto :goto_0

    #@1b
    .line 915
    :pswitch_2
    invoke-virtual {p1}, Ljavax/sip/TimeoutEvent;->toString()Ljava/lang/String;

    #@1e
    move-result-object v0

    #@1f
    const/4 v1, -0x5

    #@20
    invoke-direct {p0, v1, v0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->onError(ILjava/lang/String;)V

    #@23
    goto :goto_0

    #@24
    .line 905
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private processTransactionTerminated(Ljavax/sip/TransactionTerminatedEvent;)V
    .locals 2
    .param p1, "event"    # Ljavax/sip/TransactionTerminatedEvent;

    #@0
    .prologue
    .line 891
    iget v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mState:I

    #@2
    sparse-switch v0, :sswitch_data_0

    #@5
    .line 897
    new-instance v0, Ljava/lang/StringBuilder;

    #@7
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@a
    const-string/jumbo v1, "Transaction terminated early: "

    #@d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v0

    #@11
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v0

    #@15
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@18
    move-result-object v0

    #@19
    invoke-direct {p0, v0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->log(Ljava/lang/String;)V

    #@1c
    .line 899
    const-string/jumbo v0, "transaction terminated"

    #@1f
    .line 898
    const/4 v1, -0x3

    #@20
    invoke-direct {p0, v1, v0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->onError(ILjava/lang/String;)V

    #@23
    .line 890
    :goto_0
    return-void

    #@24
    .line 894
    :sswitch_0
    const-string/jumbo v0, "Transaction terminated; do nothing"

    #@27
    invoke-direct {p0, v0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->log(Ljava/lang/String;)V

    #@2a
    goto :goto_0

    #@2b
    .line 891
    nop

    #@2c
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_0
    .end sparse-switch
.end method

.method private readyForCall(Ljava/util/EventObject;)Z
    .locals 10
    .param p1, "evt"    # Ljava/util/EventObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    const/4 v9, 0x1

    #@2
    .line 1065
    instance-of v0, p1, Lcom/android/server/sip/SipSessionGroup$MakeCallCommand;

    #@4
    if-eqz v0, :cond_1

    #@6
    .line 1066
    const/4 v0, 0x5

    #@7
    iput v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mState:I

    #@9
    move-object v7, p1

    #@a
    .line 1067
    check-cast v7, Lcom/android/server/sip/SipSessionGroup$MakeCallCommand;

    #@c
    .line 1068
    .local v7, "cmd":Lcom/android/server/sip/SipSessionGroup$MakeCallCommand;
    invoke-virtual {v7}, Lcom/android/server/sip/SipSessionGroup$MakeCallCommand;->getPeerProfile()Landroid/net/sip/SipProfile;

    #@f
    move-result-object v0

    #@10
    iput-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mPeerProfile:Landroid/net/sip/SipProfile;

    #@12
    .line 1069
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mReferSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    #@14
    if-eqz v0, :cond_0

    #@16
    .line 1070
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    #@18
    invoke-static {v0}, Lcom/android/server/sip/SipSessionGroup;->-get8(Lcom/android/server/sip/SipSessionGroup;)Lcom/android/server/sip/SipHelper;

    #@1b
    move-result-object v0

    #@1c
    iget-object v1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mReferSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    #@1e
    iget-object v1, v1, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mDialog:Ljavax/sip/Dialog;

    #@20
    .line 1071
    const/16 v2, 0x64

    #@22
    invoke-direct {p0, v2}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->getResponseString(I)Ljava/lang/String;

    #@25
    move-result-object v2

    #@26
    .line 1070
    invoke-virtual {v0, v1, v2}, Lcom/android/server/sip/SipHelper;->sendReferNotify(Ljavax/sip/Dialog;Ljava/lang/String;)V

    #@29
    .line 1073
    :cond_0
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    #@2b
    invoke-static {v0}, Lcom/android/server/sip/SipSessionGroup;->-get8(Lcom/android/server/sip/SipSessionGroup;)Lcom/android/server/sip/SipHelper;

    #@2e
    move-result-object v0

    #@2f
    .line 1074
    iget-object v1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    #@31
    invoke-static {v1}, Lcom/android/server/sip/SipSessionGroup;->-get5(Lcom/android/server/sip/SipSessionGroup;)Landroid/net/sip/SipProfile;

    #@34
    move-result-object v1

    #@35
    iget-object v2, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mPeerProfile:Landroid/net/sip/SipProfile;

    #@37
    invoke-virtual {v7}, Lcom/android/server/sip/SipSessionGroup$MakeCallCommand;->getSessionDescription()Ljava/lang/String;

    #@3a
    move-result-object v3

    #@3b
    .line 1075
    invoke-virtual {p0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->generateTag()Ljava/lang/String;

    #@3e
    move-result-object v4

    #@3f
    iget-object v5, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mReferredBy:Lgov/nist/javax/sip/header/extensions/ReferredByHeader;

    #@41
    iget-object v6, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mReplaces:Ljava/lang/String;

    #@43
    .line 1073
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/sip/SipHelper;->sendInvite(Landroid/net/sip/SipProfile;Landroid/net/sip/SipProfile;Ljava/lang/String;Ljava/lang/String;Lgov/nist/javax/sip/header/extensions/ReferredByHeader;Ljava/lang/String;)Ljavax/sip/ClientTransaction;

    #@46
    move-result-object v0

    #@47
    iput-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mClientTransaction:Ljavax/sip/ClientTransaction;

    #@49
    .line 1076
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mClientTransaction:Ljavax/sip/ClientTransaction;

    #@4b
    invoke-interface {v0}, Ljavax/sip/ClientTransaction;->getDialog()Ljavax/sip/Dialog;

    #@4e
    move-result-object v0

    #@4f
    iput-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mDialog:Ljavax/sip/Dialog;

    #@51
    .line 1077
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    #@53
    invoke-static {v0, p0}, Lcom/android/server/sip/SipSessionGroup;->-wrap9(Lcom/android/server/sip/SipSessionGroup;Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;)V

    #@56
    .line 1078
    invoke-virtual {v7}, Lcom/android/server/sip/SipSessionGroup$MakeCallCommand;->getTimeout()I

    #@59
    move-result v0

    #@5a
    invoke-direct {p0, v0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->startSessionTimer(I)V

    #@5d
    .line 1079
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mProxy:Lcom/android/server/sip/SipSessionListenerProxy;

    #@5f
    invoke-virtual {v0, p0}, Lcom/android/server/sip/SipSessionListenerProxy;->onCalling(Landroid/net/sip/ISipSession;)V

    #@62
    .line 1080
    return v9

    #@63
    .line 1081
    .end local v7    # "cmd":Lcom/android/server/sip/SipSessionGroup$MakeCallCommand;
    :cond_1
    instance-of v0, p1, Lcom/android/server/sip/SipSessionGroup$RegisterCommand;

    #@65
    if-eqz v0, :cond_2

    #@67
    .line 1082
    iput v9, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mState:I

    #@69
    .line 1083
    check-cast p1, Lcom/android/server/sip/SipSessionGroup$RegisterCommand;

    #@6b
    .end local p1    # "evt":Ljava/util/EventObject;
    invoke-virtual {p1}, Lcom/android/server/sip/SipSessionGroup$RegisterCommand;->getDuration()I

    #@6e
    move-result v8

    #@6f
    .line 1084
    .local v8, "duration":I
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    #@71
    invoke-static {v0}, Lcom/android/server/sip/SipSessionGroup;->-get8(Lcom/android/server/sip/SipSessionGroup;)Lcom/android/server/sip/SipHelper;

    #@74
    move-result-object v0

    #@75
    iget-object v1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    #@77
    invoke-static {v1}, Lcom/android/server/sip/SipSessionGroup;->-get5(Lcom/android/server/sip/SipSessionGroup;)Landroid/net/sip/SipProfile;

    #@7a
    move-result-object v1

    #@7b
    .line 1085
    invoke-virtual {p0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->generateTag()Ljava/lang/String;

    #@7e
    move-result-object v2

    #@7f
    .line 1084
    invoke-virtual {v0, v1, v2, v8}, Lcom/android/server/sip/SipHelper;->sendRegister(Landroid/net/sip/SipProfile;Ljava/lang/String;I)Ljavax/sip/ClientTransaction;

    #@82
    move-result-object v0

    #@83
    iput-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mClientTransaction:Ljavax/sip/ClientTransaction;

    #@85
    .line 1086
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mClientTransaction:Ljavax/sip/ClientTransaction;

    #@87
    invoke-interface {v0}, Ljavax/sip/ClientTransaction;->getDialog()Ljavax/sip/Dialog;

    #@8a
    move-result-object v0

    #@8b
    iput-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mDialog:Ljavax/sip/Dialog;

    #@8d
    .line 1087
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    #@8f
    invoke-static {v0, p0}, Lcom/android/server/sip/SipSessionGroup;->-wrap9(Lcom/android/server/sip/SipSessionGroup;Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;)V

    #@92
    .line 1088
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mProxy:Lcom/android/server/sip/SipSessionListenerProxy;

    #@94
    invoke-virtual {v0, p0}, Lcom/android/server/sip/SipSessionListenerProxy;->onRegistering(Landroid/net/sip/ISipSession;)V

    #@97
    .line 1089
    return v9

    #@98
    .line 1090
    .end local v8    # "duration":I
    .restart local p1    # "evt":Ljava/util/EventObject;
    :cond_2
    invoke-static {}, Lcom/android/server/sip/SipSessionGroup;->-get0()Ljava/util/EventObject;

    #@9b
    move-result-object v0

    #@9c
    if-ne v0, p1, :cond_3

    #@9e
    .line 1091
    const/4 v0, 0x2

    #@9f
    iput v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mState:I

    #@a1
    .line 1092
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    #@a3
    invoke-static {v0}, Lcom/android/server/sip/SipSessionGroup;->-get8(Lcom/android/server/sip/SipSessionGroup;)Lcom/android/server/sip/SipHelper;

    #@a6
    move-result-object v0

    #@a7
    iget-object v1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    #@a9
    invoke-static {v1}, Lcom/android/server/sip/SipSessionGroup;->-get5(Lcom/android/server/sip/SipSessionGroup;)Landroid/net/sip/SipProfile;

    #@ac
    move-result-object v1

    #@ad
    .line 1093
    invoke-virtual {p0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->generateTag()Ljava/lang/String;

    #@b0
    move-result-object v2

    #@b1
    .line 1092
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/sip/SipHelper;->sendRegister(Landroid/net/sip/SipProfile;Ljava/lang/String;I)Ljavax/sip/ClientTransaction;

    #@b4
    move-result-object v0

    #@b5
    iput-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mClientTransaction:Ljavax/sip/ClientTransaction;

    #@b7
    .line 1094
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mClientTransaction:Ljavax/sip/ClientTransaction;

    #@b9
    invoke-interface {v0}, Ljavax/sip/ClientTransaction;->getDialog()Ljavax/sip/Dialog;

    #@bc
    move-result-object v0

    #@bd
    iput-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mDialog:Ljavax/sip/Dialog;

    #@bf
    .line 1095
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    #@c1
    invoke-static {v0, p0}, Lcom/android/server/sip/SipSessionGroup;->-wrap9(Lcom/android/server/sip/SipSessionGroup;Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;)V

    #@c4
    .line 1096
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mProxy:Lcom/android/server/sip/SipSessionListenerProxy;

    #@c6
    invoke-virtual {v0, p0}, Lcom/android/server/sip/SipSessionListenerProxy;->onRegistering(Landroid/net/sip/ISipSession;)V

    #@c9
    .line 1097
    return v9

    #@ca
    .line 1099
    :cond_3
    return v3
.end method

.method private registeringToReady(Ljava/util/EventObject;)Z
    .locals 6
    .param p1, "evt"    # Ljava/util/EventObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    .line 949
    const-string/jumbo v4, "REGISTER"

    #@4
    invoke-static {v4, p1}, Lcom/android/server/sip/SipSessionGroup;->-wrap1(Ljava/lang/String;Ljava/util/EventObject;)Z

    #@7
    move-result v4

    #@8
    if-eqz v4, :cond_1

    #@a
    move-object v0, p1

    #@b
    .line 950
    check-cast v0, Ljavax/sip/ResponseEvent;

    #@d
    .line 951
    .local v0, "event":Ljavax/sip/ResponseEvent;
    invoke-virtual {v0}, Ljavax/sip/ResponseEvent;->getResponse()Ljavax/sip/message/Response;

    #@10
    move-result-object v1

    #@11
    .line 953
    .local v1, "response":Ljavax/sip/message/Response;
    invoke-interface {v1}, Ljavax/sip/message/Response;->getStatusCode()I

    #@14
    move-result v3

    #@15
    .line 954
    .local v3, "statusCode":I
    sparse-switch v3, :sswitch_data_0

    #@18
    .line 966
    const/16 v4, 0x1f4

    #@1a
    if-lt v3, v4, :cond_1

    #@1c
    .line 967
    invoke-direct {p0, v1}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->onRegistrationFailed(Ljavax/sip/message/Response;)V

    #@1f
    .line 968
    return v5

    #@20
    .line 956
    :sswitch_0
    iget v2, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mState:I

    #@22
    .line 957
    .local v2, "state":I
    if-ne v2, v5, :cond_0

    #@24
    .line 958
    check-cast p1, Ljavax/sip/ResponseEvent;

    #@26
    .end local p1    # "evt":Ljava/util/EventObject;
    invoke-virtual {p1}, Ljavax/sip/ResponseEvent;->getResponse()Ljavax/sip/message/Response;

    #@29
    move-result-object v4

    #@2a
    invoke-direct {p0, v4}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->getExpiryTime(Ljavax/sip/message/Response;)I

    #@2d
    move-result v4

    #@2e
    .line 957
    :goto_0
    invoke-direct {p0, v4}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->onRegistrationDone(I)V

    #@31
    .line 960
    return v5

    #@32
    .line 959
    .restart local p1    # "evt":Ljava/util/EventObject;
    :cond_0
    const/4 v4, -0x1

    #@33
    goto :goto_0

    #@34
    .line 963
    .end local v2    # "state":I
    :sswitch_1
    invoke-direct {p0, v0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->handleAuthentication(Ljavax/sip/ResponseEvent;)Z

    #@37
    .line 964
    return v5

    #@38
    .line 972
    .end local v0    # "event":Ljavax/sip/ResponseEvent;
    .end local v1    # "response":Ljavax/sip/message/Response;
    .end local v3    # "statusCode":I
    :cond_1
    const/4 v4, 0x0

    #@39
    return v4

    #@3a
    .line 954
    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_0
        0x191 -> :sswitch_1
        0x197 -> :sswitch_1
    .end sparse-switch
.end method

.method private reset()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    const/4 v2, 0x0

    #@2
    .line 601
    iput-boolean v3, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mInCall:Z

    #@4
    .line 602
    iget-object v1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    #@6
    invoke-static {v1, p0}, Lcom/android/server/sip/SipSessionGroup;->-wrap12(Lcom/android/server/sip/SipSessionGroup;Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;)V

    #@9
    .line 603
    iput-object v2, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mPeerProfile:Landroid/net/sip/SipProfile;

    #@b
    .line 604
    iput v3, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mState:I

    #@d
    .line 605
    iput-object v2, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mInviteReceived:Ljavax/sip/RequestEvent;

    #@f
    .line 606
    iput-object v2, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mPeerSessionDescription:Ljava/lang/String;

    #@11
    .line 607
    iput v3, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mAuthenticationRetryCount:I

    #@13
    .line 608
    iput-object v2, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mReferSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    #@15
    .line 609
    iput-object v2, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mReferredBy:Lgov/nist/javax/sip/header/extensions/ReferredByHeader;

    #@17
    .line 610
    iput-object v2, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mReplaces:Ljava/lang/String;

    #@19
    .line 612
    iget-object v1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mDialog:Ljavax/sip/Dialog;

    #@1b
    if-eqz v1, :cond_0

    #@1d
    iget-object v1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mDialog:Ljavax/sip/Dialog;

    #@1f
    invoke-interface {v1}, Ljavax/sip/Dialog;->delete()V

    #@22
    .line 613
    :cond_0
    iput-object v2, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mDialog:Ljavax/sip/Dialog;

    #@24
    .line 616
    :try_start_0
    iget-object v1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mServerTransaction:Ljavax/sip/ServerTransaction;

    #@26
    if-eqz v1, :cond_1

    #@28
    iget-object v1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mServerTransaction:Ljavax/sip/ServerTransaction;

    #@2a
    invoke-interface {v1}, Ljavax/sip/ServerTransaction;->terminate()V
    :try_end_0
    .catch Ljavax/sip/ObjectInUseException; {:try_start_0 .. :try_end_0} :catch_1

    #@2d
    .line 620
    :cond_1
    :goto_0
    iput-object v2, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mServerTransaction:Ljavax/sip/ServerTransaction;

    #@2f
    .line 623
    :try_start_1
    iget-object v1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mClientTransaction:Ljavax/sip/ClientTransaction;

    #@31
    if-eqz v1, :cond_2

    #@33
    iget-object v1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mClientTransaction:Ljavax/sip/ClientTransaction;

    #@35
    invoke-interface {v1}, Ljavax/sip/ClientTransaction;->terminate()V
    :try_end_1
    .catch Ljavax/sip/ObjectInUseException; {:try_start_1 .. :try_end_1} :catch_0

    #@38
    .line 627
    :cond_2
    :goto_1
    iput-object v2, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mClientTransaction:Ljavax/sip/ClientTransaction;

    #@3a
    .line 629
    invoke-direct {p0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->cancelSessionTimer()V

    #@3d
    .line 631
    iget-object v1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mSipSessionImpl:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    #@3f
    if-eqz v1, :cond_3

    #@41
    .line 632
    iget-object v1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mSipSessionImpl:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    #@43
    invoke-virtual {v1}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->stopKeepAliveProcess()V

    #@46
    .line 633
    iput-object v2, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mSipSessionImpl:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    #@48
    .line 600
    :cond_3
    return-void

    #@49
    .line 624
    :catch_0
    move-exception v0

    #@4a
    .local v0, "e":Ljavax/sip/ObjectInUseException;
    goto :goto_1

    #@4b
    .line 617
    .end local v0    # "e":Ljavax/sip/ObjectInUseException;
    :catch_1
    move-exception v0

    #@4c
    .restart local v0    # "e":Ljavax/sip/ObjectInUseException;
    goto :goto_0
.end method

.method private startSessionTimer(I)V
    .locals 1
    .param p1, "timeout"    # I

    #@0
    .prologue
    .line 1354
    if-lez p1, :cond_0

    #@2
    .line 1355
    new-instance v0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SessionTimer;

    #@4
    invoke-direct {v0, p0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SessionTimer;-><init>(Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;)V

    #@7
    iput-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mSessionTimer:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SessionTimer;

    #@9
    .line 1356
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mSessionTimer:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SessionTimer;

    #@b
    invoke-virtual {v0, p1}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SessionTimer;->start(I)V

    #@e
    .line 1353
    :cond_0
    return-void
.end method

.method private toString(Ljavax/sip/Transaction;)Ljava/lang/String;
    .locals 8
    .param p1, "transaction"    # Ljavax/sip/Transaction;

    #@0
    .prologue
    .line 880
    if-nez p1, :cond_0

    #@2
    const-string/jumbo v3, "null"

    #@5
    return-object v3

    #@6
    .line 881
    :cond_0
    invoke-interface {p1}, Ljavax/sip/Transaction;->getRequest()Ljavax/sip/message/Request;

    #@9
    move-result-object v2

    #@a
    .line 882
    .local v2, "request":Ljavax/sip/message/Request;
    invoke-interface {p1}, Ljavax/sip/Transaction;->getDialog()Ljavax/sip/Dialog;

    #@d
    move-result-object v1

    #@e
    .line 883
    .local v1, "dialog":Ljavax/sip/Dialog;
    const-string/jumbo v3, "CSeq"

    #@11
    invoke-interface {v2, v3}, Ljavax/sip/message/Request;->getHeader(Ljava/lang/String;)Ljavax/sip/header/Header;

    #@14
    move-result-object v0

    #@15
    check-cast v0, Ljavax/sip/header/CSeqHeader;

    #@17
    .line 884
    .local v0, "cseq":Ljavax/sip/header/CSeqHeader;
    const-string/jumbo v4, "req=%s,%s,s=%s,ds=%s,"

    #@1a
    const/4 v3, 0x4

    #@1b
    new-array v5, v3, [Ljava/lang/Object;

    #@1d
    invoke-interface {v2}, Ljavax/sip/message/Request;->getMethod()Ljava/lang/String;

    #@20
    move-result-object v3

    #@21
    const/4 v6, 0x0

    #@22
    aput-object v3, v5, v6

    #@24
    .line 885
    invoke-interface {v0}, Ljavax/sip/header/CSeqHeader;->getSeqNumber()J

    #@27
    move-result-wide v6

    #@28
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@2b
    move-result-object v3

    #@2c
    const/4 v6, 0x1

    #@2d
    aput-object v3, v5, v6

    #@2f
    invoke-interface {p1}, Ljavax/sip/Transaction;->getState()Ljavax/sip/TransactionState;

    #@32
    move-result-object v3

    #@33
    const/4 v6, 0x2

    #@34
    aput-object v3, v5, v6

    #@36
    .line 886
    if-nez v1, :cond_1

    #@38
    const-string/jumbo v3, "-"

    #@3b
    :goto_0
    const/4 v6, 0x3

    #@3c
    aput-object v3, v5, v6

    #@3e
    .line 884
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@41
    move-result-object v3

    #@42
    return-object v3

    #@43
    .line 886
    :cond_1
    invoke-interface {v1}, Ljavax/sip/Dialog;->getState()Ljavax/sip/DialogState;

    #@46
    move-result-object v3

    #@47
    goto :goto_0
.end method


# virtual methods
.method public answerCall(Ljava/lang/String;I)V
    .locals 4
    .param p1, "sessionDescription"    # Ljava/lang/String;
    .param p2, "timeout"    # I

    #@0
    .prologue
    .line 706
    iget-object v1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    #@2
    monitor-enter v1

    #@3
    .line 707
    :try_start_0
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mPeerProfile:Landroid/net/sip/SipProfile;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    if-nez v0, :cond_0

    #@7
    monitor-exit v1

    #@8
    return-void

    #@9
    .line 708
    :cond_0
    :try_start_1
    new-instance v0, Lcom/android/server/sip/SipSessionGroup$MakeCallCommand;

    #@b
    iget-object v2, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    #@d
    iget-object v3, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mPeerProfile:Landroid/net/sip/SipProfile;

    #@f
    invoke-direct {v0, v2, v3, p1, p2}, Lcom/android/server/sip/SipSessionGroup$MakeCallCommand;-><init>(Lcom/android/server/sip/SipSessionGroup;Landroid/net/sip/SipProfile;Ljava/lang/String;I)V

    #@12
    invoke-direct {p0, v0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->doCommandAsync(Ljava/util/EventObject;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@15
    monitor-exit v1

    #@16
    .line 705
    return-void

    #@17
    .line 706
    :catchall_0
    move-exception v0

    #@18
    monitor-exit v1

    #@19
    throw v0
.end method

.method public changeCall(Ljava/lang/String;I)V
    .locals 4
    .param p1, "sessionDescription"    # Ljava/lang/String;
    .param p2, "timeout"    # I

    #@0
    .prologue
    .line 720
    iget-object v1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    #@2
    monitor-enter v1

    #@3
    .line 721
    :try_start_0
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mPeerProfile:Landroid/net/sip/SipProfile;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    if-nez v0, :cond_0

    #@7
    monitor-exit v1

    #@8
    return-void

    #@9
    .line 722
    :cond_0
    :try_start_1
    new-instance v0, Lcom/android/server/sip/SipSessionGroup$MakeCallCommand;

    #@b
    iget-object v2, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    #@d
    iget-object v3, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mPeerProfile:Landroid/net/sip/SipProfile;

    #@f
    invoke-direct {v0, v2, v3, p1, p2}, Lcom/android/server/sip/SipSessionGroup$MakeCallCommand;-><init>(Lcom/android/server/sip/SipSessionGroup;Landroid/net/sip/SipProfile;Ljava/lang/String;I)V

    #@12
    invoke-direct {p0, v0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->doCommandAsync(Ljava/util/EventObject;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@15
    monitor-exit v1

    #@16
    .line 719
    return-void

    #@17
    .line 720
    :catchall_0
    move-exception v0

    #@18
    monitor-exit v1

    #@19
    throw v0
.end method

.method duplicate()Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;
    .locals 3

    #@0
    .prologue
    .line 597
    new-instance v0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    #@2
    iget-object v1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    #@4
    iget-object v2, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mProxy:Lcom/android/server/sip/SipSessionListenerProxy;

    #@6
    invoke-virtual {v2}, Lcom/android/server/sip/SipSessionListenerProxy;->getListener()Landroid/net/sip/ISipSessionListener;

    #@9
    move-result-object v2

    #@a
    invoke-direct {v0, v1, v2}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;-><init>(Lcom/android/server/sip/SipSessionGroup;Landroid/net/sip/ISipSessionListener;)V

    #@d
    return-object v0
.end method

.method public endCall()V
    .locals 1

    #@0
    .prologue
    .line 715
    invoke-static {}, Lcom/android/server/sip/SipSessionGroup;->-get1()Ljava/util/EventObject;

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0, v0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->doCommandAsync(Ljava/util/EventObject;)V

    #@7
    .line 714
    return-void
.end method

.method protected generateTag()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 748
    invoke-static {}, Ljava/lang/Math;->random()D

    #@3
    move-result-wide v0

    #@4
    const-wide/high16 v2, 0x41f0000000000000L    # 4.294967296E9

    #@6
    mul-double/2addr v0, v2

    #@7
    double-to-long v0, v0

    #@8
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method

.method public getCallId()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 659
    invoke-direct {p0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->getTransaction()Ljavax/sip/Transaction;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0}, Lcom/android/server/sip/SipHelper;->getCallId(Ljavax/sip/Transaction;)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public getLocalIp()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 644
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    #@2
    invoke-static {v0}, Lcom/android/server/sip/SipSessionGroup;->-get4(Lcom/android/server/sip/SipSessionGroup;)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getLocalProfile()Landroid/net/sip/SipProfile;
    .locals 1

    #@0
    .prologue
    .line 649
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    #@2
    invoke-static {v0}, Lcom/android/server/sip/SipSessionGroup;->-get5(Lcom/android/server/sip/SipSessionGroup;)Landroid/net/sip/SipProfile;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getPeerProfile()Landroid/net/sip/SipProfile;
    .locals 1

    #@0
    .prologue
    .line 654
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mPeerProfile:Landroid/net/sip/SipProfile;

    #@2
    return-object v0
.end method

.method public getState()I
    .locals 1

    #@0
    .prologue
    .line 670
    iget v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mState:I

    #@2
    return v0
.end method

.method public isInCall()Z
    .locals 1

    #@0
    .prologue
    .line 639
    iget-boolean v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mInCall:Z

    #@2
    return v0
.end method

.method public makeCall(Landroid/net/sip/SipProfile;Ljava/lang/String;I)V
    .locals 2
    .param p1, "peerProfile"    # Landroid/net/sip/SipProfile;
    .param p2, "sessionDescription"    # Ljava/lang/String;
    .param p3, "timeout"    # I

    #@0
    .prologue
    .line 700
    new-instance v0, Lcom/android/server/sip/SipSessionGroup$MakeCallCommand;

    #@2
    iget-object v1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    #@4
    invoke-direct {v0, v1, p1, p2, p3}, Lcom/android/server/sip/SipSessionGroup$MakeCallCommand;-><init>(Lcom/android/server/sip/SipSessionGroup;Landroid/net/sip/SipProfile;Ljava/lang/String;I)V

    #@7
    invoke-direct {p0, v0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->doCommandAsync(Ljava/util/EventObject;)V

    #@a
    .line 699
    return-void
.end method

.method public process(Ljava/util/EventObject;)Z
    .locals 7
    .param p1, "evt"    # Ljava/util/EventObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    .line 763
    invoke-static {p0, p1}, Lcom/android/server/sip/SipSessionGroup;->-wrap2(Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;Ljava/util/EventObject;)Z

    #@4
    move-result v3

    #@5
    if-eqz v3, :cond_0

    #@7
    new-instance v3, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    const-string/jumbo v5, " ~~~~~   "

    #@f
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v3

    #@13
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v3

    #@17
    const-string/jumbo v5, ": "

    #@1a
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v3

    #@1e
    .line 764
    iget v5, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mState:I

    #@20
    invoke-static {v5}, Landroid/net/sip/SipSession$State;->toString(I)Ljava/lang/String;

    #@23
    move-result-object v5

    #@24
    .line 763
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v3

    #@28
    .line 764
    const-string/jumbo v5, ": processing "

    #@2b
    .line 763
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v3

    #@2f
    .line 765
    invoke-static {p1}, Lcom/android/server/sip/SipSessionGroup;->-wrap7(Ljava/util/EventObject;)Ljava/lang/String;

    #@32
    move-result-object v5

    #@33
    .line 763
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v3

    #@37
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3a
    move-result-object v3

    #@3b
    invoke-direct {p0, v3}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->log(Ljava/lang/String;)V

    #@3e
    .line 766
    :cond_0
    iget-object v5, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    #@40
    monitor-enter v5

    #@41
    .line 767
    :try_start_0
    iget-object v3, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    #@43
    invoke-virtual {v3}, Lcom/android/server/sip/SipSessionGroup;->isClosed()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@46
    move-result v3

    #@47
    if-eqz v3, :cond_1

    #@49
    const/4 v3, 0x0

    #@4a
    monitor-exit v5

    #@4b
    return v3

    #@4c
    .line 769
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mSipKeepAlive:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SipKeepAlive;

    #@4e
    if-eqz v3, :cond_2

    #@50
    .line 771
    iget-object v3, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mSipKeepAlive:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SipKeepAlive;

    #@52
    invoke-virtual {v3, p1}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SipKeepAlive;->process(Ljava/util/EventObject;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@55
    move-result v3

    #@56
    if-eqz v3, :cond_2

    #@58
    monitor-exit v5

    #@59
    return v4

    #@5a
    .line 774
    :cond_2
    const/4 v1, 0x0

    #@5b
    .line 775
    .local v1, "dialog":Ljavax/sip/Dialog;
    :try_start_2
    instance-of v3, p1, Ljavax/sip/RequestEvent;

    #@5d
    if-eqz v3, :cond_5

    #@5f
    .line 776
    move-object v0, p1

    #@60
    check-cast v0, Ljavax/sip/RequestEvent;

    #@62
    move-object v3, v0

    #@63
    invoke-virtual {v3}, Ljavax/sip/RequestEvent;->getDialog()Ljavax/sip/Dialog;

    #@66
    move-result-object v1

    #@67
    .line 781
    .end local v1    # "dialog":Ljavax/sip/Dialog;
    :cond_3
    :goto_0
    if-eqz v1, :cond_4

    #@69
    iput-object v1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mDialog:Ljavax/sip/Dialog;

    #@6b
    .line 785
    :cond_4
    iget v3, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mState:I

    #@6d
    packed-switch v3, :pswitch_data_0

    #@70
    .line 813
    :pswitch_0
    const/4 v2, 0x0

    #@71
    .line 815
    :goto_1
    if-nez v2, :cond_6

    #@73
    invoke-direct {p0, p1}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->processExceptions(Ljava/util/EventObject;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@76
    move-result v3

    #@77
    :goto_2
    monitor-exit v5

    #@78
    return v3

    #@79
    .line 777
    .restart local v1    # "dialog":Ljavax/sip/Dialog;
    :cond_5
    :try_start_3
    instance-of v3, p1, Ljavax/sip/ResponseEvent;

    #@7b
    if-eqz v3, :cond_3

    #@7d
    .line 778
    move-object v0, p1

    #@7e
    check-cast v0, Ljavax/sip/ResponseEvent;

    #@80
    move-object v3, v0

    #@81
    invoke-virtual {v3}, Ljavax/sip/ResponseEvent;->getDialog()Ljavax/sip/Dialog;

    #@84
    move-result-object v1

    #@85
    .line 779
    .local v1, "dialog":Ljavax/sip/Dialog;
    iget-object v6, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    #@87
    move-object v0, p1

    #@88
    check-cast v0, Ljavax/sip/ResponseEvent;

    #@8a
    move-object v3, v0

    #@8b
    invoke-static {v6, v3}, Lcom/android/server/sip/SipSessionGroup;->-wrap10(Lcom/android/server/sip/SipSessionGroup;Ljavax/sip/ResponseEvent;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@8e
    goto :goto_0

    #@8f
    .line 766
    .end local v1    # "dialog":Ljavax/sip/Dialog;
    :catchall_0
    move-exception v3

    #@90
    monitor-exit v5

    #@91
    throw v3

    #@92
    .line 788
    :pswitch_1
    :try_start_4
    invoke-direct {p0, p1}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->registeringToReady(Ljava/util/EventObject;)Z

    #@95
    move-result v2

    #@96
    .local v2, "processed":Z
    goto :goto_1

    #@97
    .line 791
    .end local v2    # "processed":Z
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->readyForCall(Ljava/util/EventObject;)Z

    #@9a
    move-result v2

    #@9b
    .restart local v2    # "processed":Z
    goto :goto_1

    #@9c
    .line 794
    .end local v2    # "processed":Z
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->incomingCall(Ljava/util/EventObject;)Z

    #@9f
    move-result v2

    #@a0
    .restart local v2    # "processed":Z
    goto :goto_1

    #@a1
    .line 797
    .end local v2    # "processed":Z
    :pswitch_4
    invoke-direct {p0, p1}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->incomingCallToInCall(Ljava/util/EventObject;)Z

    #@a4
    move-result v2

    #@a5
    .restart local v2    # "processed":Z
    goto :goto_1

    #@a6
    .line 801
    .end local v2    # "processed":Z
    :pswitch_5
    invoke-direct {p0, p1}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->outgoingCall(Ljava/util/EventObject;)Z

    #@a9
    move-result v2

    #@aa
    .restart local v2    # "processed":Z
    goto :goto_1

    #@ab
    .line 804
    .end local v2    # "processed":Z
    :pswitch_6
    invoke-direct {p0, p1}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->outgoingCallToReady(Ljava/util/EventObject;)Z

    #@ae
    move-result v2

    #@af
    .restart local v2    # "processed":Z
    goto :goto_1

    #@b0
    .line 807
    .end local v2    # "processed":Z
    :pswitch_7
    invoke-direct {p0, p1}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->inCall(Ljava/util/EventObject;)Z

    #@b3
    move-result v2

    #@b4
    .restart local v2    # "processed":Z
    goto :goto_1

    #@b5
    .line 810
    .end local v2    # "processed":Z
    :pswitch_8
    invoke-direct {p0, p1}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->endingCall(Ljava/util/EventObject;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@b8
    move-result v2

    #@b9
    .restart local v2    # "processed":Z
    goto :goto_1

    #@ba
    .end local v2    # "processed":Z
    :cond_6
    move v3, v4

    #@bb
    .line 815
    goto :goto_2

    #@bc
    .line 785
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_8
    .end packed-switch
.end method

.method public register(I)V
    .locals 2
    .param p1, "duration"    # I

    #@0
    .prologue
    .line 729
    new-instance v0, Lcom/android/server/sip/SipSessionGroup$RegisterCommand;

    #@2
    iget-object v1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    #@4
    invoke-direct {v0, v1, p1}, Lcom/android/server/sip/SipSessionGroup$RegisterCommand;-><init>(Lcom/android/server/sip/SipSessionGroup;I)V

    #@7
    invoke-direct {p0, v0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->doCommandAsync(Ljava/util/EventObject;)V

    #@a
    .line 728
    return-void
.end method

.method public setListener(Landroid/net/sip/ISipSessionListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/net/sip/ISipSessionListener;

    #@0
    .prologue
    .line 675
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mProxy:Lcom/android/server/sip/SipSessionListenerProxy;

    #@2
    instance-of v1, p1, Lcom/android/server/sip/SipSessionListenerProxy;

    #@4
    if-eqz v1, :cond_0

    #@6
    .line 676
    check-cast p1, Lcom/android/server/sip/SipSessionListenerProxy;

    #@8
    .end local p1    # "listener":Landroid/net/sip/ISipSessionListener;
    invoke-virtual {p1}, Lcom/android/server/sip/SipSessionListenerProxy;->getListener()Landroid/net/sip/ISipSessionListener;

    #@b
    move-result-object p1

    #@c
    .line 675
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/server/sip/SipSessionListenerProxy;->setListener(Landroid/net/sip/ISipSessionListener;)V

    #@f
    .line 674
    return-void
.end method

.method public startKeepAliveProcess(ILandroid/net/sip/SipProfile;Lcom/android/server/sip/SipSessionGroup$KeepAliveProcessCallback;)V
    .locals 3
    .param p1, "interval"    # I
    .param p2, "peerProfile"    # Landroid/net/sip/SipProfile;
    .param p3, "callback"    # Lcom/android/server/sip/SipSessionGroup$KeepAliveProcessCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    #@0
    .prologue
    .line 1504
    iget-object v1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    #@2
    monitor-enter v1

    #@3
    .line 1505
    :try_start_0
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mSipKeepAlive:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SipKeepAlive;

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 1506
    new-instance v0, Ljavax/sip/SipException;

    #@9
    const-string/jumbo v2, "Cannot create more than one keepalive process in a SipSession"

    #@c
    invoke-direct {v0, v2}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    #@f
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    .line 1504
    :catchall_0
    move-exception v0

    #@11
    monitor-exit v1

    #@12
    throw v0

    #@13
    .line 1509
    :cond_0
    :try_start_1
    iput-object p2, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mPeerProfile:Landroid/net/sip/SipProfile;

    #@15
    .line 1510
    new-instance v0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SipKeepAlive;

    #@17
    invoke-direct {v0, p0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SipKeepAlive;-><init>(Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;)V

    #@1a
    iput-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mSipKeepAlive:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SipKeepAlive;

    #@1c
    .line 1511
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mProxy:Lcom/android/server/sip/SipSessionListenerProxy;

    #@1e
    iget-object v2, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mSipKeepAlive:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SipKeepAlive;

    #@20
    invoke-virtual {v0, v2}, Lcom/android/server/sip/SipSessionListenerProxy;->setListener(Landroid/net/sip/ISipSessionListener;)V

    #@23
    .line 1512
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mSipKeepAlive:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SipKeepAlive;

    #@25
    invoke-virtual {v0, p1, p3}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SipKeepAlive;->start(ILcom/android/server/sip/SipSessionGroup$KeepAliveProcessCallback;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@28
    monitor-exit v1

    #@29
    .line 1503
    return-void
.end method

.method public startKeepAliveProcess(ILcom/android/server/sip/SipSessionGroup$KeepAliveProcessCallback;)V
    .locals 2
    .param p1, "interval"    # I
    .param p2, "callback"    # Lcom/android/server/sip/SipSessionGroup$KeepAliveProcessCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    #@0
    .prologue
    .line 1495
    iget-object v1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    #@2
    monitor-enter v1

    #@3
    .line 1496
    :try_start_0
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    #@5
    invoke-static {v0}, Lcom/android/server/sip/SipSessionGroup;->-get5(Lcom/android/server/sip/SipSessionGroup;)Landroid/net/sip/SipProfile;

    #@8
    move-result-object v0

    #@9
    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->startKeepAliveProcess(ILandroid/net/sip/SipProfile;Lcom/android/server/sip/SipSessionGroup$KeepAliveProcessCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    monitor-exit v1

    #@d
    .line 1494
    return-void

    #@e
    .line 1495
    :catchall_0
    move-exception v0

    #@f
    monitor-exit v1

    #@10
    throw v0
.end method

.method public stopKeepAliveProcess()V
    .locals 2

    #@0
    .prologue
    .line 1517
    iget-object v1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    #@2
    monitor-enter v1

    #@3
    .line 1518
    :try_start_0
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mSipKeepAlive:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SipKeepAlive;

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 1519
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mSipKeepAlive:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SipKeepAlive;

    #@9
    invoke-virtual {v0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SipKeepAlive;->stop()V

    #@c
    .line 1520
    const/4 v0, 0x0

    #@d
    iput-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mSipKeepAlive:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SipKeepAlive;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@f
    :cond_0
    monitor-exit v1

    #@10
    .line 1516
    return-void

    #@11
    .line 1517
    :catchall_0
    move-exception v0

    #@12
    monitor-exit v1

    #@13
    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 754
    :try_start_0
    invoke-super {p0}, Landroid/net/sip/ISipSession$Stub;->toString()Ljava/lang/String;

    #@3
    move-result-object v1

    #@4
    .line 755
    .local v1, "s":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    #@6
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@9
    const-string/jumbo v3, "@"

    #@c
    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@f
    move-result v3

    #@10
    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@13
    move-result-object v3

    #@14
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v2

    #@18
    const-string/jumbo v3, ":"

    #@1b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v2

    #@1f
    .line 756
    iget v3, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mState:I

    #@21
    invoke-static {v3}, Landroid/net/sip/SipSession$State;->toString(I)Ljava/lang/String;

    #@24
    move-result-object v3

    #@25
    .line 755
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v2

    #@29
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    #@2c
    move-result-object v2

    #@2d
    return-object v2

    #@2e
    .line 757
    .end local v1    # "s":Ljava/lang/String;
    :catch_0
    move-exception v0

    #@2f
    .line 758
    .local v0, "e":Ljava/lang/Throwable;
    invoke-super {p0}, Landroid/net/sip/ISipSession$Stub;->toString()Ljava/lang/String;

    #@32
    move-result-object v2

    #@33
    return-object v2
.end method

.method public unregister()V
    .locals 1

    #@0
    .prologue
    .line 734
    invoke-static {}, Lcom/android/server/sip/SipSessionGroup;->-get0()Ljava/util/EventObject;

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0, v0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->doCommandAsync(Ljava/util/EventObject;)V

    #@7
    .line 733
    return-void
.end method

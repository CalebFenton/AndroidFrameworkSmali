.class Lcom/android/server/sip/SipService$SipSessionGroupExt;
.super Landroid/net/sip/SipSessionAdapter;
.source "SipService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/sip/SipService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SipSessionGroupExt"
.end annotation


# static fields
.field private static final blacklist SSGE_DBG:Z = true

.field private static final blacklist SSGE_TAG:Ljava/lang/String; = "SipSessionGroupExt"


# instance fields
.field private blacklist mAutoRegistration:Lcom/android/server/sip/SipService$SipAutoReg;

.field private blacklist mIncomingCallPendingIntent:Landroid/app/PendingIntent;

.field private blacklist mOpenedToReceiveCalls:Z

.field private blacklist mSipGroup:Lcom/android/server/sip/SipSessionGroup;

.field final synthetic blacklist this$0:Lcom/android/server/sip/SipService;


# direct methods
.method public constructor blacklist <init>(Lcom/android/server/sip/SipService;Landroid/net/sip/SipProfile;Landroid/app/PendingIntent;Landroid/net/sip/ISipSessionListener;)V
    .registers 9
    .param p2, "localProfile"    # Landroid/net/sip/SipProfile;
    .param p3, "incomingCallPendingIntent"    # Landroid/app/PendingIntent;
    .param p4, "listener"    # Landroid/net/sip/ISipSessionListener;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    .line 492
    iput-object p1, p0, Lcom/android/server/sip/SipService$SipSessionGroupExt;->this$0:Lcom/android/server/sip/SipService;

    invoke-direct {p0}, Landroid/net/sip/SipSessionAdapter;-><init>()V

    .line 487
    new-instance v0, Lcom/android/server/sip/SipService$SipAutoReg;

    iget-object v1, p0, Lcom/android/server/sip/SipService$SipSessionGroupExt;->this$0:Lcom/android/server/sip/SipService;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/server/sip/SipService$SipAutoReg;-><init>(Lcom/android/server/sip/SipService;Lcom/android/server/sip/SipService-IA;)V

    iput-object v0, p0, Lcom/android/server/sip/SipService$SipSessionGroupExt;->mAutoRegistration:Lcom/android/server/sip/SipService$SipAutoReg;

    .line 493
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SipSessionGroupExt: profile="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/sip/SipService$SipSessionGroupExt;->log(Ljava/lang/String;)V

    .line 494
    new-instance v0, Lcom/android/server/sip/SipSessionGroup;

    invoke-direct {p0, p2}, Lcom/android/server/sip/SipService$SipSessionGroupExt;->duplicate(Landroid/net/sip/SipProfile;)Landroid/net/sip/SipProfile;

    move-result-object v1

    .line 495
    invoke-virtual {p2}, Landroid/net/sip/SipProfile;->getPassword()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Lcom/android/server/sip/SipService;->-$$Nest$fgetmTimer(Lcom/android/server/sip/SipService;)Lcom/android/server/sip/SipWakeupTimer;

    move-result-object v3

    invoke-static {p1}, Lcom/android/server/sip/SipService;->-$$Nest$fgetmMyWakeLock(Lcom/android/server/sip/SipService;)Lcom/android/server/sip/SipWakeLock;

    move-result-object p1

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/android/server/sip/SipSessionGroup;-><init>(Landroid/net/sip/SipProfile;Ljava/lang/String;Lcom/android/server/sip/SipWakeupTimer;Lcom/android/server/sip/SipWakeLock;)V

    iput-object v0, p0, Lcom/android/server/sip/SipService$SipSessionGroupExt;->mSipGroup:Lcom/android/server/sip/SipSessionGroup;

    .line 496
    iput-object p3, p0, Lcom/android/server/sip/SipService$SipSessionGroupExt;->mIncomingCallPendingIntent:Landroid/app/PendingIntent;

    .line 497
    iget-object p1, p0, Lcom/android/server/sip/SipService$SipSessionGroupExt;->mAutoRegistration:Lcom/android/server/sip/SipService$SipAutoReg;

    invoke-virtual {p1, p4}, Lcom/android/server/sip/SipService$SipAutoReg;->setListener(Landroid/net/sip/ISipSessionListener;)V

    .line 498
    return-void
.end method

.method private blacklist duplicate(Landroid/net/sip/SipProfile;)Landroid/net/sip/SipProfile;
    .registers 5
    .param p1, "p"    # Landroid/net/sip/SipProfile;

    .line 520
    :try_start_0
    new-instance v0, Landroid/net/sip/SipProfile$Builder;

    invoke-direct {v0, p1}, Landroid/net/sip/SipProfile$Builder;-><init>(Landroid/net/sip/SipProfile;)V

    const-string v1, "*"

    invoke-virtual {v0, v1}, Landroid/net/sip/SipProfile$Builder;->setPassword(Ljava/lang/String;)Landroid/net/sip/SipProfile$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/sip/SipProfile$Builder;->build()Landroid/net/sip/SipProfile;

    move-result-object v0
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_f} :catch_10

    return-object v0

    .line 521
    :catch_10
    move-exception v0

    .line 522
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "duplicate()"

    invoke-direct {p0, v1, v0}, Lcom/android/server/sip/SipService$SipSessionGroupExt;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 523
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "duplicate profile"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private blacklist getUri()Ljava/lang/String;
    .registers 2

    .line 619
    iget-object v0, p0, Lcom/android/server/sip/SipService$SipSessionGroupExt;->mSipGroup:Lcom/android/server/sip/SipSessionGroup;

    invoke-virtual {v0}, Lcom/android/server/sip/SipSessionGroup;->getLocalProfileUri()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private blacklist log(Ljava/lang/String;)V
    .registers 3
    .param p1, "s"    # Ljava/lang/String;

    .line 623
    const-string v0, "SipSessionGroupExt"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    return-void
.end method

.method private blacklist loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "t"    # Ljava/lang/Throwable;

    .line 627
    const-string v0, "SipSessionGroupExt"

    invoke-static {v0, p1, p2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 628
    return-void
.end method


# virtual methods
.method public blacklist close()V
    .registers 3

    .line 562
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/sip/SipService$SipSessionGroupExt;->mOpenedToReceiveCalls:Z

    .line 563
    iget-object v0, p0, Lcom/android/server/sip/SipService$SipSessionGroupExt;->mSipGroup:Lcom/android/server/sip/SipSessionGroup;

    invoke-virtual {v0}, Lcom/android/server/sip/SipSessionGroup;->close()V

    .line 564
    iget-object v0, p0, Lcom/android/server/sip/SipService$SipSessionGroupExt;->mAutoRegistration:Lcom/android/server/sip/SipService$SipAutoReg;

    invoke-virtual {v0}, Lcom/android/server/sip/SipService$SipAutoReg;->stop()V

    .line 565
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "close: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/server/sip/SipService$SipSessionGroupExt;->getUri()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/sip/SipService;->obfuscateSipUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/sip/SipService$SipSessionGroupExt;->mIncomingCallPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/sip/SipService$SipSessionGroupExt;->log(Ljava/lang/String;)V

    .line 567
    return-void
.end method

.method public blacklist containsSession(Ljava/lang/String;)Z
    .registers 3
    .param p1, "callId"    # Ljava/lang/String;

    .line 505
    iget-object v0, p0, Lcom/android/server/sip/SipService$SipSessionGroupExt;->mSipGroup:Lcom/android/server/sip/SipSessionGroup;

    invoke-virtual {v0, p1}, Lcom/android/server/sip/SipSessionGroup;->containsSession(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public blacklist createSession(Landroid/net/sip/ISipSessionListener;)Landroid/net/sip/ISipSession;
    .registers 3
    .param p1, "listener"    # Landroid/net/sip/ISipSessionListener;

    .line 570
    const-string v0, "createSession"

    invoke-direct {p0, v0}, Lcom/android/server/sip/SipService$SipSessionGroupExt;->log(Ljava/lang/String;)V

    .line 571
    iget-object v0, p0, Lcom/android/server/sip/SipService$SipSessionGroupExt;->mSipGroup:Lcom/android/server/sip/SipSessionGroup;

    invoke-virtual {v0, p1}, Lcom/android/server/sip/SipSessionGroup;->createSession(Landroid/net/sip/ISipSessionListener;)Landroid/net/sip/ISipSession;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getLocalProfile()Landroid/net/sip/SipProfile;
    .registers 2

    .line 501
    iget-object v0, p0, Lcom/android/server/sip/SipService$SipSessionGroupExt;->mSipGroup:Lcom/android/server/sip/SipSessionGroup;

    invoke-virtual {v0}, Lcom/android/server/sip/SipSessionGroup;->getLocalProfile()Landroid/net/sip/SipProfile;

    move-result-object v0

    return-object v0
.end method

.method public blacklist isOpenedToReceiveCalls()Z
    .registers 2

    .line 611
    iget-boolean v0, p0, Lcom/android/server/sip/SipService$SipSessionGroupExt;->mOpenedToReceiveCalls:Z

    return v0
.end method

.method public blacklist isRegistered()Z
    .registers 2

    .line 615
    iget-object v0, p0, Lcom/android/server/sip/SipService$SipSessionGroupExt;->mAutoRegistration:Lcom/android/server/sip/SipService$SipAutoReg;

    invoke-virtual {v0}, Lcom/android/server/sip/SipService$SipAutoReg;->isRegistered()Z

    move-result v0

    return v0
.end method

.method public blacklist onConnectivityChanged(Z)V
    .registers 4
    .param p1, "connected"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    .line 548
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onConnectivityChanged: connected="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " uri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 549
    invoke-direct {p0}, Lcom/android/server/sip/SipService$SipSessionGroupExt;->getUri()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/sip/SipService;->obfuscateSipUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/sip/SipService$SipSessionGroupExt;->mIncomingCallPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 548
    invoke-direct {p0, v0}, Lcom/android/server/sip/SipService$SipSessionGroupExt;->log(Ljava/lang/String;)V

    .line 551
    iget-object v0, p0, Lcom/android/server/sip/SipService$SipSessionGroupExt;->mSipGroup:Lcom/android/server/sip/SipSessionGroup;

    invoke-virtual {v0}, Lcom/android/server/sip/SipSessionGroup;->onConnectivityChanged()V

    .line 552
    if-eqz p1, :cond_48

    .line 553
    iget-object v0, p0, Lcom/android/server/sip/SipService$SipSessionGroupExt;->mSipGroup:Lcom/android/server/sip/SipSessionGroup;

    invoke-virtual {v0}, Lcom/android/server/sip/SipSessionGroup;->reset()V

    .line 554
    iget-boolean v0, p0, Lcom/android/server/sip/SipService$SipSessionGroupExt;->mOpenedToReceiveCalls:Z

    if-eqz v0, :cond_52

    invoke-virtual {p0}, Lcom/android/server/sip/SipService$SipSessionGroupExt;->openToReceiveCalls()V

    goto :goto_52

    .line 556
    :cond_48
    iget-object v0, p0, Lcom/android/server/sip/SipService$SipSessionGroupExt;->mSipGroup:Lcom/android/server/sip/SipSessionGroup;

    invoke-virtual {v0}, Lcom/android/server/sip/SipSessionGroup;->close()V

    .line 557
    iget-object v0, p0, Lcom/android/server/sip/SipService$SipSessionGroupExt;->mAutoRegistration:Lcom/android/server/sip/SipService$SipAutoReg;

    invoke-virtual {v0}, Lcom/android/server/sip/SipService$SipAutoReg;->stop()V

    .line 559
    :cond_52
    :goto_52
    return-void
.end method

.method public blacklist onError(Landroid/net/sip/ISipSession;ILjava/lang/String;)V
    .registers 6
    .param p1, "session"    # Landroid/net/sip/ISipSession;
    .param p2, "errorCode"    # I
    .param p3, "message"    # Ljava/lang/String;

    .line 606
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onError: errorCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " desc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 607
    invoke-static {p2}, Landroid/net/sip/SipErrorCode;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 606
    invoke-direct {p0, v0}, Lcom/android/server/sip/SipService$SipSessionGroupExt;->log(Ljava/lang/String;)V

    .line 608
    return-void
.end method

.method public blacklist onKeepAliveIntervalChanged()V
    .registers 2

    .line 509
    iget-object v0, p0, Lcom/android/server/sip/SipService$SipSessionGroupExt;->mAutoRegistration:Lcom/android/server/sip/SipService$SipAutoReg;

    invoke-virtual {v0}, Lcom/android/server/sip/SipService$SipAutoReg;->onKeepAliveIntervalChanged()V

    .line 510
    return-void
.end method

.method public blacklist onRinging(Landroid/net/sip/ISipSession;Landroid/net/sip/SipProfile;Ljava/lang/String;)V
    .registers 10
    .param p1, "s"    # Landroid/net/sip/ISipSession;
    .param p2, "caller"    # Landroid/net/sip/SipProfile;
    .param p3, "sessionDescription"    # Ljava/lang/String;

    .line 577
    move-object v0, p1

    check-cast v0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    .line 579
    .local v0, "session":Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;
    iget-object v1, p0, Lcom/android/server/sip/SipService$SipSessionGroupExt;->this$0:Lcom/android/server/sip/SipService;

    monitor-enter v1

    .line 581
    :try_start_6
    invoke-virtual {p0}, Lcom/android/server/sip/SipService$SipSessionGroupExt;->isRegistered()Z

    move-result v2

    if-eqz v2, :cond_73

    iget-object v2, p0, Lcom/android/server/sip/SipService$SipSessionGroupExt;->this$0:Lcom/android/server/sip/SipService;

    invoke-static {v2, p0, v0}, Lcom/android/server/sip/SipService;->-$$Nest$mcallingSelf(Lcom/android/server/sip/SipService;Lcom/android/server/sip/SipService$SipSessionGroupExt;Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;)Z

    move-result v2

    if-eqz v2, :cond_15

    goto :goto_73

    .line 588
    :cond_15
    iget-object v2, p0, Lcom/android/server/sip/SipService$SipSessionGroupExt;->this$0:Lcom/android/server/sip/SipService;

    invoke-static {v2, v0}, Lcom/android/server/sip/SipService;->-$$Nest$maddPendingSession(Lcom/android/server/sip/SipService;Landroid/net/sip/ISipSession;)V

    .line 589
    nop

    .line 590
    invoke-virtual {v0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->getCallId()Ljava/lang/String;

    move-result-object v2

    .line 589
    invoke-static {v2, p3}, Landroid/net/sip/SipManager;->createIncomingCallBroadcast(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 591
    .local v2, "intent":Landroid/content/Intent;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onRinging: uri="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0}, Lcom/android/server/sip/SipService$SipSessionGroupExt;->getUri()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 592
    invoke-virtual {p2}, Landroid/net/sip/SipProfile;->getUri()Ljavax/sip/address/SipURI;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->getCallId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/sip/SipService$SipSessionGroupExt;->mIncomingCallPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 591
    invoke-direct {p0, v3}, Lcom/android/server/sip/SipService$SipSessionGroupExt;->log(Ljava/lang/String;)V

    .line 594
    iget-object v3, p0, Lcom/android/server/sip/SipService$SipSessionGroupExt;->mIncomingCallPendingIntent:Landroid/app/PendingIntent;

    iget-object v4, p0, Lcom/android/server/sip/SipService$SipSessionGroupExt;->this$0:Lcom/android/server/sip/SipService;

    invoke-static {v4}, Lcom/android/server/sip/SipService;->-$$Nest$fgetmContext(Lcom/android/server/sip/SipService;)Landroid/content/Context;

    move-result-object v4

    const/16 v5, 0x65

    invoke-virtual {v3, v4, v5, v2}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V

    .line 599
    .end local v2    # "intent":Landroid/content/Intent;
    goto :goto_88

    .line 582
    :cond_73
    :goto_73
    const-string v2, "onRinging: end notReg or self"

    invoke-direct {p0, v2}, Lcom/android/server/sip/SipService$SipSessionGroupExt;->log(Ljava/lang/String;)V

    .line 583
    invoke-virtual {v0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->endCall()V
    :try_end_7b
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_6 .. :try_end_7b} :catch_7f
    .catchall {:try_start_6 .. :try_end_7b} :catchall_7d

    .line 584
    :try_start_7b
    monitor-exit v1

    return-void

    .line 600
    :catchall_7d
    move-exception v2

    goto :goto_8a

    .line 596
    :catch_7f
    move-exception v2

    .line 597
    .local v2, "e":Landroid/app/PendingIntent$CanceledException;
    const-string v3, "onRinging: pendingIntent is canceled, drop incoming call"

    invoke-direct {p0, v3, v2}, Lcom/android/server/sip/SipService$SipSessionGroupExt;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 598
    invoke-virtual {v0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->endCall()V

    .line 600
    .end local v2    # "e":Landroid/app/PendingIntent$CanceledException;
    :goto_88
    monitor-exit v1

    .line 601
    return-void

    .line 600
    :goto_8a
    monitor-exit v1
    :try_end_8b
    .catchall {:try_start_7b .. :try_end_8b} :catchall_7d

    throw v2
.end method

.method public blacklist openToReceiveCalls()V
    .registers 3

    .line 536
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/sip/SipService$SipSessionGroupExt;->mOpenedToReceiveCalls:Z

    .line 537
    iget-object v0, p0, Lcom/android/server/sip/SipService$SipSessionGroupExt;->this$0:Lcom/android/server/sip/SipService;

    invoke-static {v0}, Lcom/android/server/sip/SipService;->-$$Nest$fgetmNetworkType(Lcom/android/server/sip/SipService;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_18

    .line 538
    iget-object v0, p0, Lcom/android/server/sip/SipService$SipSessionGroupExt;->mSipGroup:Lcom/android/server/sip/SipSessionGroup;

    invoke-virtual {v0, p0}, Lcom/android/server/sip/SipSessionGroup;->openToReceiveCalls(Landroid/net/sip/ISipSessionListener;)V

    .line 539
    iget-object v0, p0, Lcom/android/server/sip/SipService$SipSessionGroupExt;->mAutoRegistration:Lcom/android/server/sip/SipService$SipAutoReg;

    iget-object v1, p0, Lcom/android/server/sip/SipService$SipSessionGroupExt;->mSipGroup:Lcom/android/server/sip/SipSessionGroup;

    invoke-virtual {v0, v1}, Lcom/android/server/sip/SipService$SipAutoReg;->start(Lcom/android/server/sip/SipSessionGroup;)V

    .line 541
    :cond_18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "openToReceiveCalls: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/server/sip/SipService$SipSessionGroupExt;->getUri()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/sip/SipService;->obfuscateSipUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/sip/SipService$SipSessionGroupExt;->mIncomingCallPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/sip/SipService$SipSessionGroupExt;->log(Ljava/lang/String;)V

    .line 543
    return-void
.end method

.method public blacklist setIncomingCallPendingIntent(Landroid/app/PendingIntent;)V
    .registers 2
    .param p1, "pIntent"    # Landroid/app/PendingIntent;

    .line 532
    iput-object p1, p0, Lcom/android/server/sip/SipService$SipSessionGroupExt;->mIncomingCallPendingIntent:Landroid/app/PendingIntent;

    .line 533
    return-void
.end method

.method public blacklist setListener(Landroid/net/sip/ISipSessionListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/net/sip/ISipSessionListener;

    .line 528
    iget-object v0, p0, Lcom/android/server/sip/SipService$SipSessionGroupExt;->mAutoRegistration:Lcom/android/server/sip/SipService$SipAutoReg;

    invoke-virtual {v0, p1}, Lcom/android/server/sip/SipService$SipAutoReg;->setListener(Landroid/net/sip/ISipSessionListener;)V

    .line 529
    return-void
.end method

.method blacklist setWakeupTimer(Lcom/android/server/sip/SipWakeupTimer;)V
    .registers 3
    .param p1, "timer"    # Lcom/android/server/sip/SipWakeupTimer;

    .line 515
    iget-object v0, p0, Lcom/android/server/sip/SipService$SipSessionGroupExt;->mSipGroup:Lcom/android/server/sip/SipSessionGroup;

    invoke-virtual {v0, p1}, Lcom/android/server/sip/SipSessionGroup;->setWakeupTimer(Lcom/android/server/sip/SipWakeupTimer;)V

    .line 516
    return-void
.end method

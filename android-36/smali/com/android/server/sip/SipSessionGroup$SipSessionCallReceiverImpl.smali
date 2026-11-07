.class Lcom/android/server/sip/SipSessionGroup$SipSessionCallReceiverImpl;
.super Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;
.source "SipSessionGroup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/sip/SipSessionGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SipSessionCallReceiverImpl"
.end annotation


# static fields
.field private static final blacklist SSCRI_DBG:Z = true

.field private static final blacklist SSCRI_TAG:Ljava/lang/String; = "SipSessionCallReceiverImpl"


# instance fields
.field final synthetic blacklist this$0:Lcom/android/server/sip/SipSessionGroup;


# direct methods
.method public constructor blacklist <init>(Lcom/android/server/sip/SipSessionGroup;Landroid/net/sip/ISipSessionListener;)V
    .registers 3
    .param p2, "listener"    # Landroid/net/sip/ISipSessionListener;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 441
    iput-object p1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionCallReceiverImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    .line 442
    invoke-direct {p0, p1, p2}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;-><init>(Lcom/android/server/sip/SipSessionGroup;Landroid/net/sip/ISipSessionListener;)V

    .line 443
    return-void
.end method

.method private blacklist log(Ljava/lang/String;)V
    .registers 3
    .param p1, "s"    # Ljava/lang/String;

    .line 523
    const-string v0, "SipSessionCallReceiverImpl"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    return-void
.end method

.method private blacklist processInviteWithReplaces(Ljavax/sip/RequestEvent;Lgov/nist/javax/sip/header/extensions/ReplacesHeader;)I
    .registers 10
    .param p1, "event"    # Ljavax/sip/RequestEvent;
    .param p2, "replaces"    # Lgov/nist/javax/sip/header/extensions/ReplacesHeader;

    .line 447
    invoke-interface {p2}, Lgov/nist/javax/sip/header/extensions/ReplacesHeader;->getCallId()Ljava/lang/String;

    move-result-object v0

    .line 448
    .local v0, "callId":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionCallReceiverImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    invoke-static {v1}, Lcom/android/server/sip/SipSessionGroup;->-$$Nest$fgetmSessionMap(Lcom/android/server/sip/SipSessionGroup;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    .line 449
    .local v1, "session":Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;
    const/16 v2, 0x1e1

    if-nez v1, :cond_15

    .line 450
    return v2

    .line 453
    :cond_15
    iget-object v3, v1, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mDialog:Ljavax/sip/Dialog;

    .line 454
    .local v3, "dialog":Ljavax/sip/Dialog;
    if-nez v3, :cond_1c

    const/16 v2, 0x25b

    return v2

    .line 456
    :cond_1c
    invoke-interface {v3}, Ljavax/sip/Dialog;->getLocalTag()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2}, Lgov/nist/javax/sip/header/extensions/ReplacesHeader;->getToTag()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5a

    .line 457
    invoke-interface {v3}, Ljavax/sip/Dialog;->getRemoteTag()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2}, Lgov/nist/javax/sip/header/extensions/ReplacesHeader;->getFromTag()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_39

    goto :goto_5a

    .line 462
    :cond_39
    invoke-virtual {p1}, Ljavax/sip/RequestEvent;->getRequest()Ljavax/sip/message/Request;

    move-result-object v4

    .line 463
    const-string v5, "Referred-By"

    invoke-interface {v4, v5}, Ljavax/sip/message/Request;->getHeader(Ljava/lang/String;)Ljavax/sip/header/Header;

    move-result-object v4

    check-cast v4, Lgov/nist/javax/sip/header/extensions/ReferredByHeader;

    .line 464
    .local v4, "referredBy":Lgov/nist/javax/sip/header/extensions/ReferredByHeader;
    if-eqz v4, :cond_59

    .line 465
    invoke-interface {v3}, Ljavax/sip/Dialog;->getRemoteParty()Ljavax/sip/address/Address;

    move-result-object v5

    invoke-interface {v4}, Lgov/nist/javax/sip/header/extensions/ReferredByHeader;->getAddress()Ljavax/sip/address/Address;

    move-result-object v6

    invoke-interface {v5, v6}, Ljavax/sip/address/Address;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_56

    goto :goto_59

    .line 468
    :cond_56
    const/16 v2, 0xc8

    return v2

    .line 466
    :cond_59
    :goto_59
    return v2

    .line 459
    .end local v4    # "referredBy":Lgov/nist/javax/sip/header/extensions/ReferredByHeader;
    :cond_5a
    :goto_5a
    return v2
.end method

.method private blacklist processNewInviteRequest(Ljavax/sip/RequestEvent;)V
    .registers 10
    .param p1, "event"    # Ljavax/sip/RequestEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    .line 473
    invoke-virtual {p1}, Ljavax/sip/RequestEvent;->getRequest()Ljavax/sip/message/Request;

    move-result-object v0

    .line 474
    const-string v1, "Replaces"

    invoke-interface {v0, v1}, Ljavax/sip/message/Request;->getHeader(Ljava/lang/String;)Ljavax/sip/header/Header;

    move-result-object v0

    check-cast v0, Lgov/nist/javax/sip/header/extensions/ReplacesHeader;

    .line 475
    .local v0, "replaces":Lgov/nist/javax/sip/header/extensions/ReplacesHeader;
    const/4 v1, 0x0

    .line 476
    .local v1, "newSession":Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;
    const/4 v2, 0x3

    if-eqz v0, :cond_70

    .line 477
    invoke-direct {p0, p1, v0}, Lcom/android/server/sip/SipSessionGroup$SipSessionCallReceiverImpl;->processInviteWithReplaces(Ljavax/sip/RequestEvent;Lgov/nist/javax/sip/header/extensions/ReplacesHeader;)I

    move-result v3

    .line 479
    .local v3, "response":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "processNewInviteRequest: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " response="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/server/sip/SipSessionGroup$SipSessionCallReceiverImpl;->log(Ljava/lang/String;)V

    .line 482
    const/16 v4, 0xc8

    if-ne v3, v4, :cond_66

    .line 483
    iget-object v4, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionCallReceiverImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    invoke-static {v4}, Lcom/android/server/sip/SipSessionGroup;->-$$Nest$fgetmSessionMap(Lcom/android/server/sip/SipSessionGroup;)Ljava/util/Map;

    move-result-object v4

    .line 484
    invoke-interface {v0}, Lgov/nist/javax/sip/header/extensions/ReplacesHeader;->getCallId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    .line 486
    .local v4, "replacedSession":Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;
    iget-object v5, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionCallReceiverImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    iget-object v6, v4, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mProxy:Lcom/android/server/sip/SipSessionListenerProxy;

    .line 487
    invoke-virtual {v6}, Lcom/android/server/sip/SipSessionListenerProxy;->getListener()Landroid/net/sip/ISipSessionListener;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionCallReceiverImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    invoke-static {v7}, Lcom/android/server/sip/SipSessionGroup;->-$$Nest$fgetmSipHelper(Lcom/android/server/sip/SipSessionGroup;)Lcom/android/server/sip/SipHelper;

    move-result-object v7

    .line 488
    invoke-virtual {v7, p1}, Lcom/android/server/sip/SipHelper;->getServerTransaction(Ljavax/sip/RequestEvent;)Ljavax/sip/ServerTransaction;

    move-result-object v7

    .line 486
    invoke-static {v5, p1, v6, v7, v2}, Lcom/android/server/sip/SipSessionGroup;->-$$Nest$mcreateNewSession(Lcom/android/server/sip/SipSessionGroup;Ljavax/sip/RequestEvent;Landroid/net/sip/ISipSessionListener;Ljavax/sip/ServerTransaction;I)Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    move-result-object v1

    .line 490
    iget-object v2, v1, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mProxy:Lcom/android/server/sip/SipSessionListenerProxy;

    iget-object v5, v1, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mPeerSessionDescription:Ljava/lang/String;

    invoke-virtual {v2, v1, v5}, Lcom/android/server/sip/SipSessionListenerProxy;->onCallTransferring(Landroid/net/sip/ISipSession;Ljava/lang/String;)V

    .line 492
    .end local v4    # "replacedSession":Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;
    goto :goto_6f

    .line 493
    :cond_66
    iget-object v2, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionCallReceiverImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    invoke-static {v2}, Lcom/android/server/sip/SipSessionGroup;->-$$Nest$fgetmSipHelper(Lcom/android/server/sip/SipSessionGroup;)Lcom/android/server/sip/SipHelper;

    move-result-object v2

    invoke-virtual {v2, p1, v3}, Lcom/android/server/sip/SipHelper;->sendResponse(Ljavax/sip/RequestEvent;I)V

    .line 495
    .end local v3    # "response":I
    :goto_6f
    goto :goto_8f

    .line 497
    :cond_70
    iget-object v3, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionCallReceiverImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    iget-object v4, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionCallReceiverImpl;->mProxy:Lcom/android/server/sip/SipSessionListenerProxy;

    iget-object v5, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionCallReceiverImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    invoke-static {v5}, Lcom/android/server/sip/SipSessionGroup;->-$$Nest$fgetmSipHelper(Lcom/android/server/sip/SipSessionGroup;)Lcom/android/server/sip/SipHelper;

    move-result-object v5

    .line 498
    invoke-virtual {p0}, Lcom/android/server/sip/SipSessionGroup$SipSessionCallReceiverImpl;->generateTag()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, p1, v6}, Lcom/android/server/sip/SipHelper;->sendRinging(Ljavax/sip/RequestEvent;Ljava/lang/String;)Ljavax/sip/ServerTransaction;

    move-result-object v5

    .line 497
    invoke-static {v3, p1, v4, v5, v2}, Lcom/android/server/sip/SipSessionGroup;->-$$Nest$mcreateNewSession(Lcom/android/server/sip/SipSessionGroup;Ljavax/sip/RequestEvent;Landroid/net/sip/ISipSessionListener;Ljavax/sip/ServerTransaction;I)Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    move-result-object v1

    .line 500
    iget-object v2, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionCallReceiverImpl;->mProxy:Lcom/android/server/sip/SipSessionListenerProxy;

    iget-object v3, v1, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mPeerProfile:Landroid/net/sip/SipProfile;

    iget-object v4, v1, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mPeerSessionDescription:Ljava/lang/String;

    invoke-virtual {v2, v1, v3, v4}, Lcom/android/server/sip/SipSessionListenerProxy;->onRinging(Landroid/net/sip/ISipSession;Landroid/net/sip/SipProfile;Ljava/lang/String;)V

    .line 503
    :goto_8f
    if-eqz v1, :cond_96

    iget-object v2, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionCallReceiverImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    invoke-static {v2, v1}, Lcom/android/server/sip/SipSessionGroup;->-$$Nest$maddSipSession(Lcom/android/server/sip/SipSessionGroup;Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;)V

    .line 504
    :cond_96
    return-void
.end method


# virtual methods
.method public blacklist process(Ljava/util/EventObject;)Z
    .registers 6
    .param p1, "evt"    # Ljava/util/EventObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    .line 508
    invoke-static {p0, p1}, Lcom/android/server/sip/SipSessionGroup;->-$$Nest$smisLoggable(Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;Ljava/util/EventObject;)Z

    move-result v0

    if-eqz v0, :cond_3a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "process: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionCallReceiverImpl;->mState:I

    .line 509
    invoke-static {v1}, Landroid/net/sip/SipSession$State;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": processing "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 510
    invoke-static {p1}, Lcom/android/server/sip/SipSessionGroup;->-$$Nest$smlogEvt(Ljava/util/EventObject;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 508
    invoke-direct {p0, v0}, Lcom/android/server/sip/SipSessionGroup$SipSessionCallReceiverImpl;->log(Ljava/lang/String;)V

    .line 511
    :cond_3a
    const-string v0, "INVITE"

    invoke-static {v0, p1}, Lcom/android/server/sip/SipSessionGroup;->-$$Nest$smisRequestEvent(Ljava/lang/String;Ljava/util/EventObject;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_4a

    .line 512
    move-object v0, p1

    check-cast v0, Ljavax/sip/RequestEvent;

    invoke-direct {p0, v0}, Lcom/android/server/sip/SipSessionGroup$SipSessionCallReceiverImpl;->processNewInviteRequest(Ljavax/sip/RequestEvent;)V

    .line 513
    return v1

    .line 514
    :cond_4a
    const-string v0, "OPTIONS"

    invoke-static {v0, p1}, Lcom/android/server/sip/SipSessionGroup;->-$$Nest$smisRequestEvent(Ljava/lang/String;Ljava/util/EventObject;)Z

    move-result v0

    if-eqz v0, :cond_61

    .line 515
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionCallReceiverImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    invoke-static {v0}, Lcom/android/server/sip/SipSessionGroup;->-$$Nest$fgetmSipHelper(Lcom/android/server/sip/SipSessionGroup;)Lcom/android/server/sip/SipHelper;

    move-result-object v0

    move-object v2, p1

    check-cast v2, Ljavax/sip/RequestEvent;

    const/16 v3, 0xc8

    invoke-virtual {v0, v2, v3}, Lcom/android/server/sip/SipHelper;->sendResponse(Ljavax/sip/RequestEvent;I)V

    .line 516
    return v1

    .line 518
    :cond_61
    const/4 v0, 0x0

    return v0
.end method

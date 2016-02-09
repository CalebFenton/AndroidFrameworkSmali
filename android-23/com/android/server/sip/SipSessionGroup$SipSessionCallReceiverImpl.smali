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
.field private static final SSCRI_DBG:Z = true

.field private static final SSCRI_TAG:Ljava/lang/String; = "SipSessionCallReceiverImpl"


# instance fields
.field final synthetic this$0:Lcom/android/server/sip/SipSessionGroup;


# direct methods
.method public constructor <init>(Lcom/android/server/sip/SipSessionGroup;Landroid/net/sip/ISipSessionListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/sip/SipSessionGroup;
    .param p2, "listener"    # Landroid/net/sip/ISipSessionListener;

    #@0
    .prologue
    .line 441
    iput-object p1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionCallReceiverImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    #@2
    .line 442
    invoke-direct {p0, p1, p2}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;-><init>(Lcom/android/server/sip/SipSessionGroup;Landroid/net/sip/ISipSessionListener;)V

    #@5
    .line 441
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 523
    const-string/jumbo v0, "SipSessionCallReceiverImpl"

    #@3
    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@6
    .line 522
    return-void
.end method

.method private processInviteWithReplaces(Ljavax/sip/RequestEvent;Lgov/nist/javax/sip/header/extensions/ReplacesHeader;)I
    .locals 7
    .param p1, "event"    # Ljavax/sip/RequestEvent;
    .param p2, "replaces"    # Lgov/nist/javax/sip/header/extensions/ReplacesHeader;

    #@0
    .prologue
    const/16 v6, 0x1e1

    #@2
    .line 447
    invoke-interface {p2}, Lgov/nist/javax/sip/header/extensions/ReplacesHeader;->getCallId()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    .line 448
    .local v0, "callId":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionCallReceiverImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    #@8
    invoke-static {v4}, Lcom/android/server/sip/SipSessionGroup;->-get7(Lcom/android/server/sip/SipSessionGroup;)Ljava/util/Map;

    #@b
    move-result-object v4

    #@c
    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@f
    move-result-object v3

    #@10
    check-cast v3, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    #@12
    .line 449
    .local v3, "session":Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;
    if-nez v3, :cond_0

    #@14
    .line 450
    return v6

    #@15
    .line 453
    :cond_0
    iget-object v1, v3, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mDialog:Ljavax/sip/Dialog;

    #@17
    .line 454
    .local v1, "dialog":Ljavax/sip/Dialog;
    if-nez v1, :cond_1

    #@19
    const/16 v4, 0x25b

    #@1b
    return v4

    #@1c
    .line 456
    :cond_1
    invoke-interface {v1}, Ljavax/sip/Dialog;->getLocalTag()Ljava/lang/String;

    #@1f
    move-result-object v4

    #@20
    invoke-interface {p2}, Lgov/nist/javax/sip/header/extensions/ReplacesHeader;->getToTag()Ljava/lang/String;

    #@23
    move-result-object v5

    #@24
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@27
    move-result v4

    #@28
    if-eqz v4, :cond_2

    #@2a
    .line 457
    invoke-interface {v1}, Ljavax/sip/Dialog;->getRemoteTag()Ljava/lang/String;

    #@2d
    move-result-object v4

    #@2e
    invoke-interface {p2}, Lgov/nist/javax/sip/header/extensions/ReplacesHeader;->getFromTag()Ljava/lang/String;

    #@31
    move-result-object v5

    #@32
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@35
    move-result v4

    #@36
    if-eqz v4, :cond_2

    #@38
    .line 462
    invoke-virtual {p1}, Ljavax/sip/RequestEvent;->getRequest()Ljavax/sip/message/Request;

    #@3b
    move-result-object v4

    #@3c
    .line 463
    const-string/jumbo v5, "Referred-By"

    #@3f
    .line 462
    invoke-interface {v4, v5}, Ljavax/sip/message/Request;->getHeader(Ljava/lang/String;)Ljavax/sip/header/Header;

    #@42
    move-result-object v2

    #@43
    check-cast v2, Lgov/nist/javax/sip/header/extensions/ReferredByHeader;

    #@45
    .line 464
    .local v2, "referredBy":Lgov/nist/javax/sip/header/extensions/ReferredByHeader;
    if-eqz v2, :cond_3

    #@47
    .line 465
    invoke-interface {v1}, Ljavax/sip/Dialog;->getRemoteParty()Ljavax/sip/address/Address;

    #@4a
    move-result-object v4

    #@4b
    invoke-interface {v2}, Lgov/nist/javax/sip/header/extensions/ReferredByHeader;->getAddress()Ljavax/sip/address/Address;

    #@4e
    move-result-object v5

    #@4f
    invoke-interface {v4, v5}, Ljavax/sip/address/Address;->equals(Ljava/lang/Object;)Z

    #@52
    move-result v4

    #@53
    if-eqz v4, :cond_3

    #@55
    .line 468
    const/16 v4, 0xc8

    #@57
    return v4

    #@58
    .line 459
    .end local v2    # "referredBy":Lgov/nist/javax/sip/header/extensions/ReferredByHeader;
    :cond_2
    return v6

    #@59
    .line 466
    .restart local v2    # "referredBy":Lgov/nist/javax/sip/header/extensions/ReferredByHeader;
    :cond_3
    return v6
.end method

.method private processNewInviteRequest(Ljavax/sip/RequestEvent;)V
    .locals 9
    .param p1, "event"    # Ljavax/sip/RequestEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v8, 0x3

    #@1
    .line 473
    invoke-virtual {p1}, Ljavax/sip/RequestEvent;->getRequest()Ljavax/sip/message/Request;

    #@4
    move-result-object v4

    #@5
    .line 474
    const-string/jumbo v5, "Replaces"

    #@8
    .line 473
    invoke-interface {v4, v5}, Ljavax/sip/message/Request;->getHeader(Ljava/lang/String;)Ljavax/sip/header/Header;

    #@b
    move-result-object v2

    #@c
    check-cast v2, Lgov/nist/javax/sip/header/extensions/ReplacesHeader;

    #@e
    .line 475
    .local v2, "replaces":Lgov/nist/javax/sip/header/extensions/ReplacesHeader;
    const/4 v0, 0x0

    #@f
    .line 476
    .local v0, "newSession":Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;
    if-eqz v2, :cond_2

    #@11
    .line 477
    invoke-direct {p0, p1, v2}, Lcom/android/server/sip/SipSessionGroup$SipSessionCallReceiverImpl;->processInviteWithReplaces(Ljavax/sip/RequestEvent;Lgov/nist/javax/sip/header/extensions/ReplacesHeader;)I

    #@14
    move-result v3

    #@15
    .line 479
    .local v3, "response":I
    new-instance v4, Ljava/lang/StringBuilder;

    #@17
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@1a
    const-string/jumbo v5, "processNewInviteRequest: "

    #@1d
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v4

    #@21
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v4

    #@25
    .line 480
    const-string/jumbo v5, " response="

    #@28
    .line 479
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v4

    #@2c
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v4

    #@30
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@33
    move-result-object v4

    #@34
    invoke-direct {p0, v4}, Lcom/android/server/sip/SipSessionGroup$SipSessionCallReceiverImpl;->log(Ljava/lang/String;)V

    #@37
    .line 482
    const/16 v4, 0xc8

    #@39
    if-ne v3, v4, :cond_1

    #@3b
    .line 484
    iget-object v4, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionCallReceiverImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    #@3d
    invoke-static {v4}, Lcom/android/server/sip/SipSessionGroup;->-get7(Lcom/android/server/sip/SipSessionGroup;)Ljava/util/Map;

    #@40
    move-result-object v4

    #@41
    invoke-interface {v2}, Lgov/nist/javax/sip/header/extensions/ReplacesHeader;->getCallId()Ljava/lang/String;

    #@44
    move-result-object v5

    #@45
    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@48
    move-result-object v1

    #@49
    check-cast v1, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    #@4b
    .line 486
    .local v1, "replacedSession":Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;
    iget-object v4, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionCallReceiverImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    #@4d
    .line 487
    iget-object v5, v1, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mProxy:Lcom/android/server/sip/SipSessionListenerProxy;

    #@4f
    invoke-virtual {v5}, Lcom/android/server/sip/SipSessionListenerProxy;->getListener()Landroid/net/sip/ISipSessionListener;

    #@52
    move-result-object v5

    #@53
    .line 488
    iget-object v6, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionCallReceiverImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    #@55
    invoke-static {v6}, Lcom/android/server/sip/SipSessionGroup;->-get8(Lcom/android/server/sip/SipSessionGroup;)Lcom/android/server/sip/SipHelper;

    #@58
    move-result-object v6

    #@59
    invoke-virtual {v6, p1}, Lcom/android/server/sip/SipHelper;->getServerTransaction(Ljavax/sip/RequestEvent;)Ljavax/sip/ServerTransaction;

    #@5c
    move-result-object v6

    #@5d
    .line 486
    invoke-static {v4, p1, v5, v6, v8}, Lcom/android/server/sip/SipSessionGroup;->-wrap5(Lcom/android/server/sip/SipSessionGroup;Ljavax/sip/RequestEvent;Landroid/net/sip/ISipSessionListener;Ljavax/sip/ServerTransaction;I)Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    #@60
    move-result-object v0

    #@61
    .line 490
    .local v0, "newSession":Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;
    iget-object v4, v0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mProxy:Lcom/android/server/sip/SipSessionListenerProxy;

    #@63
    .line 491
    iget-object v5, v0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mPeerSessionDescription:Ljava/lang/String;

    #@65
    .line 490
    invoke-virtual {v4, v0, v5}, Lcom/android/server/sip/SipSessionListenerProxy;->onCallTransferring(Landroid/net/sip/ISipSession;Ljava/lang/String;)V

    #@68
    .line 503
    .end local v0    # "newSession":Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;
    .end local v1    # "replacedSession":Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;
    .end local v3    # "response":I
    :goto_0
    if-eqz v0, :cond_0

    #@6a
    iget-object v4, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionCallReceiverImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    #@6c
    invoke-static {v4, v0}, Lcom/android/server/sip/SipSessionGroup;->-wrap9(Lcom/android/server/sip/SipSessionGroup;Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;)V

    #@6f
    .line 472
    :cond_0
    return-void

    #@70
    .line 493
    .local v0, "newSession":Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;
    .restart local v3    # "response":I
    :cond_1
    iget-object v4, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionCallReceiverImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    #@72
    invoke-static {v4}, Lcom/android/server/sip/SipSessionGroup;->-get8(Lcom/android/server/sip/SipSessionGroup;)Lcom/android/server/sip/SipHelper;

    #@75
    move-result-object v4

    #@76
    invoke-virtual {v4, p1, v3}, Lcom/android/server/sip/SipHelper;->sendResponse(Ljavax/sip/RequestEvent;I)V

    #@79
    goto :goto_0

    #@7a
    .line 497
    .end local v3    # "response":I
    :cond_2
    iget-object v4, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionCallReceiverImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    #@7c
    iget-object v5, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionCallReceiverImpl;->mProxy:Lcom/android/server/sip/SipSessionListenerProxy;

    #@7e
    .line 498
    iget-object v6, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionCallReceiverImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    #@80
    invoke-static {v6}, Lcom/android/server/sip/SipSessionGroup;->-get8(Lcom/android/server/sip/SipSessionGroup;)Lcom/android/server/sip/SipHelper;

    #@83
    move-result-object v6

    #@84
    invoke-virtual {p0}, Lcom/android/server/sip/SipSessionGroup$SipSessionCallReceiverImpl;->generateTag()Ljava/lang/String;

    #@87
    move-result-object v7

    #@88
    invoke-virtual {v6, p1, v7}, Lcom/android/server/sip/SipHelper;->sendRinging(Ljavax/sip/RequestEvent;Ljava/lang/String;)Ljavax/sip/ServerTransaction;

    #@8b
    move-result-object v6

    #@8c
    .line 497
    invoke-static {v4, p1, v5, v6, v8}, Lcom/android/server/sip/SipSessionGroup;->-wrap5(Lcom/android/server/sip/SipSessionGroup;Ljavax/sip/RequestEvent;Landroid/net/sip/ISipSessionListener;Ljavax/sip/ServerTransaction;I)Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    #@8f
    move-result-object v0

    #@90
    .line 500
    .local v0, "newSession":Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;
    iget-object v4, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionCallReceiverImpl;->mProxy:Lcom/android/server/sip/SipSessionListenerProxy;

    #@92
    iget-object v5, v0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mPeerProfile:Landroid/net/sip/SipProfile;

    #@94
    .line 501
    iget-object v6, v0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mPeerSessionDescription:Ljava/lang/String;

    #@96
    .line 500
    invoke-virtual {v4, v0, v5, v6}, Lcom/android/server/sip/SipSessionListenerProxy;->onRinging(Landroid/net/sip/ISipSession;Landroid/net/sip/SipProfile;Ljava/lang/String;)V

    #@99
    goto :goto_0
.end method


# virtual methods
.method public process(Ljava/util/EventObject;)Z
    .locals 3
    .param p1, "evt"    # Ljava/util/EventObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 508
    invoke-static {p0, p1}, Lcom/android/server/sip/SipSessionGroup;->-wrap2(Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;Ljava/util/EventObject;)Z

    #@4
    move-result v0

    #@5
    if-eqz v0, :cond_0

    #@7
    new-instance v0, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    const-string/jumbo v1, "process: "

    #@f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v0

    #@13
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v0

    #@17
    const-string/jumbo v1, ": "

    #@1a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v0

    #@1e
    .line 509
    iget v1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionCallReceiverImpl;->mState:I

    #@20
    invoke-static {v1}, Landroid/net/sip/SipSession$State;->toString(I)Ljava/lang/String;

    #@23
    move-result-object v1

    #@24
    .line 508
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v0

    #@28
    .line 509
    const-string/jumbo v1, ": processing "

    #@2b
    .line 508
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v0

    #@2f
    .line 510
    invoke-static {p1}, Lcom/android/server/sip/SipSessionGroup;->-wrap7(Ljava/util/EventObject;)Ljava/lang/String;

    #@32
    move-result-object v1

    #@33
    .line 508
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v0

    #@37
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3a
    move-result-object v0

    #@3b
    invoke-direct {p0, v0}, Lcom/android/server/sip/SipSessionGroup$SipSessionCallReceiverImpl;->log(Ljava/lang/String;)V

    #@3e
    .line 511
    :cond_0
    const-string/jumbo v0, "INVITE"

    #@41
    invoke-static {v0, p1}, Lcom/android/server/sip/SipSessionGroup;->-wrap4(Ljava/lang/String;Ljava/util/EventObject;)Z

    #@44
    move-result v0

    #@45
    if-eqz v0, :cond_1

    #@47
    .line 512
    check-cast p1, Ljavax/sip/RequestEvent;

    #@49
    .end local p1    # "evt":Ljava/util/EventObject;
    invoke-direct {p0, p1}, Lcom/android/server/sip/SipSessionGroup$SipSessionCallReceiverImpl;->processNewInviteRequest(Ljavax/sip/RequestEvent;)V

    #@4c
    .line 513
    return v2

    #@4d
    .line 514
    .restart local p1    # "evt":Ljava/util/EventObject;
    :cond_1
    const-string/jumbo v0, "OPTIONS"

    #@50
    invoke-static {v0, p1}, Lcom/android/server/sip/SipSessionGroup;->-wrap4(Ljava/lang/String;Ljava/util/EventObject;)Z

    #@53
    move-result v0

    #@54
    if-eqz v0, :cond_2

    #@56
    .line 515
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionCallReceiverImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    #@58
    invoke-static {v0}, Lcom/android/server/sip/SipSessionGroup;->-get8(Lcom/android/server/sip/SipSessionGroup;)Lcom/android/server/sip/SipHelper;

    #@5b
    move-result-object v0

    #@5c
    check-cast p1, Ljavax/sip/RequestEvent;

    #@5e
    .end local p1    # "evt":Ljava/util/EventObject;
    const/16 v1, 0xc8

    #@60
    invoke-virtual {v0, p1, v1}, Lcom/android/server/sip/SipHelper;->sendResponse(Ljavax/sip/RequestEvent;I)V

    #@63
    .line 516
    return v2

    #@64
    .line 518
    .restart local p1    # "evt":Ljava/util/EventObject;
    :cond_2
    const/4 v0, 0x0

    #@65
    return v0
.end method

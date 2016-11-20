.class Lgov/nist/javax/sip/stack/SIPDialog$DialogDeleteIfNoAckSentTask;
.super Lgov/nist/javax/sip/stack/SIPStackTimerTask;
.source "SIPDialog.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgov/nist/javax/sip/stack/SIPDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DialogDeleteIfNoAckSentTask"
.end annotation


# instance fields
.field private seqno:J

.field final synthetic this$0:Lgov/nist/javax/sip/stack/SIPDialog;


# direct methods
.method public constructor <init>(Lgov/nist/javax/sip/stack/SIPDialog;J)V
    .locals 0
    .param p1, "this$0"    # Lgov/nist/javax/sip/stack/SIPDialog;
    .param p2, "seqno"    # J

    #@0
    .prologue
    .line 486
    iput-object p1, p0, Lgov/nist/javax/sip/stack/SIPDialog$DialogDeleteIfNoAckSentTask;->this$0:Lgov/nist/javax/sip/stack/SIPDialog;

    #@2
    invoke-direct {p0}, Lgov/nist/javax/sip/stack/SIPStackTimerTask;-><init>()V

    #@5
    .line 487
    iput-wide p2, p0, Lgov/nist/javax/sip/stack/SIPDialog$DialogDeleteIfNoAckSentTask;->seqno:J

    #@7
    .line 486
    return-void
.end method


# virtual methods
.method protected runTask()V
    .locals 10

    #@0
    .prologue
    const/4 v9, 0x0

    #@1
    const/4 v8, 0x2

    #@2
    .line 491
    iget-object v4, p0, Lgov/nist/javax/sip/stack/SIPDialog$DialogDeleteIfNoAckSentTask;->this$0:Lgov/nist/javax/sip/stack/SIPDialog;

    #@4
    invoke-static {v4}, Lgov/nist/javax/sip/stack/SIPDialog;->-get2(Lgov/nist/javax/sip/stack/SIPDialog;)J

    #@7
    move-result-wide v4

    #@8
    iget-wide v6, p0, Lgov/nist/javax/sip/stack/SIPDialog$DialogDeleteIfNoAckSentTask;->seqno:J

    #@a
    cmp-long v4, v4, v6

    #@c
    if-gez v4, :cond_1

    #@e
    .line 497
    iget-object v4, p0, Lgov/nist/javax/sip/stack/SIPDialog$DialogDeleteIfNoAckSentTask;->this$0:Lgov/nist/javax/sip/stack/SIPDialog;

    #@10
    invoke-static {v4, v9}, Lgov/nist/javax/sip/stack/SIPDialog;->-set0(Lgov/nist/javax/sip/stack/SIPDialog;Lgov/nist/javax/sip/stack/SIPDialog$DialogDeleteIfNoAckSentTask;)Lgov/nist/javax/sip/stack/SIPDialog$DialogDeleteIfNoAckSentTask;

    #@13
    .line 498
    iget-object v4, p0, Lgov/nist/javax/sip/stack/SIPDialog$DialogDeleteIfNoAckSentTask;->this$0:Lgov/nist/javax/sip/stack/SIPDialog;

    #@15
    invoke-static {v4}, Lgov/nist/javax/sip/stack/SIPDialog;->-get3(Lgov/nist/javax/sip/stack/SIPDialog;)Z

    #@18
    move-result v4

    #@19
    if-nez v4, :cond_3

    #@1b
    .line 499
    iget-object v4, p0, Lgov/nist/javax/sip/stack/SIPDialog$DialogDeleteIfNoAckSentTask;->this$0:Lgov/nist/javax/sip/stack/SIPDialog;

    #@1d
    invoke-static {v4}, Lgov/nist/javax/sip/stack/SIPDialog;->-get6(Lgov/nist/javax/sip/stack/SIPDialog;)Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@20
    move-result-object v4

    #@21
    invoke-virtual {v4}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    #@24
    move-result v4

    #@25
    if-eqz v4, :cond_0

    #@27
    .line 500
    iget-object v4, p0, Lgov/nist/javax/sip/stack/SIPDialog$DialogDeleteIfNoAckSentTask;->this$0:Lgov/nist/javax/sip/stack/SIPDialog;

    #@29
    invoke-static {v4}, Lgov/nist/javax/sip/stack/SIPDialog;->-get6(Lgov/nist/javax/sip/stack/SIPDialog;)Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@2c
    move-result-object v4

    #@2d
    invoke-virtual {v4}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@30
    move-result-object v4

    #@31
    const-string/jumbo v5, "ACK Was not sent. killing dialog"

    #@34
    invoke-interface {v4, v5}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;)V

    #@37
    .line 501
    :cond_0
    iget-object v4, p0, Lgov/nist/javax/sip/stack/SIPDialog$DialogDeleteIfNoAckSentTask;->this$0:Lgov/nist/javax/sip/stack/SIPDialog;

    #@39
    invoke-static {v4}, Lgov/nist/javax/sip/stack/SIPDialog;->-get5(Lgov/nist/javax/sip/stack/SIPDialog;)Lgov/nist/javax/sip/SipProviderImpl;

    #@3c
    move-result-object v4

    #@3d
    invoke-virtual {v4}, Lgov/nist/javax/sip/SipProviderImpl;->getSipListener()Ljavax/sip/SipListener;

    #@40
    move-result-object v4

    #@41
    instance-of v4, v4, Lgov/nist/javax/sip/SipListenerExt;

    #@43
    if-eqz v4, :cond_2

    #@45
    .line 502
    iget-object v4, p0, Lgov/nist/javax/sip/stack/SIPDialog$DialogDeleteIfNoAckSentTask;->this$0:Lgov/nist/javax/sip/stack/SIPDialog;

    #@47
    invoke-static {v4, v8}, Lgov/nist/javax/sip/stack/SIPDialog;->-wrap1(Lgov/nist/javax/sip/stack/SIPDialog;I)V

    #@4a
    .line 490
    :cond_1
    :goto_0
    return-void

    #@4b
    .line 504
    :cond_2
    iget-object v4, p0, Lgov/nist/javax/sip/stack/SIPDialog$DialogDeleteIfNoAckSentTask;->this$0:Lgov/nist/javax/sip/stack/SIPDialog;

    #@4d
    invoke-virtual {v4}, Lgov/nist/javax/sip/stack/SIPDialog;->delete()V

    #@50
    goto :goto_0

    #@51
    .line 507
    :cond_3
    iget-object v4, p0, Lgov/nist/javax/sip/stack/SIPDialog$DialogDeleteIfNoAckSentTask;->this$0:Lgov/nist/javax/sip/stack/SIPDialog;

    #@53
    invoke-static {v4}, Lgov/nist/javax/sip/stack/SIPDialog;->-get6(Lgov/nist/javax/sip/stack/SIPDialog;)Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@56
    move-result-object v4

    #@57
    invoke-virtual {v4}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    #@5a
    move-result v4

    #@5b
    if-eqz v4, :cond_4

    #@5d
    .line 508
    iget-object v4, p0, Lgov/nist/javax/sip/stack/SIPDialog$DialogDeleteIfNoAckSentTask;->this$0:Lgov/nist/javax/sip/stack/SIPDialog;

    #@5f
    invoke-static {v4}, Lgov/nist/javax/sip/stack/SIPDialog;->-get6(Lgov/nist/javax/sip/stack/SIPDialog;)Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@62
    move-result-object v4

    #@63
    invoke-virtual {v4}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@66
    move-result-object v4

    #@67
    const-string/jumbo v5, "ACK Was not sent. Sending BYE"

    #@6a
    invoke-interface {v4, v5}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;)V

    #@6d
    .line 509
    :cond_4
    iget-object v4, p0, Lgov/nist/javax/sip/stack/SIPDialog$DialogDeleteIfNoAckSentTask;->this$0:Lgov/nist/javax/sip/stack/SIPDialog;

    #@6f
    invoke-static {v4}, Lgov/nist/javax/sip/stack/SIPDialog;->-get5(Lgov/nist/javax/sip/stack/SIPDialog;)Lgov/nist/javax/sip/SipProviderImpl;

    #@72
    move-result-object v4

    #@73
    invoke-virtual {v4}, Lgov/nist/javax/sip/SipProviderImpl;->getSipListener()Ljavax/sip/SipListener;

    #@76
    move-result-object v4

    #@77
    instance-of v4, v4, Lgov/nist/javax/sip/SipListenerExt;

    #@79
    if-eqz v4, :cond_5

    #@7b
    .line 510
    iget-object v4, p0, Lgov/nist/javax/sip/stack/SIPDialog$DialogDeleteIfNoAckSentTask;->this$0:Lgov/nist/javax/sip/stack/SIPDialog;

    #@7d
    invoke-static {v4, v8}, Lgov/nist/javax/sip/stack/SIPDialog;->-wrap1(Lgov/nist/javax/sip/stack/SIPDialog;I)V

    #@80
    goto :goto_0

    #@81
    .line 518
    :cond_5
    :try_start_0
    iget-object v4, p0, Lgov/nist/javax/sip/stack/SIPDialog$DialogDeleteIfNoAckSentTask;->this$0:Lgov/nist/javax/sip/stack/SIPDialog;

    #@83
    const-string/jumbo v5, "BYE"

    #@86
    invoke-virtual {v4, v5}, Lgov/nist/javax/sip/stack/SIPDialog;->createRequest(Ljava/lang/String;)Ljavax/sip/message/Request;

    #@89
    move-result-object v1

    #@8a
    .line 519
    .local v1, "byeRequest":Ljavax/sip/message/Request;
    invoke-static {}, Lgov/nist/javax/sip/message/MessageFactoryImpl;->getDefaultUserAgentHeader()Ljavax/sip/header/UserAgentHeader;

    #@8d
    move-result-object v4

    #@8e
    if-eqz v4, :cond_6

    #@90
    .line 520
    invoke-static {}, Lgov/nist/javax/sip/message/MessageFactoryImpl;->getDefaultUserAgentHeader()Ljavax/sip/header/UserAgentHeader;

    #@93
    move-result-object v4

    #@94
    invoke-interface {v1, v4}, Ljavax/sip/message/Request;->addHeader(Ljavax/sip/header/Header;)V

    #@97
    .line 522
    :cond_6
    new-instance v3, Lgov/nist/javax/sip/header/Reason;

    #@99
    invoke-direct {v3}, Lgov/nist/javax/sip/header/Reason;-><init>()V

    #@9c
    .line 523
    .local v3, "reasonHeader":Ljavax/sip/header/ReasonHeader;
    const-string/jumbo v4, "SIP"

    #@9f
    invoke-interface {v3, v4}, Ljavax/sip/header/ReasonHeader;->setProtocol(Ljava/lang/String;)V

    #@a2
    .line 524
    const/16 v4, 0x401

    #@a4
    invoke-interface {v3, v4}, Ljavax/sip/header/ReasonHeader;->setCause(I)V

    #@a7
    .line 525
    const-string/jumbo v4, "Timed out waiting to send ACK"

    #@aa
    invoke-interface {v3, v4}, Ljavax/sip/header/ReasonHeader;->setText(Ljava/lang/String;)V

    #@ad
    .line 526
    invoke-interface {v1, v3}, Ljavax/sip/message/Request;->addHeader(Ljavax/sip/header/Header;)V

    #@b0
    .line 527
    iget-object v4, p0, Lgov/nist/javax/sip/stack/SIPDialog$DialogDeleteIfNoAckSentTask;->this$0:Lgov/nist/javax/sip/stack/SIPDialog;

    #@b2
    invoke-virtual {v4}, Lgov/nist/javax/sip/stack/SIPDialog;->getSipProvider()Lgov/nist/javax/sip/SipProviderImpl;

    #@b5
    move-result-object v4

    #@b6
    invoke-virtual {v4, v1}, Lgov/nist/javax/sip/SipProviderImpl;->getNewClientTransaction(Ljavax/sip/message/Request;)Ljavax/sip/ClientTransaction;

    #@b9
    move-result-object v0

    #@ba
    .line 528
    .local v0, "byeCtx":Ljavax/sip/ClientTransaction;
    iget-object v4, p0, Lgov/nist/javax/sip/stack/SIPDialog$DialogDeleteIfNoAckSentTask;->this$0:Lgov/nist/javax/sip/stack/SIPDialog;

    #@bc
    invoke-virtual {v4, v0}, Lgov/nist/javax/sip/stack/SIPDialog;->sendRequest(Ljavax/sip/ClientTransaction;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@bf
    .line 529
    return-void

    #@c0
    .line 530
    .end local v0    # "byeCtx":Ljavax/sip/ClientTransaction;
    .end local v1    # "byeRequest":Ljavax/sip/message/Request;
    .end local v3    # "reasonHeader":Ljavax/sip/header/ReasonHeader;
    :catch_0
    move-exception v2

    #@c1
    .line 531
    .local v2, "ex":Ljava/lang/Exception;
    iget-object v4, p0, Lgov/nist/javax/sip/stack/SIPDialog$DialogDeleteIfNoAckSentTask;->this$0:Lgov/nist/javax/sip/stack/SIPDialog;

    #@c3
    invoke-virtual {v4}, Lgov/nist/javax/sip/stack/SIPDialog;->delete()V

    #@c6
    goto :goto_0
.end method

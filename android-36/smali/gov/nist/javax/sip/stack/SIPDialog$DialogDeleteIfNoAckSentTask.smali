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
.field private greylist seqno:J

.field final synthetic greylist this$0:Lgov/nist/javax/sip/stack/SIPDialog;


# direct methods
.method public constructor greylist <init>(Lgov/nist/javax/sip/stack/SIPDialog;J)V
    .registers 4
    .param p1, "this$0"    # Lgov/nist/javax/sip/stack/SIPDialog;
    .param p2, "seqno"    # J
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

    .line 486
    iput-object p1, p0, Lgov/nist/javax/sip/stack/SIPDialog$DialogDeleteIfNoAckSentTask;->this$0:Lgov/nist/javax/sip/stack/SIPDialog;

    invoke-direct {p0}, Lgov/nist/javax/sip/stack/SIPStackTimerTask;-><init>()V

    .line 487
    iput-wide p2, p0, Lgov/nist/javax/sip/stack/SIPDialog$DialogDeleteIfNoAckSentTask;->seqno:J

    .line 488
    return-void
.end method


# virtual methods
.method protected greylist runTask()V
    .registers 5

    .line 491
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog$DialogDeleteIfNoAckSentTask;->this$0:Lgov/nist/javax/sip/stack/SIPDialog;

    invoke-static {v0}, Lgov/nist/javax/sip/stack/SIPDialog;->-$$Nest$fgethighestSequenceNumberAcknowledged(Lgov/nist/javax/sip/stack/SIPDialog;)J

    move-result-wide v0

    iget-wide v2, p0, Lgov/nist/javax/sip/stack/SIPDialog$DialogDeleteIfNoAckSentTask;->seqno:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_c2

    .line 497
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog$DialogDeleteIfNoAckSentTask;->this$0:Lgov/nist/javax/sip/stack/SIPDialog;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lgov/nist/javax/sip/stack/SIPDialog;->-$$Nest$fputdialogDeleteIfNoAckSentTask(Lgov/nist/javax/sip/stack/SIPDialog;Lgov/nist/javax/sip/stack/SIPDialog$DialogDeleteIfNoAckSentTask;)V

    .line 498
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog$DialogDeleteIfNoAckSentTask;->this$0:Lgov/nist/javax/sip/stack/SIPDialog;

    invoke-static {v0}, Lgov/nist/javax/sip/stack/SIPDialog;->-$$Nest$fgetisBackToBackUserAgent(Lgov/nist/javax/sip/stack/SIPDialog;)Z

    move-result v0

    const/4 v1, 0x2

    if-nez v0, :cond_51

    .line 499
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog$DialogDeleteIfNoAckSentTask;->this$0:Lgov/nist/javax/sip/stack/SIPDialog;

    invoke-static {v0}, Lgov/nist/javax/sip/stack/SIPDialog;->-$$Nest$fgetsipStack(Lgov/nist/javax/sip/stack/SIPDialog;)Lgov/nist/javax/sip/stack/SIPTransactionStack;

    move-result-object v0

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_36

    .line 500
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog$DialogDeleteIfNoAckSentTask;->this$0:Lgov/nist/javax/sip/stack/SIPDialog;

    invoke-static {v0}, Lgov/nist/javax/sip/stack/SIPDialog;->-$$Nest$fgetsipStack(Lgov/nist/javax/sip/stack/SIPDialog;)Lgov/nist/javax/sip/stack/SIPTransactionStack;

    move-result-object v0

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    const-string v2, "ACK Was not sent. killing dialog"

    invoke-interface {v0, v2}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;)V

    .line 501
    :cond_36
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog$DialogDeleteIfNoAckSentTask;->this$0:Lgov/nist/javax/sip/stack/SIPDialog;

    invoke-static {v0}, Lgov/nist/javax/sip/stack/SIPDialog;->-$$Nest$fgetsipProvider(Lgov/nist/javax/sip/stack/SIPDialog;)Lgov/nist/javax/sip/SipProviderImpl;

    move-result-object v0

    invoke-virtual {v0}, Lgov/nist/javax/sip/SipProviderImpl;->getSipListener()Ljavax/sip/SipListener;

    move-result-object v0

    instance-of v0, v0, Lgov/nist/javax/sip/SipListenerExt;

    if-eqz v0, :cond_4b

    .line 502
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog$DialogDeleteIfNoAckSentTask;->this$0:Lgov/nist/javax/sip/stack/SIPDialog;

    invoke-static {v0, v1}, Lgov/nist/javax/sip/stack/SIPDialog;->-$$Nest$mraiseErrorEvent(Lgov/nist/javax/sip/stack/SIPDialog;I)V

    goto/16 :goto_c2

    .line 504
    :cond_4b
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog$DialogDeleteIfNoAckSentTask;->this$0:Lgov/nist/javax/sip/stack/SIPDialog;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPDialog;->delete()V

    goto :goto_c2

    .line 507
    :cond_51
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog$DialogDeleteIfNoAckSentTask;->this$0:Lgov/nist/javax/sip/stack/SIPDialog;

    invoke-static {v0}, Lgov/nist/javax/sip/stack/SIPDialog;->-$$Nest$fgetsipStack(Lgov/nist/javax/sip/stack/SIPDialog;)Lgov/nist/javax/sip/stack/SIPTransactionStack;

    move-result-object v0

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_6c

    .line 508
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog$DialogDeleteIfNoAckSentTask;->this$0:Lgov/nist/javax/sip/stack/SIPDialog;

    invoke-static {v0}, Lgov/nist/javax/sip/stack/SIPDialog;->-$$Nest$fgetsipStack(Lgov/nist/javax/sip/stack/SIPDialog;)Lgov/nist/javax/sip/stack/SIPTransactionStack;

    move-result-object v0

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    const-string v2, "ACK Was not sent. Sending BYE"

    invoke-interface {v0, v2}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;)V

    .line 509
    :cond_6c
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog$DialogDeleteIfNoAckSentTask;->this$0:Lgov/nist/javax/sip/stack/SIPDialog;

    invoke-static {v0}, Lgov/nist/javax/sip/stack/SIPDialog;->-$$Nest$fgetsipProvider(Lgov/nist/javax/sip/stack/SIPDialog;)Lgov/nist/javax/sip/SipProviderImpl;

    move-result-object v0

    invoke-virtual {v0}, Lgov/nist/javax/sip/SipProviderImpl;->getSipListener()Ljavax/sip/SipListener;

    move-result-object v0

    instance-of v0, v0, Lgov/nist/javax/sip/SipListenerExt;

    if-eqz v0, :cond_80

    .line 510
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog$DialogDeleteIfNoAckSentTask;->this$0:Lgov/nist/javax/sip/stack/SIPDialog;

    invoke-static {v0, v1}, Lgov/nist/javax/sip/stack/SIPDialog;->-$$Nest$mraiseErrorEvent(Lgov/nist/javax/sip/stack/SIPDialog;I)V

    goto :goto_c2

    .line 518
    :cond_80
    :try_start_80
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog$DialogDeleteIfNoAckSentTask;->this$0:Lgov/nist/javax/sip/stack/SIPDialog;

    const-string v1, "BYE"

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/stack/SIPDialog;->createRequest(Ljava/lang/String;)Ljavax/sip/message/Request;

    move-result-object v0

    .line 519
    .local v0, "byeRequest":Ljavax/sip/message/Request;
    invoke-static {}, Lgov/nist/javax/sip/message/MessageFactoryImpl;->getDefaultUserAgentHeader()Ljavax/sip/header/UserAgentHeader;

    move-result-object v1

    if-eqz v1, :cond_95

    .line 520
    invoke-static {}, Lgov/nist/javax/sip/message/MessageFactoryImpl;->getDefaultUserAgentHeader()Ljavax/sip/header/UserAgentHeader;

    move-result-object v1

    invoke-interface {v0, v1}, Ljavax/sip/message/Request;->addHeader(Ljavax/sip/header/Header;)V

    .line 522
    :cond_95
    new-instance v1, Lgov/nist/javax/sip/header/Reason;

    invoke-direct {v1}, Lgov/nist/javax/sip/header/Reason;-><init>()V

    .line 523
    .local v1, "reasonHeader":Ljavax/sip/header/ReasonHeader;
    const-string v2, "SIP"

    invoke-interface {v1, v2}, Ljavax/sip/header/ReasonHeader;->setProtocol(Ljava/lang/String;)V

    .line 524
    const/16 v2, 0x401

    invoke-interface {v1, v2}, Ljavax/sip/header/ReasonHeader;->setCause(I)V

    .line 525
    const-string v2, "Timed out waiting to send ACK"

    invoke-interface {v1, v2}, Ljavax/sip/header/ReasonHeader;->setText(Ljava/lang/String;)V

    .line 526
    invoke-interface {v0, v1}, Ljavax/sip/message/Request;->addHeader(Ljavax/sip/header/Header;)V

    .line 527
    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPDialog$DialogDeleteIfNoAckSentTask;->this$0:Lgov/nist/javax/sip/stack/SIPDialog;

    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPDialog;->getSipProvider()Lgov/nist/javax/sip/SipProviderImpl;

    move-result-object v2

    invoke-virtual {v2, v0}, Lgov/nist/javax/sip/SipProviderImpl;->getNewClientTransaction(Ljavax/sip/message/Request;)Ljavax/sip/ClientTransaction;

    move-result-object v2

    .line 528
    .local v2, "byeCtx":Ljavax/sip/ClientTransaction;
    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPDialog$DialogDeleteIfNoAckSentTask;->this$0:Lgov/nist/javax/sip/stack/SIPDialog;

    invoke-virtual {v3, v2}, Lgov/nist/javax/sip/stack/SIPDialog;->sendRequest(Ljavax/sip/ClientTransaction;)V
    :try_end_bb
    .catch Ljava/lang/Exception; {:try_start_80 .. :try_end_bb} :catch_bc

    .line 529
    return-void

    .line 530
    .end local v0    # "byeRequest":Ljavax/sip/message/Request;
    .end local v1    # "reasonHeader":Ljavax/sip/header/ReasonHeader;
    .end local v2    # "byeCtx":Ljavax/sip/ClientTransaction;
    :catch_bc
    move-exception v0

    .line 531
    .local v0, "ex":Ljava/lang/Exception;
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog$DialogDeleteIfNoAckSentTask;->this$0:Lgov/nist/javax/sip/stack/SIPDialog;

    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPDialog;->delete()V

    .line 536
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_c2
    :goto_c2
    return-void
.end method

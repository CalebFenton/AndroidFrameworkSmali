.class public Lgov/nist/javax/sip/stack/SIPDialog;
.super Ljava/lang/Object;
.source "SIPDialog.java"

# interfaces
.implements Ljavax/sip/Dialog;
.implements Lgov/nist/javax/sip/DialogExt;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgov/nist/javax/sip/stack/SIPDialog$DialogDeleteTask;,
        Lgov/nist/javax/sip/stack/SIPDialog$DialogTimerTask;,
        Lgov/nist/javax/sip/stack/SIPDialog$LingerTimer;,
        Lgov/nist/javax/sip/stack/SIPDialog$ReInviteSender;,
        Lgov/nist/javax/sip/stack/SIPDialog$DialogDeleteIfNoAckSentTask;
    }
.end annotation


# static fields
.field public static final greylist CONFIRMED_STATE:I

.field private static final greylist DIALOG_LINGER_TIME:I = 0x8

.field public static final greylist EARLY_STATE:I

.field public static final greylist NULL_STATE:I = -0x1

.field public static final greylist TERMINATED_STATE:I

.field private static final whitelist serialVersionUID:J = -0x13d7a673d1d40265L


# instance fields
.field private transient greylist ackLine:I

.field protected transient greylist ackProcessed:Z

.field protected transient greylist ackSeen:Z

.field private transient greylist ackSem:Ljava/util/concurrent/Semaphore;

.field private transient greylist applicationData:Ljava/lang/Object;

.field public transient greylist auditTag:J

.field private transient greylist byeSent:Z

.field protected greylist callIdHeader:Ljavax/sip/header/CallIdHeader;

.field protected greylist contactHeader:Lgov/nist/javax/sip/header/Contact;

.field private transient greylist dialogDeleteIfNoAckSentTask:Lgov/nist/javax/sip/stack/SIPDialog$DialogDeleteIfNoAckSentTask;

.field private transient greylist dialogDeleteTask:Lgov/nist/javax/sip/stack/SIPDialog$DialogDeleteTask;

.field private greylist dialogId:Ljava/lang/String;

.field private greylist dialogState:I

.field private transient greylist dialogTerminatedEventDelivered:Z

.field private transient greylist earlyDialogId:Ljava/lang/String;

.field private greylist eventHeader:Ljavax/sip/header/EventHeader;

.field private transient greylist eventListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lgov/nist/javax/sip/stack/SIPDialogEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private transient greylist firstTransaction:Lgov/nist/javax/sip/stack/SIPTransaction;

.field protected greylist firstTransactionId:Ljava/lang/String;

.field protected greylist firstTransactionIsServerTransaction:Z

.field protected greylist firstTransactionMethod:Ljava/lang/String;

.field protected greylist firstTransactionPort:I

.field protected greylist firstTransactionSecure:Z

.field protected greylist firstTransactionSeen:Z

.field private transient greylist highestSequenceNumberAcknowledged:J

.field protected greylist hisTag:Ljava/lang/String;

.field private transient greylist isAcknowledged:Z

.field private transient greylist isAssigned:Z

.field private greylist isBackToBackUserAgent:Z

.field private greylist lastAckReceived:Lgov/nist/javax/sip/message/SIPRequest;

.field private transient greylist lastAckSent:Lgov/nist/javax/sip/message/SIPRequest;

.field private transient greylist lastInviteOkReceived:J

.field private greylist lastResponse:Lgov/nist/javax/sip/message/SIPResponse;

.field private transient greylist lastTransaction:Lgov/nist/javax/sip/stack/SIPTransaction;

.field protected greylist localParty:Ljavax/sip/address/Address;

.field private greylist localSequenceNumber:J

.field private greylist method:Ljava/lang/String;

.field protected greylist myTag:Ljava/lang/String;

.field protected transient greylist nextSeqno:Ljava/lang/Long;

.field private greylist originalLocalSequenceNumber:J

.field private transient greylist originalRequest:Lgov/nist/javax/sip/message/SIPRequest;

.field private transient greylist prevRetransmissionTicks:I

.field private greylist reInviteFlag:Z

.field private transient greylist reInviteWaitTime:I

.field protected greylist remoteParty:Ljavax/sip/address/Address;

.field private greylist remoteSequenceNumber:J

.field private greylist remoteTarget:Ljavax/sip/address/Address;

.field private transient greylist retransmissionTicksLeft:I

.field private greylist routeList:Lgov/nist/javax/sip/header/RouteList;

.field private greylist sequenceNumberValidation:Z

.field private greylist serverTransactionFlag:Z

.field private transient greylist sipProvider:Lgov/nist/javax/sip/SipProviderImpl;

.field private transient greylist sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

.field private transient greylist stackTrace:Ljava/lang/String;

.field private greylist terminateOnBye:Z

.field protected transient greylist timerTask:Lgov/nist/javax/sip/stack/SIPDialog$DialogTimerTask;

.field private greylist timerTaskLock:Ljava/util/concurrent/Semaphore;


# direct methods
.method static bridge synthetic greylist -$$Nest$fgetdialogState(Lgov/nist/javax/sip/stack/SIPDialog;)I
    .registers 1

    iget p0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->dialogState:I

    return p0
.end method

.method static bridge synthetic greylist -$$Nest$fgeteventListeners(Lgov/nist/javax/sip/stack/SIPDialog;)Ljava/util/Set;
    .registers 1

    iget-object p0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->eventListeners:Ljava/util/Set;

    return-object p0
.end method

.method static bridge synthetic greylist -$$Nest$fgethighestSequenceNumberAcknowledged(Lgov/nist/javax/sip/stack/SIPDialog;)J
    .registers 3

    iget-wide v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->highestSequenceNumberAcknowledged:J

    return-wide v0
.end method

.method static bridge synthetic greylist -$$Nest$fgetisBackToBackUserAgent(Lgov/nist/javax/sip/stack/SIPDialog;)Z
    .registers 1

    iget-boolean p0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->isBackToBackUserAgent:Z

    return p0
.end method

.method static bridge synthetic greylist -$$Nest$fgetreInviteWaitTime(Lgov/nist/javax/sip/stack/SIPDialog;)I
    .registers 1

    iget p0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->reInviteWaitTime:I

    return p0
.end method

.method static bridge synthetic greylist -$$Nest$fgetsipProvider(Lgov/nist/javax/sip/stack/SIPDialog;)Lgov/nist/javax/sip/SipProviderImpl;
    .registers 1

    iget-object p0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipProvider:Lgov/nist/javax/sip/SipProviderImpl;

    return-object p0
.end method

.method static bridge synthetic greylist -$$Nest$fgetsipStack(Lgov/nist/javax/sip/stack/SIPDialog;)Lgov/nist/javax/sip/stack/SIPTransactionStack;
    .registers 1

    iget-object p0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    return-object p0
.end method

.method static bridge synthetic greylist -$$Nest$fputdialogDeleteIfNoAckSentTask(Lgov/nist/javax/sip/stack/SIPDialog;Lgov/nist/javax/sip/stack/SIPDialog$DialogDeleteIfNoAckSentTask;)V
    .registers 2

    iput-object p1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->dialogDeleteIfNoAckSentTask:Lgov/nist/javax/sip/stack/SIPDialog$DialogDeleteIfNoAckSentTask;

    return-void
.end method

.method static bridge synthetic greylist -$$Nest$fputtimerTaskLock(Lgov/nist/javax/sip/stack/SIPDialog;Ljava/util/concurrent/Semaphore;)V
    .registers 2

    iput-object p1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->timerTaskLock:Ljava/util/concurrent/Semaphore;

    return-void
.end method

.method static bridge synthetic greylist -$$Nest$mraiseErrorEvent(Lgov/nist/javax/sip/stack/SIPDialog;I)V
    .registers 2

    invoke-direct {p0, p1}, Lgov/nist/javax/sip/stack/SIPDialog;->raiseErrorEvent(I)V

    return-void
.end method

.method static bridge synthetic greylist -$$Nest$mraiseIOException(Lgov/nist/javax/sip/stack/SIPDialog;Ljava/lang/String;ILjava/lang/String;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lgov/nist/javax/sip/stack/SIPDialog;->raiseIOException(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method static bridge synthetic greylist -$$Nest$mtoRetransmitFinalResponse(Lgov/nist/javax/sip/stack/SIPDialog;I)Z
    .registers 2

    invoke-direct {p0, p1}, Lgov/nist/javax/sip/stack/SIPDialog;->toRetransmitFinalResponse(I)Z

    move-result p0

    return p0
.end method

.method static constructor greylist <clinit>()V
    .registers 1

    .line 214
    sget v0, Ljavax/sip/DialogState;->_EARLY:I

    sput v0, Lgov/nist/javax/sip/stack/SIPDialog;->EARLY_STATE:I

    .line 216
    sget v0, Ljavax/sip/DialogState;->_CONFIRMED:I

    sput v0, Lgov/nist/javax/sip/stack/SIPDialog;->CONFIRMED_STATE:I

    .line 218
    sget v0, Ljavax/sip/DialogState;->_TERMINATED:I

    sput v0, Lgov/nist/javax/sip/stack/SIPDialog;->TERMINATED_STATE:I

    return-void
.end method

.method private constructor greylist <init>(Lgov/nist/javax/sip/SipProviderImpl;)V
    .registers 8
    .param p1, "provider"    # Lgov/nist/javax/sip/SipProviderImpl;

    .line 546
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 201
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->auditTag:J

    .line 242
    new-instance v2, Ljava/util/concurrent/Semaphore;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v2, p0, Lgov/nist/javax/sip/stack/SIPDialog;->ackSem:Ljava/util/concurrent/Semaphore;

    .line 244
    const/16 v2, 0x64

    iput v2, p0, Lgov/nist/javax/sip/stack/SIPDialog;->reInviteWaitTime:I

    .line 252
    const-wide/16 v4, -0x1

    iput-wide v4, p0, Lgov/nist/javax/sip/stack/SIPDialog;->highestSequenceNumberAcknowledged:J

    .line 256
    iput-boolean v3, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sequenceNumberValidation:Z

    .line 261
    new-instance v2, Ljava/util/concurrent/Semaphore;

    invoke-direct {v2, v3}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v2, p0, Lgov/nist/javax/sip/stack/SIPDialog;->timerTaskLock:Ljava/util/concurrent/Semaphore;

    .line 271
    const/16 v2, 0x13c4

    iput v2, p0, Lgov/nist/javax/sip/stack/SIPDialog;->firstTransactionPort:I

    .line 547
    iput-boolean v3, p0, Lgov/nist/javax/sip/stack/SIPDialog;->terminateOnBye:Z

    .line 548
    new-instance v2, Lgov/nist/javax/sip/header/RouteList;

    invoke-direct {v2}, Lgov/nist/javax/sip/header/RouteList;-><init>()V

    iput-object v2, p0, Lgov/nist/javax/sip/stack/SIPDialog;->routeList:Lgov/nist/javax/sip/header/RouteList;

    .line 549
    const/4 v2, -0x1

    iput v2, p0, Lgov/nist/javax/sip/stack/SIPDialog;->dialogState:I

    .line 550
    iput-wide v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->localSequenceNumber:J

    .line 551
    iput-wide v4, p0, Lgov/nist/javax/sip/stack/SIPDialog;->remoteSequenceNumber:J

    .line 552
    iput-object p1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipProvider:Lgov/nist/javax/sip/SipProviderImpl;

    .line 553
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->eventListeners:Ljava/util/Set;

    .line 554
    return-void
.end method

.method public constructor greylist <init>(Lgov/nist/javax/sip/SipProviderImpl;Lgov/nist/javax/sip/message/SIPResponse;)V
    .registers 6
    .param p1, "sipProvider"    # Lgov/nist/javax/sip/SipProviderImpl;
    .param p2, "sipResponse"    # Lgov/nist/javax/sip/message/SIPResponse;

    .line 613
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/stack/SIPDialog;-><init>(Lgov/nist/javax/sip/SipProviderImpl;)V

    .line 614
    invoke-virtual {p1}, Lgov/nist/javax/sip/SipProviderImpl;->getSipStack()Ljavax/sip/SipStack;

    move-result-object v0

    check-cast v0, Lgov/nist/javax/sip/stack/SIPTransactionStack;

    iput-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    .line 615
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p2}, Lgov/nist/javax/sip/stack/SIPDialog;->setLastResponse(Lgov/nist/javax/sip/stack/SIPTransaction;Lgov/nist/javax/sip/message/SIPResponse;)V

    .line 616
    invoke-virtual {p2}, Lgov/nist/javax/sip/message/SIPResponse;->getCSeq()Ljavax/sip/header/CSeqHeader;

    move-result-object v0

    invoke-interface {v0}, Ljavax/sip/header/CSeqHeader;->getSeqNumber()J

    move-result-wide v0

    iput-wide v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->localSequenceNumber:J

    .line 617
    iget-wide v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->localSequenceNumber:J

    iput-wide v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->originalLocalSequenceNumber:J

    .line 618
    invoke-virtual {p2}, Lgov/nist/javax/sip/message/SIPResponse;->getFrom()Ljavax/sip/header/FromHeader;

    move-result-object v0

    invoke-interface {v0}, Ljavax/sip/header/FromHeader;->getTag()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->myTag:Ljava/lang/String;

    .line 619
    invoke-virtual {p2}, Lgov/nist/javax/sip/message/SIPResponse;->getTo()Ljavax/sip/header/ToHeader;

    move-result-object v0

    invoke-interface {v0}, Ljavax/sip/header/ToHeader;->getTag()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->hisTag:Ljava/lang/String;

    .line 620
    invoke-virtual {p2}, Lgov/nist/javax/sip/message/SIPResponse;->getFrom()Ljavax/sip/header/FromHeader;

    move-result-object v0

    invoke-interface {v0}, Ljavax/sip/header/FromHeader;->getAddress()Ljavax/sip/address/Address;

    move-result-object v0

    iput-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->localParty:Ljavax/sip/address/Address;

    .line 621
    invoke-virtual {p2}, Lgov/nist/javax/sip/message/SIPResponse;->getTo()Ljavax/sip/header/ToHeader;

    move-result-object v0

    invoke-interface {v0}, Ljavax/sip/header/ToHeader;->getAddress()Ljavax/sip/address/Address;

    move-result-object v0

    iput-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->remoteParty:Ljavax/sip/address/Address;

    .line 622
    invoke-virtual {p2}, Lgov/nist/javax/sip/message/SIPResponse;->getCSeq()Ljavax/sip/header/CSeqHeader;

    move-result-object v0

    invoke-interface {v0}, Ljavax/sip/header/CSeqHeader;->getMethod()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->method:Ljava/lang/String;

    .line 623
    invoke-virtual {p2}, Lgov/nist/javax/sip/message/SIPResponse;->getCallId()Ljavax/sip/header/CallIdHeader;

    move-result-object v0

    iput-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->callIdHeader:Ljavax/sip/header/CallIdHeader;

    .line 624
    const/4 v0, 0x0

    iput-boolean v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->serverTransactionFlag:Z

    .line 625
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_85

    .line 626
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Creating a dialog : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 627
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    invoke-interface {v0}, Lgov/nist/core/StackLogger;->logStackTrace()V

    .line 629
    :cond_85
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    iget-boolean v0, v0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isBackToBackUserAgent:Z

    iput-boolean v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->isBackToBackUserAgent:Z

    .line 630
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/stack/SIPDialog;->addEventListener(Lgov/nist/javax/sip/stack/SIPDialogEventListener;)V

    .line 631
    return-void
.end method

.method public constructor greylist <init>(Lgov/nist/javax/sip/stack/SIPClientTransaction;Lgov/nist/javax/sip/message/SIPResponse;)V
    .registers 5
    .param p1, "transaction"    # Lgov/nist/javax/sip/stack/SIPClientTransaction;
    .param p2, "sipResponse"    # Lgov/nist/javax/sip/message/SIPResponse;

    .line 602
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/stack/SIPDialog;-><init>(Lgov/nist/javax/sip/stack/SIPTransaction;)V

    .line 603
    if-eqz p2, :cond_f

    .line 605
    invoke-virtual {p0, p1, p2}, Lgov/nist/javax/sip/stack/SIPDialog;->setLastResponse(Lgov/nist/javax/sip/stack/SIPTransaction;Lgov/nist/javax/sip/message/SIPResponse;)V

    .line 606
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    iget-boolean v0, v0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isBackToBackUserAgent:Z

    iput-boolean v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->isBackToBackUserAgent:Z

    .line 607
    return-void

    .line 604
    :cond_f
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null SipResponse"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor greylist <init>(Lgov/nist/javax/sip/stack/SIPTransaction;)V
    .registers 6
    .param p1, "transaction"    # Lgov/nist/javax/sip/stack/SIPTransaction;

    .line 569
    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPTransaction;->getSipProvider()Lgov/nist/javax/sip/SipProviderImpl;

    move-result-object v0

    invoke-direct {p0, v0}, Lgov/nist/javax/sip/stack/SIPDialog;-><init>(Lgov/nist/javax/sip/SipProviderImpl;)V

    .line 571
    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPTransaction;->getRequest()Ljavax/sip/message/Request;

    move-result-object v0

    check-cast v0, Lgov/nist/javax/sip/message/SIPRequest;

    .line 572
    .local v0, "sipRequest":Lgov/nist/javax/sip/message/SIPRequest;
    invoke-virtual {v0}, Lgov/nist/javax/sip/message/SIPRequest;->getCallId()Ljavax/sip/header/CallIdHeader;

    move-result-object v1

    iput-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->callIdHeader:Ljavax/sip/header/CallIdHeader;

    .line 573
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/message/SIPRequest;->getDialogId(Z)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->earlyDialogId:Ljava/lang/String;

    .line 574
    if-eqz p1, :cond_94

    .line 576
    iget-object v1, p1, Lgov/nist/javax/sip/stack/SIPTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    iput-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    .line 581
    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPTransaction;->getSipProvider()Lgov/nist/javax/sip/SipProviderImpl;

    move-result-object v1

    iput-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipProvider:Lgov/nist/javax/sip/SipProviderImpl;

    .line 582
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipProvider:Lgov/nist/javax/sip/SipProviderImpl;

    if-eqz v1, :cond_8c

    .line 584
    invoke-virtual {p0, p1}, Lgov/nist/javax/sip/stack/SIPDialog;->addTransaction(Lgov/nist/javax/sip/stack/SIPTransaction;)V

    .line 585
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v1

    if-eqz v1, :cond_80

    .line 586
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Creating a dialog : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 587
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "provider port = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipProvider:Lgov/nist/javax/sip/SipProviderImpl;

    .line 588
    invoke-virtual {v3}, Lgov/nist/javax/sip/SipProviderImpl;->getListeningPoint()Ljavax/sip/ListeningPoint;

    move-result-object v3

    invoke-interface {v3}, Ljavax/sip/ListeningPoint;->getPort()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 587
    invoke-interface {v1, v2}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 589
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v1

    invoke-interface {v1}, Lgov/nist/core/StackLogger;->logStackTrace()V

    .line 591
    :cond_80
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    iget-boolean v1, v1, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isBackToBackUserAgent:Z

    iput-boolean v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->isBackToBackUserAgent:Z

    .line 592
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/stack/SIPDialog;->addEventListener(Lgov/nist/javax/sip/stack/SIPDialogEventListener;)V

    .line 593
    return-void

    .line 583
    :cond_8c
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Null Provider!"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 575
    :cond_94
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Null tx"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private greylist addRoute(Lgov/nist/javax/sip/header/RecordRouteList;)V
    .registers 9
    .param p1, "recordRouteList"    # Lgov/nist/javax/sip/header/RecordRouteList;

    .line 743
    const-string v0, "NON LR route in Route set detected for dialog : "

    :try_start_2
    invoke-direct {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->isClientDialog()Z

    move-result v1

    if-eqz v1, :cond_4e

    .line 747
    new-instance v1, Lgov/nist/javax/sip/header/RouteList;

    invoke-direct {v1}, Lgov/nist/javax/sip/header/RouteList;-><init>()V

    iput-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->routeList:Lgov/nist/javax/sip/header/RouteList;

    .line 750
    invoke-virtual {p1}, Lgov/nist/javax/sip/header/RecordRouteList;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Lgov/nist/javax/sip/header/RecordRouteList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v1

    .line 751
    .local v1, "li":Ljava/util/ListIterator;
    const/4 v2, 0x1

    .line 752
    .local v2, "addRoute":Z
    :goto_18
    invoke-interface {v1}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v3

    if-eqz v3, :cond_4d

    .line 753
    invoke-interface {v1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgov/nist/javax/sip/header/RecordRoute;

    .line 755
    .local v3, "rr":Lgov/nist/javax/sip/header/RecordRoute;
    if-eqz v2, :cond_4c

    .line 756
    new-instance v4, Lgov/nist/javax/sip/header/Route;

    invoke-direct {v4}, Lgov/nist/javax/sip/header/Route;-><init>()V

    .line 757
    .local v4, "route":Lgov/nist/javax/sip/header/Route;
    invoke-virtual {v3}, Lgov/nist/javax/sip/header/RecordRoute;->getAddress()Ljavax/sip/address/Address;

    move-result-object v5

    check-cast v5, Lgov/nist/javax/sip/address/AddressImpl;

    .line 758
    invoke-virtual {v5}, Lgov/nist/javax/sip/address/AddressImpl;->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lgov/nist/javax/sip/address/AddressImpl;

    .line 760
    .local v5, "address":Lgov/nist/javax/sip/address/AddressImpl;
    invoke-virtual {v4, v5}, Lgov/nist/javax/sip/header/Route;->setAddress(Ljavax/sip/address/Address;)V

    .line 761
    invoke-virtual {v3}, Lgov/nist/javax/sip/header/RecordRoute;->getParameters()Lgov/nist/core/NameValueList;

    move-result-object v6

    invoke-virtual {v6}, Lgov/nist/core/NameValueList;->clone()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lgov/nist/core/NameValueList;

    invoke-virtual {v4, v6}, Lgov/nist/javax/sip/header/Route;->setParameters(Lgov/nist/core/NameValueList;)V

    .line 763
    iget-object v6, p0, Lgov/nist/javax/sip/stack/SIPDialog;->routeList:Lgov/nist/javax/sip/header/RouteList;

    invoke-virtual {v6, v4}, Lgov/nist/javax/sip/header/RouteList;->add(Lgov/nist/javax/sip/header/SIPHeader;)Z

    .line 765
    .end local v3    # "rr":Lgov/nist/javax/sip/header/RecordRoute;
    .end local v4    # "route":Lgov/nist/javax/sip/header/Route;
    .end local v5    # "address":Lgov/nist/javax/sip/address/AddressImpl;
    :cond_4c
    goto :goto_18

    .line 766
    .end local v1    # "li":Ljava/util/ListIterator;
    .end local v2    # "addRoute":Z
    :cond_4d
    goto :goto_8f

    .line 771
    :cond_4e
    new-instance v1, Lgov/nist/javax/sip/header/RouteList;

    invoke-direct {v1}, Lgov/nist/javax/sip/header/RouteList;-><init>()V

    iput-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->routeList:Lgov/nist/javax/sip/header/RouteList;

    .line 772
    invoke-virtual {p1}, Lgov/nist/javax/sip/header/RecordRouteList;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    .line 773
    .restart local v1    # "li":Ljava/util/ListIterator;
    const/4 v2, 0x1

    .line 774
    .restart local v2    # "addRoute":Z
    :goto_5a
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8f

    .line 775
    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgov/nist/javax/sip/header/RecordRoute;

    .line 777
    .restart local v3    # "rr":Lgov/nist/javax/sip/header/RecordRoute;
    if-eqz v2, :cond_8e

    .line 778
    new-instance v4, Lgov/nist/javax/sip/header/Route;

    invoke-direct {v4}, Lgov/nist/javax/sip/header/Route;-><init>()V

    .line 779
    .restart local v4    # "route":Lgov/nist/javax/sip/header/Route;
    invoke-virtual {v3}, Lgov/nist/javax/sip/header/RecordRoute;->getAddress()Ljavax/sip/address/Address;

    move-result-object v5

    check-cast v5, Lgov/nist/javax/sip/address/AddressImpl;

    .line 780
    invoke-virtual {v5}, Lgov/nist/javax/sip/address/AddressImpl;->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lgov/nist/javax/sip/address/AddressImpl;

    .line 781
    .restart local v5    # "address":Lgov/nist/javax/sip/address/AddressImpl;
    invoke-virtual {v4, v5}, Lgov/nist/javax/sip/header/Route;->setAddress(Ljavax/sip/address/Address;)V

    .line 782
    invoke-virtual {v3}, Lgov/nist/javax/sip/header/RecordRoute;->getParameters()Lgov/nist/core/NameValueList;

    move-result-object v6

    invoke-virtual {v6}, Lgov/nist/core/NameValueList;->clone()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lgov/nist/core/NameValueList;

    invoke-virtual {v4, v6}, Lgov/nist/javax/sip/header/Route;->setParameters(Lgov/nist/core/NameValueList;)V

    .line 783
    iget-object v6, p0, Lgov/nist/javax/sip/stack/SIPDialog;->routeList:Lgov/nist/javax/sip/header/RouteList;

    invoke-virtual {v6, v4}, Lgov/nist/javax/sip/header/RouteList;->add(Lgov/nist/javax/sip/header/SIPHeader;)Z
    :try_end_8e
    .catchall {:try_start_2 .. :try_end_8e} :catchall_eb

    .line 785
    .end local v3    # "rr":Lgov/nist/javax/sip/header/RecordRoute;
    .end local v4    # "route":Lgov/nist/javax/sip/header/Route;
    .end local v5    # "address":Lgov/nist/javax/sip/address/AddressImpl;
    :cond_8e
    goto :goto_5a

    .line 788
    .end local v1    # "li":Ljava/util/ListIterator;
    .end local v2    # "addRoute":Z
    :cond_8f
    :goto_8f
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v1

    invoke-interface {v1}, Lgov/nist/core/StackLogger;->isLoggingEnabled()Z

    move-result v1

    if-eqz v1, :cond_ea

    .line 789
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->routeList:Lgov/nist/javax/sip/header/RouteList;

    invoke-virtual {v1}, Lgov/nist/javax/sip/header/RouteList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 791
    .local v1, "it":Ljava/util/Iterator;
    :goto_a1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e9

    .line 792
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgov/nist/javax/sip/header/Route;

    invoke-virtual {v2}, Lgov/nist/javax/sip/header/Route;->getAddress()Ljavax/sip/address/Address;

    move-result-object v2

    invoke-interface {v2}, Ljavax/sip/address/Address;->getURI()Ljavax/sip/address/URI;

    move-result-object v2

    check-cast v2, Ljavax/sip/address/SipURI;

    .line 793
    .local v2, "sipUri":Ljavax/sip/address/SipURI;
    invoke-interface {v2}, Ljavax/sip/address/SipURI;->hasLrParam()Z

    move-result v3

    if-nez v3, :cond_e8

    .line 794
    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v3

    if-eqz v3, :cond_e8

    .line 795
    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lgov/nist/core/StackLogger;->logWarning(Ljava/lang/String;)V

    .line 797
    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v3

    invoke-interface {v3}, Lgov/nist/core/StackLogger;->logStackTrace()V

    .line 800
    .end local v2    # "sipUri":Ljavax/sip/address/SipURI;
    :cond_e8
    goto :goto_a1

    .line 801
    .end local v1    # "it":Ljava/util/Iterator;
    :cond_e9
    nop

    .line 803
    :cond_ea
    return-void

    .line 788
    :catchall_eb
    move-exception v1

    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v2

    invoke-interface {v2}, Lgov/nist/core/StackLogger;->isLoggingEnabled()Z

    move-result v2

    if-eqz v2, :cond_146

    .line 789
    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPDialog;->routeList:Lgov/nist/javax/sip/header/RouteList;

    invoke-virtual {v2}, Lgov/nist/javax/sip/header/RouteList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 791
    .local v2, "it":Ljava/util/Iterator;
    :goto_fe
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_146

    .line 792
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgov/nist/javax/sip/header/Route;

    invoke-virtual {v3}, Lgov/nist/javax/sip/header/Route;->getAddress()Ljavax/sip/address/Address;

    move-result-object v3

    invoke-interface {v3}, Ljavax/sip/address/Address;->getURI()Ljavax/sip/address/URI;

    move-result-object v3

    check-cast v3, Ljavax/sip/address/SipURI;

    .line 793
    .local v3, "sipUri":Ljavax/sip/address/SipURI;
    invoke-interface {v3}, Ljavax/sip/address/SipURI;->hasLrParam()Z

    move-result v4

    if-nez v4, :cond_145

    .line 794
    iget-object v4, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v4}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v4

    if-eqz v4, :cond_145

    .line 795
    iget-object v4, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v4}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lgov/nist/core/StackLogger;->logWarning(Ljava/lang/String;)V

    .line 797
    iget-object v4, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v4}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v4

    invoke-interface {v4}, Lgov/nist/core/StackLogger;->logStackTrace()V

    .line 800
    .end local v3    # "sipUri":Ljavax/sip/address/SipURI;
    :cond_145
    goto :goto_fe

    .line 802
    .end local v2    # "it":Ljava/util/Iterator;
    :cond_146
    throw v1
.end method

.method private declared-synchronized greylist addRoute(Lgov/nist/javax/sip/message/SIPResponse;)V
    .registers 5
    .param p1, "sipResponse"    # Lgov/nist/javax/sip/message/SIPResponse;

    monitor-enter p0

    .line 830
    :try_start_1
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_f8

    if-eqz v0, :cond_37

    .line 831
    :try_start_9
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setContact: dialogState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 832
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getState()Ljavax/sip/DialogState;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 831
    invoke-interface {v0, v1}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V
    :try_end_33
    .catchall {:try_start_9 .. :try_end_33} :catchall_34

    goto :goto_37

    .line 878
    :catchall_34
    move-exception v0

    goto/16 :goto_f9

    .line 834
    :cond_37
    :goto_37
    :try_start_37
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPResponse;->getStatusCode()I

    move-result v0
    :try_end_3b
    .catchall {:try_start_37 .. :try_end_3b} :catchall_f8

    const/16 v1, 0x64

    if-ne v0, v1, :cond_52

    .line 878
    :try_start_3f
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_50

    .line 879
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    invoke-interface {v0}, Lgov/nist/core/StackLogger;->logStackTrace()V
    :try_end_50
    .catchall {:try_start_3f .. :try_end_50} :catchall_10b

    .line 836
    .end local p0    # "this":Lgov/nist/javax/sip/stack/SIPDialog;
    :cond_50
    monitor-exit p0

    return-void

    .line 837
    :cond_52
    :try_start_52
    iget v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->dialogState:I

    sget v2, Lgov/nist/javax/sip/stack/SIPDialog;->TERMINATED_STATE:I
    :try_end_56
    .catchall {:try_start_52 .. :try_end_56} :catchall_f8

    if-ne v0, v2, :cond_6b

    .line 878
    :try_start_58
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_69

    .line 879
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    invoke-interface {v0}, Lgov/nist/core/StackLogger;->logStackTrace()V
    :try_end_69
    .catchall {:try_start_58 .. :try_end_69} :catchall_10b

    .line 839
    :cond_69
    monitor-exit p0

    return-void

    .line 840
    :cond_6b
    :try_start_6b
    iget v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->dialogState:I

    sget v2, Lgov/nist/javax/sip/stack/SIPDialog;->CONFIRMED_STATE:I

    if-ne v0, v2, :cond_af

    .line 844
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPResponse;->getStatusCode()I

    move-result v0

    div-int/2addr v0, v1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_9c

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->isServer()Z

    move-result v0

    if-nez v0, :cond_9c

    .line 845
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPResponse;->getContactHeaders()Lgov/nist/javax/sip/header/ContactList;

    move-result-object v0

    .line 846
    .local v0, "contactList":Lgov/nist/javax/sip/header/ContactList;
    if-eqz v0, :cond_9c

    .line 847
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPResponse;->getCSeq()Ljavax/sip/header/CSeqHeader;

    move-result-object v1

    invoke-interface {v1}, Ljavax/sip/header/CSeqHeader;->getMethod()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lgov/nist/javax/sip/message/SIPRequest;->isTargetRefresh(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9c

    .line 848
    invoke-virtual {v0}, Lgov/nist/javax/sip/header/ContactList;->getFirst()Lgov/nist/javax/sip/header/SIPHeader;

    move-result-object v1

    check-cast v1, Ljavax/sip/header/ContactHeader;

    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/stack/SIPDialog;->setRemoteTarget(Ljavax/sip/header/ContactHeader;)V
    :try_end_9c
    .catchall {:try_start_6b .. :try_end_9c} :catchall_f8

    .line 878
    .end local v0    # "contactList":Lgov/nist/javax/sip/header/ContactList;
    :cond_9c
    :try_start_9c
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_ad

    .line 879
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    invoke-interface {v0}, Lgov/nist/core/StackLogger;->logStackTrace()V
    :try_end_ad
    .catchall {:try_start_9c .. :try_end_ad} :catchall_10b

    .line 851
    :cond_ad
    monitor-exit p0

    return-void

    .line 855
    :cond_af
    :try_start_af
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->isServer()Z

    move-result v0

    if-nez v0, :cond_e5

    .line 858
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getState()Ljavax/sip/DialogState;

    move-result-object v0

    sget-object v1, Ljavax/sip/DialogState;->CONFIRMED:Ljavax/sip/DialogState;

    if-eq v0, v1, :cond_d6

    .line 859
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getState()Ljavax/sip/DialogState;

    move-result-object v0

    sget-object v1, Ljavax/sip/DialogState;->TERMINATED:Ljavax/sip/DialogState;

    if-eq v0, v1, :cond_d6

    .line 860
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPResponse;->getRecordRouteHeaders()Lgov/nist/javax/sip/header/RecordRouteList;

    move-result-object v0

    .line 863
    .local v0, "rrlist":Lgov/nist/javax/sip/header/RecordRouteList;
    if-eqz v0, :cond_cf

    .line 864
    invoke-direct {p0, v0}, Lgov/nist/javax/sip/stack/SIPDialog;->addRoute(Lgov/nist/javax/sip/header/RecordRouteList;)V

    goto :goto_d6

    .line 867
    :cond_cf
    new-instance v1, Lgov/nist/javax/sip/header/RouteList;

    invoke-direct {v1}, Lgov/nist/javax/sip/header/RouteList;-><init>()V

    iput-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->routeList:Lgov/nist/javax/sip/header/RouteList;

    .line 871
    .end local v0    # "rrlist":Lgov/nist/javax/sip/header/RecordRouteList;
    :cond_d6
    :goto_d6
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPResponse;->getContactHeaders()Lgov/nist/javax/sip/header/ContactList;

    move-result-object v0

    .line 872
    .local v0, "contactList":Lgov/nist/javax/sip/header/ContactList;
    if-eqz v0, :cond_e5

    .line 873
    invoke-virtual {v0}, Lgov/nist/javax/sip/header/ContactList;->getFirst()Lgov/nist/javax/sip/header/SIPHeader;

    move-result-object v1

    check-cast v1, Ljavax/sip/header/ContactHeader;

    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/stack/SIPDialog;->setRemoteTarget(Ljavax/sip/header/ContactHeader;)V
    :try_end_e5
    .catchall {:try_start_af .. :try_end_e5} :catchall_f8

    .line 878
    .end local v0    # "contactList":Lgov/nist/javax/sip/header/ContactList;
    :cond_e5
    :try_start_e5
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_f6

    .line 879
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    invoke-interface {v0}, Lgov/nist/core/StackLogger;->logStackTrace()V
    :try_end_f6
    .catchall {:try_start_e5 .. :try_end_f6} :catchall_10b

    .line 882
    :cond_f6
    monitor-exit p0

    return-void

    .line 878
    :catchall_f8
    move-exception v0

    :goto_f9
    :try_start_f9
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v1

    if-eqz v1, :cond_10a

    .line 879
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v1

    invoke-interface {v1}, Lgov/nist/core/StackLogger;->logStackTrace()V

    .line 881
    :cond_10a
    throw v0

    .line 829
    .end local p1    # "sipResponse":Lgov/nist/javax/sip/message/SIPResponse;
    :catchall_10b
    move-exception p1

    monitor-exit p0
    :try_end_10d
    .catchall {:try_start_f9 .. :try_end_10d} :catchall_10b

    throw p1
.end method

.method public static greylist createFromNOTIFY(Lgov/nist/javax/sip/stack/SIPClientTransaction;Lgov/nist/javax/sip/stack/SIPTransaction;)Lgov/nist/javax/sip/stack/SIPDialog;
    .registers 6
    .param p0, "subscribeTx"    # Lgov/nist/javax/sip/stack/SIPClientTransaction;
    .param p1, "notifyST"    # Lgov/nist/javax/sip/stack/SIPTransaction;

    .line 1383
    new-instance v0, Lgov/nist/javax/sip/stack/SIPDialog;

    invoke-direct {v0, p1}, Lgov/nist/javax/sip/stack/SIPDialog;-><init>(Lgov/nist/javax/sip/stack/SIPTransaction;)V

    .line 1387
    .local v0, "d":Lgov/nist/javax/sip/stack/SIPDialog;
    const/4 v1, 0x0

    iput-boolean v1, v0, Lgov/nist/javax/sip/stack/SIPDialog;->serverTransactionFlag:Z

    .line 1389
    iput-object p0, v0, Lgov/nist/javax/sip/stack/SIPDialog;->lastTransaction:Lgov/nist/javax/sip/stack/SIPTransaction;

    .line 1390
    invoke-static {v0, p0}, Lgov/nist/javax/sip/stack/SIPDialog;->storeFirstTransactionInfo(Lgov/nist/javax/sip/stack/SIPDialog;Lgov/nist/javax/sip/stack/SIPTransaction;)V

    .line 1391
    iput-boolean v1, v0, Lgov/nist/javax/sip/stack/SIPDialog;->terminateOnBye:Z

    .line 1392
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getCSeq()J

    move-result-wide v1

    iput-wide v1, v0, Lgov/nist/javax/sip/stack/SIPDialog;->localSequenceNumber:J

    .line 1393
    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPTransaction;->getRequest()Ljavax/sip/message/Request;

    move-result-object v1

    check-cast v1, Lgov/nist/javax/sip/message/SIPRequest;

    .line 1394
    .local v1, "not":Lgov/nist/javax/sip/message/SIPRequest;
    invoke-virtual {v1}, Lgov/nist/javax/sip/message/SIPRequest;->getCSeq()Ljavax/sip/header/CSeqHeader;

    move-result-object v2

    invoke-interface {v2}, Ljavax/sip/header/CSeqHeader;->getSeqNumber()J

    move-result-wide v2

    iput-wide v2, v0, Lgov/nist/javax/sip/stack/SIPDialog;->remoteSequenceNumber:J

    .line 1395
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lgov/nist/javax/sip/message/SIPRequest;->getDialogId(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lgov/nist/javax/sip/stack/SIPDialog;->setDialogId(Ljava/lang/String;)V

    .line 1396
    invoke-virtual {v1}, Lgov/nist/javax/sip/message/SIPRequest;->getToTag()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lgov/nist/javax/sip/stack/SIPDialog;->setLocalTag(Ljava/lang/String;)V

    .line 1397
    invoke-virtual {v1}, Lgov/nist/javax/sip/message/SIPRequest;->getFromTag()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lgov/nist/javax/sip/stack/SIPDialog;->setRemoteTag(Ljava/lang/String;)V

    .line 1400
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getLastResponse()Lgov/nist/javax/sip/message/SIPResponse;

    move-result-object v2

    invoke-virtual {v0, p0, v2}, Lgov/nist/javax/sip/stack/SIPDialog;->setLastResponse(Lgov/nist/javax/sip/stack/SIPTransaction;Lgov/nist/javax/sip/message/SIPResponse;)V

    .line 1403
    invoke-virtual {v1}, Lgov/nist/javax/sip/message/SIPRequest;->getTo()Ljavax/sip/header/ToHeader;

    move-result-object v2

    invoke-interface {v2}, Ljavax/sip/header/ToHeader;->getAddress()Ljavax/sip/address/Address;

    move-result-object v2

    iput-object v2, v0, Lgov/nist/javax/sip/stack/SIPDialog;->localParty:Ljavax/sip/address/Address;

    .line 1404
    invoke-virtual {v1}, Lgov/nist/javax/sip/message/SIPRequest;->getFrom()Ljavax/sip/header/FromHeader;

    move-result-object v2

    invoke-interface {v2}, Ljavax/sip/header/FromHeader;->getAddress()Ljavax/sip/address/Address;

    move-result-object v2

    iput-object v2, v0, Lgov/nist/javax/sip/stack/SIPDialog;->remoteParty:Ljavax/sip/address/Address;

    .line 1408
    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/stack/SIPDialog;->addRoute(Lgov/nist/javax/sip/message/SIPRequest;)V

    .line 1409
    sget v2, Lgov/nist/javax/sip/stack/SIPDialog;->CONFIRMED_STATE:I

    invoke-virtual {v0, v2}, Lgov/nist/javax/sip/stack/SIPDialog;->setState(I)V

    .line 1410
    return-object v0
.end method

.method private greylist createRequest(Ljava/lang/String;Lgov/nist/javax/sip/message/SIPResponse;)Ljavax/sip/message/Request;
    .registers 15
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "sipResponse"    # Lgov/nist/javax/sip/message/SIPResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    .line 1880
    if-eqz p1, :cond_1c2

    if-eqz p2, :cond_1c2

    .line 1883
    const-string v0, "CANCEL"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b9

    .line 1886
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getState()Ljavax/sip/DialogState;

    move-result-object v0

    if-eqz v0, :cond_18d

    .line 1887
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getState()Ljavax/sip/DialogState;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/sip/DialogState;->getValue()I

    move-result v0

    sget v1, Lgov/nist/javax/sip/stack/SIPDialog;->TERMINATED_STATE:I

    const-string v2, "BYE"

    if-ne v0, v1, :cond_2a

    .line 1888
    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_27

    goto :goto_2a

    :cond_27
    move-object v1, p2

    goto/16 :goto_18e

    .line 1889
    :cond_2a
    :goto_2a
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->isServer()Z

    move-result v0

    if-eqz v0, :cond_46

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getState()Ljavax/sip/DialogState;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/sip/DialogState;->getValue()I

    move-result v0

    sget v1, Lgov/nist/javax/sip/stack/SIPDialog;->EARLY_STATE:I

    if-ne v0, v1, :cond_46

    .line 1890
    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_43

    goto :goto_46

    :cond_43
    move-object v1, p2

    goto/16 :goto_18e

    .line 1894
    :cond_46
    :goto_46
    const/4 v0, 0x0

    .line 1895
    .local v0, "sipUri":Lgov/nist/javax/sip/address/SipUri;
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getRemoteTarget()Ljavax/sip/address/Address;

    move-result-object v1

    if-eqz v1, :cond_5e

    .line 1896
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getRemoteTarget()Ljavax/sip/address/Address;

    move-result-object v1

    invoke-interface {v1}, Ljavax/sip/address/Address;->getURI()Ljavax/sip/address/URI;

    move-result-object v1

    invoke-interface {v1}, Ljavax/sip/address/URI;->clone()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lgov/nist/javax/sip/address/SipUri;

    move-object v2, v0

    goto :goto_71

    .line 1898
    :cond_5e
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getRemoteParty()Ljavax/sip/address/Address;

    move-result-object v1

    invoke-interface {v1}, Ljavax/sip/address/Address;->getURI()Ljavax/sip/address/URI;

    move-result-object v1

    invoke-interface {v1}, Ljavax/sip/address/URI;->clone()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lgov/nist/javax/sip/address/SipUri;

    .line 1899
    invoke-virtual {v0}, Lgov/nist/javax/sip/address/SipUri;->clearUriParms()V

    move-object v2, v0

    .line 1902
    .end local v0    # "sipUri":Lgov/nist/javax/sip/address/SipUri;
    .local v2, "sipUri":Lgov/nist/javax/sip/address/SipUri;
    :goto_71
    new-instance v4, Lgov/nist/javax/sip/header/CSeq;

    invoke-direct {v4}, Lgov/nist/javax/sip/header/CSeq;-><init>()V

    .line 1904
    .local v4, "cseq":Lgov/nist/javax/sip/header/CSeq;
    :try_start_76
    invoke-virtual {v4, p1}, Lgov/nist/javax/sip/header/CSeq;->setMethod(Ljava/lang/String;)V

    .line 1905
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getLocalSeqNumber()J

    move-result-wide v0

    invoke-virtual {v4, v0, v1}, Lgov/nist/javax/sip/header/CSeq;->setSeqNumber(J)V
    :try_end_80
    .catch Ljava/lang/Exception; {:try_start_76 .. :try_end_80} :catch_81

    .line 1910
    goto :goto_98

    .line 1906
    :catch_81
    move-exception v0

    .line 1907
    .local v0, "ex":Ljava/lang/Exception;
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v1

    if-eqz v1, :cond_95

    .line 1908
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v1

    const-string v3, "Unexpected error"

    invoke-interface {v1, v3}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;)V

    .line 1909
    :cond_95
    invoke-static {v0}, Lgov/nist/core/InternalErrorHandler;->handleException(Ljava/lang/Exception;)V

    .line 1916
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_98
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipProvider:Lgov/nist/javax/sip/SipProviderImpl;

    .line 1917
    invoke-virtual {p2}, Lgov/nist/javax/sip/message/SIPResponse;->getTopmostVia()Lgov/nist/javax/sip/header/Via;

    move-result-object v1

    invoke-virtual {v1}, Lgov/nist/javax/sip/header/Via;->getTransport()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/SipProviderImpl;->getListeningPoint(Ljava/lang/String;)Ljavax/sip/ListeningPoint;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lgov/nist/javax/sip/ListeningPointImpl;

    .line 1918
    .local v7, "lp":Lgov/nist/javax/sip/ListeningPointImpl;
    if-nez v7, :cond_f6

    .line 1919
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v0

    const-string v1, "Cannot find listening point for transport "

    if-eqz v0, :cond_d7

    .line 1920
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1922
    invoke-virtual {p2}, Lgov/nist/javax/sip/message/SIPResponse;->getTopmostVia()Lgov/nist/javax/sip/header/Via;

    move-result-object v5

    invoke-virtual {v5}, Lgov/nist/javax/sip/header/Via;->getTransport()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1920
    invoke-interface {v0, v3}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;)V

    .line 1923
    :cond_d7
    new-instance v0, Ljavax/sip/SipException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1924
    invoke-virtual {p2}, Lgov/nist/javax/sip/message/SIPResponse;->getTopmostVia()Lgov/nist/javax/sip/header/Via;

    move-result-object v3

    invoke-virtual {v3}, Lgov/nist/javax/sip/header/Via;->getTransport()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1926
    :cond_f6
    invoke-virtual {v7}, Lgov/nist/javax/sip/ListeningPointImpl;->getViaHeader()Lgov/nist/javax/sip/header/Via;

    move-result-object v3

    .line 1928
    .local v3, "via":Lgov/nist/javax/sip/header/Via;
    new-instance v5, Lgov/nist/javax/sip/header/From;

    invoke-direct {v5}, Lgov/nist/javax/sip/header/From;-><init>()V

    .line 1929
    .local v5, "from":Lgov/nist/javax/sip/header/From;
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->localParty:Ljavax/sip/address/Address;

    invoke-virtual {v5, v0}, Lgov/nist/javax/sip/header/From;->setAddress(Ljavax/sip/address/Address;)V

    .line 1930
    new-instance v6, Lgov/nist/javax/sip/header/To;

    invoke-direct {v6}, Lgov/nist/javax/sip/header/To;-><init>()V

    .line 1931
    .local v6, "to":Lgov/nist/javax/sip/header/To;
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->remoteParty:Ljavax/sip/address/Address;

    invoke-virtual {v6, v0}, Lgov/nist/javax/sip/header/To;->setAddress(Ljavax/sip/address/Address;)V

    .line 1932
    move-object v1, p2

    .end local p2    # "sipResponse":Lgov/nist/javax/sip/message/SIPResponse;
    .local v1, "sipResponse":Lgov/nist/javax/sip/message/SIPResponse;
    invoke-virtual/range {v1 .. v6}, Lgov/nist/javax/sip/message/SIPResponse;->createRequest(Lgov/nist/javax/sip/address/SipUri;Lgov/nist/javax/sip/header/Via;Lgov/nist/javax/sip/header/CSeq;Lgov/nist/javax/sip/header/From;Lgov/nist/javax/sip/header/To;)Lgov/nist/javax/sip/message/SIPRequest;

    move-result-object p2

    .line 1941
    .local p2, "sipRequest":Lgov/nist/javax/sip/message/SIPRequest;
    invoke-static {p1}, Lgov/nist/javax/sip/message/SIPRequest;->isTargetRefresh(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13d

    .line 1942
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipProvider:Lgov/nist/javax/sip/SipProviderImpl;

    .line 1943
    invoke-virtual {v7}, Lgov/nist/javax/sip/ListeningPointImpl;->getTransport()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Lgov/nist/javax/sip/SipProviderImpl;->getListeningPoint(Ljava/lang/String;)Ljavax/sip/ListeningPoint;

    move-result-object v0

    check-cast v0, Lgov/nist/javax/sip/ListeningPointImpl;

    invoke-virtual {v0}, Lgov/nist/javax/sip/ListeningPointImpl;->createContactHeader()Ljavax/sip/header/ContactHeader;

    move-result-object v0

    .line 1945
    .local v0, "contactHeader":Ljavax/sip/header/ContactHeader;
    invoke-interface {v0}, Ljavax/sip/header/ContactHeader;->getAddress()Ljavax/sip/address/Address;

    move-result-object v8

    invoke-interface {v8}, Ljavax/sip/address/Address;->getURI()Ljavax/sip/address/URI;

    move-result-object v8

    check-cast v8, Ljavax/sip/address/SipURI;

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->isSecure()Z

    move-result v9

    invoke-interface {v8, v9}, Ljavax/sip/address/SipURI;->setSecure(Z)V

    .line 1946
    invoke-virtual {p2, v0}, Lgov/nist/javax/sip/message/SIPRequest;->setHeader(Ljavax/sip/header/Header;)V

    .line 1954
    .end local v0    # "contactHeader":Ljavax/sip/header/ContactHeader;
    :cond_13d
    :try_start_13d
    invoke-virtual {p2}, Lgov/nist/javax/sip/message/SIPRequest;->getCSeq()Ljavax/sip/header/CSeqHeader;

    move-result-object v0

    check-cast v0, Lgov/nist/javax/sip/header/CSeq;

    move-object v4, v0

    .line 1955
    iget-wide v8, p0, Lgov/nist/javax/sip/stack/SIPDialog;->localSequenceNumber:J

    const-wide/16 v10, 0x1

    add-long/2addr v8, v10

    invoke-virtual {v4, v8, v9}, Lgov/nist/javax/sip/header/CSeq;->setSeqNumber(J)V
    :try_end_14c
    .catch Ljavax/sip/InvalidArgumentException; {:try_start_13d .. :try_end_14c} :catch_14d

    .line 1959
    goto :goto_151

    .line 1957
    :catch_14d
    move-exception v0

    .line 1958
    .local v0, "ex":Ljavax/sip/InvalidArgumentException;
    invoke-static {v0}, Lgov/nist/core/InternalErrorHandler;->handleException(Ljava/lang/Exception;)V

    .line 1961
    .end local v0    # "ex":Ljavax/sip/InvalidArgumentException;
    :goto_151
    const-string v0, "SUBSCRIBE"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_162

    .line 1963
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->eventHeader:Ljavax/sip/header/EventHeader;

    if-eqz v0, :cond_162

    .line 1964
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->eventHeader:Ljavax/sip/header/EventHeader;

    invoke-virtual {p2, v0}, Lgov/nist/javax/sip/message/SIPRequest;->addHeader(Ljavax/sip/header/Header;)V

    .line 1980
    :cond_162
    :try_start_162
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getLocalTag()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_170

    .line 1981
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getLocalTag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lgov/nist/javax/sip/header/From;->setTag(Ljava/lang/String;)V

    goto :goto_173

    .line 1983
    :cond_170
    invoke-virtual {v5}, Lgov/nist/javax/sip/header/From;->removeTag()V

    .line 1985
    :goto_173
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getRemoteTag()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_181

    .line 1986
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getRemoteTag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lgov/nist/javax/sip/header/To;->setTag(Ljava/lang/String;)V

    goto :goto_184

    .line 1988
    :cond_181
    invoke-virtual {v6}, Lgov/nist/javax/sip/header/To;->removeTag()V
    :try_end_184
    .catch Ljava/text/ParseException; {:try_start_162 .. :try_end_184} :catch_185

    .line 1992
    :goto_184
    goto :goto_189

    .line 1990
    :catch_185
    move-exception v0

    .line 1991
    .local v0, "ex":Ljava/text/ParseException;
    invoke-static {v0}, Lgov/nist/core/InternalErrorHandler;->handleException(Ljava/lang/Exception;)V

    .line 1995
    .end local v0    # "ex":Ljava/text/ParseException;
    :goto_189
    invoke-direct {p0, p2}, Lgov/nist/javax/sip/stack/SIPDialog;->updateRequest(Lgov/nist/javax/sip/message/SIPRequest;)V

    .line 1997
    return-object p2

    .line 1886
    .end local v1    # "sipResponse":Lgov/nist/javax/sip/message/SIPResponse;
    .end local v2    # "sipUri":Lgov/nist/javax/sip/address/SipUri;
    .end local v3    # "via":Lgov/nist/javax/sip/header/Via;
    .end local v4    # "cseq":Lgov/nist/javax/sip/header/CSeq;
    .end local v5    # "from":Lgov/nist/javax/sip/header/From;
    .end local v6    # "to":Lgov/nist/javax/sip/header/To;
    .end local v7    # "lp":Lgov/nist/javax/sip/ListeningPointImpl;
    .local p2, "sipResponse":Lgov/nist/javax/sip/message/SIPResponse;
    :cond_18d
    move-object v1, p2

    .line 1891
    .end local p2    # "sipResponse":Lgov/nist/javax/sip/message/SIPResponse;
    .restart local v1    # "sipResponse":Lgov/nist/javax/sip/message/SIPResponse;
    :goto_18e
    new-instance p2, Ljavax/sip/SipException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Dialog  "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getDialogId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " not yet established or terminated "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1892
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getState()Ljavax/sip/DialogState;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 1884
    .end local v1    # "sipResponse":Lgov/nist/javax/sip/message/SIPResponse;
    .restart local p2    # "sipResponse":Lgov/nist/javax/sip/message/SIPResponse;
    :cond_1b9
    move-object v1, p2

    .end local p2    # "sipResponse":Lgov/nist/javax/sip/message/SIPResponse;
    .restart local v1    # "sipResponse":Lgov/nist/javax/sip/message/SIPResponse;
    new-instance p2, Ljavax/sip/SipException;

    const-string v0, "Dialog.createRequest(): Invalid request"

    invoke-direct {p2, v0}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 1880
    .end local v1    # "sipResponse":Lgov/nist/javax/sip/message/SIPResponse;
    .restart local p2    # "sipResponse":Lgov/nist/javax/sip/message/SIPResponse;
    :cond_1c2
    move-object v1, p2

    .line 1881
    .end local p2    # "sipResponse":Lgov/nist/javax/sip/message/SIPResponse;
    .restart local v1    # "sipResponse":Lgov/nist/javax/sip/message/SIPResponse;
    new-instance p2, Ljava/lang/NullPointerException;

    const-string v0, "null argument"

    invoke-direct {p2, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private greylist doTargetRefresh(Lgov/nist/javax/sip/message/SIPMessage;)V
    .registers 4
    .param p1, "sipMessage"    # Lgov/nist/javax/sip/message/SIPMessage;

    .line 2843
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPMessage;->getContactHeaders()Lgov/nist/javax/sip/header/ContactList;

    move-result-object v0

    .line 2849
    .local v0, "contactList":Lgov/nist/javax/sip/header/ContactList;
    if-eqz v0, :cond_f

    .line 2851
    invoke-virtual {v0}, Lgov/nist/javax/sip/header/ContactList;->getFirst()Lgov/nist/javax/sip/header/SIPHeader;

    move-result-object v1

    check-cast v1, Lgov/nist/javax/sip/header/Contact;

    .line 2852
    .local v1, "contact":Lgov/nist/javax/sip/header/Contact;
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/stack/SIPDialog;->setRemoteTarget(Ljavax/sip/header/ContactHeader;)V

    .line 2856
    .end local v1    # "contact":Lgov/nist/javax/sip/header/Contact;
    :cond_f
    return-void
.end method

.method private declared-synchronized greylist getRouteList()Lgov/nist/javax/sip/header/RouteList;
    .registers 5

    monitor-enter p0

    .line 890
    :try_start_1
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 891
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getRouteList "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 894
    .end local p0    # "this":Lgov/nist/javax/sip/stack/SIPDialog;
    :cond_25
    new-instance v0, Lgov/nist/javax/sip/header/RouteList;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/RouteList;-><init>()V

    .line 896
    .local v0, "retval":Lgov/nist/javax/sip/header/RouteList;
    new-instance v1, Lgov/nist/javax/sip/header/RouteList;

    invoke-direct {v1}, Lgov/nist/javax/sip/header/RouteList;-><init>()V

    .line 897
    .end local v0    # "retval":Lgov/nist/javax/sip/header/RouteList;
    .local v1, "retval":Lgov/nist/javax/sip/header/RouteList;
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->routeList:Lgov/nist/javax/sip/header/RouteList;

    if-eqz v0, :cond_50

    .line 898
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->routeList:Lgov/nist/javax/sip/header/RouteList;

    invoke-virtual {v0}, Lgov/nist/javax/sip/header/RouteList;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    .line 899
    .local v0, "li":Ljava/util/ListIterator;
    :goto_39
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_50

    .line 900
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgov/nist/javax/sip/header/Route;

    .line 901
    .local v2, "route":Lgov/nist/javax/sip/header/Route;
    invoke-virtual {v2}, Lgov/nist/javax/sip/header/Route;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgov/nist/javax/sip/header/Route;

    invoke-virtual {v1, v3}, Lgov/nist/javax/sip/header/RouteList;->add(Lgov/nist/javax/sip/header/SIPHeader;)Z

    .line 902
    nop

    .end local v2    # "route":Lgov/nist/javax/sip/header/Route;
    goto :goto_39

    .line 905
    .end local v0    # "li":Ljava/util/ListIterator;
    :cond_50
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_d1

    .line 906
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    const-string v2, "----- "

    invoke-interface {v0, v2}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 907
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getRouteList for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 908
    nop

    .line 909
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RouteList = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lgov/nist/javax/sip/header/RouteList;->encode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 910
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->routeList:Lgov/nist/javax/sip/header/RouteList;

    if-eqz v0, :cond_c6

    .line 911
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "myRouteList = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPDialog;->routeList:Lgov/nist/javax/sip/header/RouteList;

    invoke-virtual {v3}, Lgov/nist/javax/sip/header/RouteList;->encode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 912
    :cond_c6
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    const-string v2, "----- "

    invoke-interface {v0, v2}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V
    :try_end_d1
    .catchall {:try_start_1 .. :try_end_d1} :catchall_d3

    .line 914
    :cond_d1
    monitor-exit p0

    return-object v1

    .line 889
    .end local v1    # "retval":Lgov/nist/javax/sip/header/RouteList;
    :catchall_d3
    move-exception v0

    :try_start_d4
    monitor-exit p0
    :try_end_d5
    .catchall {:try_start_d4 .. :try_end_d5} :catchall_d3

    throw v0
.end method

.method private greylist isClientDialog()Z
    .registers 3

    .line 653
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getFirstTransaction()Ljavax/sip/Transaction;

    move-result-object v0

    check-cast v0, Lgov/nist/javax/sip/stack/SIPTransaction;

    .line 654
    .local v0, "transaction":Lgov/nist/javax/sip/stack/SIPTransaction;
    instance-of v1, v0, Lgov/nist/javax/sip/stack/SIPClientTransaction;

    return v1
.end method

.method private static final greylist optionPresent(Ljava/util/ListIterator;Ljava/lang/String;)Z
    .registers 4
    .param p0, "l"    # Ljava/util/ListIterator;
    .param p1, "option"    # Ljava/lang/String;

    .line 2859
    nop

    :goto_1
    invoke-interface {p0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 2860
    invoke-interface {p0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/sip/header/OptionTag;

    .line 2861
    .local v0, "opt":Ljavax/sip/header/OptionTag;
    if-eqz v0, :cond_1b

    invoke-interface {v0}, Ljavax/sip/header/OptionTag;->getOptionTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 2862
    const/4 v1, 0x1

    return v1

    .line 2863
    .end local v0    # "opt":Ljavax/sip/header/OptionTag;
    :cond_1b
    goto :goto_1

    .line 2864
    :cond_1c
    const/4 v0, 0x0

    return v0
.end method

.method private greylist printRouteList()V
    .registers 4

    .line 640
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_46

    .line 641
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "this : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 642
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "printRouteList : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPDialog;->routeList:Lgov/nist/javax/sip/header/RouteList;

    invoke-virtual {v2}, Lgov/nist/javax/sip/header/RouteList;->encode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 644
    :cond_46
    return-void
.end method

.method private greylist raiseErrorEvent(I)V
    .registers 6
    .param p1, "dialogTimeoutError"    # I

    .line 689
    new-instance v0, Lgov/nist/javax/sip/stack/SIPDialogErrorEvent;

    invoke-direct {v0, p0, p1}, Lgov/nist/javax/sip/stack/SIPDialogErrorEvent;-><init>(Lgov/nist/javax/sip/stack/SIPDialog;I)V

    .line 692
    .local v0, "newErrorEvent":Lgov/nist/javax/sip/stack/SIPDialogErrorEvent;
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->eventListeners:Ljava/util/Set;

    monitor-enter v1

    .line 693
    :try_start_8
    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPDialog;->eventListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 694
    .local v2, "listenerIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lgov/nist/javax/sip/stack/SIPDialogEventListener;>;"
    :goto_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 696
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgov/nist/javax/sip/stack/SIPDialogEventListener;

    .line 697
    .local v3, "nextListener":Lgov/nist/javax/sip/stack/SIPDialogEventListener;
    invoke-interface {v3, v0}, Lgov/nist/javax/sip/stack/SIPDialogEventListener;->dialogErrorEvent(Lgov/nist/javax/sip/stack/SIPDialogErrorEvent;)V

    goto :goto_e

    .line 699
    .end local v3    # "nextListener":Lgov/nist/javax/sip/stack/SIPDialogEventListener;
    :cond_1e
    monitor-exit v1
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_34

    .line 701
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->eventListeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 704
    const/4 v1, 0x2

    if-eq p1, v1, :cond_30

    const/4 v1, 0x1

    if-eq p1, v1, :cond_30

    const/4 v1, 0x3

    if-eq p1, v1, :cond_30

    .line 707
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->delete()V

    .line 710
    :cond_30
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->stopTimer()V

    .line 711
    return-void

    .line 699
    .end local v2    # "listenerIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lgov/nist/javax/sip/stack/SIPDialogEventListener;>;"
    :catchall_34
    move-exception v2

    :try_start_35
    monitor-exit v1
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_34

    throw v2
.end method

.method private greylist raiseIOException(Ljava/lang/String;ILjava/lang/String;)V
    .registers 7
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "protocol"    # Ljava/lang/String;

    .line 669
    new-instance v0, Ljavax/sip/IOExceptionEvent;

    invoke-direct {v0, p0, p1, p2, p3}, Ljavax/sip/IOExceptionEvent;-><init>(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/String;)V

    .line 670
    .local v0, "ioError":Ljavax/sip/IOExceptionEvent;
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipProvider:Lgov/nist/javax/sip/SipProviderImpl;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lgov/nist/javax/sip/SipProviderImpl;->handleEvent(Ljava/util/EventObject;Lgov/nist/javax/sip/stack/SIPTransaction;)V

    .line 672
    sget v1, Lgov/nist/javax/sip/stack/SIPDialog;->TERMINATED_STATE:I

    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/stack/SIPDialog;->setState(I)V

    .line 673
    return-void
.end method

.method private greylist recordStackTrace()V
    .registers 4

    .line 557
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 558
    .local v0, "stringWriter":Ljava/io/StringWriter;
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 559
    .local v1, "writer":Ljava/io/PrintWriter;
    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 560
    invoke-virtual {v0}, Ljava/io/StringWriter;->getBuffer()Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lgov/nist/javax/sip/stack/SIPDialog;->stackTrace:Ljava/lang/String;

    .line 561
    return-void
.end method

.method private greylist sendAck(Ljavax/sip/message/Request;Z)V
    .registers 16
    .param p1, "request"    # Ljavax/sip/message/Request;
    .param p2, "throwIOExceptionAsSipException"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    .line 934
    move-object v0, p1

    check-cast v0, Lgov/nist/javax/sip/message/SIPRequest;

    .line 935
    .local v0, "ackRequest":Lgov/nist/javax/sip/message/SIPRequest;
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v1

    if-eqz v1, :cond_27

    .line 936
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendAck"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 938
    :cond_27
    invoke-virtual {v0}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ACK"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2dd

    .line 940
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getState()Ljavax/sip/DialogState;

    move-result-object v1

    if-eqz v1, :cond_28e

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getState()Ljavax/sip/DialogState;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/sip/DialogState;->getValue()I

    move-result v1

    sget v2, Lgov/nist/javax/sip/stack/SIPDialog;->EARLY_STATE:I

    if-ne v1, v2, :cond_47

    goto/16 :goto_28e

    .line 948
    :cond_47
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getCallId()Ljavax/sip/header/CallIdHeader;

    move-result-object v1

    invoke-interface {v1}, Ljavax/sip/header/CallIdHeader;->getCallId()Ljava/lang/String;

    move-result-object v1

    move-object v2, p1

    check-cast v2, Lgov/nist/javax/sip/message/SIPRequest;

    invoke-virtual {v2}, Lgov/nist/javax/sip/message/SIPRequest;->getCallId()Ljavax/sip/header/CallIdHeader;

    move-result-object v2

    invoke-interface {v2}, Ljavax/sip/header/CallIdHeader;->getCallId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d0

    .line 949
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v1

    if-eqz v1, :cond_c8

    .line 950
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CallID "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getCallId()Ljavax/sip/header/CallIdHeader;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;)V

    .line 951
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RequestCallID = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 952
    invoke-virtual {v0}, Lgov/nist/javax/sip/message/SIPRequest;->getCallId()Ljavax/sip/header/CallIdHeader;

    move-result-object v3

    invoke-interface {v3}, Ljavax/sip/header/CallIdHeader;->getCallId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 951
    invoke-interface {v1, v2}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;)V

    .line 953
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dialog =  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;)V

    .line 955
    :cond_c8
    new-instance v1, Ljavax/sip/SipException;

    const-string v2, "Bad call ID in request"

    invoke-direct {v1, v2}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 958
    :cond_d0
    :try_start_d0
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v1

    if-eqz v1, :cond_134

    .line 959
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setting from tag For outgoing ACK= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 960
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getLocalTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 959
    invoke-interface {v1, v2}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 961
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setting To tag for outgoing ACK = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 962
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getRemoteTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 961
    invoke-interface {v1, v2}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 963
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ack = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 965
    :cond_134
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getLocalTag()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_145

    .line 966
    invoke-virtual {v0}, Lgov/nist/javax/sip/message/SIPRequest;->getFrom()Ljavax/sip/header/FromHeader;

    move-result-object v1

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getLocalTag()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljavax/sip/header/FromHeader;->setTag(Ljava/lang/String;)V

    .line 967
    :cond_145
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getRemoteTag()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_156

    .line 968
    invoke-virtual {v0}, Lgov/nist/javax/sip/message/SIPRequest;->getTo()Ljavax/sip/header/ToHeader;

    move-result-object v1

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getRemoteTag()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljavax/sip/header/ToHeader;->setTag(Ljava/lang/String;)V
    :try_end_156
    .catch Ljava/text/ParseException; {:try_start_d0 .. :try_end_156} :catch_283

    .line 971
    :cond_156
    nop

    .line 973
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v1, v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getNextHop(Lgov/nist/javax/sip/message/SIPRequest;)Ljavax/sip/address/Hop;

    move-result-object v1

    .line 975
    .local v1, "hop":Ljavax/sip/address/Hop;
    if-eqz v1, :cond_27b

    .line 978
    const/4 v2, 0x1

    :try_start_160
    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v3

    if-eqz v3, :cond_184

    .line 979
    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "hop = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 980
    :cond_184
    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipProvider:Lgov/nist/javax/sip/SipProviderImpl;

    .line 981
    invoke-interface {v1}, Ljavax/sip/address/Hop;->getTransport()Ljava/lang/String;

    move-result-object v4

    .line 980
    invoke-virtual {v3, v4}, Lgov/nist/javax/sip/SipProviderImpl;->getListeningPoint(Ljava/lang/String;)Ljavax/sip/ListeningPoint;

    move-result-object v3

    check-cast v3, Lgov/nist/javax/sip/ListeningPointImpl;

    .line 982
    .local v3, "lp":Lgov/nist/javax/sip/ListeningPointImpl;
    if-eqz v3, :cond_20b

    .line 985
    invoke-interface {v1}, Ljavax/sip/address/Hop;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v4

    .line 986
    .local v4, "inetAddress":Ljava/net/InetAddress;
    invoke-virtual {v3}, Lgov/nist/javax/sip/ListeningPointImpl;->getMessageProcessor()Lgov/nist/javax/sip/stack/MessageProcessor;

    move-result-object v5

    .line 987
    invoke-interface {v1}, Ljavax/sip/address/Hop;->getPort()I

    move-result v6

    .line 986
    invoke-virtual {v5, v4, v6}, Lgov/nist/javax/sip/stack/MessageProcessor;->createMessageChannel(Ljava/net/InetAddress;I)Lgov/nist/javax/sip/stack/MessageChannel;

    move-result-object v5

    .line 988
    .local v5, "messageChannel":Lgov/nist/javax/sip/stack/MessageChannel;
    const/4 v6, 0x0

    .line 989
    .local v6, "releaseAckSem":Z
    move-object v7, p1

    check-cast v7, Lgov/nist/javax/sip/message/SIPRequest;

    invoke-virtual {v7}, Lgov/nist/javax/sip/message/SIPRequest;->getCSeq()Ljavax/sip/header/CSeqHeader;

    move-result-object v7

    invoke-interface {v7}, Ljavax/sip/header/CSeqHeader;->getSeqNumber()J

    move-result-wide v7

    .line 990
    .local v7, "cseqNo":J
    invoke-virtual {p0, v7, v8}, Lgov/nist/javax/sip/stack/SIPDialog;->isAckSent(J)Z

    move-result v9

    if-nez v9, :cond_1b9

    .line 991
    const/4 v6, 0x1

    .line 994
    :cond_1b9
    invoke-direct {p0, v0}, Lgov/nist/javax/sip/stack/SIPDialog;->setLastAckSent(Lgov/nist/javax/sip/message/SIPRequest;)V

    .line 995
    invoke-virtual {v5, v0}, Lgov/nist/javax/sip/stack/MessageChannel;->sendMessage(Lgov/nist/javax/sip/message/SIPMessage;)V

    .line 997
    iput-boolean v2, p0, Lgov/nist/javax/sip/stack/SIPDialog;->isAcknowledged:Z

    .line 998
    iget-wide v9, p0, Lgov/nist/javax/sip/stack/SIPDialog;->highestSequenceNumberAcknowledged:J

    .line 999
    invoke-virtual {v0}, Lgov/nist/javax/sip/message/SIPRequest;->getCSeq()Ljavax/sip/header/CSeqHeader;

    move-result-object v11

    invoke-interface {v11}, Ljavax/sip/header/CSeqHeader;->getSeqNumber()J

    move-result-wide v11

    .line 998
    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v9

    iput-wide v9, p0, Lgov/nist/javax/sip/stack/SIPDialog;->highestSequenceNumberAcknowledged:J

    .line 1000
    if-eqz v6, :cond_1dc

    iget-boolean v9, p0, Lgov/nist/javax/sip/stack/SIPDialog;->isBackToBackUserAgent:Z

    if-eqz v9, :cond_1dc

    .line 1001
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->releaseAckSem()V

    goto/16 :goto_263

    .line 1003
    :cond_1dc
    iget-object v9, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v9}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v9

    if-eqz v9, :cond_263

    .line 1004
    iget-object v9, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v9}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Not releasing ack sem for "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " isAckSent "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto :goto_263

    .line 983
    .end local v4    # "inetAddress":Ljava/net/InetAddress;
    .end local v5    # "messageChannel":Lgov/nist/javax/sip/stack/MessageChannel;
    .end local v6    # "releaseAckSem":Z
    .end local v7    # "cseqNo":J
    :cond_20b
    new-instance v4, Ljavax/sip/SipException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No listening point for this provider registered at "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    .end local v0    # "ackRequest":Lgov/nist/javax/sip/message/SIPRequest;
    .end local v1    # "hop":Ljavax/sip/address/Hop;
    .end local p0    # "this":Lgov/nist/javax/sip/stack/SIPDialog;
    .end local p1    # "request":Ljavax/sip/message/Request;
    .end local p2    # "throwIOExceptionAsSipException":Z
    throw v4
    :try_end_224
    .catch Ljava/io/IOException; {:try_start_160 .. :try_end_224} :catch_251
    .catch Ljavax/sip/SipException; {:try_start_160 .. :try_end_224} :catch_23e
    .catch Ljava/lang/Exception; {:try_start_160 .. :try_end_224} :catch_224

    .line 1015
    .end local v3    # "lp":Lgov/nist/javax/sip/ListeningPointImpl;
    .restart local v0    # "ackRequest":Lgov/nist/javax/sip/message/SIPRequest;
    .restart local v1    # "hop":Ljavax/sip/address/Hop;
    .restart local p0    # "this":Lgov/nist/javax/sip/stack/SIPDialog;
    .restart local p1    # "request":Ljavax/sip/message/Request;
    .restart local p2    # "throwIOExceptionAsSipException":Z
    :catch_224
    move-exception v2

    .line 1016
    .local v2, "ex":Ljava/lang/Exception;
    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v3

    if-eqz v3, :cond_236

    .line 1017
    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v3

    invoke-interface {v3, v2}, Lgov/nist/core/StackLogger;->logException(Ljava/lang/Throwable;)V

    .line 1018
    :cond_236
    new-instance v3, Ljavax/sip/SipException;

    const-string v4, "Could not create message channel"

    invoke-direct {v3, v4, v2}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 1011
    .end local v2    # "ex":Ljava/lang/Exception;
    :catch_23e
    move-exception v2

    .line 1012
    .local v2, "ex":Ljavax/sip/SipException;
    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v3

    if-eqz v3, :cond_250

    .line 1013
    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v3

    invoke-interface {v3, v2}, Lgov/nist/core/StackLogger;->logException(Ljava/lang/Throwable;)V

    .line 1014
    :cond_250
    throw v2

    .line 1007
    .end local v2    # "ex":Ljavax/sip/SipException;
    :catch_251
    move-exception v3

    .line 1008
    .local v3, "ex":Ljava/io/IOException;
    if-nez p2, :cond_273

    .line 1010
    invoke-interface {v1}, Ljavax/sip/address/Hop;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1}, Ljavax/sip/address/Hop;->getPort()I

    move-result v5

    invoke-interface {v1}, Ljavax/sip/address/Hop;->getTransport()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v4, v5, v6}, Lgov/nist/javax/sip/stack/SIPDialog;->raiseIOException(Ljava/lang/String;ILjava/lang/String;)V

    .line 1019
    .end local v3    # "ex":Ljava/io/IOException;
    :cond_263
    :goto_263
    nop

    .line 1020
    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPDialog;->dialogDeleteTask:Lgov/nist/javax/sip/stack/SIPDialog$DialogDeleteTask;

    if-eqz v3, :cond_270

    .line 1021
    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPDialog;->dialogDeleteTask:Lgov/nist/javax/sip/stack/SIPDialog$DialogDeleteTask;

    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/SIPDialog$DialogDeleteTask;->cancel()Z

    .line 1022
    const/4 v3, 0x0

    iput-object v3, p0, Lgov/nist/javax/sip/stack/SIPDialog;->dialogDeleteTask:Lgov/nist/javax/sip/stack/SIPDialog$DialogDeleteTask;

    .line 1024
    :cond_270
    iput-boolean v2, p0, Lgov/nist/javax/sip/stack/SIPDialog;->ackSeen:Z

    .line 1026
    return-void

    .line 1009
    .restart local v3    # "ex":Ljava/io/IOException;
    :cond_273
    new-instance v2, Ljavax/sip/SipException;

    const-string v4, "Could not send ack"

    invoke-direct {v2, v4, v3}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 976
    .end local v3    # "ex":Ljava/io/IOException;
    :cond_27b
    new-instance v2, Ljavax/sip/SipException;

    const-string v3, "No route!"

    invoke-direct {v2, v3}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 969
    .end local v1    # "hop":Ljavax/sip/address/Hop;
    :catch_283
    move-exception v1

    .line 970
    .local v1, "ex":Ljava/text/ParseException;
    new-instance v2, Ljavax/sip/SipException;

    invoke-virtual {v1}, Ljava/text/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 941
    .end local v1    # "ex":Ljava/text/ParseException;
    :cond_28e
    :goto_28e
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v1

    if-eqz v1, :cond_2c0

    .line 942
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bad Dialog State for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " dialogID = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 943
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getDialogId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 942
    invoke-interface {v1, v2}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;)V

    .line 945
    :cond_2c0
    new-instance v1, Ljavax/sip/SipException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bad dialog state "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getState()Ljavax/sip/DialogState;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 939
    :cond_2dd
    new-instance v1, Ljavax/sip/SipException;

    const-string v2, "Bad request method -- should be ACK"

    invoke-direct {v1, v2}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private greylist setCallId(Lgov/nist/javax/sip/message/SIPRequest;)V
    .registers 3
    .param p1, "sipRequest"    # Lgov/nist/javax/sip/message/SIPRequest;

    .line 1767
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPRequest;->getCallId()Ljavax/sip/header/CallIdHeader;

    move-result-object v0

    iput-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->callIdHeader:Ljavax/sip/header/CallIdHeader;

    .line 1768
    return-void
.end method

.method private greylist setLastAckReceived(Lgov/nist/javax/sip/message/SIPRequest;)V
    .registers 2
    .param p1, "lastAckReceived"    # Lgov/nist/javax/sip/message/SIPRequest;

    .line 3237
    iput-object p1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->lastAckReceived:Lgov/nist/javax/sip/message/SIPRequest;

    .line 3238
    return-void
.end method

.method private greylist setLastAckSent(Lgov/nist/javax/sip/message/SIPRequest;)V
    .registers 2
    .param p1, "lastAckSent"    # Lgov/nist/javax/sip/message/SIPRequest;

    .line 3251
    iput-object p1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->lastAckSent:Lgov/nist/javax/sip/message/SIPRequest;

    .line 3252
    return-void
.end method

.method private greylist setLocalParty(Lgov/nist/javax/sip/message/SIPMessage;)V
    .registers 3
    .param p1, "sipMessage"    # Lgov/nist/javax/sip/message/SIPMessage;

    .line 1781
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->isServer()Z

    move-result v0

    if-nez v0, :cond_11

    .line 1782
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPMessage;->getFrom()Ljavax/sip/header/FromHeader;

    move-result-object v0

    invoke-interface {v0}, Ljavax/sip/header/FromHeader;->getAddress()Ljavax/sip/address/Address;

    move-result-object v0

    iput-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->localParty:Ljavax/sip/address/Address;

    goto :goto_1b

    .line 1784
    :cond_11
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPMessage;->getTo()Ljavax/sip/header/ToHeader;

    move-result-object v0

    invoke-interface {v0}, Ljavax/sip/header/ToHeader;->getAddress()Ljavax/sip/address/Address;

    move-result-object v0

    iput-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->localParty:Ljavax/sip/address/Address;

    .line 1786
    :goto_1b
    return-void
.end method

.method private greylist setLocalSequenceNumber(J)V
    .registers 7
    .param p1, "lCseq"    # J

    .line 1626
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_30

    .line 1627
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setLocalSequenceNumber: original  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lgov/nist/javax/sip/stack/SIPDialog;->localSequenceNumber:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " new  = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 1630
    :cond_30
    iget-wide v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->localSequenceNumber:J

    cmp-long v0, p1, v0

    if-lez v0, :cond_39

    .line 1632
    iput-wide p1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->localSequenceNumber:J

    .line 1633
    return-void

    .line 1631
    :cond_39
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Sequence number should not decrease !"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist setLocalTag(Ljava/lang/String;)V
    .registers 5
    .param p1, "mytag"    # Ljava/lang/String;

    .line 1734
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_39

    .line 1735
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set Local tag "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPDialog;->dialogId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 1736
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    invoke-interface {v0}, Lgov/nist/core/StackLogger;->logStackTrace()V

    .line 1739
    :cond_39
    iput-object p1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->myTag:Ljava/lang/String;

    .line 1741
    return-void
.end method

.method private greylist setRemoteParty(Lgov/nist/javax/sip/message/SIPMessage;)V
    .registers 5
    .param p1, "sipMessage"    # Lgov/nist/javax/sip/message/SIPMessage;

    .line 720
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->isServer()Z

    move-result v0

    if-nez v0, :cond_11

    .line 722
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPMessage;->getTo()Ljavax/sip/header/ToHeader;

    move-result-object v0

    invoke-interface {v0}, Ljavax/sip/header/ToHeader;->getAddress()Ljavax/sip/address/Address;

    move-result-object v0

    iput-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->remoteParty:Ljavax/sip/address/Address;

    goto :goto_1b

    .line 724
    :cond_11
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPMessage;->getFrom()Ljavax/sip/header/FromHeader;

    move-result-object v0

    invoke-interface {v0}, Ljavax/sip/header/FromHeader;->getAddress()Ljavax/sip/address/Address;

    move-result-object v0

    iput-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->remoteParty:Ljavax/sip/address/Address;

    .line 727
    :goto_1b
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_41

    .line 728
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "settingRemoteParty "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPDialog;->remoteParty:Ljavax/sip/address/Address;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 730
    :cond_41
    return-void
.end method

.method private greylist setRemoteTag(Ljava/lang/String;)V
    .registers 5
    .param p1, "hisTag"    # Ljava/lang/String;

    .line 1559
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 1560
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setRemoteTag(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " remoteTag = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPDialog;->hisTag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " new tag = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 1564
    :cond_3a
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->hisTag:Ljava/lang/String;

    if-eqz v0, :cond_d5

    if-eqz p1, :cond_d5

    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->hisTag:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d5

    .line 1565
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getState()Ljavax/sip/DialogState;

    move-result-object v0

    sget-object v1, Ljavax/sip/DialogState;->EARLY:Ljavax/sip/DialogState;

    if-eq v0, v1, :cond_64

    .line 1566
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_63

    .line 1567
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    const-string v1, "Dialog is already established -- ignoring remote tag re-assignment"

    invoke-interface {v0, v1}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 1569
    :cond_63
    return-void

    .line 1570
    :cond_64
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isRemoteTagReassignmentAllowed()Z

    move-result v0

    if-eqz v0, :cond_ed

    .line 1571
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_a2

    .line 1572
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UNSAFE OPERATION !  tag re-assignment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPDialog;->hisTag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " trying to set to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " can cause unexpected effects "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 1576
    :cond_a2
    const/4 v0, 0x0

    .line 1577
    .local v0, "removed":Z
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPDialog;->dialogId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getDialog(Ljava/lang/String;)Lgov/nist/javax/sip/stack/SIPDialog;

    move-result-object v1

    if-ne v1, p0, :cond_b5

    .line 1578
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPDialog;->dialogId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->removeDialog(Ljava/lang/String;)V

    .line 1579
    const/4 v0, 0x1

    .line 1583
    :cond_b5
    const/4 v1, 0x0

    iput-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->dialogId:Ljava/lang/String;

    .line 1584
    iput-object p1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->hisTag:Ljava/lang/String;

    .line 1585
    if-eqz v0, :cond_d4

    .line 1586
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v1

    if-eqz v1, :cond_cf

    .line 1587
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v1

    const-string v2, "ReInserting Dialog"

    invoke-interface {v1, v2}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 1588
    :cond_cf
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v1, p0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->putDialog(Lgov/nist/javax/sip/stack/SIPDialog;)V

    .line 1590
    .end local v0    # "removed":Z
    :cond_d4
    goto :goto_ed

    .line 1592
    :cond_d5
    if-eqz p1, :cond_da

    .line 1593
    iput-object p1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->hisTag:Ljava/lang/String;

    goto :goto_ed

    .line 1595
    :cond_da
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_ed

    .line 1596
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    const-string v1, "setRemoteTag : called with null argument "

    invoke-interface {v0, v1}, Lgov/nist/core/StackLogger;->logWarning(Ljava/lang/String;)V

    .line 1599
    :cond_ed
    :goto_ed
    return-void
.end method

.method private static greylist storeFirstTransactionInfo(Lgov/nist/javax/sip/stack/SIPDialog;Lgov/nist/javax/sip/stack/SIPTransaction;)V
    .registers 5
    .param p0, "dialog"    # Lgov/nist/javax/sip/stack/SIPDialog;
    .param p1, "transaction"    # Lgov/nist/javax/sip/stack/SIPTransaction;

    .line 1450
    iput-object p1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->firstTransaction:Lgov/nist/javax/sip/stack/SIPTransaction;

    .line 1451
    const/4 v0, 0x1

    iput-boolean v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->firstTransactionSeen:Z

    .line 1452
    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPTransaction;->isServerTransaction()Z

    move-result v0

    iput-boolean v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->firstTransactionIsServerTransaction:Z

    .line 1453
    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPTransaction;->getRequest()Ljavax/sip/message/Request;

    move-result-object v0

    invoke-interface {v0}, Ljavax/sip/message/Request;->getRequestURI()Ljavax/sip/address/URI;

    move-result-object v0

    invoke-interface {v0}, Ljavax/sip/address/URI;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 1454
    const-string v1, "sips"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->firstTransactionSecure:Z

    .line 1455
    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPTransaction;->getPort()I

    move-result v0

    iput v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->firstTransactionPort:I

    .line 1456
    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPTransaction;->getBranchId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->firstTransactionId:Ljava/lang/String;

    .line 1457
    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPTransaction;->getMethod()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->firstTransactionMethod:Ljava/lang/String;

    .line 1459
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->isServer()Z

    move-result v0

    if-eqz v0, :cond_49

    .line 1460
    move-object v0, p1

    check-cast v0, Lgov/nist/javax/sip/stack/SIPServerTransaction;

    .line 1461
    .local v0, "st":Lgov/nist/javax/sip/stack/SIPServerTransaction;
    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getLastResponse()Lgov/nist/javax/sip/message/SIPResponse;

    move-result-object v1

    .line 1462
    .local v1, "response":Lgov/nist/javax/sip/message/SIPResponse;
    if-eqz v1, :cond_45

    invoke-virtual {v1}, Lgov/nist/javax/sip/message/SIPResponse;->getContactHeader()Lgov/nist/javax/sip/header/Contact;

    move-result-object v2

    goto :goto_46

    :cond_45
    const/4 v2, 0x0

    :goto_46
    iput-object v2, p0, Lgov/nist/javax/sip/stack/SIPDialog;->contactHeader:Lgov/nist/javax/sip/header/Contact;

    .line 1463
    .end local v0    # "st":Lgov/nist/javax/sip/stack/SIPServerTransaction;
    .end local v1    # "response":Lgov/nist/javax/sip/message/SIPResponse;
    goto :goto_58

    .line 1464
    :cond_49
    move-object v0, p1

    check-cast v0, Lgov/nist/javax/sip/stack/SIPClientTransaction;

    .line 1465
    .local v0, "ct":Lgov/nist/javax/sip/stack/SIPClientTransaction;
    if-eqz v0, :cond_58

    .line 1466
    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getOriginalRequest()Lgov/nist/javax/sip/message/SIPRequest;

    move-result-object v1

    .line 1467
    .local v1, "sipRequest":Lgov/nist/javax/sip/message/SIPRequest;
    invoke-virtual {v1}, Lgov/nist/javax/sip/message/SIPRequest;->getContactHeader()Lgov/nist/javax/sip/header/Contact;

    move-result-object v2

    iput-object v2, p0, Lgov/nist/javax/sip/stack/SIPDialog;->contactHeader:Lgov/nist/javax/sip/header/Contact;

    .line 1470
    .end local v0    # "ct":Lgov/nist/javax/sip/stack/SIPClientTransaction;
    .end local v1    # "sipRequest":Lgov/nist/javax/sip/message/SIPRequest;
    :cond_58
    :goto_58
    return-void
.end method

.method private greylist toRetransmitFinalResponse(I)Z
    .registers 4
    .param p1, "T2"    # I

    .line 2213
    iget v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->retransmissionTicksLeft:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->retransmissionTicksLeft:I

    if-nez v0, :cond_1e

    .line 2214
    iget v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->prevRetransmissionTicks:I

    mul-int/lit8 v0, v0, 0x2

    if-gt v0, p1, :cond_15

    .line 2215
    iget v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->prevRetransmissionTicks:I

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->retransmissionTicksLeft:I

    goto :goto_19

    .line 2217
    :cond_15
    iget v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->prevRetransmissionTicks:I

    iput v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->retransmissionTicksLeft:I

    .line 2218
    :goto_19
    iget v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->retransmissionTicksLeft:I

    iput v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->prevRetransmissionTicks:I

    .line 2219
    return v1

    .line 2221
    :cond_1e
    const/4 v0, 0x0

    return v0
.end method

.method private greylist updateRequest(Lgov/nist/javax/sip/message/SIPRequest;)V
    .registers 4
    .param p1, "sipRequest"    # Lgov/nist/javax/sip/message/SIPRequest;

    .line 2356
    invoke-direct {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getRouteList()Lgov/nist/javax/sip/header/RouteList;

    move-result-object v0

    .line 2357
    .local v0, "rl":Lgov/nist/javax/sip/header/RouteList;
    invoke-virtual {v0}, Lgov/nist/javax/sip/header/RouteList;->size()I

    move-result v1

    if-lez v1, :cond_e

    .line 2358
    invoke-virtual {p1, v0}, Lgov/nist/javax/sip/message/SIPRequest;->setHeader(Ljavax/sip/header/Header;)V

    goto :goto_13

    .line 2360
    :cond_e
    const-string v1, "Route"

    invoke-virtual {p1, v1}, Lgov/nist/javax/sip/message/SIPRequest;->removeHeader(Ljava/lang/String;)V

    .line 2362
    :goto_13
    invoke-static {}, Lgov/nist/javax/sip/message/MessageFactoryImpl;->getDefaultUserAgentHeader()Ljavax/sip/header/UserAgentHeader;

    move-result-object v1

    if-eqz v1, :cond_20

    .line 2363
    invoke-static {}, Lgov/nist/javax/sip/message/MessageFactoryImpl;->getDefaultUserAgentHeader()Ljavax/sip/header/UserAgentHeader;

    move-result-object v1

    invoke-virtual {p1, v1}, Lgov/nist/javax/sip/message/SIPRequest;->setHeader(Ljavax/sip/header/Header;)V

    .line 2366
    :cond_20
    return-void
.end method


# virtual methods
.method greylist ackReceived(Lgov/nist/javax/sip/message/SIPRequest;)V
    .registers 7
    .param p1, "sipRequest"    # Lgov/nist/javax/sip/message/SIPRequest;

    .line 1068
    iget-boolean v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->ackSeen:Z

    if-eqz v0, :cond_5

    .line 1069
    return-void

    .line 1070
    :cond_5
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getInviteTransaction()Lgov/nist/javax/sip/stack/SIPServerTransaction;

    move-result-object v0

    .line 1071
    .local v0, "tr":Lgov/nist/javax/sip/stack/SIPServerTransaction;
    if-eqz v0, :cond_88

    .line 1072
    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getCSeq()J

    move-result-wide v1

    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPRequest;->getCSeq()Ljavax/sip/header/CSeqHeader;

    move-result-object v3

    invoke-interface {v3}, Ljavax/sip/header/CSeqHeader;->getSeqNumber()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-nez v1, :cond_88

    .line 1073
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->acquireTimerTaskSem()V

    .line 1075
    :try_start_1e
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->timerTask:Lgov/nist/javax/sip/stack/SIPDialog$DialogTimerTask;

    const/4 v2, 0x0

    if-eqz v1, :cond_2a

    .line 1076
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->timerTask:Lgov/nist/javax/sip/stack/SIPDialog$DialogTimerTask;

    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPDialog$DialogTimerTask;->cancel()Z

    .line 1077
    iput-object v2, p0, Lgov/nist/javax/sip/stack/SIPDialog;->timerTask:Lgov/nist/javax/sip/stack/SIPDialog$DialogTimerTask;
    :try_end_2a
    .catchall {:try_start_1e .. :try_end_2a} :catchall_83

    .line 1080
    :cond_2a
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->releaseTimerTaskSem()V

    .line 1081
    nop

    .line 1082
    const/4 v1, 0x1

    iput-boolean v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->ackSeen:Z

    .line 1083
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->dialogDeleteTask:Lgov/nist/javax/sip/stack/SIPDialog$DialogDeleteTask;

    if-eqz v1, :cond_3c

    .line 1084
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->dialogDeleteTask:Lgov/nist/javax/sip/stack/SIPDialog$DialogDeleteTask;

    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPDialog$DialogDeleteTask;->cancel()Z

    .line 1085
    iput-object v2, p0, Lgov/nist/javax/sip/stack/SIPDialog;->dialogDeleteTask:Lgov/nist/javax/sip/stack/SIPDialog$DialogDeleteTask;

    .line 1087
    :cond_3c
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/stack/SIPDialog;->setLastAckReceived(Lgov/nist/javax/sip/message/SIPRequest;)V

    .line 1088
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v1

    if-eqz v1, :cond_76

    .line 1089
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ackReceived for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1090
    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransaction;->getMethod()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1089
    invoke-interface {v1, v2}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 1091
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v1

    invoke-interface {v1}, Lgov/nist/core/StackLogger;->getLineCount()I

    move-result v1

    iput v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->ackLine:I

    .line 1092
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->printDebugInfo()V

    .line 1094
    :cond_76
    iget-boolean v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->isBackToBackUserAgent:Z

    if-eqz v1, :cond_7d

    .line 1095
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->releaseAckSem()V

    .line 1097
    :cond_7d
    sget v1, Lgov/nist/javax/sip/stack/SIPDialog;->CONFIRMED_STATE:I

    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/stack/SIPDialog;->setState(I)V

    goto :goto_88

    .line 1080
    :catchall_83
    move-exception v1

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->releaseTimerTaskSem()V

    .line 1081
    throw v1

    .line 1100
    :cond_88
    :goto_88
    return-void
.end method

.method public greylist acquireTimerTaskSem()V
    .registers 6

    .line 3327
    const/4 v0, 0x0

    .line 3329
    .local v0, "acquired":Z
    :try_start_1
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->timerTaskLock:Ljava/util/concurrent/Semaphore;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0xa

    invoke-virtual {v1, v3, v4, v2}, Ljava/util/concurrent/Semaphore;->tryAcquire(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1
    :try_end_b
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_b} :catch_c

    .line 3332
    .end local v0    # "acquired":Z
    .local v1, "acquired":Z
    goto :goto_f

    .line 3330
    .end local v1    # "acquired":Z
    .restart local v0    # "acquired":Z
    :catch_c
    move-exception v1

    .line 3331
    .local v1, "ex":Ljava/lang/InterruptedException;
    const/4 v0, 0x0

    move v1, v0

    .line 3333
    .end local v0    # "acquired":Z
    .local v1, "acquired":Z
    :goto_f
    if-eqz v1, :cond_12

    .line 3336
    return-void

    .line 3334
    :cond_12
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Impossible to acquire the dialog timer task lock"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist addEventListener(Lgov/nist/javax/sip/stack/SIPDialogEventListener;)V
    .registers 3
    .param p1, "newListener"    # Lgov/nist/javax/sip/stack/SIPDialogEventListener;

    .line 1124
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->eventListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1125
    return-void
.end method

.method public declared-synchronized greylist addRoute(Lgov/nist/javax/sip/message/SIPRequest;)V
    .registers 5
    .param p1, "sipRequest"    # Lgov/nist/javax/sip/message/SIPRequest;

    monitor-enter p0

    .line 1326
    :try_start_1
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 1327
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setContact: dialogState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1328
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getState()Ljavax/sip/DialogState;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1327
    invoke-interface {v0, v1}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 1331
    .end local p0    # "this":Lgov/nist/javax/sip/stack/SIPDialog;
    :cond_33
    iget v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->dialogState:I

    sget v1, Lgov/nist/javax/sip/stack/SIPDialog;->CONFIRMED_STATE:I

    if-ne v0, v1, :cond_46

    .line 1332
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lgov/nist/javax/sip/message/SIPRequest;->isTargetRefresh(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_46

    .line 1333
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/stack/SIPDialog;->doTargetRefresh(Lgov/nist/javax/sip/message/SIPMessage;)V

    .line 1335
    :cond_46
    iget v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->dialogState:I

    sget v1, Lgov/nist/javax/sip/stack/SIPDialog;->CONFIRMED_STATE:I

    if-eq v0, v1, :cond_7d

    iget v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->dialogState:I

    sget v1, Lgov/nist/javax/sip/stack/SIPDialog;->TERMINATED_STATE:I

    if-ne v0, v1, :cond_53

    goto :goto_7d

    .line 1340
    :cond_53
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPRequest;->getToTag()Ljava/lang/String;

    move-result-object v0
    :try_end_57
    .catchall {:try_start_1 .. :try_end_57} :catchall_7f

    if-eqz v0, :cond_5b

    monitor-exit p0

    return-void

    .line 1343
    .restart local p0    # "this":Lgov/nist/javax/sip/stack/SIPDialog;
    :cond_5b
    :try_start_5b
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPRequest;->getRecordRouteHeaders()Lgov/nist/javax/sip/header/RecordRouteList;

    move-result-object v0

    .line 1346
    .local v0, "rrlist":Lgov/nist/javax/sip/header/RecordRouteList;
    if-eqz v0, :cond_65

    .line 1347
    invoke-direct {p0, v0}, Lgov/nist/javax/sip/stack/SIPDialog;->addRoute(Lgov/nist/javax/sip/header/RecordRouteList;)V

    goto :goto_6c

    .line 1350
    .end local p0    # "this":Lgov/nist/javax/sip/stack/SIPDialog;
    :cond_65
    new-instance v1, Lgov/nist/javax/sip/header/RouteList;

    invoke-direct {v1}, Lgov/nist/javax/sip/header/RouteList;-><init>()V

    iput-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->routeList:Lgov/nist/javax/sip/header/RouteList;

    .line 1355
    :goto_6c
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPRequest;->getContactHeaders()Lgov/nist/javax/sip/header/ContactList;

    move-result-object v1

    .line 1356
    .local v1, "contactList":Lgov/nist/javax/sip/header/ContactList;
    if-eqz v1, :cond_7b

    .line 1357
    invoke-virtual {v1}, Lgov/nist/javax/sip/header/ContactList;->getFirst()Lgov/nist/javax/sip/header/SIPHeader;

    move-result-object v2

    check-cast v2, Ljavax/sip/header/ContactHeader;

    invoke-virtual {p0, v2}, Lgov/nist/javax/sip/stack/SIPDialog;->setRemoteTarget(Ljavax/sip/header/ContactHeader;)V
    :try_end_7b
    .catchall {:try_start_5b .. :try_end_7b} :catchall_7f

    .line 1359
    :cond_7b
    monitor-exit p0

    return-void

    .line 1336
    .end local v0    # "rrlist":Lgov/nist/javax/sip/header/RecordRouteList;
    .end local v1    # "contactList":Lgov/nist/javax/sip/header/ContactList;
    :cond_7d
    :goto_7d
    monitor-exit p0

    return-void

    .line 1325
    .end local p1    # "sipRequest":Lgov/nist/javax/sip/message/SIPRequest;
    :catchall_7f
    move-exception p1

    :try_start_80
    monitor-exit p0
    :try_end_81
    .catchall {:try_start_80 .. :try_end_81} :catchall_7f

    throw p1
.end method

.method public greylist addTransaction(Lgov/nist/javax/sip/stack/SIPTransaction;)V
    .registers 7
    .param p1, "transaction"    # Lgov/nist/javax/sip/stack/SIPTransaction;

    .line 1478
    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPTransaction;->getOriginalRequest()Lgov/nist/javax/sip/message/SIPRequest;

    move-result-object v0

    .line 1481
    .local v0, "sipRequest":Lgov/nist/javax/sip/message/SIPRequest;
    iget-boolean v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->firstTransactionSeen:Z

    if-eqz v1, :cond_23

    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->firstTransactionId:Ljava/lang/String;

    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPTransaction;->getBranchId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_23

    .line 1482
    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPTransaction;->getMethod()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPDialog;->firstTransactionMethod:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 1483
    const/4 v1, 0x1

    iput-boolean v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->reInviteFlag:Z

    .line 1486
    :cond_23
    iget-boolean v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->firstTransactionSeen:Z

    if-nez v1, :cond_99

    .line 1490
    invoke-static {p0, p1}, Lgov/nist/javax/sip/stack/SIPDialog;->storeFirstTransactionInfo(Lgov/nist/javax/sip/stack/SIPDialog;Lgov/nist/javax/sip/stack/SIPTransaction;)V

    .line 1491
    invoke-virtual {v0}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SUBSCRIBE"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_40

    .line 1492
    const-string v1, "Event"

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/message/SIPRequest;->getHeader(Ljava/lang/String;)Ljavax/sip/header/Header;

    move-result-object v1

    check-cast v1, Ljavax/sip/header/EventHeader;

    iput-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->eventHeader:Ljavax/sip/header/EventHeader;

    .line 1494
    :cond_40
    invoke-direct {p0, v0}, Lgov/nist/javax/sip/stack/SIPDialog;->setLocalParty(Lgov/nist/javax/sip/message/SIPMessage;)V

    .line 1495
    invoke-direct {p0, v0}, Lgov/nist/javax/sip/stack/SIPDialog;->setRemoteParty(Lgov/nist/javax/sip/message/SIPMessage;)V

    .line 1496
    invoke-direct {p0, v0}, Lgov/nist/javax/sip/stack/SIPDialog;->setCallId(Lgov/nist/javax/sip/message/SIPRequest;)V

    .line 1497
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->originalRequest:Lgov/nist/javax/sip/message/SIPRequest;

    if-nez v1, :cond_4f

    .line 1498
    iput-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->originalRequest:Lgov/nist/javax/sip/message/SIPRequest;

    .line 1500
    :cond_4f
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->method:Ljava/lang/String;

    if-nez v1, :cond_59

    .line 1501
    invoke-virtual {v0}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->method:Ljava/lang/String;

    .line 1504
    :cond_59
    instance-of v1, p1, Lgov/nist/javax/sip/stack/SIPServerTransaction;

    if-eqz v1, :cond_68

    .line 1505
    invoke-virtual {v0}, Lgov/nist/javax/sip/message/SIPRequest;->getFrom()Ljavax/sip/header/FromHeader;

    move-result-object v1

    invoke-interface {v1}, Ljavax/sip/header/FromHeader;->getTag()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->hisTag:Ljava/lang/String;

    goto :goto_c1

    .line 1508
    :cond_68
    invoke-virtual {v0}, Lgov/nist/javax/sip/message/SIPRequest;->getCSeq()Ljavax/sip/header/CSeqHeader;

    move-result-object v1

    invoke-interface {v1}, Ljavax/sip/header/CSeqHeader;->getSeqNumber()J

    move-result-wide v1

    invoke-direct {p0, v1, v2}, Lgov/nist/javax/sip/stack/SIPDialog;->setLocalSequenceNumber(J)V

    .line 1509
    iget-wide v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->localSequenceNumber:J

    iput-wide v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->originalLocalSequenceNumber:J

    .line 1510
    invoke-virtual {v0}, Lgov/nist/javax/sip/message/SIPRequest;->getFrom()Ljavax/sip/header/FromHeader;

    move-result-object v1

    invoke-interface {v1}, Ljavax/sip/header/FromHeader;->getTag()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->myTag:Ljava/lang/String;

    .line 1511
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->myTag:Ljava/lang/String;

    if-nez v1, :cond_c1

    .line 1512
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v1

    if-eqz v1, :cond_c1

    .line 1513
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v1

    const-string v2, "The request\'s From header is missing the required Tag parameter."

    invoke-interface {v1, v2}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;)V

    goto :goto_c1

    .line 1516
    :cond_99
    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPTransaction;->getMethod()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPDialog;->firstTransactionMethod:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c1

    iget-boolean v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->firstTransactionIsServerTransaction:Z

    .line 1517
    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPTransaction;->isServerTransaction()Z

    move-result v2

    if-eq v1, v2, :cond_c1

    .line 1522
    invoke-static {p0, p1}, Lgov/nist/javax/sip/stack/SIPDialog;->storeFirstTransactionInfo(Lgov/nist/javax/sip/stack/SIPDialog;Lgov/nist/javax/sip/stack/SIPTransaction;)V

    .line 1524
    invoke-direct {p0, v0}, Lgov/nist/javax/sip/stack/SIPDialog;->setLocalParty(Lgov/nist/javax/sip/message/SIPMessage;)V

    .line 1525
    invoke-direct {p0, v0}, Lgov/nist/javax/sip/stack/SIPDialog;->setRemoteParty(Lgov/nist/javax/sip/message/SIPMessage;)V

    .line 1526
    invoke-direct {p0, v0}, Lgov/nist/javax/sip/stack/SIPDialog;->setCallId(Lgov/nist/javax/sip/message/SIPRequest;)V

    .line 1527
    iput-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->originalRequest:Lgov/nist/javax/sip/message/SIPRequest;

    .line 1528
    invoke-virtual {v0}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->method:Ljava/lang/String;

    .line 1531
    :cond_c1
    :goto_c1
    instance-of v1, p1, Lgov/nist/javax/sip/stack/SIPServerTransaction;

    if-eqz v1, :cond_d0

    .line 1532
    invoke-virtual {v0}, Lgov/nist/javax/sip/message/SIPRequest;->getCSeq()Ljavax/sip/header/CSeqHeader;

    move-result-object v1

    invoke-interface {v1}, Ljavax/sip/header/CSeqHeader;->getSeqNumber()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lgov/nist/javax/sip/stack/SIPDialog;->setRemoteSequenceNumber(J)V

    .line 1539
    :cond_d0
    iput-object p1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->lastTransaction:Lgov/nist/javax/sip/stack/SIPTransaction;

    .line 1543
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v1

    if-eqz v1, :cond_13d

    .line 1544
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Transaction Added "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPDialog;->myTag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lgov/nist/javax/sip/stack/SIPDialog;->hisTag:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1545
    invoke-interface {v1, v2}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 1546
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TID = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1547
    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPTransaction;->getTransactionId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1548
    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPTransaction;->isServerTransaction()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1546
    invoke-interface {v1, v2}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 1549
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v1

    invoke-interface {v1}, Lgov/nist/core/StackLogger;->logStackTrace()V

    .line 1551
    :cond_13d
    return-void
.end method

.method public greylist createAck(J)Ljavax/sip/message/Request;
    .registers 13
    .param p1, "cseqno"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/InvalidArgumentException;,
            Ljavax/sip/SipException;
        }
    .end annotation

    .line 2389
    const-string v0, "ACK"

    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->method:Ljava/lang/String;

    const-string v2, "INVITE"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_232

    .line 2392
    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-lez v1, :cond_22a

    .line 2394
    const-wide v1, 0xffffffffL

    cmp-long v1, p1, v1

    if-gtz v1, :cond_222

    .line 2397
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->remoteTarget:Ljavax/sip/address/Address;

    if-eqz v1, :cond_21a

    .line 2401
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v1

    if-eqz v1, :cond_4d

    .line 2402
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createAck "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " cseqno "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 2407
    :cond_4d
    iget-wide v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->lastInviteOkReceived:J

    cmp-long v1, v1, p1

    if-gez v1, :cond_9d

    .line 2408
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_95

    .line 2409
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WARNING : Attempt to crete ACK without OK "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 2411
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LAST RESPONSE = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPDialog;->lastResponse:Lgov/nist/javax/sip/message/SIPResponse;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 2413
    :cond_95
    new-instance v0, Ljavax/sip/SipException;

    const-string v1, "Dialog not yet established -- no OK response!"

    invoke-direct {v0, v1}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2421
    :cond_9d
    const/4 v1, 0x0

    .line 2423
    .local v1, "uri4transport":Ljavax/sip/address/SipURI;
    :try_start_9e
    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPDialog;->routeList:Lgov/nist/javax/sip/header/RouteList;

    if-eqz v2, :cond_bd

    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPDialog;->routeList:Lgov/nist/javax/sip/header/RouteList;

    invoke-virtual {v2}, Lgov/nist/javax/sip/header/RouteList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_bd

    .line 2424
    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPDialog;->routeList:Lgov/nist/javax/sip/header/RouteList;

    invoke-virtual {v2}, Lgov/nist/javax/sip/header/RouteList;->getFirst()Lgov/nist/javax/sip/header/SIPHeader;

    move-result-object v2

    check-cast v2, Lgov/nist/javax/sip/header/Route;

    .line 2425
    .local v2, "r":Lgov/nist/javax/sip/header/Route;
    invoke-virtual {v2}, Lgov/nist/javax/sip/header/Route;->getAddress()Ljavax/sip/address/Address;

    move-result-object v3

    invoke-interface {v3}, Ljavax/sip/address/Address;->getURI()Ljavax/sip/address/URI;

    move-result-object v3

    check-cast v3, Ljavax/sip/address/SipURI;

    .line 2426
    .end local v1    # "uri4transport":Ljavax/sip/address/SipURI;
    .end local v2    # "r":Lgov/nist/javax/sip/header/Route;
    .local v3, "uri4transport":Ljavax/sip/address/SipURI;
    goto :goto_c6

    .line 2427
    .end local v3    # "uri4transport":Ljavax/sip/address/SipURI;
    .restart local v1    # "uri4transport":Ljavax/sip/address/SipURI;
    :cond_bd
    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPDialog;->remoteTarget:Ljavax/sip/address/Address;

    invoke-interface {v2}, Ljavax/sip/address/Address;->getURI()Ljavax/sip/address/URI;

    move-result-object v2

    check-cast v2, Ljavax/sip/address/SipURI;

    move-object v3, v2

    .line 2430
    .end local v1    # "uri4transport":Ljavax/sip/address/SipURI;
    .restart local v3    # "uri4transport":Ljavax/sip/address/SipURI;
    :goto_c6
    invoke-interface {v3}, Ljavax/sip/address/SipURI;->getTransportParam()Ljava/lang/String;

    move-result-object v1

    .line 2431
    .local v1, "transport":Ljava/lang/String;
    if-nez v1, :cond_d8

    .line 2433
    invoke-interface {v3}, Ljavax/sip/address/SipURI;->isSecure()Z

    move-result v2

    if-eqz v2, :cond_d5

    const-string v2, "TLS"

    goto :goto_d7

    :cond_d5
    const-string v2, "UDP"

    :goto_d7
    move-object v1, v2

    .line 2435
    :cond_d8
    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipProvider:Lgov/nist/javax/sip/SipProviderImpl;

    invoke-virtual {v2, v1}, Lgov/nist/javax/sip/SipProviderImpl;->getListeningPoint(Ljava/lang/String;)Ljavax/sip/ListeningPoint;

    move-result-object v2

    check-cast v2, Lgov/nist/javax/sip/ListeningPointImpl;

    .line 2436
    .local v2, "lp":Lgov/nist/javax/sip/ListeningPointImpl;
    if-nez v2, :cond_15d

    .line 2437
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_144

    .line 2438
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "remoteTargetURI "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lgov/nist/javax/sip/stack/SIPDialog;->remoteTarget:Ljavax/sip/address/Address;

    .line 2439
    invoke-interface {v5}, Ljavax/sip/address/Address;->getURI()Ljavax/sip/address/URI;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2438
    invoke-interface {v0, v4}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;)V

    .line 2440
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "uri4transport = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;)V

    .line 2441
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No LP found for transport="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;)V

    .line 2443
    :cond_144
    new-instance v0, Ljavax/sip/SipException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot create ACK - no ListeningPoint for transport towards next hop found:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lgov/nist/javax/sip/stack/SIPDialog;
    .end local p1    # "cseqno":J
    throw v0

    .line 2447
    .restart local p0    # "this":Lgov/nist/javax/sip/stack/SIPDialog;
    .restart local p1    # "cseqno":J
    :cond_15d
    new-instance v4, Lgov/nist/javax/sip/message/SIPRequest;

    invoke-direct {v4}, Lgov/nist/javax/sip/message/SIPRequest;-><init>()V

    .line 2448
    .local v4, "sipRequest":Lgov/nist/javax/sip/message/SIPRequest;
    invoke-virtual {v4, v0}, Lgov/nist/javax/sip/message/SIPRequest;->setMethod(Ljava/lang/String;)V

    .line 2449
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getRemoteTarget()Ljavax/sip/address/Address;

    move-result-object v5

    invoke-interface {v5}, Ljavax/sip/address/Address;->getURI()Ljavax/sip/address/URI;

    move-result-object v5

    invoke-interface {v5}, Ljavax/sip/address/URI;->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lgov/nist/javax/sip/address/SipUri;

    invoke-virtual {v4, v5}, Lgov/nist/javax/sip/message/SIPRequest;->setRequestURI(Ljavax/sip/address/URI;)V

    .line 2450
    iget-object v5, p0, Lgov/nist/javax/sip/stack/SIPDialog;->callIdHeader:Ljavax/sip/header/CallIdHeader;

    invoke-virtual {v4, v5}, Lgov/nist/javax/sip/message/SIPRequest;->setCallId(Ljavax/sip/header/CallIdHeader;)V

    .line 2451
    new-instance v5, Lgov/nist/javax/sip/header/CSeq;

    invoke-direct {v5, p1, p2, v0}, Lgov/nist/javax/sip/header/CSeq;-><init>(JLjava/lang/String;)V

    invoke-virtual {v4, v5}, Lgov/nist/javax/sip/message/SIPRequest;->setCSeq(Ljavax/sip/header/CSeqHeader;)V

    .line 2452
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2459
    .local v0, "vias":Ljava/util/List;, "Ljava/util/List<Lgov/nist/javax/sip/header/Via;>;"
    iget-object v5, p0, Lgov/nist/javax/sip/stack/SIPDialog;->lastResponse:Lgov/nist/javax/sip/message/SIPResponse;

    invoke-virtual {v5}, Lgov/nist/javax/sip/message/SIPResponse;->getTopmostVia()Lgov/nist/javax/sip/header/Via;

    move-result-object v5

    .line 2460
    .local v5, "via":Lgov/nist/javax/sip/header/Via;
    invoke-virtual {v5}, Lgov/nist/javax/sip/header/Via;->removeParameters()V

    .line 2461
    iget-object v6, p0, Lgov/nist/javax/sip/stack/SIPDialog;->originalRequest:Lgov/nist/javax/sip/message/SIPRequest;

    if-eqz v6, :cond_1b8

    iget-object v6, p0, Lgov/nist/javax/sip/stack/SIPDialog;->originalRequest:Lgov/nist/javax/sip/message/SIPRequest;

    invoke-virtual {v6}, Lgov/nist/javax/sip/message/SIPRequest;->getTopmostVia()Lgov/nist/javax/sip/header/Via;

    move-result-object v6

    if-eqz v6, :cond_1b8

    .line 2462
    iget-object v6, p0, Lgov/nist/javax/sip/stack/SIPDialog;->originalRequest:Lgov/nist/javax/sip/message/SIPRequest;

    invoke-virtual {v6}, Lgov/nist/javax/sip/message/SIPRequest;->getTopmostVia()Lgov/nist/javax/sip/header/Via;

    move-result-object v6

    .line 2463
    invoke-virtual {v6}, Lgov/nist/javax/sip/header/Via;->getParameters()Lgov/nist/core/NameValueList;

    move-result-object v6

    .line 2464
    .local v6, "originalRequestParameters":Lgov/nist/core/NameValueList;
    if-eqz v6, :cond_1b8

    invoke-virtual {v6}, Lgov/nist/core/NameValueList;->size()I

    move-result v7

    if-lez v7, :cond_1b8

    .line 2465
    invoke-virtual {v6}, Lgov/nist/core/NameValueList;->clone()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lgov/nist/core/NameValueList;

    invoke-virtual {v5, v7}, Lgov/nist/javax/sip/header/Via;->setParameters(Lgov/nist/core/NameValueList;)V

    .line 2468
    .end local v6    # "originalRequestParameters":Lgov/nist/core/NameValueList;
    :cond_1b8
    invoke-static {}, Lgov/nist/javax/sip/Utils;->getInstance()Lgov/nist/javax/sip/Utils;

    move-result-object v6

    invoke-virtual {v6}, Lgov/nist/javax/sip/Utils;->generateBranchId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lgov/nist/javax/sip/header/Via;->setBranch(Ljava/lang/String;)V

    .line 2469
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2470
    invoke-virtual {v4, v0}, Lgov/nist/javax/sip/message/SIPRequest;->setVia(Ljava/util/List;)V

    .line 2471
    new-instance v6, Lgov/nist/javax/sip/header/From;

    invoke-direct {v6}, Lgov/nist/javax/sip/header/From;-><init>()V

    .line 2472
    .local v6, "from":Lgov/nist/javax/sip/header/From;
    iget-object v7, p0, Lgov/nist/javax/sip/stack/SIPDialog;->localParty:Ljavax/sip/address/Address;

    invoke-virtual {v6, v7}, Lgov/nist/javax/sip/header/From;->setAddress(Ljavax/sip/address/Address;)V

    .line 2473
    iget-object v7, p0, Lgov/nist/javax/sip/stack/SIPDialog;->myTag:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lgov/nist/javax/sip/header/From;->setTag(Ljava/lang/String;)V

    .line 2474
    invoke-virtual {v4, v6}, Lgov/nist/javax/sip/message/SIPRequest;->setFrom(Ljavax/sip/header/FromHeader;)V

    .line 2475
    new-instance v7, Lgov/nist/javax/sip/header/To;

    invoke-direct {v7}, Lgov/nist/javax/sip/header/To;-><init>()V

    .line 2476
    .local v7, "to":Lgov/nist/javax/sip/header/To;
    iget-object v8, p0, Lgov/nist/javax/sip/stack/SIPDialog;->remoteParty:Ljavax/sip/address/Address;

    invoke-virtual {v7, v8}, Lgov/nist/javax/sip/header/To;->setAddress(Ljavax/sip/address/Address;)V

    .line 2477
    iget-object v8, p0, Lgov/nist/javax/sip/stack/SIPDialog;->hisTag:Ljava/lang/String;

    if-eqz v8, :cond_1ee

    .line 2478
    iget-object v8, p0, Lgov/nist/javax/sip/stack/SIPDialog;->hisTag:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lgov/nist/javax/sip/header/To;->setTag(Ljava/lang/String;)V

    .line 2479
    :cond_1ee
    invoke-virtual {v4, v7}, Lgov/nist/javax/sip/message/SIPRequest;->setTo(Ljavax/sip/header/ToHeader;)V

    .line 2480
    new-instance v8, Lgov/nist/javax/sip/header/MaxForwards;

    const/16 v9, 0x46

    invoke-direct {v8, v9}, Lgov/nist/javax/sip/header/MaxForwards;-><init>(I)V

    invoke-virtual {v4, v8}, Lgov/nist/javax/sip/message/SIPRequest;->setMaxForwards(Ljavax/sip/header/MaxForwardsHeader;)V

    .line 2482
    iget-object v8, p0, Lgov/nist/javax/sip/stack/SIPDialog;->originalRequest:Lgov/nist/javax/sip/message/SIPRequest;

    if-eqz v8, :cond_20a

    .line 2483
    iget-object v8, p0, Lgov/nist/javax/sip/stack/SIPDialog;->originalRequest:Lgov/nist/javax/sip/message/SIPRequest;

    invoke-virtual {v8}, Lgov/nist/javax/sip/message/SIPRequest;->getAuthorization()Lgov/nist/javax/sip/header/Authorization;

    move-result-object v8

    .line 2484
    .local v8, "authorization":Lgov/nist/javax/sip/header/Authorization;
    if-eqz v8, :cond_20a

    .line 2485
    invoke-virtual {v4, v8}, Lgov/nist/javax/sip/message/SIPRequest;->setHeader(Ljavax/sip/header/Header;)V

    .line 2491
    .end local v8    # "authorization":Lgov/nist/javax/sip/header/Authorization;
    :cond_20a
    invoke-direct {p0, v4}, Lgov/nist/javax/sip/stack/SIPDialog;->updateRequest(Lgov/nist/javax/sip/message/SIPRequest;)V
    :try_end_20d
    .catch Ljava/lang/Exception; {:try_start_9e .. :try_end_20d} :catch_20e

    .line 2493
    return-object v4

    .line 2494
    .end local v0    # "vias":Ljava/util/List;, "Ljava/util/List<Lgov/nist/javax/sip/header/Via;>;"
    .end local v1    # "transport":Ljava/lang/String;
    .end local v2    # "lp":Lgov/nist/javax/sip/ListeningPointImpl;
    .end local v3    # "uri4transport":Ljavax/sip/address/SipURI;
    .end local v4    # "sipRequest":Lgov/nist/javax/sip/message/SIPRequest;
    .end local v5    # "via":Lgov/nist/javax/sip/header/Via;
    .end local v6    # "from":Lgov/nist/javax/sip/header/From;
    .end local v7    # "to":Lgov/nist/javax/sip/header/To;
    :catch_20e
    move-exception v0

    .line 2495
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Lgov/nist/core/InternalErrorHandler;->handleException(Ljava/lang/Exception;)V

    .line 2496
    new-instance v1, Ljavax/sip/SipException;

    const-string v2, "unexpected exception "

    invoke-direct {v1, v2, v0}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 2398
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_21a
    new-instance v0, Ljavax/sip/SipException;

    const-string v1, "Cannot create ACK - no remote Target!"

    invoke-direct {v0, v1}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2395
    :cond_222
    new-instance v0, Ljavax/sip/InvalidArgumentException;

    const-string v1, "bad cseq > 4294967295"

    invoke-direct {v0, v1}, Ljavax/sip/InvalidArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2393
    :cond_22a
    new-instance v0, Ljavax/sip/InvalidArgumentException;

    const-string v1, "bad cseq <= 0 "

    invoke-direct {v0, v1}, Ljavax/sip/InvalidArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2390
    :cond_232
    new-instance v0, Ljavax/sip/SipException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Dialog was not created with an INVITE"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPDialog;->method:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist createPrack(Ljavax/sip/message/Response;)Ljavax/sip/message/Request;
    .registers 9
    .param p1, "relResponse"    # Ljavax/sip/message/Response;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/DialogDoesNotExistException;,
            Ljavax/sip/SipException;
        }
    .end annotation

    .line 2327
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getState()Ljavax/sip/DialogState;

    move-result-object v0

    if-eqz v0, :cond_71

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getState()Ljavax/sip/DialogState;

    move-result-object v0

    sget-object v1, Ljavax/sip/DialogState;->TERMINATED:Ljavax/sip/DialogState;

    invoke-virtual {v0, v1}, Ljavax/sip/DialogState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_71

    .line 2330
    const-string v0, "RSeq"

    invoke-interface {p1, v0}, Ljavax/sip/message/Response;->getHeader(Ljava/lang/String;)Ljavax/sip/header/Header;

    move-result-object v1

    check-cast v1, Lgov/nist/javax/sip/header/RSeq;

    if-eqz v1, :cond_69

    .line 2335
    :try_start_1c
    move-object v1, p1

    check-cast v1, Lgov/nist/javax/sip/message/SIPResponse;

    .line 2336
    .local v1, "sipResponse":Lgov/nist/javax/sip/message/SIPResponse;
    const-string v2, "PRACK"

    move-object v3, p1

    check-cast v3, Lgov/nist/javax/sip/message/SIPResponse;

    invoke-direct {p0, v2, v3}, Lgov/nist/javax/sip/stack/SIPDialog;->createRequest(Ljava/lang/String;Lgov/nist/javax/sip/message/SIPResponse;)Ljavax/sip/message/Request;

    move-result-object v2

    check-cast v2, Lgov/nist/javax/sip/message/SIPRequest;

    .line 2338
    .local v2, "sipRequest":Lgov/nist/javax/sip/message/SIPRequest;
    invoke-virtual {v1}, Lgov/nist/javax/sip/message/SIPResponse;->getTo()Ljavax/sip/header/ToHeader;

    move-result-object v3

    invoke-interface {v3}, Ljavax/sip/header/ToHeader;->getTag()Ljava/lang/String;

    move-result-object v3

    .line 2339
    .local v3, "toHeaderTag":Ljava/lang/String;
    invoke-virtual {v2, v3}, Lgov/nist/javax/sip/message/SIPRequest;->setToTag(Ljava/lang/String;)V

    .line 2340
    new-instance v4, Lgov/nist/javax/sip/header/RAck;

    invoke-direct {v4}, Lgov/nist/javax/sip/header/RAck;-><init>()V

    .line 2341
    .local v4, "rack":Lgov/nist/javax/sip/header/RAck;
    invoke-interface {p1, v0}, Ljavax/sip/message/Response;->getHeader(Ljava/lang/String;)Ljavax/sip/header/Header;

    move-result-object v0

    check-cast v0, Lgov/nist/javax/sip/header/RSeq;

    .line 2342
    .local v0, "rseq":Lgov/nist/javax/sip/header/RSeq;
    invoke-virtual {v1}, Lgov/nist/javax/sip/message/SIPResponse;->getCSeq()Ljavax/sip/header/CSeqHeader;

    move-result-object v5

    invoke-interface {v5}, Ljavax/sip/header/CSeqHeader;->getMethod()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lgov/nist/javax/sip/header/RAck;->setMethod(Ljava/lang/String;)V

    .line 2343
    invoke-virtual {v1}, Lgov/nist/javax/sip/message/SIPResponse;->getCSeq()Ljavax/sip/header/CSeqHeader;

    move-result-object v5

    invoke-interface {v5}, Ljavax/sip/header/CSeqHeader;->getSeqNumber()J

    move-result-wide v5

    long-to-int v5, v5

    int-to-long v5, v5

    invoke-virtual {v4, v5, v6}, Lgov/nist/javax/sip/header/RAck;->setCSequenceNumber(J)V

    .line 2344
    invoke-virtual {v0}, Lgov/nist/javax/sip/header/RSeq;->getSeqNumber()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lgov/nist/javax/sip/header/RAck;->setRSequenceNumber(J)V

    .line 2345
    invoke-virtual {v2, v4}, Lgov/nist/javax/sip/message/SIPRequest;->setHeader(Ljavax/sip/header/Header;)V
    :try_end_62
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_62} :catch_63

    .line 2346
    return-object v2

    .line 2347
    .end local v0    # "rseq":Lgov/nist/javax/sip/header/RSeq;
    .end local v1    # "sipResponse":Lgov/nist/javax/sip/message/SIPResponse;
    .end local v2    # "sipRequest":Lgov/nist/javax/sip/message/SIPRequest;
    .end local v3    # "toHeaderTag":Ljava/lang/String;
    .end local v4    # "rack":Lgov/nist/javax/sip/header/RAck;
    :catch_63
    move-exception v0

    .line 2348
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Lgov/nist/core/InternalErrorHandler;->handleException(Ljava/lang/Exception;)V

    .line 2349
    const/4 v1, 0x0

    return-object v1

    .line 2331
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_69
    new-instance v0, Ljavax/sip/SipException;

    const-string v1, "Missing RSeq Header"

    invoke-direct {v0, v1}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2328
    :cond_71
    new-instance v0, Ljavax/sip/DialogDoesNotExistException;

    const-string v1, "Dialog not initialized or terminated"

    invoke-direct {v0, v1}, Ljavax/sip/DialogDoesNotExistException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist createReliableProvisionalResponse(I)Ljavax/sip/message/Response;
    .registers 9
    .param p1, "statusCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/InvalidArgumentException;,
            Ljavax/sip/SipException;
        }
    .end annotation

    .line 2875
    iget-boolean v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->firstTransactionIsServerTransaction:Z

    if-eqz v0, :cond_7e

    .line 2885
    const/16 v0, 0x64

    if-le p1, v0, :cond_76

    const/16 v0, 0xc7

    if-gt p1, v0, :cond_76

    .line 2887
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->originalRequest:Lgov/nist/javax/sip/message/SIPRequest;

    .line 2888
    .local v0, "request":Lgov/nist/javax/sip/message/SIPRequest;
    invoke-virtual {v0}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v1

    const-string v2, "INVITE"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6e

    .line 2891
    const-string v1, "Supported"

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/message/SIPRequest;->getHeaders(Ljava/lang/String;)Ljava/util/ListIterator;

    move-result-object v1

    .line 2892
    .local v1, "list":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lgov/nist/javax/sip/header/SIPHeader;>;"
    const-string v2, "100rel"

    if-eqz v1, :cond_2a

    invoke-static {v1, v2}, Lgov/nist/javax/sip/stack/SIPDialog;->optionPresent(Ljava/util/ListIterator;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_38

    .line 2893
    :cond_2a
    const-string v3, "Require"

    invoke-virtual {v0, v3}, Lgov/nist/javax/sip/message/SIPRequest;->getHeaders(Ljava/lang/String;)Ljava/util/ListIterator;

    move-result-object v1

    .line 2894
    if-eqz v1, :cond_66

    invoke-static {v1, v2}, Lgov/nist/javax/sip/stack/SIPDialog;->optionPresent(Ljava/util/ListIterator;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_66

    .line 2899
    :cond_38
    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/message/SIPRequest;->createResponse(I)Lgov/nist/javax/sip/message/SIPResponse;

    move-result-object v3

    .line 2910
    .local v3, "response":Lgov/nist/javax/sip/message/SIPResponse;
    new-instance v4, Lgov/nist/javax/sip/header/Require;

    invoke-direct {v4}, Lgov/nist/javax/sip/header/Require;-><init>()V

    .line 2912
    .local v4, "require":Lgov/nist/javax/sip/header/Require;
    :try_start_41
    invoke-virtual {v4, v2}, Lgov/nist/javax/sip/header/Require;->setOptionTag(Ljava/lang/String;)V
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_44} :catch_45

    .line 2915
    goto :goto_49

    .line 2913
    :catch_45
    move-exception v2

    .line 2914
    .local v2, "ex":Ljava/lang/Exception;
    invoke-static {v2}, Lgov/nist/core/InternalErrorHandler;->handleException(Ljava/lang/Exception;)V

    .line 2916
    .end local v2    # "ex":Ljava/lang/Exception;
    :goto_49
    invoke-virtual {v3, v4}, Lgov/nist/javax/sip/message/SIPResponse;->addHeader(Ljavax/sip/header/Header;)V

    .line 2917
    new-instance v2, Lgov/nist/javax/sip/header/RSeq;

    invoke-direct {v2}, Lgov/nist/javax/sip/header/RSeq;-><init>()V

    .line 2921
    .local v2, "rseq":Lgov/nist/javax/sip/header/RSeq;
    const-wide/16 v5, 0x1

    invoke-virtual {v2, v5, v6}, Lgov/nist/javax/sip/header/RSeq;->setSeqNumber(J)V

    .line 2927
    invoke-virtual {v0}, Lgov/nist/javax/sip/message/SIPRequest;->getRecordRouteHeaders()Lgov/nist/javax/sip/header/RecordRouteList;

    move-result-object v5

    .line 2928
    .local v5, "rrl":Lgov/nist/javax/sip/header/RecordRouteList;
    if-eqz v5, :cond_65

    .line 2929
    invoke-virtual {v5}, Lgov/nist/javax/sip/header/RecordRouteList;->clone()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lgov/nist/javax/sip/header/RecordRouteList;

    .line 2930
    .local v6, "rrlclone":Lgov/nist/javax/sip/header/RecordRouteList;
    invoke-virtual {v3, v6}, Lgov/nist/javax/sip/message/SIPResponse;->setHeader(Ljavax/sip/header/Header;)V

    .line 2933
    .end local v6    # "rrlclone":Lgov/nist/javax/sip/header/RecordRouteList;
    :cond_65
    return-object v3

    .line 2895
    .end local v2    # "rseq":Lgov/nist/javax/sip/header/RSeq;
    .end local v3    # "response":Lgov/nist/javax/sip/message/SIPResponse;
    .end local v4    # "require":Lgov/nist/javax/sip/header/Require;
    .end local v5    # "rrl":Lgov/nist/javax/sip/header/RecordRouteList;
    :cond_66
    new-instance v2, Ljavax/sip/SipException;

    const-string v3, "No Supported/Require 100rel header in the request"

    invoke-direct {v2, v3}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2889
    .end local v1    # "list":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lgov/nist/javax/sip/header/SIPHeader;>;"
    :cond_6e
    new-instance v1, Ljavax/sip/SipException;

    const-string v2, "Bad method"

    invoke-direct {v1, v2}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2886
    .end local v0    # "request":Lgov/nist/javax/sip/message/SIPRequest;
    :cond_76
    new-instance v0, Ljavax/sip/InvalidArgumentException;

    const-string v1, "Bad status code "

    invoke-direct {v0, v1}, Ljavax/sip/InvalidArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2876
    :cond_7e
    new-instance v0, Ljavax/sip/SipException;

    const-string v1, "Not a Server Dialog!"

    invoke-direct {v0, v1}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist createRequest(Ljava/lang/String;)Ljavax/sip/message/Request;
    .registers 5
    .param p1, "method"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    .line 1854
    const-string v0, "ACK"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_23

    const-string v0, "PRACK"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_23

    .line 1857
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->lastResponse:Lgov/nist/javax/sip/message/SIPResponse;

    if-eqz v0, :cond_1b

    .line 1858
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->lastResponse:Lgov/nist/javax/sip/message/SIPResponse;

    invoke-direct {p0, p1, v0}, Lgov/nist/javax/sip/stack/SIPDialog;->createRequest(Ljava/lang/String;Lgov/nist/javax/sip/message/SIPResponse;)Ljavax/sip/message/Request;

    move-result-object v0

    return-object v0

    .line 1860
    :cond_1b
    new-instance v0, Ljavax/sip/SipException;

    const-string v1, "Dialog not yet established -- no response!"

    invoke-direct {v0, v1}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1855
    :cond_23
    new-instance v0, Ljavax/sip/SipException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid method specified for createRequest:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist delete()V
    .registers 2

    .line 1751
    sget v0, Lgov/nist/javax/sip/stack/SIPDialog;->TERMINATED_STATE:I

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/stack/SIPDialog;->setState(I)V

    .line 1752
    return-void
.end method

.method public greylist disableSequenceNumberValidation()V
    .registers 2

    .line 3322
    const/4 v0, 0x0

    iput-boolean v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sequenceNumberValidation:Z

    .line 3323
    return-void
.end method

.method public greylist doDeferredDelete()V
    .registers 5

    .line 1195
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getTimer()Ljava/util/Timer;

    move-result-object v0

    if-nez v0, :cond_e

    .line 1196
    sget v0, Lgov/nist/javax/sip/stack/SIPDialog;->TERMINATED_STATE:I

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/stack/SIPDialog;->setState(I)V

    goto :goto_22

    .line 1198
    :cond_e
    new-instance v0, Lgov/nist/javax/sip/stack/SIPDialog$DialogDeleteTask;

    invoke-direct {v0, p0}, Lgov/nist/javax/sip/stack/SIPDialog$DialogDeleteTask;-><init>(Lgov/nist/javax/sip/stack/SIPDialog;)V

    iput-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->dialogDeleteTask:Lgov/nist/javax/sip/stack/SIPDialog$DialogDeleteTask;

    .line 1200
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getTimer()Ljava/util/Timer;

    move-result-object v0

    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->dialogDeleteTask:Lgov/nist/javax/sip/stack/SIPDialog$DialogDeleteTask;

    const-wide/16 v2, 0x7d00

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 1204
    :goto_22
    return-void
.end method

.method public declared-synchronized greylist doDeferredDeleteIfNoAckSent(J)V
    .registers 7
    .param p1, "seqno"    # J

    monitor-enter p0

    .line 3268
    :try_start_1
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getTimer()Ljava/util/Timer;

    move-result-object v0

    if-nez v0, :cond_f

    .line 3269
    sget v0, Lgov/nist/javax/sip/stack/SIPDialog;->TERMINATED_STATE:I

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/stack/SIPDialog;->setState(I)V

    goto :goto_27

    .line 3270
    .end local p0    # "this":Lgov/nist/javax/sip/stack/SIPDialog;
    :cond_f
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->dialogDeleteIfNoAckSentTask:Lgov/nist/javax/sip/stack/SIPDialog$DialogDeleteIfNoAckSentTask;

    if-nez v0, :cond_27

    .line 3272
    new-instance v0, Lgov/nist/javax/sip/stack/SIPDialog$DialogDeleteIfNoAckSentTask;

    invoke-direct {v0, p0, p1, p2}, Lgov/nist/javax/sip/stack/SIPDialog$DialogDeleteIfNoAckSentTask;-><init>(Lgov/nist/javax/sip/stack/SIPDialog;J)V

    iput-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->dialogDeleteIfNoAckSentTask:Lgov/nist/javax/sip/stack/SIPDialog$DialogDeleteIfNoAckSentTask;

    .line 3273
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getTimer()Ljava/util/Timer;

    move-result-object v0

    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->dialogDeleteIfNoAckSentTask:Lgov/nist/javax/sip/stack/SIPDialog$DialogDeleteIfNoAckSentTask;

    const-wide/16 v2, 0x7d00

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_27
    .catchall {:try_start_1 .. :try_end_27} :catchall_29

    .line 3278
    :cond_27
    :goto_27
    monitor-exit p0

    return-void

    .line 3267
    .end local p1    # "seqno":J
    :catchall_29
    move-exception p1

    :try_start_2a
    monitor-exit p0
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_29

    throw p1
.end method

.method public greylist getApplicationData()Ljava/lang/Object;
    .registers 2

    .line 1150
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->applicationData:Ljava/lang/Object;

    return-object v0
.end method

.method public greylist getCallId()Ljavax/sip/header/CallIdHeader;
    .registers 2

    .line 1760
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->callIdHeader:Ljavax/sip/header/CallIdHeader;

    return-object v0
.end method

.method public greylist getDialogId()Ljava/lang/String;
    .registers 3

    .line 1443
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->dialogId:Ljava/lang/String;

    if-nez v0, :cond_14

    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->lastResponse:Lgov/nist/javax/sip/message/SIPResponse;

    if-eqz v0, :cond_14

    .line 1444
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->lastResponse:Lgov/nist/javax/sip/message/SIPResponse;

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->isServer()Z

    move-result v1

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/message/SIPResponse;->getDialogId(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->dialogId:Ljava/lang/String;

    .line 1446
    :cond_14
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->dialogId:Ljava/lang/String;

    return-object v0
.end method

.method greylist getEarlyDialogId()Ljava/lang/String;
    .registers 2

    .line 3185
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->earlyDialogId:Ljava/lang/String;

    return-object v0
.end method

.method greylist getEventHeader()Ljavax/sip/header/EventHeader;
    .registers 2

    .line 3292
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->eventHeader:Ljavax/sip/header/EventHeader;

    return-object v0
.end method

.method public greylist getFirstTransaction()Ljavax/sip/Transaction;
    .registers 2

    .line 1289
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->firstTransaction:Lgov/nist/javax/sip/stack/SIPTransaction;

    return-object v0
.end method

.method public greylist getInviteTransaction()Lgov/nist/javax/sip/stack/SIPServerTransaction;
    .registers 3

    .line 1612
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->timerTask:Lgov/nist/javax/sip/stack/SIPDialog$DialogTimerTask;

    .line 1613
    .local v0, "t":Lgov/nist/javax/sip/stack/SIPDialog$DialogTimerTask;
    if-eqz v0, :cond_7

    .line 1614
    iget-object v1, v0, Lgov/nist/javax/sip/stack/SIPDialog$DialogTimerTask;->transaction:Lgov/nist/javax/sip/stack/SIPServerTransaction;

    return-object v1

    .line 1616
    :cond_7
    const/4 v1, 0x0

    return-object v1
.end method

.method protected greylist getLastAckReceived()Lgov/nist/javax/sip/message/SIPRequest;
    .registers 2

    .line 3244
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->lastAckReceived:Lgov/nist/javax/sip/message/SIPRequest;

    return-object v0
.end method

.method public greylist getLastAckSent()Lgov/nist/javax/sip/message/SIPRequest;
    .registers 2

    .line 1264
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->lastAckSent:Lgov/nist/javax/sip/message/SIPRequest;

    return-object v0
.end method

.method public greylist getLastResponse()Lgov/nist/javax/sip/message/SIPResponse;
    .registers 2

    .line 2825
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->lastResponse:Lgov/nist/javax/sip/message/SIPResponse;

    return-object v0
.end method

.method public greylist getLastTransaction()Lgov/nist/javax/sip/stack/SIPTransaction;
    .registers 2

    .line 1605
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->lastTransaction:Lgov/nist/javax/sip/stack/SIPTransaction;

    return-object v0
.end method

.method public greylist getLocalParty()Ljavax/sip/address/Address;
    .registers 2

    .line 1777
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->localParty:Ljavax/sip/address/Address;

    return-object v0
.end method

.method public greylist getLocalSeqNumber()J
    .registers 3

    .line 1695
    iget-wide v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->localSequenceNumber:J

    return-wide v0
.end method

.method public greylist getLocalSequenceNumber()I
    .registers 3

    .line 1677
    iget-wide v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->localSequenceNumber:J

    long-to-int v0, v0

    return v0
.end method

.method public greylist getLocalTag()Ljava/lang/String;
    .registers 2

    .line 1713
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->myTag:Ljava/lang/String;

    return-object v0
.end method

.method public greylist getMethod()Ljava/lang/String;
    .registers 2

    .line 2259
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->method:Ljava/lang/String;

    return-object v0
.end method

.method public greylist getMyContactHeader()Lgov/nist/javax/sip/header/Contact;
    .registers 2

    .line 3103
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->contactHeader:Lgov/nist/javax/sip/header/Contact;

    return-object v0
.end method

.method public greylist getOriginalLocalSequenceNumber()J
    .registers 3

    .line 1686
    iget-wide v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->originalLocalSequenceNumber:J

    return-wide v0
.end method

.method public greylist getRemoteParty()Ljavax/sip/address/Address;
    .registers 4

    .line 1799
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 1800
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "gettingRemoteParty "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPDialog;->remoteParty:Ljavax/sip/address/Address;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 1802
    :cond_26
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->remoteParty:Ljavax/sip/address/Address;

    return-object v0
.end method

.method public greylist getRemoteSeqNumber()J
    .registers 3

    .line 1704
    iget-wide v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->remoteSequenceNumber:J

    return-wide v0
.end method

.method public greylist getRemoteSequenceNumber()I
    .registers 3

    .line 1665
    iget-wide v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->remoteSequenceNumber:J

    long-to-int v0, v0

    return v0
.end method

.method public greylist getRemoteTag()Ljava/lang/String;
    .registers 2

    .line 1723
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->hisTag:Ljava/lang/String;

    return-object v0
.end method

.method public greylist getRemoteTarget()Ljavax/sip/address/Address;
    .registers 2

    .line 1813
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->remoteTarget:Ljavax/sip/address/Address;

    return-object v0
.end method

.method public greylist getRouteSet()Ljava/util/Iterator;
    .registers 2

    .line 1313
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->routeList:Lgov/nist/javax/sip/header/RouteList;

    if-nez v0, :cond_e

    .line 1314
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    invoke-virtual {v0}, Ljava/util/LinkedList;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    return-object v0

    .line 1316
    :cond_e
    invoke-direct {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getRouteList()Lgov/nist/javax/sip/header/RouteList;

    move-result-object v0

    invoke-virtual {v0}, Lgov/nist/javax/sip/header/RouteList;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public greylist getSipProvider()Lgov/nist/javax/sip/SipProviderImpl;
    .registers 2

    .line 2509
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipProvider:Lgov/nist/javax/sip/SipProviderImpl;

    return-object v0
.end method

.method public bridge synthetic greylist getSipProvider()Ljavax/sip/SipProvider;
    .registers 2

    .line 131
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getSipProvider()Lgov/nist/javax/sip/SipProviderImpl;

    move-result-object v0

    return-object v0
.end method

.method greylist getStack()Lgov/nist/javax/sip/stack/SIPTransactionStack;
    .registers 2

    .line 1050
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    return-object v0
.end method

.method public greylist getState()Ljavax/sip/DialogState;
    .registers 3

    .line 1822
    iget v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->dialogState:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_7

    .line 1823
    const/4 v0, 0x0

    return-object v0

    .line 1824
    :cond_7
    iget v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->dialogState:I

    invoke-static {v0}, Ljavax/sip/DialogState;->getObject(I)Ljavax/sip/DialogState;

    move-result-object v0

    return-object v0
.end method

.method public greylist handleAck(Lgov/nist/javax/sip/stack/SIPServerTransaction;)Z
    .registers 10
    .param p1, "ackTransaction"    # Lgov/nist/javax/sip/stack/SIPServerTransaction;

    .line 3114
    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getOriginalRequest()Lgov/nist/javax/sip/message/SIPRequest;

    move-result-object v0

    .line 3116
    .local v0, "sipRequest":Lgov/nist/javax/sip/message/SIPRequest;
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->isAckSeen()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_47

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getRemoteSeqNumber()J

    move-result-wide v4

    invoke-virtual {v0}, Lgov/nist/javax/sip/message/SIPRequest;->getCSeq()Ljavax/sip/header/CSeqHeader;

    move-result-object v1

    invoke-interface {v1}, Ljavax/sip/header/CSeqHeader;->getSeqNumber()J

    move-result-wide v6

    cmp-long v1, v4, v6

    if-nez v1, :cond_47

    .line 3118
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 3119
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v1

    const-string v4, "ACK already seen by dialog -- dropping Ack retransmission"

    invoke-interface {v1, v4}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 3122
    :cond_2f
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->acquireTimerTaskSem()V

    .line 3124
    :try_start_32
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->timerTask:Lgov/nist/javax/sip/stack/SIPDialog$DialogTimerTask;

    if-eqz v1, :cond_3d

    .line 3125
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->timerTask:Lgov/nist/javax/sip/stack/SIPDialog$DialogTimerTask;

    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPDialog$DialogTimerTask;->cancel()Z

    .line 3126
    iput-object v2, p0, Lgov/nist/javax/sip/stack/SIPDialog;->timerTask:Lgov/nist/javax/sip/stack/SIPDialog$DialogTimerTask;
    :try_end_3d
    .catchall {:try_start_32 .. :try_end_3d} :catchall_42

    .line 3129
    :cond_3d
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->releaseTimerTaskSem()V

    .line 3130
    nop

    .line 3131
    return v3

    .line 3129
    :catchall_42
    move-exception v1

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->releaseTimerTaskSem()V

    .line 3130
    throw v1

    .line 3132
    :cond_47
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getState()Ljavax/sip/DialogState;

    move-result-object v1

    sget-object v4, Ljavax/sip/DialogState;->TERMINATED:Ljavax/sip/DialogState;

    if-ne v1, v4, :cond_63

    .line 3133
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v1

    if-eqz v1, :cond_62

    .line 3134
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v1

    const-string v2, "Dialog is terminated -- dropping ACK"

    invoke-interface {v1, v2}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 3135
    :cond_62
    return v3

    .line 3144
    :cond_63
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getInviteTransaction()Lgov/nist/javax/sip/stack/SIPServerTransaction;

    move-result-object v1

    .line 3146
    .local v1, "tr":Lgov/nist/javax/sip/stack/SIPServerTransaction;
    if-eqz v1, :cond_6d

    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getLastResponse()Lgov/nist/javax/sip/message/SIPResponse;

    move-result-object v2

    .line 3149
    .local v2, "sipResponse":Lgov/nist/javax/sip/message/SIPResponse;
    :cond_6d
    if-eqz v1, :cond_bd

    if-eqz v2, :cond_bd

    .line 3151
    invoke-virtual {v2}, Lgov/nist/javax/sip/message/SIPResponse;->getStatusCode()I

    move-result v4

    div-int/lit8 v4, v4, 0x64

    const/4 v5, 0x2

    if-ne v4, v5, :cond_bd

    .line 3152
    invoke-virtual {v2}, Lgov/nist/javax/sip/message/SIPResponse;->getCSeq()Ljavax/sip/header/CSeqHeader;

    move-result-object v4

    invoke-interface {v4}, Ljavax/sip/header/CSeqHeader;->getMethod()Ljava/lang/String;

    move-result-object v4

    const-string v5, "INVITE"

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_bd

    .line 3153
    invoke-virtual {v2}, Lgov/nist/javax/sip/message/SIPResponse;->getCSeq()Ljavax/sip/header/CSeqHeader;

    move-result-object v4

    invoke-interface {v4}, Ljavax/sip/header/CSeqHeader;->getSeqNumber()J

    move-result-wide v4

    invoke-virtual {v0}, Lgov/nist/javax/sip/message/SIPRequest;->getCSeq()Ljavax/sip/header/CSeqHeader;

    move-result-object v6

    .line 3154
    invoke-interface {v6}, Ljavax/sip/header/CSeqHeader;->getSeqNumber()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-nez v4, :cond_bd

    .line 3156
    invoke-virtual {v2, v3}, Lgov/nist/javax/sip/message/SIPResponse;->getDialogId(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, p0, v3}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->setDialog(Lgov/nist/javax/sip/stack/SIPDialog;Ljava/lang/String;)V

    .line 3161
    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/stack/SIPDialog;->ackReceived(Lgov/nist/javax/sip/message/SIPRequest;)V

    .line 3162
    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v3

    if-eqz v3, :cond_bb

    .line 3163
    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v3

    const-string v4, "ACK for 2XX response --- sending to TU "

    invoke-interface {v3, v4}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 3164
    :cond_bb
    const/4 v3, 0x1

    return v3

    .line 3172
    :cond_bd
    iget-object v4, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v4}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v4

    if-eqz v4, :cond_d0

    .line 3173
    iget-object v4, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v4}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v4

    const-string v5, " INVITE transaction not found  -- Discarding ACK"

    invoke-interface {v4, v5}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 3175
    :cond_d0
    return v3
.end method

.method public greylist handlePrack(Lgov/nist/javax/sip/message/SIPRequest;)Z
    .registers 13
    .param p1, "prackRequest"    # Lgov/nist/javax/sip/message/SIPRequest;

    .line 2951
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->isServer()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1b

    .line 2952
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 2953
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    const-string v2, "Dropping Prack -- not a server Dialog"

    invoke-interface {v0, v2}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 2954
    :cond_1a
    return v1

    .line 2956
    :cond_1b
    nop

    .line 2957
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getFirstTransaction()Ljavax/sip/Transaction;

    move-result-object v0

    check-cast v0, Lgov/nist/javax/sip/stack/SIPServerTransaction;

    .line 2958
    .local v0, "sipServerTransaction":Lgov/nist/javax/sip/stack/SIPServerTransaction;
    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getReliableProvisionalResponse()Lgov/nist/javax/sip/message/SIPResponse;

    move-result-object v2

    .line 2960
    .local v2, "sipResponse":Lgov/nist/javax/sip/message/SIPResponse;
    if-nez v2, :cond_3c

    .line 2961
    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v3

    if-eqz v3, :cond_3b

    .line 2962
    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v3

    .line 2963
    const-string v4, "Dropping Prack -- ReliableResponse not found"

    invoke-interface {v3, v4}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 2964
    :cond_3b
    return v1

    .line 2967
    :cond_3c
    const-string v3, "RAck"

    invoke-virtual {p1, v3}, Lgov/nist/javax/sip/message/SIPRequest;->getHeader(Ljava/lang/String;)Ljavax/sip/header/Header;

    move-result-object v3

    check-cast v3, Lgov/nist/javax/sip/header/RAck;

    .line 2969
    .local v3, "rack":Lgov/nist/javax/sip/header/RAck;
    if-nez v3, :cond_5a

    .line 2970
    iget-object v4, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v4}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v4

    if-eqz v4, :cond_59

    .line 2971
    iget-object v4, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v4}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v4

    const-string v5, "Dropping Prack -- rack header not found"

    invoke-interface {v4, v5}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 2972
    :cond_59
    return v1

    .line 2974
    :cond_5a
    invoke-virtual {v2}, Lgov/nist/javax/sip/message/SIPResponse;->getCSeq()Ljavax/sip/header/CSeqHeader;

    move-result-object v4

    check-cast v4, Lgov/nist/javax/sip/header/CSeq;

    .line 2976
    .local v4, "cseq":Lgov/nist/javax/sip/header/CSeq;
    invoke-virtual {v3}, Lgov/nist/javax/sip/header/RAck;->getMethod()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Lgov/nist/javax/sip/header/CSeq;->getMethod()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    const-string v6, "Dropping Prack -- CSeq Header does not match PRACK"

    if-nez v5, :cond_82

    .line 2977
    iget-object v5, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v5}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v5

    if-eqz v5, :cond_81

    .line 2978
    iget-object v5, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v5}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v5

    invoke-interface {v5, v6}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 2980
    :cond_81
    return v1

    .line 2983
    :cond_82
    invoke-virtual {v3}, Lgov/nist/javax/sip/header/RAck;->getCSeqNumberLong()J

    move-result-wide v7

    invoke-virtual {v4}, Lgov/nist/javax/sip/header/CSeq;->getSeqNumber()J

    move-result-wide v9

    cmp-long v5, v7, v9

    if-eqz v5, :cond_a0

    .line 2984
    iget-object v5, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v5}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v5

    if-eqz v5, :cond_9f

    .line 2985
    iget-object v5, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v5}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v5

    invoke-interface {v5, v6}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 2987
    :cond_9f
    return v1

    .line 2990
    :cond_a0
    const-string v5, "RSeq"

    invoke-virtual {v2, v5}, Lgov/nist/javax/sip/message/SIPResponse;->getHeader(Ljava/lang/String;)Ljavax/sip/header/Header;

    move-result-object v5

    check-cast v5, Lgov/nist/javax/sip/header/RSeq;

    .line 2992
    .local v5, "rseq":Lgov/nist/javax/sip/header/RSeq;
    invoke-virtual {v3}, Lgov/nist/javax/sip/header/RAck;->getRSequenceNumber()J

    move-result-wide v6

    invoke-virtual {v5}, Lgov/nist/javax/sip/header/RSeq;->getSeqNumber()J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-eqz v6, :cond_c8

    .line 2993
    iget-object v6, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v6}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v6

    if-eqz v6, :cond_c7

    .line 2994
    iget-object v6, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v6}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v6

    const-string v7, "Dropping Prack -- RSeq Header does not match PRACK"

    invoke-interface {v6, v7}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 2996
    :cond_c7
    return v1

    .line 2999
    :cond_c8
    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->prackRecieved()Z

    move-result v1

    return v1
.end method

.method public greylist incrementLocalSequenceNumber()V
    .registers 5

    .line 1653
    iget-wide v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->localSequenceNumber:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->localSequenceNumber:J

    .line 1654
    return-void
.end method

.method public greylist isAckSeen()Z
    .registers 2

    .line 1257
    iget-boolean v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->ackSeen:Z

    return v0
.end method

.method public greylist isAckSent(J)Z
    .registers 8
    .param p1, "cseqNo"    # J

    .line 1272
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getLastTransaction()Lgov/nist/javax/sip/stack/SIPTransaction;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_8

    .line 1273
    return v1

    .line 1274
    :cond_8
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getLastTransaction()Lgov/nist/javax/sip/stack/SIPTransaction;

    move-result-object v0

    instance-of v0, v0, Ljavax/sip/ClientTransaction;

    if-eqz v0, :cond_2b

    .line 1275
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getLastAckSent()Lgov/nist/javax/sip/message/SIPRequest;

    move-result-object v0

    const/4 v2, 0x0

    if-nez v0, :cond_18

    .line 1276
    return v2

    .line 1278
    :cond_18
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getLastAckSent()Lgov/nist/javax/sip/message/SIPRequest;

    move-result-object v0

    invoke-virtual {v0}, Lgov/nist/javax/sip/message/SIPRequest;->getCSeq()Ljavax/sip/header/CSeqHeader;

    move-result-object v0

    invoke-interface {v0}, Ljavax/sip/header/CSeqHeader;->getSeqNumber()J

    move-result-wide v3

    cmp-long v0, p1, v3

    if-gtz v0, :cond_29

    goto :goto_2a

    :cond_29
    move v1, v2

    :goto_2a
    return v1

    .line 1281
    :cond_2b
    return v1
.end method

.method public greylist isAssigned()Z
    .registers 2

    .line 3092
    iget-boolean v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->isAssigned:Z

    return v0
.end method

.method public greylist isAtleastOneAckSent()Z
    .registers 2

    .line 3258
    iget-boolean v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->isAcknowledged:Z

    return v0
.end method

.method public greylist isBackToBackUserAgent()Z
    .registers 2

    .line 3264
    iget-boolean v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->isBackToBackUserAgent:Z

    return v0
.end method

.method protected greylist isReInvite()Z
    .registers 2

    .line 1432
    iget-boolean v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->reInviteFlag:Z

    return v0
.end method

.method public declared-synchronized greylist isRequestConsumable(Lgov/nist/javax/sip/message/SIPRequest;)Z
    .registers 8
    .param p1, "dialogRequest"    # Lgov/nist/javax/sip/message/SIPRequest;

    monitor-enter p0

    .line 1175
    :try_start_1
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ACK"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_28

    .line 1179
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->isSequnceNumberValidation()Z

    move-result v0
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_30

    const/4 v1, 0x1

    if-nez v0, :cond_16

    .line 1180
    monitor-exit p0

    return v1

    .line 1185
    :cond_16
    :try_start_16
    iget-wide v2, p0, Lgov/nist/javax/sip/stack/SIPDialog;->remoteSequenceNumber:J

    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPRequest;->getCSeq()Ljavax/sip/header/CSeqHeader;

    move-result-object v0

    invoke-interface {v0}, Ljavax/sip/header/CSeqHeader;->getSeqNumber()J

    move-result-wide v4
    :try_end_20
    .catchall {:try_start_16 .. :try_end_20} :catchall_30

    cmp-long v0, v2, v4

    if-gez v0, :cond_25

    goto :goto_26

    :cond_25
    const/4 v1, 0x0

    :goto_26
    monitor-exit p0

    return v1

    .line 1176
    .end local p0    # "this":Lgov/nist/javax/sip/stack/SIPDialog;
    :cond_28
    :try_start_28
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Illegal method"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1174
    .end local p1    # "dialogRequest":Lgov/nist/javax/sip/message/SIPRequest;
    :catchall_30
    move-exception p1

    monitor-exit p0
    :try_end_32
    .catchall {:try_start_28 .. :try_end_32} :catchall_30

    throw p1
.end method

.method public greylist isSecure()Z
    .registers 2

    .line 1835
    iget-boolean v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->firstTransactionSecure:Z

    return v0
.end method

.method public greylist isSequnceNumberValidation()Z
    .registers 2

    .line 3318
    iget-boolean v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sequenceNumberValidation:Z

    return v0
.end method

.method public greylist isServer()Z
    .registers 2

    .line 1419
    iget-boolean v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->firstTransactionSeen:Z

    if-nez v0, :cond_7

    .line 1420
    iget-boolean v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->serverTransactionFlag:Z

    return v0

    .line 1422
    :cond_7
    iget-boolean v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->firstTransactionIsServerTransaction:Z

    return v0
.end method

.method greylist isTerminatedOnBye()Z
    .registers 2

    .line 1059
    iget-boolean v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->terminateOnBye:Z

    return v0
.end method

.method public greylist printDebugInfo()V
    .registers 5

    .line 1241
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_d4

    .line 1242
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isServer = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->isServer()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 1243
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "localTag = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getLocalTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 1244
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "remoteTag = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getRemoteTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 1245
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "localSequenceNumer = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getLocalSeqNumber()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 1246
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "remoteSequenceNumer = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getRemoteSeqNumber()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 1247
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ackLine:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getRemoteTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lgov/nist/javax/sip/stack/SIPDialog;->ackLine:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 1249
    :cond_d4
    return-void
.end method

.method greylist releaseAckSem()V
    .registers 4

    .line 3192
    iget-boolean v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->isBackToBackUserAgent:Z

    if-eqz v0, :cond_2d

    .line 3193
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 3194
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "releaseAckSem]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 3196
    :cond_28
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->ackSem:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 3199
    :cond_2d
    return-void
.end method

.method public greylist releaseTimerTaskSem()V
    .registers 2

    .line 3339
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->timerTaskLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 3340
    return-void
.end method

.method public greylist removeEventListener(Lgov/nist/javax/sip/stack/SIPDialogEventListener;)V
    .registers 3
    .param p1, "oldListener"    # Lgov/nist/javax/sip/stack/SIPDialogEventListener;

    .line 1134
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->eventListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1135
    return-void
.end method

.method public declared-synchronized greylist requestConsumed()V
    .registers 5

    monitor-enter p0

    .line 1158
    :try_start_1
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getRemoteSeqNumber()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->nextSeqno:Ljava/lang/Long;

    .line 1160
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_34

    .line 1161
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Request Consumed -- next consumable Request Seqno = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPDialog;->nextSeqno:Ljava/lang/Long;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V
    :try_end_34
    .catchall {:try_start_1 .. :try_end_34} :catchall_36

    .line 1165
    .end local p0    # "this":Lgov/nist/javax/sip/stack/SIPDialog;
    :cond_34
    monitor-exit p0

    return-void

    .line 1157
    :catchall_36
    move-exception v0

    :try_start_37
    monitor-exit p0
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_36

    throw v0
.end method

.method public greylist resendAck()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    .line 2236
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getLastAckSent()Lgov/nist/javax/sip/message/SIPRequest;

    move-result-object v0

    if-eqz v0, :cond_36

    .line 2237
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getLastAckSent()Lgov/nist/javax/sip/message/SIPRequest;

    move-result-object v0

    const-string v1, "Timestamp"

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/message/SIPRequest;->getHeader(Ljava/lang/String;)Ljavax/sip/header/Header;

    move-result-object v0

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    iget-boolean v0, v0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->generateTimeStampHeader:Z

    if-eqz v0, :cond_2e

    .line 2239
    new-instance v0, Lgov/nist/javax/sip/header/TimeStamp;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/TimeStamp;-><init>()V

    .line 2241
    .local v0, "ts":Lgov/nist/javax/sip/header/TimeStamp;
    :try_start_1d
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    long-to-float v1, v1

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/header/TimeStamp;->setTimeStamp(F)V

    .line 2242
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getLastAckSent()Lgov/nist/javax/sip/message/SIPRequest;

    move-result-object v1

    invoke-virtual {v1, v0}, Lgov/nist/javax/sip/message/SIPRequest;->setHeader(Ljavax/sip/header/Header;)V
    :try_end_2c
    .catch Ljavax/sip/InvalidArgumentException; {:try_start_1d .. :try_end_2c} :catch_2d

    .line 2245
    goto :goto_2e

    .line 2243
    :catch_2d
    move-exception v1

    .line 2247
    .end local v0    # "ts":Lgov/nist/javax/sip/header/TimeStamp;
    :cond_2e
    :goto_2e
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getLastAckSent()Lgov/nist/javax/sip/message/SIPRequest;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lgov/nist/javax/sip/stack/SIPDialog;->sendAck(Ljavax/sip/message/Request;Z)V

    .line 2250
    :cond_36
    return-void
.end method

.method public greylist sendAck(Ljavax/sip/message/Request;)V
    .registers 3
    .param p1, "request"    # Ljavax/sip/message/Request;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    .line 1844
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lgov/nist/javax/sip/stack/SIPDialog;->sendAck(Ljavax/sip/message/Request;Z)V

    .line 1845
    return-void
.end method

.method public greylist sendReliableProvisionalResponse(Ljavax/sip/message/Response;)V
    .registers 8
    .param p1, "relResponse"    # Ljavax/sip/message/Response;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    .line 3008
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->isServer()Z

    move-result v0

    if-eqz v0, :cond_92

    .line 3012
    move-object v0, p1

    check-cast v0, Lgov/nist/javax/sip/message/SIPResponse;

    .line 3014
    .local v0, "sipResponse":Lgov/nist/javax/sip/message/SIPResponse;
    invoke-interface {p1}, Ljavax/sip/message/Response;->getStatusCode()I

    move-result v1

    const/16 v2, 0x64

    if-eq v1, v2, :cond_8a

    .line 3017
    invoke-interface {p1}, Ljavax/sip/message/Response;->getStatusCode()I

    move-result v1

    div-int/2addr v1, v2

    const/4 v2, 0x2

    if-gt v1, v2, :cond_82

    .line 3024
    invoke-virtual {v0}, Lgov/nist/javax/sip/message/SIPResponse;->getToTag()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7a

    .line 3028
    const-string v1, "Require"

    invoke-interface {p1, v1}, Ljavax/sip/message/Response;->getHeaders(Ljava/lang/String;)Ljava/util/ListIterator;

    move-result-object v1

    .line 3029
    .local v1, "requireList":Ljava/util/ListIterator;
    const/4 v2, 0x0

    .line 3031
    .local v2, "found":Z
    const-string v3, "100rel"

    if-eqz v1, :cond_44

    .line 3033
    :goto_2a
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_44

    if-nez v2, :cond_44

    .line 3034
    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavax/sip/header/RequireHeader;

    .line 3035
    .local v4, "rh":Ljavax/sip/header/RequireHeader;
    invoke-interface {v4}, Ljavax/sip/header/RequireHeader;->getOptionTag()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_43

    .line 3036
    const/4 v2, 0x1

    .line 3038
    .end local v4    # "rh":Ljavax/sip/header/RequireHeader;
    :cond_43
    goto :goto_2a

    .line 3041
    :cond_44
    if-nez v2, :cond_61

    .line 3042
    new-instance v4, Lgov/nist/javax/sip/header/Require;

    invoke-direct {v4, v3}, Lgov/nist/javax/sip/header/Require;-><init>(Ljava/lang/String;)V

    .line 3043
    .local v4, "require":Lgov/nist/javax/sip/header/Require;
    invoke-interface {p1, v4}, Ljavax/sip/message/Response;->addHeader(Ljavax/sip/header/Header;)V

    .line 3044
    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v3

    if-eqz v3, :cond_61

    .line 3045
    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v3

    const-string v5, "Require header with optionTag 100rel is needed -- adding one"

    invoke-interface {v3, v5}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 3051
    .end local v4    # "require":Lgov/nist/javax/sip/header/Require;
    :cond_61
    nop

    .line 3052
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getFirstTransaction()Ljavax/sip/Transaction;

    move-result-object v3

    check-cast v3, Lgov/nist/javax/sip/stack/SIPServerTransaction;

    .line 3057
    .local v3, "serverTransaction":Lgov/nist/javax/sip/stack/SIPServerTransaction;
    invoke-virtual {p0, v3, v0}, Lgov/nist/javax/sip/stack/SIPDialog;->setLastResponse(Lgov/nist/javax/sip/stack/SIPTransaction;Lgov/nist/javax/sip/message/SIPResponse;)V

    .line 3059
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Lgov/nist/javax/sip/message/SIPResponse;->getDialogId(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lgov/nist/javax/sip/stack/SIPDialog;->setDialogId(Ljava/lang/String;)V

    .line 3061
    invoke-virtual {v3, p1}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->sendReliableProvisionalResponse(Ljavax/sip/message/Response;)V

    .line 3063
    invoke-virtual {p0, v3, p1}, Lgov/nist/javax/sip/stack/SIPDialog;->startRetransmitTimer(Lgov/nist/javax/sip/stack/SIPServerTransaction;Ljavax/sip/message/Response;)V

    .line 3065
    return-void

    .line 3025
    .end local v1    # "requireList":Ljava/util/ListIterator;
    .end local v2    # "found":Z
    .end local v3    # "serverTransaction":Lgov/nist/javax/sip/stack/SIPServerTransaction;
    :cond_7a
    new-instance v1, Ljavax/sip/SipException;

    const-string v2, "Badly formatted response -- To tag mandatory for Reliable Provisional Response"

    invoke-direct {v1, v2}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3018
    :cond_82
    new-instance v1, Ljavax/sip/SipException;

    const-string v2, "Response code is not a 1xx response - should be in the range 101 to 199 "

    invoke-direct {v1, v2}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3015
    :cond_8a
    new-instance v1, Ljavax/sip/SipException;

    const-string v2, "Cannot send 100 as a reliable provisional response"

    invoke-direct {v1, v2}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3009
    .end local v0    # "sipResponse":Lgov/nist/javax/sip/message/SIPResponse;
    :cond_92
    new-instance v0, Ljavax/sip/SipException;

    const-string v1, "Not a Server Dialog"

    invoke-direct {v0, v1}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist sendRequest(Ljavax/sip/ClientTransaction;)V
    .registers 3
    .param p1, "clientTransactionId"    # Ljavax/sip/ClientTransaction;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/TransactionDoesNotExistException;,
            Ljavax/sip/SipException;
        }
    .end annotation

    .line 2009
    iget-boolean v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->isBackToBackUserAgent:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, p1, v0}, Lgov/nist/javax/sip/stack/SIPDialog;->sendRequest(Ljavax/sip/ClientTransaction;Z)V

    .line 2010
    return-void
.end method

.method public greylist sendRequest(Ljavax/sip/ClientTransaction;Z)V
    .registers 15
    .param p1, "clientTransactionId"    # Ljavax/sip/ClientTransaction;
    .param p2, "allowInterleaving"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/TransactionDoesNotExistException;,
            Ljavax/sip/SipException;
        }
    .end annotation

    .line 2015
    if-nez p2, :cond_20

    .line 2016
    invoke-interface {p1}, Ljavax/sip/ClientTransaction;->getRequest()Ljavax/sip/message/Request;

    move-result-object v0

    invoke-interface {v0}, Ljavax/sip/message/Request;->getMethod()Ljava/lang/String;

    move-result-object v0

    const-string v1, "INVITE"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 2017
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lgov/nist/javax/sip/stack/SIPDialog$ReInviteSender;

    invoke-direct {v1, p0, p1}, Lgov/nist/javax/sip/stack/SIPDialog$ReInviteSender;-><init>(Lgov/nist/javax/sip/stack/SIPDialog;Ljavax/sip/ClientTransaction;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 2018
    return-void

    .line 2021
    :cond_20
    move-object v0, p1

    check-cast v0, Lgov/nist/javax/sip/stack/SIPClientTransaction;

    .line 2022
    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getOriginalRequest()Lgov/nist/javax/sip/message/SIPRequest;

    move-result-object v0

    .line 2024
    .local v0, "dialogRequest":Lgov/nist/javax/sip/message/SIPRequest;
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v1

    if-eqz v1, :cond_55

    .line 2025
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dialog.sendRequest  dialog = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\ndialogRequest = \n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 2029
    :cond_55
    if-eqz p1, :cond_3db

    .line 2032
    invoke-virtual {v0}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ACK"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3be

    .line 2033
    invoke-virtual {v0}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CANCEL"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3be

    .line 2037
    iget-boolean v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->byeSent:Z

    const-string v2, "BYE"

    if-eqz v1, :cond_b1

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->isTerminatedOnBye()Z

    move-result v1

    if-eqz v1, :cond_b1

    invoke-virtual {v0}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b1

    .line 2038
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v1

    if-eqz v1, :cond_a9

    .line 2039
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BYE already sent for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;)V

    .line 2040
    :cond_a9
    new-instance v1, Ljavax/sip/SipException;

    const-string v2, "Cannot send request; BYE already sent"

    invoke-direct {v1, v2}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2043
    :cond_b1
    invoke-virtual {v0}, Lgov/nist/javax/sip/message/SIPRequest;->getTopmostVia()Lgov/nist/javax/sip/header/Via;

    move-result-object v1

    if-nez v1, :cond_c1

    .line 2044
    move-object v1, p1

    check-cast v1, Lgov/nist/javax/sip/stack/SIPClientTransaction;

    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getOutgoingViaHeader()Lgov/nist/javax/sip/header/Via;

    move-result-object v1

    .line 2045
    .local v1, "via":Lgov/nist/javax/sip/header/Via;
    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/message/SIPRequest;->addHeader(Ljavax/sip/header/Header;)V

    .line 2047
    .end local v1    # "via":Lgov/nist/javax/sip/header/Via;
    :cond_c1
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getCallId()Ljavax/sip/header/CallIdHeader;

    move-result-object v1

    invoke-interface {v1}, Ljavax/sip/header/CallIdHeader;->getCallId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lgov/nist/javax/sip/message/SIPRequest;->getCallId()Ljavax/sip/header/CallIdHeader;

    move-result-object v3

    invoke-interface {v3}, Ljavax/sip/header/CallIdHeader;->getCallId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_147

    .line 2049
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v1

    if-eqz v1, :cond_13f

    .line 2050
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CallID "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getCallId()Ljavax/sip/header/CallIdHeader;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;)V

    .line 2051
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RequestCallID = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2052
    invoke-virtual {v0}, Lgov/nist/javax/sip/message/SIPRequest;->getCallId()Ljavax/sip/header/CallIdHeader;

    move-result-object v3

    invoke-interface {v3}, Ljavax/sip/header/CallIdHeader;->getCallId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2051
    invoke-interface {v1, v2}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;)V

    .line 2053
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dialog =  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;)V

    .line 2055
    :cond_13f
    new-instance v1, Ljavax/sip/SipException;

    const-string v2, "Bad call ID in request"

    invoke-direct {v1, v2}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2059
    :cond_147
    move-object v1, p1

    check-cast v1, Lgov/nist/javax/sip/stack/SIPClientTransaction;

    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPDialog;->dialogId:Ljava/lang/String;

    invoke-virtual {v1, p0, v3}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->setDialog(Lgov/nist/javax/sip/stack/SIPDialog;Ljava/lang/String;)V

    .line 2061
    move-object v1, p1

    check-cast v1, Lgov/nist/javax/sip/stack/SIPTransaction;

    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/stack/SIPDialog;->addTransaction(Lgov/nist/javax/sip/stack/SIPTransaction;)V

    .line 2064
    move-object v1, p1

    check-cast v1, Lgov/nist/javax/sip/stack/SIPClientTransaction;

    const/4 v3, 0x1

    iput-boolean v3, v1, Lgov/nist/javax/sip/stack/SIPClientTransaction;->isMapped:Z

    .line 2066
    invoke-virtual {v0}, Lgov/nist/javax/sip/message/SIPRequest;->getFrom()Ljavax/sip/header/FromHeader;

    move-result-object v1

    check-cast v1, Lgov/nist/javax/sip/header/From;

    .line 2067
    .local v1, "from":Lgov/nist/javax/sip/header/From;
    invoke-virtual {v0}, Lgov/nist/javax/sip/message/SIPRequest;->getTo()Ljavax/sip/header/ToHeader;

    move-result-object v4

    check-cast v4, Lgov/nist/javax/sip/header/To;

    .line 2071
    .local v4, "to":Lgov/nist/javax/sip/header/To;
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getLocalTag()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_19f

    invoke-virtual {v1}, Lgov/nist/javax/sip/header/From;->getTag()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_19f

    .line 2072
    invoke-virtual {v1}, Lgov/nist/javax/sip/header/From;->getTag()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getLocalTag()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_182

    goto :goto_19f

    .line 2073
    :cond_182
    new-instance v2, Ljavax/sip/SipException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "From tag mismatch expecting  "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getLocalTag()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2075
    :cond_19f
    :goto_19f
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getRemoteTag()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1e1

    invoke-virtual {v4}, Lgov/nist/javax/sip/header/To;->getTag()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1e1

    .line 2076
    invoke-virtual {v4}, Lgov/nist/javax/sip/header/To;->getTag()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getRemoteTag()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1e1

    .line 2077
    iget-object v5, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v5}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v5

    if-eqz v5, :cond_1e1

    .line 2078
    iget-object v5, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v5}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "To header tag mismatch expecting "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 2079
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getRemoteTag()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2078
    invoke-interface {v5, v6}, Lgov/nist/core/StackLogger;->logWarning(Ljava/lang/String;)V

    .line 2084
    :cond_1e1
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getLocalTag()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_20f

    invoke-virtual {v0}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v5

    const-string v6, "NOTIFY"

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_20f

    .line 2085
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getMethod()Ljava/lang/String;

    move-result-object v5

    const-string v6, "SUBSCRIBE"

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_207

    .line 2087
    invoke-virtual {v1}, Lgov/nist/javax/sip/header/From;->getTag()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lgov/nist/javax/sip/stack/SIPDialog;->setLocalTag(Ljava/lang/String;)V

    goto :goto_20f

    .line 2086
    :cond_207
    new-instance v2, Ljavax/sip/SipException;

    const-string v3, "Trying to send NOTIFY without SUBSCRIBE Dialog!"

    invoke-direct {v2, v3}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2092
    :cond_20f
    :goto_20f
    :try_start_20f
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getLocalTag()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_21c

    .line 2093
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getLocalTag()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lgov/nist/javax/sip/header/From;->setTag(Ljava/lang/String;)V

    .line 2094
    :cond_21c
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getRemoteTag()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_229

    .line 2095
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getRemoteTag()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lgov/nist/javax/sip/header/To;->setTag(Ljava/lang/String;)V
    :try_end_229
    .catch Ljava/text/ParseException; {:try_start_20f .. :try_end_229} :catch_22a

    .line 2101
    :cond_229
    goto :goto_22e

    .line 2097
    :catch_22a
    move-exception v5

    .line 2099
    .local v5, "ex":Ljava/text/ParseException;
    invoke-static {v5}, Lgov/nist/core/InternalErrorHandler;->handleException(Ljava/lang/Exception;)V

    .line 2103
    .end local v5    # "ex":Ljava/text/ParseException;
    :goto_22e
    move-object v5, p1

    check-cast v5, Lgov/nist/javax/sip/stack/SIPClientTransaction;

    invoke-virtual {v5}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getNextHop()Ljavax/sip/address/Hop;

    move-result-object v5

    .line 2104
    .local v5, "hop":Ljavax/sip/address/Hop;
    iget-object v6, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v6}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v6

    if-eqz v6, :cond_26b

    .line 2105
    iget-object v6, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v6}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Using hop = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 2106
    invoke-interface {v5}, Ljavax/sip/address/Hop;->getHost()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v5}, Ljavax/sip/address/Hop;->getPort()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2105
    invoke-interface {v6, v7}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 2110
    :cond_26b
    :try_start_26b
    iget-object v6, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    .line 2111
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getSipProvider()Lgov/nist/javax/sip/SipProviderImpl;

    move-result-object v7

    invoke-interface {v5}, Ljavax/sip/address/Hop;->getTransport()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lgov/nist/javax/sip/SipProviderImpl;->getListeningPoint(Ljava/lang/String;)Ljavax/sip/ListeningPoint;

    move-result-object v7

    invoke-interface {v7}, Ljavax/sip/ListeningPoint;->getIPAddress()Ljava/lang/String;

    move-result-object v7

    iget v8, p0, Lgov/nist/javax/sip/stack/SIPDialog;->firstTransactionPort:I

    .line 2110
    invoke-virtual {v6, v7, v8, v5}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->createRawMessageChannel(Ljava/lang/String;ILjavax/sip/address/Hop;)Lgov/nist/javax/sip/stack/MessageChannel;

    move-result-object v6

    .line 2114
    .local v6, "messageChannel":Lgov/nist/javax/sip/stack/MessageChannel;
    move-object v7, p1

    check-cast v7, Lgov/nist/javax/sip/stack/SIPClientTransaction;

    .line 2115
    invoke-virtual {v7}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getMessageChannel()Lgov/nist/javax/sip/stack/MessageChannel;

    move-result-object v7

    .line 2120
    .local v7, "oldChannel":Lgov/nist/javax/sip/stack/MessageChannel;
    invoke-virtual {v7}, Lgov/nist/javax/sip/stack/MessageChannel;->uncache()V

    .line 2123
    iget-object v8, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    iget-boolean v8, v8, Lgov/nist/javax/sip/stack/SIPTransactionStack;->cacheClientConnections:Z

    if-nez v8, :cond_2be

    .line 2124
    iget v8, v7, Lgov/nist/javax/sip/stack/MessageChannel;->useCount:I

    sub-int/2addr v8, v3

    iput v8, v7, Lgov/nist/javax/sip/stack/MessageChannel;->useCount:I

    .line 2125
    iget-object v8, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v8}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v8

    if-eqz v8, :cond_2be

    .line 2126
    iget-object v8, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v8}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "oldChannel: useCount "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v7, Lgov/nist/javax/sip/stack/MessageChannel;->useCount:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 2131
    :cond_2be
    if-nez v6, :cond_31a

    .line 2145
    iget-object v8, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v8}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v8

    if-eqz v8, :cond_2d3

    .line 2146
    iget-object v8, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v8}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v8

    const-string v9, "Null message channel using outbound proxy !"

    invoke-interface {v8, v9}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 2148
    :cond_2d3
    iget-object v8, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v8, v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getRouter(Lgov/nist/javax/sip/message/SIPRequest;)Ljavax/sip/address/Router;

    move-result-object v8

    invoke-interface {v8}, Ljavax/sip/address/Router;->getOutboundProxy()Ljavax/sip/address/Hop;

    move-result-object v8

    .line 2149
    .local v8, "outboundProxy":Ljavax/sip/address/Hop;
    if-eqz v8, :cond_301

    .line 2151
    iget-object v9, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getSipProvider()Lgov/nist/javax/sip/SipProviderImpl;

    move-result-object v10

    .line 2152
    invoke-interface {v8}, Ljavax/sip/address/Hop;->getTransport()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lgov/nist/javax/sip/SipProviderImpl;->getListeningPoint(Ljava/lang/String;)Ljavax/sip/ListeningPoint;

    move-result-object v10

    invoke-interface {v10}, Ljavax/sip/ListeningPoint;->getIPAddress()Ljava/lang/String;

    move-result-object v10

    iget v11, p0, Lgov/nist/javax/sip/stack/SIPDialog;->firstTransactionPort:I

    .line 2151
    invoke-virtual {v9, v10, v11, v8}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->createRawMessageChannel(Ljava/lang/String;ILjavax/sip/address/Hop;)Lgov/nist/javax/sip/stack/MessageChannel;

    move-result-object v9

    move-object v6, v9

    .line 2154
    if-eqz v6, :cond_300

    .line 2155
    move-object v9, p1

    check-cast v9, Lgov/nist/javax/sip/stack/SIPClientTransaction;

    .line 2156
    invoke-virtual {v9, v6}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->setEncapsulatedChannel(Lgov/nist/javax/sip/stack/MessageChannel;)V

    .line 2157
    .end local v8    # "outboundProxy":Ljavax/sip/address/Hop;
    :cond_300
    goto :goto_344

    .line 2150
    .restart local v8    # "outboundProxy":Ljavax/sip/address/Hop;
    :cond_301
    new-instance v2, Ljavax/sip/SipException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "No route found! hop="

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    .end local v0    # "dialogRequest":Lgov/nist/javax/sip/message/SIPRequest;
    .end local v1    # "from":Lgov/nist/javax/sip/header/From;
    .end local v4    # "to":Lgov/nist/javax/sip/header/To;
    .end local v5    # "hop":Ljavax/sip/address/Hop;
    .end local p0    # "this":Lgov/nist/javax/sip/stack/SIPDialog;
    .end local p1    # "clientTransactionId":Ljavax/sip/ClientTransaction;
    .end local p2    # "allowInterleaving":Z
    throw v2

    .line 2158
    .end local v8    # "outboundProxy":Ljavax/sip/address/Hop;
    .restart local v0    # "dialogRequest":Lgov/nist/javax/sip/message/SIPRequest;
    .restart local v1    # "from":Lgov/nist/javax/sip/header/From;
    .restart local v4    # "to":Lgov/nist/javax/sip/header/To;
    .restart local v5    # "hop":Ljavax/sip/address/Hop;
    .restart local p0    # "this":Lgov/nist/javax/sip/stack/SIPDialog;
    .restart local p1    # "clientTransactionId":Ljavax/sip/ClientTransaction;
    .restart local p2    # "allowInterleaving":Z
    :cond_31a
    move-object v8, p1

    check-cast v8, Lgov/nist/javax/sip/stack/SIPClientTransaction;

    .line 2159
    invoke-virtual {v8, v6}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->setEncapsulatedChannel(Lgov/nist/javax/sip/stack/MessageChannel;)V

    .line 2161
    iget-object v8, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v8}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v8

    if-eqz v8, :cond_344

    .line 2162
    iget-object v8, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v8}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "using message channel "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 2168
    :cond_344
    :goto_344
    if-eqz v6, :cond_34b

    iget v8, v6, Lgov/nist/javax/sip/stack/MessageChannel;->useCount:I

    add-int/2addr v8, v3

    iput v8, v6, Lgov/nist/javax/sip/stack/MessageChannel;->useCount:I

    .line 2171
    :cond_34b
    iget-object v8, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    iget-boolean v8, v8, Lgov/nist/javax/sip/stack/SIPTransactionStack;->cacheClientConnections:Z

    if-nez v8, :cond_35a

    if-eqz v7, :cond_35a

    iget v8, v7, Lgov/nist/javax/sip/stack/MessageChannel;->useCount:I

    if-gtz v8, :cond_35a

    .line 2173
    invoke-virtual {v7}, Lgov/nist/javax/sip/stack/MessageChannel;->close()V
    :try_end_35a
    .catch Ljava/lang/Exception; {:try_start_26b .. :try_end_35a} :catch_3a4

    .line 2178
    .end local v6    # "messageChannel":Lgov/nist/javax/sip/stack/MessageChannel;
    .end local v7    # "oldChannel":Lgov/nist/javax/sip/stack/MessageChannel;
    :cond_35a
    nop

    .line 2182
    :try_start_35b
    iget-wide v6, p0, Lgov/nist/javax/sip/stack/SIPDialog;->localSequenceNumber:J

    const-wide/16 v8, 0x1

    add-long/2addr v6, v8

    iput-wide v6, p0, Lgov/nist/javax/sip/stack/SIPDialog;->localSequenceNumber:J

    .line 2183
    invoke-virtual {v0}, Lgov/nist/javax/sip/message/SIPRequest;->getCSeq()Ljavax/sip/header/CSeqHeader;

    move-result-object v6

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getLocalSeqNumber()J

    move-result-wide v7

    invoke-interface {v6, v7, v8}, Ljavax/sip/header/CSeqHeader;->setSeqNumber(J)V
    :try_end_36d
    .catch Ljavax/sip/InvalidArgumentException; {:try_start_35b .. :try_end_36d} :catch_36e

    .line 2186
    goto :goto_37c

    .line 2184
    :catch_36e
    move-exception v6

    .line 2185
    .local v6, "ex":Ljavax/sip/InvalidArgumentException;
    iget-object v7, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v7}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v7

    invoke-virtual {v6}, Ljavax/sip/InvalidArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Lgov/nist/core/StackLogger;->logFatalError(Ljava/lang/String;)V

    .line 2189
    .end local v6    # "ex":Ljavax/sip/InvalidArgumentException;
    :goto_37c
    :try_start_37c
    move-object v6, p1

    check-cast v6, Lgov/nist/javax/sip/stack/SIPClientTransaction;

    invoke-virtual {v6, v0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->sendMessage(Lgov/nist/javax/sip/message/SIPMessage;)V

    .line 2194
    invoke-virtual {v0}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_399

    .line 2195
    iput-boolean v3, p0, Lgov/nist/javax/sip/stack/SIPDialog;->byeSent:Z

    .line 2199
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->isTerminatedOnBye()Z

    move-result v2

    if-eqz v2, :cond_399

    .line 2200
    sget v2, Ljavax/sip/DialogState;->_TERMINATED:I

    invoke-virtual {p0, v2}, Lgov/nist/javax/sip/stack/SIPDialog;->setState(I)V
    :try_end_399
    .catch Ljava/io/IOException; {:try_start_37c .. :try_end_399} :catch_39b

    .line 2205
    :cond_399
    nop

    .line 2207
    return-void

    .line 2203
    :catch_39b
    move-exception v2

    .line 2204
    .local v2, "ex":Ljava/io/IOException;
    new-instance v3, Ljavax/sip/SipException;

    const-string v6, "error sending message"

    invoke-direct {v3, v6, v2}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 2174
    .end local v2    # "ex":Ljava/io/IOException;
    :catch_3a4
    move-exception v2

    .line 2175
    .local v2, "ex":Ljava/lang/Exception;
    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v3

    if-eqz v3, :cond_3b6

    .line 2176
    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v3

    invoke-interface {v3, v2}, Lgov/nist/core/StackLogger;->logException(Ljava/lang/Throwable;)V

    .line 2177
    :cond_3b6
    new-instance v3, Ljavax/sip/SipException;

    const-string v6, "Could not create message channel"

    invoke-direct {v3, v6, v2}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 2034
    .end local v1    # "from":Lgov/nist/javax/sip/header/From;
    .end local v2    # "ex":Ljava/lang/Exception;
    .end local v4    # "to":Lgov/nist/javax/sip/header/To;
    .end local v5    # "hop":Ljavax/sip/address/Hop;
    :cond_3be
    new-instance v1, Ljavax/sip/SipException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bad Request Method. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2030
    :cond_3db
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "null parameter"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public greylist setApplicationData(Ljava/lang/Object;)V
    .registers 2
    .param p1, "applicationData"    # Ljava/lang/Object;

    .line 1141
    iput-object p1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->applicationData:Ljava/lang/Object;

    .line 1142
    return-void
.end method

.method public greylist setAssigned()V
    .registers 2

    .line 3083
    const/4 v0, 0x1

    iput-boolean v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->isAssigned:Z

    .line 3084
    return-void
.end method

.method public greylist setBackToBackUserAgent()V
    .registers 2

    .line 3285
    const/4 v0, 0x1

    iput-boolean v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->isBackToBackUserAgent:Z

    .line 3286
    return-void
.end method

.method public greylist setDialogId(Ljava/lang/String;)V
    .registers 2
    .param p1, "dialogId"    # Ljava/lang/String;

    .line 1365
    iput-object p1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->dialogId:Ljava/lang/String;

    .line 1366
    return-void
.end method

.method greylist setEarlyDialogId(Ljava/lang/String;)V
    .registers 2
    .param p1, "earlyDialogId"    # Ljava/lang/String;

    .line 3181
    iput-object p1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->earlyDialogId:Ljava/lang/String;

    .line 3182
    return-void
.end method

.method greylist setEventHeader(Ljavax/sip/header/EventHeader;)V
    .registers 2
    .param p1, "eventHeader"    # Ljavax/sip/header/EventHeader;

    .line 3299
    iput-object p1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->eventHeader:Ljavax/sip/header/EventHeader;

    .line 3300
    return-void
.end method

.method public greylist setLastResponse(Lgov/nist/javax/sip/stack/SIPTransaction;Lgov/nist/javax/sip/message/SIPResponse;)V
    .registers 15
    .param p1, "transaction"    # Lgov/nist/javax/sip/stack/SIPTransaction;
    .param p2, "sipResponse"    # Lgov/nist/javax/sip/message/SIPResponse;

    .line 2552
    invoke-virtual {p2}, Lgov/nist/javax/sip/message/SIPResponse;->getCallId()Ljavax/sip/header/CallIdHeader;

    move-result-object v0

    iput-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->callIdHeader:Ljavax/sip/header/CallIdHeader;

    .line 2553
    invoke-virtual {p2}, Lgov/nist/javax/sip/message/SIPResponse;->getStatusCode()I

    move-result v0

    .line 2554
    .local v0, "statusCode":I
    const/16 v1, 0x64

    if-ne v0, v1, :cond_22

    .line 2555
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 2556
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v1

    const-string v2, "Invalid status code - 100 in setLastResponse - ignoring"

    invoke-interface {v1, v2}, Lgov/nist/core/StackLogger;->logWarning(Ljava/lang/String;)V

    .line 2558
    :cond_21
    return-void

    .line 2561
    :cond_22
    iput-object p2, p0, Lgov/nist/javax/sip/stack/SIPDialog;->lastResponse:Lgov/nist/javax/sip/message/SIPResponse;

    .line 2562
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->setAssigned()V

    .line 2564
    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v2

    if-eqz v2, :cond_5b

    .line 2565
    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sipDialog: setLastResponse:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " lastResponse = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lgov/nist/javax/sip/stack/SIPDialog;->lastResponse:Lgov/nist/javax/sip/message/SIPResponse;

    .line 2567
    invoke-virtual {v4}, Lgov/nist/javax/sip/message/SIPResponse;->getFirstLine()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2565
    invoke-interface {v2, v3}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 2569
    :cond_5b
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getState()Ljavax/sip/DialogState;

    move-result-object v2

    sget-object v3, Ljavax/sip/DialogState;->TERMINATED:Ljavax/sip/DialogState;

    const/16 v4, 0xc8

    const-string v5, "INVITE"

    if-ne v2, v3, :cond_9b

    .line 2570
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v1

    if-eqz v1, :cond_7a

    .line 2571
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v1

    const-string v2, "sipDialog: setLastResponse -- dialog is terminated - ignoring "

    invoke-interface {v1, v2}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 2576
    :cond_7a
    invoke-virtual {p2}, Lgov/nist/javax/sip/message/SIPResponse;->getCSeq()Ljavax/sip/header/CSeqHeader;

    move-result-object v1

    invoke-interface {v1}, Ljavax/sip/header/CSeqHeader;->getMethod()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9a

    if-ne v0, v4, :cond_9a

    .line 2578
    invoke-virtual {p2}, Lgov/nist/javax/sip/message/SIPResponse;->getCSeq()Ljavax/sip/header/CSeqHeader;

    move-result-object v1

    invoke-interface {v1}, Ljavax/sip/header/CSeqHeader;->getSeqNumber()J

    move-result-wide v1

    iget-wide v3, p0, Lgov/nist/javax/sip/stack/SIPDialog;->lastInviteOkReceived:J

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    iput-wide v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->lastInviteOkReceived:J

    .line 2581
    :cond_9a
    return-void

    .line 2583
    :cond_9b
    invoke-virtual {p2}, Lgov/nist/javax/sip/message/SIPResponse;->getCSeq()Ljavax/sip/header/CSeqHeader;

    move-result-object v2

    invoke-interface {v2}, Ljavax/sip/header/CSeqHeader;->getMethod()Ljava/lang/String;

    move-result-object v2

    .line 2584
    .local v2, "cseqMethod":Ljava/lang/String;
    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v3

    if-eqz v3, :cond_148

    .line 2585
    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v3

    invoke-interface {v3}, Lgov/nist/core/StackLogger;->logStackTrace()V

    .line 2586
    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "cseqMethod = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 2587
    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "dialogState = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getState()Ljavax/sip/DialogState;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 2588
    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "method = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getMethod()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 2589
    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "statusCode = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 2590
    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "transaction = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 2596
    :cond_148
    const-string v3, "REFER"

    const-string v6, "BYE"

    const-string v7, "NOTIFY"

    const-string v8, "SUBSCRIBE"

    const/4 v9, 0x2

    const/4 v10, 0x1

    if-eqz p1, :cond_255

    instance-of v11, p1, Ljavax/sip/ClientTransaction;

    if-eqz v11, :cond_15a

    goto/16 :goto_255

    .line 2709
    :cond_15a
    invoke-virtual {v2, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_171

    div-int/lit8 v1, v0, 0x64

    if-ne v1, v9, :cond_171

    .line 2710
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->isTerminatedOnBye()Z

    move-result v1

    if-eqz v1, :cond_171

    .line 2715
    sget v1, Lgov/nist/javax/sip/stack/SIPDialog;->TERMINATED_STATE:I

    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/stack/SIPDialog;->setState(I)V

    goto/16 :goto_3f5

    .line 2717
    :cond_171
    const/4 v1, 0x0

    .line 2719
    .local v1, "doPutDialog":Z
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getLocalTag()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_19e

    invoke-virtual {p2}, Lgov/nist/javax/sip/message/SIPResponse;->getTo()Ljavax/sip/header/ToHeader;

    move-result-object v6

    invoke-interface {v6}, Ljavax/sip/header/ToHeader;->getTag()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_19e

    .line 2720
    invoke-static {v2}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isDialogCreated(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_19e

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getMethod()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_19e

    .line 2721
    invoke-virtual {p2}, Lgov/nist/javax/sip/message/SIPResponse;->getTo()Ljavax/sip/header/ToHeader;

    move-result-object v6

    invoke-interface {v6}, Ljavax/sip/header/ToHeader;->getTag()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lgov/nist/javax/sip/stack/SIPDialog;->setLocalTag(Ljava/lang/String;)V

    .line 2723
    const/4 v1, 0x1

    .line 2726
    :cond_19e
    div-int/lit8 v6, v0, 0x64

    if-eq v6, v9, :cond_1f5

    .line 2727
    div-int/lit8 v3, v0, 0x64

    if-ne v3, v10, :cond_1bb

    .line 2728
    if-eqz v1, :cond_3f5

    .line 2730
    sget v3, Lgov/nist/javax/sip/stack/SIPDialog;->EARLY_STATE:I

    invoke-virtual {p0, v3}, Lgov/nist/javax/sip/stack/SIPDialog;->setState(I)V

    .line 2731
    invoke-virtual {p2, v10}, Lgov/nist/javax/sip/message/SIPResponse;->getDialogId(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lgov/nist/javax/sip/stack/SIPDialog;->setDialogId(Ljava/lang/String;)V

    .line 2732
    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v3, p0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->putDialog(Lgov/nist/javax/sip/stack/SIPDialog;)V

    goto/16 :goto_3f5

    .line 2744
    :cond_1bb
    const/16 v3, 0x1e9

    if-ne v0, v3, :cond_1e0

    .line 2745
    invoke-virtual {v2, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1cb

    .line 2746
    invoke-virtual {v2, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e0

    .line 2747
    :cond_1cb
    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v3

    if-eqz v3, :cond_3f5

    .line 2748
    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v3

    const-string v4, "RFC 3265 : Not setting dialog to TERMINATED for 489"

    invoke-interface {v3, v4}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto/16 :goto_3f5

    .line 2755
    :cond_1e0
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->isReInvite()Z

    move-result v3

    if-nez v3, :cond_3f5

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getState()Ljavax/sip/DialogState;

    move-result-object v3

    sget-object v4, Ljavax/sip/DialogState;->CONFIRMED:Ljavax/sip/DialogState;

    if-eq v3, v4, :cond_3f5

    .line 2756
    sget v3, Lgov/nist/javax/sip/stack/SIPDialog;->TERMINATED_STATE:I

    invoke-virtual {p0, v3}, Lgov/nist/javax/sip/stack/SIPDialog;->setState(I)V

    goto/16 :goto_3f5

    .line 2767
    :cond_1f5
    iget v6, p0, Lgov/nist/javax/sip/stack/SIPDialog;->dialogState:I

    sget v7, Lgov/nist/javax/sip/stack/SIPDialog;->EARLY_STATE:I

    if-gt v6, v7, :cond_212

    .line 2768
    invoke-virtual {v2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_20d

    .line 2769
    invoke-virtual {v2, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_20d

    .line 2770
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_212

    .line 2771
    :cond_20d
    sget v3, Lgov/nist/javax/sip/stack/SIPDialog;->CONFIRMED_STATE:I

    invoke-virtual {p0, v3}, Lgov/nist/javax/sip/stack/SIPDialog;->setState(I)V

    .line 2774
    :cond_212
    if-eqz v1, :cond_220

    .line 2775
    invoke-virtual {p2, v10}, Lgov/nist/javax/sip/message/SIPResponse;->getDialogId(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lgov/nist/javax/sip/stack/SIPDialog;->setDialogId(Ljava/lang/String;)V

    .line 2776
    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v3, p0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->putDialog(Lgov/nist/javax/sip/stack/SIPDialog;)V

    .line 2782
    :cond_220
    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPTransaction;->getState()Ljavax/sip/TransactionState;

    move-result-object v3

    sget-object v6, Ljavax/sip/TransactionState;->TERMINATED:Ljavax/sip/TransactionState;

    if-eq v3, v6, :cond_3f5

    .line 2783
    invoke-virtual {p2}, Lgov/nist/javax/sip/message/SIPResponse;->getStatusCode()I

    move-result v3

    if-ne v3, v4, :cond_3f5

    .line 2784
    invoke-virtual {v2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3f5

    iget-boolean v3, p0, Lgov/nist/javax/sip/stack/SIPDialog;->isBackToBackUserAgent:Z

    if-eqz v3, :cond_3f5

    .line 2790
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->takeAckSem()Z

    move-result v3

    if-nez v3, :cond_3f5

    .line 2791
    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v3

    if-eqz v3, :cond_251

    .line 2792
    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v3

    const-string v4, "Delete dialog -- cannot acquire ackSem"

    invoke-interface {v3, v4}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 2795
    :cond_251
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->delete()V

    .line 2796
    return-void

    .line 2597
    .end local v1    # "doPutDialog":Z
    :cond_255
    :goto_255
    invoke-static {v2}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isDialogCreated(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3a7

    .line 2599
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getState()Ljavax/sip/DialogState;

    move-result-object v1

    const/4 v3, 0x0

    if-nez v1, :cond_295

    div-int/lit8 v1, v0, 0x64

    if-ne v1, v10, :cond_295

    .line 2604
    sget v1, Lgov/nist/javax/sip/stack/SIPDialog;->EARLY_STATE:I

    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/stack/SIPDialog;->setState(I)V

    .line 2605
    invoke-virtual {p2}, Lgov/nist/javax/sip/message/SIPResponse;->getToTag()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_277

    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    iget-boolean v1, v1, Lgov/nist/javax/sip/stack/SIPTransactionStack;->rfc2543Supported:Z

    if-eqz v1, :cond_358

    .line 2606
    :cond_277
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getRemoteTag()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_358

    .line 2607
    invoke-virtual {p2}, Lgov/nist/javax/sip/message/SIPResponse;->getToTag()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lgov/nist/javax/sip/stack/SIPDialog;->setRemoteTag(Ljava/lang/String;)V

    .line 2608
    invoke-virtual {p2, v3}, Lgov/nist/javax/sip/message/SIPResponse;->getDialogId(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/stack/SIPDialog;->setDialogId(Ljava/lang/String;)V

    .line 2609
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v1, p0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->putDialog(Lgov/nist/javax/sip/stack/SIPDialog;)V

    .line 2610
    invoke-direct {p0, p2}, Lgov/nist/javax/sip/stack/SIPDialog;->addRoute(Lgov/nist/javax/sip/message/SIPResponse;)V

    goto/16 :goto_358

    .line 2612
    :cond_295
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getState()Ljavax/sip/DialogState;

    move-result-object v1

    if-eqz v1, :cond_2db

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getState()Ljavax/sip/DialogState;

    move-result-object v1

    sget-object v4, Ljavax/sip/DialogState;->EARLY:Ljavax/sip/DialogState;

    invoke-virtual {v1, v4}, Ljavax/sip/DialogState;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2db

    div-int/lit8 v1, v0, 0x64

    if-ne v1, v10, :cond_2db

    .line 2619
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getMethod()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_358

    if-eqz p1, :cond_358

    .line 2620
    invoke-virtual {p2}, Lgov/nist/javax/sip/message/SIPResponse;->getToTag()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2c3

    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    iget-boolean v1, v1, Lgov/nist/javax/sip/stack/SIPTransactionStack;->rfc2543Supported:Z

    if-eqz v1, :cond_358

    .line 2621
    :cond_2c3
    invoke-virtual {p2}, Lgov/nist/javax/sip/message/SIPResponse;->getToTag()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lgov/nist/javax/sip/stack/SIPDialog;->setRemoteTag(Ljava/lang/String;)V

    .line 2622
    invoke-virtual {p2, v3}, Lgov/nist/javax/sip/message/SIPResponse;->getDialogId(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/stack/SIPDialog;->setDialogId(Ljava/lang/String;)V

    .line 2623
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v1, p0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->putDialog(Lgov/nist/javax/sip/stack/SIPDialog;)V

    .line 2624
    invoke-direct {p0, p2}, Lgov/nist/javax/sip/stack/SIPDialog;->addRoute(Lgov/nist/javax/sip/message/SIPResponse;)V

    goto/16 :goto_358

    .line 2626
    :cond_2db
    div-int/lit8 v1, v0, 0x64

    if-ne v1, v9, :cond_32f

    .line 2633
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getMethod()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_318

    .line 2634
    invoke-virtual {p2}, Lgov/nist/javax/sip/message/SIPResponse;->getToTag()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2f5

    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    iget-boolean v1, v1, Lgov/nist/javax/sip/stack/SIPTransactionStack;->rfc2543Supported:Z

    if-eqz v1, :cond_318

    .line 2635
    :cond_2f5
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getState()Ljavax/sip/DialogState;

    move-result-object v1

    sget-object v4, Ljavax/sip/DialogState;->CONFIRMED:Ljavax/sip/DialogState;

    if-eq v1, v4, :cond_318

    .line 2636
    invoke-virtual {p2}, Lgov/nist/javax/sip/message/SIPResponse;->getToTag()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lgov/nist/javax/sip/stack/SIPDialog;->setRemoteTag(Ljava/lang/String;)V

    .line 2637
    invoke-virtual {p2, v3}, Lgov/nist/javax/sip/message/SIPResponse;->getDialogId(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/stack/SIPDialog;->setDialogId(Ljava/lang/String;)V

    .line 2638
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v1, p0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->putDialog(Lgov/nist/javax/sip/stack/SIPDialog;)V

    .line 2639
    invoke-direct {p0, p2}, Lgov/nist/javax/sip/stack/SIPDialog;->addRoute(Lgov/nist/javax/sip/message/SIPResponse;)V

    .line 2641
    sget v1, Lgov/nist/javax/sip/stack/SIPDialog;->CONFIRMED_STATE:I

    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/stack/SIPDialog;->setState(I)V

    .line 2645
    :cond_318
    invoke-virtual {v2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_358

    .line 2646
    invoke-virtual {p2}, Lgov/nist/javax/sip/message/SIPResponse;->getCSeq()Ljavax/sip/header/CSeqHeader;

    move-result-object v1

    invoke-interface {v1}, Ljavax/sip/header/CSeqHeader;->getSeqNumber()J

    move-result-wide v3

    iget-wide v5, p0, Lgov/nist/javax/sip/stack/SIPDialog;->lastInviteOkReceived:J

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    iput-wide v3, p0, Lgov/nist/javax/sip/stack/SIPDialog;->lastInviteOkReceived:J

    goto :goto_358

    .line 2650
    :cond_32f
    const/16 v1, 0x12c

    if-lt v0, v1, :cond_358

    const/16 v1, 0x2bb

    if-gt v0, v1, :cond_358

    .line 2652
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getState()Ljavax/sip/DialogState;

    move-result-object v1

    if-eqz v1, :cond_353

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getMethod()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_358

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getState()Ljavax/sip/DialogState;

    move-result-object v1

    .line 2653
    invoke-virtual {v1}, Ljavax/sip/DialogState;->getValue()I

    move-result v1

    sget v3, Lgov/nist/javax/sip/stack/SIPDialog;->EARLY_STATE:I

    if-ne v1, v3, :cond_358

    .line 2660
    :cond_353
    sget v1, Lgov/nist/javax/sip/stack/SIPDialog;->TERMINATED_STATE:I

    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/stack/SIPDialog;->setState(I)V

    .line 2675
    :cond_358
    :goto_358
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getState()Ljavax/sip/DialogState;

    move-result-object v1

    sget-object v3, Ljavax/sip/DialogState;->CONFIRMED:Ljavax/sip/DialogState;

    if-eq v1, v3, :cond_3f5

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getState()Ljavax/sip/DialogState;

    move-result-object v1

    sget-object v3, Ljavax/sip/DialogState;->TERMINATED:Ljavax/sip/DialogState;

    if-eq v1, v3, :cond_3f5

    .line 2676
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->originalRequest:Lgov/nist/javax/sip/message/SIPRequest;

    if-eqz v1, :cond_3f5

    .line 2677
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->originalRequest:Lgov/nist/javax/sip/message/SIPRequest;

    invoke-virtual {v1}, Lgov/nist/javax/sip/message/SIPRequest;->getRecordRouteHeaders()Lgov/nist/javax/sip/header/RecordRouteList;

    move-result-object v1

    .line 2678
    .local v1, "rrList":Lgov/nist/javax/sip/header/RecordRouteList;
    if-eqz v1, :cond_3a6

    .line 2679
    invoke-virtual {v1}, Lgov/nist/javax/sip/header/RecordRouteList;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Lgov/nist/javax/sip/header/RecordRouteList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v3

    .line 2680
    .local v3, "it":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lgov/nist/javax/sip/header/RecordRoute;>;"
    :goto_37c
    invoke-interface {v3}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v4

    if-eqz v4, :cond_3a6

    .line 2681
    invoke-interface {v3}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lgov/nist/javax/sip/header/RecordRoute;

    .line 2682
    .local v4, "rr":Lgov/nist/javax/sip/header/RecordRoute;
    iget-object v5, p0, Lgov/nist/javax/sip/stack/SIPDialog;->routeList:Lgov/nist/javax/sip/header/RouteList;

    invoke-virtual {v5}, Lgov/nist/javax/sip/header/RouteList;->getFirst()Lgov/nist/javax/sip/header/SIPHeader;

    move-result-object v5

    check-cast v5, Lgov/nist/javax/sip/header/Route;

    .line 2683
    .local v5, "route":Lgov/nist/javax/sip/header/Route;
    if-eqz v5, :cond_3a6

    invoke-virtual {v4}, Lgov/nist/javax/sip/header/RecordRoute;->getAddress()Ljavax/sip/address/Address;

    move-result-object v6

    invoke-virtual {v5}, Lgov/nist/javax/sip/header/Route;->getAddress()Ljavax/sip/address/Address;

    move-result-object v7

    invoke-interface {v6, v7}, Ljavax/sip/address/Address;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3a6

    .line 2684
    iget-object v6, p0, Lgov/nist/javax/sip/stack/SIPDialog;->routeList:Lgov/nist/javax/sip/header/RouteList;

    invoke-virtual {v6}, Lgov/nist/javax/sip/header/RouteList;->removeFirst()Lgov/nist/javax/sip/header/SIPHeader;

    .line 2687
    .end local v4    # "rr":Lgov/nist/javax/sip/header/RecordRoute;
    .end local v5    # "route":Lgov/nist/javax/sip/header/Route;
    goto :goto_37c

    .line 2689
    .end local v1    # "rrList":Lgov/nist/javax/sip/header/RecordRouteList;
    .end local v3    # "it":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lgov/nist/javax/sip/header/RecordRoute;>;"
    :cond_3a6
    goto :goto_3f5

    .line 2692
    :cond_3a7
    invoke-virtual {v2, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3e0

    .line 2693
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getMethod()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3c1

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getMethod()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3e0

    .line 2694
    :cond_3c1
    invoke-virtual {p2}, Lgov/nist/javax/sip/message/SIPResponse;->getStatusCode()I

    move-result v3

    div-int/2addr v3, v1

    if-ne v3, v9, :cond_3e0

    .line 2695
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getState()Ljavax/sip/DialogState;

    move-result-object v1

    if-nez v1, :cond_3e0

    .line 2697
    invoke-virtual {p2, v10}, Lgov/nist/javax/sip/message/SIPResponse;->getDialogId(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/stack/SIPDialog;->setDialogId(Ljava/lang/String;)V

    .line 2698
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v1, p0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->putDialog(Lgov/nist/javax/sip/stack/SIPDialog;)V

    .line 2699
    sget v1, Lgov/nist/javax/sip/stack/SIPDialog;->CONFIRMED_STATE:I

    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/stack/SIPDialog;->setState(I)V

    goto :goto_3f5

    .line 2701
    :cond_3e0
    invoke-virtual {v2, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3f5

    div-int/lit8 v1, v0, 0x64

    if-ne v1, v9, :cond_3f5

    .line 2702
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->isTerminatedOnBye()Z

    move-result v1

    if-eqz v1, :cond_3f5

    .line 2704
    sget v1, Lgov/nist/javax/sip/stack/SIPDialog;->TERMINATED_STATE:I

    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/stack/SIPDialog;->setState(I)V

    .line 2805
    :cond_3f5
    :goto_3f5
    return-void
.end method

.method greylist setReInviteFlag(Z)V
    .registers 2
    .param p1, "reInviteFlag"    # Z

    .line 3313
    iput-boolean p1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->reInviteFlag:Z

    .line 3314
    return-void
.end method

.method public greylist setRemoteSequenceNumber(J)V
    .registers 6
    .param p1, "rCseq"    # J

    .line 1642
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 1643
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setRemoteSeqno "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 1644
    :cond_2e
    iput-wide p1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->remoteSequenceNumber:J

    .line 1645
    return-void
.end method

.method greylist setRemoteTarget(Ljavax/sip/header/ContactHeader;)V
    .registers 5
    .param p1, "contact"    # Ljavax/sip/header/ContactHeader;

    .line 813
    invoke-interface {p1}, Ljavax/sip/header/ContactHeader;->getAddress()Ljavax/sip/address/Address;

    move-result-object v0

    iput-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->remoteTarget:Ljavax/sip/address/Address;

    .line 814
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_35

    .line 815
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Dialog.setRemoteTarget: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPDialog;->remoteTarget:Ljavax/sip/address/Address;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 816
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    invoke-interface {v0}, Lgov/nist/core/StackLogger;->logStackTrace()V

    .line 819
    :cond_35
    return-void
.end method

.method public greylist setResponseTags(Lgov/nist/javax/sip/message/SIPResponse;)V
    .registers 5
    .param p1, "sipResponse"    # Lgov/nist/javax/sip/message/SIPResponse;

    .line 2527
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getLocalTag()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4b

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getRemoteTag()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_d

    goto :goto_4b

    .line 2530
    :cond_d
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPResponse;->getFromTag()Ljava/lang/String;

    move-result-object v0

    .line 2531
    .local v0, "responseFromTag":Ljava/lang/String;
    if-eqz v0, :cond_37

    .line 2532
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getLocalTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 2533
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getRemoteTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lgov/nist/javax/sip/message/SIPResponse;->setToTag(Ljava/lang/String;)V

    goto :goto_4a

    .line 2534
    :cond_25
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getRemoteTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4a

    .line 2535
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getLocalTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lgov/nist/javax/sip/message/SIPResponse;->setToTag(Ljava/lang/String;)V

    goto :goto_4a

    .line 2538
    :cond_37
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v1

    if-eqz v1, :cond_4a

    .line 2539
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v1

    const-string v2, "No from tag in response! Not RFC 3261 compatible."

    invoke-interface {v1, v2}, Lgov/nist/core/StackLogger;->logWarning(Ljava/lang/String;)V

    .line 2542
    :cond_4a
    :goto_4a
    return-void

    .line 2528
    .end local v0    # "responseFromTag":Ljava/lang/String;
    :cond_4b
    :goto_4b
    return-void
.end method

.method protected greylist setRetransmissionTicks()V
    .registers 2

    .line 2226
    const/4 v0, 0x1

    iput v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->retransmissionTicksLeft:I

    .line 2227
    iput v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->prevRetransmissionTicks:I

    .line 2228
    return-void
.end method

.method greylist setRouteList(Lgov/nist/javax/sip/header/RouteList;)V
    .registers 2
    .param p1, "routeList"    # Lgov/nist/javax/sip/header/RouteList;

    .line 918
    iput-object p1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->routeList:Lgov/nist/javax/sip/header/RouteList;

    .line 919
    return-void
.end method

.method greylist setServerTransactionFlag(Z)V
    .registers 2
    .param p1, "serverTransactionFlag"    # Z

    .line 3306
    iput-boolean p1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->serverTransactionFlag:Z

    .line 3307
    return-void
.end method

.method public greylist setSipProvider(Lgov/nist/javax/sip/SipProviderImpl;)V
    .registers 2
    .param p1, "sipProvider"    # Lgov/nist/javax/sip/SipProviderImpl;

    .line 2516
    iput-object p1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipProvider:Lgov/nist/javax/sip/SipProviderImpl;

    .line 2517
    return-void
.end method

.method greylist setStack(Lgov/nist/javax/sip/stack/SIPTransactionStack;)V
    .registers 2
    .param p1, "sipStack"    # Lgov/nist/javax/sip/stack/SIPTransactionStack;

    .line 1039
    iput-object p1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    .line 1041
    return-void
.end method

.method public greylist setState(I)V
    .registers 6
    .param p1, "state"    # I

    .line 1213
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_8e

    .line 1214
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting dialog state for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "newState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 1216
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    invoke-interface {v0}, Lgov/nist/core/StackLogger;->logStackTrace()V

    .line 1217
    const/4 v0, -0x1

    if-eq p1, v0, :cond_8e

    iget v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->dialogState:I

    if-eq p1, v0, :cond_8e

    .line 1218
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_8e

    .line 1219
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  old dialog state is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1220
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getState()Ljavax/sip/DialogState;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1219
    invoke-interface {v0, v1}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 1221
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  New dialog state is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1222
    invoke-static {p1}, Ljavax/sip/DialogState;->getObject(I)Ljavax/sip/DialogState;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1221
    invoke-interface {v0, v1}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 1226
    :cond_8e
    iput p1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->dialogState:I

    .line 1228
    sget v0, Lgov/nist/javax/sip/stack/SIPDialog;->TERMINATED_STATE:I

    if-ne p1, v0, :cond_af

    .line 1229
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getTimer()Ljava/util/Timer;

    move-result-object v0

    if-eqz v0, :cond_ac

    .line 1230
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getTimer()Ljava/util/Timer;

    move-result-object v0

    new-instance v1, Lgov/nist/javax/sip/stack/SIPDialog$LingerTimer;

    invoke-direct {v1, p0}, Lgov/nist/javax/sip/stack/SIPDialog$LingerTimer;-><init>(Lgov/nist/javax/sip/stack/SIPDialog;)V

    const-wide/16 v2, 0x1f40

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 1232
    :cond_ac
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->stopTimer()V

    .line 1235
    :cond_af
    return-void
.end method

.method public greylist startRetransmitTimer(Lgov/nist/javax/sip/stack/SIPServerTransaction;Ljavax/sip/message/Response;)V
    .registers 5
    .param p1, "sipServerTx"    # Lgov/nist/javax/sip/stack/SIPServerTransaction;
    .param p2, "response"    # Ljavax/sip/message/Response;

    .line 2814
    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getRequest()Ljavax/sip/message/Request;

    move-result-object v0

    invoke-interface {v0}, Ljavax/sip/message/Request;->getMethod()Ljava/lang/String;

    move-result-object v0

    const-string v1, "INVITE"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 2815
    invoke-interface {p2}, Ljavax/sip/message/Response;->getStatusCode()I

    move-result v0

    div-int/lit8 v0, v0, 0x64

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1c

    .line 2816
    invoke-virtual {p0, p1}, Lgov/nist/javax/sip/stack/SIPDialog;->startTimer(Lgov/nist/javax/sip/stack/SIPServerTransaction;)V

    .line 2818
    :cond_1c
    return-void
.end method

.method protected greylist startTimer(Lgov/nist/javax/sip/stack/SIPServerTransaction;)V
    .registers 9
    .param p1, "transaction"    # Lgov/nist/javax/sip/stack/SIPServerTransaction;

    .line 2269
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->timerTask:Lgov/nist/javax/sip/stack/SIPDialog$DialogTimerTask;

    if-eqz v0, :cond_33

    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->timerTask:Lgov/nist/javax/sip/stack/SIPDialog$DialogTimerTask;

    iget-object v0, v0, Lgov/nist/javax/sip/stack/SIPDialog$DialogTimerTask;->transaction:Lgov/nist/javax/sip/stack/SIPServerTransaction;

    if-ne v0, p1, :cond_33

    .line 2270
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_32

    .line 2271
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Timer already running for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getDialogId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 2272
    :cond_32
    return-void

    .line 2274
    :cond_33
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_5b

    .line 2275
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Starting dialog timer for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getDialogId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 2276
    :cond_5b
    const/4 v0, 0x0

    iput-boolean v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->ackSeen:Z

    .line 2278
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->acquireTimerTaskSem()V

    .line 2280
    :try_start_61
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->timerTask:Lgov/nist/javax/sip/stack/SIPDialog$DialogTimerTask;

    if-eqz v0, :cond_6a

    .line 2281
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->timerTask:Lgov/nist/javax/sip/stack/SIPDialog$DialogTimerTask;

    iput-object p1, v0, Lgov/nist/javax/sip/stack/SIPDialog$DialogTimerTask;->transaction:Lgov/nist/javax/sip/stack/SIPServerTransaction;

    goto :goto_80

    .line 2283
    :cond_6a
    new-instance v0, Lgov/nist/javax/sip/stack/SIPDialog$DialogTimerTask;

    invoke-direct {v0, p0, p1}, Lgov/nist/javax/sip/stack/SIPDialog$DialogTimerTask;-><init>(Lgov/nist/javax/sip/stack/SIPDialog;Lgov/nist/javax/sip/stack/SIPServerTransaction;)V

    iput-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->timerTask:Lgov/nist/javax/sip/stack/SIPDialog$DialogTimerTask;

    .line 2284
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getTimer()Ljava/util/Timer;

    move-result-object v1

    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPDialog;->timerTask:Lgov/nist/javax/sip/stack/SIPDialog$DialogTimerTask;

    const-wide/16 v3, 0x1f4

    const-wide/16 v5, 0x1f4

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V
    :try_end_80
    .catchall {:try_start_61 .. :try_end_80} :catchall_88

    .line 2288
    :goto_80
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->releaseTimerTaskSem()V

    .line 2289
    nop

    .line 2291
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->setRetransmissionTicks()V

    .line 2292
    return-void

    .line 2288
    :catchall_88
    move-exception v0

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->releaseTimerTaskSem()V

    .line 2289
    throw v0
.end method

.method protected greylist stopTimer()V
    .registers 2

    .line 2300
    :try_start_0
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->acquireTimerTaskSem()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_1a

    .line 2302
    :try_start_3
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->timerTask:Lgov/nist/javax/sip/stack/SIPDialog$DialogTimerTask;

    if-eqz v0, :cond_f

    .line 2303
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->timerTask:Lgov/nist/javax/sip/stack/SIPDialog$DialogTimerTask;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPDialog$DialogTimerTask;->cancel()Z

    .line 2304
    const/4 v0, 0x0

    iput-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->timerTask:Lgov/nist/javax/sip/stack/SIPDialog$DialogTimerTask;
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_14

    .line 2307
    :cond_f
    :try_start_f
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->releaseTimerTaskSem()V

    .line 2308
    nop

    .line 2310
    goto :goto_1b

    .line 2307
    :catchall_14
    move-exception v0

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->releaseTimerTaskSem()V

    .line 2308
    nop

    .end local p0    # "this":Lgov/nist/javax/sip/stack/SIPDialog;
    throw v0
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_1a} :catch_1a

    .line 2309
    .restart local p0    # "this":Lgov/nist/javax/sip/stack/SIPDialog;
    :catch_1a
    move-exception v0

    .line 2311
    :goto_1b
    return-void
.end method

.method greylist takeAckSem()Z
    .registers 7

    .line 3202
    const-string v0, "Cannot aquire ACK semaphore"

    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v1

    if-eqz v1, :cond_26

    .line 3203
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[takeAckSem "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 3206
    :cond_26
    const/4 v1, 0x0

    :try_start_27
    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPDialog;->ackSem:Ljava/util/concurrent/Semaphore;

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x2

    invoke-virtual {v2, v4, v5, v3}, Ljava/util/concurrent/Semaphore;->tryAcquire(JLjava/util/concurrent/TimeUnit;)Z

    move-result v2

    if-nez v2, :cond_74

    .line 3207
    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v2

    if-eqz v2, :cond_44

    .line 3208
    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v2

    invoke-interface {v2, v0}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;)V

    .line 3211
    :cond_44
    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v2

    if-eqz v2, :cond_73

    .line 3212
    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Semaphore previously acquired at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lgov/nist/javax/sip/stack/SIPDialog;->stackTrace:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 3213
    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v2

    invoke-interface {v2}, Lgov/nist/core/StackLogger;->logStackTrace()V

    .line 3216
    :cond_73
    return v1

    .line 3219
    :cond_74
    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v2

    if-eqz v2, :cond_7f

    .line 3221
    invoke-direct {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->recordStackTrace()V
    :try_end_7f
    .catch Ljava/lang/InterruptedException; {:try_start_27 .. :try_end_7f} :catch_82

    .line 3228
    :cond_7f
    nop

    .line 3229
    const/4 v0, 0x1

    return v0

    .line 3224
    :catch_82
    move-exception v2

    .line 3225
    .local v2, "ex":Ljava/lang/InterruptedException;
    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v3

    invoke-interface {v3, v0}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;)V

    .line 3226
    return v1
.end method

.method public greylist terminateOnBye(Z)V
    .registers 2
    .param p1, "terminateFlag"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    .line 3074
    iput-boolean p1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->terminateOnBye:Z

    .line 3075
    return-void
.end method

.method declared-synchronized greylist testAndSetIsDialogTerminatedEventDelivered()Z
    .registers 3

    monitor-enter p0

    .line 1108
    :try_start_1
    iget-boolean v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->dialogTerminatedEventDelivered:Z

    .line 1109
    .local v0, "retval":Z
    const/4 v1, 0x1

    iput-boolean v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->dialogTerminatedEventDelivered:Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 1110
    monitor-exit p0

    return v0

    .line 1107
    .end local v0    # "retval":Z
    .end local p0    # "this":Lgov/nist/javax/sip/stack/SIPDialog;
    :catchall_8
    move-exception v0

    :try_start_9
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_9 .. :try_end_a} :catchall_8

    throw v0
.end method

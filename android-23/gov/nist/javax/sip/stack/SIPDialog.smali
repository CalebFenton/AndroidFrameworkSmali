.class public Lgov/nist/javax/sip/stack/SIPDialog;
.super Ljava/lang/Object;
.source "SIPDialog.java"

# interfaces
.implements Ljavax/sip/Dialog;
.implements Lgov/nist/javax/sip/DialogExt;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgov/nist/javax/sip/stack/SIPDialog$ReInviteSender;,
        Lgov/nist/javax/sip/stack/SIPDialog$LingerTimer;,
        Lgov/nist/javax/sip/stack/SIPDialog$DialogTimerTask;,
        Lgov/nist/javax/sip/stack/SIPDialog$DialogDeleteTask;,
        Lgov/nist/javax/sip/stack/SIPDialog$DialogDeleteIfNoAckSentTask;
    }
.end annotation


# static fields
.field public static final CONFIRMED_STATE:I

.field private static final DIALOG_LINGER_TIME:I = 0x8

.field public static final EARLY_STATE:I

.field public static final NULL_STATE:I = -0x1

.field public static final TERMINATED_STATE:I

.field private static final serialVersionUID:J = -0x13d7a673d1d40265L


# instance fields
.field private transient ackLine:I

.field protected transient ackProcessed:Z

.field protected transient ackSeen:Z

.field private transient ackSem:Ljava/util/concurrent/Semaphore;

.field private transient applicationData:Ljava/lang/Object;

.field public transient auditTag:J

.field private transient byeSent:Z

.field protected callIdHeader:Ljavax/sip/header/CallIdHeader;

.field protected contactHeader:Lgov/nist/javax/sip/header/Contact;

.field private transient dialogDeleteIfNoAckSentTask:Lgov/nist/javax/sip/stack/SIPDialog$DialogDeleteIfNoAckSentTask;

.field private transient dialogDeleteTask:Lgov/nist/javax/sip/stack/SIPDialog$DialogDeleteTask;

.field private dialogId:Ljava/lang/String;

.field private dialogState:I

.field private transient dialogTerminatedEventDelivered:Z

.field private transient earlyDialogId:Ljava/lang/String;

.field private eventHeader:Ljavax/sip/header/EventHeader;

.field private transient eventListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lgov/nist/javax/sip/stack/SIPDialogEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private transient firstTransaction:Lgov/nist/javax/sip/stack/SIPTransaction;

.field protected firstTransactionId:Ljava/lang/String;

.field protected firstTransactionIsServerTransaction:Z

.field protected firstTransactionMethod:Ljava/lang/String;

.field protected firstTransactionPort:I

.field protected firstTransactionSecure:Z

.field protected firstTransactionSeen:Z

.field private transient highestSequenceNumberAcknowledged:J

.field protected hisTag:Ljava/lang/String;

.field private transient isAcknowledged:Z

.field private transient isAssigned:Z

.field private isBackToBackUserAgent:Z

.field private lastAckReceived:Lgov/nist/javax/sip/message/SIPRequest;

.field private transient lastAckSent:Lgov/nist/javax/sip/message/SIPRequest;

.field private transient lastInviteOkReceived:J

.field private lastResponse:Lgov/nist/javax/sip/message/SIPResponse;

.field private transient lastTransaction:Lgov/nist/javax/sip/stack/SIPTransaction;

.field protected localParty:Ljavax/sip/address/Address;

.field private localSequenceNumber:J

.field private method:Ljava/lang/String;

.field protected myTag:Ljava/lang/String;

.field protected transient nextSeqno:Ljava/lang/Long;

.field private originalLocalSequenceNumber:J

.field private transient originalRequest:Lgov/nist/javax/sip/message/SIPRequest;

.field private transient prevRetransmissionTicks:I

.field private reInviteFlag:Z

.field private transient reInviteWaitTime:I

.field protected remoteParty:Ljavax/sip/address/Address;

.field private remoteSequenceNumber:J

.field private remoteTarget:Ljavax/sip/address/Address;

.field private transient retransmissionTicksLeft:I

.field private routeList:Lgov/nist/javax/sip/header/RouteList;

.field private sequenceNumberValidation:Z

.field private serverTransactionFlag:Z

.field private transient sipProvider:Lgov/nist/javax/sip/SipProviderImpl;

.field private transient sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

.field private transient stackTrace:Ljava/lang/String;

.field private terminateOnBye:Z

.field protected transient timerTask:Lgov/nist/javax/sip/stack/SIPDialog$DialogTimerTask;

.field private timerTaskLock:Ljava/util/concurrent/Semaphore;


# direct methods
.method static synthetic -get0(Lgov/nist/javax/sip/stack/SIPDialog;)I
    .locals 1

    #@0
    iget v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->dialogState:I

    #@2
    return v0
.end method

.method static synthetic -get1(Lgov/nist/javax/sip/stack/SIPDialog;)Ljava/util/Set;
    .locals 1

    #@0
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->eventListeners:Ljava/util/Set;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Lgov/nist/javax/sip/stack/SIPDialog;)J
    .locals 2

    #@0
    iget-wide v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->highestSequenceNumberAcknowledged:J

    #@2
    return-wide v0
.end method

.method static synthetic -get3(Lgov/nist/javax/sip/stack/SIPDialog;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->isBackToBackUserAgent:Z

    #@2
    return v0
.end method

.method static synthetic -get4(Lgov/nist/javax/sip/stack/SIPDialog;)I
    .locals 1

    #@0
    iget v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->reInviteWaitTime:I

    #@2
    return v0
.end method

.method static synthetic -get5(Lgov/nist/javax/sip/stack/SIPDialog;)Lgov/nist/javax/sip/SipProviderImpl;
    .locals 1

    #@0
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipProvider:Lgov/nist/javax/sip/SipProviderImpl;

    #@2
    return-object v0
.end method

.method static synthetic -get6(Lgov/nist/javax/sip/stack/SIPDialog;)Lgov/nist/javax/sip/stack/SIPTransactionStack;
    .locals 1

    #@0
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@2
    return-object v0
.end method

.method static synthetic -set0(Lgov/nist/javax/sip/stack/SIPDialog;Lgov/nist/javax/sip/stack/SIPDialog$DialogDeleteIfNoAckSentTask;)Lgov/nist/javax/sip/stack/SIPDialog$DialogDeleteIfNoAckSentTask;
    .locals 0

    #@0
    iput-object p1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->dialogDeleteIfNoAckSentTask:Lgov/nist/javax/sip/stack/SIPDialog$DialogDeleteIfNoAckSentTask;

    #@2
    return-object p1
.end method

.method static synthetic -set1(Lgov/nist/javax/sip/stack/SIPDialog;Ljava/util/concurrent/Semaphore;)Ljava/util/concurrent/Semaphore;
    .locals 0

    #@0
    iput-object p1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->timerTaskLock:Ljava/util/concurrent/Semaphore;

    #@2
    return-object p1
.end method

.method static synthetic -wrap0(Lgov/nist/javax/sip/stack/SIPDialog;I)Z
    .locals 1
    .param p1, "T2"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/stack/SIPDialog;->toRetransmitFinalResponse(I)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap1(Lgov/nist/javax/sip/stack/SIPDialog;I)V
    .locals 0
    .param p1, "dialogTimeoutError"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/stack/SIPDialog;->raiseErrorEvent(I)V

    #@3
    return-void
.end method

.method static synthetic -wrap2(Lgov/nist/javax/sip/stack/SIPDialog;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "protocol"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3}, Lgov/nist/javax/sip/stack/SIPDialog;->raiseIOException(Ljava/lang/String;ILjava/lang/String;)V

    #@3
    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 214
    sget v0, Ljavax/sip/DialogState;->_EARLY:I

    #@2
    sput v0, Lgov/nist/javax/sip/stack/SIPDialog;->EARLY_STATE:I

    #@4
    .line 216
    sget v0, Ljavax/sip/DialogState;->_CONFIRMED:I

    #@6
    sput v0, Lgov/nist/javax/sip/stack/SIPDialog;->CONFIRMED_STATE:I

    #@8
    .line 218
    sget v0, Ljavax/sip/DialogState;->_TERMINATED:I

    #@a
    sput v0, Lgov/nist/javax/sip/stack/SIPDialog;->TERMINATED_STATE:I

    #@c
    .line 131
    return-void
.end method

.method private constructor <init>(Lgov/nist/javax/sip/SipProviderImpl;)V
    .locals 6
    .param p1, "provider"    # Lgov/nist/javax/sip/SipProviderImpl;

    #@0
    .prologue
    const-wide/16 v4, 0x0

    #@2
    const-wide/16 v2, -0x1

    #@4
    const/4 v1, 0x1

    #@5
    .line 546
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@8
    .line 201
    iput-wide v4, p0, Lgov/nist/javax/sip/stack/SIPDialog;->auditTag:J

    #@a
    .line 242
    new-instance v0, Ljava/util/concurrent/Semaphore;

    #@c
    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    #@f
    iput-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->ackSem:Ljava/util/concurrent/Semaphore;

    #@11
    .line 244
    const/16 v0, 0x64

    #@13
    iput v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->reInviteWaitTime:I

    #@15
    .line 252
    iput-wide v2, p0, Lgov/nist/javax/sip/stack/SIPDialog;->highestSequenceNumberAcknowledged:J

    #@17
    .line 256
    iput-boolean v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sequenceNumberValidation:Z

    #@19
    .line 261
    new-instance v0, Ljava/util/concurrent/Semaphore;

    #@1b
    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    #@1e
    iput-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->timerTaskLock:Ljava/util/concurrent/Semaphore;

    #@20
    .line 271
    const/16 v0, 0x13c4

    #@22
    iput v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->firstTransactionPort:I

    #@24
    .line 547
    iput-boolean v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->terminateOnBye:Z

    #@26
    .line 548
    new-instance v0, Lgov/nist/javax/sip/header/RouteList;

    #@28
    invoke-direct {v0}, Lgov/nist/javax/sip/header/RouteList;-><init>()V

    #@2b
    iput-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->routeList:Lgov/nist/javax/sip/header/RouteList;

    #@2d
    .line 549
    const/4 v0, -0x1

    #@2e
    iput v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->dialogState:I

    #@30
    .line 550
    iput-wide v4, p0, Lgov/nist/javax/sip/stack/SIPDialog;->localSequenceNumber:J

    #@32
    .line 551
    iput-wide v2, p0, Lgov/nist/javax/sip/stack/SIPDialog;->remoteSequenceNumber:J

    #@34
    .line 552
    iput-object p1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipProvider:Lgov/nist/javax/sip/SipProviderImpl;

    #@36
    .line 553
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    #@38
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    #@3b
    iput-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->eventListeners:Ljava/util/Set;

    #@3d
    .line 546
    return-void
.end method

.method public constructor <init>(Lgov/nist/javax/sip/SipProviderImpl;Lgov/nist/javax/sip/message/SIPResponse;)V
    .locals 3
    .param p1, "sipProvider"    # Lgov/nist/javax/sip/SipProviderImpl;
    .param p2, "sipResponse"    # Lgov/nist/javax/sip/message/SIPResponse;

    #@0
    .prologue
    .line 613
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/stack/SIPDialog;-><init>(Lgov/nist/javax/sip/SipProviderImpl;)V

    #@3
    .line 614
    invoke-virtual {p1}, Lgov/nist/javax/sip/SipProviderImpl;->getSipStack()Ljavax/sip/SipStack;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@9
    iput-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@b
    .line 615
    const/4 v0, 0x0

    #@c
    invoke-virtual {p0, v0, p2}, Lgov/nist/javax/sip/stack/SIPDialog;->setLastResponse(Lgov/nist/javax/sip/stack/SIPTransaction;Lgov/nist/javax/sip/message/SIPResponse;)V

    #@f
    .line 616
    invoke-virtual {p2}, Lgov/nist/javax/sip/message/SIPResponse;->getCSeq()Ljavax/sip/header/CSeqHeader;

    #@12
    move-result-object v0

    #@13
    invoke-interface {v0}, Ljavax/sip/header/CSeqHeader;->getSeqNumber()J

    #@16
    move-result-wide v0

    #@17
    iput-wide v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->localSequenceNumber:J

    #@19
    .line 617
    iget-wide v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->localSequenceNumber:J

    #@1b
    iput-wide v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->originalLocalSequenceNumber:J

    #@1d
    .line 618
    invoke-virtual {p2}, Lgov/nist/javax/sip/message/SIPResponse;->getFrom()Ljavax/sip/header/FromHeader;

    #@20
    move-result-object v0

    #@21
    invoke-interface {v0}, Ljavax/sip/header/FromHeader;->getTag()Ljava/lang/String;

    #@24
    move-result-object v0

    #@25
    iput-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->myTag:Ljava/lang/String;

    #@27
    .line 619
    invoke-virtual {p2}, Lgov/nist/javax/sip/message/SIPResponse;->getTo()Ljavax/sip/header/ToHeader;

    #@2a
    move-result-object v0

    #@2b
    invoke-interface {v0}, Ljavax/sip/header/ToHeader;->getTag()Ljava/lang/String;

    #@2e
    move-result-object v0

    #@2f
    iput-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->hisTag:Ljava/lang/String;

    #@31
    .line 620
    invoke-virtual {p2}, Lgov/nist/javax/sip/message/SIPResponse;->getFrom()Ljavax/sip/header/FromHeader;

    #@34
    move-result-object v0

    #@35
    invoke-interface {v0}, Ljavax/sip/header/FromHeader;->getAddress()Ljavax/sip/address/Address;

    #@38
    move-result-object v0

    #@39
    iput-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->localParty:Ljavax/sip/address/Address;

    #@3b
    .line 621
    invoke-virtual {p2}, Lgov/nist/javax/sip/message/SIPResponse;->getTo()Ljavax/sip/header/ToHeader;

    #@3e
    move-result-object v0

    #@3f
    invoke-interface {v0}, Ljavax/sip/header/ToHeader;->getAddress()Ljavax/sip/address/Address;

    #@42
    move-result-object v0

    #@43
    iput-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->remoteParty:Ljavax/sip/address/Address;

    #@45
    .line 622
    invoke-virtual {p2}, Lgov/nist/javax/sip/message/SIPResponse;->getCSeq()Ljavax/sip/header/CSeqHeader;

    #@48
    move-result-object v0

    #@49
    invoke-interface {v0}, Ljavax/sip/header/CSeqHeader;->getMethod()Ljava/lang/String;

    #@4c
    move-result-object v0

    #@4d
    iput-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->method:Ljava/lang/String;

    #@4f
    .line 623
    invoke-virtual {p2}, Lgov/nist/javax/sip/message/SIPResponse;->getCallId()Ljavax/sip/header/CallIdHeader;

    #@52
    move-result-object v0

    #@53
    iput-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->callIdHeader:Ljavax/sip/header/CallIdHeader;

    #@55
    .line 624
    const/4 v0, 0x0

    #@56
    iput-boolean v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->serverTransactionFlag:Z

    #@58
    .line 625
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@5a
    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    #@5d
    move-result v0

    #@5e
    if-eqz v0, :cond_0

    #@60
    .line 626
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@62
    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@65
    move-result-object v0

    #@66
    new-instance v1, Ljava/lang/StringBuilder;

    #@68
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@6b
    const-string/jumbo v2, "Creating a dialog : "

    #@6e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@71
    move-result-object v1

    #@72
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@75
    move-result-object v1

    #@76
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@79
    move-result-object v1

    #@7a
    invoke-interface {v0, v1}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@7d
    .line 627
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@7f
    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@82
    move-result-object v0

    #@83
    invoke-interface {v0}, Lgov/nist/core/StackLogger;->logStackTrace()V

    #@86
    .line 629
    :cond_0
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@88
    iget-boolean v0, v0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isBackToBackUserAgent:Z

    #@8a
    iput-boolean v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->isBackToBackUserAgent:Z

    #@8c
    .line 630
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@8e
    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/stack/SIPDialog;->addEventListener(Lgov/nist/javax/sip/stack/SIPDialogEventListener;)V

    #@91
    .line 612
    return-void
.end method

.method public constructor <init>(Lgov/nist/javax/sip/stack/SIPClientTransaction;Lgov/nist/javax/sip/message/SIPResponse;)V
    .locals 2
    .param p1, "transaction"    # Lgov/nist/javax/sip/stack/SIPClientTransaction;
    .param p2, "sipResponse"    # Lgov/nist/javax/sip/message/SIPResponse;

    #@0
    .prologue
    .line 602
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/stack/SIPDialog;-><init>(Lgov/nist/javax/sip/stack/SIPTransaction;)V

    #@3
    .line 603
    if-nez p2, :cond_0

    #@5
    .line 604
    new-instance v0, Ljava/lang/NullPointerException;

    #@7
    const-string/jumbo v1, "Null SipResponse"

    #@a
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 605
    :cond_0
    invoke-virtual {p0, p1, p2}, Lgov/nist/javax/sip/stack/SIPDialog;->setLastResponse(Lgov/nist/javax/sip/stack/SIPTransaction;Lgov/nist/javax/sip/message/SIPResponse;)V

    #@11
    .line 606
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@13
    iget-boolean v0, v0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isBackToBackUserAgent:Z

    #@15
    iput-boolean v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->isBackToBackUserAgent:Z

    #@17
    .line 601
    return-void
.end method

.method public constructor <init>(Lgov/nist/javax/sip/stack/SIPTransaction;)V
    .locals 4
    .param p1, "transaction"    # Lgov/nist/javax/sip/stack/SIPTransaction;

    #@0
    .prologue
    .line 569
    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPTransaction;->getSipProvider()Lgov/nist/javax/sip/SipProviderImpl;

    #@3
    move-result-object v1

    #@4
    invoke-direct {p0, v1}, Lgov/nist/javax/sip/stack/SIPDialog;-><init>(Lgov/nist/javax/sip/SipProviderImpl;)V

    #@7
    .line 571
    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPTransaction;->getRequest()Ljavax/sip/message/Request;

    #@a
    move-result-object v0

    #@b
    check-cast v0, Lgov/nist/javax/sip/message/SIPRequest;

    #@d
    .line 572
    .local v0, "sipRequest":Lgov/nist/javax/sip/message/SIPRequest;
    invoke-virtual {v0}, Lgov/nist/javax/sip/message/SIPRequest;->getCallId()Ljavax/sip/header/CallIdHeader;

    #@10
    move-result-object v1

    #@11
    iput-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->callIdHeader:Ljavax/sip/header/CallIdHeader;

    #@13
    .line 573
    const/4 v1, 0x0

    #@14
    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/message/SIPRequest;->getDialogId(Z)Ljava/lang/String;

    #@17
    move-result-object v1

    #@18
    iput-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->earlyDialogId:Ljava/lang/String;

    #@1a
    .line 574
    if-nez p1, :cond_0

    #@1c
    .line 575
    new-instance v1, Ljava/lang/NullPointerException;

    #@1e
    const-string/jumbo v2, "Null tx"

    #@21
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@24
    throw v1

    #@25
    .line 576
    :cond_0
    iget-object v1, p1, Lgov/nist/javax/sip/stack/SIPTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@27
    iput-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@29
    .line 581
    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPTransaction;->getSipProvider()Lgov/nist/javax/sip/SipProviderImpl;

    #@2c
    move-result-object v1

    #@2d
    iput-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipProvider:Lgov/nist/javax/sip/SipProviderImpl;

    #@2f
    .line 582
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipProvider:Lgov/nist/javax/sip/SipProviderImpl;

    #@31
    if-nez v1, :cond_1

    #@33
    .line 583
    new-instance v1, Ljava/lang/NullPointerException;

    #@35
    const-string/jumbo v2, "Null Provider!"

    #@38
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@3b
    throw v1

    #@3c
    .line 584
    :cond_1
    invoke-virtual {p0, p1}, Lgov/nist/javax/sip/stack/SIPDialog;->addTransaction(Lgov/nist/javax/sip/stack/SIPTransaction;)V

    #@3f
    .line 585
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@41
    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    #@44
    move-result v1

    #@45
    if-eqz v1, :cond_2

    #@47
    .line 586
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@49
    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@4c
    move-result-object v1

    #@4d
    new-instance v2, Ljava/lang/StringBuilder;

    #@4f
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@52
    const-string/jumbo v3, "Creating a dialog : "

    #@55
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@58
    move-result-object v2

    #@59
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@5c
    move-result-object v2

    #@5d
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@60
    move-result-object v2

    #@61
    invoke-interface {v1, v2}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@64
    .line 587
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@66
    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@69
    move-result-object v1

    #@6a
    .line 588
    new-instance v2, Ljava/lang/StringBuilder;

    #@6c
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@6f
    const-string/jumbo v3, "provider port = "

    #@72
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@75
    move-result-object v2

    #@76
    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipProvider:Lgov/nist/javax/sip/SipProviderImpl;

    #@78
    invoke-virtual {v3}, Lgov/nist/javax/sip/SipProviderImpl;->getListeningPoint()Ljavax/sip/ListeningPoint;

    #@7b
    move-result-object v3

    #@7c
    invoke-interface {v3}, Ljavax/sip/ListeningPoint;->getPort()I

    #@7f
    move-result v3

    #@80
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@83
    move-result-object v2

    #@84
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@87
    move-result-object v2

    #@88
    .line 587
    invoke-interface {v1, v2}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@8b
    .line 589
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@8d
    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@90
    move-result-object v1

    #@91
    invoke-interface {v1}, Lgov/nist/core/StackLogger;->logStackTrace()V

    #@94
    .line 591
    :cond_2
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@96
    iget-boolean v1, v1, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isBackToBackUserAgent:Z

    #@98
    iput-boolean v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->isBackToBackUserAgent:Z

    #@9a
    .line 592
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@9c
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/stack/SIPDialog;->addEventListener(Lgov/nist/javax/sip/stack/SIPDialogEventListener;)V

    #@9f
    .line 568
    return-void
.end method

.method private addRoute(Lgov/nist/javax/sip/header/RecordRouteList;)V
    .locals 11
    .param p1, "recordRouteList"    # Lgov/nist/javax/sip/header/RecordRouteList;

    #@0
    .prologue
    .line 743
    :try_start_0
    invoke-direct {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->isClientDialog()Z

    #@3
    move-result v7

    #@4
    if-eqz v7, :cond_2

    #@6
    .line 747
    new-instance v7, Lgov/nist/javax/sip/header/RouteList;

    #@8
    invoke-direct {v7}, Lgov/nist/javax/sip/header/RouteList;-><init>()V

    #@b
    iput-object v7, p0, Lgov/nist/javax/sip/stack/SIPDialog;->routeList:Lgov/nist/javax/sip/header/RouteList;

    #@d
    .line 750
    invoke-virtual {p1}, Lgov/nist/javax/sip/header/RecordRouteList;->size()I

    #@10
    move-result v7

    #@11
    invoke-virtual {p1, v7}, Lgov/nist/javax/sip/header/RecordRouteList;->listIterator(I)Ljava/util/ListIterator;

    #@14
    move-result-object v3

    #@15
    .line 751
    .local v3, "li":Ljava/util/ListIterator;
    const/4 v0, 0x1

    #@16
    .line 752
    .local v0, "addRoute":Z
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/ListIterator;->hasPrevious()Z

    #@19
    move-result v7

    #@1a
    if-eqz v7, :cond_4

    #@1c
    .line 753
    invoke-interface {v3}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    #@1f
    move-result-object v5

    #@20
    check-cast v5, Lgov/nist/javax/sip/header/RecordRoute;

    #@22
    .line 755
    .local v5, "rr":Lgov/nist/javax/sip/header/RecordRoute;
    if-eqz v0, :cond_0

    #@24
    .line 756
    new-instance v4, Lgov/nist/javax/sip/header/Route;

    #@26
    invoke-direct {v4}, Lgov/nist/javax/sip/header/Route;-><init>()V

    #@29
    .line 757
    .local v4, "route":Lgov/nist/javax/sip/header/Route;
    invoke-virtual {v5}, Lgov/nist/javax/sip/header/RecordRoute;->getAddress()Ljavax/sip/address/Address;

    #@2c
    move-result-object v7

    #@2d
    check-cast v7, Lgov/nist/javax/sip/address/AddressImpl;

    #@2f
    invoke-virtual {v7}, Lgov/nist/javax/sip/address/AddressImpl;->clone()Ljava/lang/Object;

    #@32
    move-result-object v1

    #@33
    check-cast v1, Lgov/nist/javax/sip/address/AddressImpl;

    #@35
    .line 760
    .local v1, "address":Lgov/nist/javax/sip/address/AddressImpl;
    invoke-virtual {v4, v1}, Lgov/nist/javax/sip/header/Route;->setAddress(Ljavax/sip/address/Address;)V

    #@38
    .line 761
    invoke-virtual {v5}, Lgov/nist/javax/sip/header/RecordRoute;->getParameters()Lgov/nist/core/NameValueList;

    #@3b
    move-result-object v7

    #@3c
    invoke-virtual {v7}, Lgov/nist/core/NameValueList;->clone()Ljava/lang/Object;

    #@3f
    move-result-object v7

    #@40
    check-cast v7, Lgov/nist/core/NameValueList;

    #@42
    invoke-virtual {v4, v7}, Lgov/nist/javax/sip/header/Route;->setParameters(Lgov/nist/core/NameValueList;)V

    #@45
    .line 763
    iget-object v7, p0, Lgov/nist/javax/sip/stack/SIPDialog;->routeList:Lgov/nist/javax/sip/header/RouteList;

    #@47
    invoke-virtual {v7, v4}, Lgov/nist/javax/sip/header/RouteList;->add(Lgov/nist/javax/sip/header/SIPHeader;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4a
    goto :goto_0

    #@4b
    .line 787
    .end local v0    # "addRoute":Z
    .end local v1    # "address":Lgov/nist/javax/sip/address/AddressImpl;
    .end local v3    # "li":Ljava/util/ListIterator;
    .end local v4    # "route":Lgov/nist/javax/sip/header/Route;
    .end local v5    # "rr":Lgov/nist/javax/sip/header/RecordRoute;
    :catchall_0
    move-exception v7

    #@4c
    move-object v8, v7

    #@4d
    .line 788
    iget-object v7, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@4f
    invoke-virtual {v7}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@52
    move-result-object v7

    #@53
    invoke-interface {v7}, Lgov/nist/core/StackLogger;->isLoggingEnabled()Z

    #@56
    move-result v7

    #@57
    if-eqz v7, :cond_6

    #@59
    .line 789
    iget-object v7, p0, Lgov/nist/javax/sip/stack/SIPDialog;->routeList:Lgov/nist/javax/sip/header/RouteList;

    #@5b
    invoke-virtual {v7}, Lgov/nist/javax/sip/header/RouteList;->iterator()Ljava/util/Iterator;

    #@5e
    move-result-object v2

    #@5f
    .line 791
    .local v2, "it":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@62
    move-result v7

    #@63
    if-eqz v7, :cond_6

    #@65
    .line 792
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@68
    move-result-object v7

    #@69
    check-cast v7, Lgov/nist/javax/sip/header/Route;

    #@6b
    invoke-virtual {v7}, Lgov/nist/javax/sip/header/Route;->getAddress()Ljavax/sip/address/Address;

    #@6e
    move-result-object v7

    #@6f
    invoke-interface {v7}, Ljavax/sip/address/Address;->getURI()Ljavax/sip/address/URI;

    #@72
    move-result-object v6

    #@73
    check-cast v6, Ljavax/sip/address/SipURI;

    #@75
    .line 793
    .local v6, "sipUri":Ljavax/sip/address/SipURI;
    invoke-interface {v6}, Ljavax/sip/address/SipURI;->hasLrParam()Z

    #@78
    move-result v7

    #@79
    if-nez v7, :cond_1

    #@7b
    .line 794
    iget-object v7, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@7d
    invoke-virtual {v7}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    #@80
    move-result v7

    #@81
    if-eqz v7, :cond_1

    #@83
    .line 795
    iget-object v7, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@85
    invoke-virtual {v7}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@88
    move-result-object v7

    #@89
    .line 796
    new-instance v9, Ljava/lang/StringBuilder;

    #@8b
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@8e
    const-string/jumbo v10, "NON LR route in Route set detected for dialog : "

    #@91
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@94
    move-result-object v9

    #@95
    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@98
    move-result-object v9

    #@99
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9c
    move-result-object v9

    #@9d
    .line 795
    invoke-interface {v7, v9}, Lgov/nist/core/StackLogger;->logWarning(Ljava/lang/String;)V

    #@a0
    .line 797
    iget-object v7, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@a2
    invoke-virtual {v7}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@a5
    move-result-object v7

    #@a6
    invoke-interface {v7}, Lgov/nist/core/StackLogger;->logStackTrace()V

    #@a9
    goto :goto_1

    #@aa
    .line 771
    .end local v2    # "it":Ljava/util/Iterator;
    .end local v6    # "sipUri":Ljavax/sip/address/SipURI;
    :cond_2
    :try_start_1
    new-instance v7, Lgov/nist/javax/sip/header/RouteList;

    #@ac
    invoke-direct {v7}, Lgov/nist/javax/sip/header/RouteList;-><init>()V

    #@af
    iput-object v7, p0, Lgov/nist/javax/sip/stack/SIPDialog;->routeList:Lgov/nist/javax/sip/header/RouteList;

    #@b1
    .line 772
    invoke-virtual {p1}, Lgov/nist/javax/sip/header/RecordRouteList;->listIterator()Ljava/util/ListIterator;

    #@b4
    move-result-object v3

    #@b5
    .line 773
    .restart local v3    # "li":Ljava/util/ListIterator;
    const/4 v0, 0x1

    #@b6
    .line 774
    .restart local v0    # "addRoute":Z
    :cond_3
    :goto_2
    invoke-interface {v3}, Ljava/util/ListIterator;->hasNext()Z

    #@b9
    move-result v7

    #@ba
    if-eqz v7, :cond_4

    #@bc
    .line 775
    invoke-interface {v3}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    #@bf
    move-result-object v5

    #@c0
    check-cast v5, Lgov/nist/javax/sip/header/RecordRoute;

    #@c2
    .line 777
    .restart local v5    # "rr":Lgov/nist/javax/sip/header/RecordRoute;
    if-eqz v0, :cond_3

    #@c4
    .line 778
    new-instance v4, Lgov/nist/javax/sip/header/Route;

    #@c6
    invoke-direct {v4}, Lgov/nist/javax/sip/header/Route;-><init>()V

    #@c9
    .line 779
    .restart local v4    # "route":Lgov/nist/javax/sip/header/Route;
    invoke-virtual {v5}, Lgov/nist/javax/sip/header/RecordRoute;->getAddress()Ljavax/sip/address/Address;

    #@cc
    move-result-object v7

    #@cd
    check-cast v7, Lgov/nist/javax/sip/address/AddressImpl;

    #@cf
    invoke-virtual {v7}, Lgov/nist/javax/sip/address/AddressImpl;->clone()Ljava/lang/Object;

    #@d2
    move-result-object v1

    #@d3
    check-cast v1, Lgov/nist/javax/sip/address/AddressImpl;

    #@d5
    .line 781
    .restart local v1    # "address":Lgov/nist/javax/sip/address/AddressImpl;
    invoke-virtual {v4, v1}, Lgov/nist/javax/sip/header/Route;->setAddress(Ljavax/sip/address/Address;)V

    #@d8
    .line 782
    invoke-virtual {v5}, Lgov/nist/javax/sip/header/RecordRoute;->getParameters()Lgov/nist/core/NameValueList;

    #@db
    move-result-object v7

    #@dc
    invoke-virtual {v7}, Lgov/nist/core/NameValueList;->clone()Ljava/lang/Object;

    #@df
    move-result-object v7

    #@e0
    check-cast v7, Lgov/nist/core/NameValueList;

    #@e2
    invoke-virtual {v4, v7}, Lgov/nist/javax/sip/header/Route;->setParameters(Lgov/nist/core/NameValueList;)V

    #@e5
    .line 783
    iget-object v7, p0, Lgov/nist/javax/sip/stack/SIPDialog;->routeList:Lgov/nist/javax/sip/header/RouteList;

    #@e7
    invoke-virtual {v7, v4}, Lgov/nist/javax/sip/header/RouteList;->add(Lgov/nist/javax/sip/header/SIPHeader;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@ea
    goto :goto_2

    #@eb
    .line 788
    .end local v1    # "address":Lgov/nist/javax/sip/address/AddressImpl;
    .end local v4    # "route":Lgov/nist/javax/sip/header/Route;
    .end local v5    # "rr":Lgov/nist/javax/sip/header/RecordRoute;
    :cond_4
    iget-object v7, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@ed
    invoke-virtual {v7}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@f0
    move-result-object v7

    #@f1
    invoke-interface {v7}, Lgov/nist/core/StackLogger;->isLoggingEnabled()Z

    #@f4
    move-result v7

    #@f5
    if-eqz v7, :cond_7

    #@f7
    .line 789
    iget-object v7, p0, Lgov/nist/javax/sip/stack/SIPDialog;->routeList:Lgov/nist/javax/sip/header/RouteList;

    #@f9
    invoke-virtual {v7}, Lgov/nist/javax/sip/header/RouteList;->iterator()Ljava/util/Iterator;

    #@fc
    move-result-object v2

    #@fd
    .line 791
    .restart local v2    # "it":Ljava/util/Iterator;
    :cond_5
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@100
    move-result v7

    #@101
    if-eqz v7, :cond_7

    #@103
    .line 792
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@106
    move-result-object v7

    #@107
    check-cast v7, Lgov/nist/javax/sip/header/Route;

    #@109
    invoke-virtual {v7}, Lgov/nist/javax/sip/header/Route;->getAddress()Ljavax/sip/address/Address;

    #@10c
    move-result-object v7

    #@10d
    invoke-interface {v7}, Ljavax/sip/address/Address;->getURI()Ljavax/sip/address/URI;

    #@110
    move-result-object v6

    #@111
    check-cast v6, Ljavax/sip/address/SipURI;

    #@113
    .line 793
    .restart local v6    # "sipUri":Ljavax/sip/address/SipURI;
    invoke-interface {v6}, Ljavax/sip/address/SipURI;->hasLrParam()Z

    #@116
    move-result v7

    #@117
    if-nez v7, :cond_5

    #@119
    .line 794
    iget-object v7, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@11b
    invoke-virtual {v7}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    #@11e
    move-result v7

    #@11f
    if-eqz v7, :cond_5

    #@121
    .line 795
    iget-object v7, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@123
    invoke-virtual {v7}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@126
    move-result-object v7

    #@127
    .line 796
    new-instance v8, Ljava/lang/StringBuilder;

    #@129
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@12c
    const-string/jumbo v9, "NON LR route in Route set detected for dialog : "

    #@12f
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@132
    move-result-object v8

    #@133
    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@136
    move-result-object v8

    #@137
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13a
    move-result-object v8

    #@13b
    .line 795
    invoke-interface {v7, v8}, Lgov/nist/core/StackLogger;->logWarning(Ljava/lang/String;)V

    #@13e
    .line 797
    iget-object v7, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@140
    invoke-virtual {v7}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@143
    move-result-object v7

    #@144
    invoke-interface {v7}, Lgov/nist/core/StackLogger;->logStackTrace()V

    #@147
    goto :goto_3

    #@148
    .line 787
    .end local v0    # "addRoute":Z
    .end local v2    # "it":Ljava/util/Iterator;
    .end local v3    # "li":Ljava/util/ListIterator;
    .end local v6    # "sipUri":Ljavax/sip/address/SipURI;
    :cond_6
    throw v8

    #@149
    .line 741
    .restart local v0    # "addRoute":Z
    .restart local v3    # "li":Ljava/util/ListIterator;
    :cond_7
    return-void
.end method

.method private declared-synchronized addRoute(Lgov/nist/javax/sip/message/SIPResponse;)V
    .locals 5
    .param p1, "sipResponse"    # Lgov/nist/javax/sip/message/SIPResponse;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 830
    :try_start_0
    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@3
    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    #@6
    move-result v2

    #@7
    if-eqz v2, :cond_0

    #@9
    .line 831
    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@b
    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@e
    move-result-object v2

    #@f
    .line 832
    new-instance v3, Ljava/lang/StringBuilder;

    #@11
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@14
    const-string/jumbo v4, "setContact: dialogState: "

    #@17
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v3

    #@1b
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v3

    #@1f
    const-string/jumbo v4, "state = "

    #@22
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v3

    #@26
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getState()Ljavax/sip/DialogState;

    #@29
    move-result-object v4

    #@2a
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v3

    #@2e
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@31
    move-result-object v3

    #@32
    .line 831
    invoke-interface {v2, v3}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@35
    .line 834
    :cond_0
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPResponse;->getStatusCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@38
    move-result v2

    #@39
    const/16 v3, 0x64

    #@3b
    if-ne v2, v3, :cond_2

    #@3d
    .line 878
    :try_start_1
    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@3f
    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    #@42
    move-result v2

    #@43
    if-eqz v2, :cond_1

    #@45
    .line 879
    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@47
    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@4a
    move-result-object v2

    #@4b
    invoke-interface {v2}, Lgov/nist/core/StackLogger;->logStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@4e
    :cond_1
    monitor-exit p0

    #@4f
    .line 836
    return-void

    #@50
    .line 837
    :cond_2
    :try_start_2
    iget v2, p0, Lgov/nist/javax/sip/stack/SIPDialog;->dialogState:I

    #@52
    sget v3, Lgov/nist/javax/sip/stack/SIPDialog;->TERMINATED_STATE:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@54
    if-ne v2, v3, :cond_4

    #@56
    .line 878
    :try_start_3
    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@58
    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    #@5b
    move-result v2

    #@5c
    if-eqz v2, :cond_3

    #@5e
    .line 879
    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@60
    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@63
    move-result-object v2

    #@64
    invoke-interface {v2}, Lgov/nist/core/StackLogger;->logStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@67
    :cond_3
    monitor-exit p0

    #@68
    .line 839
    return-void

    #@69
    .line 840
    :cond_4
    :try_start_4
    iget v2, p0, Lgov/nist/javax/sip/stack/SIPDialog;->dialogState:I

    #@6b
    sget v3, Lgov/nist/javax/sip/stack/SIPDialog;->CONFIRMED_STATE:I

    #@6d
    if-ne v2, v3, :cond_9

    #@6f
    .line 844
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPResponse;->getStatusCode()I

    #@72
    move-result v2

    #@73
    div-int/lit8 v2, v2, 0x64

    #@75
    const/4 v3, 0x2

    #@76
    if-ne v2, v3, :cond_5

    #@78
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->isServer()Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@7b
    move-result v2

    #@7c
    if-eqz v2, :cond_7

    #@7e
    .line 878
    :cond_5
    :goto_0
    :try_start_5
    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@80
    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    #@83
    move-result v2

    #@84
    if-eqz v2, :cond_6

    #@86
    .line 879
    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@88
    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@8b
    move-result-object v2

    #@8c
    invoke-interface {v2}, Lgov/nist/core/StackLogger;->logStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    #@8f
    :cond_6
    monitor-exit p0

    #@90
    .line 851
    return-void

    #@91
    .line 845
    :cond_7
    :try_start_6
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPResponse;->getContactHeaders()Lgov/nist/javax/sip/header/ContactList;

    #@94
    move-result-object v0

    #@95
    .line 846
    .local v0, "contactList":Lgov/nist/javax/sip/header/ContactList;
    if-eqz v0, :cond_5

    #@97
    .line 847
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPResponse;->getCSeq()Ljavax/sip/header/CSeqHeader;

    #@9a
    move-result-object v2

    #@9b
    invoke-interface {v2}, Ljavax/sip/header/CSeqHeader;->getMethod()Ljava/lang/String;

    #@9e
    move-result-object v2

    #@9f
    invoke-static {v2}, Lgov/nist/javax/sip/message/SIPRequest;->isTargetRefresh(Ljava/lang/String;)Z

    #@a2
    move-result v2

    #@a3
    .line 846
    if-eqz v2, :cond_5

    #@a5
    .line 848
    invoke-virtual {v0}, Lgov/nist/javax/sip/header/ContactList;->getFirst()Ljavax/sip/header/Header;

    #@a8
    move-result-object v2

    #@a9
    check-cast v2, Ljavax/sip/header/ContactHeader;

    #@ab
    invoke-virtual {p0, v2}, Lgov/nist/javax/sip/stack/SIPDialog;->setRemoteTarget(Ljavax/sip/header/ContactHeader;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    #@ae
    goto :goto_0

    #@af
    .line 877
    .end local v0    # "contactList":Lgov/nist/javax/sip/header/ContactList;
    :catchall_0
    move-exception v2

    #@b0
    .line 878
    :try_start_7
    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@b2
    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    #@b5
    move-result v3

    #@b6
    if-eqz v3, :cond_8

    #@b8
    .line 879
    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@ba
    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@bd
    move-result-object v3

    #@be
    invoke-interface {v3}, Lgov/nist/core/StackLogger;->logStackTrace()V

    #@c1
    .line 877
    :cond_8
    throw v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    #@c2
    :catchall_1
    move-exception v2

    #@c3
    monitor-exit p0

    #@c4
    throw v2

    #@c5
    .line 855
    :cond_9
    :try_start_8
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->isServer()Z

    #@c8
    move-result v2

    #@c9
    if-nez v2, :cond_b

    #@cb
    .line 858
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getState()Ljavax/sip/DialogState;

    #@ce
    move-result-object v2

    #@cf
    sget-object v3, Ljavax/sip/DialogState;->CONFIRMED:Ljavax/sip/DialogState;

    #@d1
    if-eq v2, v3, :cond_a

    #@d3
    .line 859
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getState()Ljavax/sip/DialogState;

    #@d6
    move-result-object v2

    #@d7
    sget-object v3, Ljavax/sip/DialogState;->TERMINATED:Ljavax/sip/DialogState;

    #@d9
    if-eq v2, v3, :cond_a

    #@db
    .line 860
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPResponse;->getRecordRouteHeaders()Lgov/nist/javax/sip/header/RecordRouteList;

    #@de
    move-result-object v1

    #@df
    .line 863
    .local v1, "rrlist":Lgov/nist/javax/sip/header/RecordRouteList;
    if-eqz v1, :cond_d

    #@e1
    .line 864
    invoke-direct {p0, v1}, Lgov/nist/javax/sip/stack/SIPDialog;->addRoute(Lgov/nist/javax/sip/header/RecordRouteList;)V

    #@e4
    .line 871
    .end local v1    # "rrlist":Lgov/nist/javax/sip/header/RecordRouteList;
    :cond_a
    :goto_1
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPResponse;->getContactHeaders()Lgov/nist/javax/sip/header/ContactList;

    #@e7
    move-result-object v0

    #@e8
    .line 872
    .restart local v0    # "contactList":Lgov/nist/javax/sip/header/ContactList;
    if-eqz v0, :cond_b

    #@ea
    .line 873
    invoke-virtual {v0}, Lgov/nist/javax/sip/header/ContactList;->getFirst()Ljavax/sip/header/Header;

    #@ed
    move-result-object v2

    #@ee
    check-cast v2, Ljavax/sip/header/ContactHeader;

    #@f0
    invoke-virtual {p0, v2}, Lgov/nist/javax/sip/stack/SIPDialog;->setRemoteTarget(Ljavax/sip/header/ContactHeader;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    #@f3
    .line 878
    .end local v0    # "contactList":Lgov/nist/javax/sip/header/ContactList;
    :cond_b
    :try_start_9
    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@f5
    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    #@f8
    move-result v2

    #@f9
    if-eqz v2, :cond_c

    #@fb
    .line 879
    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@fd
    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@100
    move-result-object v2

    #@101
    invoke-interface {v2}, Lgov/nist/core/StackLogger;->logStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    #@104
    :cond_c
    monitor-exit p0

    #@105
    .line 827
    return-void

    #@106
    .line 867
    .restart local v1    # "rrlist":Lgov/nist/javax/sip/header/RecordRouteList;
    :cond_d
    :try_start_a
    new-instance v2, Lgov/nist/javax/sip/header/RouteList;

    #@108
    invoke-direct {v2}, Lgov/nist/javax/sip/header/RouteList;-><init>()V

    #@10b
    iput-object v2, p0, Lgov/nist/javax/sip/stack/SIPDialog;->routeList:Lgov/nist/javax/sip/header/RouteList;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    #@10d
    goto :goto_1
.end method

.method public static createFromNOTIFY(Lgov/nist/javax/sip/stack/SIPClientTransaction;Lgov/nist/javax/sip/stack/SIPTransaction;)Lgov/nist/javax/sip/stack/SIPDialog;
    .locals 4
    .param p0, "subscribeTx"    # Lgov/nist/javax/sip/stack/SIPClientTransaction;
    .param p1, "notifyST"    # Lgov/nist/javax/sip/stack/SIPTransaction;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1383
    new-instance v0, Lgov/nist/javax/sip/stack/SIPDialog;

    #@3
    invoke-direct {v0, p1}, Lgov/nist/javax/sip/stack/SIPDialog;-><init>(Lgov/nist/javax/sip/stack/SIPTransaction;)V

    #@6
    .line 1387
    .local v0, "d":Lgov/nist/javax/sip/stack/SIPDialog;
    iput-boolean v2, v0, Lgov/nist/javax/sip/stack/SIPDialog;->serverTransactionFlag:Z

    #@8
    .line 1389
    iput-object p0, v0, Lgov/nist/javax/sip/stack/SIPDialog;->lastTransaction:Lgov/nist/javax/sip/stack/SIPTransaction;

    #@a
    .line 1390
    invoke-static {v0, p0}, Lgov/nist/javax/sip/stack/SIPDialog;->storeFirstTransactionInfo(Lgov/nist/javax/sip/stack/SIPDialog;Lgov/nist/javax/sip/stack/SIPTransaction;)V

    #@d
    .line 1391
    iput-boolean v2, v0, Lgov/nist/javax/sip/stack/SIPDialog;->terminateOnBye:Z

    #@f
    .line 1392
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getCSeq()J

    #@12
    move-result-wide v2

    #@13
    iput-wide v2, v0, Lgov/nist/javax/sip/stack/SIPDialog;->localSequenceNumber:J

    #@15
    .line 1393
    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPTransaction;->getRequest()Ljavax/sip/message/Request;

    #@18
    move-result-object v1

    #@19
    check-cast v1, Lgov/nist/javax/sip/message/SIPRequest;

    #@1b
    .line 1394
    .local v1, "not":Lgov/nist/javax/sip/message/SIPRequest;
    invoke-virtual {v1}, Lgov/nist/javax/sip/message/SIPRequest;->getCSeq()Ljavax/sip/header/CSeqHeader;

    #@1e
    move-result-object v2

    #@1f
    invoke-interface {v2}, Ljavax/sip/header/CSeqHeader;->getSeqNumber()J

    #@22
    move-result-wide v2

    #@23
    iput-wide v2, v0, Lgov/nist/javax/sip/stack/SIPDialog;->remoteSequenceNumber:J

    #@25
    .line 1395
    const/4 v2, 0x1

    #@26
    invoke-virtual {v1, v2}, Lgov/nist/javax/sip/message/SIPRequest;->getDialogId(Z)Ljava/lang/String;

    #@29
    move-result-object v2

    #@2a
    invoke-virtual {v0, v2}, Lgov/nist/javax/sip/stack/SIPDialog;->setDialogId(Ljava/lang/String;)V

    #@2d
    .line 1396
    invoke-virtual {v1}, Lgov/nist/javax/sip/message/SIPRequest;->getToTag()Ljava/lang/String;

    #@30
    move-result-object v2

    #@31
    invoke-direct {v0, v2}, Lgov/nist/javax/sip/stack/SIPDialog;->setLocalTag(Ljava/lang/String;)V

    #@34
    .line 1397
    invoke-virtual {v1}, Lgov/nist/javax/sip/message/SIPRequest;->getFromTag()Ljava/lang/String;

    #@37
    move-result-object v2

    #@38
    invoke-direct {v0, v2}, Lgov/nist/javax/sip/stack/SIPDialog;->setRemoteTag(Ljava/lang/String;)V

    #@3b
    .line 1400
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getLastResponse()Lgov/nist/javax/sip/message/SIPResponse;

    #@3e
    move-result-object v2

    #@3f
    invoke-virtual {v0, p0, v2}, Lgov/nist/javax/sip/stack/SIPDialog;->setLastResponse(Lgov/nist/javax/sip/stack/SIPTransaction;Lgov/nist/javax/sip/message/SIPResponse;)V

    #@42
    .line 1403
    invoke-virtual {v1}, Lgov/nist/javax/sip/message/SIPRequest;->getTo()Ljavax/sip/header/ToHeader;

    #@45
    move-result-object v2

    #@46
    invoke-interface {v2}, Ljavax/sip/header/ToHeader;->getAddress()Ljavax/sip/address/Address;

    #@49
    move-result-object v2

    #@4a
    iput-object v2, v0, Lgov/nist/javax/sip/stack/SIPDialog;->localParty:Ljavax/sip/address/Address;

    #@4c
    .line 1404
    invoke-virtual {v1}, Lgov/nist/javax/sip/message/SIPRequest;->getFrom()Ljavax/sip/header/FromHeader;

    #@4f
    move-result-object v2

    #@50
    invoke-interface {v2}, Ljavax/sip/header/FromHeader;->getAddress()Ljavax/sip/address/Address;

    #@53
    move-result-object v2

    #@54
    iput-object v2, v0, Lgov/nist/javax/sip/stack/SIPDialog;->remoteParty:Ljavax/sip/address/Address;

    #@56
    .line 1408
    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/stack/SIPDialog;->addRoute(Lgov/nist/javax/sip/message/SIPRequest;)V

    #@59
    .line 1409
    sget v2, Lgov/nist/javax/sip/stack/SIPDialog;->CONFIRMED_STATE:I

    #@5b
    invoke-virtual {v0, v2}, Lgov/nist/javax/sip/stack/SIPDialog;->setState(I)V

    #@5e
    .line 1410
    return-object v0
.end method

.method private createRequest(Ljava/lang/String;Lgov/nist/javax/sip/message/SIPResponse;)Ljavax/sip/message/Request;
    .locals 18
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "sipResponse"    # Lgov/nist/javax/sip/message/SIPResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    #@0
    .prologue
    .line 1880
    if-eqz p1, :cond_0

    #@2
    if-nez p2, :cond_1

    #@4
    .line 1881
    :cond_0
    new-instance v2, Ljava/lang/NullPointerException;

    #@6
    const-string/jumbo v14, "null argument"

    #@9
    invoke-direct {v2, v14}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@c
    throw v2

    #@d
    .line 1883
    :cond_1
    const-string/jumbo v2, "CANCEL"

    #@10
    move-object/from16 v0, p1

    #@12
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@15
    move-result v2

    #@16
    if-eqz v2, :cond_2

    #@18
    .line 1884
    new-instance v2, Ljavax/sip/SipException;

    #@1a
    const-string/jumbo v14, "Dialog.createRequest(): Invalid request"

    #@1d
    invoke-direct {v2, v14}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    #@20
    throw v2

    #@21
    .line 1886
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getState()Ljavax/sip/DialogState;

    #@24
    move-result-object v2

    #@25
    if-eqz v2, :cond_4

    #@27
    .line 1887
    invoke-virtual/range {p0 .. p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getState()Ljavax/sip/DialogState;

    #@2a
    move-result-object v2

    #@2b
    invoke-virtual {v2}, Ljavax/sip/DialogState;->getValue()I

    #@2e
    move-result v2

    #@2f
    sget v14, Lgov/nist/javax/sip/stack/SIPDialog;->TERMINATED_STATE:I

    #@31
    if-ne v2, v14, :cond_3

    #@33
    .line 1888
    const-string/jumbo v2, "BYE"

    #@36
    .line 1887
    move-object/from16 v0, p1

    #@38
    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@3b
    move-result v2

    #@3c
    if-eqz v2, :cond_4

    #@3e
    .line 1889
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lgov/nist/javax/sip/stack/SIPDialog;->isServer()Z

    #@41
    move-result v2

    #@42
    if-eqz v2, :cond_5

    #@44
    invoke-virtual/range {p0 .. p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getState()Ljavax/sip/DialogState;

    #@47
    move-result-object v2

    #@48
    invoke-virtual {v2}, Ljavax/sip/DialogState;->getValue()I

    #@4b
    move-result v2

    #@4c
    sget v14, Lgov/nist/javax/sip/stack/SIPDialog;->EARLY_STATE:I

    #@4e
    if-ne v2, v14, :cond_5

    #@50
    .line 1890
    const-string/jumbo v2, "BYE"

    #@53
    .line 1889
    move-object/from16 v0, p1

    #@55
    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@58
    move-result v2

    #@59
    .line 1886
    if-eqz v2, :cond_5

    #@5b
    .line 1891
    :cond_4
    new-instance v2, Ljavax/sip/SipException;

    #@5d
    new-instance v14, Ljava/lang/StringBuilder;

    #@5f
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    #@62
    const-string/jumbo v15, "Dialog  "

    #@65
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@68
    move-result-object v14

    #@69
    invoke-virtual/range {p0 .. p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getDialogId()Ljava/lang/String;

    #@6c
    move-result-object v15

    #@6d
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@70
    move-result-object v14

    #@71
    .line 1892
    const-string/jumbo v15, " not yet established or terminated "

    #@74
    .line 1891
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@77
    move-result-object v14

    #@78
    .line 1892
    invoke-virtual/range {p0 .. p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getState()Ljavax/sip/DialogState;

    #@7b
    move-result-object v15

    #@7c
    .line 1891
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@7f
    move-result-object v14

    #@80
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@83
    move-result-object v14

    #@84
    invoke-direct {v2, v14}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    #@87
    throw v2

    #@88
    .line 1894
    :cond_5
    const/4 v3, 0x0

    #@89
    .line 1895
    .local v3, "sipUri":Lgov/nist/javax/sip/address/SipUri;
    invoke-virtual/range {p0 .. p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getRemoteTarget()Ljavax/sip/address/Address;

    #@8c
    move-result-object v2

    #@8d
    if-eqz v2, :cond_7

    #@8f
    .line 1896
    invoke-virtual/range {p0 .. p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getRemoteTarget()Ljavax/sip/address/Address;

    #@92
    move-result-object v2

    #@93
    invoke-interface {v2}, Ljavax/sip/address/Address;->getURI()Ljavax/sip/address/URI;

    #@96
    move-result-object v2

    #@97
    invoke-interface {v2}, Ljavax/sip/address/URI;->clone()Ljava/lang/Object;

    #@9a
    move-result-object v3

    #@9b
    .end local v3    # "sipUri":Lgov/nist/javax/sip/address/SipUri;
    check-cast v3, Lgov/nist/javax/sip/address/SipUri;

    #@9d
    .line 1902
    .local v3, "sipUri":Lgov/nist/javax/sip/address/SipUri;
    :goto_0
    new-instance v5, Lgov/nist/javax/sip/header/CSeq;

    #@9f
    invoke-direct {v5}, Lgov/nist/javax/sip/header/CSeq;-><init>()V

    #@a2
    .line 1904
    .local v5, "cseq":Lgov/nist/javax/sip/header/CSeq;
    :try_start_0
    move-object/from16 v0, p1

    #@a4
    invoke-virtual {v5, v0}, Lgov/nist/javax/sip/header/CSeq;->setMethod(Ljava/lang/String;)V

    #@a7
    .line 1905
    invoke-virtual/range {p0 .. p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getLocalSeqNumber()J

    #@aa
    move-result-wide v14

    #@ab
    invoke-virtual {v5, v14, v15}, Lgov/nist/javax/sip/header/CSeq;->setSeqNumber(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@ae
    .line 1916
    :goto_1
    move-object/from16 v0, p0

    #@b0
    iget-object v2, v0, Lgov/nist/javax/sip/stack/SIPDialog;->sipProvider:Lgov/nist/javax/sip/SipProviderImpl;

    #@b2
    .line 1917
    invoke-virtual/range {p2 .. p2}, Lgov/nist/javax/sip/message/SIPResponse;->getTopmostVia()Lgov/nist/javax/sip/header/Via;

    #@b5
    move-result-object v14

    #@b6
    invoke-virtual {v14}, Lgov/nist/javax/sip/header/Via;->getTransport()Ljava/lang/String;

    #@b9
    move-result-object v14

    #@ba
    .line 1916
    invoke-virtual {v2, v14}, Lgov/nist/javax/sip/SipProviderImpl;->getListeningPoint(Ljava/lang/String;)Ljavax/sip/ListeningPoint;

    #@bd
    move-result-object v12

    #@be
    check-cast v12, Lgov/nist/javax/sip/ListeningPointImpl;

    #@c0
    .line 1918
    .local v12, "lp":Lgov/nist/javax/sip/ListeningPointImpl;
    if-nez v12, :cond_9

    #@c2
    .line 1919
    move-object/from16 v0, p0

    #@c4
    iget-object v2, v0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@c6
    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    #@c9
    move-result v2

    #@ca
    if-eqz v2, :cond_6

    #@cc
    .line 1920
    move-object/from16 v0, p0

    #@ce
    iget-object v2, v0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@d0
    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@d3
    move-result-object v2

    #@d4
    .line 1921
    new-instance v14, Ljava/lang/StringBuilder;

    #@d6
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    #@d9
    const-string/jumbo v15, "Cannot find listening point for transport "

    #@dc
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@df
    move-result-object v14

    #@e0
    .line 1922
    invoke-virtual/range {p2 .. p2}, Lgov/nist/javax/sip/message/SIPResponse;->getTopmostVia()Lgov/nist/javax/sip/header/Via;

    #@e3
    move-result-object v15

    #@e4
    invoke-virtual {v15}, Lgov/nist/javax/sip/header/Via;->getTransport()Ljava/lang/String;

    #@e7
    move-result-object v15

    #@e8
    .line 1921
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@eb
    move-result-object v14

    #@ec
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ef
    move-result-object v14

    #@f0
    .line 1920
    invoke-interface {v2, v14}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;)V

    #@f3
    .line 1923
    :cond_6
    new-instance v2, Ljavax/sip/SipException;

    #@f5
    new-instance v14, Ljava/lang/StringBuilder;

    #@f7
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    #@fa
    const-string/jumbo v15, "Cannot find listening point for transport "

    #@fd
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@100
    move-result-object v14

    #@101
    .line 1924
    invoke-virtual/range {p2 .. p2}, Lgov/nist/javax/sip/message/SIPResponse;->getTopmostVia()Lgov/nist/javax/sip/header/Via;

    #@104
    move-result-object v15

    #@105
    invoke-virtual {v15}, Lgov/nist/javax/sip/header/Via;->getTransport()Ljava/lang/String;

    #@108
    move-result-object v15

    #@109
    .line 1923
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10c
    move-result-object v14

    #@10d
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@110
    move-result-object v14

    #@111
    invoke-direct {v2, v14}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    #@114
    throw v2

    #@115
    .line 1898
    .end local v5    # "cseq":Lgov/nist/javax/sip/header/CSeq;
    .end local v12    # "lp":Lgov/nist/javax/sip/ListeningPointImpl;
    .local v3, "sipUri":Lgov/nist/javax/sip/address/SipUri;
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getRemoteParty()Ljavax/sip/address/Address;

    #@118
    move-result-object v2

    #@119
    invoke-interface {v2}, Ljavax/sip/address/Address;->getURI()Ljavax/sip/address/URI;

    #@11c
    move-result-object v2

    #@11d
    invoke-interface {v2}, Ljavax/sip/address/URI;->clone()Ljava/lang/Object;

    #@120
    move-result-object v3

    #@121
    .end local v3    # "sipUri":Lgov/nist/javax/sip/address/SipUri;
    check-cast v3, Lgov/nist/javax/sip/address/SipUri;

    #@123
    .line 1899
    .local v3, "sipUri":Lgov/nist/javax/sip/address/SipUri;
    invoke-virtual {v3}, Lgov/nist/javax/sip/address/SipUri;->clearUriParms()V

    #@126
    goto/16 :goto_0

    #@128
    .line 1906
    .restart local v5    # "cseq":Lgov/nist/javax/sip/header/CSeq;
    :catch_0
    move-exception v9

    #@129
    .line 1907
    .local v9, "ex":Ljava/lang/Exception;
    move-object/from16 v0, p0

    #@12b
    iget-object v2, v0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@12d
    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    #@130
    move-result v2

    #@131
    if-eqz v2, :cond_8

    #@133
    .line 1908
    move-object/from16 v0, p0

    #@135
    iget-object v2, v0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@137
    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@13a
    move-result-object v2

    #@13b
    const-string/jumbo v14, "Unexpected error"

    #@13e
    invoke-interface {v2, v14}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;)V

    #@141
    .line 1909
    :cond_8
    invoke-static {v9}, Lgov/nist/core/InternalErrorHandler;->handleException(Ljava/lang/Exception;)V

    #@144
    goto/16 :goto_1

    #@146
    .line 1926
    .end local v9    # "ex":Ljava/lang/Exception;
    .restart local v12    # "lp":Lgov/nist/javax/sip/ListeningPointImpl;
    :cond_9
    invoke-virtual {v12}, Lgov/nist/javax/sip/ListeningPointImpl;->getViaHeader()Lgov/nist/javax/sip/header/Via;

    #@149
    move-result-object v4

    #@14a
    .line 1928
    .local v4, "via":Lgov/nist/javax/sip/header/Via;
    new-instance v6, Lgov/nist/javax/sip/header/From;

    #@14c
    invoke-direct {v6}, Lgov/nist/javax/sip/header/From;-><init>()V

    #@14f
    .line 1929
    .local v6, "from":Lgov/nist/javax/sip/header/From;
    move-object/from16 v0, p0

    #@151
    iget-object v2, v0, Lgov/nist/javax/sip/stack/SIPDialog;->localParty:Ljavax/sip/address/Address;

    #@153
    invoke-virtual {v6, v2}, Lgov/nist/javax/sip/header/From;->setAddress(Ljavax/sip/address/Address;)V

    #@156
    .line 1930
    new-instance v7, Lgov/nist/javax/sip/header/To;

    #@158
    invoke-direct {v7}, Lgov/nist/javax/sip/header/To;-><init>()V

    #@15b
    .line 1931
    .local v7, "to":Lgov/nist/javax/sip/header/To;
    move-object/from16 v0, p0

    #@15d
    iget-object v2, v0, Lgov/nist/javax/sip/stack/SIPDialog;->remoteParty:Ljavax/sip/address/Address;

    #@15f
    invoke-virtual {v7, v2}, Lgov/nist/javax/sip/header/To;->setAddress(Ljavax/sip/address/Address;)V

    #@162
    move-object/from16 v2, p2

    #@164
    .line 1932
    invoke-virtual/range {v2 .. v7}, Lgov/nist/javax/sip/message/SIPResponse;->createRequest(Lgov/nist/javax/sip/address/SipUri;Lgov/nist/javax/sip/header/Via;Lgov/nist/javax/sip/header/CSeq;Lgov/nist/javax/sip/header/From;Lgov/nist/javax/sip/header/To;)Lgov/nist/javax/sip/message/SIPRequest;

    #@167
    move-result-object v13

    #@168
    .line 1941
    .local v13, "sipRequest":Lgov/nist/javax/sip/message/SIPRequest;
    invoke-static/range {p1 .. p1}, Lgov/nist/javax/sip/message/SIPRequest;->isTargetRefresh(Ljava/lang/String;)Z

    #@16b
    move-result v2

    #@16c
    if-eqz v2, :cond_a

    #@16e
    .line 1942
    move-object/from16 v0, p0

    #@170
    iget-object v2, v0, Lgov/nist/javax/sip/stack/SIPDialog;->sipProvider:Lgov/nist/javax/sip/SipProviderImpl;

    #@172
    .line 1943
    invoke-virtual {v12}, Lgov/nist/javax/sip/ListeningPointImpl;->getTransport()Ljava/lang/String;

    #@175
    move-result-object v14

    #@176
    .line 1942
    invoke-virtual {v2, v14}, Lgov/nist/javax/sip/SipProviderImpl;->getListeningPoint(Ljava/lang/String;)Ljavax/sip/ListeningPoint;

    #@179
    move-result-object v2

    #@17a
    check-cast v2, Lgov/nist/javax/sip/ListeningPointImpl;

    #@17c
    invoke-virtual {v2}, Lgov/nist/javax/sip/ListeningPointImpl;->createContactHeader()Ljavax/sip/header/ContactHeader;

    #@17f
    move-result-object v8

    #@180
    .line 1945
    .local v8, "contactHeader":Ljavax/sip/header/ContactHeader;
    invoke-interface {v8}, Ljavax/sip/header/ContactHeader;->getAddress()Ljavax/sip/address/Address;

    #@183
    move-result-object v2

    #@184
    invoke-interface {v2}, Ljavax/sip/address/Address;->getURI()Ljavax/sip/address/URI;

    #@187
    move-result-object v2

    #@188
    check-cast v2, Ljavax/sip/address/SipURI;

    #@18a
    invoke-virtual/range {p0 .. p0}, Lgov/nist/javax/sip/stack/SIPDialog;->isSecure()Z

    #@18d
    move-result v14

    #@18e
    invoke-interface {v2, v14}, Ljavax/sip/address/SipURI;->setSecure(Z)V

    #@191
    .line 1946
    invoke-virtual {v13, v8}, Lgov/nist/javax/sip/message/SIPRequest;->setHeader(Ljavax/sip/header/Header;)V

    #@194
    .line 1954
    .end local v8    # "contactHeader":Ljavax/sip/header/ContactHeader;
    :cond_a
    :try_start_1
    invoke-virtual {v13}, Lgov/nist/javax/sip/message/SIPRequest;->getCSeq()Ljavax/sip/header/CSeqHeader;

    #@197
    move-result-object v2

    #@198
    move-object v0, v2

    #@199
    check-cast v0, Lgov/nist/javax/sip/header/CSeq;

    #@19b
    move-object v5, v0

    #@19c
    .line 1955
    move-object/from16 v0, p0

    #@19e
    iget-wide v14, v0, Lgov/nist/javax/sip/stack/SIPDialog;->localSequenceNumber:J

    #@1a0
    const-wide/16 v16, 0x1

    #@1a2
    add-long v14, v14, v16

    #@1a4
    invoke-virtual {v5, v14, v15}, Lgov/nist/javax/sip/header/CSeq;->setSeqNumber(J)V
    :try_end_1
    .catch Ljavax/sip/InvalidArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    #@1a7
    .line 1961
    :goto_2
    const-string/jumbo v2, "SUBSCRIBE"

    #@1aa
    move-object/from16 v0, p1

    #@1ac
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1af
    move-result v2

    #@1b0
    if-eqz v2, :cond_b

    #@1b2
    .line 1963
    move-object/from16 v0, p0

    #@1b4
    iget-object v2, v0, Lgov/nist/javax/sip/stack/SIPDialog;->eventHeader:Ljavax/sip/header/EventHeader;

    #@1b6
    if-eqz v2, :cond_b

    #@1b8
    .line 1964
    move-object/from16 v0, p0

    #@1ba
    iget-object v2, v0, Lgov/nist/javax/sip/stack/SIPDialog;->eventHeader:Ljavax/sip/header/EventHeader;

    #@1bc
    invoke-virtual {v13, v2}, Lgov/nist/javax/sip/message/SIPRequest;->addHeader(Ljavax/sip/header/Header;)V

    #@1bf
    .line 1980
    :cond_b
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getLocalTag()Ljava/lang/String;

    #@1c2
    move-result-object v2

    #@1c3
    if-eqz v2, :cond_c

    #@1c5
    .line 1981
    invoke-virtual/range {p0 .. p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getLocalTag()Ljava/lang/String;

    #@1c8
    move-result-object v2

    #@1c9
    invoke-virtual {v6, v2}, Lgov/nist/javax/sip/header/From;->setTag(Ljava/lang/String;)V

    #@1cc
    .line 1985
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getRemoteTag()Ljava/lang/String;

    #@1cf
    move-result-object v2

    #@1d0
    if-eqz v2, :cond_d

    #@1d2
    .line 1986
    invoke-virtual/range {p0 .. p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getRemoteTag()Ljava/lang/String;

    #@1d5
    move-result-object v2

    #@1d6
    invoke-virtual {v7, v2}, Lgov/nist/javax/sip/header/To;->setTag(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/text/ParseException; {:try_start_2 .. :try_end_2} :catch_2

    #@1d9
    .line 1995
    :goto_4
    move-object/from16 v0, p0

    #@1db
    invoke-direct {v0, v13}, Lgov/nist/javax/sip/stack/SIPDialog;->updateRequest(Lgov/nist/javax/sip/message/SIPRequest;)V

    #@1de
    .line 1997
    return-object v13

    #@1df
    .line 1957
    :catch_1
    move-exception v11

    #@1e0
    .line 1958
    .local v11, "ex":Ljavax/sip/InvalidArgumentException;
    invoke-static {v11}, Lgov/nist/core/InternalErrorHandler;->handleException(Ljava/lang/Exception;)V

    #@1e3
    goto :goto_2

    #@1e4
    .line 1983
    .end local v11    # "ex":Ljavax/sip/InvalidArgumentException;
    :cond_c
    :try_start_3
    invoke-virtual {v6}, Lgov/nist/javax/sip/header/From;->removeTag()V
    :try_end_3
    .catch Ljava/text/ParseException; {:try_start_3 .. :try_end_3} :catch_2

    #@1e7
    goto :goto_3

    #@1e8
    .line 1990
    :catch_2
    move-exception v10

    #@1e9
    .line 1991
    .local v10, "ex":Ljava/text/ParseException;
    invoke-static {v10}, Lgov/nist/core/InternalErrorHandler;->handleException(Ljava/lang/Exception;)V

    #@1ec
    goto :goto_4

    #@1ed
    .line 1988
    .end local v10    # "ex":Ljava/text/ParseException;
    :cond_d
    :try_start_4
    invoke-virtual {v7}, Lgov/nist/javax/sip/header/To;->removeTag()V
    :try_end_4
    .catch Ljava/text/ParseException; {:try_start_4 .. :try_end_4} :catch_2

    #@1f0
    goto :goto_4
.end method

.method private doTargetRefresh(Lgov/nist/javax/sip/message/SIPMessage;)V
    .locals 2
    .param p1, "sipMessage"    # Lgov/nist/javax/sip/message/SIPMessage;

    #@0
    .prologue
    .line 2843
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPMessage;->getContactHeaders()Lgov/nist/javax/sip/header/ContactList;

    #@3
    move-result-object v1

    #@4
    .line 2849
    .local v1, "contactList":Lgov/nist/javax/sip/header/ContactList;
    if-eqz v1, :cond_0

    #@6
    .line 2851
    invoke-virtual {v1}, Lgov/nist/javax/sip/header/ContactList;->getFirst()Ljavax/sip/header/Header;

    #@9
    move-result-object v0

    #@a
    check-cast v0, Lgov/nist/javax/sip/header/Contact;

    #@c
    .line 2852
    .local v0, "contact":Lgov/nist/javax/sip/header/Contact;
    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/stack/SIPDialog;->setRemoteTarget(Ljavax/sip/header/ContactHeader;)V

    #@f
    .line 2841
    .end local v0    # "contact":Lgov/nist/javax/sip/header/Contact;
    :cond_0
    return-void
.end method

.method private declared-synchronized getRouteList()Lgov/nist/javax/sip/header/RouteList;
    .locals 6

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 890
    :try_start_0
    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@3
    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    #@6
    move-result v3

    #@7
    if-eqz v3, :cond_0

    #@9
    .line 891
    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@b
    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@e
    move-result-object v3

    #@f
    new-instance v4, Ljava/lang/StringBuilder;

    #@11
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@14
    const-string/jumbo v5, "getRouteList "

    #@17
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v4

    #@1b
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v4

    #@1f
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object v4

    #@23
    invoke-interface {v3, v4}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@26
    .line 894
    :cond_0
    new-instance v1, Lgov/nist/javax/sip/header/RouteList;

    #@28
    invoke-direct {v1}, Lgov/nist/javax/sip/header/RouteList;-><init>()V

    #@2b
    .line 896
    .local v1, "retval":Lgov/nist/javax/sip/header/RouteList;
    new-instance v1, Lgov/nist/javax/sip/header/RouteList;

    #@2d
    .end local v1    # "retval":Lgov/nist/javax/sip/header/RouteList;
    invoke-direct {v1}, Lgov/nist/javax/sip/header/RouteList;-><init>()V

    #@30
    .line 897
    .restart local v1    # "retval":Lgov/nist/javax/sip/header/RouteList;
    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPDialog;->routeList:Lgov/nist/javax/sip/header/RouteList;

    #@32
    if-eqz v3, :cond_1

    #@34
    .line 898
    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPDialog;->routeList:Lgov/nist/javax/sip/header/RouteList;

    #@36
    invoke-virtual {v3}, Lgov/nist/javax/sip/header/RouteList;->listIterator()Ljava/util/ListIterator;

    #@39
    move-result-object v0

    #@3a
    .line 899
    .local v0, "li":Ljava/util/ListIterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    #@3d
    move-result v3

    #@3e
    if-eqz v3, :cond_1

    #@40
    .line 900
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    #@43
    move-result-object v2

    #@44
    check-cast v2, Lgov/nist/javax/sip/header/Route;

    #@46
    .line 901
    .local v2, "route":Lgov/nist/javax/sip/header/Route;
    invoke-virtual {v2}, Lgov/nist/javax/sip/header/Route;->clone()Ljava/lang/Object;

    #@49
    move-result-object v3

    #@4a
    check-cast v3, Lgov/nist/javax/sip/header/Route;

    #@4c
    invoke-virtual {v1, v3}, Lgov/nist/javax/sip/header/RouteList;->add(Lgov/nist/javax/sip/header/SIPHeader;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4f
    goto :goto_0

    #@50
    .end local v0    # "li":Ljava/util/ListIterator;
    .end local v1    # "retval":Lgov/nist/javax/sip/header/RouteList;
    .end local v2    # "route":Lgov/nist/javax/sip/header/Route;
    :catchall_0
    move-exception v3

    #@51
    monitor-exit p0

    #@52
    throw v3

    #@53
    .line 905
    .restart local v1    # "retval":Lgov/nist/javax/sip/header/RouteList;
    :cond_1
    :try_start_1
    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@55
    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    #@58
    move-result v3

    #@59
    if-eqz v3, :cond_4

    #@5b
    .line 906
    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@5d
    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@60
    move-result-object v3

    #@61
    const-string/jumbo v4, "----- "

    #@64
    invoke-interface {v3, v4}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@67
    .line 907
    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@69
    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@6c
    move-result-object v3

    #@6d
    new-instance v4, Ljava/lang/StringBuilder;

    #@6f
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@72
    const-string/jumbo v5, "getRouteList for "

    #@75
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@78
    move-result-object v4

    #@79
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@7c
    move-result-object v4

    #@7d
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@80
    move-result-object v4

    #@81
    invoke-interface {v3, v4}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@84
    .line 908
    if-eqz v1, :cond_2

    #@86
    .line 909
    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@88
    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@8b
    move-result-object v3

    #@8c
    new-instance v4, Ljava/lang/StringBuilder;

    #@8e
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@91
    const-string/jumbo v5, "RouteList = "

    #@94
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@97
    move-result-object v4

    #@98
    invoke-virtual {v1}, Lgov/nist/javax/sip/header/RouteList;->encode()Ljava/lang/String;

    #@9b
    move-result-object v5

    #@9c
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9f
    move-result-object v4

    #@a0
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a3
    move-result-object v4

    #@a4
    invoke-interface {v3, v4}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@a7
    .line 910
    :cond_2
    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPDialog;->routeList:Lgov/nist/javax/sip/header/RouteList;

    #@a9
    if-eqz v3, :cond_3

    #@ab
    .line 911
    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@ad
    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@b0
    move-result-object v3

    #@b1
    new-instance v4, Ljava/lang/StringBuilder;

    #@b3
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@b6
    const-string/jumbo v5, "myRouteList = "

    #@b9
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bc
    move-result-object v4

    #@bd
    iget-object v5, p0, Lgov/nist/javax/sip/stack/SIPDialog;->routeList:Lgov/nist/javax/sip/header/RouteList;

    #@bf
    invoke-virtual {v5}, Lgov/nist/javax/sip/header/RouteList;->encode()Ljava/lang/String;

    #@c2
    move-result-object v5

    #@c3
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c6
    move-result-object v4

    #@c7
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ca
    move-result-object v4

    #@cb
    invoke-interface {v3, v4}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@ce
    .line 912
    :cond_3
    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@d0
    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@d3
    move-result-object v3

    #@d4
    const-string/jumbo v4, "----- "

    #@d7
    invoke-interface {v3, v4}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@da
    :cond_4
    monitor-exit p0

    #@db
    .line 914
    return-object v1
.end method

.method private isClientDialog()Z
    .locals 2

    #@0
    .prologue
    .line 653
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getFirstTransaction()Ljavax/sip/Transaction;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Lgov/nist/javax/sip/stack/SIPTransaction;

    #@6
    .line 654
    .local v0, "transaction":Lgov/nist/javax/sip/stack/SIPTransaction;
    instance-of v1, v0, Lgov/nist/javax/sip/stack/SIPClientTransaction;

    #@8
    return v1
.end method

.method private static final optionPresent(Ljava/util/ListIterator;Ljava/lang/String;)Z
    .locals 2
    .param p0, "l"    # Ljava/util/ListIterator;
    .param p1, "option"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2859
    :cond_0
    invoke-interface {p0}, Ljava/util/ListIterator;->hasNext()Z

    #@3
    move-result v1

    #@4
    if-eqz v1, :cond_1

    #@6
    .line 2860
    invoke-interface {p0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    check-cast v0, Ljavax/sip/header/OptionTag;

    #@c
    .line 2861
    .local v0, "opt":Ljavax/sip/header/OptionTag;
    if-eqz v0, :cond_0

    #@e
    invoke-interface {v0}, Ljavax/sip/header/OptionTag;->getOptionTag()Ljava/lang/String;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@15
    move-result v1

    #@16
    if-eqz v1, :cond_0

    #@18
    .line 2862
    const/4 v1, 0x1

    #@19
    return v1

    #@1a
    .line 2864
    .end local v0    # "opt":Ljavax/sip/header/OptionTag;
    :cond_1
    const/4 v1, 0x0

    #@1b
    return v1
.end method

.method private printRouteList()V
    .locals 3

    #@0
    .prologue
    .line 640
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@2
    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 641
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@a
    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@d
    move-result-object v0

    #@e
    new-instance v1, Ljava/lang/StringBuilder;

    #@10
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@13
    const-string/jumbo v2, "this : "

    #@16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v1

    #@1e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21
    move-result-object v1

    #@22
    invoke-interface {v0, v1}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@25
    .line 642
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@27
    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@2a
    move-result-object v0

    #@2b
    new-instance v1, Ljava/lang/StringBuilder;

    #@2d
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@30
    const-string/jumbo v2, "printRouteList : "

    #@33
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v1

    #@37
    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPDialog;->routeList:Lgov/nist/javax/sip/header/RouteList;

    #@39
    invoke-virtual {v2}, Lgov/nist/javax/sip/header/RouteList;->encode()Ljava/lang/String;

    #@3c
    move-result-object v2

    #@3d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v1

    #@41
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@44
    move-result-object v1

    #@45
    invoke-interface {v0, v1}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@48
    .line 639
    :cond_0
    return-void
.end method

.method private raiseErrorEvent(I)V
    .locals 5
    .param p1, "dialogTimeoutError"    # I

    #@0
    .prologue
    .line 689
    new-instance v1, Lgov/nist/javax/sip/stack/SIPDialogErrorEvent;

    #@2
    invoke-direct {v1, p0, p1}, Lgov/nist/javax/sip/stack/SIPDialogErrorEvent;-><init>(Lgov/nist/javax/sip/stack/SIPDialog;I)V

    #@5
    .line 692
    .local v1, "newErrorEvent":Lgov/nist/javax/sip/stack/SIPDialogErrorEvent;
    iget-object v4, p0, Lgov/nist/javax/sip/stack/SIPDialog;->eventListeners:Ljava/util/Set;

    #@7
    monitor-enter v4

    #@8
    .line 693
    :try_start_0
    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPDialog;->eventListeners:Ljava/util/Set;

    #@a
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@d
    move-result-object v0

    #@e
    .line 694
    .local v0, "listenerIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lgov/nist/javax/sip/stack/SIPDialogEventListener;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@11
    move-result v3

    #@12
    if-eqz v3, :cond_0

    #@14
    .line 696
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@17
    move-result-object v2

    #@18
    check-cast v2, Lgov/nist/javax/sip/stack/SIPDialogEventListener;

    #@1a
    .line 697
    .local v2, "nextListener":Lgov/nist/javax/sip/stack/SIPDialogEventListener;
    invoke-interface {v2, v1}, Lgov/nist/javax/sip/stack/SIPDialogEventListener;->dialogErrorEvent(Lgov/nist/javax/sip/stack/SIPDialogErrorEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1d
    goto :goto_0

    #@1e
    .line 692
    .end local v0    # "listenerIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lgov/nist/javax/sip/stack/SIPDialogEventListener;>;"
    .end local v2    # "nextListener":Lgov/nist/javax/sip/stack/SIPDialogEventListener;
    :catchall_0
    move-exception v3

    #@1f
    monitor-exit v4

    #@20
    throw v3

    #@21
    .restart local v0    # "listenerIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lgov/nist/javax/sip/stack/SIPDialogEventListener;>;"
    :cond_0
    monitor-exit v4

    #@22
    .line 701
    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPDialog;->eventListeners:Ljava/util/Set;

    #@24
    invoke-interface {v3}, Ljava/util/Set;->clear()V

    #@27
    .line 704
    const/4 v3, 0x2

    #@28
    if-eq p1, v3, :cond_1

    #@2a
    .line 705
    const/4 v3, 0x1

    #@2b
    if-eq p1, v3, :cond_1

    #@2d
    .line 706
    const/4 v3, 0x3

    #@2e
    if-eq p1, v3, :cond_1

    #@30
    .line 707
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->delete()V

    #@33
    .line 710
    :cond_1
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->stopTimer()V

    #@36
    .line 680
    return-void
.end method

.method private raiseIOException(Ljava/lang/String;ILjava/lang/String;)V
    .locals 3
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "protocol"    # Ljava/lang/String;

    #@0
    .prologue
    .line 669
    new-instance v0, Ljavax/sip/IOExceptionEvent;

    #@2
    invoke-direct {v0, p0, p1, p2, p3}, Ljavax/sip/IOExceptionEvent;-><init>(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/String;)V

    #@5
    .line 670
    .local v0, "ioError":Ljavax/sip/IOExceptionEvent;
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipProvider:Lgov/nist/javax/sip/SipProviderImpl;

    #@7
    const/4 v2, 0x0

    #@8
    invoke-virtual {v1, v0, v2}, Lgov/nist/javax/sip/SipProviderImpl;->handleEvent(Ljava/util/EventObject;Lgov/nist/javax/sip/stack/SIPTransaction;)V

    #@b
    .line 672
    sget v1, Lgov/nist/javax/sip/stack/SIPDialog;->TERMINATED_STATE:I

    #@d
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/stack/SIPDialog;->setState(I)V

    #@10
    .line 664
    return-void
.end method

.method private recordStackTrace()V
    .locals 3

    #@0
    .prologue
    .line 557
    new-instance v0, Ljava/io/StringWriter;

    #@2
    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    #@5
    .line 558
    .local v0, "stringWriter":Ljava/io/StringWriter;
    new-instance v1, Ljava/io/PrintWriter;

    #@7
    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    #@a
    .line 559
    .local v1, "writer":Ljava/io/PrintWriter;
    new-instance v2, Ljava/lang/Exception;

    #@c
    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    #@f
    invoke-virtual {v2, v1}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintWriter;)V

    #@12
    .line 560
    invoke-virtual {v0}, Ljava/io/StringWriter;->getBuffer()Ljava/lang/StringBuffer;

    #@15
    move-result-object v2

    #@16
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@19
    move-result-object v2

    #@1a
    iput-object v2, p0, Lgov/nist/javax/sip/stack/SIPDialog;->stackTrace:Ljava/lang/String;

    #@1c
    .line 556
    return-void
.end method

.method private sendAck(Ljavax/sip/message/Request;Z)V
    .locals 18
    .param p1, "request"    # Ljavax/sip/message/Request;
    .param p2, "throwIOExceptionAsSipException"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    #@0
    .prologue
    move-object/from16 v2, p1

    #@2
    .line 934
    check-cast v2, Lgov/nist/javax/sip/message/SIPRequest;

    #@4
    .line 935
    .local v2, "ackRequest":Lgov/nist/javax/sip/message/SIPRequest;
    move-object/from16 v0, p0

    #@6
    iget-object v14, v0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@8
    invoke-virtual {v14}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    #@b
    move-result v14

    #@c
    if-eqz v14, :cond_0

    #@e
    .line 936
    move-object/from16 v0, p0

    #@10
    iget-object v14, v0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@12
    invoke-virtual {v14}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@15
    move-result-object v14

    #@16
    new-instance v15, Ljava/lang/StringBuilder;

    #@18
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    #@1b
    const-string/jumbo v16, "sendAck"

    #@1e
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v15

    #@22
    move-object/from16 v0, p0

    #@24
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v15

    #@28
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2b
    move-result-object v15

    #@2c
    invoke-interface {v14, v15}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@2f
    .line 938
    :cond_0
    invoke-virtual {v2}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    #@32
    move-result-object v14

    #@33
    const-string/jumbo v15, "ACK"

    #@36
    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@39
    move-result v14

    #@3a
    if-nez v14, :cond_1

    #@3c
    .line 939
    new-instance v14, Ljavax/sip/SipException;

    #@3e
    const-string/jumbo v15, "Bad request method -- should be ACK"

    #@41
    invoke-direct {v14, v15}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    #@44
    throw v14

    #@45
    .line 940
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getState()Ljavax/sip/DialogState;

    #@48
    move-result-object v14

    #@49
    if-eqz v14, :cond_2

    #@4b
    invoke-virtual/range {p0 .. p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getState()Ljavax/sip/DialogState;

    #@4e
    move-result-object v14

    #@4f
    invoke-virtual {v14}, Ljavax/sip/DialogState;->getValue()I

    #@52
    move-result v14

    #@53
    sget v15, Lgov/nist/javax/sip/stack/SIPDialog;->EARLY_STATE:I

    #@55
    if-ne v14, v15, :cond_4

    #@57
    .line 941
    :cond_2
    move-object/from16 v0, p0

    #@59
    iget-object v14, v0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@5b
    invoke-virtual {v14}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    #@5e
    move-result v14

    #@5f
    if-eqz v14, :cond_3

    #@61
    .line 942
    move-object/from16 v0, p0

    #@63
    iget-object v14, v0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@65
    invoke-virtual {v14}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@68
    move-result-object v14

    #@69
    .line 943
    new-instance v15, Ljava/lang/StringBuilder;

    #@6b
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    #@6e
    const-string/jumbo v16, "Bad Dialog State for "

    #@71
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@74
    move-result-object v15

    #@75
    move-object/from16 v0, p0

    #@77
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@7a
    move-result-object v15

    #@7b
    const-string/jumbo v16, " dialogID = "

    #@7e
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@81
    move-result-object v15

    #@82
    invoke-virtual/range {p0 .. p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getDialogId()Ljava/lang/String;

    #@85
    move-result-object v16

    #@86
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@89
    move-result-object v15

    #@8a
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8d
    move-result-object v15

    #@8e
    .line 942
    invoke-interface {v14, v15}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;)V

    #@91
    .line 945
    :cond_3
    new-instance v14, Ljavax/sip/SipException;

    #@93
    new-instance v15, Ljava/lang/StringBuilder;

    #@95
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    #@98
    const-string/jumbo v16, "Bad dialog state "

    #@9b
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9e
    move-result-object v15

    #@9f
    invoke-virtual/range {p0 .. p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getState()Ljavax/sip/DialogState;

    #@a2
    move-result-object v16

    #@a3
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@a6
    move-result-object v15

    #@a7
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@aa
    move-result-object v15

    #@ab
    invoke-direct {v14, v15}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    #@ae
    throw v14

    #@af
    .line 948
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getCallId()Ljavax/sip/header/CallIdHeader;

    #@b2
    move-result-object v14

    #@b3
    invoke-interface {v14}, Ljavax/sip/header/CallIdHeader;->getCallId()Ljava/lang/String;

    #@b6
    move-result-object v15

    #@b7
    move-object/from16 v14, p1

    #@b9
    check-cast v14, Lgov/nist/javax/sip/message/SIPRequest;

    #@bb
    invoke-virtual {v14}, Lgov/nist/javax/sip/message/SIPRequest;->getCallId()Ljavax/sip/header/CallIdHeader;

    #@be
    move-result-object v14

    #@bf
    invoke-interface {v14}, Ljavax/sip/header/CallIdHeader;->getCallId()Ljava/lang/String;

    #@c2
    move-result-object v14

    #@c3
    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@c6
    move-result v14

    #@c7
    if-nez v14, :cond_6

    #@c9
    .line 949
    move-object/from16 v0, p0

    #@cb
    iget-object v14, v0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@cd
    invoke-virtual {v14}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    #@d0
    move-result v14

    #@d1
    if-eqz v14, :cond_5

    #@d3
    .line 950
    move-object/from16 v0, p0

    #@d5
    iget-object v14, v0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@d7
    invoke-virtual {v14}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@da
    move-result-object v14

    #@db
    new-instance v15, Ljava/lang/StringBuilder;

    #@dd
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    #@e0
    const-string/jumbo v16, "CallID "

    #@e3
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e6
    move-result-object v15

    #@e7
    invoke-virtual/range {p0 .. p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getCallId()Ljavax/sip/header/CallIdHeader;

    #@ea
    move-result-object v16

    #@eb
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@ee
    move-result-object v15

    #@ef
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@f2
    move-result-object v15

    #@f3
    invoke-interface {v14, v15}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;)V

    #@f6
    .line 951
    move-object/from16 v0, p0

    #@f8
    iget-object v14, v0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@fa
    invoke-virtual {v14}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@fd
    move-result-object v14

    #@fe
    .line 952
    new-instance v15, Ljava/lang/StringBuilder;

    #@100
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    #@103
    const-string/jumbo v16, "RequestCallID = "

    #@106
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@109
    move-result-object v15

    #@10a
    invoke-virtual {v2}, Lgov/nist/javax/sip/message/SIPRequest;->getCallId()Ljavax/sip/header/CallIdHeader;

    #@10d
    move-result-object v16

    #@10e
    invoke-interface/range {v16 .. v16}, Ljavax/sip/header/CallIdHeader;->getCallId()Ljava/lang/String;

    #@111
    move-result-object v16

    #@112
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@115
    move-result-object v15

    #@116
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@119
    move-result-object v15

    #@11a
    .line 951
    invoke-interface {v14, v15}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;)V

    #@11d
    .line 953
    move-object/from16 v0, p0

    #@11f
    iget-object v14, v0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@121
    invoke-virtual {v14}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@124
    move-result-object v14

    #@125
    new-instance v15, Ljava/lang/StringBuilder;

    #@127
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    #@12a
    const-string/jumbo v16, "dialog =  "

    #@12d
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@130
    move-result-object v15

    #@131
    move-object/from16 v0, p0

    #@133
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@136
    move-result-object v15

    #@137
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13a
    move-result-object v15

    #@13b
    invoke-interface {v14, v15}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;)V

    #@13e
    .line 955
    :cond_5
    new-instance v14, Ljavax/sip/SipException;

    #@140
    const-string/jumbo v15, "Bad call ID in request"

    #@143
    invoke-direct {v14, v15}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    #@146
    throw v14

    #@147
    .line 958
    :cond_6
    :try_start_0
    move-object/from16 v0, p0

    #@149
    iget-object v14, v0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@14b
    invoke-virtual {v14}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    #@14e
    move-result v14

    #@14f
    if-eqz v14, :cond_7

    #@151
    .line 959
    move-object/from16 v0, p0

    #@153
    iget-object v14, v0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@155
    invoke-virtual {v14}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@158
    move-result-object v14

    #@159
    .line 960
    new-instance v15, Ljava/lang/StringBuilder;

    #@15b
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    #@15e
    const-string/jumbo v16, "setting from tag For outgoing ACK= "

    #@161
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@164
    move-result-object v15

    #@165
    invoke-virtual/range {p0 .. p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getLocalTag()Ljava/lang/String;

    #@168
    move-result-object v16

    #@169
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16c
    move-result-object v15

    #@16d
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@170
    move-result-object v15

    #@171
    .line 959
    invoke-interface {v14, v15}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@174
    .line 961
    move-object/from16 v0, p0

    #@176
    iget-object v14, v0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@178
    invoke-virtual {v14}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@17b
    move-result-object v14

    #@17c
    .line 962
    new-instance v15, Ljava/lang/StringBuilder;

    #@17e
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    #@181
    const-string/jumbo v16, "setting To tag for outgoing ACK = "

    #@184
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@187
    move-result-object v15

    #@188
    invoke-virtual/range {p0 .. p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getRemoteTag()Ljava/lang/String;

    #@18b
    move-result-object v16

    #@18c
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18f
    move-result-object v15

    #@190
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@193
    move-result-object v15

    #@194
    .line 961
    invoke-interface {v14, v15}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@197
    .line 963
    move-object/from16 v0, p0

    #@199
    iget-object v14, v0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@19b
    invoke-virtual {v14}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@19e
    move-result-object v14

    #@19f
    new-instance v15, Ljava/lang/StringBuilder;

    #@1a1
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    #@1a4
    const-string/jumbo v16, "ack = "

    #@1a7
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1aa
    move-result-object v15

    #@1ab
    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1ae
    move-result-object v15

    #@1af
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b2
    move-result-object v15

    #@1b3
    invoke-interface {v14, v15}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@1b6
    .line 965
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getLocalTag()Ljava/lang/String;

    #@1b9
    move-result-object v14

    #@1ba
    if-eqz v14, :cond_8

    #@1bc
    .line 966
    invoke-virtual {v2}, Lgov/nist/javax/sip/message/SIPRequest;->getFrom()Ljavax/sip/header/FromHeader;

    #@1bf
    move-result-object v14

    #@1c0
    invoke-virtual/range {p0 .. p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getLocalTag()Ljava/lang/String;

    #@1c3
    move-result-object v15

    #@1c4
    invoke-interface {v14, v15}, Ljavax/sip/header/FromHeader;->setTag(Ljava/lang/String;)V

    #@1c7
    .line 967
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getRemoteTag()Ljava/lang/String;

    #@1ca
    move-result-object v14

    #@1cb
    if-eqz v14, :cond_9

    #@1cd
    .line 968
    invoke-virtual {v2}, Lgov/nist/javax/sip/message/SIPRequest;->getTo()Ljavax/sip/header/ToHeader;

    #@1d0
    move-result-object v14

    #@1d1
    invoke-virtual/range {p0 .. p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getRemoteTag()Ljava/lang/String;

    #@1d4
    move-result-object v15

    #@1d5
    invoke-interface {v14, v15}, Ljavax/sip/header/ToHeader;->setTag(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    #@1d8
    .line 973
    :cond_9
    move-object/from16 v0, p0

    #@1da
    iget-object v14, v0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@1dc
    invoke-virtual {v14, v2}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getNextHop(Lgov/nist/javax/sip/message/SIPRequest;)Ljavax/sip/address/Hop;

    #@1df
    move-result-object v9

    #@1e0
    .line 975
    .local v9, "hop":Ljavax/sip/address/Hop;
    if-nez v9, :cond_a

    #@1e2
    .line 976
    new-instance v14, Ljavax/sip/SipException;

    #@1e4
    const-string/jumbo v15, "No route!"

    #@1e7
    invoke-direct {v14, v15}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    #@1ea
    throw v14

    #@1eb
    .line 969
    .end local v9    # "hop":Ljavax/sip/address/Hop;
    :catch_0
    move-exception v7

    #@1ec
    .line 970
    .local v7, "ex":Ljava/text/ParseException;
    new-instance v14, Ljavax/sip/SipException;

    #@1ee
    invoke-virtual {v7}, Ljava/text/ParseException;->getMessage()Ljava/lang/String;

    #@1f1
    move-result-object v15

    #@1f2
    invoke-direct {v14, v15}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    #@1f5
    throw v14

    #@1f6
    .line 978
    .end local v7    # "ex":Ljava/text/ParseException;
    .restart local v9    # "hop":Ljavax/sip/address/Hop;
    :cond_a
    :try_start_1
    move-object/from16 v0, p0

    #@1f8
    iget-object v14, v0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@1fa
    invoke-virtual {v14}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    #@1fd
    move-result v14

    #@1fe
    if-eqz v14, :cond_b

    #@200
    .line 979
    move-object/from16 v0, p0

    #@202
    iget-object v14, v0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@204
    invoke-virtual {v14}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@207
    move-result-object v14

    #@208
    new-instance v15, Ljava/lang/StringBuilder;

    #@20a
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    #@20d
    const-string/jumbo v16, "hop = "

    #@210
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@213
    move-result-object v15

    #@214
    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@217
    move-result-object v15

    #@218
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21b
    move-result-object v15

    #@21c
    invoke-interface {v14, v15}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@21f
    .line 980
    :cond_b
    move-object/from16 v0, p0

    #@221
    iget-object v14, v0, Lgov/nist/javax/sip/stack/SIPDialog;->sipProvider:Lgov/nist/javax/sip/SipProviderImpl;

    #@223
    invoke-interface {v9}, Ljavax/sip/address/Hop;->getTransport()Ljava/lang/String;

    #@226
    move-result-object v15

    #@227
    invoke-virtual {v14, v15}, Lgov/nist/javax/sip/SipProviderImpl;->getListeningPoint(Ljava/lang/String;)Ljavax/sip/ListeningPoint;

    #@22a
    move-result-object v11

    #@22b
    check-cast v11, Lgov/nist/javax/sip/ListeningPointImpl;

    #@22d
    .line 982
    .local v11, "lp":Lgov/nist/javax/sip/ListeningPointImpl;
    if-nez v11, :cond_c

    #@22f
    .line 983
    new-instance v14, Ljavax/sip/SipException;

    #@231
    new-instance v15, Ljava/lang/StringBuilder;

    #@233
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    #@236
    const-string/jumbo v16, "No listening point for this provider registered at "

    #@239
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23c
    move-result-object v15

    #@23d
    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@240
    move-result-object v15

    #@241
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@244
    move-result-object v15

    #@245
    invoke-direct {v14, v15}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    #@248
    throw v14
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljavax/sip/SipException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    #@249
    .line 1007
    .end local v11    # "lp":Lgov/nist/javax/sip/ListeningPointImpl;
    .end local p1    # "request":Ljavax/sip/message/Request;
    :catch_1
    move-exception v3

    #@24a
    .line 1008
    .local v3, "ex":Ljava/io/IOException;
    if-eqz p2, :cond_13

    #@24c
    .line 1009
    new-instance v14, Ljavax/sip/SipException;

    #@24e
    const-string/jumbo v15, "Could not send ack"

    #@251
    invoke-direct {v14, v15, v3}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@254
    throw v14

    #@255
    .line 985
    .end local v3    # "ex":Ljava/io/IOException;
    .restart local v11    # "lp":Lgov/nist/javax/sip/ListeningPointImpl;
    .restart local p1    # "request":Ljavax/sip/message/Request;
    :cond_c
    :try_start_2
    invoke-interface {v9}, Ljavax/sip/address/Hop;->getHost()Ljava/lang/String;

    #@258
    move-result-object v14

    #@259
    invoke-static {v14}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    #@25c
    move-result-object v10

    #@25d
    .line 986
    .local v10, "inetAddress":Ljava/net/InetAddress;
    invoke-virtual {v11}, Lgov/nist/javax/sip/ListeningPointImpl;->getMessageProcessor()Lgov/nist/javax/sip/stack/MessageProcessor;

    #@260
    move-result-object v14

    #@261
    .line 987
    invoke-interface {v9}, Ljavax/sip/address/Hop;->getPort()I

    #@264
    move-result v15

    #@265
    .line 986
    invoke-virtual {v14, v10, v15}, Lgov/nist/javax/sip/stack/MessageProcessor;->createMessageChannel(Ljava/net/InetAddress;I)Lgov/nist/javax/sip/stack/MessageChannel;

    #@268
    move-result-object v12

    #@269
    .line 988
    .local v12, "messageChannel":Lgov/nist/javax/sip/stack/MessageChannel;
    const/4 v13, 0x0

    #@26a
    .line 989
    .local v13, "releaseAckSem":Z
    check-cast p1, Lgov/nist/javax/sip/message/SIPRequest;

    #@26c
    .end local p1    # "request":Ljavax/sip/message/Request;
    invoke-virtual/range {p1 .. p1}, Lgov/nist/javax/sip/message/SIPRequest;->getCSeq()Ljavax/sip/header/CSeqHeader;

    #@26f
    move-result-object v14

    #@270
    invoke-interface {v14}, Ljavax/sip/header/CSeqHeader;->getSeqNumber()J

    #@273
    move-result-wide v4

    #@274
    .line 990
    .local v4, "cseqNo":J
    move-object/from16 v0, p0

    #@276
    invoke-virtual {v0, v4, v5}, Lgov/nist/javax/sip/stack/SIPDialog;->isAckSent(J)Z

    #@279
    move-result v14

    #@27a
    if-nez v14, :cond_d

    #@27c
    .line 991
    const/4 v13, 0x1

    #@27d
    .line 994
    :cond_d
    move-object/from16 v0, p0

    #@27f
    invoke-direct {v0, v2}, Lgov/nist/javax/sip/stack/SIPDialog;->setLastAckSent(Lgov/nist/javax/sip/message/SIPRequest;)V

    #@282
    .line 995
    invoke-virtual {v12, v2}, Lgov/nist/javax/sip/stack/MessageChannel;->sendMessage(Lgov/nist/javax/sip/message/SIPMessage;)V

    #@285
    .line 997
    const/4 v14, 0x1

    #@286
    move-object/from16 v0, p0

    #@288
    iput-boolean v14, v0, Lgov/nist/javax/sip/stack/SIPDialog;->isAcknowledged:Z

    #@28a
    .line 998
    move-object/from16 v0, p0

    #@28c
    iget-wide v14, v0, Lgov/nist/javax/sip/stack/SIPDialog;->highestSequenceNumberAcknowledged:J

    #@28e
    .line 999
    invoke-virtual {v2}, Lgov/nist/javax/sip/message/SIPRequest;->getCSeq()Ljavax/sip/header/CSeqHeader;

    #@291
    move-result-object v16

    #@292
    invoke-interface/range {v16 .. v16}, Ljavax/sip/header/CSeqHeader;->getSeqNumber()J

    #@295
    move-result-wide v16

    #@296
    .line 998
    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->max(JJ)J

    #@299
    move-result-wide v14

    #@29a
    move-object/from16 v0, p0

    #@29c
    iput-wide v14, v0, Lgov/nist/javax/sip/stack/SIPDialog;->highestSequenceNumberAcknowledged:J

    #@29e
    .line 1000
    if-eqz v13, :cond_10

    #@2a0
    move-object/from16 v0, p0

    #@2a2
    iget-boolean v14, v0, Lgov/nist/javax/sip/stack/SIPDialog;->isBackToBackUserAgent:Z

    #@2a4
    if-eqz v14, :cond_10

    #@2a6
    .line 1001
    invoke-virtual/range {p0 .. p0}, Lgov/nist/javax/sip/stack/SIPDialog;->releaseAckSem()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljavax/sip/SipException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    #@2a9
    .line 1020
    .end local v4    # "cseqNo":J
    .end local v10    # "inetAddress":Ljava/net/InetAddress;
    .end local v11    # "lp":Lgov/nist/javax/sip/ListeningPointImpl;
    .end local v12    # "messageChannel":Lgov/nist/javax/sip/stack/MessageChannel;
    .end local v13    # "releaseAckSem":Z
    :cond_e
    :goto_0
    move-object/from16 v0, p0

    #@2ab
    iget-object v14, v0, Lgov/nist/javax/sip/stack/SIPDialog;->dialogDeleteTask:Lgov/nist/javax/sip/stack/SIPDialog$DialogDeleteTask;

    #@2ad
    if-eqz v14, :cond_f

    #@2af
    .line 1021
    move-object/from16 v0, p0

    #@2b1
    iget-object v14, v0, Lgov/nist/javax/sip/stack/SIPDialog;->dialogDeleteTask:Lgov/nist/javax/sip/stack/SIPDialog$DialogDeleteTask;

    #@2b3
    invoke-virtual {v14}, Lgov/nist/javax/sip/stack/SIPDialog$DialogDeleteTask;->cancel()Z

    #@2b6
    .line 1022
    const/4 v14, 0x0

    #@2b7
    move-object/from16 v0, p0

    #@2b9
    iput-object v14, v0, Lgov/nist/javax/sip/stack/SIPDialog;->dialogDeleteTask:Lgov/nist/javax/sip/stack/SIPDialog$DialogDeleteTask;

    #@2bb
    .line 1024
    :cond_f
    const/4 v14, 0x1

    #@2bc
    move-object/from16 v0, p0

    #@2be
    iput-boolean v14, v0, Lgov/nist/javax/sip/stack/SIPDialog;->ackSeen:Z

    #@2c0
    .line 933
    return-void

    #@2c1
    .line 1003
    .restart local v4    # "cseqNo":J
    .restart local v10    # "inetAddress":Ljava/net/InetAddress;
    .restart local v11    # "lp":Lgov/nist/javax/sip/ListeningPointImpl;
    .restart local v12    # "messageChannel":Lgov/nist/javax/sip/stack/MessageChannel;
    .restart local v13    # "releaseAckSem":Z
    :cond_10
    :try_start_3
    move-object/from16 v0, p0

    #@2c3
    iget-object v14, v0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@2c5
    invoke-virtual {v14}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    #@2c8
    move-result v14

    #@2c9
    if-eqz v14, :cond_e

    #@2cb
    .line 1004
    move-object/from16 v0, p0

    #@2cd
    iget-object v14, v0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@2cf
    invoke-virtual {v14}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@2d2
    move-result-object v14

    #@2d3
    new-instance v15, Ljava/lang/StringBuilder;

    #@2d5
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    #@2d8
    const-string/jumbo v16, "Not releasing ack sem for "

    #@2db
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2de
    move-result-object v15

    #@2df
    move-object/from16 v0, p0

    #@2e1
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2e4
    move-result-object v15

    #@2e5
    const-string/jumbo v16, " isAckSent "

    #@2e8
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2eb
    move-result-object v15

    #@2ec
    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@2ef
    move-result-object v15

    #@2f0
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2f3
    move-result-object v15

    #@2f4
    invoke-interface {v14, v15}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljavax/sip/SipException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    #@2f7
    goto :goto_0

    #@2f8
    .line 1011
    .end local v4    # "cseqNo":J
    .end local v10    # "inetAddress":Ljava/net/InetAddress;
    .end local v11    # "lp":Lgov/nist/javax/sip/ListeningPointImpl;
    .end local v12    # "messageChannel":Lgov/nist/javax/sip/stack/MessageChannel;
    .end local v13    # "releaseAckSem":Z
    :catch_2
    move-exception v8

    #@2f9
    .line 1012
    .local v8, "ex":Ljavax/sip/SipException;
    move-object/from16 v0, p0

    #@2fb
    iget-object v14, v0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@2fd
    invoke-virtual {v14}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    #@300
    move-result v14

    #@301
    if-eqz v14, :cond_11

    #@303
    .line 1013
    move-object/from16 v0, p0

    #@305
    iget-object v14, v0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@307
    invoke-virtual {v14}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@30a
    move-result-object v14

    #@30b
    invoke-interface {v14, v8}, Lgov/nist/core/StackLogger;->logException(Ljava/lang/Throwable;)V

    #@30e
    .line 1014
    :cond_11
    throw v8

    #@30f
    .line 1015
    .end local v8    # "ex":Ljavax/sip/SipException;
    :catch_3
    move-exception v6

    #@310
    .line 1016
    .local v6, "ex":Ljava/lang/Exception;
    move-object/from16 v0, p0

    #@312
    iget-object v14, v0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@314
    invoke-virtual {v14}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    #@317
    move-result v14

    #@318
    if-eqz v14, :cond_12

    #@31a
    .line 1017
    move-object/from16 v0, p0

    #@31c
    iget-object v14, v0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@31e
    invoke-virtual {v14}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@321
    move-result-object v14

    #@322
    invoke-interface {v14, v6}, Lgov/nist/core/StackLogger;->logException(Ljava/lang/Throwable;)V

    #@325
    .line 1018
    :cond_12
    new-instance v14, Ljavax/sip/SipException;

    #@327
    const-string/jumbo v15, "Could not create message channel"

    #@32a
    invoke-direct {v14, v15, v6}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@32d
    throw v14

    #@32e
    .line 1010
    .end local v6    # "ex":Ljava/lang/Exception;
    .restart local v3    # "ex":Ljava/io/IOException;
    :cond_13
    invoke-interface {v9}, Ljavax/sip/address/Hop;->getHost()Ljava/lang/String;

    #@331
    move-result-object v14

    #@332
    invoke-interface {v9}, Ljavax/sip/address/Hop;->getPort()I

    #@335
    move-result v15

    #@336
    invoke-interface {v9}, Ljavax/sip/address/Hop;->getTransport()Ljava/lang/String;

    #@339
    move-result-object v16

    #@33a
    move-object/from16 v0, p0

    #@33c
    move-object/from16 v1, v16

    #@33e
    invoke-direct {v0, v14, v15, v1}, Lgov/nist/javax/sip/stack/SIPDialog;->raiseIOException(Ljava/lang/String;ILjava/lang/String;)V

    #@341
    goto/16 :goto_0
.end method

.method private setCallId(Lgov/nist/javax/sip/message/SIPRequest;)V
    .locals 1
    .param p1, "sipRequest"    # Lgov/nist/javax/sip/message/SIPRequest;

    #@0
    .prologue
    .line 1767
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPRequest;->getCallId()Ljavax/sip/header/CallIdHeader;

    #@3
    move-result-object v0

    #@4
    iput-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->callIdHeader:Ljavax/sip/header/CallIdHeader;

    #@6
    .line 1766
    return-void
.end method

.method private setLastAckReceived(Lgov/nist/javax/sip/message/SIPRequest;)V
    .locals 0
    .param p1, "lastAckReceived"    # Lgov/nist/javax/sip/message/SIPRequest;

    #@0
    .prologue
    .line 3237
    iput-object p1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->lastAckReceived:Lgov/nist/javax/sip/message/SIPRequest;

    #@2
    .line 3236
    return-void
.end method

.method private setLastAckSent(Lgov/nist/javax/sip/message/SIPRequest;)V
    .locals 0
    .param p1, "lastAckSent"    # Lgov/nist/javax/sip/message/SIPRequest;

    #@0
    .prologue
    .line 3251
    iput-object p1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->lastAckSent:Lgov/nist/javax/sip/message/SIPRequest;

    #@2
    .line 3250
    return-void
.end method

.method private setLocalParty(Lgov/nist/javax/sip/message/SIPMessage;)V
    .locals 1
    .param p1, "sipMessage"    # Lgov/nist/javax/sip/message/SIPMessage;

    #@0
    .prologue
    .line 1781
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->isServer()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 1782
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPMessage;->getFrom()Ljavax/sip/header/FromHeader;

    #@9
    move-result-object v0

    #@a
    invoke-interface {v0}, Ljavax/sip/header/FromHeader;->getAddress()Ljavax/sip/address/Address;

    #@d
    move-result-object v0

    #@e
    iput-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->localParty:Ljavax/sip/address/Address;

    #@10
    .line 1780
    :goto_0
    return-void

    #@11
    .line 1784
    :cond_0
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPMessage;->getTo()Ljavax/sip/header/ToHeader;

    #@14
    move-result-object v0

    #@15
    invoke-interface {v0}, Ljavax/sip/header/ToHeader;->getAddress()Ljavax/sip/address/Address;

    #@18
    move-result-object v0

    #@19
    iput-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->localParty:Ljavax/sip/address/Address;

    #@1b
    goto :goto_0
.end method

.method private setLocalSequenceNumber(J)V
    .locals 5
    .param p1, "lCseq"    # J

    #@0
    .prologue
    .line 1626
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@2
    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 1627
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@a
    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@d
    move-result-object v0

    #@e
    .line 1628
    new-instance v1, Ljava/lang/StringBuilder;

    #@10
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@13
    const-string/jumbo v2, "setLocalSequenceNumber: original  "

    #@16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    iget-wide v2, p0, Lgov/nist/javax/sip/stack/SIPDialog;->localSequenceNumber:J

    #@1c
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v1

    #@20
    const-string/jumbo v2, " new  = "

    #@23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v1

    #@27
    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v1

    #@2b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2e
    move-result-object v1

    #@2f
    .line 1627
    invoke-interface {v0, v1}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@32
    .line 1630
    :cond_0
    iget-wide v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->localSequenceNumber:J

    #@34
    cmp-long v0, p1, v0

    #@36
    if-gtz v0, :cond_1

    #@38
    .line 1631
    new-instance v0, Ljava/lang/RuntimeException;

    #@3a
    const-string/jumbo v1, "Sequence number should not decrease !"

    #@3d
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@40
    throw v0

    #@41
    .line 1632
    :cond_1
    iput-wide p1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->localSequenceNumber:J

    #@43
    .line 1625
    return-void
.end method

.method private setLocalTag(Ljava/lang/String;)V
    .locals 3
    .param p1, "mytag"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1734
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@2
    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 1735
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@a
    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@d
    move-result-object v0

    #@e
    new-instance v1, Ljava/lang/StringBuilder;

    #@10
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@13
    const-string/jumbo v2, "set Local tag "

    #@16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v1

    #@1e
    const-string/jumbo v2, " "

    #@21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v1

    #@25
    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPDialog;->dialogId:Ljava/lang/String;

    #@27
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v1

    #@2b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2e
    move-result-object v1

    #@2f
    invoke-interface {v0, v1}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@32
    .line 1736
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@34
    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@37
    move-result-object v0

    #@38
    invoke-interface {v0}, Lgov/nist/core/StackLogger;->logStackTrace()V

    #@3b
    .line 1739
    :cond_0
    iput-object p1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->myTag:Ljava/lang/String;

    #@3d
    .line 1733
    return-void
.end method

.method private setRemoteParty(Lgov/nist/javax/sip/message/SIPMessage;)V
    .locals 3
    .param p1, "sipMessage"    # Lgov/nist/javax/sip/message/SIPMessage;

    #@0
    .prologue
    .line 720
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->isServer()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_1

    #@6
    .line 722
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPMessage;->getTo()Ljavax/sip/header/ToHeader;

    #@9
    move-result-object v0

    #@a
    invoke-interface {v0}, Ljavax/sip/header/ToHeader;->getAddress()Ljavax/sip/address/Address;

    #@d
    move-result-object v0

    #@e
    iput-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->remoteParty:Ljavax/sip/address/Address;

    #@10
    .line 727
    :goto_0
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@12
    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    #@15
    move-result v0

    #@16
    if-eqz v0, :cond_0

    #@18
    .line 728
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@1a
    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@1d
    move-result-object v0

    #@1e
    new-instance v1, Ljava/lang/StringBuilder;

    #@20
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@23
    const-string/jumbo v2, "settingRemoteParty "

    #@26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v1

    #@2a
    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPDialog;->remoteParty:Ljavax/sip/address/Address;

    #@2c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v1

    #@30
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@33
    move-result-object v1

    #@34
    invoke-interface {v0, v1}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@37
    .line 718
    :cond_0
    return-void

    #@38
    .line 724
    :cond_1
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPMessage;->getFrom()Ljavax/sip/header/FromHeader;

    #@3b
    move-result-object v0

    #@3c
    invoke-interface {v0}, Ljavax/sip/header/FromHeader;->getAddress()Ljavax/sip/address/Address;

    #@3f
    move-result-object v0

    #@40
    iput-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->remoteParty:Ljavax/sip/address/Address;

    #@42
    goto :goto_0
.end method

.method private setRemoteTag(Ljava/lang/String;)V
    .locals 5
    .param p1, "hisTag"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 1559
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@3
    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    #@6
    move-result v1

    #@7
    if-eqz v1, :cond_0

    #@9
    .line 1560
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@b
    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@e
    move-result-object v1

    #@f
    .line 1561
    new-instance v2, Ljava/lang/StringBuilder;

    #@11
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@14
    const-string/jumbo v3, "setRemoteTag(): "

    #@17
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v2

    #@1b
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v2

    #@1f
    const-string/jumbo v3, " remoteTag = "

    #@22
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v2

    #@26
    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPDialog;->hisTag:Ljava/lang/String;

    #@28
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v2

    #@2c
    const-string/jumbo v3, " new tag = "

    #@2f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v2

    #@33
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v2

    #@37
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3a
    move-result-object v2

    #@3b
    .line 1560
    invoke-interface {v1, v2}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@3e
    .line 1564
    :cond_0
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->hisTag:Ljava/lang/String;

    #@40
    if-eqz v1, :cond_1

    #@42
    if-eqz p1, :cond_1

    #@44
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->hisTag:Ljava/lang/String;

    #@46
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@49
    move-result v1

    #@4a
    if-eqz v1, :cond_3

    #@4c
    .line 1592
    :cond_1
    if-eqz p1, :cond_9

    #@4e
    .line 1593
    iput-object p1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->hisTag:Ljava/lang/String;

    #@50
    .line 1558
    :cond_2
    :goto_0
    return-void

    #@51
    .line 1565
    :cond_3
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getState()Ljavax/sip/DialogState;

    #@54
    move-result-object v1

    #@55
    sget-object v2, Ljavax/sip/DialogState;->EARLY:Ljavax/sip/DialogState;

    #@57
    if-eq v1, v2, :cond_5

    #@59
    .line 1566
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@5b
    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    #@5e
    move-result v1

    #@5f
    if-eqz v1, :cond_4

    #@61
    .line 1567
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@63
    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@66
    move-result-object v1

    #@67
    .line 1568
    const-string/jumbo v2, "Dialog is already established -- ignoring remote tag re-assignment"

    #@6a
    .line 1567
    invoke-interface {v1, v2}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@6d
    .line 1569
    :cond_4
    return-void

    #@6e
    .line 1570
    :cond_5
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@70
    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isRemoteTagReassignmentAllowed()Z

    #@73
    move-result v1

    #@74
    if-eqz v1, :cond_2

    #@76
    .line 1571
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@78
    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    #@7b
    move-result v1

    #@7c
    if-eqz v1, :cond_6

    #@7e
    .line 1572
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@80
    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@83
    move-result-object v1

    #@84
    .line 1573
    new-instance v2, Ljava/lang/StringBuilder;

    #@86
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@89
    const-string/jumbo v3, "UNSAFE OPERATION !  tag re-assignment "

    #@8c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8f
    move-result-object v2

    #@90
    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPDialog;->hisTag:Ljava/lang/String;

    #@92
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@95
    move-result-object v2

    #@96
    .line 1574
    const-string/jumbo v3, " trying to set to "

    #@99
    .line 1573
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9c
    move-result-object v2

    #@9d
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a0
    move-result-object v2

    #@a1
    .line 1575
    const-string/jumbo v3, " can cause unexpected effects "

    #@a4
    .line 1573
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a7
    move-result-object v2

    #@a8
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ab
    move-result-object v2

    #@ac
    .line 1572
    invoke-interface {v1, v2}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@af
    .line 1576
    :cond_6
    const/4 v0, 0x0

    #@b0
    .line 1577
    .local v0, "removed":Z
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@b2
    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPDialog;->dialogId:Ljava/lang/String;

    #@b4
    invoke-virtual {v1, v2}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getDialog(Ljava/lang/String;)Lgov/nist/javax/sip/stack/SIPDialog;

    #@b7
    move-result-object v1

    #@b8
    if-ne v1, p0, :cond_7

    #@ba
    .line 1578
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@bc
    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPDialog;->dialogId:Ljava/lang/String;

    #@be
    invoke-virtual {v1, v2}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->removeDialog(Ljava/lang/String;)V

    #@c1
    .line 1579
    const/4 v0, 0x1

    #@c2
    .line 1583
    :cond_7
    iput-object v4, p0, Lgov/nist/javax/sip/stack/SIPDialog;->dialogId:Ljava/lang/String;

    #@c4
    .line 1584
    iput-object p1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->hisTag:Ljava/lang/String;

    #@c6
    .line 1585
    if-eqz v0, :cond_2

    #@c8
    .line 1586
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@ca
    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    #@cd
    move-result v1

    #@ce
    if-eqz v1, :cond_8

    #@d0
    .line 1587
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@d2
    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@d5
    move-result-object v1

    #@d6
    const-string/jumbo v2, "ReInserting Dialog"

    #@d9
    invoke-interface {v1, v2}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@dc
    .line 1588
    :cond_8
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@de
    invoke-virtual {v1, p0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->putDialog(Lgov/nist/javax/sip/stack/SIPDialog;)V

    #@e1
    goto/16 :goto_0

    #@e3
    .line 1595
    .end local v0    # "removed":Z
    :cond_9
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@e5
    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    #@e8
    move-result v1

    #@e9
    if-eqz v1, :cond_2

    #@eb
    .line 1596
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@ed
    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@f0
    move-result-object v1

    #@f1
    const-string/jumbo v2, "setRemoteTag : called with null argument "

    #@f4
    invoke-interface {v1, v2}, Lgov/nist/core/StackLogger;->logWarning(Ljava/lang/String;)V

    #@f7
    goto/16 :goto_0
.end method

.method private static storeFirstTransactionInfo(Lgov/nist/javax/sip/stack/SIPDialog;Lgov/nist/javax/sip/stack/SIPTransaction;)V
    .locals 7
    .param p0, "dialog"    # Lgov/nist/javax/sip/stack/SIPDialog;
    .param p1, "transaction"    # Lgov/nist/javax/sip/stack/SIPTransaction;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 1450
    iput-object p1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->firstTransaction:Lgov/nist/javax/sip/stack/SIPTransaction;

    #@3
    .line 1451
    const/4 v5, 0x1

    #@4
    iput-boolean v5, p0, Lgov/nist/javax/sip/stack/SIPDialog;->firstTransactionSeen:Z

    #@6
    .line 1452
    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPTransaction;->isServerTransaction()Z

    #@9
    move-result v5

    #@a
    iput-boolean v5, p0, Lgov/nist/javax/sip/stack/SIPDialog;->firstTransactionIsServerTransaction:Z

    #@c
    .line 1453
    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPTransaction;->getRequest()Ljavax/sip/message/Request;

    #@f
    move-result-object v5

    #@10
    invoke-interface {v5}, Ljavax/sip/message/Request;->getRequestURI()Ljavax/sip/address/URI;

    #@13
    move-result-object v5

    #@14
    invoke-interface {v5}, Ljavax/sip/address/URI;->getScheme()Ljava/lang/String;

    #@17
    move-result-object v5

    #@18
    .line 1454
    const-string/jumbo v6, "sips"

    #@1b
    .line 1453
    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@1e
    move-result v5

    #@1f
    iput-boolean v5, p0, Lgov/nist/javax/sip/stack/SIPDialog;->firstTransactionSecure:Z

    #@21
    .line 1455
    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPTransaction;->getPort()I

    #@24
    move-result v5

    #@25
    iput v5, p0, Lgov/nist/javax/sip/stack/SIPDialog;->firstTransactionPort:I

    #@27
    .line 1456
    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPTransaction;->getBranchId()Ljava/lang/String;

    #@2a
    move-result-object v5

    #@2b
    iput-object v5, p0, Lgov/nist/javax/sip/stack/SIPDialog;->firstTransactionId:Ljava/lang/String;

    #@2d
    .line 1457
    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPTransaction;->getMethod()Ljava/lang/String;

    #@30
    move-result-object v5

    #@31
    iput-object v5, p0, Lgov/nist/javax/sip/stack/SIPDialog;->firstTransactionMethod:Ljava/lang/String;

    #@33
    .line 1459
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->isServer()Z

    #@36
    move-result v5

    #@37
    if-eqz v5, :cond_2

    #@39
    move-object v3, p1

    #@3a
    .line 1460
    check-cast v3, Lgov/nist/javax/sip/stack/SIPServerTransaction;

    #@3c
    .line 1461
    .local v3, "st":Lgov/nist/javax/sip/stack/SIPServerTransaction;
    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getLastResponse()Lgov/nist/javax/sip/message/SIPResponse;

    #@3f
    move-result-object v1

    #@40
    .line 1462
    .local v1, "response":Lgov/nist/javax/sip/message/SIPResponse;
    if-eqz v1, :cond_0

    #@42
    invoke-virtual {v1}, Lgov/nist/javax/sip/message/SIPResponse;->getContactHeader()Lgov/nist/javax/sip/header/Contact;

    #@45
    move-result-object v4

    #@46
    :cond_0
    iput-object v4, p0, Lgov/nist/javax/sip/stack/SIPDialog;->contactHeader:Lgov/nist/javax/sip/header/Contact;

    #@48
    .line 1449
    .end local v1    # "response":Lgov/nist/javax/sip/message/SIPResponse;
    .end local v3    # "st":Lgov/nist/javax/sip/stack/SIPServerTransaction;
    :cond_1
    :goto_0
    return-void

    #@49
    :cond_2
    move-object v0, p1

    #@4a
    .line 1464
    check-cast v0, Lgov/nist/javax/sip/stack/SIPClientTransaction;

    #@4c
    .line 1465
    .local v0, "ct":Lgov/nist/javax/sip/stack/SIPClientTransaction;
    if-eqz v0, :cond_1

    #@4e
    .line 1466
    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getOriginalRequest()Lgov/nist/javax/sip/message/SIPRequest;

    #@51
    move-result-object v2

    #@52
    .line 1467
    .local v2, "sipRequest":Lgov/nist/javax/sip/message/SIPRequest;
    invoke-virtual {v2}, Lgov/nist/javax/sip/message/SIPRequest;->getContactHeader()Lgov/nist/javax/sip/header/Contact;

    #@55
    move-result-object v4

    #@56
    iput-object v4, p0, Lgov/nist/javax/sip/stack/SIPDialog;->contactHeader:Lgov/nist/javax/sip/header/Contact;

    #@58
    goto :goto_0
.end method

.method private toRetransmitFinalResponse(I)Z
    .locals 2
    .param p1, "T2"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 2213
    iget v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->retransmissionTicksLeft:I

    #@3
    add-int/lit8 v0, v0, -0x1

    #@5
    iput v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->retransmissionTicksLeft:I

    #@7
    if-nez v0, :cond_1

    #@9
    .line 2214
    iget v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->prevRetransmissionTicks:I

    #@b
    mul-int/lit8 v0, v0, 0x2

    #@d
    if-gt v0, p1, :cond_0

    #@f
    .line 2215
    iget v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->prevRetransmissionTicks:I

    #@11
    mul-int/lit8 v0, v0, 0x2

    #@13
    iput v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->retransmissionTicksLeft:I

    #@15
    .line 2218
    :goto_0
    iget v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->retransmissionTicksLeft:I

    #@17
    iput v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->prevRetransmissionTicks:I

    #@19
    .line 2219
    const/4 v0, 0x1

    #@1a
    return v0

    #@1b
    .line 2217
    :cond_0
    iget v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->prevRetransmissionTicks:I

    #@1d
    iput v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->retransmissionTicksLeft:I

    #@1f
    goto :goto_0

    #@20
    .line 2221
    :cond_1
    return v1
.end method

.method private updateRequest(Lgov/nist/javax/sip/message/SIPRequest;)V
    .locals 2
    .param p1, "sipRequest"    # Lgov/nist/javax/sip/message/SIPRequest;

    #@0
    .prologue
    .line 2356
    invoke-direct {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getRouteList()Lgov/nist/javax/sip/header/RouteList;

    #@3
    move-result-object v0

    #@4
    .line 2357
    .local v0, "rl":Lgov/nist/javax/sip/header/RouteList;
    invoke-virtual {v0}, Lgov/nist/javax/sip/header/RouteList;->size()I

    #@7
    move-result v1

    #@8
    if-lez v1, :cond_1

    #@a
    .line 2358
    invoke-virtual {p1, v0}, Lgov/nist/javax/sip/message/SIPRequest;->setHeader(Ljavax/sip/header/Header;)V

    #@d
    .line 2362
    :goto_0
    invoke-static {}, Lgov/nist/javax/sip/message/MessageFactoryImpl;->getDefaultUserAgentHeader()Ljavax/sip/header/UserAgentHeader;

    #@10
    move-result-object v1

    #@11
    if-eqz v1, :cond_0

    #@13
    .line 2363
    invoke-static {}, Lgov/nist/javax/sip/message/MessageFactoryImpl;->getDefaultUserAgentHeader()Ljavax/sip/header/UserAgentHeader;

    #@16
    move-result-object v1

    #@17
    invoke-virtual {p1, v1}, Lgov/nist/javax/sip/message/SIPRequest;->setHeader(Ljavax/sip/header/Header;)V

    #@1a
    .line 2354
    :cond_0
    return-void

    #@1b
    .line 2360
    :cond_1
    const-string/jumbo v1, "Route"

    #@1e
    invoke-virtual {p1, v1}, Lgov/nist/javax/sip/message/SIPRequest;->removeHeader(Ljava/lang/String;)V

    #@21
    goto :goto_0
.end method


# virtual methods
.method ackReceived(Lgov/nist/javax/sip/message/SIPRequest;)V
    .locals 7
    .param p1, "sipRequest"    # Lgov/nist/javax/sip/message/SIPRequest;

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 1068
    iget-boolean v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->ackSeen:Z

    #@3
    if-eqz v1, :cond_0

    #@5
    .line 1069
    return-void

    #@6
    .line 1070
    :cond_0
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getInviteTransaction()Lgov/nist/javax/sip/stack/SIPServerTransaction;

    #@9
    move-result-object v0

    #@a
    .line 1071
    .local v0, "tr":Lgov/nist/javax/sip/stack/SIPServerTransaction;
    if-eqz v0, :cond_5

    #@c
    .line 1072
    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getCSeq()J

    #@f
    move-result-wide v2

    #@10
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPRequest;->getCSeq()Ljavax/sip/header/CSeqHeader;

    #@13
    move-result-object v1

    #@14
    invoke-interface {v1}, Ljavax/sip/header/CSeqHeader;->getSeqNumber()J

    #@17
    move-result-wide v4

    #@18
    cmp-long v1, v2, v4

    #@1a
    if-nez v1, :cond_5

    #@1c
    .line 1073
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->acquireTimerTaskSem()V

    #@1f
    .line 1075
    :try_start_0
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->timerTask:Lgov/nist/javax/sip/stack/SIPDialog$DialogTimerTask;

    #@21
    if-eqz v1, :cond_1

    #@23
    .line 1076
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->timerTask:Lgov/nist/javax/sip/stack/SIPDialog$DialogTimerTask;

    #@25
    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPDialog$DialogTimerTask;->cancel()Z

    #@28
    .line 1077
    const/4 v1, 0x0

    #@29
    iput-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->timerTask:Lgov/nist/javax/sip/stack/SIPDialog$DialogTimerTask;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2b
    .line 1080
    :cond_1
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->releaseTimerTaskSem()V

    #@2e
    .line 1082
    const/4 v1, 0x1

    #@2f
    iput-boolean v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->ackSeen:Z

    #@31
    .line 1083
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->dialogDeleteTask:Lgov/nist/javax/sip/stack/SIPDialog$DialogDeleteTask;

    #@33
    if-eqz v1, :cond_2

    #@35
    .line 1084
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->dialogDeleteTask:Lgov/nist/javax/sip/stack/SIPDialog$DialogDeleteTask;

    #@37
    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPDialog$DialogDeleteTask;->cancel()Z

    #@3a
    .line 1085
    iput-object v6, p0, Lgov/nist/javax/sip/stack/SIPDialog;->dialogDeleteTask:Lgov/nist/javax/sip/stack/SIPDialog$DialogDeleteTask;

    #@3c
    .line 1087
    :cond_2
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/stack/SIPDialog;->setLastAckReceived(Lgov/nist/javax/sip/message/SIPRequest;)V

    #@3f
    .line 1088
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@41
    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    #@44
    move-result v1

    #@45
    if-eqz v1, :cond_3

    #@47
    .line 1089
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@49
    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@4c
    move-result-object v1

    #@4d
    .line 1090
    new-instance v2, Ljava/lang/StringBuilder;

    #@4f
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@52
    const-string/jumbo v3, "ackReceived for "

    #@55
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@58
    move-result-object v2

    #@59
    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransaction;->getMethod()Ljava/lang/String;

    #@5c
    move-result-object v3

    #@5d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@60
    move-result-object v2

    #@61
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@64
    move-result-object v2

    #@65
    .line 1089
    invoke-interface {v1, v2}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@68
    .line 1091
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@6a
    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@6d
    move-result-object v1

    #@6e
    invoke-interface {v1}, Lgov/nist/core/StackLogger;->getLineCount()I

    #@71
    move-result v1

    #@72
    iput v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->ackLine:I

    #@74
    .line 1092
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->printDebugInfo()V

    #@77
    .line 1094
    :cond_3
    iget-boolean v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->isBackToBackUserAgent:Z

    #@79
    if-eqz v1, :cond_4

    #@7b
    .line 1095
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->releaseAckSem()V

    #@7e
    .line 1097
    :cond_4
    sget v1, Lgov/nist/javax/sip/stack/SIPDialog;->CONFIRMED_STATE:I

    #@80
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/stack/SIPDialog;->setState(I)V

    #@83
    .line 1065
    :cond_5
    return-void

    #@84
    .line 1079
    :catchall_0
    move-exception v1

    #@85
    .line 1080
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->releaseTimerTaskSem()V

    #@88
    .line 1079
    throw v1
.end method

.method public acquireTimerTaskSem()V
    .locals 6

    #@0
    .prologue
    .line 3327
    const/4 v0, 0x0

    #@1
    .line 3329
    .local v0, "acquired":Z
    :try_start_0
    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPDialog;->timerTaskLock:Ljava/util/concurrent/Semaphore;

    #@3
    const-wide/16 v4, 0xa

    #@5
    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    #@7
    invoke-virtual {v2, v4, v5, v3}, Ljava/util/concurrent/Semaphore;->tryAcquire(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    #@a
    move-result v0

    #@b
    .line 3333
    .end local v0    # "acquired":Z
    :goto_0
    if-nez v0, :cond_0

    #@d
    .line 3334
    new-instance v2, Ljava/lang/IllegalStateException;

    #@f
    const-string/jumbo v3, "Impossible to acquire the dialog timer task lock"

    #@12
    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@15
    throw v2

    #@16
    .line 3330
    .restart local v0    # "acquired":Z
    :catch_0
    move-exception v1

    #@17
    .line 3331
    .local v1, "ex":Ljava/lang/InterruptedException;
    const/4 v0, 0x0

    #@18
    goto :goto_0

    #@19
    .line 3326
    .end local v0    # "acquired":Z
    .end local v1    # "ex":Ljava/lang/InterruptedException;
    :cond_0
    return-void
.end method

.method public addEventListener(Lgov/nist/javax/sip/stack/SIPDialogEventListener;)V
    .locals 1
    .param p1, "newListener"    # Lgov/nist/javax/sip/stack/SIPDialogEventListener;

    #@0
    .prologue
    .line 1124
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->eventListeners:Ljava/util/Set;

    #@2
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@5
    .line 1123
    return-void
.end method

.method public declared-synchronized addRoute(Lgov/nist/javax/sip/message/SIPRequest;)V
    .locals 5
    .param p1, "sipRequest"    # Lgov/nist/javax/sip/message/SIPRequest;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 1326
    :try_start_0
    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@3
    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    #@6
    move-result v2

    #@7
    if-eqz v2, :cond_0

    #@9
    .line 1327
    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@b
    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@e
    move-result-object v2

    #@f
    .line 1328
    new-instance v3, Ljava/lang/StringBuilder;

    #@11
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@14
    const-string/jumbo v4, "setContact: dialogState: "

    #@17
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v3

    #@1b
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v3

    #@1f
    const-string/jumbo v4, "state = "

    #@22
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v3

    #@26
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getState()Ljavax/sip/DialogState;

    #@29
    move-result-object v4

    #@2a
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v3

    #@2e
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@31
    move-result-object v3

    #@32
    .line 1327
    invoke-interface {v2, v3}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@35
    .line 1331
    :cond_0
    iget v2, p0, Lgov/nist/javax/sip/stack/SIPDialog;->dialogState:I

    #@37
    sget v3, Lgov/nist/javax/sip/stack/SIPDialog;->CONFIRMED_STATE:I

    #@39
    if-ne v2, v3, :cond_1

    #@3b
    .line 1332
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    #@3e
    move-result-object v2

    #@3f
    invoke-static {v2}, Lgov/nist/javax/sip/message/SIPRequest;->isTargetRefresh(Ljava/lang/String;)Z

    #@42
    move-result v2

    #@43
    .line 1331
    if-eqz v2, :cond_1

    #@45
    .line 1333
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/stack/SIPDialog;->doTargetRefresh(Lgov/nist/javax/sip/message/SIPMessage;)V

    #@48
    .line 1335
    :cond_1
    iget v2, p0, Lgov/nist/javax/sip/stack/SIPDialog;->dialogState:I

    #@4a
    sget v3, Lgov/nist/javax/sip/stack/SIPDialog;->CONFIRMED_STATE:I

    #@4c
    if-eq v2, v3, :cond_2

    #@4e
    iget v2, p0, Lgov/nist/javax/sip/stack/SIPDialog;->dialogState:I

    #@50
    sget v3, Lgov/nist/javax/sip/stack/SIPDialog;->TERMINATED_STATE:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@52
    if-ne v2, v3, :cond_3

    #@54
    :cond_2
    monitor-exit p0

    #@55
    .line 1336
    return-void

    #@56
    .line 1340
    :cond_3
    :try_start_1
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPRequest;->getToTag()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@59
    move-result-object v2

    #@5a
    if-eqz v2, :cond_4

    #@5c
    monitor-exit p0

    #@5d
    return-void

    #@5e
    .line 1343
    :cond_4
    :try_start_2
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPRequest;->getRecordRouteHeaders()Lgov/nist/javax/sip/header/RecordRouteList;

    #@61
    move-result-object v1

    #@62
    .line 1346
    .local v1, "rrlist":Lgov/nist/javax/sip/header/RecordRouteList;
    if-eqz v1, :cond_6

    #@64
    .line 1347
    invoke-direct {p0, v1}, Lgov/nist/javax/sip/stack/SIPDialog;->addRoute(Lgov/nist/javax/sip/header/RecordRouteList;)V

    #@67
    .line 1355
    :goto_0
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPRequest;->getContactHeaders()Lgov/nist/javax/sip/header/ContactList;

    #@6a
    move-result-object v0

    #@6b
    .line 1356
    .local v0, "contactList":Lgov/nist/javax/sip/header/ContactList;
    if-eqz v0, :cond_5

    #@6d
    .line 1357
    invoke-virtual {v0}, Lgov/nist/javax/sip/header/ContactList;->getFirst()Ljavax/sip/header/Header;

    #@70
    move-result-object v2

    #@71
    check-cast v2, Ljavax/sip/header/ContactHeader;

    #@73
    invoke-virtual {p0, v2}, Lgov/nist/javax/sip/stack/SIPDialog;->setRemoteTarget(Ljavax/sip/header/ContactHeader;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@76
    :cond_5
    monitor-exit p0

    #@77
    .line 1325
    return-void

    #@78
    .line 1350
    .end local v0    # "contactList":Lgov/nist/javax/sip/header/ContactList;
    :cond_6
    :try_start_3
    new-instance v2, Lgov/nist/javax/sip/header/RouteList;

    #@7a
    invoke-direct {v2}, Lgov/nist/javax/sip/header/RouteList;-><init>()V

    #@7d
    iput-object v2, p0, Lgov/nist/javax/sip/stack/SIPDialog;->routeList:Lgov/nist/javax/sip/header/RouteList;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@7f
    goto :goto_0

    #@80
    .end local v1    # "rrlist":Lgov/nist/javax/sip/header/RecordRouteList;
    :catchall_0
    move-exception v2

    #@81
    monitor-exit p0

    #@82
    throw v2
.end method

.method public addTransaction(Lgov/nist/javax/sip/stack/SIPTransaction;)V
    .locals 4
    .param p1, "transaction"    # Lgov/nist/javax/sip/stack/SIPTransaction;

    #@0
    .prologue
    .line 1478
    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPTransaction;->getOriginalRequest()Lgov/nist/javax/sip/message/SIPRequest;

    #@3
    move-result-object v0

    #@4
    .line 1481
    .local v0, "sipRequest":Lgov/nist/javax/sip/message/SIPRequest;
    iget-boolean v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->firstTransactionSeen:Z

    #@6
    if-eqz v1, :cond_0

    #@8
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->firstTransactionId:Ljava/lang/String;

    #@a
    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPTransaction;->getBranchId()Ljava/lang/String;

    #@d
    move-result-object v2

    #@e
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@11
    move-result v1

    #@12
    if-eqz v1, :cond_7

    #@14
    .line 1486
    :cond_0
    :goto_0
    iget-boolean v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->firstTransactionSeen:Z

    #@16
    if-nez v1, :cond_9

    #@18
    .line 1490
    invoke-static {p0, p1}, Lgov/nist/javax/sip/stack/SIPDialog;->storeFirstTransactionInfo(Lgov/nist/javax/sip/stack/SIPDialog;Lgov/nist/javax/sip/stack/SIPTransaction;)V

    #@1b
    .line 1491
    invoke-virtual {v0}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    #@1e
    move-result-object v1

    #@1f
    const-string/jumbo v2, "SUBSCRIBE"

    #@22
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@25
    move-result v1

    #@26
    if-eqz v1, :cond_1

    #@28
    .line 1492
    const-string/jumbo v1, "Event"

    #@2b
    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/message/SIPRequest;->getHeader(Ljava/lang/String;)Ljavax/sip/header/Header;

    #@2e
    move-result-object v1

    #@2f
    check-cast v1, Ljavax/sip/header/EventHeader;

    #@31
    iput-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->eventHeader:Ljavax/sip/header/EventHeader;

    #@33
    .line 1494
    :cond_1
    invoke-direct {p0, v0}, Lgov/nist/javax/sip/stack/SIPDialog;->setLocalParty(Lgov/nist/javax/sip/message/SIPMessage;)V

    #@36
    .line 1495
    invoke-direct {p0, v0}, Lgov/nist/javax/sip/stack/SIPDialog;->setRemoteParty(Lgov/nist/javax/sip/message/SIPMessage;)V

    #@39
    .line 1496
    invoke-direct {p0, v0}, Lgov/nist/javax/sip/stack/SIPDialog;->setCallId(Lgov/nist/javax/sip/message/SIPRequest;)V

    #@3c
    .line 1497
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->originalRequest:Lgov/nist/javax/sip/message/SIPRequest;

    #@3e
    if-nez v1, :cond_2

    #@40
    .line 1498
    iput-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->originalRequest:Lgov/nist/javax/sip/message/SIPRequest;

    #@42
    .line 1500
    :cond_2
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->method:Ljava/lang/String;

    #@44
    if-nez v1, :cond_3

    #@46
    .line 1501
    invoke-virtual {v0}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    #@49
    move-result-object v1

    #@4a
    iput-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->method:Ljava/lang/String;

    #@4c
    .line 1504
    :cond_3
    instance-of v1, p1, Lgov/nist/javax/sip/stack/SIPServerTransaction;

    #@4e
    if-eqz v1, :cond_8

    #@50
    .line 1505
    invoke-virtual {v0}, Lgov/nist/javax/sip/message/SIPRequest;->getFrom()Ljavax/sip/header/FromHeader;

    #@53
    move-result-object v1

    #@54
    invoke-interface {v1}, Ljavax/sip/header/FromHeader;->getTag()Ljava/lang/String;

    #@57
    move-result-object v1

    #@58
    iput-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->hisTag:Ljava/lang/String;

    #@5a
    .line 1531
    :cond_4
    :goto_1
    instance-of v1, p1, Lgov/nist/javax/sip/stack/SIPServerTransaction;

    #@5c
    if-eqz v1, :cond_5

    #@5e
    .line 1532
    invoke-virtual {v0}, Lgov/nist/javax/sip/message/SIPRequest;->getCSeq()Ljavax/sip/header/CSeqHeader;

    #@61
    move-result-object v1

    #@62
    invoke-interface {v1}, Ljavax/sip/header/CSeqHeader;->getSeqNumber()J

    #@65
    move-result-wide v2

    #@66
    invoke-virtual {p0, v2, v3}, Lgov/nist/javax/sip/stack/SIPDialog;->setRemoteSequenceNumber(J)V

    #@69
    .line 1539
    :cond_5
    iput-object p1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->lastTransaction:Lgov/nist/javax/sip/stack/SIPTransaction;

    #@6b
    .line 1543
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@6d
    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    #@70
    move-result v1

    #@71
    if-eqz v1, :cond_6

    #@73
    .line 1544
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@75
    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@78
    move-result-object v1

    #@79
    .line 1545
    new-instance v2, Ljava/lang/StringBuilder;

    #@7b
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@7e
    const-string/jumbo v3, "Transaction Added "

    #@81
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@84
    move-result-object v2

    #@85
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@88
    move-result-object v2

    #@89
    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPDialog;->myTag:Ljava/lang/String;

    #@8b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8e
    move-result-object v2

    #@8f
    const-string/jumbo v3, "/"

    #@92
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@95
    move-result-object v2

    #@96
    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPDialog;->hisTag:Ljava/lang/String;

    #@98
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9b
    move-result-object v2

    #@9c
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9f
    move-result-object v2

    #@a0
    .line 1544
    invoke-interface {v1, v2}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@a3
    .line 1546
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@a5
    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@a8
    move-result-object v1

    #@a9
    .line 1547
    new-instance v2, Ljava/lang/StringBuilder;

    #@ab
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@ae
    const-string/jumbo v3, "TID = "

    #@b1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b4
    move-result-object v2

    #@b5
    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPTransaction;->getTransactionId()Ljava/lang/String;

    #@b8
    move-result-object v3

    #@b9
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bc
    move-result-object v2

    #@bd
    const-string/jumbo v3, "/"

    #@c0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c3
    move-result-object v2

    #@c4
    .line 1548
    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPTransaction;->isServerTransaction()Z

    #@c7
    move-result v3

    #@c8
    .line 1547
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@cb
    move-result-object v2

    #@cc
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@cf
    move-result-object v2

    #@d0
    .line 1546
    invoke-interface {v1, v2}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@d3
    .line 1549
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@d5
    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@d8
    move-result-object v1

    #@d9
    invoke-interface {v1}, Lgov/nist/core/StackLogger;->logStackTrace()V

    #@dc
    .line 1476
    :cond_6
    return-void

    #@dd
    .line 1482
    :cond_7
    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPTransaction;->getMethod()Ljava/lang/String;

    #@e0
    move-result-object v1

    #@e1
    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPDialog;->firstTransactionMethod:Ljava/lang/String;

    #@e3
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@e6
    move-result v1

    #@e7
    .line 1481
    if-eqz v1, :cond_0

    #@e9
    .line 1483
    const/4 v1, 0x1

    #@ea
    iput-boolean v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->reInviteFlag:Z

    #@ec
    goto/16 :goto_0

    #@ee
    .line 1508
    :cond_8
    invoke-virtual {v0}, Lgov/nist/javax/sip/message/SIPRequest;->getCSeq()Ljavax/sip/header/CSeqHeader;

    #@f1
    move-result-object v1

    #@f2
    invoke-interface {v1}, Ljavax/sip/header/CSeqHeader;->getSeqNumber()J

    #@f5
    move-result-wide v2

    #@f6
    invoke-direct {p0, v2, v3}, Lgov/nist/javax/sip/stack/SIPDialog;->setLocalSequenceNumber(J)V

    #@f9
    .line 1509
    iget-wide v2, p0, Lgov/nist/javax/sip/stack/SIPDialog;->localSequenceNumber:J

    #@fb
    iput-wide v2, p0, Lgov/nist/javax/sip/stack/SIPDialog;->originalLocalSequenceNumber:J

    #@fd
    .line 1510
    invoke-virtual {v0}, Lgov/nist/javax/sip/message/SIPRequest;->getFrom()Ljavax/sip/header/FromHeader;

    #@100
    move-result-object v1

    #@101
    invoke-interface {v1}, Ljavax/sip/header/FromHeader;->getTag()Ljava/lang/String;

    #@104
    move-result-object v1

    #@105
    iput-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->myTag:Ljava/lang/String;

    #@107
    .line 1511
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->myTag:Ljava/lang/String;

    #@109
    if-nez v1, :cond_4

    #@10b
    .line 1512
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@10d
    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    #@110
    move-result v1

    #@111
    if-eqz v1, :cond_4

    #@113
    .line 1513
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@115
    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@118
    move-result-object v1

    #@119
    .line 1514
    const-string/jumbo v2, "The request\'s From header is missing the required Tag parameter."

    #@11c
    .line 1513
    invoke-interface {v1, v2}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;)V

    #@11f
    goto/16 :goto_1

    #@121
    .line 1516
    :cond_9
    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPTransaction;->getMethod()Ljava/lang/String;

    #@124
    move-result-object v1

    #@125
    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPDialog;->firstTransactionMethod:Ljava/lang/String;

    #@127
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@12a
    move-result v1

    #@12b
    if-eqz v1, :cond_4

    #@12d
    .line 1517
    iget-boolean v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->firstTransactionIsServerTransaction:Z

    #@12f
    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPTransaction;->isServerTransaction()Z

    #@132
    move-result v2

    #@133
    if-eq v1, v2, :cond_4

    #@135
    .line 1522
    invoke-static {p0, p1}, Lgov/nist/javax/sip/stack/SIPDialog;->storeFirstTransactionInfo(Lgov/nist/javax/sip/stack/SIPDialog;Lgov/nist/javax/sip/stack/SIPTransaction;)V

    #@138
    .line 1524
    invoke-direct {p0, v0}, Lgov/nist/javax/sip/stack/SIPDialog;->setLocalParty(Lgov/nist/javax/sip/message/SIPMessage;)V

    #@13b
    .line 1525
    invoke-direct {p0, v0}, Lgov/nist/javax/sip/stack/SIPDialog;->setRemoteParty(Lgov/nist/javax/sip/message/SIPMessage;)V

    #@13e
    .line 1526
    invoke-direct {p0, v0}, Lgov/nist/javax/sip/stack/SIPDialog;->setCallId(Lgov/nist/javax/sip/message/SIPRequest;)V

    #@141
    .line 1527
    iput-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->originalRequest:Lgov/nist/javax/sip/message/SIPRequest;

    #@143
    .line 1528
    invoke-virtual {v0}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    #@146
    move-result-object v1

    #@147
    iput-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->method:Ljava/lang/String;

    #@149
    goto/16 :goto_1
.end method

.method public createAck(J)Ljavax/sip/message/Request;
    .locals 17
    .param p1, "cseqno"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/InvalidArgumentException;,
            Ljavax/sip/SipException;
        }
    .end annotation

    #@0
    .prologue
    .line 2389
    move-object/from16 v0, p0

    #@2
    iget-object v14, v0, Lgov/nist/javax/sip/stack/SIPDialog;->method:Ljava/lang/String;

    #@4
    const-string/jumbo v15, "INVITE"

    #@7
    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@a
    move-result v14

    #@b
    if-nez v14, :cond_0

    #@d
    .line 2390
    new-instance v14, Ljavax/sip/SipException;

    #@f
    new-instance v15, Ljava/lang/StringBuilder;

    #@11
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    #@14
    const-string/jumbo v16, "Dialog was not created with an INVITE"

    #@17
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v15

    #@1b
    move-object/from16 v0, p0

    #@1d
    iget-object v0, v0, Lgov/nist/javax/sip/stack/SIPDialog;->method:Ljava/lang/String;

    #@1f
    move-object/from16 v16, v0

    #@21
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v15

    #@25
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@28
    move-result-object v15

    #@29
    invoke-direct {v14, v15}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    #@2c
    throw v14

    #@2d
    .line 2392
    :cond_0
    const-wide/16 v14, 0x0

    #@2f
    cmp-long v14, p1, v14

    #@31
    if-gtz v14, :cond_1

    #@33
    .line 2393
    new-instance v14, Ljavax/sip/InvalidArgumentException;

    #@35
    const-string/jumbo v15, "bad cseq <= 0 "

    #@38
    invoke-direct {v14, v15}, Ljavax/sip/InvalidArgumentException;-><init>(Ljava/lang/String;)V

    #@3b
    throw v14

    #@3c
    .line 2394
    :cond_1
    const-wide v14, 0xffffffffL

    #@41
    cmp-long v14, p1, v14

    #@43
    if-lez v14, :cond_2

    #@45
    .line 2395
    new-instance v14, Ljavax/sip/InvalidArgumentException;

    #@47
    const-string/jumbo v15, "bad cseq > 4294967295"

    #@4a
    invoke-direct {v14, v15}, Ljavax/sip/InvalidArgumentException;-><init>(Ljava/lang/String;)V

    #@4d
    throw v14

    #@4e
    .line 2397
    :cond_2
    move-object/from16 v0, p0

    #@50
    iget-object v14, v0, Lgov/nist/javax/sip/stack/SIPDialog;->remoteTarget:Ljavax/sip/address/Address;

    #@52
    if-nez v14, :cond_3

    #@54
    .line 2398
    new-instance v14, Ljavax/sip/SipException;

    #@56
    const-string/jumbo v15, "Cannot create ACK - no remote Target!"

    #@59
    invoke-direct {v14, v15}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    #@5c
    throw v14

    #@5d
    .line 2401
    :cond_3
    move-object/from16 v0, p0

    #@5f
    iget-object v14, v0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@61
    invoke-virtual {v14}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    #@64
    move-result v14

    #@65
    if-eqz v14, :cond_4

    #@67
    .line 2402
    move-object/from16 v0, p0

    #@69
    iget-object v14, v0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@6b
    invoke-virtual {v14}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@6e
    move-result-object v14

    #@6f
    new-instance v15, Ljava/lang/StringBuilder;

    #@71
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    #@74
    const-string/jumbo v16, "createAck "

    #@77
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7a
    move-result-object v15

    #@7b
    move-object/from16 v0, p0

    #@7d
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@80
    move-result-object v15

    #@81
    const-string/jumbo v16, " cseqno "

    #@84
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@87
    move-result-object v15

    #@88
    move-wide/from16 v0, p1

    #@8a
    invoke-virtual {v15, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@8d
    move-result-object v15

    #@8e
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@91
    move-result-object v15

    #@92
    invoke-interface {v14, v15}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@95
    .line 2407
    :cond_4
    move-object/from16 v0, p0

    #@97
    iget-wide v14, v0, Lgov/nist/javax/sip/stack/SIPDialog;->lastInviteOkReceived:J

    #@99
    cmp-long v14, v14, p1

    #@9b
    if-gez v14, :cond_6

    #@9d
    .line 2408
    move-object/from16 v0, p0

    #@9f
    iget-object v14, v0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@a1
    invoke-virtual {v14}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    #@a4
    move-result v14

    #@a5
    if-eqz v14, :cond_5

    #@a7
    .line 2409
    move-object/from16 v0, p0

    #@a9
    iget-object v14, v0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@ab
    invoke-virtual {v14}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@ae
    move-result-object v14

    #@af
    .line 2410
    new-instance v15, Ljava/lang/StringBuilder;

    #@b1
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    #@b4
    const-string/jumbo v16, "WARNING : Attempt to crete ACK without OK "

    #@b7
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ba
    move-result-object v15

    #@bb
    move-object/from16 v0, p0

    #@bd
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@c0
    move-result-object v15

    #@c1
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c4
    move-result-object v15

    #@c5
    .line 2409
    invoke-interface {v14, v15}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@c8
    .line 2411
    move-object/from16 v0, p0

    #@ca
    iget-object v14, v0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@cc
    invoke-virtual {v14}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@cf
    move-result-object v14

    #@d0
    new-instance v15, Ljava/lang/StringBuilder;

    #@d2
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    #@d5
    const-string/jumbo v16, "LAST RESPONSE = "

    #@d8
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@db
    move-result-object v15

    #@dc
    move-object/from16 v0, p0

    #@de
    iget-object v0, v0, Lgov/nist/javax/sip/stack/SIPDialog;->lastResponse:Lgov/nist/javax/sip/message/SIPResponse;

    #@e0
    move-object/from16 v16, v0

    #@e2
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@e5
    move-result-object v15

    #@e6
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@e9
    move-result-object v15

    #@ea
    invoke-interface {v14, v15}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@ed
    .line 2413
    :cond_5
    new-instance v14, Ljavax/sip/SipException;

    #@ef
    const-string/jumbo v15, "Dialog not yet established -- no OK response!"

    #@f2
    invoke-direct {v14, v15}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    #@f5
    throw v14

    #@f6
    .line 2421
    :cond_6
    const/4 v11, 0x0

    #@f7
    .line 2423
    .local v11, "uri4transport":Ljavax/sip/address/SipURI;
    :try_start_0
    move-object/from16 v0, p0

    #@f9
    iget-object v14, v0, Lgov/nist/javax/sip/stack/SIPDialog;->routeList:Lgov/nist/javax/sip/header/RouteList;

    #@fb
    if-eqz v14, :cond_7

    #@fd
    move-object/from16 v0, p0

    #@ff
    iget-object v14, v0, Lgov/nist/javax/sip/stack/SIPDialog;->routeList:Lgov/nist/javax/sip/header/RouteList;

    #@101
    invoke-virtual {v14}, Lgov/nist/javax/sip/header/RouteList;->isEmpty()Z

    #@104
    move-result v14

    #@105
    if-eqz v14, :cond_a

    #@107
    .line 2427
    :cond_7
    move-object/from16 v0, p0

    #@109
    iget-object v14, v0, Lgov/nist/javax/sip/stack/SIPDialog;->remoteTarget:Ljavax/sip/address/Address;

    #@10b
    invoke-interface {v14}, Ljavax/sip/address/Address;->getURI()Ljavax/sip/address/URI;

    #@10e
    move-result-object v14

    #@10f
    move-object v0, v14

    #@110
    check-cast v0, Ljavax/sip/address/SipURI;

    #@112
    move-object v11, v0

    #@113
    .line 2430
    .local v11, "uri4transport":Ljavax/sip/address/SipURI;
    :goto_0
    invoke-interface {v11}, Ljavax/sip/address/SipURI;->getTransportParam()Ljava/lang/String;

    #@116
    move-result-object v10

    #@117
    .line 2431
    .local v10, "transport":Ljava/lang/String;
    if-nez v10, :cond_8

    #@119
    .line 2433
    invoke-interface {v11}, Ljavax/sip/address/SipURI;->isSecure()Z

    #@11c
    move-result v14

    #@11d
    if-eqz v14, :cond_b

    #@11f
    const-string/jumbo v10, "TLS"

    #@122
    .line 2435
    :cond_8
    :goto_1
    move-object/from16 v0, p0

    #@124
    iget-object v14, v0, Lgov/nist/javax/sip/stack/SIPDialog;->sipProvider:Lgov/nist/javax/sip/SipProviderImpl;

    #@126
    invoke-virtual {v14, v10}, Lgov/nist/javax/sip/SipProviderImpl;->getListeningPoint(Ljava/lang/String;)Ljavax/sip/ListeningPoint;

    #@129
    move-result-object v5

    #@12a
    check-cast v5, Lgov/nist/javax/sip/ListeningPointImpl;

    #@12c
    .line 2436
    .local v5, "lp":Lgov/nist/javax/sip/ListeningPointImpl;
    if-nez v5, :cond_c

    #@12e
    .line 2437
    move-object/from16 v0, p0

    #@130
    iget-object v14, v0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@132
    invoke-virtual {v14}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    #@135
    move-result v14

    #@136
    if-eqz v14, :cond_9

    #@138
    .line 2438
    move-object/from16 v0, p0

    #@13a
    iget-object v14, v0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@13c
    invoke-virtual {v14}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@13f
    move-result-object v14

    #@140
    .line 2439
    new-instance v15, Ljava/lang/StringBuilder;

    #@142
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    #@145
    const-string/jumbo v16, "remoteTargetURI "

    #@148
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14b
    move-result-object v15

    #@14c
    move-object/from16 v0, p0

    #@14e
    iget-object v0, v0, Lgov/nist/javax/sip/stack/SIPDialog;->remoteTarget:Ljavax/sip/address/Address;

    #@150
    move-object/from16 v16, v0

    #@152
    invoke-interface/range {v16 .. v16}, Ljavax/sip/address/Address;->getURI()Ljavax/sip/address/URI;

    #@155
    move-result-object v16

    #@156
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@159
    move-result-object v15

    #@15a
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@15d
    move-result-object v15

    #@15e
    .line 2438
    invoke-interface {v14, v15}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;)V

    #@161
    .line 2440
    move-object/from16 v0, p0

    #@163
    iget-object v14, v0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@165
    invoke-virtual {v14}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@168
    move-result-object v14

    #@169
    new-instance v15, Ljava/lang/StringBuilder;

    #@16b
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    #@16e
    const-string/jumbo v16, "uri4transport = "

    #@171
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@174
    move-result-object v15

    #@175
    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@178
    move-result-object v15

    #@179
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@17c
    move-result-object v15

    #@17d
    invoke-interface {v14, v15}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;)V

    #@180
    .line 2441
    move-object/from16 v0, p0

    #@182
    iget-object v14, v0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@184
    invoke-virtual {v14}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@187
    move-result-object v14

    #@188
    new-instance v15, Ljava/lang/StringBuilder;

    #@18a
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    #@18d
    const-string/jumbo v16, "No LP found for transport="

    #@190
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@193
    move-result-object v15

    #@194
    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@197
    move-result-object v15

    #@198
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@19b
    move-result-object v15

    #@19c
    invoke-interface {v14, v15}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;)V

    #@19f
    .line 2443
    :cond_9
    new-instance v14, Ljavax/sip/SipException;

    #@1a1
    .line 2444
    new-instance v15, Ljava/lang/StringBuilder;

    #@1a3
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    #@1a6
    const-string/jumbo v16, "Cannot create ACK - no ListeningPoint for transport towards next hop found:"

    #@1a9
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1ac
    move-result-object v15

    #@1ad
    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b0
    move-result-object v15

    #@1b1
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b4
    move-result-object v15

    #@1b5
    .line 2443
    invoke-direct {v14, v15}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    #@1b8
    throw v14
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@1b9
    .line 2494
    .end local v5    # "lp":Lgov/nist/javax/sip/ListeningPointImpl;
    .end local v10    # "transport":Ljava/lang/String;
    .end local v11    # "uri4transport":Ljavax/sip/address/SipURI;
    :catch_0
    move-exception v3

    #@1ba
    .line 2495
    .local v3, "ex":Ljava/lang/Exception;
    invoke-static {v3}, Lgov/nist/core/InternalErrorHandler;->handleException(Ljava/lang/Exception;)V

    #@1bd
    .line 2496
    new-instance v14, Ljavax/sip/SipException;

    #@1bf
    const-string/jumbo v15, "unexpected exception "

    #@1c2
    invoke-direct {v14, v15, v3}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@1c5
    throw v14

    #@1c6
    .line 2424
    .end local v3    # "ex":Ljava/lang/Exception;
    .local v11, "uri4transport":Ljavax/sip/address/SipURI;
    :cond_a
    :try_start_1
    move-object/from16 v0, p0

    #@1c8
    iget-object v14, v0, Lgov/nist/javax/sip/stack/SIPDialog;->routeList:Lgov/nist/javax/sip/header/RouteList;

    #@1ca
    invoke-virtual {v14}, Lgov/nist/javax/sip/header/RouteList;->getFirst()Ljavax/sip/header/Header;

    #@1cd
    move-result-object v7

    #@1ce
    check-cast v7, Lgov/nist/javax/sip/header/Route;

    #@1d0
    .line 2425
    .local v7, "r":Lgov/nist/javax/sip/header/Route;
    invoke-virtual {v7}, Lgov/nist/javax/sip/header/Route;->getAddress()Ljavax/sip/address/Address;

    #@1d3
    move-result-object v14

    #@1d4
    invoke-interface {v14}, Ljavax/sip/address/Address;->getURI()Ljavax/sip/address/URI;

    #@1d7
    move-result-object v14

    #@1d8
    move-object v0, v14

    #@1d9
    check-cast v0, Ljavax/sip/address/SipURI;

    #@1db
    move-object v11, v0

    #@1dc
    .local v11, "uri4transport":Ljavax/sip/address/SipURI;
    goto/16 :goto_0

    #@1de
    .line 2433
    .end local v7    # "r":Lgov/nist/javax/sip/header/Route;
    .restart local v10    # "transport":Ljava/lang/String;
    :cond_b
    const-string/jumbo v10, "UDP"

    #@1e1
    goto/16 :goto_1

    #@1e3
    .line 2447
    .restart local v5    # "lp":Lgov/nist/javax/sip/ListeningPointImpl;
    :cond_c
    new-instance v8, Lgov/nist/javax/sip/message/SIPRequest;

    #@1e5
    invoke-direct {v8}, Lgov/nist/javax/sip/message/SIPRequest;-><init>()V

    #@1e8
    .line 2448
    .local v8, "sipRequest":Lgov/nist/javax/sip/message/SIPRequest;
    const-string/jumbo v14, "ACK"

    #@1eb
    invoke-virtual {v8, v14}, Lgov/nist/javax/sip/message/SIPRequest;->setMethod(Ljava/lang/String;)V

    #@1ee
    .line 2449
    invoke-virtual/range {p0 .. p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getRemoteTarget()Ljavax/sip/address/Address;

    #@1f1
    move-result-object v14

    #@1f2
    invoke-interface {v14}, Ljavax/sip/address/Address;->getURI()Ljavax/sip/address/URI;

    #@1f5
    move-result-object v14

    #@1f6
    invoke-interface {v14}, Ljavax/sip/address/URI;->clone()Ljava/lang/Object;

    #@1f9
    move-result-object v14

    #@1fa
    check-cast v14, Lgov/nist/javax/sip/address/SipUri;

    #@1fc
    invoke-virtual {v8, v14}, Lgov/nist/javax/sip/message/SIPRequest;->setRequestURI(Ljavax/sip/address/URI;)V

    #@1ff
    .line 2450
    move-object/from16 v0, p0

    #@201
    iget-object v14, v0, Lgov/nist/javax/sip/stack/SIPDialog;->callIdHeader:Ljavax/sip/header/CallIdHeader;

    #@203
    invoke-virtual {v8, v14}, Lgov/nist/javax/sip/message/SIPRequest;->setCallId(Ljavax/sip/header/CallIdHeader;)V

    #@206
    .line 2451
    new-instance v14, Lgov/nist/javax/sip/header/CSeq;

    #@208
    const-string/jumbo v15, "ACK"

    #@20b
    move-wide/from16 v0, p1

    #@20d
    invoke-direct {v14, v0, v1, v15}, Lgov/nist/javax/sip/header/CSeq;-><init>(JLjava/lang/String;)V

    #@210
    invoke-virtual {v8, v14}, Lgov/nist/javax/sip/message/SIPRequest;->setCSeq(Ljavax/sip/header/CSeqHeader;)V

    #@213
    .line 2452
    new-instance v13, Ljava/util/ArrayList;

    #@215
    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    #@218
    .line 2459
    .local v13, "vias":Ljava/util/List;, "Ljava/util/List<Lgov/nist/javax/sip/header/Via;>;"
    move-object/from16 v0, p0

    #@21a
    iget-object v14, v0, Lgov/nist/javax/sip/stack/SIPDialog;->lastResponse:Lgov/nist/javax/sip/message/SIPResponse;

    #@21c
    invoke-virtual {v14}, Lgov/nist/javax/sip/message/SIPResponse;->getTopmostVia()Lgov/nist/javax/sip/header/Via;

    #@21f
    move-result-object v12

    #@220
    .line 2460
    .local v12, "via":Lgov/nist/javax/sip/header/Via;
    invoke-virtual {v12}, Lgov/nist/javax/sip/header/Via;->removeParameters()V

    #@223
    .line 2461
    move-object/from16 v0, p0

    #@225
    iget-object v14, v0, Lgov/nist/javax/sip/stack/SIPDialog;->originalRequest:Lgov/nist/javax/sip/message/SIPRequest;

    #@227
    if-eqz v14, :cond_d

    #@229
    move-object/from16 v0, p0

    #@22b
    iget-object v14, v0, Lgov/nist/javax/sip/stack/SIPDialog;->originalRequest:Lgov/nist/javax/sip/message/SIPRequest;

    #@22d
    invoke-virtual {v14}, Lgov/nist/javax/sip/message/SIPRequest;->getTopmostVia()Lgov/nist/javax/sip/header/Via;

    #@230
    move-result-object v14

    #@231
    if-eqz v14, :cond_d

    #@233
    .line 2462
    move-object/from16 v0, p0

    #@235
    iget-object v14, v0, Lgov/nist/javax/sip/stack/SIPDialog;->originalRequest:Lgov/nist/javax/sip/message/SIPRequest;

    #@237
    invoke-virtual {v14}, Lgov/nist/javax/sip/message/SIPRequest;->getTopmostVia()Lgov/nist/javax/sip/header/Via;

    #@23a
    move-result-object v14

    #@23b
    invoke-virtual {v14}, Lgov/nist/javax/sip/header/Via;->getParameters()Lgov/nist/core/NameValueList;

    #@23e
    move-result-object v6

    #@23f
    .line 2464
    .local v6, "originalRequestParameters":Lgov/nist/core/NameValueList;
    if-eqz v6, :cond_d

    #@241
    invoke-virtual {v6}, Lgov/nist/core/NameValueList;->size()I

    #@244
    move-result v14

    #@245
    if-lez v14, :cond_d

    #@247
    .line 2465
    invoke-virtual {v6}, Lgov/nist/core/NameValueList;->clone()Ljava/lang/Object;

    #@24a
    move-result-object v14

    #@24b
    check-cast v14, Lgov/nist/core/NameValueList;

    #@24d
    invoke-virtual {v12, v14}, Lgov/nist/javax/sip/header/Via;->setParameters(Lgov/nist/core/NameValueList;)V

    #@250
    .line 2468
    .end local v6    # "originalRequestParameters":Lgov/nist/core/NameValueList;
    :cond_d
    invoke-static {}, Lgov/nist/javax/sip/Utils;->getInstance()Lgov/nist/javax/sip/Utils;

    #@253
    move-result-object v14

    #@254
    invoke-virtual {v14}, Lgov/nist/javax/sip/Utils;->generateBranchId()Ljava/lang/String;

    #@257
    move-result-object v14

    #@258
    invoke-virtual {v12, v14}, Lgov/nist/javax/sip/header/Via;->setBranch(Ljava/lang/String;)V

    #@25b
    .line 2469
    invoke-interface {v13, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@25e
    .line 2470
    invoke-virtual {v8, v13}, Lgov/nist/javax/sip/message/SIPRequest;->setVia(Ljava/util/List;)V

    #@261
    .line 2471
    new-instance v4, Lgov/nist/javax/sip/header/From;

    #@263
    invoke-direct {v4}, Lgov/nist/javax/sip/header/From;-><init>()V

    #@266
    .line 2472
    .local v4, "from":Lgov/nist/javax/sip/header/From;
    move-object/from16 v0, p0

    #@268
    iget-object v14, v0, Lgov/nist/javax/sip/stack/SIPDialog;->localParty:Ljavax/sip/address/Address;

    #@26a
    invoke-virtual {v4, v14}, Lgov/nist/javax/sip/header/From;->setAddress(Ljavax/sip/address/Address;)V

    #@26d
    .line 2473
    move-object/from16 v0, p0

    #@26f
    iget-object v14, v0, Lgov/nist/javax/sip/stack/SIPDialog;->myTag:Ljava/lang/String;

    #@271
    invoke-virtual {v4, v14}, Lgov/nist/javax/sip/header/From;->setTag(Ljava/lang/String;)V

    #@274
    .line 2474
    invoke-virtual {v8, v4}, Lgov/nist/javax/sip/message/SIPRequest;->setFrom(Ljavax/sip/header/FromHeader;)V

    #@277
    .line 2475
    new-instance v9, Lgov/nist/javax/sip/header/To;

    #@279
    invoke-direct {v9}, Lgov/nist/javax/sip/header/To;-><init>()V

    #@27c
    .line 2476
    .local v9, "to":Lgov/nist/javax/sip/header/To;
    move-object/from16 v0, p0

    #@27e
    iget-object v14, v0, Lgov/nist/javax/sip/stack/SIPDialog;->remoteParty:Ljavax/sip/address/Address;

    #@280
    invoke-virtual {v9, v14}, Lgov/nist/javax/sip/header/To;->setAddress(Ljavax/sip/address/Address;)V

    #@283
    .line 2477
    move-object/from16 v0, p0

    #@285
    iget-object v14, v0, Lgov/nist/javax/sip/stack/SIPDialog;->hisTag:Ljava/lang/String;

    #@287
    if-eqz v14, :cond_e

    #@289
    .line 2478
    move-object/from16 v0, p0

    #@28b
    iget-object v14, v0, Lgov/nist/javax/sip/stack/SIPDialog;->hisTag:Ljava/lang/String;

    #@28d
    invoke-virtual {v9, v14}, Lgov/nist/javax/sip/header/To;->setTag(Ljava/lang/String;)V

    #@290
    .line 2479
    :cond_e
    invoke-virtual {v8, v9}, Lgov/nist/javax/sip/message/SIPRequest;->setTo(Ljavax/sip/header/ToHeader;)V

    #@293
    .line 2480
    new-instance v14, Lgov/nist/javax/sip/header/MaxForwards;

    #@295
    const/16 v15, 0x46

    #@297
    invoke-direct {v14, v15}, Lgov/nist/javax/sip/header/MaxForwards;-><init>(I)V

    #@29a
    invoke-virtual {v8, v14}, Lgov/nist/javax/sip/message/SIPRequest;->setMaxForwards(Ljavax/sip/header/MaxForwardsHeader;)V

    #@29d
    .line 2482
    move-object/from16 v0, p0

    #@29f
    iget-object v14, v0, Lgov/nist/javax/sip/stack/SIPDialog;->originalRequest:Lgov/nist/javax/sip/message/SIPRequest;

    #@2a1
    if-eqz v14, :cond_f

    #@2a3
    .line 2483
    move-object/from16 v0, p0

    #@2a5
    iget-object v14, v0, Lgov/nist/javax/sip/stack/SIPDialog;->originalRequest:Lgov/nist/javax/sip/message/SIPRequest;

    #@2a7
    invoke-virtual {v14}, Lgov/nist/javax/sip/message/SIPRequest;->getAuthorization()Lgov/nist/javax/sip/header/Authorization;

    #@2aa
    move-result-object v2

    #@2ab
    .line 2484
    .local v2, "authorization":Lgov/nist/javax/sip/header/Authorization;
    if-eqz v2, :cond_f

    #@2ad
    .line 2485
    invoke-virtual {v8, v2}, Lgov/nist/javax/sip/message/SIPRequest;->setHeader(Ljavax/sip/header/Header;)V

    #@2b0
    .line 2491
    .end local v2    # "authorization":Lgov/nist/javax/sip/header/Authorization;
    :cond_f
    move-object/from16 v0, p0

    #@2b2
    invoke-direct {v0, v8}, Lgov/nist/javax/sip/stack/SIPDialog;->updateRequest(Lgov/nist/javax/sip/message/SIPRequest;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    #@2b5
    .line 2493
    return-object v8
.end method

.method public createPrack(Ljavax/sip/message/Response;)Ljavax/sip/message/Request;
    .locals 11
    .param p1, "relResponse"    # Ljavax/sip/message/Response;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/DialogDoesNotExistException;,
            Ljavax/sip/SipException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v10, 0x0

    #@1
    .line 2327
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getState()Ljavax/sip/DialogState;

    #@4
    move-result-object v8

    #@5
    if-eqz v8, :cond_0

    #@7
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getState()Ljavax/sip/DialogState;

    #@a
    move-result-object v8

    #@b
    sget-object v9, Ljavax/sip/DialogState;->TERMINATED:Ljavax/sip/DialogState;

    #@d
    invoke-virtual {v8, v9}, Ljavax/sip/DialogState;->equals(Ljava/lang/Object;)Z

    #@10
    move-result v8

    #@11
    if-eqz v8, :cond_1

    #@13
    .line 2328
    :cond_0
    new-instance v8, Ljavax/sip/DialogDoesNotExistException;

    #@15
    const-string/jumbo v9, "Dialog not initialized or terminated"

    #@18
    invoke-direct {v8, v9}, Ljavax/sip/DialogDoesNotExistException;-><init>(Ljava/lang/String;)V

    #@1b
    throw v8

    #@1c
    .line 2330
    :cond_1
    const-string/jumbo v8, "RSeq"

    #@1f
    invoke-interface {p1, v8}, Ljavax/sip/message/Response;->getHeader(Ljava/lang/String;)Ljavax/sip/header/Header;

    #@22
    move-result-object v8

    #@23
    check-cast v8, Lgov/nist/javax/sip/header/RSeq;

    #@25
    if-nez v8, :cond_2

    #@27
    .line 2331
    new-instance v8, Ljavax/sip/SipException;

    #@29
    const-string/jumbo v9, "Missing RSeq Header"

    #@2c
    invoke-direct {v8, v9}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    #@2f
    throw v8

    #@30
    .line 2335
    :cond_2
    :try_start_0
    move-object v0, p1

    #@31
    check-cast v0, Lgov/nist/javax/sip/message/SIPResponse;

    #@33
    move-object v6, v0

    #@34
    .line 2336
    .local v6, "sipResponse":Lgov/nist/javax/sip/message/SIPResponse;
    const-string/jumbo v9, "PRACK"

    #@37
    .line 2337
    move-object v0, p1

    #@38
    check-cast v0, Lgov/nist/javax/sip/message/SIPResponse;

    #@3a
    move-object v8, v0

    #@3b
    .line 2336
    invoke-direct {p0, v9, v8}, Lgov/nist/javax/sip/stack/SIPDialog;->createRequest(Ljava/lang/String;Lgov/nist/javax/sip/message/SIPResponse;)Ljavax/sip/message/Request;

    #@3e
    move-result-object v5

    #@3f
    check-cast v5, Lgov/nist/javax/sip/message/SIPRequest;

    #@41
    .line 2338
    .local v5, "sipRequest":Lgov/nist/javax/sip/message/SIPRequest;
    invoke-virtual {v6}, Lgov/nist/javax/sip/message/SIPResponse;->getTo()Ljavax/sip/header/ToHeader;

    #@44
    move-result-object v8

    #@45
    invoke-interface {v8}, Ljavax/sip/header/ToHeader;->getTag()Ljava/lang/String;

    #@48
    move-result-object v7

    #@49
    .line 2339
    .local v7, "toHeaderTag":Ljava/lang/String;
    invoke-virtual {v5, v7}, Lgov/nist/javax/sip/message/SIPRequest;->setToTag(Ljava/lang/String;)V

    #@4c
    .line 2340
    new-instance v3, Lgov/nist/javax/sip/header/RAck;

    #@4e
    invoke-direct {v3}, Lgov/nist/javax/sip/header/RAck;-><init>()V

    #@51
    .line 2341
    .local v3, "rack":Lgov/nist/javax/sip/header/RAck;
    const-string/jumbo v8, "RSeq"

    #@54
    invoke-interface {p1, v8}, Ljavax/sip/message/Response;->getHeader(Ljava/lang/String;)Ljavax/sip/header/Header;

    #@57
    move-result-object v4

    #@58
    check-cast v4, Lgov/nist/javax/sip/header/RSeq;

    #@5a
    .line 2342
    .local v4, "rseq":Lgov/nist/javax/sip/header/RSeq;
    invoke-virtual {v6}, Lgov/nist/javax/sip/message/SIPResponse;->getCSeq()Ljavax/sip/header/CSeqHeader;

    #@5d
    move-result-object v8

    #@5e
    invoke-interface {v8}, Ljavax/sip/header/CSeqHeader;->getMethod()Ljava/lang/String;

    #@61
    move-result-object v8

    #@62
    invoke-virtual {v3, v8}, Lgov/nist/javax/sip/header/RAck;->setMethod(Ljava/lang/String;)V

    #@65
    .line 2343
    invoke-virtual {v6}, Lgov/nist/javax/sip/message/SIPResponse;->getCSeq()Ljavax/sip/header/CSeqHeader;

    #@68
    move-result-object v8

    #@69
    invoke-interface {v8}, Ljavax/sip/header/CSeqHeader;->getSeqNumber()J

    #@6c
    move-result-wide v8

    #@6d
    long-to-int v8, v8

    #@6e
    int-to-long v8, v8

    #@6f
    invoke-virtual {v3, v8, v9}, Lgov/nist/javax/sip/header/RAck;->setCSequenceNumber(J)V

    #@72
    .line 2344
    invoke-virtual {v4}, Lgov/nist/javax/sip/header/RSeq;->getSeqNumber()J

    #@75
    move-result-wide v8

    #@76
    invoke-virtual {v3, v8, v9}, Lgov/nist/javax/sip/header/RAck;->setRSequenceNumber(J)V

    #@79
    .line 2345
    invoke-virtual {v5, v3}, Lgov/nist/javax/sip/message/SIPRequest;->setHeader(Ljavax/sip/header/Header;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@7c
    .line 2346
    return-object v5

    #@7d
    .line 2347
    .end local v3    # "rack":Lgov/nist/javax/sip/header/RAck;
    .end local v4    # "rseq":Lgov/nist/javax/sip/header/RSeq;
    .end local v5    # "sipRequest":Lgov/nist/javax/sip/message/SIPRequest;
    .end local v6    # "sipResponse":Lgov/nist/javax/sip/message/SIPResponse;
    .end local v7    # "toHeaderTag":Ljava/lang/String;
    :catch_0
    move-exception v2

    #@7e
    .line 2348
    .local v2, "ex":Ljava/lang/Exception;
    invoke-static {v2}, Lgov/nist/core/InternalErrorHandler;->handleException(Ljava/lang/Exception;)V

    #@81
    .line 2349
    return-object v10
.end method

.method public createReliableProvisionalResponse(I)Ljavax/sip/message/Response;
    .locals 10
    .param p1, "statusCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/InvalidArgumentException;,
            Ljavax/sip/SipException;
        }
    .end annotation

    #@0
    .prologue
    .line 2875
    iget-boolean v8, p0, Lgov/nist/javax/sip/stack/SIPDialog;->firstTransactionIsServerTransaction:Z

    #@2
    if-nez v8, :cond_0

    #@4
    .line 2876
    new-instance v8, Ljavax/sip/SipException;

    #@6
    const-string/jumbo v9, "Not a Server Dialog!"

    #@9
    invoke-direct {v8, v9}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    #@c
    throw v8

    #@d
    .line 2885
    :cond_0
    const/16 v8, 0x64

    #@f
    if-le p1, v8, :cond_1

    #@11
    const/16 v8, 0xc7

    #@13
    if-le p1, v8, :cond_2

    #@15
    .line 2886
    :cond_1
    new-instance v8, Ljavax/sip/InvalidArgumentException;

    #@17
    const-string/jumbo v9, "Bad status code "

    #@1a
    invoke-direct {v8, v9}, Ljavax/sip/InvalidArgumentException;-><init>(Ljava/lang/String;)V

    #@1d
    throw v8

    #@1e
    .line 2887
    :cond_2
    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPDialog;->originalRequest:Lgov/nist/javax/sip/message/SIPRequest;

    #@20
    .line 2888
    .local v2, "request":Lgov/nist/javax/sip/message/SIPRequest;
    invoke-virtual {v2}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    #@23
    move-result-object v8

    #@24
    const-string/jumbo v9, "INVITE"

    #@27
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2a
    move-result v8

    #@2b
    if-nez v8, :cond_3

    #@2d
    .line 2889
    new-instance v8, Ljavax/sip/SipException;

    #@2f
    const-string/jumbo v9, "Bad method"

    #@32
    invoke-direct {v8, v9}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    #@35
    throw v8

    #@36
    .line 2891
    :cond_3
    const-string/jumbo v8, "Supported"

    #@39
    invoke-virtual {v2, v8}, Lgov/nist/javax/sip/message/SIPRequest;->getHeaders(Ljava/lang/String;)Ljava/util/ListIterator;

    #@3c
    move-result-object v1

    #@3d
    .line 2892
    .local v1, "list":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lgov/nist/javax/sip/header/SIPHeader;>;"
    if-eqz v1, :cond_6

    #@3f
    const-string/jumbo v8, "100rel"

    #@42
    invoke-static {v1, v8}, Lgov/nist/javax/sip/stack/SIPDialog;->optionPresent(Ljava/util/ListIterator;Ljava/lang/String;)Z

    #@45
    move-result v8

    #@46
    if-eqz v8, :cond_6

    #@48
    .line 2899
    :cond_4
    invoke-virtual {v2, p1}, Lgov/nist/javax/sip/message/SIPRequest;->createResponse(I)Lgov/nist/javax/sip/message/SIPResponse;

    #@4b
    move-result-object v4

    #@4c
    .line 2910
    .local v4, "response":Lgov/nist/javax/sip/message/SIPResponse;
    new-instance v3, Lgov/nist/javax/sip/header/Require;

    #@4e
    invoke-direct {v3}, Lgov/nist/javax/sip/header/Require;-><init>()V

    #@51
    .line 2912
    .local v3, "require":Lgov/nist/javax/sip/header/Require;
    :try_start_0
    const-string/jumbo v8, "100rel"

    #@54
    invoke-virtual {v3, v8}, Lgov/nist/javax/sip/header/Require;->setOptionTag(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@57
    .line 2916
    :goto_0
    invoke-virtual {v4, v3}, Lgov/nist/javax/sip/message/SIPResponse;->addHeader(Ljavax/sip/header/Header;)V

    #@5a
    .line 2917
    new-instance v7, Lgov/nist/javax/sip/header/RSeq;

    #@5c
    invoke-direct {v7}, Lgov/nist/javax/sip/header/RSeq;-><init>()V

    #@5f
    .line 2921
    .local v7, "rseq":Lgov/nist/javax/sip/header/RSeq;
    const-wide/16 v8, 0x1

    #@61
    invoke-virtual {v7, v8, v9}, Lgov/nist/javax/sip/header/RSeq;->setSeqNumber(J)V

    #@64
    .line 2927
    invoke-virtual {v2}, Lgov/nist/javax/sip/message/SIPRequest;->getRecordRouteHeaders()Lgov/nist/javax/sip/header/RecordRouteList;

    #@67
    move-result-object v5

    #@68
    .line 2928
    .local v5, "rrl":Lgov/nist/javax/sip/header/RecordRouteList;
    if-eqz v5, :cond_5

    #@6a
    .line 2929
    invoke-virtual {v5}, Lgov/nist/javax/sip/header/RecordRouteList;->clone()Ljava/lang/Object;

    #@6d
    move-result-object v6

    #@6e
    check-cast v6, Lgov/nist/javax/sip/header/RecordRouteList;

    #@70
    .line 2930
    .local v6, "rrlclone":Lgov/nist/javax/sip/header/RecordRouteList;
    invoke-virtual {v4, v6}, Lgov/nist/javax/sip/message/SIPResponse;->setHeader(Ljavax/sip/header/Header;)V

    #@73
    .line 2933
    .end local v6    # "rrlclone":Lgov/nist/javax/sip/header/RecordRouteList;
    :cond_5
    return-object v4

    #@74
    .line 2893
    .end local v3    # "require":Lgov/nist/javax/sip/header/Require;
    .end local v4    # "response":Lgov/nist/javax/sip/message/SIPResponse;
    .end local v5    # "rrl":Lgov/nist/javax/sip/header/RecordRouteList;
    .end local v7    # "rseq":Lgov/nist/javax/sip/header/RSeq;
    :cond_6
    const-string/jumbo v8, "Require"

    #@77
    invoke-virtual {v2, v8}, Lgov/nist/javax/sip/message/SIPRequest;->getHeaders(Ljava/lang/String;)Ljava/util/ListIterator;

    #@7a
    move-result-object v1

    #@7b
    .line 2894
    if-eqz v1, :cond_7

    #@7d
    const-string/jumbo v8, "100rel"

    #@80
    invoke-static {v1, v8}, Lgov/nist/javax/sip/stack/SIPDialog;->optionPresent(Ljava/util/ListIterator;Ljava/lang/String;)Z

    #@83
    move-result v8

    #@84
    if-nez v8, :cond_4

    #@86
    .line 2895
    :cond_7
    new-instance v8, Ljavax/sip/SipException;

    #@88
    const-string/jumbo v9, "No Supported/Require 100rel header in the request"

    #@8b
    invoke-direct {v8, v9}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    #@8e
    throw v8

    #@8f
    .line 2913
    .restart local v3    # "require":Lgov/nist/javax/sip/header/Require;
    .restart local v4    # "response":Lgov/nist/javax/sip/message/SIPResponse;
    :catch_0
    move-exception v0

    #@90
    .line 2914
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Lgov/nist/core/InternalErrorHandler;->handleException(Ljava/lang/Exception;)V

    #@93
    goto :goto_0
.end method

.method public createRequest(Ljava/lang/String;)Ljavax/sip/message/Request;
    .locals 3
    .param p1, "method"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    #@0
    .prologue
    .line 1854
    const-string/jumbo v0, "ACK"

    #@3
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6
    move-result v0

    #@7
    if-nez v0, :cond_0

    #@9
    const-string/jumbo v0, "PRACK"

    #@c
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@f
    move-result v0

    #@10
    if-eqz v0, :cond_1

    #@12
    .line 1855
    :cond_0
    new-instance v0, Ljavax/sip/SipException;

    #@14
    new-instance v1, Ljava/lang/StringBuilder;

    #@16
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@19
    const-string/jumbo v2, "Invalid method specified for createRequest:"

    #@1c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v1

    #@20
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v1

    #@24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@27
    move-result-object v1

    #@28
    invoke-direct {v0, v1}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    #@2b
    throw v0

    #@2c
    .line 1857
    :cond_1
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->lastResponse:Lgov/nist/javax/sip/message/SIPResponse;

    #@2e
    if-eqz v0, :cond_2

    #@30
    .line 1858
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->lastResponse:Lgov/nist/javax/sip/message/SIPResponse;

    #@32
    invoke-direct {p0, p1, v0}, Lgov/nist/javax/sip/stack/SIPDialog;->createRequest(Ljava/lang/String;Lgov/nist/javax/sip/message/SIPResponse;)Ljavax/sip/message/Request;

    #@35
    move-result-object v0

    #@36
    return-object v0

    #@37
    .line 1860
    :cond_2
    new-instance v0, Ljavax/sip/SipException;

    #@39
    const-string/jumbo v1, "Dialog not yet established -- no response!"

    #@3c
    invoke-direct {v0, v1}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    #@3f
    throw v0
.end method

.method public delete()V
    .locals 1

    #@0
    .prologue
    .line 1751
    sget v0, Lgov/nist/javax/sip/stack/SIPDialog;->TERMINATED_STATE:I

    #@2
    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/stack/SIPDialog;->setState(I)V

    #@5
    .line 1749
    return-void
.end method

.method public disableSequenceNumberValidation()V
    .locals 1

    #@0
    .prologue
    .line 3322
    const/4 v0, 0x0

    #@1
    iput-boolean v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sequenceNumberValidation:Z

    #@3
    .line 3321
    return-void
.end method

.method public doDeferredDelete()V
    .locals 4

    #@0
    .prologue
    .line 1195
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@2
    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getTimer()Ljava/util/Timer;

    #@5
    move-result-object v0

    #@6
    if-nez v0, :cond_0

    #@8
    .line 1196
    sget v0, Lgov/nist/javax/sip/stack/SIPDialog;->TERMINATED_STATE:I

    #@a
    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/stack/SIPDialog;->setState(I)V

    #@d
    .line 1194
    :goto_0
    return-void

    #@e
    .line 1198
    :cond_0
    new-instance v0, Lgov/nist/javax/sip/stack/SIPDialog$DialogDeleteTask;

    #@10
    invoke-direct {v0, p0}, Lgov/nist/javax/sip/stack/SIPDialog$DialogDeleteTask;-><init>(Lgov/nist/javax/sip/stack/SIPDialog;)V

    #@13
    iput-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->dialogDeleteTask:Lgov/nist/javax/sip/stack/SIPDialog$DialogDeleteTask;

    #@15
    .line 1200
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@17
    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getTimer()Ljava/util/Timer;

    #@1a
    move-result-object v0

    #@1b
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->dialogDeleteTask:Lgov/nist/javax/sip/stack/SIPDialog$DialogDeleteTask;

    #@1d
    .line 1201
    const-wide/16 v2, 0x7d00

    #@1f
    .line 1200
    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    #@22
    goto :goto_0
.end method

.method public declared-synchronized doDeferredDeleteIfNoAckSent(J)V
    .locals 5
    .param p1, "seqno"    # J

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 3268
    :try_start_0
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@3
    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getTimer()Ljava/util/Timer;

    #@6
    move-result-object v0

    #@7
    if-nez v0, :cond_1

    #@9
    .line 3269
    sget v0, Lgov/nist/javax/sip/stack/SIPDialog;->TERMINATED_STATE:I

    #@b
    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/stack/SIPDialog;->setState(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e
    :cond_0
    :goto_0
    monitor-exit p0

    #@f
    .line 3267
    return-void

    #@10
    .line 3270
    :cond_1
    :try_start_1
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->dialogDeleteIfNoAckSentTask:Lgov/nist/javax/sip/stack/SIPDialog$DialogDeleteIfNoAckSentTask;

    #@12
    if-nez v0, :cond_0

    #@14
    .line 3272
    new-instance v0, Lgov/nist/javax/sip/stack/SIPDialog$DialogDeleteIfNoAckSentTask;

    #@16
    invoke-direct {v0, p0, p1, p2}, Lgov/nist/javax/sip/stack/SIPDialog$DialogDeleteIfNoAckSentTask;-><init>(Lgov/nist/javax/sip/stack/SIPDialog;J)V

    #@19
    iput-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->dialogDeleteIfNoAckSentTask:Lgov/nist/javax/sip/stack/SIPDialog$DialogDeleteIfNoAckSentTask;

    #@1b
    .line 3273
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@1d
    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getTimer()Ljava/util/Timer;

    #@20
    move-result-object v0

    #@21
    .line 3274
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->dialogDeleteIfNoAckSentTask:Lgov/nist/javax/sip/stack/SIPDialog$DialogDeleteIfNoAckSentTask;

    #@23
    .line 3275
    const-wide/16 v2, 0x7d00

    #@25
    .line 3273
    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@28
    goto :goto_0

    #@29
    :catchall_0
    move-exception v0

    #@2a
    monitor-exit p0

    #@2b
    throw v0
.end method

.method public getApplicationData()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 1150
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->applicationData:Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method public getCallId()Ljavax/sip/header/CallIdHeader;
    .locals 1

    #@0
    .prologue
    .line 1760
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->callIdHeader:Ljavax/sip/header/CallIdHeader;

    #@2
    return-object v0
.end method

.method public getDialogId()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 1443
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->dialogId:Ljava/lang/String;

    #@2
    if-nez v0, :cond_0

    #@4
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->lastResponse:Lgov/nist/javax/sip/message/SIPResponse;

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 1444
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->lastResponse:Lgov/nist/javax/sip/message/SIPResponse;

    #@a
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->isServer()Z

    #@d
    move-result v1

    #@e
    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/message/SIPResponse;->getDialogId(Z)Ljava/lang/String;

    #@11
    move-result-object v0

    #@12
    iput-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->dialogId:Ljava/lang/String;

    #@14
    .line 1446
    :cond_0
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->dialogId:Ljava/lang/String;

    #@16
    return-object v0
.end method

.method getEarlyDialogId()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 3185
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->earlyDialogId:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method getEventHeader()Ljavax/sip/header/EventHeader;
    .locals 1

    #@0
    .prologue
    .line 3292
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->eventHeader:Ljavax/sip/header/EventHeader;

    #@2
    return-object v0
.end method

.method public getFirstTransaction()Ljavax/sip/Transaction;
    .locals 1

    #@0
    .prologue
    .line 1289
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->firstTransaction:Lgov/nist/javax/sip/stack/SIPTransaction;

    #@2
    return-object v0
.end method

.method public getInviteTransaction()Lgov/nist/javax/sip/stack/SIPServerTransaction;
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1612
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->timerTask:Lgov/nist/javax/sip/stack/SIPDialog$DialogTimerTask;

    #@3
    .line 1613
    .local v0, "t":Lgov/nist/javax/sip/stack/SIPDialog$DialogTimerTask;
    if-eqz v0, :cond_0

    #@5
    .line 1614
    iget-object v1, v0, Lgov/nist/javax/sip/stack/SIPDialog$DialogTimerTask;->transaction:Lgov/nist/javax/sip/stack/SIPServerTransaction;

    #@7
    return-object v1

    #@8
    .line 1616
    :cond_0
    return-object v1
.end method

.method protected getLastAckReceived()Lgov/nist/javax/sip/message/SIPRequest;
    .locals 1

    #@0
    .prologue
    .line 3244
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->lastAckReceived:Lgov/nist/javax/sip/message/SIPRequest;

    #@2
    return-object v0
.end method

.method public getLastAckSent()Lgov/nist/javax/sip/message/SIPRequest;
    .locals 1

    #@0
    .prologue
    .line 1264
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->lastAckSent:Lgov/nist/javax/sip/message/SIPRequest;

    #@2
    return-object v0
.end method

.method public getLastResponse()Lgov/nist/javax/sip/message/SIPResponse;
    .locals 1

    #@0
    .prologue
    .line 2825
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->lastResponse:Lgov/nist/javax/sip/message/SIPResponse;

    #@2
    return-object v0
.end method

.method public getLastTransaction()Lgov/nist/javax/sip/stack/SIPTransaction;
    .locals 1

    #@0
    .prologue
    .line 1605
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->lastTransaction:Lgov/nist/javax/sip/stack/SIPTransaction;

    #@2
    return-object v0
.end method

.method public getLocalParty()Ljavax/sip/address/Address;
    .locals 1

    #@0
    .prologue
    .line 1777
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->localParty:Ljavax/sip/address/Address;

    #@2
    return-object v0
.end method

.method public getLocalSeqNumber()J
    .locals 2

    #@0
    .prologue
    .line 1695
    iget-wide v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->localSequenceNumber:J

    #@2
    return-wide v0
.end method

.method public getLocalSequenceNumber()I
    .locals 2

    #@0
    .prologue
    .line 1677
    iget-wide v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->localSequenceNumber:J

    #@2
    long-to-int v0, v0

    #@3
    return v0
.end method

.method public getLocalTag()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1713
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->myTag:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getMethod()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 2259
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->method:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getMyContactHeader()Lgov/nist/javax/sip/header/Contact;
    .locals 1

    #@0
    .prologue
    .line 3103
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->contactHeader:Lgov/nist/javax/sip/header/Contact;

    #@2
    return-object v0
.end method

.method public getOriginalLocalSequenceNumber()J
    .locals 2

    #@0
    .prologue
    .line 1686
    iget-wide v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->originalLocalSequenceNumber:J

    #@2
    return-wide v0
.end method

.method public getRemoteParty()Ljavax/sip/address/Address;
    .locals 3

    #@0
    .prologue
    .line 1799
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@2
    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 1800
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@a
    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@d
    move-result-object v0

    #@e
    new-instance v1, Ljava/lang/StringBuilder;

    #@10
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@13
    const-string/jumbo v2, "gettingRemoteParty "

    #@16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPDialog;->remoteParty:Ljavax/sip/address/Address;

    #@1c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v1

    #@20
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@23
    move-result-object v1

    #@24
    invoke-interface {v0, v1}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@27
    .line 1802
    :cond_0
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->remoteParty:Ljavax/sip/address/Address;

    #@29
    return-object v0
.end method

.method public getRemoteSeqNumber()J
    .locals 2

    #@0
    .prologue
    .line 1704
    iget-wide v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->remoteSequenceNumber:J

    #@2
    return-wide v0
.end method

.method public getRemoteSequenceNumber()I
    .locals 2

    #@0
    .prologue
    .line 1665
    iget-wide v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->remoteSequenceNumber:J

    #@2
    long-to-int v0, v0

    #@3
    return v0
.end method

.method public getRemoteTag()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1723
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->hisTag:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getRemoteTarget()Ljavax/sip/address/Address;
    .locals 1

    #@0
    .prologue
    .line 1813
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->remoteTarget:Ljavax/sip/address/Address;

    #@2
    return-object v0
.end method

.method public getRouteSet()Ljava/util/Iterator;
    .locals 1

    #@0
    .prologue
    .line 1313
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->routeList:Lgov/nist/javax/sip/header/RouteList;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 1314
    new-instance v0, Ljava/util/LinkedList;

    #@6
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    #@9
    invoke-virtual {v0}, Ljava/util/LinkedList;->listIterator()Ljava/util/ListIterator;

    #@c
    move-result-object v0

    #@d
    return-object v0

    #@e
    .line 1316
    :cond_0
    invoke-direct {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getRouteList()Lgov/nist/javax/sip/header/RouteList;

    #@11
    move-result-object v0

    #@12
    invoke-virtual {v0}, Lgov/nist/javax/sip/header/RouteList;->listIterator()Ljava/util/ListIterator;

    #@15
    move-result-object v0

    #@16
    return-object v0
.end method

.method public getSipProvider()Lgov/nist/javax/sip/SipProviderImpl;
    .locals 1

    #@0
    .prologue
    .line 2509
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipProvider:Lgov/nist/javax/sip/SipProviderImpl;

    #@2
    return-object v0
.end method

.method public bridge synthetic getSipProvider()Ljavax/sip/SipProvider;
    .locals 1

    #@0
    .prologue
    .line 2508
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getSipProvider()Lgov/nist/javax/sip/SipProviderImpl;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method getStack()Lgov/nist/javax/sip/stack/SIPTransactionStack;
    .locals 1

    #@0
    .prologue
    .line 1050
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@2
    return-object v0
.end method

.method public getState()Ljavax/sip/DialogState;
    .locals 2

    #@0
    .prologue
    .line 1822
    iget v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->dialogState:I

    #@2
    const/4 v1, -0x1

    #@3
    if-ne v0, v1, :cond_0

    #@5
    .line 1823
    const/4 v0, 0x0

    #@6
    return-object v0

    #@7
    .line 1824
    :cond_0
    iget v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->dialogState:I

    #@9
    invoke-static {v0}, Ljavax/sip/DialogState;->getObject(I)Ljavax/sip/DialogState;

    #@c
    move-result-object v0

    #@d
    return-object v0
.end method

.method public handleAck(Lgov/nist/javax/sip/stack/SIPServerTransaction;)Z
    .locals 9
    .param p1, "ackTransaction"    # Lgov/nist/javax/sip/stack/SIPServerTransaction;

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 3114
    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getOriginalRequest()Lgov/nist/javax/sip/message/SIPRequest;

    #@4
    move-result-object v0

    #@5
    .line 3116
    .local v0, "sipRequest":Lgov/nist/javax/sip/message/SIPRequest;
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->isAckSeen()Z

    #@8
    move-result v3

    #@9
    if-eqz v3, :cond_2

    #@b
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getRemoteSeqNumber()J

    #@e
    move-result-wide v4

    #@f
    invoke-virtual {v0}, Lgov/nist/javax/sip/message/SIPRequest;->getCSeq()Ljavax/sip/header/CSeqHeader;

    #@12
    move-result-object v3

    #@13
    invoke-interface {v3}, Ljavax/sip/header/CSeqHeader;->getSeqNumber()J

    #@16
    move-result-wide v6

    #@17
    cmp-long v3, v4, v6

    #@19
    if-nez v3, :cond_2

    #@1b
    .line 3118
    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@1d
    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    #@20
    move-result v3

    #@21
    if-eqz v3, :cond_0

    #@23
    .line 3119
    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@25
    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@28
    move-result-object v3

    #@29
    .line 3120
    const-string/jumbo v4, "ACK already seen by dialog -- dropping Ack retransmission"

    #@2c
    .line 3119
    invoke-interface {v3, v4}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@2f
    .line 3122
    :cond_0
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->acquireTimerTaskSem()V

    #@32
    .line 3124
    :try_start_0
    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPDialog;->timerTask:Lgov/nist/javax/sip/stack/SIPDialog$DialogTimerTask;

    #@34
    if-eqz v3, :cond_1

    #@36
    .line 3125
    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPDialog;->timerTask:Lgov/nist/javax/sip/stack/SIPDialog$DialogTimerTask;

    #@38
    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/SIPDialog$DialogTimerTask;->cancel()Z

    #@3b
    .line 3126
    const/4 v3, 0x0

    #@3c
    iput-object v3, p0, Lgov/nist/javax/sip/stack/SIPDialog;->timerTask:Lgov/nist/javax/sip/stack/SIPDialog$DialogTimerTask;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3e
    .line 3129
    :cond_1
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->releaseTimerTaskSem()V

    #@41
    .line 3131
    return v8

    #@42
    .line 3128
    :catchall_0
    move-exception v3

    #@43
    .line 3129
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->releaseTimerTaskSem()V

    #@46
    .line 3128
    throw v3

    #@47
    .line 3132
    :cond_2
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getState()Ljavax/sip/DialogState;

    #@4a
    move-result-object v3

    #@4b
    sget-object v4, Ljavax/sip/DialogState;->TERMINATED:Ljavax/sip/DialogState;

    #@4d
    if-ne v3, v4, :cond_4

    #@4f
    .line 3133
    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@51
    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    #@54
    move-result v3

    #@55
    if-eqz v3, :cond_3

    #@57
    .line 3134
    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@59
    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@5c
    move-result-object v3

    #@5d
    const-string/jumbo v4, "Dialog is terminated -- dropping ACK"

    #@60
    invoke-interface {v3, v4}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@63
    .line 3135
    :cond_3
    return v8

    #@64
    .line 3144
    :cond_4
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getInviteTransaction()Lgov/nist/javax/sip/stack/SIPServerTransaction;

    #@67
    move-result-object v2

    #@68
    .line 3146
    .local v2, "tr":Lgov/nist/javax/sip/stack/SIPServerTransaction;
    if-eqz v2, :cond_6

    #@6a
    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getLastResponse()Lgov/nist/javax/sip/message/SIPResponse;

    #@6d
    move-result-object v1

    #@6e
    .line 3149
    :goto_0
    if-eqz v2, :cond_7

    #@70
    .line 3150
    if-eqz v1, :cond_7

    #@72
    .line 3151
    invoke-virtual {v1}, Lgov/nist/javax/sip/message/SIPResponse;->getStatusCode()I

    #@75
    move-result v3

    #@76
    div-int/lit8 v3, v3, 0x64

    #@78
    const/4 v4, 0x2

    #@79
    if-ne v3, v4, :cond_7

    #@7b
    .line 3152
    invoke-virtual {v1}, Lgov/nist/javax/sip/message/SIPResponse;->getCSeq()Ljavax/sip/header/CSeqHeader;

    #@7e
    move-result-object v3

    #@7f
    invoke-interface {v3}, Ljavax/sip/header/CSeqHeader;->getMethod()Ljava/lang/String;

    #@82
    move-result-object v3

    #@83
    const-string/jumbo v4, "INVITE"

    #@86
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@89
    move-result v3

    #@8a
    .line 3149
    if-eqz v3, :cond_7

    #@8c
    .line 3153
    invoke-virtual {v1}, Lgov/nist/javax/sip/message/SIPResponse;->getCSeq()Ljavax/sip/header/CSeqHeader;

    #@8f
    move-result-object v3

    #@90
    invoke-interface {v3}, Ljavax/sip/header/CSeqHeader;->getSeqNumber()J

    #@93
    move-result-wide v4

    #@94
    invoke-virtual {v0}, Lgov/nist/javax/sip/message/SIPRequest;->getCSeq()Ljavax/sip/header/CSeqHeader;

    #@97
    move-result-object v3

    #@98
    invoke-interface {v3}, Ljavax/sip/header/CSeqHeader;->getSeqNumber()J

    #@9b
    move-result-wide v6

    #@9c
    cmp-long v3, v4, v6

    #@9e
    if-nez v3, :cond_7

    #@a0
    .line 3156
    invoke-virtual {v1, v8}, Lgov/nist/javax/sip/message/SIPResponse;->getDialogId(Z)Ljava/lang/String;

    #@a3
    move-result-object v3

    #@a4
    invoke-virtual {p1, p0, v3}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->setDialog(Lgov/nist/javax/sip/stack/SIPDialog;Ljava/lang/String;)V

    #@a7
    .line 3161
    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/stack/SIPDialog;->ackReceived(Lgov/nist/javax/sip/message/SIPRequest;)V

    #@aa
    .line 3162
    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@ac
    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    #@af
    move-result v3

    #@b0
    if-eqz v3, :cond_5

    #@b2
    .line 3163
    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@b4
    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@b7
    move-result-object v3

    #@b8
    const-string/jumbo v4, "ACK for 2XX response --- sending to TU "

    #@bb
    invoke-interface {v3, v4}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@be
    .line 3164
    :cond_5
    const/4 v3, 0x1

    #@bf
    return v3

    #@c0
    .line 3146
    :cond_6
    const/4 v1, 0x0

    #@c1
    .local v1, "sipResponse":Lgov/nist/javax/sip/message/SIPResponse;
    goto :goto_0

    #@c2
    .line 3172
    .end local v1    # "sipResponse":Lgov/nist/javax/sip/message/SIPResponse;
    :cond_7
    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@c4
    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    #@c7
    move-result v3

    #@c8
    if-eqz v3, :cond_8

    #@ca
    .line 3173
    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@cc
    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@cf
    move-result-object v3

    #@d0
    .line 3174
    const-string/jumbo v4, " INVITE transaction not found  -- Discarding ACK"

    #@d3
    .line 3173
    invoke-interface {v3, v4}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@d6
    .line 3175
    :cond_8
    return v8
.end method

.method public handlePrack(Lgov/nist/javax/sip/message/SIPRequest;)Z
    .locals 11
    .param p1, "prackRequest"    # Lgov/nist/javax/sip/message/SIPRequest;

    #@0
    .prologue
    const/4 v10, 0x0

    #@1
    .line 2951
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->isServer()Z

    #@4
    move-result v5

    #@5
    if-nez v5, :cond_1

    #@7
    .line 2952
    iget-object v5, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@9
    invoke-virtual {v5}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    #@c
    move-result v5

    #@d
    if-eqz v5, :cond_0

    #@f
    .line 2953
    iget-object v5, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@11
    invoke-virtual {v5}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@14
    move-result-object v5

    #@15
    const-string/jumbo v6, "Dropping Prack -- not a server Dialog"

    #@18
    invoke-interface {v5, v6}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@1b
    .line 2954
    :cond_0
    return v10

    #@1c
    .line 2956
    :cond_1
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getFirstTransaction()Ljavax/sip/Transaction;

    #@1f
    move-result-object v4

    #@20
    check-cast v4, Lgov/nist/javax/sip/stack/SIPServerTransaction;

    #@22
    .line 2958
    .local v4, "sipServerTransaction":Lgov/nist/javax/sip/stack/SIPServerTransaction;
    invoke-virtual {v4}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getReliableProvisionalResponse()Lgov/nist/javax/sip/message/SIPResponse;

    #@25
    move-result-object v3

    #@26
    .line 2960
    .local v3, "sipResponse":Lgov/nist/javax/sip/message/SIPResponse;
    if-nez v3, :cond_3

    #@28
    .line 2961
    iget-object v5, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@2a
    invoke-virtual {v5}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    #@2d
    move-result v5

    #@2e
    if-eqz v5, :cond_2

    #@30
    .line 2962
    iget-object v5, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@32
    invoke-virtual {v5}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@35
    move-result-object v5

    #@36
    .line 2963
    const-string/jumbo v6, "Dropping Prack -- ReliableResponse not found"

    #@39
    .line 2962
    invoke-interface {v5, v6}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@3c
    .line 2964
    :cond_2
    return v10

    #@3d
    .line 2967
    :cond_3
    const-string/jumbo v5, "RAck"

    #@40
    invoke-virtual {p1, v5}, Lgov/nist/javax/sip/message/SIPRequest;->getHeader(Ljava/lang/String;)Ljavax/sip/header/Header;

    #@43
    move-result-object v1

    #@44
    check-cast v1, Lgov/nist/javax/sip/header/RAck;

    #@46
    .line 2969
    .local v1, "rack":Lgov/nist/javax/sip/header/RAck;
    if-nez v1, :cond_5

    #@48
    .line 2970
    iget-object v5, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@4a
    invoke-virtual {v5}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    #@4d
    move-result v5

    #@4e
    if-eqz v5, :cond_4

    #@50
    .line 2971
    iget-object v5, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@52
    invoke-virtual {v5}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@55
    move-result-object v5

    #@56
    const-string/jumbo v6, "Dropping Prack -- rack header not found"

    #@59
    invoke-interface {v5, v6}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@5c
    .line 2972
    :cond_4
    return v10

    #@5d
    .line 2974
    :cond_5
    invoke-virtual {v3}, Lgov/nist/javax/sip/message/SIPResponse;->getCSeq()Ljavax/sip/header/CSeqHeader;

    #@60
    move-result-object v0

    #@61
    check-cast v0, Lgov/nist/javax/sip/header/CSeq;

    #@63
    .line 2976
    .local v0, "cseq":Lgov/nist/javax/sip/header/CSeq;
    invoke-virtual {v1}, Lgov/nist/javax/sip/header/RAck;->getMethod()Ljava/lang/String;

    #@66
    move-result-object v5

    #@67
    invoke-virtual {v0}, Lgov/nist/javax/sip/header/CSeq;->getMethod()Ljava/lang/String;

    #@6a
    move-result-object v6

    #@6b
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6e
    move-result v5

    #@6f
    if-nez v5, :cond_7

    #@71
    .line 2977
    iget-object v5, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@73
    invoke-virtual {v5}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    #@76
    move-result v5

    #@77
    if-eqz v5, :cond_6

    #@79
    .line 2978
    iget-object v5, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@7b
    invoke-virtual {v5}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@7e
    move-result-object v5

    #@7f
    .line 2979
    const-string/jumbo v6, "Dropping Prack -- CSeq Header does not match PRACK"

    #@82
    .line 2978
    invoke-interface {v5, v6}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@85
    .line 2980
    :cond_6
    return v10

    #@86
    .line 2983
    :cond_7
    invoke-virtual {v1}, Lgov/nist/javax/sip/header/RAck;->getCSeqNumberLong()J

    #@89
    move-result-wide v6

    #@8a
    invoke-virtual {v0}, Lgov/nist/javax/sip/header/CSeq;->getSeqNumber()J

    #@8d
    move-result-wide v8

    #@8e
    cmp-long v5, v6, v8

    #@90
    if-eqz v5, :cond_9

    #@92
    .line 2984
    iget-object v5, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@94
    invoke-virtual {v5}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    #@97
    move-result v5

    #@98
    if-eqz v5, :cond_8

    #@9a
    .line 2985
    iget-object v5, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@9c
    invoke-virtual {v5}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@9f
    move-result-object v5

    #@a0
    .line 2986
    const-string/jumbo v6, "Dropping Prack -- CSeq Header does not match PRACK"

    #@a3
    .line 2985
    invoke-interface {v5, v6}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@a6
    .line 2987
    :cond_8
    return v10

    #@a7
    .line 2990
    :cond_9
    const-string/jumbo v5, "RSeq"

    #@aa
    invoke-virtual {v3, v5}, Lgov/nist/javax/sip/message/SIPResponse;->getHeader(Ljava/lang/String;)Ljavax/sip/header/Header;

    #@ad
    move-result-object v2

    #@ae
    check-cast v2, Lgov/nist/javax/sip/header/RSeq;

    #@b0
    .line 2992
    .local v2, "rseq":Lgov/nist/javax/sip/header/RSeq;
    invoke-virtual {v1}, Lgov/nist/javax/sip/header/RAck;->getRSequenceNumber()J

    #@b3
    move-result-wide v6

    #@b4
    invoke-virtual {v2}, Lgov/nist/javax/sip/header/RSeq;->getSeqNumber()J

    #@b7
    move-result-wide v8

    #@b8
    cmp-long v5, v6, v8

    #@ba
    if-eqz v5, :cond_b

    #@bc
    .line 2993
    iget-object v5, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@be
    invoke-virtual {v5}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    #@c1
    move-result v5

    #@c2
    if-eqz v5, :cond_a

    #@c4
    .line 2994
    iget-object v5, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@c6
    invoke-virtual {v5}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@c9
    move-result-object v5

    #@ca
    .line 2995
    const-string/jumbo v6, "Dropping Prack -- RSeq Header does not match PRACK"

    #@cd
    .line 2994
    invoke-interface {v5, v6}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@d0
    .line 2996
    :cond_a
    return v10

    #@d1
    .line 2999
    :cond_b
    invoke-virtual {v4}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->prackRecieved()Z

    #@d4
    move-result v5

    #@d5
    return v5
.end method

.method public incrementLocalSequenceNumber()V
    .locals 4

    #@0
    .prologue
    .line 1653
    iget-wide v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->localSequenceNumber:J

    #@2
    const-wide/16 v2, 0x1

    #@4
    add-long/2addr v0, v2

    #@5
    iput-wide v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->localSequenceNumber:J

    #@7
    .line 1652
    return-void
.end method

.method public isAckSeen()Z
    .locals 1

    #@0
    .prologue
    .line 1257
    iget-boolean v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->ackSeen:Z

    #@2
    return v0
.end method

.method public isAckSent(J)Z
    .locals 5
    .param p1, "cseqNo"    # J

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    const/4 v0, 0x1

    #@2
    .line 1272
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getLastTransaction()Lgov/nist/javax/sip/stack/SIPTransaction;

    #@5
    move-result-object v2

    #@6
    if-nez v2, :cond_0

    #@8
    .line 1273
    return v0

    #@9
    .line 1274
    :cond_0
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getLastTransaction()Lgov/nist/javax/sip/stack/SIPTransaction;

    #@c
    move-result-object v2

    #@d
    instance-of v2, v2, Ljavax/sip/ClientTransaction;

    #@f
    if-eqz v2, :cond_3

    #@11
    .line 1275
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getLastAckSent()Lgov/nist/javax/sip/message/SIPRequest;

    #@14
    move-result-object v2

    #@15
    if-nez v2, :cond_1

    #@17
    .line 1276
    return v1

    #@18
    .line 1278
    :cond_1
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getLastAckSent()Lgov/nist/javax/sip/message/SIPRequest;

    #@1b
    move-result-object v2

    #@1c
    invoke-virtual {v2}, Lgov/nist/javax/sip/message/SIPRequest;->getCSeq()Ljavax/sip/header/CSeqHeader;

    #@1f
    move-result-object v2

    #@20
    invoke-interface {v2}, Ljavax/sip/header/CSeqHeader;->getSeqNumber()J

    #@23
    move-result-wide v2

    #@24
    cmp-long v2, p1, v2

    #@26
    if-gtz v2, :cond_2

    #@28
    :goto_0
    return v0

    #@29
    :cond_2
    move v0, v1

    #@2a
    goto :goto_0

    #@2b
    .line 1281
    :cond_3
    return v0
.end method

.method public isAssigned()Z
    .locals 1

    #@0
    .prologue
    .line 3092
    iget-boolean v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->isAssigned:Z

    #@2
    return v0
.end method

.method public isAtleastOneAckSent()Z
    .locals 1

    #@0
    .prologue
    .line 3258
    iget-boolean v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->isAcknowledged:Z

    #@2
    return v0
.end method

.method public isBackToBackUserAgent()Z
    .locals 1

    #@0
    .prologue
    .line 3264
    iget-boolean v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->isBackToBackUserAgent:Z

    #@2
    return v0
.end method

.method protected isReInvite()Z
    .locals 1

    #@0
    .prologue
    .line 1432
    iget-boolean v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->reInviteFlag:Z

    #@2
    return v0
.end method

.method public declared-synchronized isRequestConsumable(Lgov/nist/javax/sip/message/SIPRequest;)Z
    .locals 6
    .param p1, "dialogRequest"    # Lgov/nist/javax/sip/message/SIPRequest;

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    monitor-enter p0

    #@2
    .line 1175
    :try_start_0
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    #@5
    move-result-object v1

    #@6
    const-string/jumbo v2, "ACK"

    #@9
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@c
    move-result v1

    #@d
    if-eqz v1, :cond_0

    #@f
    .line 1176
    new-instance v0, Ljava/lang/RuntimeException;

    #@11
    const-string/jumbo v1, "Illegal method"

    #@14
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@17
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@18
    :catchall_0
    move-exception v0

    #@19
    monitor-exit p0

    #@1a
    throw v0

    #@1b
    .line 1179
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->isSequnceNumberValidation()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1e
    move-result v1

    #@1f
    if-nez v1, :cond_1

    #@21
    monitor-exit p0

    #@22
    .line 1180
    return v0

    #@23
    .line 1185
    :cond_1
    :try_start_2
    iget-wide v2, p0, Lgov/nist/javax/sip/stack/SIPDialog;->remoteSequenceNumber:J

    #@25
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPRequest;->getCSeq()Ljavax/sip/header/CSeqHeader;

    #@28
    move-result-object v1

    #@29
    invoke-interface {v1}, Ljavax/sip/header/CSeqHeader;->getSeqNumber()J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@2c
    move-result-wide v4

    #@2d
    cmp-long v1, v2, v4

    #@2f
    if-gez v1, :cond_2

    #@31
    :goto_0
    monitor-exit p0

    #@32
    return v0

    #@33
    :cond_2
    const/4 v0, 0x0

    #@34
    goto :goto_0
.end method

.method public isSecure()Z
    .locals 1

    #@0
    .prologue
    .line 1835
    iget-boolean v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->firstTransactionSecure:Z

    #@2
    return v0
.end method

.method public isSequnceNumberValidation()Z
    .locals 1

    #@0
    .prologue
    .line 3318
    iget-boolean v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sequenceNumberValidation:Z

    #@2
    return v0
.end method

.method public isServer()Z
    .locals 1

    #@0
    .prologue
    .line 1419
    iget-boolean v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->firstTransactionSeen:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 1420
    iget-boolean v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->serverTransactionFlag:Z

    #@6
    return v0

    #@7
    .line 1422
    :cond_0
    iget-boolean v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->firstTransactionIsServerTransaction:Z

    #@9
    return v0
.end method

.method isTerminatedOnBye()Z
    .locals 1

    #@0
    .prologue
    .line 1059
    iget-boolean v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->terminateOnBye:Z

    #@2
    return v0
.end method

.method public printDebugInfo()V
    .locals 4

    #@0
    .prologue
    .line 1241
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@2
    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 1242
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@a
    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@d
    move-result-object v0

    #@e
    new-instance v1, Ljava/lang/StringBuilder;

    #@10
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@13
    const-string/jumbo v2, "isServer = "

    #@16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->isServer()Z

    #@1d
    move-result v2

    #@1e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@21
    move-result-object v1

    #@22
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@25
    move-result-object v1

    #@26
    invoke-interface {v0, v1}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@29
    .line 1243
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@2b
    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@2e
    move-result-object v0

    #@2f
    new-instance v1, Ljava/lang/StringBuilder;

    #@31
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@34
    const-string/jumbo v2, "localTag = "

    #@37
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v1

    #@3b
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getLocalTag()Ljava/lang/String;

    #@3e
    move-result-object v2

    #@3f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v1

    #@43
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@46
    move-result-object v1

    #@47
    invoke-interface {v0, v1}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@4a
    .line 1244
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@4c
    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@4f
    move-result-object v0

    #@50
    new-instance v1, Ljava/lang/StringBuilder;

    #@52
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@55
    const-string/jumbo v2, "remoteTag = "

    #@58
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5b
    move-result-object v1

    #@5c
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getRemoteTag()Ljava/lang/String;

    #@5f
    move-result-object v2

    #@60
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@63
    move-result-object v1

    #@64
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@67
    move-result-object v1

    #@68
    invoke-interface {v0, v1}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@6b
    .line 1245
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@6d
    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@70
    move-result-object v0

    #@71
    new-instance v1, Ljava/lang/StringBuilder;

    #@73
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@76
    const-string/jumbo v2, "localSequenceNumer = "

    #@79
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7c
    move-result-object v1

    #@7d
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getLocalSeqNumber()J

    #@80
    move-result-wide v2

    #@81
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@84
    move-result-object v1

    #@85
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@88
    move-result-object v1

    #@89
    invoke-interface {v0, v1}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@8c
    .line 1246
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@8e
    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@91
    move-result-object v0

    #@92
    new-instance v1, Ljava/lang/StringBuilder;

    #@94
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@97
    const-string/jumbo v2, "remoteSequenceNumer = "

    #@9a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9d
    move-result-object v1

    #@9e
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getRemoteSeqNumber()J

    #@a1
    move-result-wide v2

    #@a2
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@a5
    move-result-object v1

    #@a6
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a9
    move-result-object v1

    #@aa
    invoke-interface {v0, v1}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@ad
    .line 1247
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@af
    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@b2
    move-result-object v0

    #@b3
    new-instance v1, Ljava/lang/StringBuilder;

    #@b5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@b8
    const-string/jumbo v2, "ackLine:"

    #@bb
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@be
    move-result-object v1

    #@bf
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getRemoteTag()Ljava/lang/String;

    #@c2
    move-result-object v2

    #@c3
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c6
    move-result-object v1

    #@c7
    const-string/jumbo v2, " "

    #@ca
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@cd
    move-result-object v1

    #@ce
    iget v2, p0, Lgov/nist/javax/sip/stack/SIPDialog;->ackLine:I

    #@d0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@d3
    move-result-object v1

    #@d4
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d7
    move-result-object v1

    #@d8
    invoke-interface {v0, v1}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@db
    .line 1240
    :cond_0
    return-void
.end method

.method releaseAckSem()V
    .locals 3

    #@0
    .prologue
    .line 3192
    iget-boolean v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->isBackToBackUserAgent:Z

    #@2
    if-eqz v0, :cond_1

    #@4
    .line 3193
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@6
    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_0

    #@c
    .line 3194
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@e
    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@11
    move-result-object v0

    #@12
    new-instance v1, Ljava/lang/StringBuilder;

    #@14
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@17
    const-string/jumbo v2, "releaseAckSem]"

    #@1a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v1

    #@1e
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v1

    #@22
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@25
    move-result-object v1

    #@26
    invoke-interface {v0, v1}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@29
    .line 3196
    :cond_0
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->ackSem:Ljava/util/concurrent/Semaphore;

    #@2b
    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    #@2e
    .line 3191
    :cond_1
    return-void
.end method

.method public releaseTimerTaskSem()V
    .locals 1

    #@0
    .prologue
    .line 3339
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->timerTaskLock:Ljava/util/concurrent/Semaphore;

    #@2
    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    #@5
    .line 3338
    return-void
.end method

.method public removeEventListener(Lgov/nist/javax/sip/stack/SIPDialogEventListener;)V
    .locals 1
    .param p1, "oldListener"    # Lgov/nist/javax/sip/stack/SIPDialogEventListener;

    #@0
    .prologue
    .line 1134
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->eventListeners:Ljava/util/Set;

    #@2
    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    #@5
    .line 1133
    return-void
.end method

.method public declared-synchronized requestConsumed()V
    .locals 4

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 1158
    :try_start_0
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getRemoteSeqNumber()J

    #@4
    move-result-wide v0

    #@5
    const-wide/16 v2, 0x1

    #@7
    add-long/2addr v0, v2

    #@8
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@b
    move-result-object v0

    #@c
    iput-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->nextSeqno:Ljava/lang/Long;

    #@e
    .line 1160
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@10
    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    #@13
    move-result v0

    #@14
    if-eqz v0, :cond_0

    #@16
    .line 1161
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@18
    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@1b
    move-result-object v0

    #@1c
    .line 1162
    new-instance v1, Ljava/lang/StringBuilder;

    #@1e
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@21
    const-string/jumbo v2, "Request Consumed -- next consumable Request Seqno = "

    #@24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v1

    #@28
    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPDialog;->nextSeqno:Ljava/lang/Long;

    #@2a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v1

    #@2e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@31
    move-result-object v1

    #@32
    .line 1161
    invoke-interface {v0, v1}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@35
    :cond_0
    monitor-exit p0

    #@36
    .line 1157
    return-void

    #@37
    :catchall_0
    move-exception v0

    #@38
    monitor-exit p0

    #@39
    throw v0
.end method

.method public resendAck()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    #@0
    .prologue
    .line 2236
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getLastAckSent()Lgov/nist/javax/sip/message/SIPRequest;

    #@3
    move-result-object v2

    #@4
    if-eqz v2, :cond_1

    #@6
    .line 2237
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getLastAckSent()Lgov/nist/javax/sip/message/SIPRequest;

    #@9
    move-result-object v2

    #@a
    const-string/jumbo v3, "Timestamp"

    #@d
    invoke-virtual {v2, v3}, Lgov/nist/javax/sip/message/SIPRequest;->getHeader(Ljava/lang/String;)Ljavax/sip/header/Header;

    #@10
    move-result-object v2

    #@11
    if-eqz v2, :cond_0

    #@13
    .line 2238
    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@15
    iget-boolean v2, v2, Lgov/nist/javax/sip/stack/SIPTransactionStack;->generateTimeStampHeader:Z

    #@17
    .line 2237
    if-eqz v2, :cond_0

    #@19
    .line 2239
    new-instance v1, Lgov/nist/javax/sip/header/TimeStamp;

    #@1b
    invoke-direct {v1}, Lgov/nist/javax/sip/header/TimeStamp;-><init>()V

    #@1e
    .line 2241
    .local v1, "ts":Lgov/nist/javax/sip/header/TimeStamp;
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@21
    move-result-wide v2

    #@22
    long-to-float v2, v2

    #@23
    invoke-virtual {v1, v2}, Lgov/nist/javax/sip/header/TimeStamp;->setTimeStamp(F)V

    #@26
    .line 2242
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getLastAckSent()Lgov/nist/javax/sip/message/SIPRequest;

    #@29
    move-result-object v2

    #@2a
    invoke-virtual {v2, v1}, Lgov/nist/javax/sip/message/SIPRequest;->setHeader(Ljavax/sip/header/Header;)V
    :try_end_0
    .catch Ljavax/sip/InvalidArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    #@2d
    .line 2247
    .end local v1    # "ts":Lgov/nist/javax/sip/header/TimeStamp;
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getLastAckSent()Lgov/nist/javax/sip/message/SIPRequest;

    #@30
    move-result-object v2

    #@31
    const/4 v3, 0x0

    #@32
    invoke-direct {p0, v2, v3}, Lgov/nist/javax/sip/stack/SIPDialog;->sendAck(Ljavax/sip/message/Request;Z)V

    #@35
    .line 2233
    :cond_1
    return-void

    #@36
    .line 2243
    .restart local v1    # "ts":Lgov/nist/javax/sip/header/TimeStamp;
    :catch_0
    move-exception v0

    #@37
    .local v0, "e":Ljavax/sip/InvalidArgumentException;
    goto :goto_0
.end method

.method public sendAck(Ljavax/sip/message/Request;)V
    .locals 1
    .param p1, "request"    # Ljavax/sip/message/Request;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    #@0
    .prologue
    .line 1844
    const/4 v0, 0x1

    #@1
    invoke-direct {p0, p1, v0}, Lgov/nist/javax/sip/stack/SIPDialog;->sendAck(Ljavax/sip/message/Request;Z)V

    #@4
    .line 1843
    return-void
.end method

.method public sendReliableProvisionalResponse(Ljavax/sip/message/Response;)V
    .locals 8
    .param p1, "relResponse"    # Ljavax/sip/message/Response;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    #@0
    .prologue
    .line 3008
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->isServer()Z

    #@3
    move-result v6

    #@4
    if-nez v6, :cond_0

    #@6
    .line 3009
    new-instance v6, Ljavax/sip/SipException;

    #@8
    const-string/jumbo v7, "Not a Server Dialog"

    #@b
    invoke-direct {v6, v7}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    #@e
    throw v6

    #@f
    :cond_0
    move-object v5, p1

    #@10
    .line 3012
    check-cast v5, Lgov/nist/javax/sip/message/SIPResponse;

    #@12
    .line 3014
    .local v5, "sipResponse":Lgov/nist/javax/sip/message/SIPResponse;
    invoke-interface {p1}, Ljavax/sip/message/Response;->getStatusCode()I

    #@15
    move-result v6

    #@16
    const/16 v7, 0x64

    #@18
    if-ne v6, v7, :cond_1

    #@1a
    .line 3015
    new-instance v6, Ljavax/sip/SipException;

    #@1c
    const-string/jumbo v7, "Cannot send 100 as a reliable provisional response"

    #@1f
    invoke-direct {v6, v7}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    #@22
    throw v6

    #@23
    .line 3017
    :cond_1
    invoke-interface {p1}, Ljavax/sip/message/Response;->getStatusCode()I

    #@26
    move-result v6

    #@27
    div-int/lit8 v6, v6, 0x64

    #@29
    const/4 v7, 0x2

    #@2a
    if-le v6, v7, :cond_2

    #@2c
    .line 3018
    new-instance v6, Ljavax/sip/SipException;

    #@2e
    .line 3019
    const-string/jumbo v7, "Response code is not a 1xx response - should be in the range 101 to 199 "

    #@31
    .line 3018
    invoke-direct {v6, v7}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    #@34
    throw v6

    #@35
    .line 3024
    :cond_2
    invoke-virtual {v5}, Lgov/nist/javax/sip/message/SIPResponse;->getToTag()Ljava/lang/String;

    #@38
    move-result-object v6

    #@39
    if-nez v6, :cond_3

    #@3b
    .line 3025
    new-instance v6, Ljavax/sip/SipException;

    #@3d
    .line 3026
    const-string/jumbo v7, "Badly formatted response -- To tag mandatory for Reliable Provisional Response"

    #@40
    .line 3025
    invoke-direct {v6, v7}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    #@43
    throw v6

    #@44
    .line 3028
    :cond_3
    const-string/jumbo v6, "Require"

    #@47
    invoke-interface {p1, v6}, Ljavax/sip/message/Response;->getHeaders(Ljava/lang/String;)Ljava/util/ListIterator;

    #@4a
    move-result-object v2

    #@4b
    .line 3029
    .local v2, "requireList":Ljava/util/ListIterator;
    const/4 v0, 0x0

    #@4c
    .line 3031
    .local v0, "found":Z
    if-eqz v2, :cond_5

    #@4e
    .line 3033
    :cond_4
    :goto_0
    invoke-interface {v2}, Ljava/util/ListIterator;->hasNext()Z

    #@51
    move-result v6

    #@52
    if-eqz v6, :cond_5

    #@54
    if-eqz v0, :cond_7

    #@56
    .line 3041
    :cond_5
    if-nez v0, :cond_6

    #@58
    .line 3042
    new-instance v1, Lgov/nist/javax/sip/header/Require;

    #@5a
    const-string/jumbo v6, "100rel"

    #@5d
    invoke-direct {v1, v6}, Lgov/nist/javax/sip/header/Require;-><init>(Ljava/lang/String;)V

    #@60
    .line 3043
    .local v1, "require":Lgov/nist/javax/sip/header/Require;
    invoke-interface {p1, v1}, Ljavax/sip/message/Response;->addHeader(Ljavax/sip/header/Header;)V

    #@63
    .line 3044
    iget-object v6, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@65
    invoke-virtual {v6}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    #@68
    move-result v6

    #@69
    if-eqz v6, :cond_6

    #@6b
    .line 3045
    iget-object v6, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@6d
    invoke-virtual {v6}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@70
    move-result-object v6

    #@71
    .line 3046
    const-string/jumbo v7, "Require header with optionTag 100rel is needed -- adding one"

    #@74
    .line 3045
    invoke-interface {v6, v7}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@77
    .line 3051
    .end local v1    # "require":Lgov/nist/javax/sip/header/Require;
    :cond_6
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getFirstTransaction()Ljavax/sip/Transaction;

    #@7a
    move-result-object v4

    #@7b
    check-cast v4, Lgov/nist/javax/sip/stack/SIPServerTransaction;

    #@7d
    .line 3057
    .local v4, "serverTransaction":Lgov/nist/javax/sip/stack/SIPServerTransaction;
    invoke-virtual {p0, v4, v5}, Lgov/nist/javax/sip/stack/SIPDialog;->setLastResponse(Lgov/nist/javax/sip/stack/SIPTransaction;Lgov/nist/javax/sip/message/SIPResponse;)V

    #@80
    .line 3059
    const/4 v6, 0x1

    #@81
    invoke-virtual {v5, v6}, Lgov/nist/javax/sip/message/SIPResponse;->getDialogId(Z)Ljava/lang/String;

    #@84
    move-result-object v6

    #@85
    invoke-virtual {p0, v6}, Lgov/nist/javax/sip/stack/SIPDialog;->setDialogId(Ljava/lang/String;)V

    #@88
    .line 3061
    invoke-virtual {v4, p1}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->sendReliableProvisionalResponse(Ljavax/sip/message/Response;)V

    #@8b
    .line 3063
    invoke-virtual {p0, v4, p1}, Lgov/nist/javax/sip/stack/SIPDialog;->startRetransmitTimer(Lgov/nist/javax/sip/stack/SIPServerTransaction;Ljavax/sip/message/Response;)V

    #@8e
    .line 3007
    return-void

    #@8f
    .line 3034
    .end local v4    # "serverTransaction":Lgov/nist/javax/sip/stack/SIPServerTransaction;
    :cond_7
    invoke-interface {v2}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    #@92
    move-result-object v3

    #@93
    check-cast v3, Ljavax/sip/header/RequireHeader;

    #@95
    .line 3035
    .local v3, "rh":Ljavax/sip/header/RequireHeader;
    invoke-interface {v3}, Ljavax/sip/header/RequireHeader;->getOptionTag()Ljava/lang/String;

    #@98
    move-result-object v6

    #@99
    const-string/jumbo v7, "100rel"

    #@9c
    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@9f
    move-result v6

    #@a0
    if-eqz v6, :cond_4

    #@a2
    .line 3036
    const/4 v0, 0x1

    #@a3
    goto :goto_0
.end method

.method public sendRequest(Ljavax/sip/ClientTransaction;)V
    .locals 1
    .param p1, "clientTransactionId"    # Ljavax/sip/ClientTransaction;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/TransactionDoesNotExistException;,
            Ljavax/sip/SipException;
        }
    .end annotation

    #@0
    .prologue
    .line 2009
    iget-boolean v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->isBackToBackUserAgent:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    const/4 v0, 0x0

    #@5
    :goto_0
    invoke-virtual {p0, p1, v0}, Lgov/nist/javax/sip/stack/SIPDialog;->sendRequest(Ljavax/sip/ClientTransaction;Z)V

    #@8
    .line 2008
    return-void

    #@9
    .line 2009
    :cond_0
    const/4 v0, 0x1

    #@a
    goto :goto_0
.end method

.method public sendRequest(Ljavax/sip/ClientTransaction;Z)V
    .locals 18
    .param p1, "clientTransactionId"    # Ljavax/sip/ClientTransaction;
    .param p2, "allowInterleaving"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/TransactionDoesNotExistException;,
            Ljavax/sip/SipException;
        }
    .end annotation

    #@0
    .prologue
    .line 2015
    if-nez p2, :cond_0

    #@2
    .line 2016
    invoke-interface/range {p1 .. p1}, Ljavax/sip/ClientTransaction;->getRequest()Ljavax/sip/message/Request;

    #@5
    move-result-object v14

    #@6
    invoke-interface {v14}, Ljavax/sip/message/Request;->getMethod()Ljava/lang/String;

    #@9
    move-result-object v14

    #@a
    const-string/jumbo v15, "INVITE"

    #@d
    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@10
    move-result v14

    #@11
    .line 2015
    if-eqz v14, :cond_0

    #@13
    .line 2017
    new-instance v14, Ljava/lang/Thread;

    #@15
    new-instance v15, Lgov/nist/javax/sip/stack/SIPDialog$ReInviteSender;

    #@17
    move-object/from16 v0, p0

    #@19
    move-object/from16 v1, p1

    #@1b
    invoke-direct {v15, v0, v1}, Lgov/nist/javax/sip/stack/SIPDialog$ReInviteSender;-><init>(Lgov/nist/javax/sip/stack/SIPDialog;Ljavax/sip/ClientTransaction;)V

    #@1e
    invoke-direct {v14, v15}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    #@21
    invoke-virtual {v14}, Ljava/lang/Thread;->start()V

    #@24
    .line 2018
    return-void

    #@25
    :cond_0
    move-object/from16 v14, p1

    #@27
    .line 2021
    check-cast v14, Lgov/nist/javax/sip/stack/SIPClientTransaction;

    #@29
    invoke-virtual {v14}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getOriginalRequest()Lgov/nist/javax/sip/message/SIPRequest;

    #@2c
    move-result-object v2

    #@2d
    .line 2024
    .local v2, "dialogRequest":Lgov/nist/javax/sip/message/SIPRequest;
    move-object/from16 v0, p0

    #@2f
    iget-object v14, v0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@31
    invoke-virtual {v14}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    #@34
    move-result v14

    #@35
    if-eqz v14, :cond_1

    #@37
    .line 2025
    move-object/from16 v0, p0

    #@39
    iget-object v14, v0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@3b
    invoke-virtual {v14}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@3e
    move-result-object v14

    #@3f
    .line 2026
    new-instance v15, Ljava/lang/StringBuilder;

    #@41
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    #@44
    const-string/jumbo v16, "dialog.sendRequest  dialog = "

    #@47
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v15

    #@4b
    move-object/from16 v0, p0

    #@4d
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@50
    move-result-object v15

    #@51
    const-string/jumbo v16, "\ndialogRequest = \n"

    #@54
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@57
    move-result-object v15

    #@58
    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@5b
    move-result-object v15

    #@5c
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5f
    move-result-object v15

    #@60
    .line 2025
    invoke-interface {v14, v15}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@63
    .line 2029
    :cond_1
    if-nez p1, :cond_2

    #@65
    .line 2030
    new-instance v14, Ljava/lang/NullPointerException;

    #@67
    const-string/jumbo v15, "null parameter"

    #@6a
    invoke-direct {v14, v15}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@6d
    throw v14

    #@6e
    .line 2032
    :cond_2
    invoke-virtual {v2}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    #@71
    move-result-object v14

    #@72
    const-string/jumbo v15, "ACK"

    #@75
    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@78
    move-result v14

    #@79
    if-nez v14, :cond_3

    #@7b
    .line 2033
    invoke-virtual {v2}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    #@7e
    move-result-object v14

    #@7f
    const-string/jumbo v15, "CANCEL"

    #@82
    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@85
    move-result v14

    #@86
    .line 2032
    if-eqz v14, :cond_4

    #@88
    .line 2034
    :cond_3
    new-instance v14, Ljavax/sip/SipException;

    #@8a
    new-instance v15, Ljava/lang/StringBuilder;

    #@8c
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    #@8f
    const-string/jumbo v16, "Bad Request Method. "

    #@92
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@95
    move-result-object v15

    #@96
    invoke-virtual {v2}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    #@99
    move-result-object v16

    #@9a
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9d
    move-result-object v15

    #@9e
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a1
    move-result-object v15

    #@a2
    invoke-direct {v14, v15}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    #@a5
    throw v14

    #@a6
    .line 2037
    :cond_4
    move-object/from16 v0, p0

    #@a8
    iget-boolean v14, v0, Lgov/nist/javax/sip/stack/SIPDialog;->byeSent:Z

    #@aa
    if-eqz v14, :cond_5

    #@ac
    invoke-virtual/range {p0 .. p0}, Lgov/nist/javax/sip/stack/SIPDialog;->isTerminatedOnBye()Z

    #@af
    move-result v14

    #@b0
    if-eqz v14, :cond_5

    #@b2
    invoke-virtual {v2}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    #@b5
    move-result-object v14

    #@b6
    const-string/jumbo v15, "BYE"

    #@b9
    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@bc
    move-result v14

    #@bd
    if-eqz v14, :cond_8

    #@bf
    .line 2043
    :cond_5
    invoke-virtual {v2}, Lgov/nist/javax/sip/message/SIPRequest;->getTopmostVia()Lgov/nist/javax/sip/header/Via;

    #@c2
    move-result-object v14

    #@c3
    if-nez v14, :cond_6

    #@c5
    move-object/from16 v14, p1

    #@c7
    .line 2044
    check-cast v14, Lgov/nist/javax/sip/stack/SIPClientTransaction;

    #@c9
    invoke-virtual {v14}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getOutgoingViaHeader()Lgov/nist/javax/sip/header/Via;

    #@cc
    move-result-object v13

    #@cd
    .line 2045
    .local v13, "via":Lgov/nist/javax/sip/header/Via;
    invoke-virtual {v2, v13}, Lgov/nist/javax/sip/message/SIPRequest;->addHeader(Ljavax/sip/header/Header;)V

    #@d0
    .line 2047
    .end local v13    # "via":Lgov/nist/javax/sip/header/Via;
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getCallId()Ljavax/sip/header/CallIdHeader;

    #@d3
    move-result-object v14

    #@d4
    invoke-interface {v14}, Ljavax/sip/header/CallIdHeader;->getCallId()Ljava/lang/String;

    #@d7
    move-result-object v14

    #@d8
    invoke-virtual {v2}, Lgov/nist/javax/sip/message/SIPRequest;->getCallId()Ljavax/sip/header/CallIdHeader;

    #@db
    move-result-object v15

    #@dc
    invoke-interface {v15}, Ljavax/sip/header/CallIdHeader;->getCallId()Ljava/lang/String;

    #@df
    move-result-object v15

    #@e0
    invoke-virtual {v14, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@e3
    move-result v14

    #@e4
    if-nez v14, :cond_a

    #@e6
    .line 2049
    move-object/from16 v0, p0

    #@e8
    iget-object v14, v0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@ea
    invoke-virtual {v14}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    #@ed
    move-result v14

    #@ee
    if-eqz v14, :cond_7

    #@f0
    .line 2050
    move-object/from16 v0, p0

    #@f2
    iget-object v14, v0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@f4
    invoke-virtual {v14}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@f7
    move-result-object v14

    #@f8
    new-instance v15, Ljava/lang/StringBuilder;

    #@fa
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    #@fd
    const-string/jumbo v16, "CallID "

    #@100
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@103
    move-result-object v15

    #@104
    invoke-virtual/range {p0 .. p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getCallId()Ljavax/sip/header/CallIdHeader;

    #@107
    move-result-object v16

    #@108
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@10b
    move-result-object v15

    #@10c
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@10f
    move-result-object v15

    #@110
    invoke-interface {v14, v15}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;)V

    #@113
    .line 2051
    move-object/from16 v0, p0

    #@115
    iget-object v14, v0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@117
    invoke-virtual {v14}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@11a
    move-result-object v14

    #@11b
    .line 2052
    new-instance v15, Ljava/lang/StringBuilder;

    #@11d
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    #@120
    const-string/jumbo v16, "RequestCallID = "

    #@123
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@126
    move-result-object v15

    #@127
    invoke-virtual {v2}, Lgov/nist/javax/sip/message/SIPRequest;->getCallId()Ljavax/sip/header/CallIdHeader;

    #@12a
    move-result-object v16

    #@12b
    invoke-interface/range {v16 .. v16}, Ljavax/sip/header/CallIdHeader;->getCallId()Ljava/lang/String;

    #@12e
    move-result-object v16

    #@12f
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@132
    move-result-object v15

    #@133
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@136
    move-result-object v15

    #@137
    .line 2051
    invoke-interface {v14, v15}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;)V

    #@13a
    .line 2053
    move-object/from16 v0, p0

    #@13c
    iget-object v14, v0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@13e
    invoke-virtual {v14}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@141
    move-result-object v14

    #@142
    new-instance v15, Ljava/lang/StringBuilder;

    #@144
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    #@147
    const-string/jumbo v16, "dialog =  "

    #@14a
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14d
    move-result-object v15

    #@14e
    move-object/from16 v0, p0

    #@150
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@153
    move-result-object v15

    #@154
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@157
    move-result-object v15

    #@158
    invoke-interface {v14, v15}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;)V

    #@15b
    .line 2055
    :cond_7
    new-instance v14, Ljavax/sip/SipException;

    #@15d
    const-string/jumbo v15, "Bad call ID in request"

    #@160
    invoke-direct {v14, v15}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    #@163
    throw v14

    #@164
    .line 2038
    :cond_8
    move-object/from16 v0, p0

    #@166
    iget-object v14, v0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@168
    invoke-virtual {v14}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    #@16b
    move-result v14

    #@16c
    if-eqz v14, :cond_9

    #@16e
    .line 2039
    move-object/from16 v0, p0

    #@170
    iget-object v14, v0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@172
    invoke-virtual {v14}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@175
    move-result-object v14

    #@176
    new-instance v15, Ljava/lang/StringBuilder;

    #@178
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    #@17b
    const-string/jumbo v16, "BYE already sent for "

    #@17e
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@181
    move-result-object v15

    #@182
    move-object/from16 v0, p0

    #@184
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@187
    move-result-object v15

    #@188
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@18b
    move-result-object v15

    #@18c
    invoke-interface {v14, v15}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;)V

    #@18f
    .line 2040
    :cond_9
    new-instance v14, Ljavax/sip/SipException;

    #@191
    const-string/jumbo v15, "Cannot send request; BYE already sent"

    #@194
    invoke-direct {v14, v15}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    #@197
    throw v14

    #@198
    :cond_a
    move-object/from16 v14, p1

    #@19a
    .line 2059
    check-cast v14, Lgov/nist/javax/sip/stack/SIPClientTransaction;

    #@19c
    move-object/from16 v0, p0

    #@19e
    iget-object v15, v0, Lgov/nist/javax/sip/stack/SIPDialog;->dialogId:Ljava/lang/String;

    #@1a0
    move-object/from16 v0, p0

    #@1a2
    invoke-virtual {v14, v0, v15}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->setDialog(Lgov/nist/javax/sip/stack/SIPDialog;Ljava/lang/String;)V

    #@1a5
    move-object/from16 v14, p1

    #@1a7
    .line 2061
    check-cast v14, Lgov/nist/javax/sip/stack/SIPTransaction;

    #@1a9
    move-object/from16 v0, p0

    #@1ab
    invoke-virtual {v0, v14}, Lgov/nist/javax/sip/stack/SIPDialog;->addTransaction(Lgov/nist/javax/sip/stack/SIPTransaction;)V

    #@1ae
    move-object/from16 v14, p1

    #@1b0
    .line 2064
    check-cast v14, Lgov/nist/javax/sip/stack/SIPClientTransaction;

    #@1b2
    const/4 v15, 0x1

    #@1b3
    iput-boolean v15, v14, Lgov/nist/javax/sip/stack/SIPClientTransaction;->isMapped:Z

    #@1b5
    .line 2066
    invoke-virtual {v2}, Lgov/nist/javax/sip/message/SIPRequest;->getFrom()Ljavax/sip/header/FromHeader;

    #@1b8
    move-result-object v7

    #@1b9
    check-cast v7, Lgov/nist/javax/sip/header/From;

    #@1bb
    .line 2067
    .local v7, "from":Lgov/nist/javax/sip/header/From;
    invoke-virtual {v2}, Lgov/nist/javax/sip/message/SIPRequest;->getTo()Ljavax/sip/header/ToHeader;

    #@1be
    move-result-object v12

    #@1bf
    check-cast v12, Lgov/nist/javax/sip/header/To;

    #@1c1
    .line 2071
    .local v12, "to":Lgov/nist/javax/sip/header/To;
    invoke-virtual/range {p0 .. p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getLocalTag()Ljava/lang/String;

    #@1c4
    move-result-object v14

    #@1c5
    if-eqz v14, :cond_b

    #@1c7
    invoke-virtual {v7}, Lgov/nist/javax/sip/header/From;->getTag()Ljava/lang/String;

    #@1ca
    move-result-object v14

    #@1cb
    if-eqz v14, :cond_b

    #@1cd
    .line 2072
    invoke-virtual {v7}, Lgov/nist/javax/sip/header/From;->getTag()Ljava/lang/String;

    #@1d0
    move-result-object v14

    #@1d1
    invoke-virtual/range {p0 .. p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getLocalTag()Ljava/lang/String;

    #@1d4
    move-result-object v15

    #@1d5
    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1d8
    move-result v14

    #@1d9
    if-eqz v14, :cond_d

    #@1db
    .line 2075
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getRemoteTag()Ljava/lang/String;

    #@1de
    move-result-object v14

    #@1df
    if-eqz v14, :cond_c

    #@1e1
    invoke-virtual {v12}, Lgov/nist/javax/sip/header/To;->getTag()Ljava/lang/String;

    #@1e4
    move-result-object v14

    #@1e5
    if-eqz v14, :cond_c

    #@1e7
    .line 2076
    invoke-virtual {v12}, Lgov/nist/javax/sip/header/To;->getTag()Ljava/lang/String;

    #@1ea
    move-result-object v14

    #@1eb
    invoke-virtual/range {p0 .. p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getRemoteTag()Ljava/lang/String;

    #@1ee
    move-result-object v15

    #@1ef
    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1f2
    move-result v14

    #@1f3
    if-eqz v14, :cond_e

    #@1f5
    .line 2084
    :cond_c
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getLocalTag()Ljava/lang/String;

    #@1f8
    move-result-object v14

    #@1f9
    if-nez v14, :cond_10

    #@1fb
    invoke-virtual {v2}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    #@1fe
    move-result-object v14

    #@1ff
    const-string/jumbo v15, "NOTIFY"

    #@202
    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@205
    move-result v14

    #@206
    if-eqz v14, :cond_10

    #@208
    .line 2085
    invoke-virtual/range {p0 .. p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getMethod()Ljava/lang/String;

    #@20b
    move-result-object v14

    #@20c
    const-string/jumbo v15, "SUBSCRIBE"

    #@20f
    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@212
    move-result v14

    #@213
    if-nez v14, :cond_f

    #@215
    .line 2086
    new-instance v14, Ljavax/sip/SipException;

    #@217
    const-string/jumbo v15, "Trying to send NOTIFY without SUBSCRIBE Dialog!"

    #@21a
    invoke-direct {v14, v15}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    #@21d
    throw v14

    #@21e
    .line 2073
    :cond_d
    new-instance v14, Ljavax/sip/SipException;

    #@220
    new-instance v15, Ljava/lang/StringBuilder;

    #@222
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    #@225
    const-string/jumbo v16, "From tag mismatch expecting  "

    #@228
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22b
    move-result-object v15

    #@22c
    invoke-virtual/range {p0 .. p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getLocalTag()Ljava/lang/String;

    #@22f
    move-result-object v16

    #@230
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@233
    move-result-object v15

    #@234
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@237
    move-result-object v15

    #@238
    invoke-direct {v14, v15}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    #@23b
    throw v14

    #@23c
    .line 2077
    :cond_e
    move-object/from16 v0, p0

    #@23e
    iget-object v14, v0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@240
    invoke-virtual {v14}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    #@243
    move-result v14

    #@244
    if-eqz v14, :cond_c

    #@246
    .line 2078
    move-object/from16 v0, p0

    #@248
    iget-object v14, v0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@24a
    invoke-virtual {v14}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@24d
    move-result-object v14

    #@24e
    .line 2079
    new-instance v15, Ljava/lang/StringBuilder;

    #@250
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    #@253
    const-string/jumbo v16, "To header tag mismatch expecting "

    #@256
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@259
    move-result-object v15

    #@25a
    invoke-virtual/range {p0 .. p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getRemoteTag()Ljava/lang/String;

    #@25d
    move-result-object v16

    #@25e
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@261
    move-result-object v15

    #@262
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@265
    move-result-object v15

    #@266
    .line 2078
    invoke-interface {v14, v15}, Lgov/nist/core/StackLogger;->logWarning(Ljava/lang/String;)V

    #@269
    goto :goto_0

    #@26a
    .line 2087
    :cond_f
    invoke-virtual {v7}, Lgov/nist/javax/sip/header/From;->getTag()Ljava/lang/String;

    #@26d
    move-result-object v14

    #@26e
    move-object/from16 v0, p0

    #@270
    invoke-direct {v0, v14}, Lgov/nist/javax/sip/stack/SIPDialog;->setLocalTag(Ljava/lang/String;)V

    #@273
    .line 2092
    :cond_10
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getLocalTag()Ljava/lang/String;

    #@276
    move-result-object v14

    #@277
    if-eqz v14, :cond_11

    #@279
    .line 2093
    invoke-virtual/range {p0 .. p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getLocalTag()Ljava/lang/String;

    #@27c
    move-result-object v14

    #@27d
    invoke-virtual {v7, v14}, Lgov/nist/javax/sip/header/From;->setTag(Ljava/lang/String;)V

    #@280
    .line 2094
    :cond_11
    invoke-virtual/range {p0 .. p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getRemoteTag()Ljava/lang/String;

    #@283
    move-result-object v14

    #@284
    if-eqz v14, :cond_12

    #@286
    .line 2095
    invoke-virtual/range {p0 .. p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getRemoteTag()Ljava/lang/String;

    #@289
    move-result-object v14

    #@28a
    invoke-virtual {v12, v14}, Lgov/nist/javax/sip/header/To;->setTag(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_1

    #@28d
    :cond_12
    :goto_1
    move-object/from16 v14, p1

    #@28f
    .line 2103
    check-cast v14, Lgov/nist/javax/sip/stack/SIPClientTransaction;

    #@291
    invoke-virtual {v14}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getNextHop()Ljavax/sip/address/Hop;

    #@294
    move-result-object v8

    #@295
    .line 2104
    .local v8, "hop":Ljavax/sip/address/Hop;
    move-object/from16 v0, p0

    #@297
    iget-object v14, v0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@299
    invoke-virtual {v14}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    #@29c
    move-result v14

    #@29d
    if-eqz v14, :cond_13

    #@29f
    .line 2105
    move-object/from16 v0, p0

    #@2a1
    iget-object v14, v0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@2a3
    invoke-virtual {v14}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@2a6
    move-result-object v14

    #@2a7
    .line 2106
    new-instance v15, Ljava/lang/StringBuilder;

    #@2a9
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    #@2ac
    const-string/jumbo v16, "Using hop = "

    #@2af
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b2
    move-result-object v15

    #@2b3
    invoke-interface {v8}, Ljavax/sip/address/Hop;->getHost()Ljava/lang/String;

    #@2b6
    move-result-object v16

    #@2b7
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2ba
    move-result-object v15

    #@2bb
    const-string/jumbo v16, " : "

    #@2be
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c1
    move-result-object v15

    #@2c2
    invoke-interface {v8}, Ljavax/sip/address/Hop;->getPort()I

    #@2c5
    move-result v16

    #@2c6
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2c9
    move-result-object v15

    #@2ca
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2cd
    move-result-object v15

    #@2ce
    .line 2105
    invoke-interface {v14, v15}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@2d1
    .line 2110
    :cond_13
    :try_start_1
    move-object/from16 v0, p0

    #@2d3
    iget-object v14, v0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@2d5
    invoke-virtual/range {p0 .. p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getSipProvider()Lgov/nist/javax/sip/SipProviderImpl;

    #@2d8
    move-result-object v15

    #@2d9
    .line 2111
    invoke-interface {v8}, Ljavax/sip/address/Hop;->getTransport()Ljava/lang/String;

    #@2dc
    move-result-object v16

    #@2dd
    .line 2110
    invoke-virtual/range {v15 .. v16}, Lgov/nist/javax/sip/SipProviderImpl;->getListeningPoint(Ljava/lang/String;)Ljavax/sip/ListeningPoint;

    #@2e0
    move-result-object v15

    #@2e1
    invoke-interface {v15}, Ljavax/sip/ListeningPoint;->getIPAddress()Ljava/lang/String;

    #@2e4
    move-result-object v15

    #@2e5
    .line 2112
    move-object/from16 v0, p0

    #@2e7
    iget v0, v0, Lgov/nist/javax/sip/stack/SIPDialog;->firstTransactionPort:I

    #@2e9
    move/from16 v16, v0

    #@2eb
    .line 2110
    move/from16 v0, v16

    #@2ed
    invoke-virtual {v14, v15, v0, v8}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->createRawMessageChannel(Ljava/lang/String;ILjavax/sip/address/Hop;)Lgov/nist/javax/sip/stack/MessageChannel;

    #@2f0
    move-result-object v9

    #@2f1
    .line 2114
    .local v9, "messageChannel":Lgov/nist/javax/sip/stack/MessageChannel;
    move-object/from16 v0, p1

    #@2f3
    check-cast v0, Lgov/nist/javax/sip/stack/SIPClientTransaction;

    #@2f5
    move-object v14, v0

    #@2f6
    invoke-virtual {v14}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getMessageChannel()Lgov/nist/javax/sip/stack/MessageChannel;

    #@2f9
    move-result-object v10

    #@2fa
    .line 2120
    .local v10, "oldChannel":Lgov/nist/javax/sip/stack/MessageChannel;
    invoke-virtual {v10}, Lgov/nist/javax/sip/stack/MessageChannel;->uncache()V

    #@2fd
    .line 2123
    move-object/from16 v0, p0

    #@2ff
    iget-object v14, v0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@301
    iget-boolean v14, v14, Lgov/nist/javax/sip/stack/SIPTransactionStack;->cacheClientConnections:Z

    #@303
    if-nez v14, :cond_14

    #@305
    .line 2124
    iget v14, v10, Lgov/nist/javax/sip/stack/MessageChannel;->useCount:I

    #@307
    add-int/lit8 v14, v14, -0x1

    #@309
    iput v14, v10, Lgov/nist/javax/sip/stack/MessageChannel;->useCount:I

    #@30b
    .line 2125
    move-object/from16 v0, p0

    #@30d
    iget-object v14, v0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@30f
    invoke-virtual {v14}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    #@312
    move-result v14

    #@313
    if-eqz v14, :cond_14

    #@315
    .line 2126
    move-object/from16 v0, p0

    #@317
    iget-object v14, v0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@319
    invoke-virtual {v14}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@31c
    move-result-object v14

    #@31d
    .line 2127
    new-instance v15, Ljava/lang/StringBuilder;

    #@31f
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    #@322
    const-string/jumbo v16, "oldChannel: useCount "

    #@325
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@328
    move-result-object v15

    #@329
    iget v0, v10, Lgov/nist/javax/sip/stack/MessageChannel;->useCount:I

    #@32b
    move/from16 v16, v0

    #@32d
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@330
    move-result-object v15

    #@331
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@334
    move-result-object v15

    #@335
    .line 2126
    invoke-interface {v14, v15}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@338
    .line 2131
    :cond_14
    if-nez v9, :cond_1c

    #@33a
    .line 2145
    move-object/from16 v0, p0

    #@33c
    iget-object v14, v0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@33e
    invoke-virtual {v14}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    #@341
    move-result v14

    #@342
    if-eqz v14, :cond_15

    #@344
    .line 2146
    move-object/from16 v0, p0

    #@346
    iget-object v14, v0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@348
    invoke-virtual {v14}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@34b
    move-result-object v14

    #@34c
    .line 2147
    const-string/jumbo v15, "Null message channel using outbound proxy !"

    #@34f
    .line 2146
    invoke-interface {v14, v15}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@352
    .line 2148
    :cond_15
    move-object/from16 v0, p0

    #@354
    iget-object v14, v0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@356
    invoke-virtual {v14, v2}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getRouter(Lgov/nist/javax/sip/message/SIPRequest;)Ljavax/sip/address/Router;

    #@359
    move-result-object v14

    #@35a
    invoke-interface {v14}, Ljavax/sip/address/Router;->getOutboundProxy()Ljavax/sip/address/Hop;

    #@35d
    move-result-object v11

    #@35e
    .line 2149
    .local v11, "outboundProxy":Ljavax/sip/address/Hop;
    if-nez v11, :cond_17

    #@360
    .line 2150
    new-instance v14, Ljavax/sip/SipException;

    #@362
    new-instance v15, Ljava/lang/StringBuilder;

    #@364
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    #@367
    const-string/jumbo v16, "No route found! hop="

    #@36a
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36d
    move-result-object v15

    #@36e
    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@371
    move-result-object v15

    #@372
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@375
    move-result-object v15

    #@376
    invoke-direct {v14, v15}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    #@379
    throw v14
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    #@37a
    .line 2174
    .end local v9    # "messageChannel":Lgov/nist/javax/sip/stack/MessageChannel;
    .end local v10    # "oldChannel":Lgov/nist/javax/sip/stack/MessageChannel;
    .end local v11    # "outboundProxy":Ljavax/sip/address/Hop;
    :catch_0
    move-exception v4

    #@37b
    .line 2175
    .local v4, "ex":Ljava/lang/Exception;
    move-object/from16 v0, p0

    #@37d
    iget-object v14, v0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@37f
    invoke-virtual {v14}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    #@382
    move-result v14

    #@383
    if-eqz v14, :cond_16

    #@385
    .line 2176
    move-object/from16 v0, p0

    #@387
    iget-object v14, v0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@389
    invoke-virtual {v14}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@38c
    move-result-object v14

    #@38d
    invoke-interface {v14, v4}, Lgov/nist/core/StackLogger;->logException(Ljava/lang/Throwable;)V

    #@390
    .line 2177
    :cond_16
    new-instance v14, Ljavax/sip/SipException;

    #@392
    const-string/jumbo v15, "Could not create message channel"

    #@395
    invoke-direct {v14, v15, v4}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@398
    throw v14

    #@399
    .line 2097
    .end local v4    # "ex":Ljava/lang/Exception;
    .end local v8    # "hop":Ljavax/sip/address/Hop;
    :catch_1
    move-exception v5

    #@39a
    .line 2099
    .local v5, "ex":Ljava/text/ParseException;
    invoke-static {v5}, Lgov/nist/core/InternalErrorHandler;->handleException(Ljava/lang/Exception;)V

    #@39d
    goto/16 :goto_1

    #@39f
    .line 2151
    .end local v5    # "ex":Ljava/text/ParseException;
    .restart local v8    # "hop":Ljavax/sip/address/Hop;
    .restart local v9    # "messageChannel":Lgov/nist/javax/sip/stack/MessageChannel;
    .restart local v10    # "oldChannel":Lgov/nist/javax/sip/stack/MessageChannel;
    .restart local v11    # "outboundProxy":Ljavax/sip/address/Hop;
    :cond_17
    :try_start_2
    move-object/from16 v0, p0

    #@3a1
    iget-object v14, v0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@3a3
    invoke-virtual/range {p0 .. p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getSipProvider()Lgov/nist/javax/sip/SipProviderImpl;

    #@3a6
    move-result-object v15

    #@3a7
    .line 2152
    invoke-interface {v11}, Ljavax/sip/address/Hop;->getTransport()Ljava/lang/String;

    #@3aa
    move-result-object v16

    #@3ab
    .line 2151
    invoke-virtual/range {v15 .. v16}, Lgov/nist/javax/sip/SipProviderImpl;->getListeningPoint(Ljava/lang/String;)Ljavax/sip/ListeningPoint;

    #@3ae
    move-result-object v15

    #@3af
    invoke-interface {v15}, Ljavax/sip/ListeningPoint;->getIPAddress()Ljava/lang/String;

    #@3b2
    move-result-object v15

    #@3b3
    .line 2153
    move-object/from16 v0, p0

    #@3b5
    iget v0, v0, Lgov/nist/javax/sip/stack/SIPDialog;->firstTransactionPort:I

    #@3b7
    move/from16 v16, v0

    #@3b9
    .line 2151
    move/from16 v0, v16

    #@3bb
    invoke-virtual {v14, v15, v0, v11}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->createRawMessageChannel(Ljava/lang/String;ILjavax/sip/address/Hop;)Lgov/nist/javax/sip/stack/MessageChannel;

    #@3be
    move-result-object v9

    #@3bf
    .line 2154
    if-eqz v9, :cond_18

    #@3c1
    .line 2155
    move-object/from16 v0, p1

    #@3c3
    check-cast v0, Lgov/nist/javax/sip/stack/SIPClientTransaction;

    #@3c5
    move-object v14, v0

    #@3c6
    invoke-virtual {v14, v9}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->setEncapsulatedChannel(Lgov/nist/javax/sip/stack/MessageChannel;)V

    #@3c9
    .line 2168
    .end local v11    # "outboundProxy":Ljavax/sip/address/Hop;
    :cond_18
    :goto_2
    if-eqz v9, :cond_19

    #@3cb
    iget v14, v9, Lgov/nist/javax/sip/stack/MessageChannel;->useCount:I

    #@3cd
    add-int/lit8 v14, v14, 0x1

    #@3cf
    iput v14, v9, Lgov/nist/javax/sip/stack/MessageChannel;->useCount:I

    #@3d1
    .line 2171
    :cond_19
    move-object/from16 v0, p0

    #@3d3
    iget-object v14, v0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@3d5
    iget-boolean v14, v14, Lgov/nist/javax/sip/stack/SIPTransactionStack;->cacheClientConnections:Z

    #@3d7
    if-nez v14, :cond_1a

    #@3d9
    if-eqz v10, :cond_1a

    #@3db
    .line 2172
    iget v14, v10, Lgov/nist/javax/sip/stack/MessageChannel;->useCount:I

    #@3dd
    if-gtz v14, :cond_1a

    #@3df
    .line 2173
    invoke-virtual {v10}, Lgov/nist/javax/sip/stack/MessageChannel;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    #@3e2
    .line 2182
    :cond_1a
    :try_start_3
    move-object/from16 v0, p0

    #@3e4
    iget-wide v14, v0, Lgov/nist/javax/sip/stack/SIPDialog;->localSequenceNumber:J

    #@3e6
    const-wide/16 v16, 0x1

    #@3e8
    add-long v14, v14, v16

    #@3ea
    move-object/from16 v0, p0

    #@3ec
    iput-wide v14, v0, Lgov/nist/javax/sip/stack/SIPDialog;->localSequenceNumber:J

    #@3ee
    .line 2183
    invoke-virtual {v2}, Lgov/nist/javax/sip/message/SIPRequest;->getCSeq()Ljavax/sip/header/CSeqHeader;

    #@3f1
    move-result-object v14

    #@3f2
    invoke-virtual/range {p0 .. p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getLocalSeqNumber()J

    #@3f5
    move-result-wide v16

    #@3f6
    move-wide/from16 v0, v16

    #@3f8
    invoke-interface {v14, v0, v1}, Ljavax/sip/header/CSeqHeader;->setSeqNumber(J)V
    :try_end_3
    .catch Ljavax/sip/InvalidArgumentException; {:try_start_3 .. :try_end_3} :catch_2

    #@3fb
    .line 2189
    :goto_3
    :try_start_4
    check-cast p1, Lgov/nist/javax/sip/stack/SIPClientTransaction;

    #@3fd
    .end local p1    # "clientTransactionId":Ljavax/sip/ClientTransaction;
    move-object/from16 v0, p1

    #@3ff
    invoke-virtual {v0, v2}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->sendMessage(Lgov/nist/javax/sip/message/SIPMessage;)V

    #@402
    .line 2194
    invoke-virtual {v2}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    #@405
    move-result-object v14

    #@406
    const-string/jumbo v15, "BYE"

    #@409
    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@40c
    move-result v14

    #@40d
    if-eqz v14, :cond_1b

    #@40f
    .line 2195
    const/4 v14, 0x1

    #@410
    move-object/from16 v0, p0

    #@412
    iput-boolean v14, v0, Lgov/nist/javax/sip/stack/SIPDialog;->byeSent:Z

    #@414
    .line 2199
    invoke-virtual/range {p0 .. p0}, Lgov/nist/javax/sip/stack/SIPDialog;->isTerminatedOnBye()Z

    #@417
    move-result v14

    #@418
    if-eqz v14, :cond_1b

    #@41a
    .line 2200
    sget v14, Ljavax/sip/DialogState;->_TERMINATED:I

    #@41c
    move-object/from16 v0, p0

    #@41e
    invoke-virtual {v0, v14}, Lgov/nist/javax/sip/stack/SIPDialog;->setState(I)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    #@421
    .line 2013
    :cond_1b
    return-void

    #@422
    .line 2158
    .restart local p1    # "clientTransactionId":Ljavax/sip/ClientTransaction;
    :cond_1c
    :try_start_5
    move-object/from16 v0, p1

    #@424
    check-cast v0, Lgov/nist/javax/sip/stack/SIPClientTransaction;

    #@426
    move-object v14, v0

    #@427
    invoke-virtual {v14, v9}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->setEncapsulatedChannel(Lgov/nist/javax/sip/stack/MessageChannel;)V

    #@42a
    .line 2161
    move-object/from16 v0, p0

    #@42c
    iget-object v14, v0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@42e
    invoke-virtual {v14}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    #@431
    move-result v14

    #@432
    if-eqz v14, :cond_18

    #@434
    .line 2162
    move-object/from16 v0, p0

    #@436
    iget-object v14, v0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@438
    invoke-virtual {v14}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@43b
    move-result-object v14

    #@43c
    new-instance v15, Ljava/lang/StringBuilder;

    #@43e
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    #@441
    const-string/jumbo v16, "using message channel "

    #@444
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@447
    move-result-object v15

    #@448
    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@44b
    move-result-object v15

    #@44c
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@44f
    move-result-object v15

    #@450
    invoke-interface {v14, v15}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    #@453
    goto/16 :goto_2

    #@455
    .line 2184
    :catch_2
    move-exception v6

    #@456
    .line 2185
    .local v6, "ex":Ljavax/sip/InvalidArgumentException;
    move-object/from16 v0, p0

    #@458
    iget-object v14, v0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@45a
    invoke-virtual {v14}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@45d
    move-result-object v14

    #@45e
    invoke-virtual {v6}, Ljavax/sip/InvalidArgumentException;->getMessage()Ljava/lang/String;

    #@461
    move-result-object v15

    #@462
    invoke-interface {v14, v15}, Lgov/nist/core/StackLogger;->logFatalError(Ljava/lang/String;)V

    #@465
    goto :goto_3

    #@466
    .line 2203
    .end local v6    # "ex":Ljavax/sip/InvalidArgumentException;
    .end local p1    # "clientTransactionId":Ljavax/sip/ClientTransaction;
    :catch_3
    move-exception v3

    #@467
    .line 2204
    .local v3, "ex":Ljava/io/IOException;
    new-instance v14, Ljavax/sip/SipException;

    #@469
    const-string/jumbo v15, "error sending message"

    #@46c
    invoke-direct {v14, v15, v3}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@46f
    throw v14
.end method

.method public setApplicationData(Ljava/lang/Object;)V
    .locals 0
    .param p1, "applicationData"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 1141
    iput-object p1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->applicationData:Ljava/lang/Object;

    #@2
    .line 1140
    return-void
.end method

.method public setAssigned()V
    .locals 1

    #@0
    .prologue
    .line 3083
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->isAssigned:Z

    #@3
    .line 3082
    return-void
.end method

.method public setBackToBackUserAgent()V
    .locals 1

    #@0
    .prologue
    .line 3285
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->isBackToBackUserAgent:Z

    #@3
    .line 3284
    return-void
.end method

.method public setDialogId(Ljava/lang/String;)V
    .locals 0
    .param p1, "dialogId"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1365
    iput-object p1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->dialogId:Ljava/lang/String;

    #@2
    .line 1364
    return-void
.end method

.method setEarlyDialogId(Ljava/lang/String;)V
    .locals 0
    .param p1, "earlyDialogId"    # Ljava/lang/String;

    #@0
    .prologue
    .line 3181
    iput-object p1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->earlyDialogId:Ljava/lang/String;

    #@2
    .line 3180
    return-void
.end method

.method setEventHeader(Ljavax/sip/header/EventHeader;)V
    .locals 0
    .param p1, "eventHeader"    # Ljavax/sip/header/EventHeader;

    #@0
    .prologue
    .line 3299
    iput-object p1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->eventHeader:Ljavax/sip/header/EventHeader;

    #@2
    .line 3298
    return-void
.end method

.method public setLastResponse(Lgov/nist/javax/sip/stack/SIPTransaction;Lgov/nist/javax/sip/message/SIPResponse;)V
    .locals 12
    .param p1, "transaction"    # Lgov/nist/javax/sip/stack/SIPTransaction;
    .param p2, "sipResponse"    # Lgov/nist/javax/sip/message/SIPResponse;

    #@0
    .prologue
    .line 2552
    invoke-virtual {p2}, Lgov/nist/javax/sip/message/SIPResponse;->getCallId()Ljavax/sip/header/CallIdHeader;

    #@3
    move-result-object v7

    #@4
    iput-object v7, p0, Lgov/nist/javax/sip/stack/SIPDialog;->callIdHeader:Ljavax/sip/header/CallIdHeader;

    #@6
    .line 2553
    invoke-virtual {p2}, Lgov/nist/javax/sip/message/SIPResponse;->getStatusCode()I

    #@9
    move-result v6

    #@a
    .line 2554
    .local v6, "statusCode":I
    const/16 v7, 0x64

    #@c
    if-ne v6, v7, :cond_1

    #@e
    .line 2555
    iget-object v7, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@10
    invoke-virtual {v7}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    #@13
    move-result v7

    #@14
    if-eqz v7, :cond_0

    #@16
    .line 2556
    iget-object v7, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@18
    invoke-virtual {v7}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@1b
    move-result-object v7

    #@1c
    .line 2557
    const-string/jumbo v8, "Invalid status code - 100 in setLastResponse - ignoring"

    #@1f
    .line 2556
    invoke-interface {v7, v8}, Lgov/nist/core/StackLogger;->logWarning(Ljava/lang/String;)V

    #@22
    .line 2558
    :cond_0
    return-void

    #@23
    .line 2561
    :cond_1
    iput-object p2, p0, Lgov/nist/javax/sip/stack/SIPDialog;->lastResponse:Lgov/nist/javax/sip/message/SIPResponse;

    #@25
    .line 2562
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->setAssigned()V

    #@28
    .line 2564
    iget-object v7, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@2a
    invoke-virtual {v7}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    #@2d
    move-result v7

    #@2e
    if-eqz v7, :cond_2

    #@30
    .line 2565
    iget-object v7, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@32
    invoke-virtual {v7}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@35
    move-result-object v7

    #@36
    .line 2566
    new-instance v8, Ljava/lang/StringBuilder;

    #@38
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@3b
    const-string/jumbo v9, "sipDialog: setLastResponse:"

    #@3e
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v8

    #@42
    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v8

    #@46
    const-string/jumbo v9, " lastResponse = "

    #@49
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v8

    #@4d
    .line 2567
    iget-object v9, p0, Lgov/nist/javax/sip/stack/SIPDialog;->lastResponse:Lgov/nist/javax/sip/message/SIPResponse;

    #@4f
    invoke-virtual {v9}, Lgov/nist/javax/sip/message/SIPResponse;->getFirstLine()Ljava/lang/String;

    #@52
    move-result-object v9

    #@53
    .line 2566
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@56
    move-result-object v8

    #@57
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5a
    move-result-object v8

    #@5b
    .line 2565
    invoke-interface {v7, v8}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@5e
    .line 2569
    :cond_2
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getState()Ljavax/sip/DialogState;

    #@61
    move-result-object v7

    #@62
    sget-object v8, Ljavax/sip/DialogState;->TERMINATED:Ljavax/sip/DialogState;

    #@64
    if-ne v7, v8, :cond_5

    #@66
    .line 2570
    iget-object v7, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@68
    invoke-virtual {v7}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    #@6b
    move-result v7

    #@6c
    if-eqz v7, :cond_3

    #@6e
    .line 2571
    iget-object v7, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@70
    invoke-virtual {v7}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@73
    move-result-object v7

    #@74
    .line 2572
    const-string/jumbo v8, "sipDialog: setLastResponse -- dialog is terminated - ignoring "

    #@77
    .line 2571
    invoke-interface {v7, v8}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@7a
    .line 2576
    :cond_3
    invoke-virtual {p2}, Lgov/nist/javax/sip/message/SIPResponse;->getCSeq()Ljavax/sip/header/CSeqHeader;

    #@7d
    move-result-object v7

    #@7e
    invoke-interface {v7}, Ljavax/sip/header/CSeqHeader;->getMethod()Ljava/lang/String;

    #@81
    move-result-object v7

    #@82
    const-string/jumbo v8, "INVITE"

    #@85
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@88
    move-result v7

    #@89
    if-eqz v7, :cond_4

    #@8b
    const/16 v7, 0xc8

    #@8d
    if-ne v6, v7, :cond_4

    #@8f
    .line 2578
    invoke-virtual {p2}, Lgov/nist/javax/sip/message/SIPResponse;->getCSeq()Ljavax/sip/header/CSeqHeader;

    #@92
    move-result-object v7

    #@93
    invoke-interface {v7}, Ljavax/sip/header/CSeqHeader;->getSeqNumber()J

    #@96
    move-result-wide v8

    #@97
    .line 2579
    iget-wide v10, p0, Lgov/nist/javax/sip/stack/SIPDialog;->lastInviteOkReceived:J

    #@99
    .line 2578
    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->max(JJ)J

    #@9c
    move-result-wide v8

    #@9d
    iput-wide v8, p0, Lgov/nist/javax/sip/stack/SIPDialog;->lastInviteOkReceived:J

    #@9f
    .line 2581
    :cond_4
    return-void

    #@a0
    .line 2583
    :cond_5
    invoke-virtual {p2}, Lgov/nist/javax/sip/message/SIPResponse;->getCSeq()Ljavax/sip/header/CSeqHeader;

    #@a3
    move-result-object v7

    #@a4
    invoke-interface {v7}, Ljavax/sip/header/CSeqHeader;->getMethod()Ljava/lang/String;

    #@a7
    move-result-object v0

    #@a8
    .line 2584
    .local v0, "cseqMethod":Ljava/lang/String;
    iget-object v7, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@aa
    invoke-virtual {v7}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    #@ad
    move-result v7

    #@ae
    if-eqz v7, :cond_6

    #@b0
    .line 2585
    iget-object v7, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@b2
    invoke-virtual {v7}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@b5
    move-result-object v7

    #@b6
    invoke-interface {v7}, Lgov/nist/core/StackLogger;->logStackTrace()V

    #@b9
    .line 2586
    iget-object v7, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@bb
    invoke-virtual {v7}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@be
    move-result-object v7

    #@bf
    new-instance v8, Ljava/lang/StringBuilder;

    #@c1
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@c4
    const-string/jumbo v9, "cseqMethod = "

    #@c7
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ca
    move-result-object v8

    #@cb
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ce
    move-result-object v8

    #@cf
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d2
    move-result-object v8

    #@d3
    invoke-interface {v7, v8}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@d6
    .line 2587
    iget-object v7, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@d8
    invoke-virtual {v7}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@db
    move-result-object v7

    #@dc
    new-instance v8, Ljava/lang/StringBuilder;

    #@de
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@e1
    const-string/jumbo v9, "dialogState = "

    #@e4
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e7
    move-result-object v8

    #@e8
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getState()Ljavax/sip/DialogState;

    #@eb
    move-result-object v9

    #@ec
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@ef
    move-result-object v8

    #@f0
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@f3
    move-result-object v8

    #@f4
    invoke-interface {v7, v8}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@f7
    .line 2588
    iget-object v7, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@f9
    invoke-virtual {v7}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@fc
    move-result-object v7

    #@fd
    new-instance v8, Ljava/lang/StringBuilder;

    #@ff
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@102
    const-string/jumbo v9, "method = "

    #@105
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@108
    move-result-object v8

    #@109
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getMethod()Ljava/lang/String;

    #@10c
    move-result-object v9

    #@10d
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@110
    move-result-object v8

    #@111
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@114
    move-result-object v8

    #@115
    invoke-interface {v7, v8}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@118
    .line 2589
    iget-object v7, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@11a
    invoke-virtual {v7}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@11d
    move-result-object v7

    #@11e
    new-instance v8, Ljava/lang/StringBuilder;

    #@120
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@123
    const-string/jumbo v9, "statusCode = "

    #@126
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@129
    move-result-object v8

    #@12a
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@12d
    move-result-object v8

    #@12e
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@131
    move-result-object v8

    #@132
    invoke-interface {v7, v8}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@135
    .line 2590
    iget-object v7, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@137
    invoke-virtual {v7}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@13a
    move-result-object v7

    #@13b
    new-instance v8, Ljava/lang/StringBuilder;

    #@13d
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@140
    const-string/jumbo v9, "transaction = "

    #@143
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@146
    move-result-object v8

    #@147
    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@14a
    move-result-object v8

    #@14b
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@14e
    move-result-object v8

    #@14f
    invoke-interface {v7, v8}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@152
    .line 2596
    :cond_6
    if-eqz p1, :cond_7

    #@154
    instance-of v7, p1, Ljavax/sip/ClientTransaction;

    #@156
    if-eqz v7, :cond_15

    #@158
    .line 2597
    :cond_7
    iget-object v7, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@15a
    invoke-static {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isDialogCreated(Ljava/lang/String;)Z

    #@15d
    move-result v7

    #@15e
    if-eqz v7, :cond_11

    #@160
    .line 2599
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getState()Ljavax/sip/DialogState;

    #@163
    move-result-object v7

    #@164
    if-nez v7, :cond_a

    #@166
    div-int/lit8 v7, v6, 0x64

    #@168
    const/4 v8, 0x1

    #@169
    if-ne v7, v8, :cond_a

    #@16b
    .line 2604
    sget v7, Lgov/nist/javax/sip/stack/SIPDialog;->EARLY_STATE:I

    #@16d
    invoke-virtual {p0, v7}, Lgov/nist/javax/sip/stack/SIPDialog;->setState(I)V

    #@170
    .line 2605
    invoke-virtual {p2}, Lgov/nist/javax/sip/message/SIPResponse;->getToTag()Ljava/lang/String;

    #@173
    move-result-object v7

    #@174
    if-nez v7, :cond_8

    #@176
    iget-object v7, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@178
    iget-boolean v7, v7, Lgov/nist/javax/sip/stack/SIPTransactionStack;->rfc2543Supported:Z

    #@17a
    if-eqz v7, :cond_9

    #@17c
    .line 2606
    :cond_8
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getRemoteTag()Ljava/lang/String;

    #@17f
    move-result-object v7

    #@180
    if-nez v7, :cond_9

    #@182
    .line 2607
    invoke-virtual {p2}, Lgov/nist/javax/sip/message/SIPResponse;->getToTag()Ljava/lang/String;

    #@185
    move-result-object v7

    #@186
    invoke-direct {p0, v7}, Lgov/nist/javax/sip/stack/SIPDialog;->setRemoteTag(Ljava/lang/String;)V

    #@189
    .line 2608
    const/4 v7, 0x0

    #@18a
    invoke-virtual {p2, v7}, Lgov/nist/javax/sip/message/SIPResponse;->getDialogId(Z)Ljava/lang/String;

    #@18d
    move-result-object v7

    #@18e
    invoke-virtual {p0, v7}, Lgov/nist/javax/sip/stack/SIPDialog;->setDialogId(Ljava/lang/String;)V

    #@191
    .line 2609
    iget-object v7, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@193
    invoke-virtual {v7, p0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->putDialog(Lgov/nist/javax/sip/stack/SIPDialog;)V

    #@196
    .line 2610
    invoke-direct {p0, p2}, Lgov/nist/javax/sip/stack/SIPDialog;->addRoute(Lgov/nist/javax/sip/message/SIPResponse;)V

    #@199
    .line 2675
    :cond_9
    :goto_0
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getState()Ljavax/sip/DialogState;

    #@19c
    move-result-object v7

    #@19d
    sget-object v8, Ljavax/sip/DialogState;->CONFIRMED:Ljavax/sip/DialogState;

    #@19f
    if-eq v7, v8, :cond_13

    #@1a1
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getState()Ljavax/sip/DialogState;

    #@1a4
    move-result-object v7

    #@1a5
    sget-object v8, Ljavax/sip/DialogState;->TERMINATED:Ljavax/sip/DialogState;

    #@1a7
    if-eq v7, v8, :cond_13

    #@1a9
    .line 2676
    iget-object v7, p0, Lgov/nist/javax/sip/stack/SIPDialog;->originalRequest:Lgov/nist/javax/sip/message/SIPRequest;

    #@1ab
    if-eqz v7, :cond_13

    #@1ad
    .line 2677
    iget-object v7, p0, Lgov/nist/javax/sip/stack/SIPDialog;->originalRequest:Lgov/nist/javax/sip/message/SIPRequest;

    #@1af
    invoke-virtual {v7}, Lgov/nist/javax/sip/message/SIPRequest;->getRecordRouteHeaders()Lgov/nist/javax/sip/header/RecordRouteList;

    #@1b2
    move-result-object v5

    #@1b3
    .line 2678
    .local v5, "rrList":Lgov/nist/javax/sip/header/RecordRouteList;
    if-eqz v5, :cond_13

    #@1b5
    .line 2679
    invoke-virtual {v5}, Lgov/nist/javax/sip/header/RecordRouteList;->size()I

    #@1b8
    move-result v7

    #@1b9
    invoke-virtual {v5, v7}, Lgov/nist/javax/sip/header/RecordRouteList;->listIterator(I)Ljava/util/ListIterator;

    #@1bc
    move-result-object v2

    #@1bd
    .line 2680
    .local v2, "it":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lgov/nist/javax/sip/header/RecordRoute;>;"
    :goto_1
    invoke-interface {v2}, Ljava/util/ListIterator;->hasPrevious()Z

    #@1c0
    move-result v7

    #@1c1
    if-eqz v7, :cond_13

    #@1c3
    .line 2681
    invoke-interface {v2}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    #@1c6
    move-result-object v4

    #@1c7
    check-cast v4, Lgov/nist/javax/sip/header/RecordRoute;

    #@1c9
    .line 2682
    .local v4, "rr":Lgov/nist/javax/sip/header/RecordRoute;
    iget-object v7, p0, Lgov/nist/javax/sip/stack/SIPDialog;->routeList:Lgov/nist/javax/sip/header/RouteList;

    #@1cb
    invoke-virtual {v7}, Lgov/nist/javax/sip/header/RouteList;->getFirst()Ljavax/sip/header/Header;

    #@1ce
    move-result-object v3

    #@1cf
    check-cast v3, Lgov/nist/javax/sip/header/Route;

    #@1d1
    .line 2683
    .local v3, "route":Lgov/nist/javax/sip/header/Route;
    if-eqz v3, :cond_13

    #@1d3
    invoke-virtual {v4}, Lgov/nist/javax/sip/header/RecordRoute;->getAddress()Ljavax/sip/address/Address;

    #@1d6
    move-result-object v7

    #@1d7
    invoke-virtual {v3}, Lgov/nist/javax/sip/header/Route;->getAddress()Ljavax/sip/address/Address;

    #@1da
    move-result-object v8

    #@1db
    invoke-interface {v7, v8}, Ljavax/sip/address/Address;->equals(Ljava/lang/Object;)Z

    #@1de
    move-result v7

    #@1df
    if-eqz v7, :cond_13

    #@1e1
    .line 2684
    iget-object v7, p0, Lgov/nist/javax/sip/stack/SIPDialog;->routeList:Lgov/nist/javax/sip/header/RouteList;

    #@1e3
    invoke-virtual {v7}, Lgov/nist/javax/sip/header/RouteList;->removeFirst()V

    #@1e6
    goto :goto_1

    #@1e7
    .line 2612
    .end local v2    # "it":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lgov/nist/javax/sip/header/RecordRoute;>;"
    .end local v3    # "route":Lgov/nist/javax/sip/header/Route;
    .end local v4    # "rr":Lgov/nist/javax/sip/header/RecordRoute;
    .end local v5    # "rrList":Lgov/nist/javax/sip/header/RecordRouteList;
    :cond_a
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getState()Ljavax/sip/DialogState;

    #@1ea
    move-result-object v7

    #@1eb
    if-eqz v7, :cond_c

    #@1ed
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getState()Ljavax/sip/DialogState;

    #@1f0
    move-result-object v7

    #@1f1
    sget-object v8, Ljavax/sip/DialogState;->EARLY:Ljavax/sip/DialogState;

    #@1f3
    invoke-virtual {v7, v8}, Ljavax/sip/DialogState;->equals(Ljava/lang/Object;)Z

    #@1f6
    move-result v7

    #@1f7
    if-eqz v7, :cond_c

    #@1f9
    .line 2613
    div-int/lit8 v7, v6, 0x64

    #@1fb
    const/4 v8, 0x1

    #@1fc
    if-ne v7, v8, :cond_c

    #@1fe
    .line 2619
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getMethod()Ljava/lang/String;

    #@201
    move-result-object v7

    #@202
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@205
    move-result v7

    #@206
    if-eqz v7, :cond_9

    #@208
    if-eqz p1, :cond_9

    #@20a
    .line 2620
    invoke-virtual {p2}, Lgov/nist/javax/sip/message/SIPResponse;->getToTag()Ljava/lang/String;

    #@20d
    move-result-object v7

    #@20e
    if-nez v7, :cond_b

    #@210
    iget-object v7, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@212
    iget-boolean v7, v7, Lgov/nist/javax/sip/stack/SIPTransactionStack;->rfc2543Supported:Z

    #@214
    .line 2619
    if-eqz v7, :cond_9

    #@216
    .line 2621
    :cond_b
    invoke-virtual {p2}, Lgov/nist/javax/sip/message/SIPResponse;->getToTag()Ljava/lang/String;

    #@219
    move-result-object v7

    #@21a
    invoke-direct {p0, v7}, Lgov/nist/javax/sip/stack/SIPDialog;->setRemoteTag(Ljava/lang/String;)V

    #@21d
    .line 2622
    const/4 v7, 0x0

    #@21e
    invoke-virtual {p2, v7}, Lgov/nist/javax/sip/message/SIPResponse;->getDialogId(Z)Ljava/lang/String;

    #@221
    move-result-object v7

    #@222
    invoke-virtual {p0, v7}, Lgov/nist/javax/sip/stack/SIPDialog;->setDialogId(Ljava/lang/String;)V

    #@225
    .line 2623
    iget-object v7, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@227
    invoke-virtual {v7, p0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->putDialog(Lgov/nist/javax/sip/stack/SIPDialog;)V

    #@22a
    .line 2624
    invoke-direct {p0, p2}, Lgov/nist/javax/sip/stack/SIPDialog;->addRoute(Lgov/nist/javax/sip/message/SIPResponse;)V

    #@22d
    goto/16 :goto_0

    #@22f
    .line 2626
    :cond_c
    div-int/lit8 v7, v6, 0x64

    #@231
    const/4 v8, 0x2

    #@232
    if-ne v7, v8, :cond_f

    #@234
    .line 2633
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getMethod()Ljava/lang/String;

    #@237
    move-result-object v7

    #@238
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@23b
    move-result v7

    #@23c
    if-eqz v7, :cond_e

    #@23e
    .line 2634
    invoke-virtual {p2}, Lgov/nist/javax/sip/message/SIPResponse;->getToTag()Ljava/lang/String;

    #@241
    move-result-object v7

    #@242
    if-nez v7, :cond_d

    #@244
    iget-object v7, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@246
    iget-boolean v7, v7, Lgov/nist/javax/sip/stack/SIPTransactionStack;->rfc2543Supported:Z

    #@248
    .line 2633
    if-eqz v7, :cond_e

    #@24a
    .line 2635
    :cond_d
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getState()Ljavax/sip/DialogState;

    #@24d
    move-result-object v7

    #@24e
    sget-object v8, Ljavax/sip/DialogState;->CONFIRMED:Ljavax/sip/DialogState;

    #@250
    if-eq v7, v8, :cond_e

    #@252
    .line 2636
    invoke-virtual {p2}, Lgov/nist/javax/sip/message/SIPResponse;->getToTag()Ljava/lang/String;

    #@255
    move-result-object v7

    #@256
    invoke-direct {p0, v7}, Lgov/nist/javax/sip/stack/SIPDialog;->setRemoteTag(Ljava/lang/String;)V

    #@259
    .line 2637
    const/4 v7, 0x0

    #@25a
    invoke-virtual {p2, v7}, Lgov/nist/javax/sip/message/SIPResponse;->getDialogId(Z)Ljava/lang/String;

    #@25d
    move-result-object v7

    #@25e
    invoke-virtual {p0, v7}, Lgov/nist/javax/sip/stack/SIPDialog;->setDialogId(Ljava/lang/String;)V

    #@261
    .line 2638
    iget-object v7, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@263
    invoke-virtual {v7, p0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->putDialog(Lgov/nist/javax/sip/stack/SIPDialog;)V

    #@266
    .line 2639
    invoke-direct {p0, p2}, Lgov/nist/javax/sip/stack/SIPDialog;->addRoute(Lgov/nist/javax/sip/message/SIPResponse;)V

    #@269
    .line 2641
    sget v7, Lgov/nist/javax/sip/stack/SIPDialog;->CONFIRMED_STATE:I

    #@26b
    invoke-virtual {p0, v7}, Lgov/nist/javax/sip/stack/SIPDialog;->setState(I)V

    #@26e
    .line 2645
    :cond_e
    const-string/jumbo v7, "INVITE"

    #@271
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@274
    move-result v7

    #@275
    if-eqz v7, :cond_9

    #@277
    .line 2646
    invoke-virtual {p2}, Lgov/nist/javax/sip/message/SIPResponse;->getCSeq()Ljavax/sip/header/CSeqHeader;

    #@27a
    move-result-object v7

    #@27b
    invoke-interface {v7}, Ljavax/sip/header/CSeqHeader;->getSeqNumber()J

    #@27e
    move-result-wide v8

    #@27f
    .line 2647
    iget-wide v10, p0, Lgov/nist/javax/sip/stack/SIPDialog;->lastInviteOkReceived:J

    #@281
    .line 2646
    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->max(JJ)J

    #@284
    move-result-wide v8

    #@285
    iput-wide v8, p0, Lgov/nist/javax/sip/stack/SIPDialog;->lastInviteOkReceived:J

    #@287
    goto/16 :goto_0

    #@289
    .line 2650
    :cond_f
    const/16 v7, 0x12c

    #@28b
    if-lt v6, v7, :cond_9

    #@28d
    .line 2651
    const/16 v7, 0x2bb

    #@28f
    if-gt v6, v7, :cond_9

    #@291
    .line 2652
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getState()Ljavax/sip/DialogState;

    #@294
    move-result-object v7

    #@295
    if-eqz v7, :cond_10

    #@297
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getMethod()Ljava/lang/String;

    #@29a
    move-result-object v7

    #@29b
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@29e
    move-result v7

    #@29f
    if-eqz v7, :cond_9

    #@2a1
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getState()Ljavax/sip/DialogState;

    #@2a4
    move-result-object v7

    #@2a5
    invoke-virtual {v7}, Ljavax/sip/DialogState;->getValue()I

    #@2a8
    move-result v7

    #@2a9
    .line 2653
    sget v8, Lgov/nist/javax/sip/stack/SIPDialog;->EARLY_STATE:I

    #@2ab
    .line 2652
    if-ne v7, v8, :cond_9

    #@2ad
    .line 2660
    :cond_10
    sget v7, Lgov/nist/javax/sip/stack/SIPDialog;->TERMINATED_STATE:I

    #@2af
    invoke-virtual {p0, v7}, Lgov/nist/javax/sip/stack/SIPDialog;->setState(I)V

    #@2b2
    goto/16 :goto_0

    #@2b4
    .line 2692
    :cond_11
    const-string/jumbo v7, "NOTIFY"

    #@2b7
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2ba
    move-result v7

    #@2bb
    if-eqz v7, :cond_14

    #@2bd
    .line 2693
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getMethod()Ljava/lang/String;

    #@2c0
    move-result-object v7

    #@2c1
    const-string/jumbo v8, "SUBSCRIBE"

    #@2c4
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2c7
    move-result v7

    #@2c8
    if-nez v7, :cond_12

    #@2ca
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getMethod()Ljava/lang/String;

    #@2cd
    move-result-object v7

    #@2ce
    .line 2694
    const-string/jumbo v8, "REFER"

    #@2d1
    .line 2693
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2d4
    move-result v7

    #@2d5
    .line 2692
    if-eqz v7, :cond_14

    #@2d7
    .line 2694
    :cond_12
    invoke-virtual {p2}, Lgov/nist/javax/sip/message/SIPResponse;->getStatusCode()I

    #@2da
    move-result v7

    #@2db
    div-int/lit8 v7, v7, 0x64

    #@2dd
    const/4 v8, 0x2

    #@2de
    if-ne v7, v8, :cond_14

    #@2e0
    .line 2695
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getState()Ljavax/sip/DialogState;

    #@2e3
    move-result-object v7

    #@2e4
    if-nez v7, :cond_14

    #@2e6
    .line 2697
    const/4 v7, 0x1

    #@2e7
    invoke-virtual {p2, v7}, Lgov/nist/javax/sip/message/SIPResponse;->getDialogId(Z)Ljava/lang/String;

    #@2ea
    move-result-object v7

    #@2eb
    invoke-virtual {p0, v7}, Lgov/nist/javax/sip/stack/SIPDialog;->setDialogId(Ljava/lang/String;)V

    #@2ee
    .line 2698
    iget-object v7, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@2f0
    invoke-virtual {v7, p0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->putDialog(Lgov/nist/javax/sip/stack/SIPDialog;)V

    #@2f3
    .line 2699
    sget v7, Lgov/nist/javax/sip/stack/SIPDialog;->CONFIRMED_STATE:I

    #@2f5
    invoke-virtual {p0, v7}, Lgov/nist/javax/sip/stack/SIPDialog;->setState(I)V

    #@2f8
    .line 2551
    :cond_13
    :goto_2
    return-void

    #@2f9
    .line 2701
    :cond_14
    const-string/jumbo v7, "BYE"

    #@2fc
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2ff
    move-result v7

    #@300
    if-eqz v7, :cond_13

    #@302
    div-int/lit8 v7, v6, 0x64

    #@304
    const/4 v8, 0x2

    #@305
    if-ne v7, v8, :cond_13

    #@307
    .line 2702
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->isTerminatedOnBye()Z

    #@30a
    move-result v7

    #@30b
    .line 2701
    if-eqz v7, :cond_13

    #@30d
    .line 2704
    sget v7, Lgov/nist/javax/sip/stack/SIPDialog;->TERMINATED_STATE:I

    #@30f
    invoke-virtual {p0, v7}, Lgov/nist/javax/sip/stack/SIPDialog;->setState(I)V

    #@312
    goto :goto_2

    #@313
    .line 2709
    :cond_15
    const-string/jumbo v7, "BYE"

    #@316
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@319
    move-result v7

    #@31a
    if-eqz v7, :cond_16

    #@31c
    div-int/lit8 v7, v6, 0x64

    #@31e
    const/4 v8, 0x2

    #@31f
    if-ne v7, v8, :cond_16

    #@321
    .line 2710
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->isTerminatedOnBye()Z

    #@324
    move-result v7

    #@325
    .line 2709
    if-eqz v7, :cond_16

    #@327
    .line 2715
    sget v7, Lgov/nist/javax/sip/stack/SIPDialog;->TERMINATED_STATE:I

    #@329
    invoke-virtual {p0, v7}, Lgov/nist/javax/sip/stack/SIPDialog;->setState(I)V

    #@32c
    goto :goto_2

    #@32d
    .line 2717
    :cond_16
    const/4 v1, 0x0

    #@32e
    .line 2719
    .local v1, "doPutDialog":Z
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getLocalTag()Ljava/lang/String;

    #@331
    move-result-object v7

    #@332
    if-nez v7, :cond_17

    #@334
    invoke-virtual {p2}, Lgov/nist/javax/sip/message/SIPResponse;->getTo()Ljavax/sip/header/ToHeader;

    #@337
    move-result-object v7

    #@338
    invoke-interface {v7}, Ljavax/sip/header/ToHeader;->getTag()Ljava/lang/String;

    #@33b
    move-result-object v7

    #@33c
    if-eqz v7, :cond_17

    #@33e
    .line 2720
    iget-object v7, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@340
    invoke-static {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isDialogCreated(Ljava/lang/String;)Z

    #@343
    move-result v7

    #@344
    .line 2719
    if-eqz v7, :cond_17

    #@346
    .line 2720
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getMethod()Ljava/lang/String;

    #@349
    move-result-object v7

    #@34a
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@34d
    move-result v7

    #@34e
    .line 2719
    if-eqz v7, :cond_17

    #@350
    .line 2721
    invoke-virtual {p2}, Lgov/nist/javax/sip/message/SIPResponse;->getTo()Ljavax/sip/header/ToHeader;

    #@353
    move-result-object v7

    #@354
    invoke-interface {v7}, Ljavax/sip/header/ToHeader;->getTag()Ljava/lang/String;

    #@357
    move-result-object v7

    #@358
    invoke-direct {p0, v7}, Lgov/nist/javax/sip/stack/SIPDialog;->setLocalTag(Ljava/lang/String;)V

    #@35b
    .line 2723
    const/4 v1, 0x1

    #@35c
    .line 2726
    :cond_17
    div-int/lit8 v7, v6, 0x64

    #@35e
    const/4 v8, 0x2

    #@35f
    if-eq v7, v8, :cond_1b

    #@361
    .line 2727
    div-int/lit8 v7, v6, 0x64

    #@363
    const/4 v8, 0x1

    #@364
    if-ne v7, v8, :cond_18

    #@366
    .line 2728
    if-eqz v1, :cond_13

    #@368
    .line 2730
    sget v7, Lgov/nist/javax/sip/stack/SIPDialog;->EARLY_STATE:I

    #@36a
    invoke-virtual {p0, v7}, Lgov/nist/javax/sip/stack/SIPDialog;->setState(I)V

    #@36d
    .line 2731
    const/4 v7, 0x1

    #@36e
    invoke-virtual {p2, v7}, Lgov/nist/javax/sip/message/SIPResponse;->getDialogId(Z)Ljava/lang/String;

    #@371
    move-result-object v7

    #@372
    invoke-virtual {p0, v7}, Lgov/nist/javax/sip/stack/SIPDialog;->setDialogId(Ljava/lang/String;)V

    #@375
    .line 2732
    iget-object v7, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@377
    invoke-virtual {v7, p0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->putDialog(Lgov/nist/javax/sip/stack/SIPDialog;)V

    #@37a
    goto/16 :goto_2

    #@37c
    .line 2744
    :cond_18
    const/16 v7, 0x1e9

    #@37e
    if-ne v6, v7, :cond_1a

    #@380
    .line 2745
    const-string/jumbo v7, "NOTIFY"

    #@383
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@386
    move-result v7

    #@387
    if-nez v7, :cond_19

    #@389
    .line 2746
    const-string/jumbo v7, "SUBSCRIBE"

    #@38c
    .line 2745
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@38f
    move-result v7

    #@390
    .line 2744
    if-eqz v7, :cond_1a

    #@392
    .line 2747
    :cond_19
    iget-object v7, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@394
    invoke-virtual {v7}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    #@397
    move-result v7

    #@398
    if-eqz v7, :cond_13

    #@39a
    .line 2748
    iget-object v7, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@39c
    invoke-virtual {v7}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@39f
    move-result-object v7

    #@3a0
    .line 2749
    const-string/jumbo v8, "RFC 3265 : Not setting dialog to TERMINATED for 489"

    #@3a3
    .line 2748
    invoke-interface {v7, v8}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@3a6
    goto/16 :goto_2

    #@3a8
    .line 2755
    :cond_1a
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->isReInvite()Z

    #@3ab
    move-result v7

    #@3ac
    if-nez v7, :cond_13

    #@3ae
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getState()Ljavax/sip/DialogState;

    #@3b1
    move-result-object v7

    #@3b2
    sget-object v8, Ljavax/sip/DialogState;->CONFIRMED:Ljavax/sip/DialogState;

    #@3b4
    if-eq v7, v8, :cond_13

    #@3b6
    .line 2756
    sget v7, Lgov/nist/javax/sip/stack/SIPDialog;->TERMINATED_STATE:I

    #@3b8
    invoke-virtual {p0, v7}, Lgov/nist/javax/sip/stack/SIPDialog;->setState(I)V

    #@3bb
    goto/16 :goto_2

    #@3bd
    .line 2767
    :cond_1b
    iget v7, p0, Lgov/nist/javax/sip/stack/SIPDialog;->dialogState:I

    #@3bf
    sget v8, Lgov/nist/javax/sip/stack/SIPDialog;->EARLY_STATE:I

    #@3c1
    if-gt v7, v8, :cond_1d

    #@3c3
    .line 2768
    const-string/jumbo v7, "INVITE"

    #@3c6
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3c9
    move-result v7

    #@3ca
    if-nez v7, :cond_1c

    #@3cc
    .line 2769
    const-string/jumbo v7, "SUBSCRIBE"

    #@3cf
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3d2
    move-result v7

    #@3d3
    .line 2768
    if-nez v7, :cond_1c

    #@3d5
    .line 2770
    const-string/jumbo v7, "REFER"

    #@3d8
    .line 2769
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3db
    move-result v7

    #@3dc
    .line 2767
    if-eqz v7, :cond_1d

    #@3de
    .line 2771
    :cond_1c
    sget v7, Lgov/nist/javax/sip/stack/SIPDialog;->CONFIRMED_STATE:I

    #@3e0
    invoke-virtual {p0, v7}, Lgov/nist/javax/sip/stack/SIPDialog;->setState(I)V

    #@3e3
    .line 2774
    :cond_1d
    if-eqz v1, :cond_1e

    #@3e5
    .line 2775
    const/4 v7, 0x1

    #@3e6
    invoke-virtual {p2, v7}, Lgov/nist/javax/sip/message/SIPResponse;->getDialogId(Z)Ljava/lang/String;

    #@3e9
    move-result-object v7

    #@3ea
    invoke-virtual {p0, v7}, Lgov/nist/javax/sip/stack/SIPDialog;->setDialogId(Ljava/lang/String;)V

    #@3ed
    .line 2776
    iget-object v7, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@3ef
    invoke-virtual {v7, p0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->putDialog(Lgov/nist/javax/sip/stack/SIPDialog;)V

    #@3f2
    .line 2782
    :cond_1e
    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPTransaction;->getState()Ljavax/sip/TransactionState;

    #@3f5
    move-result-object v7

    #@3f6
    sget-object v8, Ljavax/sip/TransactionState;->TERMINATED:Ljavax/sip/TransactionState;

    #@3f8
    if-eq v7, v8, :cond_13

    #@3fa
    .line 2783
    invoke-virtual {p2}, Lgov/nist/javax/sip/message/SIPResponse;->getStatusCode()I

    #@3fd
    move-result v7

    #@3fe
    const/16 v8, 0xc8

    #@400
    if-ne v7, v8, :cond_13

    #@402
    .line 2784
    const-string/jumbo v7, "INVITE"

    #@405
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@408
    move-result v7

    #@409
    .line 2782
    if-eqz v7, :cond_13

    #@40b
    .line 2785
    iget-boolean v7, p0, Lgov/nist/javax/sip/stack/SIPDialog;->isBackToBackUserAgent:Z

    #@40d
    .line 2782
    if-eqz v7, :cond_13

    #@40f
    .line 2790
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->takeAckSem()Z

    #@412
    move-result v7

    #@413
    if-nez v7, :cond_13

    #@415
    .line 2791
    iget-object v7, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@417
    invoke-virtual {v7}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    #@41a
    move-result v7

    #@41b
    if-eqz v7, :cond_1f

    #@41d
    .line 2792
    iget-object v7, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@41f
    invoke-virtual {v7}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@422
    move-result-object v7

    #@423
    .line 2793
    const-string/jumbo v8, "Delete dialog -- cannot acquire ackSem"

    #@426
    .line 2792
    invoke-interface {v7, v8}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@429
    .line 2795
    :cond_1f
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->delete()V

    #@42c
    .line 2796
    return-void
.end method

.method setReInviteFlag(Z)V
    .locals 0
    .param p1, "reInviteFlag"    # Z

    #@0
    .prologue
    .line 3313
    iput-boolean p1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->reInviteFlag:Z

    #@2
    .line 3312
    return-void
.end method

.method public setRemoteSequenceNumber(J)V
    .locals 3
    .param p1, "rCseq"    # J

    #@0
    .prologue
    .line 1642
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@2
    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 1643
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@a
    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@d
    move-result-object v0

    #@e
    new-instance v1, Ljava/lang/StringBuilder;

    #@10
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@13
    const-string/jumbo v2, "setRemoteSeqno "

    #@16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v1

    #@1e
    const-string/jumbo v2, "/"

    #@21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v1

    #@25
    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@28
    move-result-object v1

    #@29
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2c
    move-result-object v1

    #@2d
    invoke-interface {v0, v1}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@30
    .line 1644
    :cond_0
    iput-wide p1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->remoteSequenceNumber:J

    #@32
    .line 1641
    return-void
.end method

.method setRemoteTarget(Ljavax/sip/header/ContactHeader;)V
    .locals 3
    .param p1, "contact"    # Ljavax/sip/header/ContactHeader;

    #@0
    .prologue
    .line 813
    invoke-interface {p1}, Ljavax/sip/header/ContactHeader;->getAddress()Ljavax/sip/address/Address;

    #@3
    move-result-object v0

    #@4
    iput-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->remoteTarget:Ljavax/sip/address/Address;

    #@6
    .line 814
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@8
    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    #@b
    move-result v0

    #@c
    if-eqz v0, :cond_0

    #@e
    .line 815
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@10
    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@13
    move-result-object v0

    #@14
    new-instance v1, Ljava/lang/StringBuilder;

    #@16
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@19
    const-string/jumbo v2, "Dialog.setRemoteTarget: "

    #@1c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v1

    #@20
    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPDialog;->remoteTarget:Ljavax/sip/address/Address;

    #@22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v1

    #@26
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@29
    move-result-object v1

    #@2a
    invoke-interface {v0, v1}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@2d
    .line 816
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@2f
    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@32
    move-result-object v0

    #@33
    invoke-interface {v0}, Lgov/nist/core/StackLogger;->logStackTrace()V

    #@36
    .line 812
    :cond_0
    return-void
.end method

.method public setResponseTags(Lgov/nist/javax/sip/message/SIPResponse;)V
    .locals 3
    .param p1, "sipResponse"    # Lgov/nist/javax/sip/message/SIPResponse;

    #@0
    .prologue
    .line 2527
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getLocalTag()Ljava/lang/String;

    #@3
    move-result-object v1

    #@4
    if-nez v1, :cond_0

    #@6
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getRemoteTag()Ljava/lang/String;

    #@9
    move-result-object v1

    #@a
    if-eqz v1, :cond_1

    #@c
    .line 2528
    :cond_0
    return-void

    #@d
    .line 2530
    :cond_1
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPResponse;->getFromTag()Ljava/lang/String;

    #@10
    move-result-object v0

    #@11
    .line 2531
    .local v0, "responseFromTag":Ljava/lang/String;
    if-eqz v0, :cond_4

    #@13
    .line 2532
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getLocalTag()Ljava/lang/String;

    #@16
    move-result-object v1

    #@17
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1a
    move-result v1

    #@1b
    if-eqz v1, :cond_3

    #@1d
    .line 2533
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getRemoteTag()Ljava/lang/String;

    #@20
    move-result-object v1

    #@21
    invoke-virtual {p1, v1}, Lgov/nist/javax/sip/message/SIPResponse;->setToTag(Ljava/lang/String;)V

    #@24
    .line 2526
    :cond_2
    :goto_0
    return-void

    #@25
    .line 2534
    :cond_3
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getRemoteTag()Ljava/lang/String;

    #@28
    move-result-object v1

    #@29
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2c
    move-result v1

    #@2d
    if-eqz v1, :cond_2

    #@2f
    .line 2535
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getLocalTag()Ljava/lang/String;

    #@32
    move-result-object v1

    #@33
    invoke-virtual {p1, v1}, Lgov/nist/javax/sip/message/SIPResponse;->setToTag(Ljava/lang/String;)V

    #@36
    goto :goto_0

    #@37
    .line 2538
    :cond_4
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@39
    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    #@3c
    move-result v1

    #@3d
    if-eqz v1, :cond_2

    #@3f
    .line 2539
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@41
    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@44
    move-result-object v1

    #@45
    const-string/jumbo v2, "No from tag in response! Not RFC 3261 compatible."

    #@48
    invoke-interface {v1, v2}, Lgov/nist/core/StackLogger;->logWarning(Ljava/lang/String;)V

    #@4b
    goto :goto_0
.end method

.method protected setRetransmissionTicks()V
    .locals 1

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 2226
    iput v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->retransmissionTicksLeft:I

    #@3
    .line 2227
    iput v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->prevRetransmissionTicks:I

    #@5
    .line 2225
    return-void
.end method

.method setRouteList(Lgov/nist/javax/sip/header/RouteList;)V
    .locals 0
    .param p1, "routeList"    # Lgov/nist/javax/sip/header/RouteList;

    #@0
    .prologue
    .line 918
    iput-object p1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->routeList:Lgov/nist/javax/sip/header/RouteList;

    #@2
    .line 917
    return-void
.end method

.method setServerTransactionFlag(Z)V
    .locals 0
    .param p1, "serverTransactionFlag"    # Z

    #@0
    .prologue
    .line 3306
    iput-boolean p1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->serverTransactionFlag:Z

    #@2
    .line 3305
    return-void
.end method

.method public setSipProvider(Lgov/nist/javax/sip/SipProviderImpl;)V
    .locals 0
    .param p1, "sipProvider"    # Lgov/nist/javax/sip/SipProviderImpl;

    #@0
    .prologue
    .line 2516
    iput-object p1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipProvider:Lgov/nist/javax/sip/SipProviderImpl;

    #@2
    .line 2515
    return-void
.end method

.method setStack(Lgov/nist/javax/sip/stack/SIPTransactionStack;)V
    .locals 0
    .param p1, "sipStack"    # Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@0
    .prologue
    .line 1039
    iput-object p1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@2
    .line 1038
    return-void
.end method

.method public setState(I)V
    .locals 4
    .param p1, "state"    # I

    #@0
    .prologue
    .line 1213
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@2
    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 1214
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@a
    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@d
    move-result-object v0

    #@e
    .line 1215
    new-instance v1, Ljava/lang/StringBuilder;

    #@10
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@13
    const-string/jumbo v2, "Setting dialog state for "

    #@16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v1

    #@1e
    const-string/jumbo v2, "newState = "

    #@21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v1

    #@25
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@28
    move-result-object v1

    #@29
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2c
    move-result-object v1

    #@2d
    .line 1214
    invoke-interface {v0, v1}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@30
    .line 1216
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@32
    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@35
    move-result-object v0

    #@36
    invoke-interface {v0}, Lgov/nist/core/StackLogger;->logStackTrace()V

    #@39
    .line 1217
    const/4 v0, -0x1

    #@3a
    if-eq p1, v0, :cond_0

    #@3c
    iget v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->dialogState:I

    #@3e
    if-eq p1, v0, :cond_0

    #@40
    .line 1218
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@42
    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    #@45
    move-result v0

    #@46
    if-eqz v0, :cond_0

    #@48
    .line 1219
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@4a
    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@4d
    move-result-object v0

    #@4e
    .line 1220
    new-instance v1, Ljava/lang/StringBuilder;

    #@50
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@53
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@56
    move-result-object v1

    #@57
    const-string/jumbo v2, "  old dialog state is "

    #@5a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5d
    move-result-object v1

    #@5e
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getState()Ljavax/sip/DialogState;

    #@61
    move-result-object v2

    #@62
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@65
    move-result-object v1

    #@66
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@69
    move-result-object v1

    #@6a
    .line 1219
    invoke-interface {v0, v1}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@6d
    .line 1221
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@6f
    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@72
    move-result-object v0

    #@73
    .line 1222
    new-instance v1, Ljava/lang/StringBuilder;

    #@75
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@78
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@7b
    move-result-object v1

    #@7c
    const-string/jumbo v2, "  New dialog state is "

    #@7f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@82
    move-result-object v1

    #@83
    invoke-static {p1}, Ljavax/sip/DialogState;->getObject(I)Ljavax/sip/DialogState;

    #@86
    move-result-object v2

    #@87
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@8a
    move-result-object v1

    #@8b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8e
    move-result-object v1

    #@8f
    .line 1221
    invoke-interface {v0, v1}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@92
    .line 1226
    :cond_0
    iput p1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->dialogState:I

    #@94
    .line 1228
    sget v0, Lgov/nist/javax/sip/stack/SIPDialog;->TERMINATED_STATE:I

    #@96
    if-ne p1, v0, :cond_2

    #@98
    .line 1229
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@9a
    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getTimer()Ljava/util/Timer;

    #@9d
    move-result-object v0

    #@9e
    if-eqz v0, :cond_1

    #@a0
    .line 1230
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@a2
    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getTimer()Ljava/util/Timer;

    #@a5
    move-result-object v0

    #@a6
    new-instance v1, Lgov/nist/javax/sip/stack/SIPDialog$LingerTimer;

    #@a8
    invoke-direct {v1, p0}, Lgov/nist/javax/sip/stack/SIPDialog$LingerTimer;-><init>(Lgov/nist/javax/sip/stack/SIPDialog;)V

    #@ab
    const-wide/16 v2, 0x1f40

    #@ad
    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    #@b0
    .line 1232
    :cond_1
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->stopTimer()V

    #@b3
    .line 1212
    :cond_2
    return-void
.end method

.method public startRetransmitTimer(Lgov/nist/javax/sip/stack/SIPServerTransaction;Ljavax/sip/message/Response;)V
    .locals 2
    .param p1, "sipServerTx"    # Lgov/nist/javax/sip/stack/SIPServerTransaction;
    .param p2, "response"    # Ljavax/sip/message/Response;

    #@0
    .prologue
    .line 2814
    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getRequest()Ljavax/sip/message/Request;

    #@3
    move-result-object v0

    #@4
    invoke-interface {v0}, Ljavax/sip/message/Request;->getMethod()Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    const-string/jumbo v1, "INVITE"

    #@b
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@e
    move-result v0

    #@f
    if-eqz v0, :cond_0

    #@11
    .line 2815
    invoke-interface {p2}, Ljavax/sip/message/Response;->getStatusCode()I

    #@14
    move-result v0

    #@15
    div-int/lit8 v0, v0, 0x64

    #@17
    const/4 v1, 0x2

    #@18
    if-ne v0, v1, :cond_0

    #@1a
    .line 2816
    invoke-virtual {p0, p1}, Lgov/nist/javax/sip/stack/SIPDialog;->startTimer(Lgov/nist/javax/sip/stack/SIPServerTransaction;)V

    #@1d
    .line 2813
    :cond_0
    return-void
.end method

.method protected startTimer(Lgov/nist/javax/sip/stack/SIPServerTransaction;)V
    .locals 6
    .param p1, "transaction"    # Lgov/nist/javax/sip/stack/SIPServerTransaction;

    #@0
    .prologue
    .line 2269
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->timerTask:Lgov/nist/javax/sip/stack/SIPDialog$DialogTimerTask;

    #@2
    if-eqz v0, :cond_1

    #@4
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->timerTask:Lgov/nist/javax/sip/stack/SIPDialog$DialogTimerTask;

    #@6
    iget-object v0, v0, Lgov/nist/javax/sip/stack/SIPDialog$DialogTimerTask;->transaction:Lgov/nist/javax/sip/stack/SIPServerTransaction;

    #@8
    if-ne v0, p1, :cond_1

    #@a
    .line 2270
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@c
    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    #@f
    move-result v0

    #@10
    if-eqz v0, :cond_0

    #@12
    .line 2271
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@14
    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@17
    move-result-object v0

    #@18
    new-instance v1, Ljava/lang/StringBuilder;

    #@1a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1d
    const-string/jumbo v2, "Timer already running for "

    #@20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v1

    #@24
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getDialogId()Ljava/lang/String;

    #@27
    move-result-object v2

    #@28
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v1

    #@2c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2f
    move-result-object v1

    #@30
    invoke-interface {v0, v1}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@33
    .line 2272
    :cond_0
    return-void

    #@34
    .line 2274
    :cond_1
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@36
    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    #@39
    move-result v0

    #@3a
    if-eqz v0, :cond_2

    #@3c
    .line 2275
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@3e
    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@41
    move-result-object v0

    #@42
    new-instance v1, Ljava/lang/StringBuilder;

    #@44
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@47
    const-string/jumbo v2, "Starting dialog timer for "

    #@4a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v1

    #@4e
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getDialogId()Ljava/lang/String;

    #@51
    move-result-object v2

    #@52
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@55
    move-result-object v1

    #@56
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@59
    move-result-object v1

    #@5a
    invoke-interface {v0, v1}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@5d
    .line 2276
    :cond_2
    const/4 v0, 0x0

    #@5e
    iput-boolean v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->ackSeen:Z

    #@60
    .line 2278
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->acquireTimerTaskSem()V

    #@63
    .line 2280
    :try_start_0
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->timerTask:Lgov/nist/javax/sip/stack/SIPDialog$DialogTimerTask;

    #@65
    if-eqz v0, :cond_3

    #@67
    .line 2281
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->timerTask:Lgov/nist/javax/sip/stack/SIPDialog$DialogTimerTask;

    #@69
    iput-object p1, v0, Lgov/nist/javax/sip/stack/SIPDialog$DialogTimerTask;->transaction:Lgov/nist/javax/sip/stack/SIPServerTransaction;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6b
    .line 2288
    :goto_0
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->releaseTimerTaskSem()V

    #@6e
    .line 2291
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->setRetransmissionTicks()V

    #@71
    .line 2268
    return-void

    #@72
    .line 2283
    :cond_3
    :try_start_1
    new-instance v0, Lgov/nist/javax/sip/stack/SIPDialog$DialogTimerTask;

    #@74
    invoke-direct {v0, p0, p1}, Lgov/nist/javax/sip/stack/SIPDialog$DialogTimerTask;-><init>(Lgov/nist/javax/sip/stack/SIPDialog;Lgov/nist/javax/sip/stack/SIPServerTransaction;)V

    #@77
    iput-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->timerTask:Lgov/nist/javax/sip/stack/SIPDialog$DialogTimerTask;

    #@79
    .line 2284
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@7b
    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getTimer()Ljava/util/Timer;

    #@7e
    move-result-object v0

    #@7f
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->timerTask:Lgov/nist/javax/sip/stack/SIPDialog$DialogTimerTask;

    #@81
    const-wide/16 v2, 0x1f4

    #@83
    .line 2285
    const-wide/16 v4, 0x1f4

    #@85
    .line 2284
    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@88
    goto :goto_0

    #@89
    .line 2287
    :catchall_0
    move-exception v0

    #@8a
    .line 2288
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->releaseTimerTaskSem()V

    #@8d
    .line 2287
    throw v0
.end method

.method protected stopTimer()V
    .locals 2

    #@0
    .prologue
    .line 2300
    :try_start_0
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->acquireTimerTaskSem()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@3
    .line 2302
    :try_start_1
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->timerTask:Lgov/nist/javax/sip/stack/SIPDialog$DialogTimerTask;

    #@5
    if-eqz v1, :cond_0

    #@7
    .line 2303
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->timerTask:Lgov/nist/javax/sip/stack/SIPDialog$DialogTimerTask;

    #@9
    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPDialog$DialogTimerTask;->cancel()Z

    #@c
    .line 2304
    const/4 v1, 0x0

    #@d
    iput-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->timerTask:Lgov/nist/javax/sip/stack/SIPDialog$DialogTimerTask;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@f
    .line 2307
    :cond_0
    :try_start_2
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->releaseTimerTaskSem()V

    #@12
    .line 2298
    :goto_0
    return-void

    #@13
    .line 2306
    :catchall_0
    move-exception v1

    #@14
    .line 2307
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->releaseTimerTaskSem()V

    #@17
    .line 2306
    throw v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    #@18
    .line 2309
    :catch_0
    move-exception v0

    #@19
    .local v0, "ex":Ljava/lang/Exception;
    goto :goto_0
.end method

.method takeAckSem()Z
    .locals 6

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 3202
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@3
    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    #@6
    move-result v1

    #@7
    if-eqz v1, :cond_0

    #@9
    .line 3203
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@b
    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@e
    move-result-object v1

    #@f
    new-instance v2, Ljava/lang/StringBuilder;

    #@11
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@14
    const-string/jumbo v3, "[takeAckSem "

    #@17
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v2

    #@1b
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v2

    #@1f
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object v2

    #@23
    invoke-interface {v1, v2}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@26
    .line 3206
    :cond_0
    :try_start_0
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->ackSem:Ljava/util/concurrent/Semaphore;

    #@28
    const-wide/16 v2, 0x2

    #@2a
    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    #@2c
    invoke-virtual {v1, v2, v3, v4}, Ljava/util/concurrent/Semaphore;->tryAcquire(JLjava/util/concurrent/TimeUnit;)Z

    #@2f
    move-result v1

    #@30
    if-nez v1, :cond_3

    #@32
    .line 3207
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@34
    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    #@37
    move-result v1

    #@38
    if-eqz v1, :cond_1

    #@3a
    .line 3208
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@3c
    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@3f
    move-result-object v1

    #@40
    const-string/jumbo v2, "Cannot aquire ACK semaphore"

    #@43
    invoke-interface {v1, v2}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;)V

    #@46
    .line 3211
    :cond_1
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@48
    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    #@4b
    move-result v1

    #@4c
    if-eqz v1, :cond_2

    #@4e
    .line 3212
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@50
    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@53
    move-result-object v1

    #@54
    new-instance v2, Ljava/lang/StringBuilder;

    #@56
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@59
    const-string/jumbo v3, "Semaphore previously acquired at "

    #@5c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5f
    move-result-object v2

    #@60
    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPDialog;->stackTrace:Ljava/lang/String;

    #@62
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@65
    move-result-object v2

    #@66
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@69
    move-result-object v2

    #@6a
    invoke-interface {v1, v2}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@6d
    .line 3213
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@6f
    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@72
    move-result-object v1

    #@73
    invoke-interface {v1}, Lgov/nist/core/StackLogger;->logStackTrace()V

    #@76
    .line 3216
    :cond_2
    return v5

    #@77
    .line 3219
    :cond_3
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@79
    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    #@7c
    move-result v1

    #@7d
    if-eqz v1, :cond_4

    #@7f
    .line 3221
    invoke-direct {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->recordStackTrace()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    #@82
    .line 3229
    :cond_4
    const/4 v1, 0x1

    #@83
    return v1

    #@84
    .line 3224
    :catch_0
    move-exception v0

    #@85
    .line 3225
    .local v0, "ex":Ljava/lang/InterruptedException;
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@87
    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@8a
    move-result-object v1

    #@8b
    const-string/jumbo v2, "Cannot aquire ACK semaphore"

    #@8e
    invoke-interface {v1, v2}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;)V

    #@91
    .line 3226
    return v5
.end method

.method public terminateOnBye(Z)V
    .locals 0
    .param p1, "terminateFlag"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    #@0
    .prologue
    .line 3074
    iput-boolean p1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->terminateOnBye:Z

    #@2
    .line 3072
    return-void
.end method

.method declared-synchronized testAndSetIsDialogTerminatedEventDelivered()Z
    .locals 2

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 1108
    :try_start_0
    iget-boolean v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->dialogTerminatedEventDelivered:Z

    #@3
    .line 1109
    .local v0, "retval":Z
    const/4 v1, 0x1

    #@4
    iput-boolean v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->dialogTerminatedEventDelivered:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    monitor-exit p0

    #@7
    .line 1110
    return v0

    #@8
    .end local v0    # "retval":Z
    :catchall_0
    move-exception v1

    #@9
    monitor-exit p0

    #@a
    throw v1
.end method

.class public Lcom/android/internal/telephony/test/SimulatedCommands;
.super Lcom/android/internal/telephony/BaseCommands;
.source "SimulatedCommands.java"

# interfaces
.implements Lcom/android/internal/telephony/CommandsInterface;
.implements Lcom/android/internal/telephony/test/SimulatedRadioControl;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/test/SimulatedCommands$SimFdnState;,
        Lcom/android/internal/telephony/test/SimulatedCommands$SimLockState;
    }
.end annotation


# static fields
.field public static final DEFAULT_PIN1_ATTEMPT:I = 0x5

.field public static final DEFAULT_PIN2_ATTEMPT:I = 0x5

.field public static final DEFAULT_SIM_PIN2_CODE:Ljava/lang/String; = "5678"

.field public static final DEFAULT_SIM_PIN_CODE:Ljava/lang/String; = "1234"

.field public static final FAKE_ESN:Ljava/lang/String; = "1234"

.field public static final FAKE_IMEI:Ljava/lang/String; = "012345678901234"

.field public static final FAKE_IMEISV:Ljava/lang/String; = "99"

.field public static final FAKE_LONG_NAME:Ljava/lang/String; = "Fake long name"

.field public static final FAKE_MCC_MNC:Ljava/lang/String; = "310260"

.field public static final FAKE_MEID:Ljava/lang/String; = "1234"

.field public static final FAKE_SHORT_NAME:Ljava/lang/String; = "Fake short name"

.field private static final INITIAL_FDN_STATE:Lcom/android/internal/telephony/test/SimulatedCommands$SimFdnState;

.field private static final INITIAL_LOCK_STATE:Lcom/android/internal/telephony/test/SimulatedCommands$SimLockState;

.field private static final LOG_TAG:Ljava/lang/String; = "SimulatedCommands"

.field private static final SIM_PUK2_CODE:Ljava/lang/String; = "87654321"

.field private static final SIM_PUK_CODE:Ljava/lang/String; = "12345678"


# instance fields
.field private final getNetworkSelectionModeCallCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mAllowed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mCellInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/telephony/CellInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mChannelId:I

.field private mDataRadioTech:I

.field private mDataRegState:I

.field private mDcResponse:Lcom/android/internal/telephony/dataconnection/DataCallResponse;

.field private mDcSuccess:Z

.field private final mGetDataRegistrationStateCallCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final mGetOperatorCallCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final mGetVoiceRegistrationStateCallCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field mHandlerThread:Landroid/os/HandlerThread;

.field private mIccCardStatus:Lcom/android/internal/telephony/uicc/IccCardStatus;

.field private mIccIoResultForApduLogicalChannel:Lcom/android/internal/telephony/uicc/IccIoResult;

.field private mImei:Ljava/lang/String;

.field private mImeiSv:Ljava/lang/String;

.field private mImsRegState:[I

.field mNetworkType:I

.field mNextCallFailCause:I

.field mPausedResponseCount:I

.field mPausedResponses:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field

.field mPin1attemptsRemaining:I

.field mPin2Code:Ljava/lang/String;

.field mPin2UnlockAttempts:I

.field mPinCode:Ljava/lang/String;

.field mPinUnlockAttempts:I

.field mPuk2UnlockAttempts:I

.field mPukUnlockAttempts:I

.field private mSignalStrength:Landroid/telephony/SignalStrength;

.field mSimFdnEnabled:Z

.field mSimFdnEnabledState:Lcom/android/internal/telephony/test/SimulatedCommands$SimFdnState;

.field mSimLockEnabled:Z

.field mSimLockedState:Lcom/android/internal/telephony/test/SimulatedCommands$SimLockState;

.field mSsnNotifyOn:Z

.field private mVoiceRadioTech:I

.field private mVoiceRegState:I

.field simulatedCallState:Lcom/android/internal/telephony/test/SimulatedGsmCallState;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 77
    sget-object v0, Lcom/android/internal/telephony/test/SimulatedCommands$SimLockState;->NONE:Lcom/android/internal/telephony/test/SimulatedCommands$SimLockState;

    #@2
    sput-object v0, Lcom/android/internal/telephony/test/SimulatedCommands;->INITIAL_LOCK_STATE:Lcom/android/internal/telephony/test/SimulatedCommands$SimLockState;

    #@4
    .line 80
    sget-object v0, Lcom/android/internal/telephony/test/SimulatedCommands$SimFdnState;->NONE:Lcom/android/internal/telephony/test/SimulatedCommands$SimFdnState;

    #@6
    sput-object v0, Lcom/android/internal/telephony/test/SimulatedCommands;->INITIAL_FDN_STATE:Lcom/android/internal/telephony/test/SimulatedCommands$SimFdnState;

    #@8
    .line 59
    return-void
.end method

.method public constructor <init>()V
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x3

    #@1
    const/4 v2, 0x1

    #@2
    const/4 v3, 0x0

    #@3
    .line 135
    const/4 v1, 0x0

    #@4
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/BaseCommands;-><init>(Landroid/content/Context;)V

    #@7
    .line 105
    const/4 v1, 0x5

    #@8
    iput v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mPin1attemptsRemaining:I

    #@a
    .line 112
    iput-boolean v3, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mSsnNotifyOn:Z

    #@c
    .line 113
    iput v2, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mVoiceRegState:I

    #@e
    .line 114
    iput v4, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mVoiceRadioTech:I

    #@10
    .line 115
    iput v2, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mDataRegState:I

    #@12
    .line 116
    iput v4, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mDataRadioTech:I

    #@14
    .line 122
    const/4 v1, -0x1

    #@15
    iput v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mChannelId:I

    #@17
    .line 125
    new-instance v1, Ljava/util/ArrayList;

    #@19
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@1c
    iput-object v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mPausedResponses:Ljava/util/ArrayList;

    #@1e
    .line 127
    const/16 v1, 0x10

    #@20
    iput v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mNextCallFailCause:I

    #@22
    .line 129
    iput-boolean v2, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mDcSuccess:Z

    #@24
    .line 927
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    #@26
    invoke-direct {v1, v3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    #@29
    iput-object v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mGetVoiceRegistrationStateCallCount:Ljava/util/concurrent/atomic/AtomicInteger;

    #@2b
    .line 953
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    #@2d
    invoke-direct {v1, v3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    #@30
    iput-object v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mGetDataRegistrationStateCallCount:Ljava/util/concurrent/atomic/AtomicInteger;

    #@32
    .line 978
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    #@34
    invoke-direct {v1, v3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    #@37
    iput-object v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mGetOperatorCallCount:Ljava/util/concurrent/atomic/AtomicInteger;

    #@39
    .line 1353
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    #@3b
    invoke-direct {v1, v3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    #@3e
    iput-object v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->getNetworkSelectionModeCallCount:Ljava/util/concurrent/atomic/AtomicInteger;

    #@40
    .line 2073
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    #@42
    invoke-direct {v1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    #@45
    iput-object v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mAllowed:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@47
    .line 136
    new-instance v1, Landroid/os/HandlerThread;

    #@49
    const-string/jumbo v4, "SimulatedCommands"

    #@4c
    invoke-direct {v1, v4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    #@4f
    iput-object v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mHandlerThread:Landroid/os/HandlerThread;

    #@51
    .line 137
    iget-object v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mHandlerThread:Landroid/os/HandlerThread;

    #@53
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    #@56
    .line 138
    iget-object v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mHandlerThread:Landroid/os/HandlerThread;

    #@58
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    #@5b
    move-result-object v0

    #@5c
    .line 140
    .local v0, "looper":Landroid/os/Looper;
    new-instance v1, Lcom/android/internal/telephony/test/SimulatedGsmCallState;

    #@5e
    invoke-direct {v1, v0}, Lcom/android/internal/telephony/test/SimulatedGsmCallState;-><init>(Landroid/os/Looper;)V

    #@61
    iput-object v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->simulatedCallState:Lcom/android/internal/telephony/test/SimulatedGsmCallState;

    #@63
    .line 142
    sget-object v1, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_ON:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    #@65
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/BaseCommands;->setRadioState(Lcom/android/internal/telephony/CommandsInterface$RadioState;)V

    #@68
    .line 143
    sget-object v1, Lcom/android/internal/telephony/test/SimulatedCommands;->INITIAL_LOCK_STATE:Lcom/android/internal/telephony/test/SimulatedCommands$SimLockState;

    #@6a
    iput-object v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mSimLockedState:Lcom/android/internal/telephony/test/SimulatedCommands$SimLockState;

    #@6c
    .line 144
    iget-object v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mSimLockedState:Lcom/android/internal/telephony/test/SimulatedCommands$SimLockState;

    #@6e
    sget-object v4, Lcom/android/internal/telephony/test/SimulatedCommands$SimLockState;->NONE:Lcom/android/internal/telephony/test/SimulatedCommands$SimLockState;

    #@70
    if-eq v1, v4, :cond_0

    #@72
    move v1, v2

    #@73
    :goto_0
    iput-boolean v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mSimLockEnabled:Z

    #@75
    .line 145
    const-string/jumbo v1, "1234"

    #@78
    iput-object v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mPinCode:Ljava/lang/String;

    #@7a
    .line 146
    sget-object v1, Lcom/android/internal/telephony/test/SimulatedCommands;->INITIAL_FDN_STATE:Lcom/android/internal/telephony/test/SimulatedCommands$SimFdnState;

    #@7c
    iput-object v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mSimFdnEnabledState:Lcom/android/internal/telephony/test/SimulatedCommands$SimFdnState;

    #@7e
    .line 147
    iget-object v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mSimFdnEnabledState:Lcom/android/internal/telephony/test/SimulatedCommands$SimFdnState;

    #@80
    sget-object v4, Lcom/android/internal/telephony/test/SimulatedCommands$SimFdnState;->NONE:Lcom/android/internal/telephony/test/SimulatedCommands$SimFdnState;

    #@82
    if-eq v1, v4, :cond_1

    #@84
    :goto_1
    iput-boolean v2, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mSimFdnEnabled:Z

    #@86
    .line 148
    const-string/jumbo v1, "5678"

    #@89
    iput-object v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mPin2Code:Ljava/lang/String;

    #@8b
    .line 134
    return-void

    #@8c
    :cond_0
    move v1, v3

    #@8d
    .line 144
    goto :goto_0

    #@8e
    :cond_1
    move v2, v3

    #@8f
    .line 147
    goto :goto_1
.end method

.method private isSimLocked()Z
    .locals 2

    #@0
    .prologue
    .line 1184
    iget-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mSimLockedState:Lcom/android/internal/telephony/test/SimulatedCommands$SimLockState;

    #@2
    sget-object v1, Lcom/android/internal/telephony/test/SimulatedCommands$SimLockState;->NONE:Lcom/android/internal/telephony/test/SimulatedCommands$SimLockState;

    #@4
    if-eq v0, v1, :cond_0

    #@6
    .line 1185
    const/4 v0, 0x1

    #@7
    return v0

    #@8
    .line 1187
    :cond_0
    const/4 v0, 0x0

    #@9
    return v0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    #@0
    .prologue
    .line 152
    const-string/jumbo v0, "SimulatedCommands"

    #@3
    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@6
    .line 151
    return-void
.end method

.method private resultFail(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "result"    # Landroid/os/Message;
    .param p2, "ret"    # Ljava/lang/Object;
    .param p3, "tr"    # Ljava/lang/Throwable;

    #@0
    .prologue
    .line 1592
    if-eqz p1, :cond_0

    #@2
    .line 1593
    invoke-static {p1, p2, p3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    #@5
    .line 1594
    iget v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mPausedResponseCount:I

    #@7
    if-lez v0, :cond_1

    #@9
    .line 1595
    iget-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mPausedResponses:Ljava/util/ArrayList;

    #@b
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@e
    .line 1591
    :cond_0
    :goto_0
    return-void

    #@f
    .line 1597
    :cond_1
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    #@12
    goto :goto_0
.end method

.method private resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V
    .locals 1
    .param p1, "result"    # Landroid/os/Message;
    .param p2, "ret"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 1581
    if-eqz p1, :cond_0

    #@2
    .line 1582
    invoke-static {p1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    #@5
    move-result-object v0

    #@6
    iput-object p2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@8
    .line 1583
    iget v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mPausedResponseCount:I

    #@a
    if-lez v0, :cond_1

    #@c
    .line 1584
    iget-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mPausedResponses:Ljava/util/ArrayList;

    #@e
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@11
    .line 1580
    :cond_0
    :goto_0
    return-void

    #@12
    .line 1586
    :cond_1
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    #@15
    goto :goto_0
.end method

.method private unimplemented(Landroid/os/Message;)V
    .locals 3
    .param p1, "result"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1568
    if-eqz p1, :cond_0

    #@2
    .line 1569
    invoke-static {p1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    #@5
    move-result-object v0

    #@6
    .line 1570
    new-instance v1, Ljava/lang/RuntimeException;

    #@8
    const-string/jumbo v2, "Unimplemented"

    #@b
    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@e
    .line 1569
    iput-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@10
    .line 1572
    iget v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mPausedResponseCount:I

    #@12
    if-lez v0, :cond_1

    #@14
    .line 1573
    iget-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mPausedResponses:Ljava/util/ArrayList;

    #@16
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@19
    .line 1567
    :cond_0
    :goto_0
    return-void

    #@1a
    .line 1575
    :cond_1
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    #@1d
    goto :goto_0
.end method


# virtual methods
.method public acceptCall(Landroid/os/Message;)V
    .locals 4
    .param p1, "result"    # Landroid/os/Message;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 743
    invoke-static {}, Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;->getInstance()Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;

    #@4
    move-result-object v1

    #@5
    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;->acceptCall(Landroid/os/Message;)V

    #@8
    .line 744
    iget-object v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->simulatedCallState:Lcom/android/internal/telephony/test/SimulatedGsmCallState;

    #@a
    invoke-virtual {v1}, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->onAnswer()Z

    #@d
    move-result v0

    #@e
    .line 746
    .local v0, "success":Z
    if-nez v0, :cond_0

    #@10
    .line 747
    new-instance v1, Ljava/lang/RuntimeException;

    #@12
    const-string/jumbo v2, "Hangup Error"

    #@15
    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@18
    invoke-direct {p0, p1, v3, v1}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultFail(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    #@1b
    .line 740
    :goto_0
    return-void

    #@1c
    .line 749
    :cond_0
    invoke-direct {p0, p1, v3}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    #@1f
    goto :goto_0
.end method

.method public acknowledgeIncomingGsmSmsWithPdu(ZLjava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "success"    # Z
    .param p2, "ackPdu"    # Ljava/lang/String;
    .param p3, "result"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1215
    invoke-direct {p0, p3}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    #@3
    .line 1214
    return-void
.end method

.method public acknowledgeLastIncomingCdmaSms(ZILandroid/os/Message;)V
    .locals 0
    .param p1, "success"    # Z
    .param p2, "cause"    # I
    .param p3, "result"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1209
    invoke-direct {p0, p3}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    #@3
    .line 1208
    return-void
.end method

.method public acknowledgeLastIncomingGsmSms(ZILandroid/os/Message;)V
    .locals 1
    .param p1, "success"    # Z
    .param p2, "cause"    # I
    .param p3, "result"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1202
    invoke-direct {p0, p3}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    #@3
    .line 1203
    invoke-static {}, Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;->getInstance()Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;

    #@6
    move-result-object v0

    #@7
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;->acknowledgeLastIncomingGsmSms(ZILandroid/os/Message;)V

    #@a
    .line 1201
    return-void
.end method

.method public cancelPendingUssd(Landroid/os/Message;)V
    .locals 1
    .param p1, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1422
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    #@4
    .line 1421
    return-void
.end method

.method public changeBarringPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "facility"    # Ljava/lang/String;
    .param p2, "oldPwd"    # Ljava/lang/String;
    .param p3, "newPwd"    # Ljava/lang/String;
    .param p4, "result"    # Landroid/os/Message;

    #@0
    .prologue
    .line 348
    invoke-direct {p0, p4}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    #@3
    .line 347
    return-void
.end method

.method public changeIccPin(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 4
    .param p1, "oldPin"    # Ljava/lang/String;
    .param p2, "newPin"    # Ljava/lang/String;
    .param p3, "result"    # Landroid/os/Message;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 315
    if-eqz p1, :cond_0

    #@3
    iget-object v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mPinCode:Ljava/lang/String;

    #@5
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@8
    move-result v1

    #@9
    if-eqz v1, :cond_0

    #@b
    .line 316
    iput-object p2, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mPinCode:Ljava/lang/String;

    #@d
    .line 317
    invoke-direct {p0, p3, v3}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    #@10
    .line 319
    return-void

    #@11
    .line 322
    :cond_0
    const-string/jumbo v1, "SimulatedCommands"

    #@14
    const-string/jumbo v2, "[SimCmd] changeIccPin: pin failed!"

    #@17
    invoke-static {v1, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@1a
    .line 324
    new-instance v0, Lcom/android/internal/telephony/CommandException;

    #@1c
    .line 325
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->PASSWORD_INCORRECT:Lcom/android/internal/telephony/CommandException$Error;

    #@1e
    .line 324
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    #@21
    .line 326
    .local v0, "ex":Lcom/android/internal/telephony/CommandException;
    invoke-direct {p0, p3, v3, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultFail(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    #@24
    .line 314
    return-void
.end method

.method public changeIccPin2(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 4
    .param p1, "oldPin2"    # Ljava/lang/String;
    .param p2, "newPin2"    # Ljava/lang/String;
    .param p3, "result"    # Landroid/os/Message;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 331
    if-eqz p1, :cond_0

    #@3
    iget-object v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mPin2Code:Ljava/lang/String;

    #@5
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@8
    move-result v1

    #@9
    if-eqz v1, :cond_0

    #@b
    .line 332
    iput-object p2, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mPin2Code:Ljava/lang/String;

    #@d
    .line 333
    invoke-direct {p0, p3, v3}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    #@10
    .line 335
    return-void

    #@11
    .line 338
    :cond_0
    const-string/jumbo v1, "SimulatedCommands"

    #@14
    const-string/jumbo v2, "[SimCmd] changeIccPin2: pin2 failed!"

    #@17
    invoke-static {v1, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@1a
    .line 340
    new-instance v0, Lcom/android/internal/telephony/CommandException;

    #@1c
    .line 341
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->PASSWORD_INCORRECT:Lcom/android/internal/telephony/CommandException$Error;

    #@1e
    .line 340
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    #@21
    .line 342
    .local v0, "ex":Lcom/android/internal/telephony/CommandException;
    invoke-direct {p0, p3, v3, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultFail(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    #@24
    .line 330
    return-void
.end method

.method public changeIccPin2ForApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "oldPin2"    # Ljava/lang/String;
    .param p2, "newPin2"    # Ljava/lang/String;
    .param p3, "aidPtr"    # Ljava/lang/String;
    .param p4, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1779
    invoke-direct {p0, p4}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    #@3
    .line 1778
    return-void
.end method

.method public changeIccPinForApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .param p1, "oldPin"    # Ljava/lang/String;
    .param p2, "newPin"    # Ljava/lang/String;
    .param p3, "aidPtr"    # Ljava/lang/String;
    .param p4, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1771
    invoke-static {}, Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;->getInstance()Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;->changeIccPinForApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    #@7
    .line 1773
    invoke-virtual {p0, p1, p2, p4}, Lcom/android/internal/telephony/test/SimulatedCommands;->changeIccPin(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    #@a
    .line 1770
    return-void
.end method

.method public conference(Landroid/os/Message;)V
    .locals 5
    .param p1, "result"    # Landroid/os/Message;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 684
    iget-object v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->simulatedCallState:Lcom/android/internal/telephony/test/SimulatedGsmCallState;

    #@3
    const/16 v2, 0x33

    #@5
    const/4 v3, 0x0

    #@6
    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->onChld(CC)Z

    #@9
    move-result v0

    #@a
    .line 686
    .local v0, "success":Z
    if-nez v0, :cond_0

    #@c
    .line 687
    new-instance v1, Ljava/lang/RuntimeException;

    #@e
    const-string/jumbo v2, "Hangup Error"

    #@11
    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@14
    invoke-direct {p0, p1, v4, v1}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultFail(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    #@17
    .line 681
    :goto_0
    return-void

    #@18
    .line 689
    :cond_0
    invoke-direct {p0, p1, v4}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    #@1b
    goto :goto_0
.end method

.method public deactivateDataCall(IILandroid/os/Message;)V
    .locals 1
    .param p1, "cid"    # I
    .param p2, "reason"    # I
    .param p3, "result"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1120
    invoke-static {}, Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;->getInstance()Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;->deactivateDataCall(IILandroid/os/Message;)V

    #@7
    .line 1121
    const/4 v0, 0x0

    #@8
    invoke-direct {p0, p3, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    #@b
    .line 1119
    return-void
.end method

.method public deleteSmsOnRuim(ILandroid/os/Message;)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1060
    const-string/jumbo v0, "SimulatedCommands"

    #@3
    new-instance v1, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v2, "Delete RUIM message at index "

    #@b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v1

    #@f
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@16
    move-result-object v1

    #@17
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@1a
    .line 1061
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    #@1d
    .line 1059
    return-void
.end method

.method public deleteSmsOnSim(ILandroid/os/Message;)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1054
    const-string/jumbo v0, "SimulatedCommands"

    #@3
    new-instance v1, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v2, "Delete message at index "

    #@b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v1

    #@f
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@16
    move-result-object v1

    #@17
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@1a
    .line 1055
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    #@1d
    .line 1053
    return-void
.end method

.method public dial(Ljava/lang/String;ILandroid/os/Message;)V
    .locals 1
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "clirMode"    # I
    .param p3, "result"    # Landroid/os/Message;

    #@0
    .prologue
    .line 506
    invoke-static {}, Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;->getInstance()Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;->dial(Ljava/lang/String;ILandroid/os/Message;)V

    #@7
    .line 507
    iget-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->simulatedCallState:Lcom/android/internal/telephony/test/SimulatedGsmCallState;

    #@9
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->onDial(Ljava/lang/String;)Z

    #@c
    .line 509
    const/4 v0, 0x0

    #@d
    invoke-direct {p0, p3, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    #@10
    .line 505
    return-void
.end method

.method public dial(Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;Landroid/os/Message;)V
    .locals 1
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "clirMode"    # I
    .param p3, "uusInfo"    # Lcom/android/internal/telephony/UUSInfo;
    .param p4, "result"    # Landroid/os/Message;

    #@0
    .prologue
    .line 525
    invoke-static {}, Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;->getInstance()Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;->dial(Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;Landroid/os/Message;)V

    #@7
    .line 526
    iget-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->simulatedCallState:Lcom/android/internal/telephony/test/SimulatedGsmCallState;

    #@9
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->onDial(Ljava/lang/String;)Z

    #@c
    .line 528
    const/4 v0, 0x0

    #@d
    invoke-direct {p0, p4, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    #@10
    .line 524
    return-void
.end method

.method public exitEmergencyCallbackMode(Landroid/os/Message;)V
    .locals 0
    .param p1, "result"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1330
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    #@3
    return-void
.end method

.method public explicitCallTransfer(Landroid/os/Message;)V
    .locals 5
    .param p1, "result"    # Landroid/os/Message;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 705
    iget-object v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->simulatedCallState:Lcom/android/internal/telephony/test/SimulatedGsmCallState;

    #@3
    const/16 v2, 0x34

    #@5
    const/4 v3, 0x0

    #@6
    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->onChld(CC)Z

    #@9
    move-result v0

    #@a
    .line 707
    .local v0, "success":Z
    if-nez v0, :cond_0

    #@c
    .line 708
    new-instance v1, Ljava/lang/RuntimeException;

    #@e
    const-string/jumbo v2, "Hangup Error"

    #@11
    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@14
    invoke-direct {p0, p1, v4, v1}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultFail(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    #@17
    .line 702
    :goto_0
    return-void

    #@18
    .line 710
    :cond_0
    invoke-direct {p0, p1, v4}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    #@1b
    goto :goto_0
.end method

.method public forceDataDormancy(Landroid/os/Message;)V
    .locals 0
    .param p1, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1719
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    #@3
    .line 1718
    return-void
.end method

.method public getAvailableNetworks(Landroid/os/Message;)V
    .locals 0
    .param p1, "result"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1366
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    #@3
    return-void
.end method

.method public getBasebandVersion(Landroid/os/Message;)V
    .locals 1
    .param p1, "result"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1370
    invoke-static {}, Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;->getInstance()Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;->getBasebandVersion(Landroid/os/Message;)V

    #@7
    .line 1371
    const-string/jumbo v0, "SimulatedCommands"

    #@a
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    #@d
    .line 1369
    return-void
.end method

.method public getCDMASubscription(Landroid/os/Message;)V
    .locals 3
    .param p1, "result"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1613
    const/4 v1, 0x5

    #@1
    new-array v0, v1, [Ljava/lang/String;

    #@3
    .line 1614
    .local v0, "ret":[Ljava/lang/String;
    const-string/jumbo v1, "123"

    #@6
    const/4 v2, 0x0

    #@7
    aput-object v1, v0, v2

    #@9
    .line 1615
    const-string/jumbo v1, "456"

    #@c
    const/4 v2, 0x1

    #@d
    aput-object v1, v0, v2

    #@f
    .line 1616
    const-string/jumbo v1, "789"

    #@12
    const/4 v2, 0x2

    #@13
    aput-object v1, v0, v2

    #@15
    .line 1617
    const-string/jumbo v1, "234"

    #@18
    const/4 v2, 0x3

    #@19
    aput-object v1, v0, v2

    #@1b
    .line 1618
    const-string/jumbo v1, "345"

    #@1e
    const/4 v2, 0x4

    #@1f
    aput-object v1, v0, v2

    #@21
    .line 1619
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    #@24
    .line 1612
    return-void
.end method

.method public getCLIR(Landroid/os/Message;)V
    .locals 0
    .param p1, "result"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1262
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    #@3
    return-void
.end method

.method public getCdmaBroadcastConfig(Landroid/os/Message;)V
    .locals 0
    .param p1, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1709
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    #@3
    .line 1708
    return-void
.end method

.method public getCdmaSubscriptionSource(Landroid/os/Message;)V
    .locals 0
    .param p1, "result"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1180
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    #@3
    .line 1179
    return-void
.end method

.method public getCellInfoList(Landroid/os/Message;)V
    .locals 6
    .param p1, "response"    # Landroid/os/Message;

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    .line 1806
    iget-object v3, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mCellInfoList:Ljava/util/List;

    #@3
    if-nez v3, :cond_0

    #@5
    .line 1807
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v2

    #@9
    .line 1808
    .local v2, "p":Landroid/os/Parcel;
    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@c
    .line 1809
    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@f
    .line 1810
    const/4 v3, 0x2

    #@10
    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@13
    .line 1811
    const-wide v4, 0x1526bf6e6d4L

    #@18
    invoke-virtual {v2, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    #@1b
    .line 1812
    const/16 v3, 0x136

    #@1d
    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@20
    .line 1813
    const/16 v3, 0x104

    #@22
    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@25
    .line 1814
    const/16 v3, 0x7b

    #@27
    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@2a
    .line 1815
    const/16 v3, 0x1c8

    #@2c
    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@2f
    .line 1816
    const/16 v3, 0x63

    #@31
    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@34
    .line 1817
    const/4 v3, 0x3

    #@35
    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@38
    .line 1818
    const/4 v3, 0x0

    #@39
    invoke-virtual {v2, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    #@3c
    .line 1820
    sget-object v3, Landroid/telephony/CellInfoGsm;->CREATOR:Landroid/os/Parcelable$Creator;

    #@3e
    invoke-interface {v3, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@41
    move-result-object v0

    #@42
    check-cast v0, Landroid/telephony/CellInfoGsm;

    #@44
    .line 1822
    .local v0, "cellInfo":Landroid/telephony/CellInfoGsm;
    new-instance v1, Ljava/util/ArrayList;

    #@46
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@49
    .line 1823
    .local v1, "mCellInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/CellInfo;>;"
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@4c
    .line 1826
    .end local v0    # "cellInfo":Landroid/telephony/CellInfoGsm;
    .end local v1    # "mCellInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/CellInfo;>;"
    .end local v2    # "p":Landroid/os/Parcel;
    :cond_0
    iget-object v3, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mCellInfoList:Ljava/util/List;

    #@4e
    invoke-direct {p0, p1, v3}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    #@51
    .line 1805
    return-void
.end method

.method public getCurrentCalls(Landroid/os/Message;)V
    .locals 2
    .param p1, "result"    # Landroid/os/Message;

    #@0
    .prologue
    .line 461
    invoke-static {}, Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;->getInstance()Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;->getCurrentCalls(Landroid/os/Message;)V

    #@7
    .line 462
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mState:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    #@9
    sget-object v1, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_ON:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    #@b
    if-ne v0, v1, :cond_0

    #@d
    invoke-direct {p0}, Lcom/android/internal/telephony/test/SimulatedCommands;->isSimLocked()Z

    #@10
    move-result v0

    #@11
    if-eqz v0, :cond_1

    #@13
    .line 468
    :cond_0
    new-instance v0, Lcom/android/internal/telephony/CommandException;

    #@15
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->RADIO_NOT_AVAILABLE:Lcom/android/internal/telephony/CommandException$Error;

    #@17
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    #@1a
    .line 467
    const/4 v1, 0x0

    #@1b
    invoke-direct {p0, p1, v1, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultFail(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    #@1e
    .line 460
    :goto_0
    return-void

    #@1f
    .line 464
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->simulatedCallState:Lcom/android/internal/telephony/test/SimulatedGsmCallState;

    #@21
    invoke-virtual {v0}, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->getDriverCalls()Ljava/util/List;

    #@24
    move-result-object v0

    #@25
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    #@28
    goto :goto_0
.end method

.method public getDataCallList(Landroid/os/Message;)V
    .locals 2
    .param p1, "result"    # Landroid/os/Message;

    #@0
    .prologue
    .line 490
    new-instance v0, Ljava/util/ArrayList;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    #@6
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    #@9
    .line 489
    return-void
.end method

.method public getDataRegistrationState(Landroid/os/Message;)V
    .locals 3
    .param p1, "result"    # Landroid/os/Message;

    #@0
    .prologue
    .line 944
    iget-object v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mGetDataRegistrationStateCallCount:Ljava/util/concurrent/atomic/AtomicInteger;

    #@2
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    #@5
    .line 945
    const/16 v1, 0xb

    #@7
    new-array v0, v1, [Ljava/lang/String;

    #@9
    .line 947
    .local v0, "ret":[Ljava/lang/String;
    iget v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mDataRegState:I

    #@b
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@e
    move-result-object v1

    #@f
    const/4 v2, 0x0

    #@10
    aput-object v1, v0, v2

    #@12
    .line 948
    iget v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mDataRadioTech:I

    #@14
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@17
    move-result-object v1

    #@18
    const/4 v2, 0x3

    #@19
    aput-object v1, v0, v2

    #@1b
    .line 950
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    #@1e
    .line 943
    return-void
.end method

.method public getDeviceIdentity(Landroid/os/Message;)V
    .locals 3
    .param p1, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1606
    invoke-static {}, Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;->getInstance()Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;->getDeviceIdentity(Landroid/os/Message;)V

    #@7
    .line 1607
    const/4 v0, 0x4

    #@8
    new-array v0, v0, [Ljava/lang/String;

    #@a
    const-string/jumbo v1, "012345678901234"

    #@d
    const/4 v2, 0x0

    #@e
    aput-object v1, v0, v2

    #@10
    const-string/jumbo v1, "99"

    #@13
    const/4 v2, 0x1

    #@14
    aput-object v1, v0, v2

    #@16
    const-string/jumbo v1, "1234"

    #@19
    const/4 v2, 0x2

    #@1a
    aput-object v1, v0, v2

    #@1c
    const-string/jumbo v1, "1234"

    #@1f
    const/4 v2, 0x3

    #@20
    aput-object v1, v0, v2

    #@22
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    #@25
    .line 1605
    return-void
.end method

.method public getGetDataRegistrationStateCallCount()I
    .locals 1

    #@0
    .prologue
    .line 957
    iget-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mGetDataRegistrationStateCallCount:Ljava/util/concurrent/atomic/AtomicInteger;

    #@2
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getGetNetworkSelectionModeCallCount()I
    .locals 1

    #@0
    .prologue
    .line 1357
    iget-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->getNetworkSelectionModeCallCount:Ljava/util/concurrent/atomic/AtomicInteger;

    #@2
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getGetOperatorCallCount()I
    .locals 2

    #@0
    .prologue
    .line 982
    iget-object v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mGetOperatorCallCount:Ljava/util/concurrent/atomic/AtomicInteger;

    #@2
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    #@5
    move-result v0

    #@6
    .line 983
    .local v0, "count":I
    iget-object v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mGetOperatorCallCount:Ljava/util/concurrent/atomic/AtomicInteger;

    #@8
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    #@b
    move-result v1

    #@c
    return v1
.end method

.method public getGetVoiceRegistrationStateCallCount()I
    .locals 1

    #@0
    .prologue
    .line 931
    iget-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mGetVoiceRegistrationStateCallCount:Ljava/util/concurrent/atomic/AtomicInteger;

    #@2
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getGsmBroadcastConfig(Landroid/os/Message;)V
    .locals 0
    .param p1, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1736
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    #@3
    .line 1735
    return-void
.end method

.method public getHardwareConfig(Landroid/os/Message;)V
    .locals 0
    .param p1, "result"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1929
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    #@3
    .line 1928
    return-void
.end method

.method public getIMEI(Landroid/os/Message;)V
    .locals 1
    .param p1, "result"    # Landroid/os/Message;

    #@0
    .prologue
    .line 560
    invoke-static {}, Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;->getInstance()Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;->getIMEI(Landroid/os/Message;)V

    #@7
    .line 561
    iget-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mImei:Ljava/lang/String;

    #@9
    if-eqz v0, :cond_0

    #@b
    iget-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mImei:Ljava/lang/String;

    #@d
    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    #@10
    .line 559
    return-void

    #@11
    .line 561
    :cond_0
    const-string/jumbo v0, "012345678901234"

    #@14
    goto :goto_0
.end method

.method public getIMEISV(Landroid/os/Message;)V
    .locals 1
    .param p1, "result"    # Landroid/os/Message;

    #@0
    .prologue
    .line 577
    invoke-static {}, Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;->getInstance()Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;->getIMEISV(Landroid/os/Message;)V

    #@7
    .line 578
    iget-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mImeiSv:Ljava/lang/String;

    #@9
    if-eqz v0, :cond_0

    #@b
    iget-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mImeiSv:Ljava/lang/String;

    #@d
    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    #@10
    .line 576
    return-void

    #@11
    .line 578
    :cond_0
    const-string/jumbo v0, "99"

    #@14
    goto :goto_0
.end method

.method public getIMSI(Landroid/os/Message;)V
    .locals 1
    .param p1, "result"    # Landroid/os/Message;

    #@0
    .prologue
    .line 533
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/test/SimulatedCommands;->getIMSIForApp(Ljava/lang/String;Landroid/os/Message;)V

    #@4
    .line 532
    return-void
.end method

.method public getIMSIForApp(Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .param p1, "aid"    # Ljava/lang/String;
    .param p2, "result"    # Landroid/os/Message;

    #@0
    .prologue
    .line 544
    const-string/jumbo v0, "012345678901234"

    #@3
    invoke-direct {p0, p2, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    #@6
    .line 543
    return-void
.end method

.method public getIccCardStatus(Landroid/os/Message;)V
    .locals 3
    .param p1, "result"    # Landroid/os/Message;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 159
    iget-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mIccCardStatus:Lcom/android/internal/telephony/uicc/IccCardStatus;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 160
    iget-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mIccCardStatus:Lcom/android/internal/telephony/uicc/IccCardStatus;

    #@7
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    #@a
    .line 158
    :goto_0
    return-void

    #@b
    .line 162
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    #@d
    const-string/jumbo v1, "IccCardStatus not set"

    #@10
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@13
    invoke-direct {p0, p1, v2, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultFail(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    #@16
    goto :goto_0
.end method

.method public getImsRegistrationState(Landroid/os/Message;)V
    .locals 2
    .param p1, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1854
    iget-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mImsRegState:[I

    #@2
    if-nez v0, :cond_0

    #@4
    .line 1855
    const/4 v0, 0x1

    #@5
    const/4 v1, 0x0

    #@6
    filled-new-array {v0, v1}, [I

    #@9
    move-result-object v0

    #@a
    iput-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mImsRegState:[I

    #@c
    .line 1858
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mImsRegState:[I

    #@e
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    #@11
    .line 1853
    return-void
.end method

.method public getLastCallFailCause(Landroid/os/Message;)V
    .locals 2
    .param p1, "result"    # Landroid/os/Message;

    #@0
    .prologue
    .line 782
    new-instance v0, Lcom/android/internal/telephony/LastCallFailCause;

    #@2
    invoke-direct {v0}, Lcom/android/internal/telephony/LastCallFailCause;-><init>()V

    #@5
    .line 783
    .local v0, "mFailCause":Lcom/android/internal/telephony/LastCallFailCause;
    iget v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mNextCallFailCause:I

    #@7
    iput v1, v0, Lcom/android/internal/telephony/LastCallFailCause;->causeCode:I

    #@9
    .line 784
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    #@c
    .line 781
    return-void
.end method

.method public getLastDataCallFailCause(Landroid/os/Message;)V
    .locals 0
    .param p1, "result"    # Landroid/os/Message;

    #@0
    .prologue
    .line 799
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    #@3
    .line 797
    return-void
.end method

.method public getLastPdpFailCause(Landroid/os/Message;)V
    .locals 0
    .param p1, "result"    # Landroid/os/Message;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 793
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    #@3
    .line 792
    return-void
.end method

.method public getModemActivityInfo(Landroid/os/Message;)V
    .locals 0
    .param p1, "result"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1956
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    #@3
    .line 1955
    return-void
.end method

.method public getMute(Landroid/os/Message;)V
    .locals 0
    .param p1, "result"    # Landroid/os/Message;

    #@0
    .prologue
    .line 806
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    #@3
    return-void
.end method

.method public getNeighboringCids(Landroid/os/Message;)V
    .locals 5
    .param p1, "result"    # Landroid/os/Message;

    #@0
    .prologue
    const/4 v4, 0x7

    #@1
    .line 1142
    new-array v1, v4, [I

    #@3
    .line 1144
    .local v1, "ret":[I
    const/4 v2, 0x6

    #@4
    const/4 v3, 0x0

    #@5
    aput v2, v1, v3

    #@7
    .line 1145
    const/4 v0, 0x1

    #@8
    .local v0, "i":I
    :goto_0
    if-ge v0, v4, :cond_0

    #@a
    .line 1146
    aput v0, v1, v0

    #@c
    .line 1145
    add-int/lit8 v0, v0, 0x1

    #@e
    goto :goto_0

    #@f
    .line 1148
    :cond_0
    invoke-direct {p0, p1, v1}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    #@12
    .line 1141
    return-void
.end method

.method public getNetworkSelectionMode(Landroid/os/Message;)V
    .locals 3
    .param p1, "result"    # Landroid/os/Message;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1345
    invoke-static {}, Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;->getInstance()Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;

    #@4
    move-result-object v1

    #@5
    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;->getNetworkSelectionMode(Landroid/os/Message;)V

    #@8
    .line 1346
    iget-object v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->getNetworkSelectionModeCallCount:Ljava/util/concurrent/atomic/AtomicInteger;

    #@a
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    #@d
    .line 1347
    const/4 v1, 0x1

    #@e
    new-array v0, v1, [I

    #@10
    .line 1349
    .local v0, "ret":[I
    aput v2, v0, v2

    #@12
    .line 1350
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    #@15
    .line 1344
    return-void
.end method

.method public getOperator(Landroid/os/Message;)V
    .locals 3
    .param p1, "result"    # Landroid/os/Message;

    #@0
    .prologue
    .line 968
    iget-object v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mGetOperatorCallCount:Ljava/util/concurrent/atomic/AtomicInteger;

    #@2
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    #@5
    .line 969
    const/4 v1, 0x3

    #@6
    new-array v0, v1, [Ljava/lang/String;

    #@8
    .line 971
    .local v0, "ret":[Ljava/lang/String;
    const-string/jumbo v1, "Fake long name"

    #@b
    const/4 v2, 0x0

    #@c
    aput-object v1, v0, v2

    #@e
    .line 972
    const-string/jumbo v1, "Fake short name"

    #@11
    const/4 v2, 0x1

    #@12
    aput-object v1, v0, v2

    #@14
    .line 973
    const-string/jumbo v1, "310260"

    #@17
    const/4 v2, 0x2

    #@18
    aput-object v1, v0, v2

    #@1a
    .line 975
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    #@1d
    .line 967
    return-void
.end method

.method public getPDPContextList(Landroid/os/Message;)V
    .locals 0
    .param p1, "result"    # Landroid/os/Message;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 478
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/test/SimulatedCommands;->getDataCallList(Landroid/os/Message;)V

    #@3
    .line 477
    return-void
.end method

.method public getPreferredNetworkType(Landroid/os/Message;)V
    .locals 3
    .param p1, "result"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1133
    invoke-static {}, Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;->getInstance()Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;

    #@3
    move-result-object v1

    #@4
    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;->getPreferredNetworkType(Landroid/os/Message;)V

    #@7
    .line 1134
    const/4 v1, 0x1

    #@8
    new-array v0, v1, [I

    #@a
    .line 1136
    .local v0, "ret":[I
    iget v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mNetworkType:I

    #@c
    const/4 v2, 0x0

    #@d
    aput v1, v0, v2

    #@f
    .line 1137
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    #@12
    .line 1132
    return-void
.end method

.method public getPreferredVoicePrivacy(Landroid/os/Message;)V
    .locals 0
    .param p1, "result"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1645
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    #@3
    .line 1644
    return-void
.end method

.method public getRadioCapability(Landroid/os/Message;)V
    .locals 7
    .param p1, "result"    # Landroid/os/Message;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1961
    invoke-static {}, Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;->getInstance()Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;

    #@4
    move-result-object v0

    #@5
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;->getRadioCapability(Landroid/os/Message;)V

    #@8
    .line 1962
    new-instance v0, Lcom/android/internal/telephony/RadioCapability;

    #@a
    const v4, 0xffff

    #@d
    const/4 v5, 0x0

    #@e
    move v2, v1

    #@f
    move v3, v1

    #@10
    move v6, v1

    #@11
    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/RadioCapability;-><init>(IIIILjava/lang/String;I)V

    #@14
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    #@17
    .line 1960
    return-void
.end method

.method public getRilVersion()I
    .locals 1

    #@0
    .prologue
    .line 1831
    const/16 v0, 0xb

    #@2
    return v0
.end method

.method public getSignalStrength(Landroid/os/Message;)V
    .locals 17
    .param p1, "result"    # Landroid/os/Message;

    #@0
    .prologue
    .line 815
    move-object/from16 v0, p0

    #@2
    iget-object v2, v0, Lcom/android/internal/telephony/test/SimulatedCommands;->mSignalStrength:Landroid/telephony/SignalStrength;

    #@4
    if-nez v2, :cond_0

    #@6
    .line 816
    new-instance v2, Landroid/telephony/SignalStrength;

    #@8
    .line 817
    const/16 v3, 0x14

    #@a
    .line 818
    const/4 v4, 0x0

    #@b
    .line 819
    const/4 v5, -0x1

    #@c
    .line 820
    const/4 v6, -0x1

    #@d
    .line 821
    const/4 v7, -0x1

    #@e
    .line 822
    const/4 v8, -0x1

    #@f
    .line 823
    const/4 v9, -0x1

    #@10
    .line 824
    const/16 v10, 0x63

    #@12
    .line 825
    const v11, 0x7fffffff

    #@15
    .line 826
    const v12, 0x7fffffff

    #@18
    .line 827
    const v13, 0x7fffffff

    #@1b
    .line 828
    const v14, 0x7fffffff

    #@1e
    .line 829
    const v15, 0x7fffffff

    #@21
    .line 830
    const/16 v16, 0x1

    #@23
    .line 816
    invoke-direct/range {v2 .. v16}, Landroid/telephony/SignalStrength;-><init>(IIIIIIIIIIIIIZ)V

    #@26
    move-object/from16 v0, p0

    #@28
    iput-object v2, v0, Lcom/android/internal/telephony/test/SimulatedCommands;->mSignalStrength:Landroid/telephony/SignalStrength;

    #@2a
    .line 834
    :cond_0
    move-object/from16 v0, p0

    #@2c
    iget-object v2, v0, Lcom/android/internal/telephony/test/SimulatedCommands;->mSignalStrength:Landroid/telephony/SignalStrength;

    #@2e
    move-object/from16 v0, p0

    #@30
    move-object/from16 v1, p1

    #@32
    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    #@35
    .line 813
    return-void
.end method

.method public getSmscAddress(Landroid/os/Message;)V
    .locals 0
    .param p1, "result"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1159
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    #@3
    .line 1158
    return-void
.end method

.method public getVoiceRadioTechnology(Landroid/os/Message;)V
    .locals 3
    .param p1, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1794
    invoke-static {}, Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;->getInstance()Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;

    #@3
    move-result-object v1

    #@4
    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;->getVoiceRadioTechnology(Landroid/os/Message;)V

    #@7
    .line 1795
    const/4 v1, 0x1

    #@8
    new-array v0, v1, [I

    #@a
    .line 1796
    .local v0, "ret":[I
    iget v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mVoiceRadioTech:I

    #@c
    const/4 v2, 0x0

    #@d
    aput v1, v0, v2

    #@f
    .line 1797
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    #@12
    .line 1793
    return-void
.end method

.method public getVoiceRegistrationState(Landroid/os/Message;)V
    .locals 3
    .param p1, "result"    # Landroid/os/Message;

    #@0
    .prologue
    .line 918
    iget-object v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mGetVoiceRegistrationStateCallCount:Ljava/util/concurrent/atomic/AtomicInteger;

    #@2
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    #@5
    .line 919
    const/16 v1, 0xe

    #@7
    new-array v0, v1, [Ljava/lang/String;

    #@9
    .line 921
    .local v0, "ret":[Ljava/lang/String;
    iget v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mVoiceRegState:I

    #@b
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@e
    move-result-object v1

    #@f
    const/4 v2, 0x0

    #@10
    aput-object v1, v0, v2

    #@12
    .line 922
    iget v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mVoiceRadioTech:I

    #@14
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@17
    move-result-object v1

    #@18
    const/4 v2, 0x3

    #@19
    aput-object v1, v0, v2

    #@1b
    .line 924
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    #@1e
    .line 917
    return-void
.end method

.method public handleCallSetupRequestFromSim(ZLandroid/os/Message;)V
    .locals 1
    .param p1, "accept"    # Z
    .param p2, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 898
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p2, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    #@4
    .line 897
    return-void
.end method

.method public hangupConnection(ILandroid/os/Message;)V
    .locals 5
    .param p1, "gsmIndex"    # I
    .param p2, "result"    # Landroid/os/Message;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 596
    iget-object v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->simulatedCallState:Lcom/android/internal/telephony/test/SimulatedGsmCallState;

    #@3
    add-int/lit8 v2, p1, 0x30

    #@5
    int-to-char v2, v2

    #@6
    const/16 v3, 0x31

    #@8
    invoke-virtual {v1, v3, v2}, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->onChld(CC)Z

    #@b
    move-result v0

    #@c
    .line 598
    .local v0, "success":Z
    if-nez v0, :cond_0

    #@e
    .line 599
    const-string/jumbo v1, "GSM"

    #@11
    const-string/jumbo v2, "[SimCmd] hangupConnection: resultFail"

    #@14
    invoke-static {v1, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@17
    .line 600
    new-instance v1, Ljava/lang/RuntimeException;

    #@19
    const-string/jumbo v2, "Hangup Error"

    #@1c
    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@1f
    invoke-direct {p0, p2, v4, v1}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultFail(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    #@22
    .line 593
    :goto_0
    return-void

    #@23
    .line 602
    :cond_0
    const-string/jumbo v1, "GSM"

    #@26
    const-string/jumbo v2, "[SimCmd] hangupConnection: resultSuccess"

    #@29
    invoke-static {v1, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@2c
    .line 603
    invoke-direct {p0, p2, v4}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    #@2f
    goto :goto_0
.end method

.method public hangupForegroundResumeBackground(Landroid/os/Message;)V
    .locals 5
    .param p1, "result"    # Landroid/os/Message;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 641
    iget-object v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->simulatedCallState:Lcom/android/internal/telephony/test/SimulatedGsmCallState;

    #@3
    const/16 v2, 0x31

    #@5
    const/4 v3, 0x0

    #@6
    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->onChld(CC)Z

    #@9
    move-result v0

    #@a
    .line 643
    .local v0, "success":Z
    if-nez v0, :cond_0

    #@c
    .line 644
    new-instance v1, Ljava/lang/RuntimeException;

    #@e
    const-string/jumbo v2, "Hangup Error"

    #@11
    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@14
    invoke-direct {p0, p1, v4, v1}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultFail(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    #@17
    .line 638
    :goto_0
    return-void

    #@18
    .line 646
    :cond_0
    invoke-direct {p0, p1, v4}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    #@1b
    goto :goto_0
.end method

.method public hangupWaitingOrBackground(Landroid/os/Message;)V
    .locals 5
    .param p1, "result"    # Landroid/os/Message;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 619
    iget-object v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->simulatedCallState:Lcom/android/internal/telephony/test/SimulatedGsmCallState;

    #@3
    const/16 v2, 0x30

    #@5
    const/4 v3, 0x0

    #@6
    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->onChld(CC)Z

    #@9
    move-result v0

    #@a
    .line 621
    .local v0, "success":Z
    if-nez v0, :cond_0

    #@c
    .line 622
    new-instance v1, Ljava/lang/RuntimeException;

    #@e
    const-string/jumbo v2, "Hangup Error"

    #@11
    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@14
    invoke-direct {p0, p1, v4, v1}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultFail(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    #@17
    .line 616
    :goto_0
    return-void

    #@18
    .line 624
    :cond_0
    invoke-direct {p0, p1, v4}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    #@1b
    goto :goto_0
.end method

.method public iccCloseLogicalChannel(ILandroid/os/Message;)V
    .locals 0
    .param p1, "channel"    # I
    .param p2, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1885
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    #@3
    .line 1884
    return-void
.end method

.method public iccIO(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 11
    .param p1, "command"    # I
    .param p2, "fileid"    # I
    .param p3, "path"    # Ljava/lang/String;
    .param p4, "p1"    # I
    .param p5, "p2"    # I
    .param p6, "p3"    # I
    .param p7, "data"    # Ljava/lang/String;
    .param p8, "pin2"    # Ljava/lang/String;
    .param p9, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1221
    const/4 v9, 0x0

    #@1
    move-object v0, p0

    #@2
    move v1, p1

    #@3
    move v2, p2

    #@4
    move-object v3, p3

    #@5
    move v4, p4

    #@6
    move/from16 v5, p5

    #@8
    move/from16 v6, p6

    #@a
    move-object/from16 v7, p7

    #@c
    move-object/from16 v8, p8

    #@e
    move-object/from16 v10, p9

    #@10
    invoke-virtual/range {v0 .. v10}, Lcom/android/internal/telephony/test/SimulatedCommands;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    #@13
    .line 1220
    return-void
.end method

.method public iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "command"    # I
    .param p2, "fileid"    # I
    .param p3, "path"    # Ljava/lang/String;
    .param p4, "p1"    # I
    .param p5, "p2"    # I
    .param p6, "p3"    # I
    .param p7, "data"    # Ljava/lang/String;
    .param p8, "pin2"    # Ljava/lang/String;
    .param p9, "aid"    # Ljava/lang/String;
    .param p10, "result"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1232
    invoke-direct {p0, p10}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    #@3
    .line 1231
    return-void
.end method

.method public iccOpenLogicalChannel(Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .param p1, "AID"    # Ljava/lang/String;
    .param p2, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1878
    invoke-static {}, Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;->getInstance()Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;

    #@3
    move-result-object v1

    #@4
    invoke-virtual {v1, p1, p2}, Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;->iccOpenLogicalChannel(Ljava/lang/String;Landroid/os/Message;)V

    #@7
    .line 1879
    const/4 v1, 0x1

    #@8
    new-array v0, v1, [I

    #@a
    iget v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mChannelId:I

    #@c
    const/4 v2, 0x0

    #@d
    aput v1, v0, v2

    #@f
    .line 1880
    .local v0, "result":Ljava/lang/Object;
    invoke-direct {p0, p2, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    #@12
    .line 1877
    return-void
.end method

.method public iccTransmitApduBasicChannel(IIIIILjava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "cla"    # I
    .param p2, "instruction"    # I
    .param p3, "p1"    # I
    .param p4, "p2"    # I
    .param p5, "p3"    # I
    .param p6, "data"    # Ljava/lang/String;
    .param p7, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1904
    invoke-direct {p0, p7}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    #@3
    .line 1903
    return-void
.end method

.method public iccTransmitApduLogicalChannel(IIIIIILjava/lang/String;Landroid/os/Message;)V
    .locals 10
    .param p1, "channel"    # I
    .param p2, "cla"    # I
    .param p3, "instruction"    # I
    .param p4, "p1"    # I
    .param p5, "p2"    # I
    .param p6, "p3"    # I
    .param p7, "data"    # Ljava/lang/String;
    .param p8, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1892
    invoke-static {}, Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;->getInstance()Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;

    #@3
    move-result-object v1

    #@4
    move v2, p1

    #@5
    move v3, p2

    #@6
    move v4, p3

    #@7
    move v5, p4

    #@8
    move v6, p5

    #@9
    move/from16 v7, p6

    #@b
    move-object/from16 v8, p7

    #@d
    move-object/from16 v9, p8

    #@f
    invoke-virtual/range {v1 .. v9}, Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;->iccTransmitApduLogicalChannel(IIIIIILjava/lang/String;Landroid/os/Message;)V

    #@12
    .line 1894
    iget-object v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mIccIoResultForApduLogicalChannel:Lcom/android/internal/telephony/uicc/IccIoResult;

    #@14
    if-eqz v1, :cond_0

    #@16
    .line 1895
    iget-object v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mIccIoResultForApduLogicalChannel:Lcom/android/internal/telephony/uicc/IccIoResult;

    #@18
    move-object/from16 v0, p8

    #@1a
    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    #@1d
    .line 1891
    :goto_0
    return-void

    #@1e
    .line 1897
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    #@20
    const-string/jumbo v2, "IccIoResult not set"

    #@23
    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@26
    const/4 v2, 0x0

    #@27
    move-object/from16 v0, p8

    #@29
    invoke-direct {p0, v0, v2, v1}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultFail(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    #@2c
    goto :goto_0
.end method

.method public invokeOemRilRequestRaw([BLandroid/os/Message;)V
    .locals 1
    .param p1, "data"    # [B
    .param p2, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1434
    if-eqz p2, :cond_0

    #@2
    .line 1435
    invoke-static {p2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    #@5
    move-result-object v0

    #@6
    iput-object p1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@8
    .line 1436
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    #@b
    .line 1432
    :cond_0
    return-void
.end method

.method public invokeOemRilRequestStrings([Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .param p1, "strings"    # [Ljava/lang/String;
    .param p2, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1443
    if-eqz p2, :cond_0

    #@2
    .line 1444
    invoke-static {p2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    #@5
    move-result-object v0

    #@6
    iput-object p1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@8
    .line 1445
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    #@b
    .line 1441
    :cond_0
    return-void
.end method

.method public isDataAllowed()Z
    .locals 1

    #@0
    .prologue
    .line 2084
    iget-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mAllowed:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@2
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public notifyEmergencyCallbackMode()V
    .locals 1

    #@0
    .prologue
    .line 1983
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mEmergencyCallbackModeRegistrant:Landroid/os/Registrant;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 1984
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mEmergencyCallbackModeRegistrant:Landroid/os/Registrant;

    #@6
    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    #@9
    .line 1982
    :cond_0
    return-void
.end method

.method public notifyExitEmergencyCallbackMode()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1995
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mExitEmergencyCallbackModeRegistrants:Landroid/os/RegistrantList;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 1996
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mExitEmergencyCallbackModeRegistrants:Landroid/os/RegistrantList;

    #@7
    .line 1997
    new-instance v1, Landroid/os/AsyncResult;

    #@9
    invoke-direct {v1, v2, v2, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    #@c
    .line 1996
    invoke-virtual {v0, v1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    #@f
    .line 1994
    :cond_0
    return-void
.end method

.method public notifyGsmBroadcastSms(Ljava/lang/Object;)V
    .locals 3
    .param p1, "result"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1971
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mGsmBroadcastSmsRegistrant:Landroid/os/Registrant;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 1972
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mGsmBroadcastSmsRegistrant:Landroid/os/Registrant;

    #@7
    new-instance v1, Landroid/os/AsyncResult;

    #@9
    invoke-direct {v1, v2, p1, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    #@c
    invoke-virtual {v0, v1}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    #@f
    .line 1970
    :cond_0
    return-void
.end method

.method public notifyIccSmsFull()V
    .locals 1

    #@0
    .prologue
    .line 1977
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mIccSmsFullRegistrant:Landroid/os/Registrant;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 1978
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mIccSmsFullRegistrant:Landroid/os/Registrant;

    #@6
    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    #@9
    .line 1976
    :cond_0
    return-void
.end method

.method public notifyImsNetworkStateChanged()V
    .locals 1

    #@0
    .prologue
    .line 2002
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mImsNetworkStateChangedRegistrants:Landroid/os/RegistrantList;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 2003
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mImsNetworkStateChangedRegistrants:Landroid/os/RegistrantList;

    #@6
    invoke-virtual {v0}, Landroid/os/RegistrantList;->notifyRegistrants()V

    #@9
    .line 2001
    :cond_0
    return-void
.end method

.method public notifyOtaProvisionStatusChanged()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 2024
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mOtaProvisionRegistrants:Landroid/os/RegistrantList;

    #@3
    if-eqz v1, :cond_0

    #@5
    .line 2025
    const/4 v1, 0x1

    #@6
    new-array v0, v1, [I

    #@8
    .line 2026
    .local v0, "ret":[I
    const/16 v1, 0x8

    #@a
    const/4 v2, 0x0

    #@b
    aput v1, v0, v2

    #@d
    .line 2027
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mOtaProvisionRegistrants:Landroid/os/RegistrantList;

    #@f
    new-instance v2, Landroid/os/AsyncResult;

    #@11
    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    #@14
    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    #@17
    .line 2023
    .end local v0    # "ret":[I
    :cond_0
    return-void
.end method

.method public notifyRadioOn()V
    .locals 1

    #@0
    .prologue
    .line 2014
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mOnRegistrants:Landroid/os/RegistrantList;

    #@2
    invoke-virtual {v0}, Landroid/os/RegistrantList;->notifyRegistrants()V

    #@5
    .line 2013
    return-void
.end method

.method public notifySignalStrength()V
    .locals 15

    #@0
    .prologue
    .line 2032
    iget-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mSignalStrength:Landroid/telephony/SignalStrength;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 2033
    new-instance v0, Landroid/telephony/SignalStrength;

    #@6
    .line 2034
    const/16 v1, 0x14

    #@8
    .line 2035
    const/4 v2, 0x0

    #@9
    .line 2036
    const/4 v3, -0x1

    #@a
    .line 2037
    const/4 v4, -0x1

    #@b
    .line 2038
    const/4 v5, -0x1

    #@c
    .line 2039
    const/4 v6, -0x1

    #@d
    .line 2040
    const/4 v7, -0x1

    #@e
    .line 2041
    const/16 v8, 0x63

    #@10
    .line 2042
    const v9, 0x7fffffff

    #@13
    .line 2043
    const v10, 0x7fffffff

    #@16
    .line 2044
    const v11, 0x7fffffff

    #@19
    .line 2045
    const v12, 0x7fffffff

    #@1c
    .line 2046
    const v13, 0x7fffffff

    #@1f
    .line 2047
    const/4 v14, 0x1

    #@20
    .line 2033
    invoke-direct/range {v0 .. v14}, Landroid/telephony/SignalStrength;-><init>(IIIIIIIIIIIIIZ)V

    #@23
    iput-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mSignalStrength:Landroid/telephony/SignalStrength;

    #@25
    .line 2051
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mSignalStrengthRegistrant:Landroid/os/Registrant;

    #@27
    if-eqz v0, :cond_1

    #@29
    .line 2052
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mSignalStrengthRegistrant:Landroid/os/Registrant;

    #@2b
    .line 2053
    new-instance v1, Landroid/os/AsyncResult;

    #@2d
    iget-object v2, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mSignalStrength:Landroid/telephony/SignalStrength;

    #@2f
    const/4 v3, 0x0

    #@30
    const/4 v4, 0x0

    #@31
    invoke-direct {v1, v3, v2, v4}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    #@34
    .line 2052
    invoke-virtual {v0, v1}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    #@37
    .line 2031
    :cond_1
    return-void
.end method

.method public notifySmsStatus(Ljava/lang/Object;)V
    .locals 3
    .param p1, "result"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1965
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mSmsStatusRegistrant:Landroid/os/Registrant;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 1966
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mSmsStatusRegistrant:Landroid/os/Registrant;

    #@7
    new-instance v1, Landroid/os/AsyncResult;

    #@9
    invoke-direct {v1, v2, p1, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    #@c
    invoke-virtual {v0, v1}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    #@f
    .line 1964
    :cond_0
    return-void
.end method

.method public notifyVoiceNetworkStateChanged()V
    .locals 1

    #@0
    .prologue
    .line 2019
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mVoiceNetworkStateRegistrants:Landroid/os/RegistrantList;

    #@2
    invoke-virtual {v0}, Landroid/os/RegistrantList;->notifyRegistrants()V

    #@5
    .line 2018
    return-void
.end method

.method public nvReadItem(ILandroid/os/Message;)V
    .locals 0
    .param p1, "itemID"    # I
    .param p2, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1909
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    #@3
    .line 1908
    return-void
.end method

.method public nvResetConfig(ILandroid/os/Message;)V
    .locals 0
    .param p1, "resetType"    # I
    .param p2, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1924
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    #@3
    .line 1923
    return-void
.end method

.method public nvWriteCdmaPrl([BLandroid/os/Message;)V
    .locals 0
    .param p1, "preferredRoamingList"    # [B
    .param p2, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1919
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    #@3
    .line 1918
    return-void
.end method

.method public nvWriteItem(ILjava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "itemID"    # I
    .param p2, "itemValue"    # Ljava/lang/String;
    .param p3, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1914
    invoke-direct {p0, p3}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    #@3
    .line 1913
    return-void
.end method

.method public pauseResponses()V
    .locals 1

    #@0
    .prologue
    .line 1547
    iget v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mPausedResponseCount:I

    #@2
    add-int/lit8 v0, v0, 0x1

    #@4
    iput v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mPausedResponseCount:I

    #@6
    .line 1546
    return-void
.end method

.method public progressConnectingCallState()V
    .locals 1

    #@0
    .prologue
    .line 1463
    iget-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->simulatedCallState:Lcom/android/internal/telephony/test/SimulatedGsmCallState;

    #@2
    invoke-virtual {v0}, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->progressConnectingCallState()V

    #@5
    .line 1464
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mCallStateRegistrants:Landroid/os/RegistrantList;

    #@7
    invoke-virtual {v0}, Landroid/os/RegistrantList;->notifyRegistrants()V

    #@a
    .line 1462
    return-void
.end method

.method public progressConnectingToActive()V
    .locals 1

    #@0
    .prologue
    .line 1471
    iget-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->simulatedCallState:Lcom/android/internal/telephony/test/SimulatedGsmCallState;

    #@2
    invoke-virtual {v0}, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->progressConnectingToActive()V

    #@5
    .line 1472
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mCallStateRegistrants:Landroid/os/RegistrantList;

    #@7
    invoke-virtual {v0}, Landroid/os/RegistrantList;->notifyRegistrants()V

    #@a
    .line 1470
    return-void
.end method

.method public pullLceData(Landroid/os/Message;)V
    .locals 0
    .param p1, "result"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1951
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    #@3
    .line 1950
    return-void
.end method

.method public queryAvailableBandMode(Landroid/os/Message;)V
    .locals 5
    .param p1, "result"    # Landroid/os/Message;

    #@0
    .prologue
    const/4 v4, 0x3

    #@1
    const/4 v3, 0x2

    #@2
    const/4 v2, 0x4

    #@3
    .line 858
    new-array v0, v2, [I

    #@5
    .line 860
    .local v0, "ret":[I
    const/4 v1, 0x0

    #@6
    aput v2, v0, v1

    #@8
    .line 861
    const/4 v1, 0x1

    #@9
    aput v3, v0, v1

    #@b
    .line 862
    aput v4, v0, v3

    #@d
    .line 863
    aput v2, v0, v4

    #@f
    .line 865
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    #@12
    .line 857
    return-void
.end method

.method public queryCLIP(Landroid/os/Message;)V
    .locals 0
    .param p1, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1242
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    #@3
    return-void
.end method

.method public queryCallForwardStatus(IILjava/lang/String;Landroid/os/Message;)V
    .locals 1
    .param p1, "cfReason"    # I
    .param p2, "serviceClass"    # I
    .param p3, "number"    # Ljava/lang/String;
    .param p4, "result"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1322
    invoke-static {}, Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;->getInstance()Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;->queryCallForwardStatus(IILjava/lang/String;Landroid/os/Message;)V

    #@7
    .line 1324
    const/4 v0, 0x0

    #@8
    invoke-direct {p0, p4, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    #@b
    .line 1321
    return-void
.end method

.method public queryCallWaiting(ILandroid/os/Message;)V
    .locals 0
    .param p1, "serviceClass"    # I
    .param p2, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1283
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    #@3
    .line 1282
    return-void
.end method

.method public queryCdmaRoamingPreference(Landroid/os/Message;)V
    .locals 0
    .param p1, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1630
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    #@3
    .line 1629
    return-void
.end method

.method public queryFacilityLock(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;)V
    .locals 6
    .param p1, "facility"    # Ljava/lang/String;
    .param p2, "pin"    # Ljava/lang/String;
    .param p3, "serviceClass"    # I
    .param p4, "result"    # Landroid/os/Message;

    #@0
    .prologue
    .line 366
    const/4 v4, 0x0

    #@1
    move-object v0, p0

    #@2
    move-object v1, p1

    #@3
    move-object v2, p2

    #@4
    move v3, p3

    #@5
    move-object v5, p4

    #@6
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/test/SimulatedCommands;->queryFacilityLockForApp(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroid/os/Message;)V

    #@9
    .line 365
    return-void
.end method

.method public queryFacilityLockForApp(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroid/os/Message;)V
    .locals 5
    .param p1, "facility"    # Ljava/lang/String;
    .param p2, "pin"    # Ljava/lang/String;
    .param p3, "serviceClass"    # I
    .param p4, "appId"    # Ljava/lang/String;
    .param p5, "result"    # Landroid/os/Message;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 372
    if-eqz p1, :cond_3

    #@4
    const-string/jumbo v3, "SC"

    #@7
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@a
    move-result v3

    #@b
    if-eqz v3, :cond_3

    #@d
    .line 373
    if-eqz p5, :cond_0

    #@f
    .line 374
    new-array v0, v1, [I

    #@11
    .line 375
    .local v0, "r":[I
    iget-boolean v3, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mSimLockEnabled:Z

    #@13
    if-eqz v3, :cond_1

    #@15
    :goto_0
    aput v1, v0, v2

    #@17
    .line 376
    const-string/jumbo v3, "SimulatedCommands"

    #@1a
    new-instance v1, Ljava/lang/StringBuilder;

    #@1c
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1f
    const-string/jumbo v4, "[SimCmd] queryFacilityLock: SIM is "

    #@22
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v4

    #@26
    .line 377
    aget v1, v0, v2

    #@28
    if-nez v1, :cond_2

    #@2a
    const-string/jumbo v1, "unlocked"

    #@2d
    .line 376
    :goto_1
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v1

    #@31
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@34
    move-result-object v1

    #@35
    invoke-static {v3, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@38
    .line 378
    invoke-direct {p0, p5, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    #@3b
    .line 380
    .end local v0    # "r":[I
    :cond_0
    return-void

    #@3c
    .restart local v0    # "r":[I
    :cond_1
    move v1, v2

    #@3d
    .line 375
    goto :goto_0

    #@3e
    .line 377
    :cond_2
    const-string/jumbo v1, "locked"

    #@41
    goto :goto_1

    #@42
    .line 381
    .end local v0    # "r":[I
    :cond_3
    if-eqz p1, :cond_7

    #@44
    const-string/jumbo v3, "FD"

    #@47
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@4a
    move-result v3

    #@4b
    if-eqz v3, :cond_7

    #@4d
    .line 382
    if-eqz p5, :cond_4

    #@4f
    .line 383
    new-array v0, v1, [I

    #@51
    .line 384
    .restart local v0    # "r":[I
    iget-boolean v3, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mSimFdnEnabled:Z

    #@53
    if-eqz v3, :cond_5

    #@55
    :goto_2
    aput v1, v0, v2

    #@57
    .line 385
    const-string/jumbo v3, "SimulatedCommands"

    #@5a
    new-instance v1, Ljava/lang/StringBuilder;

    #@5c
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@5f
    const-string/jumbo v4, "[SimCmd] queryFacilityLock: FDN is "

    #@62
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@65
    move-result-object v4

    #@66
    .line 386
    aget v1, v0, v2

    #@68
    if-nez v1, :cond_6

    #@6a
    const-string/jumbo v1, "disabled"

    #@6d
    .line 385
    :goto_3
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@70
    move-result-object v1

    #@71
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@74
    move-result-object v1

    #@75
    invoke-static {v3, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@78
    .line 387
    invoke-direct {p0, p5, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    #@7b
    .line 389
    .end local v0    # "r":[I
    :cond_4
    return-void

    #@7c
    .restart local v0    # "r":[I
    :cond_5
    move v1, v2

    #@7d
    .line 384
    goto :goto_2

    #@7e
    .line 386
    :cond_6
    const-string/jumbo v1, "enabled"

    #@81
    goto :goto_3

    #@82
    .line 392
    .end local v0    # "r":[I
    :cond_7
    invoke-direct {p0, p5}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    #@85
    .line 371
    return-void
.end method

.method public queryTTYMode(Landroid/os/Message;)V
    .locals 0
    .param p1, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1681
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    #@3
    .line 1680
    return-void
.end method

.method public registerForExitEmergencyCallbackMode(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 2009
    invoke-static {}, Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;->getInstance()Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;->registerForExitEmergencyCallbackMode(Landroid/os/Handler;ILjava/lang/Object;)V

    #@7
    .line 2010
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/telephony/BaseCommands;->registerForExitEmergencyCallbackMode(Landroid/os/Handler;ILjava/lang/Object;)V

    #@a
    .line 2008
    return-void
.end method

.method public rejectCall(Landroid/os/Message;)V
    .locals 5
    .param p1, "result"    # Landroid/os/Message;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 763
    iget-object v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->simulatedCallState:Lcom/android/internal/telephony/test/SimulatedGsmCallState;

    #@3
    const/16 v2, 0x30

    #@5
    const/4 v3, 0x0

    #@6
    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->onChld(CC)Z

    #@9
    move-result v0

    #@a
    .line 765
    .local v0, "success":Z
    if-nez v0, :cond_0

    #@c
    .line 766
    new-instance v1, Ljava/lang/RuntimeException;

    #@e
    const-string/jumbo v2, "Hangup Error"

    #@11
    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@14
    invoke-direct {p0, p1, v4, v1}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultFail(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    #@17
    .line 760
    :goto_0
    return-void

    #@18
    .line 768
    :cond_0
    invoke-direct {p0, p1, v4}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    #@1b
    goto :goto_0
.end method

.method public reportSmsMemoryStatus(ZLandroid/os/Message;)V
    .locals 1
    .param p1, "available"    # Z
    .param p2, "result"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1169
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p2, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    #@4
    .line 1170
    invoke-static {}, Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;->getInstance()Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;

    #@7
    move-result-object v0

    #@8
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;->reportSmsMemoryStatus(ZLandroid/os/Message;)V

    #@b
    .line 1168
    return-void
.end method

.method public reportStkServiceIsRunning(Landroid/os/Message;)V
    .locals 1
    .param p1, "result"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1175
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    #@4
    .line 1174
    return-void
.end method

.method public requestIccSimAuthentication(ILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "authContext"    # I
    .param p2, "data"    # Ljava/lang/String;
    .param p3, "aid"    # Ljava/lang/String;
    .param p4, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1789
    invoke-direct {p0, p4}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    #@3
    .line 1788
    return-void
.end method

.method public requestIsimAuthentication(Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "nonce"    # Ljava/lang/String;
    .param p2, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1784
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    #@3
    .line 1783
    return-void
.end method

.method public requestShutdown(Landroid/os/Message;)V
    .locals 1
    .param p1, "result"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1934
    sget-object v0, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_UNAVAILABLE:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    #@2
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/BaseCommands;->setRadioState(Lcom/android/internal/telephony/CommandsInterface$RadioState;)V

    #@5
    .line 1933
    return-void
.end method

.method public resetRadio(Landroid/os/Message;)V
    .locals 0
    .param p1, "result"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1428
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    #@3
    .line 1427
    return-void
.end method

.method public resumeResponses()V
    .locals 4

    #@0
    .prologue
    .line 1553
    iget v2, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mPausedResponseCount:I

    #@2
    add-int/lit8 v2, v2, -0x1

    #@4
    iput v2, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mPausedResponseCount:I

    #@6
    .line 1555
    iget v2, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mPausedResponseCount:I

    #@8
    if-nez v2, :cond_1

    #@a
    .line 1556
    const/4 v0, 0x0

    #@b
    .local v0, "i":I
    iget-object v2, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mPausedResponses:Ljava/util/ArrayList;

    #@d
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@10
    move-result v1

    #@11
    .local v1, "s":I
    :goto_0
    if-ge v0, v1, :cond_0

    #@13
    .line 1557
    iget-object v2, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mPausedResponses:Ljava/util/ArrayList;

    #@15
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@18
    move-result-object v2

    #@19
    check-cast v2, Landroid/os/Message;

    #@1b
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    #@1e
    .line 1556
    add-int/lit8 v0, v0, 0x1

    #@20
    goto :goto_0

    #@21
    .line 1559
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mPausedResponses:Ljava/util/ArrayList;

    #@23
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    #@26
    .line 1552
    .end local v0    # "i":I
    .end local v1    # "s":I
    :goto_1
    return-void

    #@27
    .line 1561
    :cond_1
    const-string/jumbo v2, "GSM"

    #@2a
    const-string/jumbo v3, "SimulatedCommands.resumeResponses < 0"

    #@2d
    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@30
    goto :goto_1
.end method

.method public sendBurstDtmf(Ljava/lang/String;IILandroid/os/Message;)V
    .locals 1
    .param p1, "dtmfString"    # Ljava/lang/String;
    .param p2, "on"    # I
    .param p3, "off"    # I
    .param p4, "result"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1023
    invoke-static {}, Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;->getInstance()Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;->sendBurstDtmf(Ljava/lang/String;IILandroid/os/Message;)V

    #@7
    .line 1024
    const/4 v0, 0x0

    #@8
    invoke-direct {p0, p4, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    #@b
    .line 1022
    return-void
.end method

.method public sendCDMAFeatureCode(Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "FeatureCode"    # Ljava/lang/String;
    .param p2, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1689
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    #@3
    .line 1688
    return-void
.end method

.method public sendCdmaSms([BLandroid/os/Message;)V
    .locals 1
    .param p1, "pdu"    # [B
    .param p2, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1697
    invoke-static {}, Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;->getInstance()Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;->sendCdmaSms([BLandroid/os/Message;)V

    #@7
    .line 1698
    const/4 v0, 0x0

    #@8
    invoke-direct {p0, p2, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    #@b
    .line 1696
    return-void
.end method

.method public sendDtmf(CLandroid/os/Message;)V
    .locals 1
    .param p1, "c"    # C
    .param p2, "result"    # Landroid/os/Message;

    #@0
    .prologue
    .line 993
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p2, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    #@4
    .line 992
    return-void
.end method

.method public sendEnvelope(Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .param p1, "contents"    # Ljava/lang/String;
    .param p2, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 881
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p2, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    #@4
    .line 880
    return-void
.end method

.method public sendEnvelopeWithStatus(Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .param p1, "contents"    # Ljava/lang/String;
    .param p2, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 889
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p2, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    #@4
    .line 888
    return-void
.end method

.method public sendImsCdmaSms([BIILandroid/os/Message;)V
    .locals 3
    .param p1, "pdu"    # [B
    .param p2, "retry"    # I
    .param p3, "messageRef"    # I
    .param p4, "response"    # Landroid/os/Message;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1864
    invoke-static {}, Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;->getInstance()Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;

    #@4
    move-result-object v0

    #@5
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;->sendImsCdmaSms([BIILandroid/os/Message;)V

    #@8
    .line 1865
    new-instance v0, Lcom/android/internal/telephony/SmsResponse;

    #@a
    const/4 v1, 0x0

    #@b
    invoke-direct {v0, v2, v1, v2}, Lcom/android/internal/telephony/SmsResponse;-><init>(ILjava/lang/String;I)V

    #@e
    invoke-direct {p0, p4, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    #@11
    .line 1863
    return-void
.end method

.method public sendImsGsmSms(Ljava/lang/String;Ljava/lang/String;IILandroid/os/Message;)V
    .locals 7
    .param p1, "smscPDU"    # Ljava/lang/String;
    .param p2, "pdu"    # Ljava/lang/String;
    .param p3, "retry"    # I
    .param p4, "messageRef"    # I
    .param p5, "response"    # Landroid/os/Message;

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 1871
    invoke-static {}, Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;->getInstance()Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;

    #@4
    move-result-object v0

    #@5
    move-object v1, p1

    #@6
    move-object v2, p2

    #@7
    move v3, p3

    #@8
    move v4, p4

    #@9
    move-object v5, p5

    #@a
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;->sendImsGsmSms(Ljava/lang/String;Ljava/lang/String;IILandroid/os/Message;)V

    #@d
    .line 1873
    new-instance v0, Lcom/android/internal/telephony/SmsResponse;

    #@f
    const/4 v1, 0x0

    #@10
    invoke-direct {v0, v6, v1, v6}, Lcom/android/internal/telephony/SmsResponse;-><init>(ILjava/lang/String;I)V

    #@13
    invoke-direct {p0, p5, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    #@16
    .line 1870
    return-void
.end method

.method public sendSMS(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .param p1, "smscPDU"    # Ljava/lang/String;
    .param p2, "pdu"    # Ljava/lang/String;
    .param p3, "result"    # Landroid/os/Message;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1035
    invoke-static {}, Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;->getInstance()Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;

    #@4
    move-result-object v0

    #@5
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;->sendSMS(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    #@8
    .line 1036
    new-instance v0, Lcom/android/internal/telephony/SmsResponse;

    #@a
    const/4 v1, 0x0

    #@b
    invoke-direct {v0, v2, v1, v2}, Lcom/android/internal/telephony/SmsResponse;-><init>(ILjava/lang/String;I)V

    #@e
    invoke-direct {p0, p3, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    #@11
    .line 1034
    return-void
.end method

.method public sendSMSExpectMore(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "smscPDU"    # Ljava/lang/String;
    .param p2, "pdu"    # Ljava/lang/String;
    .param p3, "result"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1049
    invoke-direct {p0, p3}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    #@3
    .line 1048
    return-void
.end method

.method public sendStkCcAplha(Ljava/lang/String;)V
    .locals 0
    .param p1, "alphaString"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1385
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/test/SimulatedCommands;->triggerIncomingStkCcAlpha(Ljava/lang/String;)V

    #@3
    .line 1384
    return-void
.end method

.method public sendTerminalResponse(Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .param p1, "contents"    # Ljava/lang/String;
    .param p2, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 873
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p2, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    #@4
    .line 872
    return-void
.end method

.method public sendUSSD(Ljava/lang/String;Landroid/os/Message;)V
    .locals 2
    .param p1, "ussdString"    # Ljava/lang/String;
    .param p2, "result"    # Landroid/os/Message;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1407
    const-string/jumbo v0, "#646#"

    #@4
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 1408
    invoke-direct {p0, p2, v1}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    #@d
    .line 1411
    const-string/jumbo v0, "0"

    #@10
    const-string/jumbo v1, "You have NNN minutes remaining."

    #@13
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/test/SimulatedCommands;->triggerIncomingUssd(Ljava/lang/String;Ljava/lang/String;)V

    #@16
    .line 1404
    :goto_0
    return-void

    #@17
    .line 1413
    :cond_0
    invoke-direct {p0, p2, v1}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    #@1a
    .line 1415
    const-string/jumbo v0, "0"

    #@1d
    const-string/jumbo v1, "All Done"

    #@20
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/test/SimulatedCommands;->triggerIncomingUssd(Ljava/lang/String;Ljava/lang/String;)V

    #@23
    goto :goto_0
.end method

.method public separateConnection(ILandroid/os/Message;)V
    .locals 5
    .param p1, "gsmIndex"    # I
    .param p2, "result"    # Landroid/os/Message;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 723
    add-int/lit8 v2, p1, 0x30

    #@3
    int-to-char v0, v2

    #@4
    .line 724
    .local v0, "ch":C
    iget-object v2, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->simulatedCallState:Lcom/android/internal/telephony/test/SimulatedGsmCallState;

    #@6
    const/16 v3, 0x32

    #@8
    invoke-virtual {v2, v3, v0}, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->onChld(CC)Z

    #@b
    move-result v1

    #@c
    .line 726
    .local v1, "success":Z
    if-nez v1, :cond_0

    #@e
    .line 727
    new-instance v2, Ljava/lang/RuntimeException;

    #@10
    const-string/jumbo v3, "Hangup Error"

    #@13
    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@16
    invoke-direct {p0, p2, v4, v2}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultFail(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    #@19
    .line 720
    :goto_0
    return-void

    #@1a
    .line 729
    :cond_0
    invoke-direct {p0, p2, v4}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    #@1d
    goto :goto_0
.end method

.method public setAutoProgressConnectingCall(Z)V
    .locals 1
    .param p1, "b"    # Z

    #@0
    .prologue
    .line 1481
    iget-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->simulatedCallState:Lcom/android/internal/telephony/test/SimulatedGsmCallState;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->setAutoProgressConnectingCall(Z)V

    #@5
    .line 1480
    return-void
.end method

.method public setBandMode(ILandroid/os/Message;)V
    .locals 1
    .param p1, "bandMode"    # I
    .param p2, "result"    # Landroid/os/Message;

    #@0
    .prologue
    .line 845
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p2, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    #@4
    .line 844
    return-void
.end method

.method public setCLIR(ILandroid/os/Message;)V
    .locals 0
    .param p1, "clirMode"    # I
    .param p2, "result"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1271
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    #@3
    return-void
.end method

.method public setCallForward(IIILjava/lang/String;ILandroid/os/Message;)V
    .locals 7
    .param p1, "action"    # I
    .param p2, "cfReason"    # I
    .param p3, "serviceClass"    # I
    .param p4, "number"    # Ljava/lang/String;
    .param p5, "timeSeconds"    # I
    .param p6, "result"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1306
    invoke-static {}, Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;->getInstance()Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;

    #@3
    move-result-object v0

    #@4
    move v1, p1

    #@5
    move v2, p2

    #@6
    move v3, p3

    #@7
    move-object v4, p4

    #@8
    move v5, p5

    #@9
    move-object v6, p6

    #@a
    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;->setCallForward(IIILjava/lang/String;ILandroid/os/Message;)V

    #@d
    .line 1308
    const/4 v0, 0x0

    #@e
    invoke-direct {p0, p6, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    #@11
    .line 1305
    return-void
.end method

.method public setCallWaiting(ZILandroid/os/Message;)V
    .locals 0
    .param p1, "enable"    # Z
    .param p2, "serviceClass"    # I
    .param p3, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1295
    invoke-direct {p0, p3}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    #@3
    .line 1294
    return-void
.end method

.method public setCdmaBroadcastActivation(ZLandroid/os/Message;)V
    .locals 0
    .param p1, "activate"    # Z
    .param p2, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1703
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    #@3
    .line 1702
    return-void
.end method

.method public setCdmaBroadcastConfig([Lcom/android/internal/telephony/cdma/CdmaSmsBroadcastConfigInfo;Landroid/os/Message;)V
    .locals 0
    .param p1, "configs"    # [Lcom/android/internal/telephony/cdma/CdmaSmsBroadcastConfigInfo;
    .param p2, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1715
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    #@3
    .line 1714
    return-void
.end method

.method public setCdmaRoamingPreference(ILandroid/os/Message;)V
    .locals 0
    .param p1, "cdmaRoamingType"    # I
    .param p2, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1635
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    #@3
    .line 1634
    return-void
.end method

.method public setCdmaSubscriptionSource(ILandroid/os/Message;)V
    .locals 0
    .param p1, "cdmaSubscriptionType"    # I
    .param p2, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1625
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    #@3
    .line 1624
    return-void
.end method

.method public setCellInfoList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/CellInfo;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 1801
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    iput-object p1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mCellInfoList:Ljava/util/List;

    #@2
    .line 1800
    return-void
.end method

.method public setCellInfoListRate(ILandroid/os/Message;)V
    .locals 0
    .param p1, "rateInMillis"    # I
    .param p2, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1836
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    #@3
    .line 1835
    return-void
.end method

.method public setDataAllowed(ZLandroid/os/Message;)V
    .locals 2
    .param p1, "allowed"    # Z
    .param p2, "result"    # Landroid/os/Message;

    #@0
    .prologue
    .line 2077
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "setDataAllowed = "

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@f
    move-result-object v0

    #@10
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13
    move-result-object v0

    #@14
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->log(Ljava/lang/String;)V

    #@17
    .line 2078
    iget-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mAllowed:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@19
    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    #@1c
    .line 2079
    const/4 v0, 0x0

    #@1d
    invoke-direct {p0, p2, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    #@20
    .line 2076
    return-void
.end method

.method public setDataCallResponse(ZLcom/android/internal/telephony/dataconnection/DataCallResponse;)V
    .locals 0
    .param p1, "success"    # Z
    .param p2, "dcResponse"    # Lcom/android/internal/telephony/dataconnection/DataCallResponse;

    #@0
    .prologue
    .line 1077
    iput-object p2, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mDcResponse:Lcom/android/internal/telephony/dataconnection/DataCallResponse;

    #@2
    .line 1078
    iput-boolean p1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mDcSuccess:Z

    #@4
    .line 1076
    return-void
.end method

.method public setDataProfile([Lcom/android/internal/telephony/dataconnection/DataProfile;Landroid/os/Message;)V
    .locals 0
    .param p1, "dps"    # [Lcom/android/internal/telephony/dataconnection/DataProfile;
    .param p2, "result"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1845
    return-void
.end method

.method public setDataRadioTech(I)V
    .locals 0
    .param p1, "radioTech"    # I

    #@0
    .prologue
    .line 935
    iput p1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mDataRadioTech:I

    #@2
    .line 934
    return-void
.end method

.method public setDataRegState(I)V
    .locals 0
    .param p1, "dataRegState"    # I

    #@0
    .prologue
    .line 939
    iput p1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mDataRegState:I

    #@2
    .line 938
    return-void
.end method

.method public setEmergencyCallbackMode(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 1990
    invoke-static {}, Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;->getInstance()Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;->setEmergencyCallbackMode(Landroid/os/Handler;ILjava/lang/Object;)V

    #@7
    .line 1991
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/telephony/BaseCommands;->setEmergencyCallbackMode(Landroid/os/Handler;ILjava/lang/Object;)V

    #@a
    .line 1989
    return-void
.end method

.method public setFacilityLock(Ljava/lang/String;ZLjava/lang/String;ILandroid/os/Message;)V
    .locals 7
    .param p1, "facility"    # Ljava/lang/String;
    .param p2, "lockEnabled"    # Z
    .param p3, "pin"    # Ljava/lang/String;
    .param p4, "serviceClass"    # I
    .param p5, "result"    # Landroid/os/Message;

    #@0
    .prologue
    .line 398
    const/4 v5, 0x0

    #@1
    move-object v0, p0

    #@2
    move-object v1, p1

    #@3
    move v2, p2

    #@4
    move-object v3, p3

    #@5
    move v4, p4

    #@6
    move-object v6, p5

    #@7
    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/test/SimulatedCommands;->setFacilityLockForApp(Ljava/lang/String;ZLjava/lang/String;ILjava/lang/String;Landroid/os/Message;)V

    #@a
    .line 397
    return-void
.end method

.method public setFacilityLockForApp(Ljava/lang/String;ZLjava/lang/String;ILjava/lang/String;Landroid/os/Message;)V
    .locals 4
    .param p1, "facility"    # Ljava/lang/String;
    .param p2, "lockEnabled"    # Z
    .param p3, "pin"    # Ljava/lang/String;
    .param p4, "serviceClass"    # I
    .param p5, "appId"    # Ljava/lang/String;
    .param p6, "result"    # Landroid/os/Message;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 405
    if-eqz p1, :cond_1

    #@3
    .line 406
    const-string/jumbo v1, "SC"

    #@6
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@9
    move-result v1

    #@a
    .line 405
    if-eqz v1, :cond_1

    #@c
    .line 407
    if-eqz p3, :cond_0

    #@e
    iget-object v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mPinCode:Ljava/lang/String;

    #@10
    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@13
    move-result v1

    #@14
    if-eqz v1, :cond_0

    #@16
    .line 408
    const-string/jumbo v1, "SimulatedCommands"

    #@19
    const-string/jumbo v2, "[SimCmd] setFacilityLock: pin is valid"

    #@1c
    invoke-static {v1, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@1f
    .line 409
    iput-boolean p2, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mSimLockEnabled:Z

    #@21
    .line 411
    invoke-direct {p0, p6, v3}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    #@24
    .line 413
    return-void

    #@25
    .line 416
    :cond_0
    const-string/jumbo v1, "SimulatedCommands"

    #@28
    const-string/jumbo v2, "[SimCmd] setFacilityLock: pin failed!"

    #@2b
    invoke-static {v1, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@2e
    .line 418
    new-instance v0, Lcom/android/internal/telephony/CommandException;

    #@30
    .line 419
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    #@32
    .line 418
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    #@35
    .line 420
    .local v0, "ex":Lcom/android/internal/telephony/CommandException;
    invoke-direct {p0, p6, v3, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultFail(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    #@38
    .line 422
    return-void

    #@39
    .line 423
    .end local v0    # "ex":Lcom/android/internal/telephony/CommandException;
    :cond_1
    if-eqz p1, :cond_3

    #@3b
    .line 424
    const-string/jumbo v1, "FD"

    #@3e
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@41
    move-result v1

    #@42
    .line 423
    if-eqz v1, :cond_3

    #@44
    .line 425
    if-eqz p3, :cond_2

    #@46
    iget-object v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mPin2Code:Ljava/lang/String;

    #@48
    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@4b
    move-result v1

    #@4c
    if-eqz v1, :cond_2

    #@4e
    .line 426
    const-string/jumbo v1, "SimulatedCommands"

    #@51
    const-string/jumbo v2, "[SimCmd] setFacilityLock: pin2 is valid"

    #@54
    invoke-static {v1, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@57
    .line 427
    iput-boolean p2, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mSimFdnEnabled:Z

    #@59
    .line 429
    invoke-direct {p0, p6, v3}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    #@5c
    .line 431
    return-void

    #@5d
    .line 434
    :cond_2
    const-string/jumbo v1, "SimulatedCommands"

    #@60
    const-string/jumbo v2, "[SimCmd] setFacilityLock: pin2 failed!"

    #@63
    invoke-static {v1, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@66
    .line 436
    new-instance v0, Lcom/android/internal/telephony/CommandException;

    #@68
    .line 437
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    #@6a
    .line 436
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    #@6d
    .line 438
    .restart local v0    # "ex":Lcom/android/internal/telephony/CommandException;
    invoke-direct {p0, p6, v3, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultFail(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    #@70
    .line 440
    return-void

    #@71
    .line 443
    .end local v0    # "ex":Lcom/android/internal/telephony/CommandException;
    :cond_3
    invoke-direct {p0, p6}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    #@74
    .line 404
    return-void
.end method

.method public setGsmBroadcastActivation(ZLandroid/os/Message;)V
    .locals 0
    .param p1, "activate"    # Z
    .param p2, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1725
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    #@3
    .line 1724
    return-void
.end method

.method public setGsmBroadcastConfig([Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;Landroid/os/Message;)V
    .locals 0
    .param p1, "config"    # [Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;
    .param p2, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1731
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    #@3
    .line 1730
    return-void
.end method

.method public setIMEI(Ljava/lang/String;)V
    .locals 0
    .param p1, "imei"    # Ljava/lang/String;

    #@0
    .prologue
    .line 548
    iput-object p1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mImei:Ljava/lang/String;

    #@2
    .line 547
    return-void
.end method

.method public setIMEISV(Ljava/lang/String;)V
    .locals 0
    .param p1, "imeisv"    # Ljava/lang/String;

    #@0
    .prologue
    .line 565
    iput-object p1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mImeiSv:Ljava/lang/String;

    #@2
    .line 564
    return-void
.end method

.method public setIccCardStatus(Lcom/android/internal/telephony/uicc/IccCardStatus;)V
    .locals 0
    .param p1, "iccCardStatus"    # Lcom/android/internal/telephony/uicc/IccCardStatus;

    #@0
    .prologue
    .line 2058
    iput-object p1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mIccCardStatus:Lcom/android/internal/telephony/uicc/IccCardStatus;

    #@2
    .line 2057
    return-void
.end method

.method public setIccIoResultForApduLogicalChannel(Lcom/android/internal/telephony/uicc/IccIoResult;)V
    .locals 0
    .param p1, "iccIoResult"    # Lcom/android/internal/telephony/uicc/IccIoResult;

    #@0
    .prologue
    .line 2062
    iput-object p1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mIccIoResultForApduLogicalChannel:Lcom/android/internal/telephony/uicc/IccIoResult;

    #@2
    .line 2061
    return-void
.end method

.method public setImsRegistrationState([I)V
    .locals 0
    .param p1, "regState"    # [I

    #@0
    .prologue
    .line 1849
    iput-object p1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mImsRegState:[I

    #@2
    .line 1848
    return-void
.end method

.method public setInitialAttachApn(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "apn"    # Ljava/lang/String;
    .param p2, "protocol"    # Ljava/lang/String;
    .param p3, "authType"    # I
    .param p4, "username"    # Ljava/lang/String;
    .param p5, "password"    # Ljava/lang/String;
    .param p6, "result"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1841
    return-void
.end method

.method public setLocationUpdates(ZLandroid/os/Message;)V
    .locals 1
    .param p1, "enable"    # Z
    .param p2, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1153
    invoke-static {}, Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;->getInstance()Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;->setLocationUpdates(ZLandroid/os/Message;)V

    #@7
    .line 1154
    const/4 v0, 0x0

    #@8
    invoke-direct {p0, p2, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    #@b
    .line 1152
    return-void
.end method

.method public setMute(ZLandroid/os/Message;)V
    .locals 0
    .param p1, "enableMute"    # Z
    .param p2, "result"    # Landroid/os/Message;

    #@0
    .prologue
    .line 803
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    #@3
    return-void
.end method

.method public setNetworkSelectionModeAutomatic(Landroid/os/Message;)V
    .locals 0
    .param p1, "result"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1328
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    #@3
    return-void
.end method

.method public setNetworkSelectionModeManual(Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "operatorNumeric"    # Ljava/lang/String;
    .param p2, "result"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1333
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    #@3
    return-void
.end method

.method public setNextCallFailCause(I)V
    .locals 0
    .param p1, "gsmCause"    # I

    #@0
    .prologue
    .line 1493
    iput p1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mNextCallFailCause:I

    #@2
    .line 1492
    return-void
.end method

.method public setNextDialFailImmediately(Z)V
    .locals 1
    .param p1, "b"    # Z

    #@0
    .prologue
    .line 1487
    iget-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->simulatedCallState:Lcom/android/internal/telephony/test/SimulatedGsmCallState;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->setNextDialFailImmediately(Z)V

    #@5
    .line 1486
    return-void
.end method

.method public setOpenChannelId(I)V
    .locals 0
    .param p1, "channelId"    # I

    #@0
    .prologue
    .line 2066
    iput p1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mChannelId:I

    #@2
    .line 2065
    return-void
.end method

.method public setPhoneType(I)V
    .locals 0
    .param p1, "phoneType"    # I

    #@0
    .prologue
    .line 1640
    return-void
.end method

.method public setPin1RemainingAttempt(I)V
    .locals 0
    .param p1, "pin1attemptsRemaining"    # I

    #@0
    .prologue
    .line 2070
    iput p1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mPin1attemptsRemaining:I

    #@2
    .line 2069
    return-void
.end method

.method public setPreferredNetworkType(ILandroid/os/Message;)V
    .locals 1
    .param p1, "networkType"    # I
    .param p2, "result"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1126
    invoke-static {}, Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;->getInstance()Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;->setPreferredNetworkType(ILandroid/os/Message;)V

    #@7
    .line 1127
    iput p1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mNetworkType:I

    #@9
    .line 1128
    const/4 v0, 0x0

    #@a
    invoke-direct {p0, p2, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    #@d
    .line 1125
    return-void
.end method

.method public setPreferredVoicePrivacy(ZLandroid/os/Message;)V
    .locals 0
    .param p1, "enable"    # Z
    .param p2, "result"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1650
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    #@3
    .line 1649
    return-void
.end method

.method public setRadioPower(ZLandroid/os/Message;)V
    .locals 1
    .param p1, "on"    # Z
    .param p2, "result"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1192
    if-eqz p1, :cond_0

    #@2
    .line 1193
    sget-object v0, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_ON:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    #@4
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/BaseCommands;->setRadioState(Lcom/android/internal/telephony/CommandsInterface$RadioState;)V

    #@7
    .line 1191
    :goto_0
    return-void

    #@8
    .line 1195
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_OFF:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    #@a
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/BaseCommands;->setRadioState(Lcom/android/internal/telephony/CommandsInterface$RadioState;)V

    #@d
    goto :goto_0
.end method

.method public setSignalStrength(Landroid/telephony/SignalStrength;)V
    .locals 0
    .param p1, "signalStrength"    # Landroid/telephony/SignalStrength;

    #@0
    .prologue
    .line 809
    iput-object p1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mSignalStrength:Landroid/telephony/SignalStrength;

    #@2
    .line 808
    return-void
.end method

.method public setSmscAddress(Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "result"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1164
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    #@3
    .line 1163
    return-void
.end method

.method public setSuppServiceNotifications(ZLandroid/os/Message;)V
    .locals 2
    .param p1, "enable"    # Z
    .param p2, "result"    # Landroid/os/Message;

    #@0
    .prologue
    .line 354
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p2, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    #@4
    .line 356
    if-eqz p1, :cond_0

    #@6
    iget-boolean v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mSsnNotifyOn:Z

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 357
    const-string/jumbo v0, "SimulatedCommands"

    #@d
    const-string/jumbo v1, "Supp Service Notifications already enabled!"

    #@10
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@13
    .line 360
    :cond_0
    iput-boolean p1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mSsnNotifyOn:Z

    #@15
    .line 353
    return-void
.end method

.method public setTTYMode(ILandroid/os/Message;)V
    .locals 2
    .param p1, "ttyMode"    # I
    .param p2, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1665
    const-string/jumbo v0, "SimulatedCommands"

    #@3
    const-string/jumbo v1, "Not implemented in SimulatedCommands"

    #@6
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@9
    .line 1666
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    #@c
    .line 1664
    return-void
.end method

.method public setVoiceRadioTech(I)V
    .locals 0
    .param p1, "voiceRadioTech"    # I

    #@0
    .prologue
    .line 902
    iput p1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mVoiceRadioTech:I

    #@2
    .line 901
    return-void
.end method

.method public setVoiceRegState(I)V
    .locals 0
    .param p1, "voiceRegState"    # I

    #@0
    .prologue
    .line 906
    iput p1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mVoiceRegState:I

    #@2
    .line 905
    return-void
.end method

.method public setupDataCall(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroid/os/Message;)V
    .locals 10
    .param p1, "radioTechnology"    # I
    .param p2, "profile"    # I
    .param p3, "apn"    # Ljava/lang/String;
    .param p4, "user"    # Ljava/lang/String;
    .param p5, "password"    # Ljava/lang/String;
    .param p6, "authType"    # I
    .param p7, "protocol"    # Ljava/lang/String;
    .param p8, "result"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1092
    invoke-static {}, Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;->getInstance()Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;

    #@3
    move-result-object v1

    #@4
    move v2, p1

    #@5
    move v3, p2

    #@6
    move-object v4, p3

    #@7
    move-object v5, p4

    #@8
    move-object v6, p5

    #@9
    move/from16 v7, p6

    #@b
    move-object/from16 v8, p7

    #@d
    move-object/from16 v9, p8

    #@f
    invoke-virtual/range {v1 .. v9}, Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;->setupDataCall(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroid/os/Message;)V

    #@12
    .line 1095
    iget-object v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mDcResponse:Lcom/android/internal/telephony/dataconnection/DataCallResponse;

    #@14
    if-nez v1, :cond_0

    #@16
    .line 1096
    new-instance v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse;

    #@18
    invoke-direct {v1}, Lcom/android/internal/telephony/dataconnection/DataCallResponse;-><init>()V

    #@1b
    iput-object v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mDcResponse:Lcom/android/internal/telephony/dataconnection/DataCallResponse;

    #@1d
    .line 1097
    iget-object v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mDcResponse:Lcom/android/internal/telephony/dataconnection/DataCallResponse;

    #@1f
    const/16 v2, 0xb

    #@21
    iput v2, v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->version:I

    #@23
    .line 1098
    iget-object v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mDcResponse:Lcom/android/internal/telephony/dataconnection/DataCallResponse;

    #@25
    const/4 v2, 0x0

    #@26
    iput v2, v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->status:I

    #@28
    .line 1099
    iget-object v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mDcResponse:Lcom/android/internal/telephony/dataconnection/DataCallResponse;

    #@2a
    const/4 v2, -0x1

    #@2b
    iput v2, v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->suggestedRetryTime:I

    #@2d
    .line 1100
    iget-object v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mDcResponse:Lcom/android/internal/telephony/dataconnection/DataCallResponse;

    #@2f
    const/4 v2, 0x1

    #@30
    iput v2, v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->cid:I

    #@32
    .line 1101
    iget-object v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mDcResponse:Lcom/android/internal/telephony/dataconnection/DataCallResponse;

    #@34
    const/4 v2, 0x2

    #@35
    iput v2, v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->active:I

    #@37
    .line 1102
    iget-object v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mDcResponse:Lcom/android/internal/telephony/dataconnection/DataCallResponse;

    #@39
    const-string/jumbo v2, "IP"

    #@3c
    iput-object v2, v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->type:Ljava/lang/String;

    #@3e
    .line 1103
    iget-object v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mDcResponse:Lcom/android/internal/telephony/dataconnection/DataCallResponse;

    #@40
    const-string/jumbo v2, "rmnet_data7"

    #@43
    iput-object v2, v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->ifname:Ljava/lang/String;

    #@45
    .line 1104
    iget-object v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mDcResponse:Lcom/android/internal/telephony/dataconnection/DataCallResponse;

    #@47
    const/16 v2, 0x5a0

    #@49
    iput v2, v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->mtu:I

    #@4b
    .line 1105
    iget-object v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mDcResponse:Lcom/android/internal/telephony/dataconnection/DataCallResponse;

    #@4d
    const/4 v2, 0x1

    #@4e
    new-array v2, v2, [Ljava/lang/String;

    #@50
    const-string/jumbo v3, "12.34.56.78"

    #@53
    const/4 v4, 0x0

    #@54
    aput-object v3, v2, v4

    #@56
    iput-object v2, v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->addresses:[Ljava/lang/String;

    #@58
    .line 1106
    iget-object v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mDcResponse:Lcom/android/internal/telephony/dataconnection/DataCallResponse;

    #@5a
    const/4 v2, 0x1

    #@5b
    new-array v2, v2, [Ljava/lang/String;

    #@5d
    const-string/jumbo v3, "98.76.54.32"

    #@60
    const/4 v4, 0x0

    #@61
    aput-object v3, v2, v4

    #@63
    iput-object v2, v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->dnses:[Ljava/lang/String;

    #@65
    .line 1107
    iget-object v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mDcResponse:Lcom/android/internal/telephony/dataconnection/DataCallResponse;

    #@67
    const/4 v2, 0x1

    #@68
    new-array v2, v2, [Ljava/lang/String;

    #@6a
    const-string/jumbo v3, "11.22.33.44"

    #@6d
    const/4 v4, 0x0

    #@6e
    aput-object v3, v2, v4

    #@70
    iput-object v2, v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->gateways:[Ljava/lang/String;

    #@72
    .line 1108
    iget-object v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mDcResponse:Lcom/android/internal/telephony/dataconnection/DataCallResponse;

    #@74
    const/4 v2, 0x0

    #@75
    new-array v2, v2, [Ljava/lang/String;

    #@77
    iput-object v2, v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->pcscf:[Ljava/lang/String;

    #@79
    .line 1111
    :cond_0
    iget-boolean v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mDcSuccess:Z

    #@7b
    if-eqz v1, :cond_1

    #@7d
    .line 1112
    iget-object v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mDcResponse:Lcom/android/internal/telephony/dataconnection/DataCallResponse;

    #@7f
    move-object/from16 v0, p8

    #@81
    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    #@84
    .line 1091
    :goto_0
    return-void

    #@85
    .line 1114
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mDcResponse:Lcom/android/internal/telephony/dataconnection/DataCallResponse;

    #@87
    new-instance v2, Ljava/lang/RuntimeException;

    #@89
    const-string/jumbo v3, "Setup data call failed!"

    #@8c
    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@8f
    move-object/from16 v0, p8

    #@91
    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultFail(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    #@94
    goto :goto_0
.end method

.method public shutdown()V
    .locals 2

    #@0
    .prologue
    .line 1522
    sget-object v1, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_UNAVAILABLE:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    #@2
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/BaseCommands;->setRadioState(Lcom/android/internal/telephony/CommandsInterface$RadioState;)V

    #@5
    .line 1523
    iget-object v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mHandlerThread:Landroid/os/HandlerThread;

    #@7
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    #@a
    move-result-object v0

    #@b
    .line 1524
    .local v0, "looper":Landroid/os/Looper;
    if-eqz v0, :cond_0

    #@d
    .line 1525
    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    #@10
    .line 1521
    :cond_0
    return-void
.end method

.method public startDtmf(CLandroid/os/Message;)V
    .locals 1
    .param p1, "c"    # C
    .param p2, "result"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1003
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p2, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    #@4
    .line 1002
    return-void
.end method

.method public startLceService(IZLandroid/os/Message;)V
    .locals 1
    .param p1, "report_interval_ms"    # I
    .param p2, "pullMode"    # Z
    .param p3, "result"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1939
    invoke-static {}, Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;->getInstance()Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;->startLceService(IZLandroid/os/Message;)V

    #@7
    .line 1941
    invoke-direct {p0, p3}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    #@a
    .line 1938
    return-void
.end method

.method public stopDtmf(Landroid/os/Message;)V
    .locals 1
    .param p1, "result"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1013
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    #@4
    .line 1012
    return-void
.end method

.method public stopLceService(Landroid/os/Message;)V
    .locals 0
    .param p1, "result"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1946
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    #@3
    .line 1945
    return-void
.end method

.method public supplyIccPin(Ljava/lang/String;Landroid/os/Message;)V
    .locals 5
    .param p1, "pin"    # Ljava/lang/String;
    .param p2, "result"    # Landroid/os/Message;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 168
    iget-object v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mSimLockedState:Lcom/android/internal/telephony/test/SimulatedCommands$SimLockState;

    #@3
    sget-object v2, Lcom/android/internal/telephony/test/SimulatedCommands$SimLockState;->REQUIRE_PIN:Lcom/android/internal/telephony/test/SimulatedCommands$SimLockState;

    #@5
    if-eq v1, v2, :cond_0

    #@7
    .line 169
    const-string/jumbo v1, "SimulatedCommands"

    #@a
    new-instance v2, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string/jumbo v3, "[SimCmd] supplyIccPin: wrong state, state="

    #@12
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v2

    #@16
    .line 170
    iget-object v3, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mSimLockedState:Lcom/android/internal/telephony/test/SimulatedCommands$SimLockState;

    #@18
    .line 169
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v2

    #@1c
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f
    move-result-object v2

    #@20
    invoke-static {v1, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@23
    .line 171
    new-instance v0, Lcom/android/internal/telephony/CommandException;

    #@25
    .line 172
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->PASSWORD_INCORRECT:Lcom/android/internal/telephony/CommandException$Error;

    #@27
    .line 171
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    #@2a
    .line 173
    .local v0, "ex":Lcom/android/internal/telephony/CommandException;
    invoke-direct {p0, p2, v4, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultFail(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    #@2d
    .line 174
    return-void

    #@2e
    .line 177
    .end local v0    # "ex":Lcom/android/internal/telephony/CommandException;
    :cond_0
    if-eqz p1, :cond_1

    #@30
    iget-object v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mPinCode:Ljava/lang/String;

    #@32
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@35
    move-result v1

    #@36
    if-eqz v1, :cond_1

    #@38
    .line 178
    const-string/jumbo v1, "SimulatedCommands"

    #@3b
    const-string/jumbo v2, "[SimCmd] supplyIccPin: success!"

    #@3e
    invoke-static {v1, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@41
    .line 179
    const/4 v1, 0x0

    #@42
    iput v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mPinUnlockAttempts:I

    #@44
    .line 180
    sget-object v1, Lcom/android/internal/telephony/test/SimulatedCommands$SimLockState;->NONE:Lcom/android/internal/telephony/test/SimulatedCommands$SimLockState;

    #@46
    iput-object v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mSimLockedState:Lcom/android/internal/telephony/test/SimulatedCommands$SimLockState;

    #@48
    .line 181
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mIccStatusChangedRegistrants:Landroid/os/RegistrantList;

    #@4a
    invoke-virtual {v1}, Landroid/os/RegistrantList;->notifyRegistrants()V

    #@4d
    .line 183
    invoke-direct {p0, p2, v4}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    #@50
    .line 185
    return-void

    #@51
    .line 188
    :cond_1
    if-eqz p2, :cond_3

    #@53
    .line 189
    iget v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mPinUnlockAttempts:I

    #@55
    add-int/lit8 v1, v1, 0x1

    #@57
    iput v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mPinUnlockAttempts:I

    #@59
    .line 191
    const-string/jumbo v1, "SimulatedCommands"

    #@5c
    new-instance v2, Ljava/lang/StringBuilder;

    #@5e
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@61
    const-string/jumbo v3, "[SimCmd] supplyIccPin: failed! attempt="

    #@64
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@67
    move-result-object v2

    #@68
    .line 192
    iget v3, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mPinUnlockAttempts:I

    #@6a
    .line 191
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@6d
    move-result-object v2

    #@6e
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@71
    move-result-object v2

    #@72
    invoke-static {v1, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@75
    .line 193
    iget v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mPinUnlockAttempts:I

    #@77
    const/4 v2, 0x5

    #@78
    if-lt v1, v2, :cond_2

    #@7a
    .line 194
    const-string/jumbo v1, "SimulatedCommands"

    #@7d
    const-string/jumbo v2, "[SimCmd] supplyIccPin: set state to REQUIRE_PUK"

    #@80
    invoke-static {v1, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@83
    .line 195
    sget-object v1, Lcom/android/internal/telephony/test/SimulatedCommands$SimLockState;->REQUIRE_PUK:Lcom/android/internal/telephony/test/SimulatedCommands$SimLockState;

    #@85
    iput-object v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mSimLockedState:Lcom/android/internal/telephony/test/SimulatedCommands$SimLockState;

    #@87
    .line 198
    :cond_2
    new-instance v0, Lcom/android/internal/telephony/CommandException;

    #@89
    .line 199
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->PASSWORD_INCORRECT:Lcom/android/internal/telephony/CommandException$Error;

    #@8b
    .line 198
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    #@8e
    .line 200
    .restart local v0    # "ex":Lcom/android/internal/telephony/CommandException;
    invoke-direct {p0, p2, v4, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultFail(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    #@91
    .line 167
    .end local v0    # "ex":Lcom/android/internal/telephony/CommandException;
    :cond_3
    return-void
.end method

.method public supplyIccPin2(Ljava/lang/String;Landroid/os/Message;)V
    .locals 5
    .param p1, "pin2"    # Ljava/lang/String;
    .param p2, "result"    # Landroid/os/Message;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 243
    iget-object v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mSimFdnEnabledState:Lcom/android/internal/telephony/test/SimulatedCommands$SimFdnState;

    #@3
    sget-object v2, Lcom/android/internal/telephony/test/SimulatedCommands$SimFdnState;->REQUIRE_PIN2:Lcom/android/internal/telephony/test/SimulatedCommands$SimFdnState;

    #@5
    if-eq v1, v2, :cond_0

    #@7
    .line 244
    const-string/jumbo v1, "SimulatedCommands"

    #@a
    new-instance v2, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string/jumbo v3, "[SimCmd] supplyIccPin2: wrong state, state="

    #@12
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v2

    #@16
    .line 245
    iget-object v3, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mSimFdnEnabledState:Lcom/android/internal/telephony/test/SimulatedCommands$SimFdnState;

    #@18
    .line 244
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v2

    #@1c
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f
    move-result-object v2

    #@20
    invoke-static {v1, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@23
    .line 246
    new-instance v0, Lcom/android/internal/telephony/CommandException;

    #@25
    .line 247
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->PASSWORD_INCORRECT:Lcom/android/internal/telephony/CommandException$Error;

    #@27
    .line 246
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    #@2a
    .line 248
    .local v0, "ex":Lcom/android/internal/telephony/CommandException;
    invoke-direct {p0, p2, v4, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultFail(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    #@2d
    .line 249
    return-void

    #@2e
    .line 252
    .end local v0    # "ex":Lcom/android/internal/telephony/CommandException;
    :cond_0
    if-eqz p1, :cond_1

    #@30
    iget-object v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mPin2Code:Ljava/lang/String;

    #@32
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@35
    move-result v1

    #@36
    if-eqz v1, :cond_1

    #@38
    .line 253
    const-string/jumbo v1, "SimulatedCommands"

    #@3b
    const-string/jumbo v2, "[SimCmd] supplyIccPin2: success!"

    #@3e
    invoke-static {v1, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@41
    .line 254
    const/4 v1, 0x0

    #@42
    iput v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mPin2UnlockAttempts:I

    #@44
    .line 255
    sget-object v1, Lcom/android/internal/telephony/test/SimulatedCommands$SimFdnState;->NONE:Lcom/android/internal/telephony/test/SimulatedCommands$SimFdnState;

    #@46
    iput-object v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mSimFdnEnabledState:Lcom/android/internal/telephony/test/SimulatedCommands$SimFdnState;

    #@48
    .line 257
    invoke-direct {p0, p2, v4}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    #@4b
    .line 258
    return-void

    #@4c
    .line 261
    :cond_1
    if-eqz p2, :cond_3

    #@4e
    .line 262
    iget v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mPin2UnlockAttempts:I

    #@50
    add-int/lit8 v1, v1, 0x1

    #@52
    iput v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mPin2UnlockAttempts:I

    #@54
    .line 264
    const-string/jumbo v1, "SimulatedCommands"

    #@57
    new-instance v2, Ljava/lang/StringBuilder;

    #@59
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@5c
    const-string/jumbo v3, "[SimCmd] supplyIccPin2: failed! attempt="

    #@5f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@62
    move-result-object v2

    #@63
    .line 265
    iget v3, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mPin2UnlockAttempts:I

    #@65
    .line 264
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@68
    move-result-object v2

    #@69
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6c
    move-result-object v2

    #@6d
    invoke-static {v1, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@70
    .line 266
    iget v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mPin2UnlockAttempts:I

    #@72
    const/4 v2, 0x5

    #@73
    if-lt v1, v2, :cond_2

    #@75
    .line 267
    const-string/jumbo v1, "SimulatedCommands"

    #@78
    const-string/jumbo v2, "[SimCmd] supplyIccPin2: set state to REQUIRE_PUK2"

    #@7b
    invoke-static {v1, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@7e
    .line 268
    sget-object v1, Lcom/android/internal/telephony/test/SimulatedCommands$SimFdnState;->REQUIRE_PUK2:Lcom/android/internal/telephony/test/SimulatedCommands$SimFdnState;

    #@80
    iput-object v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mSimFdnEnabledState:Lcom/android/internal/telephony/test/SimulatedCommands$SimFdnState;

    #@82
    .line 271
    :cond_2
    new-instance v0, Lcom/android/internal/telephony/CommandException;

    #@84
    .line 272
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->PASSWORD_INCORRECT:Lcom/android/internal/telephony/CommandException$Error;

    #@86
    .line 271
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    #@89
    .line 273
    .restart local v0    # "ex":Lcom/android/internal/telephony/CommandException;
    invoke-direct {p0, p2, v4, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultFail(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    #@8c
    .line 242
    .end local v0    # "ex":Lcom/android/internal/telephony/CommandException;
    :cond_3
    return-void
.end method

.method public supplyIccPin2ForApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "pin2"    # Ljava/lang/String;
    .param p2, "aid"    # Ljava/lang/String;
    .param p3, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1761
    invoke-direct {p0, p3}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    #@3
    .line 1760
    return-void
.end method

.method public supplyIccPinForApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 4
    .param p1, "pin"    # Ljava/lang/String;
    .param p2, "aid"    # Ljava/lang/String;
    .param p3, "response"    # Landroid/os/Message;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    const/4 v2, 0x0

    #@2
    .line 1741
    invoke-static {}, Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;->getInstance()Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {v1, p1, p2, p3}, Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;->supplyIccPinForApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    #@9
    .line 1742
    iget-object v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mPinCode:Ljava/lang/String;

    #@b
    if-eqz v1, :cond_0

    #@d
    iget-object v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mPinCode:Ljava/lang/String;

    #@f
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@12
    move-result v1

    #@13
    if-eqz v1, :cond_0

    #@15
    .line 1743
    invoke-direct {p0, p3, v3}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    #@18
    .line 1744
    return-void

    #@19
    .line 1747
    :cond_0
    const-string/jumbo v1, "SimulatedCommands"

    #@1c
    const-string/jumbo v3, "[SimCmd] supplyIccPinForApp: pin failed!"

    #@1f
    invoke-static {v1, v3}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@22
    .line 1748
    new-instance v0, Lcom/android/internal/telephony/CommandException;

    #@24
    .line 1749
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->PASSWORD_INCORRECT:Lcom/android/internal/telephony/CommandException$Error;

    #@26
    .line 1748
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    #@29
    .line 1750
    .local v0, "ex":Lcom/android/internal/telephony/CommandException;
    const/4 v1, 0x1

    #@2a
    new-array v3, v1, [I

    #@2c
    .line 1751
    iget v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mPin1attemptsRemaining:I

    #@2e
    add-int/lit8 v1, v1, -0x1

    #@30
    iput v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mPin1attemptsRemaining:I

    #@32
    if-gez v1, :cond_1

    #@34
    move v1, v2

    #@35
    :goto_0
    aput v1, v3, v2

    #@37
    .line 1750
    invoke-direct {p0, p3, v3, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultFail(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    #@3a
    .line 1740
    return-void

    #@3b
    .line 1751
    :cond_1
    iget v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mPin1attemptsRemaining:I

    #@3d
    goto :goto_0
.end method

.method public supplyIccPuk(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 5
    .param p1, "puk"    # Ljava/lang/String;
    .param p2, "newPin"    # Ljava/lang/String;
    .param p3, "result"    # Landroid/os/Message;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 206
    iget-object v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mSimLockedState:Lcom/android/internal/telephony/test/SimulatedCommands$SimLockState;

    #@3
    sget-object v2, Lcom/android/internal/telephony/test/SimulatedCommands$SimLockState;->REQUIRE_PUK:Lcom/android/internal/telephony/test/SimulatedCommands$SimLockState;

    #@5
    if-eq v1, v2, :cond_0

    #@7
    .line 207
    const-string/jumbo v1, "SimulatedCommands"

    #@a
    new-instance v2, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string/jumbo v3, "[SimCmd] supplyIccPuk: wrong state, state="

    #@12
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v2

    #@16
    .line 208
    iget-object v3, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mSimLockedState:Lcom/android/internal/telephony/test/SimulatedCommands$SimLockState;

    #@18
    .line 207
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v2

    #@1c
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f
    move-result-object v2

    #@20
    invoke-static {v1, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@23
    .line 209
    new-instance v0, Lcom/android/internal/telephony/CommandException;

    #@25
    .line 210
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->PASSWORD_INCORRECT:Lcom/android/internal/telephony/CommandException$Error;

    #@27
    .line 209
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    #@2a
    .line 211
    .local v0, "ex":Lcom/android/internal/telephony/CommandException;
    invoke-direct {p0, p3, v4, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultFail(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    #@2d
    .line 212
    return-void

    #@2e
    .line 215
    .end local v0    # "ex":Lcom/android/internal/telephony/CommandException;
    :cond_0
    if-eqz p1, :cond_1

    #@30
    const-string/jumbo v1, "12345678"

    #@33
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@36
    move-result v1

    #@37
    if-eqz v1, :cond_1

    #@39
    .line 216
    const-string/jumbo v1, "SimulatedCommands"

    #@3c
    const-string/jumbo v2, "[SimCmd] supplyIccPuk: success!"

    #@3f
    invoke-static {v1, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@42
    .line 217
    sget-object v1, Lcom/android/internal/telephony/test/SimulatedCommands$SimLockState;->NONE:Lcom/android/internal/telephony/test/SimulatedCommands$SimLockState;

    #@44
    iput-object v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mSimLockedState:Lcom/android/internal/telephony/test/SimulatedCommands$SimLockState;

    #@46
    .line 218
    const/4 v1, 0x0

    #@47
    iput v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mPukUnlockAttempts:I

    #@49
    .line 219
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mIccStatusChangedRegistrants:Landroid/os/RegistrantList;

    #@4b
    invoke-virtual {v1}, Landroid/os/RegistrantList;->notifyRegistrants()V

    #@4e
    .line 221
    invoke-direct {p0, p3, v4}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    #@51
    .line 222
    return-void

    #@52
    .line 225
    :cond_1
    if-eqz p3, :cond_3

    #@54
    .line 226
    iget v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mPukUnlockAttempts:I

    #@56
    add-int/lit8 v1, v1, 0x1

    #@58
    iput v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mPukUnlockAttempts:I

    #@5a
    .line 228
    const-string/jumbo v1, "SimulatedCommands"

    #@5d
    new-instance v2, Ljava/lang/StringBuilder;

    #@5f
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@62
    const-string/jumbo v3, "[SimCmd] supplyIccPuk: failed! attempt="

    #@65
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@68
    move-result-object v2

    #@69
    .line 229
    iget v3, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mPukUnlockAttempts:I

    #@6b
    .line 228
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@6e
    move-result-object v2

    #@6f
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@72
    move-result-object v2

    #@73
    invoke-static {v1, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@76
    .line 230
    iget v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mPukUnlockAttempts:I

    #@78
    const/16 v2, 0xa

    #@7a
    if-lt v1, v2, :cond_2

    #@7c
    .line 231
    const-string/jumbo v1, "SimulatedCommands"

    #@7f
    const-string/jumbo v2, "[SimCmd] supplyIccPuk: set state to SIM_PERM_LOCKED"

    #@82
    invoke-static {v1, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@85
    .line 232
    sget-object v1, Lcom/android/internal/telephony/test/SimulatedCommands$SimLockState;->SIM_PERM_LOCKED:Lcom/android/internal/telephony/test/SimulatedCommands$SimLockState;

    #@87
    iput-object v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mSimLockedState:Lcom/android/internal/telephony/test/SimulatedCommands$SimLockState;

    #@89
    .line 235
    :cond_2
    new-instance v0, Lcom/android/internal/telephony/CommandException;

    #@8b
    .line 236
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->PASSWORD_INCORRECT:Lcom/android/internal/telephony/CommandException$Error;

    #@8d
    .line 235
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    #@90
    .line 237
    .restart local v0    # "ex":Lcom/android/internal/telephony/CommandException;
    invoke-direct {p0, p3, v4, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultFail(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    #@93
    .line 205
    .end local v0    # "ex":Lcom/android/internal/telephony/CommandException;
    :cond_3
    return-void
.end method

.method public supplyIccPuk2(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 5
    .param p1, "puk2"    # Ljava/lang/String;
    .param p2, "newPin2"    # Ljava/lang/String;
    .param p3, "result"    # Landroid/os/Message;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 279
    iget-object v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mSimFdnEnabledState:Lcom/android/internal/telephony/test/SimulatedCommands$SimFdnState;

    #@3
    sget-object v2, Lcom/android/internal/telephony/test/SimulatedCommands$SimFdnState;->REQUIRE_PUK2:Lcom/android/internal/telephony/test/SimulatedCommands$SimFdnState;

    #@5
    if-eq v1, v2, :cond_0

    #@7
    .line 280
    const-string/jumbo v1, "SimulatedCommands"

    #@a
    new-instance v2, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string/jumbo v3, "[SimCmd] supplyIccPuk2: wrong state, state="

    #@12
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v2

    #@16
    .line 281
    iget-object v3, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mSimLockedState:Lcom/android/internal/telephony/test/SimulatedCommands$SimLockState;

    #@18
    .line 280
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v2

    #@1c
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f
    move-result-object v2

    #@20
    invoke-static {v1, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@23
    .line 282
    new-instance v0, Lcom/android/internal/telephony/CommandException;

    #@25
    .line 283
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->PASSWORD_INCORRECT:Lcom/android/internal/telephony/CommandException$Error;

    #@27
    .line 282
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    #@2a
    .line 284
    .local v0, "ex":Lcom/android/internal/telephony/CommandException;
    invoke-direct {p0, p3, v4, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultFail(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    #@2d
    .line 285
    return-void

    #@2e
    .line 288
    .end local v0    # "ex":Lcom/android/internal/telephony/CommandException;
    :cond_0
    if-eqz p1, :cond_1

    #@30
    const-string/jumbo v1, "87654321"

    #@33
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@36
    move-result v1

    #@37
    if-eqz v1, :cond_1

    #@39
    .line 289
    const-string/jumbo v1, "SimulatedCommands"

    #@3c
    const-string/jumbo v2, "[SimCmd] supplyIccPuk2: success!"

    #@3f
    invoke-static {v1, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@42
    .line 290
    sget-object v1, Lcom/android/internal/telephony/test/SimulatedCommands$SimFdnState;->NONE:Lcom/android/internal/telephony/test/SimulatedCommands$SimFdnState;

    #@44
    iput-object v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mSimFdnEnabledState:Lcom/android/internal/telephony/test/SimulatedCommands$SimFdnState;

    #@46
    .line 291
    const/4 v1, 0x0

    #@47
    iput v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mPuk2UnlockAttempts:I

    #@49
    .line 293
    invoke-direct {p0, p3, v4}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    #@4c
    .line 294
    return-void

    #@4d
    .line 297
    :cond_1
    if-eqz p3, :cond_3

    #@4f
    .line 298
    iget v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mPuk2UnlockAttempts:I

    #@51
    add-int/lit8 v1, v1, 0x1

    #@53
    iput v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mPuk2UnlockAttempts:I

    #@55
    .line 300
    const-string/jumbo v1, "SimulatedCommands"

    #@58
    new-instance v2, Ljava/lang/StringBuilder;

    #@5a
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@5d
    const-string/jumbo v3, "[SimCmd] supplyIccPuk2: failed! attempt="

    #@60
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@63
    move-result-object v2

    #@64
    .line 301
    iget v3, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mPuk2UnlockAttempts:I

    #@66
    .line 300
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@69
    move-result-object v2

    #@6a
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6d
    move-result-object v2

    #@6e
    invoke-static {v1, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@71
    .line 302
    iget v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mPuk2UnlockAttempts:I

    #@73
    const/16 v2, 0xa

    #@75
    if-lt v1, v2, :cond_2

    #@77
    .line 303
    const-string/jumbo v1, "SimulatedCommands"

    #@7a
    const-string/jumbo v2, "[SimCmd] supplyIccPuk2: set state to SIM_PERM_LOCKED"

    #@7d
    invoke-static {v1, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@80
    .line 304
    sget-object v1, Lcom/android/internal/telephony/test/SimulatedCommands$SimFdnState;->SIM_PERM_LOCKED:Lcom/android/internal/telephony/test/SimulatedCommands$SimFdnState;

    #@82
    iput-object v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mSimFdnEnabledState:Lcom/android/internal/telephony/test/SimulatedCommands$SimFdnState;

    #@84
    .line 307
    :cond_2
    new-instance v0, Lcom/android/internal/telephony/CommandException;

    #@86
    .line 308
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->PASSWORD_INCORRECT:Lcom/android/internal/telephony/CommandException$Error;

    #@88
    .line 307
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    #@8b
    .line 309
    .restart local v0    # "ex":Lcom/android/internal/telephony/CommandException;
    invoke-direct {p0, p3, v4, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultFail(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    #@8e
    .line 278
    .end local v0    # "ex":Lcom/android/internal/telephony/CommandException;
    :cond_3
    return-void
.end method

.method public supplyIccPuk2ForApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "puk2"    # Ljava/lang/String;
    .param p2, "newPin2"    # Ljava/lang/String;
    .param p3, "aid"    # Ljava/lang/String;
    .param p4, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1766
    invoke-direct {p0, p4}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    #@3
    .line 1765
    return-void
.end method

.method public supplyIccPukForApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "puk"    # Ljava/lang/String;
    .param p2, "newPin"    # Ljava/lang/String;
    .param p3, "aid"    # Ljava/lang/String;
    .param p4, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1756
    invoke-direct {p0, p4}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    #@3
    .line 1755
    return-void
.end method

.method public supplyNetworkDepersonalization(Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "netpin"    # Ljava/lang/String;
    .param p2, "result"    # Landroid/os/Message;

    #@0
    .prologue
    .line 448
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    #@3
    .line 447
    return-void
.end method

.method public switchWaitingOrHoldingAndActive(Landroid/os/Message;)V
    .locals 5
    .param p1, "result"    # Landroid/os/Message;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 663
    iget-object v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->simulatedCallState:Lcom/android/internal/telephony/test/SimulatedGsmCallState;

    #@3
    const/16 v2, 0x32

    #@5
    const/4 v3, 0x0

    #@6
    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->onChld(CC)Z

    #@9
    move-result v0

    #@a
    .line 665
    .local v0, "success":Z
    if-nez v0, :cond_0

    #@c
    .line 666
    new-instance v1, Ljava/lang/RuntimeException;

    #@e
    const-string/jumbo v2, "Hangup Error"

    #@11
    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@14
    invoke-direct {p0, p1, v4, v1}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultFail(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    #@17
    .line 660
    :goto_0
    return-void

    #@18
    .line 668
    :cond_0
    invoke-direct {p0, p1, v4}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    #@1b
    goto :goto_0
.end method

.method public triggerHangupAll()V
    .locals 1

    #@0
    .prologue
    .line 1534
    iget-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->simulatedCallState:Lcom/android/internal/telephony/test/SimulatedGsmCallState;

    #@2
    invoke-virtual {v0}, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->triggerHangupAll()Z

    #@5
    .line 1535
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mCallStateRegistrants:Landroid/os/RegistrantList;

    #@7
    invoke-virtual {v0}, Landroid/os/RegistrantList;->notifyRegistrants()V

    #@a
    .line 1533
    return-void
.end method

.method public triggerHangupBackground()V
    .locals 1

    #@0
    .prologue
    .line 1507
    iget-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->simulatedCallState:Lcom/android/internal/telephony/test/SimulatedGsmCallState;

    #@2
    invoke-virtual {v0}, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->triggerHangupBackground()Z

    #@5
    .line 1508
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mCallStateRegistrants:Landroid/os/RegistrantList;

    #@7
    invoke-virtual {v0}, Landroid/os/RegistrantList;->notifyRegistrants()V

    #@a
    .line 1506
    return-void
.end method

.method public triggerHangupForeground()V
    .locals 1

    #@0
    .prologue
    .line 1499
    iget-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->simulatedCallState:Lcom/android/internal/telephony/test/SimulatedGsmCallState;

    #@2
    invoke-virtual {v0}, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->triggerHangupForeground()Z

    #@5
    .line 1500
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mCallStateRegistrants:Landroid/os/RegistrantList;

    #@7
    invoke-virtual {v0}, Landroid/os/RegistrantList;->notifyRegistrants()V

    #@a
    .line 1498
    return-void
.end method

.method public triggerIncomingSMS(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1540
    return-void
.end method

.method public triggerIncomingStkCcAlpha(Ljava/lang/String;)V
    .locals 1
    .param p1, "alphaString"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1379
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mCatCcAlphaRegistrant:Landroid/os/Registrant;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 1380
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mCatCcAlphaRegistrant:Landroid/os/Registrant;

    #@6
    invoke-virtual {v0, p1}, Landroid/os/Registrant;->notifyResult(Ljava/lang/Object;)V

    #@9
    .line 1378
    :cond_0
    return-void
.end method

.method public triggerIncomingUssd(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "statusCode"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1396
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mUSSDRegistrant:Landroid/os/Registrant;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 1397
    const/4 v1, 0x2

    #@5
    new-array v0, v1, [Ljava/lang/String;

    #@7
    const/4 v1, 0x0

    #@8
    aput-object p1, v0, v1

    #@a
    const/4 v1, 0x1

    #@b
    aput-object p2, v0, v1

    #@d
    .line 1398
    .local v0, "result":[Ljava/lang/String;
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mUSSDRegistrant:Landroid/os/Registrant;

    #@f
    invoke-virtual {v1, v0}, Landroid/os/Registrant;->notifyResult(Ljava/lang/Object;)V

    #@12
    .line 1395
    .end local v0    # "result":[Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public triggerNITZupdate(Ljava/lang/String;)V
    .locals 7
    .param p1, "NITZStr"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 1082
    if-eqz p1, :cond_0

    #@3
    .line 1083
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mNITZTimeRegistrant:Landroid/os/Registrant;

    #@5
    new-instance v1, Landroid/os/AsyncResult;

    #@7
    const/4 v2, 0x2

    #@8
    new-array v2, v2, [Ljava/lang/Object;

    #@a
    const/4 v3, 0x0

    #@b
    aput-object p1, v2, v3

    #@d
    .line 1084
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@10
    move-result-wide v4

    #@11
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@14
    move-result-object v3

    #@15
    const/4 v4, 0x1

    #@16
    aput-object v3, v2, v4

    #@18
    .line 1083
    invoke-direct {v1, v6, v2, v6}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    #@1b
    invoke-virtual {v0, v1}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    #@1e
    .line 1081
    :cond_0
    return-void
.end method

.method public triggerRing(Ljava/lang/String;)V
    .locals 1
    .param p1, "number"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1456
    iget-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->simulatedCallState:Lcom/android/internal/telephony/test/SimulatedGsmCallState;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->triggerRing(Ljava/lang/String;)Z

    #@5
    .line 1457
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mCallStateRegistrants:Landroid/os/RegistrantList;

    #@7
    invoke-virtual {v0}, Landroid/os/RegistrantList;->notifyRegistrants()V

    #@a
    .line 1455
    return-void
.end method

.method public triggerSsn(II)V
    .locals 4
    .param p1, "type"    # I
    .param p2, "code"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1513
    new-instance v0, Lcom/android/internal/telephony/gsm/SuppServiceNotification;

    #@3
    invoke-direct {v0}, Lcom/android/internal/telephony/gsm/SuppServiceNotification;-><init>()V

    #@6
    .line 1514
    .local v0, "not":Lcom/android/internal/telephony/gsm/SuppServiceNotification;
    iput p1, v0, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->notificationType:I

    #@8
    .line 1515
    iput p2, v0, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->code:I

    #@a
    .line 1516
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mSsnRegistrant:Landroid/os/Registrant;

    #@c
    new-instance v2, Landroid/os/AsyncResult;

    #@e
    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    #@11
    invoke-virtual {v1, v2}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    #@14
    .line 1512
    return-void
.end method

.method public writeSmsToRuim(ILjava/lang/String;Landroid/os/Message;)V
    .locals 3
    .param p1, "status"    # I
    .param p2, "pdu"    # Ljava/lang/String;
    .param p3, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1072
    const-string/jumbo v0, "SimulatedCommands"

    #@3
    new-instance v1, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v2, "Write SMS to RUIM with status "

    #@b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v1

    #@f
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@16
    move-result-object v1

    #@17
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@1a
    .line 1073
    invoke-direct {p0, p3}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    #@1d
    .line 1071
    return-void
.end method

.method public writeSmsToSim(ILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .param p1, "status"    # I
    .param p2, "smsc"    # Ljava/lang/String;
    .param p3, "pdu"    # Ljava/lang/String;
    .param p4, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1066
    const-string/jumbo v0, "SimulatedCommands"

    #@3
    new-instance v1, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v2, "Write SMS to SIM with status "

    #@b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v1

    #@f
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@16
    move-result-object v1

    #@17
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@1a
    .line 1067
    invoke-direct {p0, p4}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    #@1d
    .line 1065
    return-void
.end method

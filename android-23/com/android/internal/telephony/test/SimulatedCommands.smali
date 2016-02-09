.class public final Lcom/android/internal/telephony/test/SimulatedCommands;
.super Lcom/android/internal/telephony/BaseCommands;
.source "SimulatedCommands.java"

# interfaces
.implements Lcom/android/internal/telephony/CommandsInterface;
.implements Lcom/android/internal/telephony/test/SimulatedRadioControl;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/test/SimulatedCommands$SimLockState;,
        Lcom/android/internal/telephony/test/SimulatedCommands$SimFdnState;
    }
.end annotation


# static fields
.field private static final DEFAULT_SIM_PIN2_CODE:Ljava/lang/String; = "5678"

.field private static final DEFAULT_SIM_PIN_CODE:Ljava/lang/String; = "1234"

.field private static final INITIAL_FDN_STATE:Lcom/android/internal/telephony/test/SimulatedCommands$SimFdnState;

.field private static final INITIAL_LOCK_STATE:Lcom/android/internal/telephony/test/SimulatedCommands$SimLockState;

.field private static final LOG_TAG:Ljava/lang/String; = "SimulatedCommands"

.field private static final SIM_PUK2_CODE:Ljava/lang/String; = "87654321"

.field private static final SIM_PUK_CODE:Ljava/lang/String; = "12345678"


# instance fields
.field mHandlerThread:Landroid/os/HandlerThread;

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

.field mPin2Code:Ljava/lang/String;

.field mPin2UnlockAttempts:I

.field mPinCode:Ljava/lang/String;

.field mPinUnlockAttempts:I

.field mPuk2UnlockAttempts:I

.field mPukUnlockAttempts:I

.field mSimFdnEnabled:Z

.field mSimFdnEnabledState:Lcom/android/internal/telephony/test/SimulatedCommands$SimFdnState;

.field mSimLockEnabled:Z

.field mSimLockedState:Lcom/android/internal/telephony/test/SimulatedCommands$SimLockState;

.field mSsnNotifyOn:Z

.field simulatedCallState:Lcom/android/internal/telephony/test/SimulatedGsmCallState;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 57
    sget-object v0, Lcom/android/internal/telephony/test/SimulatedCommands$SimLockState;->NONE:Lcom/android/internal/telephony/test/SimulatedCommands$SimLockState;

    #@2
    sput-object v0, Lcom/android/internal/telephony/test/SimulatedCommands;->INITIAL_LOCK_STATE:Lcom/android/internal/telephony/test/SimulatedCommands$SimLockState;

    #@4
    .line 60
    sget-object v0, Lcom/android/internal/telephony/test/SimulatedCommands$SimFdnState;->NONE:Lcom/android/internal/telephony/test/SimulatedCommands$SimFdnState;

    #@6
    sput-object v0, Lcom/android/internal/telephony/test/SimulatedCommands;->INITIAL_FDN_STATE:Lcom/android/internal/telephony/test/SimulatedCommands$SimFdnState;

    #@8
    .line 39
    return-void
.end method

.method public constructor <init>()V
    .locals 5

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 90
    const/4 v1, 0x0

    #@3
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/BaseCommands;-><init>(Landroid/content/Context;)V

    #@6
    .line 79
    iput-boolean v3, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mSsnNotifyOn:Z

    #@8
    .line 82
    new-instance v1, Ljava/util/ArrayList;

    #@a
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@d
    iput-object v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mPausedResponses:Ljava/util/ArrayList;

    #@f
    .line 84
    const/16 v1, 0x10

    #@11
    iput v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mNextCallFailCause:I

    #@13
    .line 91
    new-instance v1, Landroid/os/HandlerThread;

    #@15
    const-string/jumbo v4, "SimulatedCommands"

    #@18
    invoke-direct {v1, v4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    #@1b
    iput-object v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mHandlerThread:Landroid/os/HandlerThread;

    #@1d
    .line 92
    iget-object v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mHandlerThread:Landroid/os/HandlerThread;

    #@1f
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    #@22
    .line 93
    iget-object v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mHandlerThread:Landroid/os/HandlerThread;

    #@24
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    #@27
    move-result-object v0

    #@28
    .line 95
    .local v0, "looper":Landroid/os/Looper;
    new-instance v1, Lcom/android/internal/telephony/test/SimulatedGsmCallState;

    #@2a
    invoke-direct {v1, v0}, Lcom/android/internal/telephony/test/SimulatedGsmCallState;-><init>(Landroid/os/Looper;)V

    #@2d
    iput-object v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->simulatedCallState:Lcom/android/internal/telephony/test/SimulatedGsmCallState;

    #@2f
    .line 97
    sget-object v1, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_OFF:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    #@31
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/test/SimulatedCommands;->setRadioState(Lcom/android/internal/telephony/CommandsInterface$RadioState;)V

    #@34
    .line 98
    sget-object v1, Lcom/android/internal/telephony/test/SimulatedCommands;->INITIAL_LOCK_STATE:Lcom/android/internal/telephony/test/SimulatedCommands$SimLockState;

    #@36
    iput-object v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mSimLockedState:Lcom/android/internal/telephony/test/SimulatedCommands$SimLockState;

    #@38
    .line 99
    iget-object v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mSimLockedState:Lcom/android/internal/telephony/test/SimulatedCommands$SimLockState;

    #@3a
    sget-object v4, Lcom/android/internal/telephony/test/SimulatedCommands$SimLockState;->NONE:Lcom/android/internal/telephony/test/SimulatedCommands$SimLockState;

    #@3c
    if-eq v1, v4, :cond_0

    #@3e
    move v1, v2

    #@3f
    :goto_0
    iput-boolean v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mSimLockEnabled:Z

    #@41
    .line 100
    const-string/jumbo v1, "1234"

    #@44
    iput-object v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mPinCode:Ljava/lang/String;

    #@46
    .line 101
    sget-object v1, Lcom/android/internal/telephony/test/SimulatedCommands;->INITIAL_FDN_STATE:Lcom/android/internal/telephony/test/SimulatedCommands$SimFdnState;

    #@48
    iput-object v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mSimFdnEnabledState:Lcom/android/internal/telephony/test/SimulatedCommands$SimFdnState;

    #@4a
    .line 102
    iget-object v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mSimFdnEnabledState:Lcom/android/internal/telephony/test/SimulatedCommands$SimFdnState;

    #@4c
    sget-object v4, Lcom/android/internal/telephony/test/SimulatedCommands$SimFdnState;->NONE:Lcom/android/internal/telephony/test/SimulatedCommands$SimFdnState;

    #@4e
    if-eq v1, v4, :cond_1

    #@50
    :goto_1
    iput-boolean v2, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mSimFdnEnabled:Z

    #@52
    .line 103
    const-string/jumbo v1, "5678"

    #@55
    iput-object v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mPin2Code:Ljava/lang/String;

    #@57
    .line 89
    return-void

    #@58
    :cond_0
    move v1, v3

    #@59
    .line 99
    goto :goto_0

    #@5a
    :cond_1
    move v2, v3

    #@5b
    .line 102
    goto :goto_1
.end method

.method private isSimLocked()Z
    .locals 2

    #@0
    .prologue
    .line 1100
    iget-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mSimLockedState:Lcom/android/internal/telephony/test/SimulatedCommands$SimLockState;

    #@2
    sget-object v1, Lcom/android/internal/telephony/test/SimulatedCommands$SimLockState;->NONE:Lcom/android/internal/telephony/test/SimulatedCommands$SimLockState;

    #@4
    if-eq v0, v1, :cond_0

    #@6
    .line 1101
    const/4 v0, 0x1

    #@7
    return v0

    #@8
    .line 1103
    :cond_0
    const/4 v0, 0x0

    #@9
    return v0
.end method

.method private resultFail(Landroid/os/Message;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "result"    # Landroid/os/Message;
    .param p2, "tr"    # Ljava/lang/Throwable;

    #@0
    .prologue
    .line 1488
    if-eqz p1, :cond_0

    #@2
    .line 1489
    invoke-static {p1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    #@5
    move-result-object v0

    #@6
    iput-object p2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@8
    .line 1490
    iget v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mPausedResponseCount:I

    #@a
    if-lez v0, :cond_1

    #@c
    .line 1491
    iget-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mPausedResponses:Ljava/util/ArrayList;

    #@e
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@11
    .line 1487
    :cond_0
    :goto_0
    return-void

    #@12
    .line 1493
    :cond_1
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    #@15
    goto :goto_0
.end method

.method private resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V
    .locals 1
    .param p1, "result"    # Landroid/os/Message;
    .param p2, "ret"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 1477
    if-eqz p1, :cond_0

    #@2
    .line 1478
    invoke-static {p1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    #@5
    move-result-object v0

    #@6
    iput-object p2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@8
    .line 1479
    iget v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mPausedResponseCount:I

    #@a
    if-lez v0, :cond_1

    #@c
    .line 1480
    iget-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mPausedResponses:Ljava/util/ArrayList;

    #@e
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@11
    .line 1476
    :cond_0
    :goto_0
    return-void

    #@12
    .line 1482
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
    .line 1464
    if-eqz p1, :cond_0

    #@2
    .line 1465
    invoke-static {p1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    #@5
    move-result-object v0

    #@6
    .line 1466
    new-instance v1, Ljava/lang/RuntimeException;

    #@8
    const-string/jumbo v2, "Unimplemented"

    #@b
    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@e
    .line 1465
    iput-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@10
    .line 1468
    iget v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mPausedResponseCount:I

    #@12
    if-lez v0, :cond_1

    #@14
    .line 1469
    iget-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mPausedResponses:Ljava/util/ArrayList;

    #@16
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@19
    .line 1463
    :cond_0
    :goto_0
    return-void

    #@1a
    .line 1471
    :cond_1
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    #@1d
    goto :goto_0
.end method


# virtual methods
.method public acceptCall(Landroid/os/Message;)V
    .locals 3
    .param p1, "result"    # Landroid/os/Message;

    #@0
    .prologue
    .line 727
    iget-object v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->simulatedCallState:Lcom/android/internal/telephony/test/SimulatedGsmCallState;

    #@2
    invoke-virtual {v1}, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->onAnswer()Z

    #@5
    move-result v0

    #@6
    .line 729
    .local v0, "success":Z
    if-nez v0, :cond_0

    #@8
    .line 730
    new-instance v1, Ljava/lang/RuntimeException;

    #@a
    const-string/jumbo v2, "Hangup Error"

    #@d
    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@10
    invoke-direct {p0, p1, v1}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultFail(Landroid/os/Message;Ljava/lang/Throwable;)V

    #@13
    .line 724
    :goto_0
    return-void

    #@14
    .line 732
    :cond_0
    const/4 v1, 0x0

    #@15
    invoke-direct {p0, p1, v1}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    #@18
    goto :goto_0
.end method

.method public acknowledgeIncomingGsmSmsWithPdu(ZLjava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "success"    # Z
    .param p2, "ackPdu"    # Ljava/lang/String;
    .param p3, "result"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1129
    invoke-direct {p0, p3}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    #@3
    .line 1128
    return-void
.end method

.method public acknowledgeLastIncomingCdmaSms(ZILandroid/os/Message;)V
    .locals 0
    .param p1, "success"    # Z
    .param p2, "cause"    # I
    .param p3, "result"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1123
    invoke-direct {p0, p3}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    #@3
    .line 1122
    return-void
.end method

.method public acknowledgeLastIncomingGsmSms(ZILandroid/os/Message;)V
    .locals 0
    .param p1, "success"    # Z
    .param p2, "cause"    # I
    .param p3, "result"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1118
    invoke-direct {p0, p3}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    #@3
    .line 1117
    return-void
.end method

.method public cancelPendingUssd(Landroid/os/Message;)V
    .locals 1
    .param p1, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1318
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    #@4
    .line 1317
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
    .line 330
    invoke-direct {p0, p4}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    #@3
    .line 329
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
    .line 285
    if-eqz p1, :cond_1

    #@3
    iget-object v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mPinCode:Ljava/lang/String;

    #@5
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@8
    move-result v1

    #@9
    if-eqz v1, :cond_1

    #@b
    .line 286
    iput-object p2, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mPinCode:Ljava/lang/String;

    #@d
    .line 287
    if-eqz p3, :cond_0

    #@f
    .line 288
    invoke-static {p3, v3, v3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    #@12
    .line 289
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    #@15
    .line 292
    :cond_0
    return-void

    #@16
    .line 295
    :cond_1
    if-eqz p3, :cond_2

    #@18
    .line 296
    const-string/jumbo v1, "SimulatedCommands"

    #@1b
    const-string/jumbo v2, "[SimCmd] changeIccPin: pin failed!"

    #@1e
    invoke-static {v1, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@21
    .line 298
    new-instance v0, Lcom/android/internal/telephony/CommandException;

    #@23
    .line 299
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->PASSWORD_INCORRECT:Lcom/android/internal/telephony/CommandException$Error;

    #@25
    .line 298
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    #@28
    .line 300
    .local v0, "ex":Lcom/android/internal/telephony/CommandException;
    invoke-static {p3, v3, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    #@2b
    .line 301
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    #@2e
    .line 284
    .end local v0    # "ex":Lcom/android/internal/telephony/CommandException;
    :cond_2
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
    .line 307
    if-eqz p1, :cond_1

    #@3
    iget-object v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mPin2Code:Ljava/lang/String;

    #@5
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@8
    move-result v1

    #@9
    if-eqz v1, :cond_1

    #@b
    .line 308
    iput-object p2, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mPin2Code:Ljava/lang/String;

    #@d
    .line 309
    if-eqz p3, :cond_0

    #@f
    .line 310
    invoke-static {p3, v3, v3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    #@12
    .line 311
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    #@15
    .line 314
    :cond_0
    return-void

    #@16
    .line 317
    :cond_1
    if-eqz p3, :cond_2

    #@18
    .line 318
    const-string/jumbo v1, "SimulatedCommands"

    #@1b
    const-string/jumbo v2, "[SimCmd] changeIccPin2: pin2 failed!"

    #@1e
    invoke-static {v1, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@21
    .line 320
    new-instance v0, Lcom/android/internal/telephony/CommandException;

    #@23
    .line 321
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->PASSWORD_INCORRECT:Lcom/android/internal/telephony/CommandException$Error;

    #@25
    .line 320
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    #@28
    .line 322
    .local v0, "ex":Lcom/android/internal/telephony/CommandException;
    invoke-static {p3, v3, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    #@2b
    .line 323
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    #@2e
    .line 306
    .end local v0    # "ex":Lcom/android/internal/telephony/CommandException;
    :cond_2
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
    .line 1665
    invoke-direct {p0, p4}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    #@3
    .line 1664
    return-void
.end method

.method public changeIccPinForApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "oldPin"    # Ljava/lang/String;
    .param p2, "newPin"    # Ljava/lang/String;
    .param p3, "aidPtr"    # Ljava/lang/String;
    .param p4, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1659
    invoke-direct {p0, p4}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    #@3
    .line 1658
    return-void
.end method

.method public conference(Landroid/os/Message;)V
    .locals 4
    .param p1, "result"    # Landroid/os/Message;

    #@0
    .prologue
    .line 668
    iget-object v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->simulatedCallState:Lcom/android/internal/telephony/test/SimulatedGsmCallState;

    #@2
    const/16 v2, 0x33

    #@4
    const/4 v3, 0x0

    #@5
    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->onChld(CC)Z

    #@8
    move-result v0

    #@9
    .line 670
    .local v0, "success":Z
    if-nez v0, :cond_0

    #@b
    .line 671
    new-instance v1, Ljava/lang/RuntimeException;

    #@d
    const-string/jumbo v2, "Hangup Error"

    #@10
    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@13
    invoke-direct {p0, p1, v1}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultFail(Landroid/os/Message;Ljava/lang/Throwable;)V

    #@16
    .line 665
    :goto_0
    return-void

    #@17
    .line 673
    :cond_0
    const/4 v1, 0x0

    #@18
    invoke-direct {p0, p1, v1}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    #@1b
    goto :goto_0
.end method

.method public deactivateDataCall(IILandroid/os/Message;)V
    .locals 0
    .param p1, "cid"    # I
    .param p2, "reason"    # I
    .param p3, "result"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1042
    invoke-direct {p0, p3}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    #@3
    return-void
.end method

.method public deleteSmsOnRuim(ILandroid/os/Message;)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1018
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
    .line 1019
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    #@1d
    .line 1017
    return-void
.end method

.method public deleteSmsOnSim(ILandroid/os/Message;)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1012
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
    .line 1013
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    #@1d
    .line 1011
    return-void
.end method

.method public dial(Ljava/lang/String;ILandroid/os/Message;)V
    .locals 1
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "clirMode"    # I
    .param p3, "result"    # Landroid/os/Message;

    #@0
    .prologue
    .line 502
    iget-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->simulatedCallState:Lcom/android/internal/telephony/test/SimulatedGsmCallState;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->onDial(Ljava/lang/String;)Z

    #@5
    .line 504
    const/4 v0, 0x0

    #@6
    invoke-direct {p0, p3, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    #@9
    .line 501
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
    .line 520
    iget-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->simulatedCallState:Lcom/android/internal/telephony/test/SimulatedGsmCallState;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->onDial(Ljava/lang/String;)Z

    #@5
    .line 522
    const/4 v0, 0x0

    #@6
    invoke-direct {p0, p4, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    #@9
    .line 519
    return-void
.end method

.method public exitEmergencyCallbackMode(Landroid/os/Message;)V
    .locals 0
    .param p1, "result"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1236
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    #@3
    return-void
.end method

.method public explicitCallTransfer(Landroid/os/Message;)V
    .locals 4
    .param p1, "result"    # Landroid/os/Message;

    #@0
    .prologue
    .line 689
    iget-object v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->simulatedCallState:Lcom/android/internal/telephony/test/SimulatedGsmCallState;

    #@2
    const/16 v2, 0x34

    #@4
    const/4 v3, 0x0

    #@5
    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->onChld(CC)Z

    #@8
    move-result v0

    #@9
    .line 691
    .local v0, "success":Z
    if-nez v0, :cond_0

    #@b
    .line 692
    new-instance v1, Ljava/lang/RuntimeException;

    #@d
    const-string/jumbo v2, "Hangup Error"

    #@10
    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@13
    invoke-direct {p0, p1, v1}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultFail(Landroid/os/Message;Ljava/lang/Throwable;)V

    #@16
    .line 686
    :goto_0
    return-void

    #@17
    .line 694
    :cond_0
    const/4 v1, 0x0

    #@18
    invoke-direct {p0, p1, v1}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    #@1b
    goto :goto_0
.end method

.method public forceDataDormancy(Landroid/os/Message;)V
    .locals 0
    .param p1, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1617
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    #@3
    .line 1616
    return-void
.end method

.method public getAvailableNetworks(Landroid/os/Message;)V
    .locals 0
    .param p1, "result"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1263
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    #@3
    return-void
.end method

.method public getBasebandVersion(Landroid/os/Message;)V
    .locals 1
    .param p1, "result"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1267
    const-string/jumbo v0, "SimulatedCommands"

    #@3
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    #@6
    .line 1266
    return-void
.end method

.method public getCDMASubscription(Landroid/os/Message;)V
    .locals 2
    .param p1, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1509
    const-string/jumbo v0, "SimulatedCommands"

    #@3
    const-string/jumbo v1, "CDMA not implemented in SimulatedCommands"

    #@6
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@9
    .line 1510
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    #@c
    .line 1508
    return-void
.end method

.method public getCLIR(Landroid/os/Message;)V
    .locals 0
    .param p1, "result"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1176
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    #@3
    return-void
.end method

.method public getCdmaBroadcastConfig(Landroid/os/Message;)V
    .locals 0
    .param p1, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1607
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    #@3
    .line 1606
    return-void
.end method

.method public getCdmaSubscriptionSource(Landroid/os/Message;)V
    .locals 0
    .param p1, "result"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1096
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    #@3
    .line 1095
    return-void
.end method

.method public getCellInfoList(Landroid/os/Message;)V
    .locals 0
    .param p1, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1685
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    #@3
    .line 1684
    return-void
.end method

.method public getCurrentCalls(Landroid/os/Message;)V
    .locals 2
    .param p1, "result"    # Landroid/os/Message;

    #@0
    .prologue
    .line 457
    iget-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mState:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    #@2
    sget-object v1, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_ON:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    #@4
    if-ne v0, v1, :cond_0

    #@6
    invoke-direct {p0}, Lcom/android/internal/telephony/test/SimulatedCommands;->isSimLocked()Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_1

    #@c
    .line 463
    :cond_0
    new-instance v0, Lcom/android/internal/telephony/CommandException;

    #@e
    .line 464
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->RADIO_NOT_AVAILABLE:Lcom/android/internal/telephony/CommandException$Error;

    #@10
    .line 463
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    #@13
    .line 462
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultFail(Landroid/os/Message;Ljava/lang/Throwable;)V

    #@16
    .line 456
    :goto_0
    return-void

    #@17
    .line 459
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->simulatedCallState:Lcom/android/internal/telephony/test/SimulatedGsmCallState;

    #@19
    invoke-virtual {v0}, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->getDriverCalls()Ljava/util/List;

    #@1c
    move-result-object v0

    #@1d
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    #@20
    goto :goto_0
.end method

.method public getDataCallList(Landroid/os/Message;)V
    .locals 2
    .param p1, "result"    # Landroid/os/Message;

    #@0
    .prologue
    .line 486
    new-instance v0, Ljava/util/ArrayList;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    #@6
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    #@9
    .line 485
    return-void
.end method

.method public getDataRegistrationState(Landroid/os/Message;)V
    .locals 4
    .param p1, "result"    # Landroid/os/Message;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 921
    const/4 v1, 0x4

    #@2
    new-array v0, v1, [Ljava/lang/String;

    #@4
    .line 923
    .local v0, "ret":[Ljava/lang/String;
    const-string/jumbo v1, "5"

    #@7
    const/4 v2, 0x0

    #@8
    aput-object v1, v0, v2

    #@a
    .line 924
    const/4 v1, 0x1

    #@b
    aput-object v3, v0, v1

    #@d
    .line 925
    const/4 v1, 0x2

    #@e
    aput-object v3, v0, v1

    #@10
    .line 926
    const-string/jumbo v1, "2"

    #@13
    const/4 v2, 0x3

    #@14
    aput-object v1, v0, v2

    #@16
    .line 928
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    #@19
    .line 920
    return-void
.end method

.method public getDeviceIdentity(Landroid/os/Message;)V
    .locals 2
    .param p1, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1502
    const-string/jumbo v0, "SimulatedCommands"

    #@3
    const-string/jumbo v1, "CDMA not implemented in SimulatedCommands"

    #@6
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@9
    .line 1503
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    #@c
    .line 1501
    return-void
.end method

.method public getGsmBroadcastConfig(Landroid/os/Message;)V
    .locals 0
    .param p1, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1634
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    #@3
    .line 1633
    return-void
.end method

.method public getHardwareConfig(Landroid/os/Message;)V
    .locals 0
    .param p1, "result"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1763
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    #@3
    .line 1762
    return-void
.end method

.method public getIMEI(Landroid/os/Message;)V
    .locals 1
    .param p1, "result"    # Landroid/os/Message;

    #@0
    .prologue
    .line 550
    const-string/jumbo v0, "012345678901234"

    #@3
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    #@6
    .line 549
    return-void
.end method

.method public getIMEISV(Landroid/os/Message;)V
    .locals 1
    .param p1, "result"    # Landroid/os/Message;

    #@0
    .prologue
    .line 562
    const-string/jumbo v0, "99"

    #@3
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    #@6
    .line 561
    return-void
.end method

.method public getIMSI(Landroid/os/Message;)V
    .locals 1
    .param p1, "result"    # Landroid/os/Message;

    #@0
    .prologue
    .line 527
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/test/SimulatedCommands;->getIMSIForApp(Ljava/lang/String;Landroid/os/Message;)V

    #@4
    .line 526
    return-void
.end method

.method public getIMSIForApp(Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .param p1, "aid"    # Ljava/lang/String;
    .param p2, "result"    # Landroid/os/Message;

    #@0
    .prologue
    .line 538
    const-string/jumbo v0, "012345678901234"

    #@3
    invoke-direct {p0, p2, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    #@6
    .line 537
    return-void
.end method

.method public getIccCardStatus(Landroid/os/Message;)V
    .locals 0
    .param p1, "result"    # Landroid/os/Message;

    #@0
    .prologue
    .line 110
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    #@3
    .line 109
    return-void
.end method

.method public getImsRegistrationState(Landroid/os/Message;)V
    .locals 0
    .param p1, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1704
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    #@3
    .line 1703
    return-void
.end method

.method public getLastCallFailCause(Landroid/os/Message;)V
    .locals 3
    .param p1, "result"    # Landroid/os/Message;

    #@0
    .prologue
    .line 765
    const/4 v1, 0x1

    #@1
    new-array v0, v1, [I

    #@3
    .line 767
    .local v0, "ret":[I
    iget v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mNextCallFailCause:I

    #@5
    const/4 v2, 0x0

    #@6
    aput v1, v0, v2

    #@8
    .line 768
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    #@b
    .line 764
    return-void
.end method

.method public getLastDataCallFailCause(Landroid/os/Message;)V
    .locals 0
    .param p1, "result"    # Landroid/os/Message;

    #@0
    .prologue
    .line 783
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    #@3
    .line 781
    return-void
.end method

.method public getLastPdpFailCause(Landroid/os/Message;)V
    .locals 0
    .param p1, "result"    # Landroid/os/Message;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 777
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    #@3
    .line 776
    return-void
.end method

.method public getModemActivityInfo(Landroid/os/Message;)V
    .locals 0
    .param p1, "result"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1788
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    #@3
    .line 1787
    return-void
.end method

.method public getMute(Landroid/os/Message;)V
    .locals 0
    .param p1, "result"    # Landroid/os/Message;

    #@0
    .prologue
    .line 790
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
    .line 1060
    new-array v1, v4, [I

    #@3
    .line 1062
    .local v1, "ret":[I
    const/4 v2, 0x6

    #@4
    const/4 v3, 0x0

    #@5
    aput v2, v1, v3

    #@7
    .line 1063
    const/4 v0, 0x1

    #@8
    .local v0, "i":I
    :goto_0
    if-ge v0, v4, :cond_0

    #@a
    .line 1064
    aput v0, v1, v0

    #@c
    .line 1063
    add-int/lit8 v0, v0, 0x1

    #@e
    goto :goto_0

    #@f
    .line 1066
    :cond_0
    invoke-direct {p0, p1, v1}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    #@12
    .line 1059
    return-void
.end method

.method public getNetworkSelectionMode(Landroid/os/Message;)V
    .locals 3
    .param p1, "result"    # Landroid/os/Message;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1251
    const/4 v1, 0x1

    #@2
    new-array v0, v1, [I

    #@4
    .line 1253
    .local v0, "ret":[I
    aput v2, v0, v2

    #@6
    .line 1254
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    #@9
    .line 1250
    return-void
.end method

.method public getOperator(Landroid/os/Message;)V
    .locals 3
    .param p1, "result"    # Landroid/os/Message;

    #@0
    .prologue
    .line 939
    const/4 v1, 0x3

    #@1
    new-array v0, v1, [Ljava/lang/String;

    #@3
    .line 941
    .local v0, "ret":[Ljava/lang/String;
    const-string/jumbo v1, "El Telco Loco"

    #@6
    const/4 v2, 0x0

    #@7
    aput-object v1, v0, v2

    #@9
    .line 942
    const-string/jumbo v1, "Telco Loco"

    #@c
    const/4 v2, 0x1

    #@d
    aput-object v1, v0, v2

    #@f
    .line 943
    const-string/jumbo v1, "001001"

    #@12
    const/4 v2, 0x2

    #@13
    aput-object v1, v0, v2

    #@15
    .line 945
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    #@18
    .line 938
    return-void
.end method

.method public getPDPContextList(Landroid/os/Message;)V
    .locals 0
    .param p1, "result"    # Landroid/os/Message;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 474
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/test/SimulatedCommands;->getDataCallList(Landroid/os/Message;)V

    #@3
    .line 473
    return-void
.end method

.method public getPreferredNetworkType(Landroid/os/Message;)V
    .locals 3
    .param p1, "result"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1052
    const/4 v1, 0x1

    #@1
    new-array v0, v1, [I

    #@3
    .line 1054
    .local v0, "ret":[I
    iget v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mNetworkType:I

    #@5
    const/4 v2, 0x0

    #@6
    aput v1, v0, v2

    #@8
    .line 1055
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    #@b
    .line 1051
    return-void
.end method

.method public getPreferredVoicePrivacy(Landroid/os/Message;)V
    .locals 2
    .param p1, "result"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1540
    const-string/jumbo v0, "SimulatedCommands"

    #@3
    const-string/jumbo v1, "CDMA not implemented in SimulatedCommands"

    #@6
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@9
    .line 1541
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    #@c
    .line 1539
    return-void
.end method

.method public getSignalStrength(Landroid/os/Message;)V
    .locals 3
    .param p1, "result"    # Landroid/os/Message;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 801
    const/4 v1, 0x2

    #@2
    new-array v0, v1, [I

    #@4
    .line 803
    .local v0, "ret":[I
    const/16 v1, 0x17

    #@6
    aput v1, v0, v2

    #@8
    .line 804
    const/4 v1, 0x1

    #@9
    aput v2, v0, v1

    #@b
    .line 806
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    #@e
    .line 800
    return-void
.end method

.method public getSmscAddress(Landroid/os/Message;)V
    .locals 0
    .param p1, "result"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1076
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    #@3
    .line 1075
    return-void
.end method

.method public getVoiceRadioTechnology(Landroid/os/Message;)V
    .locals 0
    .param p1, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1680
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    #@3
    .line 1679
    return-void
.end method

.method public getVoiceRegistrationState(Landroid/os/Message;)V
    .locals 4
    .param p1, "result"    # Landroid/os/Message;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 882
    const/16 v1, 0xe

    #@3
    new-array v0, v1, [Ljava/lang/String;

    #@5
    .line 884
    .local v0, "ret":[Ljava/lang/String;
    const-string/jumbo v1, "5"

    #@8
    const/4 v2, 0x0

    #@9
    aput-object v1, v0, v2

    #@b
    .line 885
    const/4 v1, 0x1

    #@c
    aput-object v3, v0, v1

    #@e
    .line 886
    const/4 v1, 0x2

    #@f
    aput-object v3, v0, v1

    #@11
    .line 887
    const/4 v1, 0x3

    #@12
    aput-object v3, v0, v1

    #@14
    .line 888
    const/4 v1, 0x4

    #@15
    aput-object v3, v0, v1

    #@17
    .line 889
    const/4 v1, 0x5

    #@18
    aput-object v3, v0, v1

    #@1a
    .line 890
    const/4 v1, 0x6

    #@1b
    aput-object v3, v0, v1

    #@1d
    .line 891
    const/4 v1, 0x7

    #@1e
    aput-object v3, v0, v1

    #@20
    .line 892
    const/16 v1, 0x8

    #@22
    aput-object v3, v0, v1

    #@24
    .line 893
    const/16 v1, 0x9

    #@26
    aput-object v3, v0, v1

    #@28
    .line 894
    const/16 v1, 0xa

    #@2a
    aput-object v3, v0, v1

    #@2c
    .line 895
    const/16 v1, 0xb

    #@2e
    aput-object v3, v0, v1

    #@30
    .line 896
    const/16 v1, 0xc

    #@32
    aput-object v3, v0, v1

    #@34
    .line 897
    const/16 v1, 0xd

    #@36
    aput-object v3, v0, v1

    #@38
    .line 899
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    #@3b
    .line 881
    return-void
.end method

.method public handleCallSetupRequestFromSim(ZLandroid/os/Message;)V
    .locals 1
    .param p1, "accept"    # Z
    .param p2, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 870
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p2, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    #@4
    .line 869
    return-void
.end method

.method public hangupConnection(ILandroid/os/Message;)V
    .locals 4
    .param p1, "gsmIndex"    # I
    .param p2, "result"    # Landroid/os/Message;

    #@0
    .prologue
    .line 580
    iget-object v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->simulatedCallState:Lcom/android/internal/telephony/test/SimulatedGsmCallState;

    #@2
    add-int/lit8 v2, p1, 0x30

    #@4
    int-to-char v2, v2

    #@5
    const/16 v3, 0x31

    #@7
    invoke-virtual {v1, v3, v2}, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->onChld(CC)Z

    #@a
    move-result v0

    #@b
    .line 582
    .local v0, "success":Z
    if-nez v0, :cond_0

    #@d
    .line 583
    const-string/jumbo v1, "GSM"

    #@10
    const-string/jumbo v2, "[SimCmd] hangupConnection: resultFail"

    #@13
    invoke-static {v1, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@16
    .line 584
    new-instance v1, Ljava/lang/RuntimeException;

    #@18
    const-string/jumbo v2, "Hangup Error"

    #@1b
    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@1e
    invoke-direct {p0, p2, v1}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultFail(Landroid/os/Message;Ljava/lang/Throwable;)V

    #@21
    .line 577
    :goto_0
    return-void

    #@22
    .line 586
    :cond_0
    const-string/jumbo v1, "GSM"

    #@25
    const-string/jumbo v2, "[SimCmd] hangupConnection: resultSuccess"

    #@28
    invoke-static {v1, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@2b
    .line 587
    const/4 v1, 0x0

    #@2c
    invoke-direct {p0, p2, v1}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    #@2f
    goto :goto_0
.end method

.method public hangupForegroundResumeBackground(Landroid/os/Message;)V
    .locals 4
    .param p1, "result"    # Landroid/os/Message;

    #@0
    .prologue
    .line 625
    iget-object v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->simulatedCallState:Lcom/android/internal/telephony/test/SimulatedGsmCallState;

    #@2
    const/16 v2, 0x31

    #@4
    const/4 v3, 0x0

    #@5
    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->onChld(CC)Z

    #@8
    move-result v0

    #@9
    .line 627
    .local v0, "success":Z
    if-nez v0, :cond_0

    #@b
    .line 628
    new-instance v1, Ljava/lang/RuntimeException;

    #@d
    const-string/jumbo v2, "Hangup Error"

    #@10
    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@13
    invoke-direct {p0, p1, v1}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultFail(Landroid/os/Message;Ljava/lang/Throwable;)V

    #@16
    .line 622
    :goto_0
    return-void

    #@17
    .line 630
    :cond_0
    const/4 v1, 0x0

    #@18
    invoke-direct {p0, p1, v1}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    #@1b
    goto :goto_0
.end method

.method public hangupWaitingOrBackground(Landroid/os/Message;)V
    .locals 4
    .param p1, "result"    # Landroid/os/Message;

    #@0
    .prologue
    .line 603
    iget-object v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->simulatedCallState:Lcom/android/internal/telephony/test/SimulatedGsmCallState;

    #@2
    const/16 v2, 0x30

    #@4
    const/4 v3, 0x0

    #@5
    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->onChld(CC)Z

    #@8
    move-result v0

    #@9
    .line 605
    .local v0, "success":Z
    if-nez v0, :cond_0

    #@b
    .line 606
    new-instance v1, Ljava/lang/RuntimeException;

    #@d
    const-string/jumbo v2, "Hangup Error"

    #@10
    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@13
    invoke-direct {p0, p1, v1}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultFail(Landroid/os/Message;Ljava/lang/Throwable;)V

    #@16
    .line 600
    :goto_0
    return-void

    #@17
    .line 608
    :cond_0
    const/4 v1, 0x0

    #@18
    invoke-direct {p0, p1, v1}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    #@1b
    goto :goto_0
.end method

.method public iccCloseLogicalChannel(ILandroid/os/Message;)V
    .locals 0
    .param p1, "channel"    # I
    .param p2, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1726
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    #@3
    .line 1725
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
    .line 1135
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
    .line 1134
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
    .line 1146
    invoke-direct {p0, p10}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    #@3
    .line 1145
    return-void
.end method

.method public iccOpenLogicalChannel(Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "AID"    # Ljava/lang/String;
    .param p2, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1721
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    #@3
    .line 1720
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
    .line 1738
    invoke-direct {p0, p7}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    #@3
    .line 1737
    return-void
.end method

.method public iccTransmitApduLogicalChannel(IIIIIILjava/lang/String;Landroid/os/Message;)V
    .locals 0
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
    .line 1732
    invoke-direct {p0, p8}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    #@3
    .line 1731
    return-void
.end method

.method public invokeOemRilRequestRaw([BLandroid/os/Message;)V
    .locals 1
    .param p1, "data"    # [B
    .param p2, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1330
    if-eqz p2, :cond_0

    #@2
    .line 1331
    invoke-static {p2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    #@5
    move-result-object v0

    #@6
    iput-object p1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@8
    .line 1332
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    #@b
    .line 1328
    :cond_0
    return-void
.end method

.method public invokeOemRilRequestStrings([Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .param p1, "strings"    # [Ljava/lang/String;
    .param p2, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1339
    if-eqz p2, :cond_0

    #@2
    .line 1340
    invoke-static {p2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    #@5
    move-result-object v0

    #@6
    iput-object p1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@8
    .line 1341
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    #@b
    .line 1337
    :cond_0
    return-void
.end method

.method public nvReadItem(ILandroid/os/Message;)V
    .locals 0
    .param p1, "itemID"    # I
    .param p2, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1743
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    #@3
    .line 1742
    return-void
.end method

.method public nvResetConfig(ILandroid/os/Message;)V
    .locals 0
    .param p1, "resetType"    # I
    .param p2, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1758
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    #@3
    .line 1757
    return-void
.end method

.method public nvWriteCdmaPrl([BLandroid/os/Message;)V
    .locals 0
    .param p1, "preferredRoamingList"    # [B
    .param p2, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1753
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    #@3
    .line 1752
    return-void
.end method

.method public nvWriteItem(ILjava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "itemID"    # I
    .param p2, "itemValue"    # Ljava/lang/String;
    .param p3, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1748
    invoke-direct {p0, p3}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    #@3
    .line 1747
    return-void
.end method

.method public pauseResponses()V
    .locals 1

    #@0
    .prologue
    .line 1443
    iget v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mPausedResponseCount:I

    #@2
    add-int/lit8 v0, v0, 0x1

    #@4
    iput v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mPausedResponseCount:I

    #@6
    .line 1442
    return-void
.end method

.method public progressConnectingCallState()V
    .locals 1

    #@0
    .prologue
    .line 1359
    iget-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->simulatedCallState:Lcom/android/internal/telephony/test/SimulatedGsmCallState;

    #@2
    invoke-virtual {v0}, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->progressConnectingCallState()V

    #@5
    .line 1360
    iget-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mCallStateRegistrants:Landroid/os/RegistrantList;

    #@7
    invoke-virtual {v0}, Landroid/os/RegistrantList;->notifyRegistrants()V

    #@a
    .line 1358
    return-void
.end method

.method public progressConnectingToActive()V
    .locals 1

    #@0
    .prologue
    .line 1367
    iget-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->simulatedCallState:Lcom/android/internal/telephony/test/SimulatedGsmCallState;

    #@2
    invoke-virtual {v0}, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->progressConnectingToActive()V

    #@5
    .line 1368
    iget-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mCallStateRegistrants:Landroid/os/RegistrantList;

    #@7
    invoke-virtual {v0}, Landroid/os/RegistrantList;->notifyRegistrants()V

    #@a
    .line 1366
    return-void
.end method

.method public pullLceData(Landroid/os/Message;)V
    .locals 0
    .param p1, "result"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1783
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    #@3
    .line 1782
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
    .line 830
    new-array v0, v2, [I

    #@5
    .line 832
    .local v0, "ret":[I
    const/4 v1, 0x0

    #@6
    aput v2, v0, v1

    #@8
    .line 833
    const/4 v1, 0x1

    #@9
    aput v3, v0, v1

    #@b
    .line 834
    aput v4, v0, v3

    #@d
    .line 835
    aput v2, v0, v4

    #@f
    .line 837
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    #@12
    .line 829
    return-void
.end method

.method public queryCLIP(Landroid/os/Message;)V
    .locals 0
    .param p1, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1156
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    #@3
    return-void
.end method

.method public queryCallForwardStatus(IILjava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "cfReason"    # I
    .param p2, "serviceClass"    # I
    .param p3, "number"    # Ljava/lang/String;
    .param p4, "result"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1231
    invoke-direct {p0, p4}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    #@3
    return-void
.end method

.method public queryCallWaiting(ILandroid/os/Message;)V
    .locals 0
    .param p1, "serviceClass"    # I
    .param p2, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1197
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    #@3
    .line 1196
    return-void
.end method

.method public queryCdmaRoamingPreference(Landroid/os/Message;)V
    .locals 2
    .param p1, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1522
    const-string/jumbo v0, "SimulatedCommands"

    #@3
    const-string/jumbo v1, "CDMA not implemented in SimulatedCommands"

    #@6
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@9
    .line 1523
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    #@c
    .line 1521
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
    .line 348
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
    .line 347
    return-void
.end method

.method public queryFacilityLockForApp(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroid/os/Message;)V
    .locals 6
    .param p1, "facility"    # Ljava/lang/String;
    .param p2, "pin"    # Ljava/lang/String;
    .param p3, "serviceClass"    # I
    .param p4, "appId"    # Ljava/lang/String;
    .param p5, "result"    # Landroid/os/Message;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v5, 0x0

    #@2
    const/4 v2, 0x0

    #@3
    .line 354
    if-eqz p1, :cond_3

    #@5
    const-string/jumbo v3, "SC"

    #@8
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@b
    move-result v3

    #@c
    if-eqz v3, :cond_3

    #@e
    .line 355
    if-eqz p5, :cond_0

    #@10
    .line 356
    new-array v0, v1, [I

    #@12
    .line 357
    .local v0, "r":[I
    iget-boolean v3, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mSimLockEnabled:Z

    #@14
    if-eqz v3, :cond_1

    #@16
    :goto_0
    aput v1, v0, v2

    #@18
    .line 358
    const-string/jumbo v3, "SimulatedCommands"

    #@1b
    new-instance v1, Ljava/lang/StringBuilder;

    #@1d
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@20
    const-string/jumbo v4, "[SimCmd] queryFacilityLock: SIM is "

    #@23
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v4

    #@27
    .line 359
    aget v1, v0, v2

    #@29
    if-nez v1, :cond_2

    #@2b
    const-string/jumbo v1, "unlocked"

    #@2e
    .line 358
    :goto_1
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v1

    #@32
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@35
    move-result-object v1

    #@36
    invoke-static {v3, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@39
    .line 360
    invoke-static {p5, v0, v5}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    #@3c
    .line 361
    invoke-virtual {p5}, Landroid/os/Message;->sendToTarget()V

    #@3f
    .line 363
    .end local v0    # "r":[I
    :cond_0
    return-void

    #@40
    .restart local v0    # "r":[I
    :cond_1
    move v1, v2

    #@41
    .line 357
    goto :goto_0

    #@42
    .line 359
    :cond_2
    const-string/jumbo v1, "locked"

    #@45
    goto :goto_1

    #@46
    .line 364
    .end local v0    # "r":[I
    :cond_3
    if-eqz p1, :cond_7

    #@48
    const-string/jumbo v3, "FD"

    #@4b
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@4e
    move-result v3

    #@4f
    if-eqz v3, :cond_7

    #@51
    .line 365
    if-eqz p5, :cond_4

    #@53
    .line 366
    new-array v0, v1, [I

    #@55
    .line 367
    .restart local v0    # "r":[I
    iget-boolean v3, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mSimFdnEnabled:Z

    #@57
    if-eqz v3, :cond_5

    #@59
    :goto_2
    aput v1, v0, v2

    #@5b
    .line 368
    const-string/jumbo v3, "SimulatedCommands"

    #@5e
    new-instance v1, Ljava/lang/StringBuilder;

    #@60
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@63
    const-string/jumbo v4, "[SimCmd] queryFacilityLock: FDN is "

    #@66
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@69
    move-result-object v4

    #@6a
    .line 369
    aget v1, v0, v2

    #@6c
    if-nez v1, :cond_6

    #@6e
    const-string/jumbo v1, "disabled"

    #@71
    .line 368
    :goto_3
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@74
    move-result-object v1

    #@75
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@78
    move-result-object v1

    #@79
    invoke-static {v3, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@7c
    .line 370
    invoke-static {p5, v0, v5}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    #@7f
    .line 371
    invoke-virtual {p5}, Landroid/os/Message;->sendToTarget()V

    #@82
    .line 373
    .end local v0    # "r":[I
    :cond_4
    return-void

    #@83
    .restart local v0    # "r":[I
    :cond_5
    move v1, v2

    #@84
    .line 367
    goto :goto_2

    #@85
    .line 369
    :cond_6
    const-string/jumbo v1, "enabled"

    #@88
    goto :goto_3

    #@89
    .line 376
    .end local v0    # "r":[I
    :cond_7
    invoke-direct {p0, p5}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    #@8c
    .line 353
    return-void
.end method

.method public queryTTYMode(Landroid/os/Message;)V
    .locals 2
    .param p1, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1578
    const-string/jumbo v0, "SimulatedCommands"

    #@3
    const-string/jumbo v1, "CDMA not implemented in SimulatedCommands"

    #@6
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@9
    .line 1579
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    #@c
    .line 1577
    return-void
.end method

.method public rejectCall(Landroid/os/Message;)V
    .locals 4
    .param p1, "result"    # Landroid/os/Message;

    #@0
    .prologue
    .line 746
    iget-object v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->simulatedCallState:Lcom/android/internal/telephony/test/SimulatedGsmCallState;

    #@2
    const/16 v2, 0x30

    #@4
    const/4 v3, 0x0

    #@5
    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->onChld(CC)Z

    #@8
    move-result v0

    #@9
    .line 748
    .local v0, "success":Z
    if-nez v0, :cond_0

    #@b
    .line 749
    new-instance v1, Ljava/lang/RuntimeException;

    #@d
    const-string/jumbo v2, "Hangup Error"

    #@10
    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@13
    invoke-direct {p0, p1, v1}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultFail(Landroid/os/Message;Ljava/lang/Throwable;)V

    #@16
    .line 743
    :goto_0
    return-void

    #@17
    .line 751
    :cond_0
    const/4 v1, 0x0

    #@18
    invoke-direct {p0, p1, v1}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    #@1b
    goto :goto_0
.end method

.method public reportSmsMemoryStatus(ZLandroid/os/Message;)V
    .locals 0
    .param p1, "available"    # Z
    .param p2, "result"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1086
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    #@3
    .line 1085
    return-void
.end method

.method public reportStkServiceIsRunning(Landroid/os/Message;)V
    .locals 1
    .param p1, "result"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1091
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    #@4
    .line 1090
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
    .line 1675
    invoke-direct {p0, p4}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    #@3
    .line 1674
    return-void
.end method

.method public requestIsimAuthentication(Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "nonce"    # Ljava/lang/String;
    .param p2, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1670
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    #@3
    .line 1669
    return-void
.end method

.method public requestShutdown(Landroid/os/Message;)V
    .locals 1
    .param p1, "result"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1768
    sget-object v0, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_UNAVAILABLE:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    #@2
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->setRadioState(Lcom/android/internal/telephony/CommandsInterface$RadioState;)V

    #@5
    .line 1767
    return-void
.end method

.method public resetRadio(Landroid/os/Message;)V
    .locals 0
    .param p1, "result"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1324
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    #@3
    .line 1323
    return-void
.end method

.method public resumeResponses()V
    .locals 4

    #@0
    .prologue
    .line 1449
    iget v2, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mPausedResponseCount:I

    #@2
    add-int/lit8 v2, v2, -0x1

    #@4
    iput v2, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mPausedResponseCount:I

    #@6
    .line 1451
    iget v2, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mPausedResponseCount:I

    #@8
    if-nez v2, :cond_1

    #@a
    .line 1452
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
    .line 1453
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
    .line 1452
    add-int/lit8 v0, v0, 0x1

    #@20
    goto :goto_0

    #@21
    .line 1455
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mPausedResponses:Ljava/util/ArrayList;

    #@23
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    #@26
    .line 1448
    .end local v0    # "i":I
    .end local v1    # "s":I
    :goto_1
    return-void

    #@27
    .line 1457
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
    .line 985
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p4, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    #@4
    .line 984
    return-void
.end method

.method public sendCDMAFeatureCode(Ljava/lang/String;Landroid/os/Message;)V
    .locals 2
    .param p1, "FeatureCode"    # Ljava/lang/String;
    .param p2, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1587
    const-string/jumbo v0, "SimulatedCommands"

    #@3
    const-string/jumbo v1, "CDMA not implemented in SimulatedCommands"

    #@6
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@9
    .line 1588
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    #@c
    .line 1586
    return-void
.end method

.method public sendCdmaSms([BLandroid/os/Message;)V
    .locals 2
    .param p1, "pdu"    # [B
    .param p2, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1596
    const-string/jumbo v0, "SimulatedCommands"

    #@3
    const-string/jumbo v1, "CDMA not implemented in SimulatedCommands"

    #@6
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@9
    .line 1595
    return-void
.end method

.method public sendDtmf(CLandroid/os/Message;)V
    .locals 1
    .param p1, "c"    # C
    .param p2, "result"    # Landroid/os/Message;

    #@0
    .prologue
    .line 955
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p2, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    #@4
    .line 954
    return-void
.end method

.method public sendEnvelope(Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .param p1, "contents"    # Ljava/lang/String;
    .param p2, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 853
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p2, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    #@4
    .line 852
    return-void
.end method

.method public sendEnvelopeWithStatus(Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .param p1, "contents"    # Ljava/lang/String;
    .param p2, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 861
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p2, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    #@4
    .line 860
    return-void
.end method

.method public sendImsCdmaSms([BIILandroid/os/Message;)V
    .locals 0
    .param p1, "pdu"    # [B
    .param p2, "retry"    # I
    .param p3, "messageRef"    # I
    .param p4, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1710
    invoke-direct {p0, p4}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    #@3
    .line 1709
    return-void
.end method

.method public sendImsGsmSms(Ljava/lang/String;Ljava/lang/String;IILandroid/os/Message;)V
    .locals 0
    .param p1, "smscPDU"    # Ljava/lang/String;
    .param p2, "pdu"    # Ljava/lang/String;
    .param p3, "retry"    # I
    .param p4, "messageRef"    # I
    .param p5, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1716
    invoke-direct {p0, p5}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    #@3
    .line 1715
    return-void
.end method

.method public sendSMS(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "smscPDU"    # Ljava/lang/String;
    .param p2, "pdu"    # Ljava/lang/String;
    .param p3, "result"    # Landroid/os/Message;

    #@0
    .prologue
    .line 995
    invoke-direct {p0, p3}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    #@3
    return-void
.end method

.method public sendSMSExpectMore(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "smscPDU"    # Ljava/lang/String;
    .param p2, "pdu"    # Ljava/lang/String;
    .param p3, "result"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1007
    invoke-direct {p0, p3}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    #@3
    .line 1006
    return-void
.end method

.method public sendStkCcAplha(Ljava/lang/String;)V
    .locals 0
    .param p1, "alphaString"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1281
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/test/SimulatedCommands;->triggerIncomingStkCcAlpha(Ljava/lang/String;)V

    #@3
    .line 1280
    return-void
.end method

.method public sendTerminalResponse(Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .param p1, "contents"    # Ljava/lang/String;
    .param p2, "response"    # Landroid/os/Message;

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

.method public sendUSSD(Ljava/lang/String;Landroid/os/Message;)V
    .locals 2
    .param p1, "ussdString"    # Ljava/lang/String;
    .param p2, "result"    # Landroid/os/Message;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1303
    const-string/jumbo v0, "#646#"

    #@4
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 1304
    invoke-direct {p0, p2, v1}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    #@d
    .line 1307
    const-string/jumbo v0, "0"

    #@10
    const-string/jumbo v1, "You have NNN minutes remaining."

    #@13
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/test/SimulatedCommands;->triggerIncomingUssd(Ljava/lang/String;Ljava/lang/String;)V

    #@16
    .line 1300
    :goto_0
    return-void

    #@17
    .line 1309
    :cond_0
    invoke-direct {p0, p2, v1}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    #@1a
    .line 1311
    const-string/jumbo v0, "0"

    #@1d
    const-string/jumbo v1, "All Done"

    #@20
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/test/SimulatedCommands;->triggerIncomingUssd(Ljava/lang/String;Ljava/lang/String;)V

    #@23
    goto :goto_0
.end method

.method public separateConnection(ILandroid/os/Message;)V
    .locals 4
    .param p1, "gsmIndex"    # I
    .param p2, "result"    # Landroid/os/Message;

    #@0
    .prologue
    .line 707
    add-int/lit8 v2, p1, 0x30

    #@2
    int-to-char v0, v2

    #@3
    .line 708
    .local v0, "ch":C
    iget-object v2, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->simulatedCallState:Lcom/android/internal/telephony/test/SimulatedGsmCallState;

    #@5
    const/16 v3, 0x32

    #@7
    invoke-virtual {v2, v3, v0}, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->onChld(CC)Z

    #@a
    move-result v1

    #@b
    .line 710
    .local v1, "success":Z
    if-nez v1, :cond_0

    #@d
    .line 711
    new-instance v2, Ljava/lang/RuntimeException;

    #@f
    const-string/jumbo v3, "Hangup Error"

    #@12
    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@15
    invoke-direct {p0, p2, v2}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultFail(Landroid/os/Message;Ljava/lang/Throwable;)V

    #@18
    .line 704
    :goto_0
    return-void

    #@19
    .line 713
    :cond_0
    const/4 v2, 0x0

    #@1a
    invoke-direct {p0, p2, v2}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    #@1d
    goto :goto_0
.end method

.method public setAutoProgressConnectingCall(Z)V
    .locals 1
    .param p1, "b"    # Z

    #@0
    .prologue
    .line 1377
    iget-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->simulatedCallState:Lcom/android/internal/telephony/test/SimulatedGsmCallState;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->setAutoProgressConnectingCall(Z)V

    #@5
    .line 1376
    return-void
.end method

.method public setBandMode(ILandroid/os/Message;)V
    .locals 1
    .param p1, "bandMode"    # I
    .param p2, "result"    # Landroid/os/Message;

    #@0
    .prologue
    .line 817
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p2, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    #@4
    .line 816
    return-void
.end method

.method public setCLIR(ILandroid/os/Message;)V
    .locals 0
    .param p1, "clirMode"    # I
    .param p2, "result"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1185
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    #@3
    return-void
.end method

.method public setCallForward(IIILjava/lang/String;ILandroid/os/Message;)V
    .locals 0
    .param p1, "action"    # I
    .param p2, "cfReason"    # I
    .param p3, "serviceClass"    # I
    .param p4, "number"    # Ljava/lang/String;
    .param p5, "timeSeconds"    # I
    .param p6, "result"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1219
    invoke-direct {p0, p6}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    #@3
    return-void
.end method

.method public setCallWaiting(ZILandroid/os/Message;)V
    .locals 0
    .param p1, "enable"    # Z
    .param p2, "serviceClass"    # I
    .param p3, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1209
    invoke-direct {p0, p3}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    #@3
    .line 1208
    return-void
.end method

.method public setCdmaBroadcastActivation(ZLandroid/os/Message;)V
    .locals 0
    .param p1, "activate"    # Z
    .param p2, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1601
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    #@3
    .line 1600
    return-void
.end method

.method public setCdmaBroadcastConfig([Lcom/android/internal/telephony/cdma/CdmaSmsBroadcastConfigInfo;Landroid/os/Message;)V
    .locals 0
    .param p1, "configs"    # [Lcom/android/internal/telephony/cdma/CdmaSmsBroadcastConfigInfo;
    .param p2, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1613
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    #@3
    .line 1612
    return-void
.end method

.method public setCdmaRoamingPreference(ILandroid/os/Message;)V
    .locals 2
    .param p1, "cdmaRoamingType"    # I
    .param p2, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1528
    const-string/jumbo v0, "SimulatedCommands"

    #@3
    const-string/jumbo v1, "CDMA not implemented in SimulatedCommands"

    #@6
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@9
    .line 1529
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    #@c
    .line 1527
    return-void
.end method

.method public setCdmaSubscriptionSource(ILandroid/os/Message;)V
    .locals 2
    .param p1, "cdmaSubscriptionType"    # I
    .param p2, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1516
    const-string/jumbo v0, "SimulatedCommands"

    #@3
    const-string/jumbo v1, "CDMA not implemented in SimulatedCommands"

    #@6
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@9
    .line 1517
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    #@c
    .line 1515
    return-void
.end method

.method public setCellInfoListRate(ILandroid/os/Message;)V
    .locals 0
    .param p1, "rateInMillis"    # I
    .param p2, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1690
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    #@3
    .line 1689
    return-void
.end method

.method public setDataProfile([Lcom/android/internal/telephony/dataconnection/DataProfile;Landroid/os/Message;)V
    .locals 0
    .param p1, "dps"    # [Lcom/android/internal/telephony/dataconnection/DataProfile;
    .param p2, "result"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1699
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
    .line 382
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
    .line 381
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
    .line 389
    if-eqz p1, :cond_3

    #@3
    .line 390
    const-string/jumbo v1, "SC"

    #@6
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@9
    move-result v1

    #@a
    .line 389
    if-eqz v1, :cond_3

    #@c
    .line 391
    if-eqz p3, :cond_1

    #@e
    iget-object v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mPinCode:Ljava/lang/String;

    #@10
    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@13
    move-result v1

    #@14
    if-eqz v1, :cond_1

    #@16
    .line 392
    const-string/jumbo v1, "SimulatedCommands"

    #@19
    const-string/jumbo v2, "[SimCmd] setFacilityLock: pin is valid"

    #@1c
    invoke-static {v1, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@1f
    .line 393
    iput-boolean p2, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mSimLockEnabled:Z

    #@21
    .line 395
    if-eqz p6, :cond_0

    #@23
    .line 396
    invoke-static {p6, v3, v3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    #@26
    .line 397
    invoke-virtual {p6}, Landroid/os/Message;->sendToTarget()V

    #@29
    .line 400
    :cond_0
    return-void

    #@2a
    .line 403
    :cond_1
    if-eqz p6, :cond_2

    #@2c
    .line 404
    const-string/jumbo v1, "SimulatedCommands"

    #@2f
    const-string/jumbo v2, "[SimCmd] setFacilityLock: pin failed!"

    #@32
    invoke-static {v1, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@35
    .line 406
    new-instance v0, Lcom/android/internal/telephony/CommandException;

    #@37
    .line 407
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    #@39
    .line 406
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    #@3c
    .line 408
    .local v0, "ex":Lcom/android/internal/telephony/CommandException;
    invoke-static {p6, v3, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    #@3f
    .line 409
    invoke-virtual {p6}, Landroid/os/Message;->sendToTarget()V

    #@42
    .line 412
    .end local v0    # "ex":Lcom/android/internal/telephony/CommandException;
    :cond_2
    return-void

    #@43
    .line 413
    :cond_3
    if-eqz p1, :cond_7

    #@45
    .line 414
    const-string/jumbo v1, "FD"

    #@48
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@4b
    move-result v1

    #@4c
    .line 413
    if-eqz v1, :cond_7

    #@4e
    .line 415
    if-eqz p3, :cond_5

    #@50
    iget-object v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mPin2Code:Ljava/lang/String;

    #@52
    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@55
    move-result v1

    #@56
    if-eqz v1, :cond_5

    #@58
    .line 416
    const-string/jumbo v1, "SimulatedCommands"

    #@5b
    const-string/jumbo v2, "[SimCmd] setFacilityLock: pin2 is valid"

    #@5e
    invoke-static {v1, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@61
    .line 417
    iput-boolean p2, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mSimFdnEnabled:Z

    #@63
    .line 419
    if-eqz p6, :cond_4

    #@65
    .line 420
    invoke-static {p6, v3, v3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    #@68
    .line 421
    invoke-virtual {p6}, Landroid/os/Message;->sendToTarget()V

    #@6b
    .line 424
    :cond_4
    return-void

    #@6c
    .line 427
    :cond_5
    if-eqz p6, :cond_6

    #@6e
    .line 428
    const-string/jumbo v1, "SimulatedCommands"

    #@71
    const-string/jumbo v2, "[SimCmd] setFacilityLock: pin2 failed!"

    #@74
    invoke-static {v1, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@77
    .line 430
    new-instance v0, Lcom/android/internal/telephony/CommandException;

    #@79
    .line 431
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    #@7b
    .line 430
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    #@7e
    .line 432
    .restart local v0    # "ex":Lcom/android/internal/telephony/CommandException;
    invoke-static {p6, v3, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    #@81
    .line 433
    invoke-virtual {p6}, Landroid/os/Message;->sendToTarget()V

    #@84
    .line 436
    .end local v0    # "ex":Lcom/android/internal/telephony/CommandException;
    :cond_6
    return-void

    #@85
    .line 439
    :cond_7
    invoke-direct {p0, p6}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    #@88
    .line 388
    return-void
.end method

.method public setGsmBroadcastActivation(ZLandroid/os/Message;)V
    .locals 0
    .param p1, "activate"    # Z
    .param p2, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1623
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    #@3
    .line 1622
    return-void
.end method

.method public setGsmBroadcastConfig([Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;Landroid/os/Message;)V
    .locals 0
    .param p1, "config"    # [Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;
    .param p2, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1629
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    #@3
    .line 1628
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
    .line 1695
    return-void
.end method

.method public setLocationUpdates(ZLandroid/os/Message;)V
    .locals 0
    .param p1, "enable"    # Z
    .param p2, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1071
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    #@3
    .line 1070
    return-void
.end method

.method public setMute(ZLandroid/os/Message;)V
    .locals 0
    .param p1, "enableMute"    # Z
    .param p2, "result"    # Landroid/os/Message;

    #@0
    .prologue
    .line 787
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    #@3
    return-void
.end method

.method public setNetworkSelectionModeAutomatic(Landroid/os/Message;)V
    .locals 0
    .param p1, "result"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1234
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
    .line 1239
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    #@3
    return-void
.end method

.method public setNextCallFailCause(I)V
    .locals 0
    .param p1, "gsmCause"    # I

    #@0
    .prologue
    .line 1389
    iput p1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mNextCallFailCause:I

    #@2
    .line 1388
    return-void
.end method

.method public setNextDialFailImmediately(Z)V
    .locals 1
    .param p1, "b"    # Z

    #@0
    .prologue
    .line 1383
    iget-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->simulatedCallState:Lcom/android/internal/telephony/test/SimulatedGsmCallState;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->setNextDialFailImmediately(Z)V

    #@5
    .line 1382
    return-void
.end method

.method public setPhoneType(I)V
    .locals 2
    .param p1, "phoneType"    # I

    #@0
    .prologue
    .line 1535
    const-string/jumbo v0, "SimulatedCommands"

    #@3
    const-string/jumbo v1, "CDMA not implemented in SimulatedCommands"

    #@6
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@9
    .line 1534
    return-void
.end method

.method public setPreferredNetworkType(ILandroid/os/Message;)V
    .locals 1
    .param p1, "networkType"    # I
    .param p2, "result"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1046
    iput p1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mNetworkType:I

    #@2
    .line 1047
    const/4 v0, 0x0

    #@3
    invoke-direct {p0, p2, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    #@6
    .line 1045
    return-void
.end method

.method public setPreferredVoicePrivacy(ZLandroid/os/Message;)V
    .locals 2
    .param p1, "enable"    # Z
    .param p2, "result"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1546
    const-string/jumbo v0, "SimulatedCommands"

    #@3
    const-string/jumbo v1, "CDMA not implemented in SimulatedCommands"

    #@6
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@9
    .line 1547
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    #@c
    .line 1545
    return-void
.end method

.method public setRadioPower(ZLandroid/os/Message;)V
    .locals 1
    .param p1, "on"    # Z
    .param p2, "result"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1108
    if-eqz p1, :cond_0

    #@2
    .line 1109
    sget-object v0, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_ON:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    #@4
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->setRadioState(Lcom/android/internal/telephony/CommandsInterface$RadioState;)V

    #@7
    .line 1107
    :goto_0
    return-void

    #@8
    .line 1111
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_OFF:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    #@a
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->setRadioState(Lcom/android/internal/telephony/CommandsInterface$RadioState;)V

    #@d
    goto :goto_0
.end method

.method public setSmscAddress(Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "result"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1081
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    #@3
    .line 1080
    return-void
.end method

.method public setSuppServiceNotifications(ZLandroid/os/Message;)V
    .locals 2
    .param p1, "enable"    # Z
    .param p2, "result"    # Landroid/os/Message;

    #@0
    .prologue
    .line 336
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p2, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    #@4
    .line 338
    if-eqz p1, :cond_0

    #@6
    iget-boolean v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mSsnNotifyOn:Z

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 339
    const-string/jumbo v0, "SimulatedCommands"

    #@d
    const-string/jumbo v1, "Supp Service Notifications already enabled!"

    #@10
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@13
    .line 342
    :cond_0
    iput-boolean p1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mSsnNotifyOn:Z

    #@15
    .line 335
    return-void
.end method

.method public setTTYMode(ILandroid/os/Message;)V
    .locals 2
    .param p1, "ttyMode"    # I
    .param p2, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1562
    const-string/jumbo v0, "SimulatedCommands"

    #@3
    const-string/jumbo v1, "Not implemented in SimulatedCommands"

    #@6
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@9
    .line 1563
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    #@c
    .line 1561
    return-void
.end method

.method public setupDataCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "radioTechnology"    # Ljava/lang/String;
    .param p2, "profile"    # Ljava/lang/String;
    .param p3, "apn"    # Ljava/lang/String;
    .param p4, "user"    # Ljava/lang/String;
    .param p5, "password"    # Ljava/lang/String;
    .param p6, "authType"    # Ljava/lang/String;
    .param p7, "protocol"    # Ljava/lang/String;
    .param p8, "result"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1038
    invoke-direct {p0, p8}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    #@3
    .line 1037
    return-void
.end method

.method public shutdown()V
    .locals 2

    #@0
    .prologue
    .line 1418
    sget-object v1, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_UNAVAILABLE:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    #@2
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/test/SimulatedCommands;->setRadioState(Lcom/android/internal/telephony/CommandsInterface$RadioState;)V

    #@5
    .line 1419
    iget-object v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mHandlerThread:Landroid/os/HandlerThread;

    #@7
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    #@a
    move-result-object v0

    #@b
    .line 1420
    .local v0, "looper":Landroid/os/Looper;
    if-eqz v0, :cond_0

    #@d
    .line 1421
    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    #@10
    .line 1417
    :cond_0
    return-void
.end method

.method public startDtmf(CLandroid/os/Message;)V
    .locals 1
    .param p1, "c"    # C
    .param p2, "result"    # Landroid/os/Message;

    #@0
    .prologue
    .line 965
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p2, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    #@4
    .line 964
    return-void
.end method

.method public startLceService(IZLandroid/os/Message;)V
    .locals 0
    .param p1, "report_interval_ms"    # I
    .param p2, "pullMode"    # Z
    .param p3, "result"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1773
    invoke-direct {p0, p3}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    #@3
    .line 1772
    return-void
.end method

.method public stopDtmf(Landroid/os/Message;)V
    .locals 1
    .param p1, "result"    # Landroid/os/Message;

    #@0
    .prologue
    .line 975
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    #@4
    .line 974
    return-void
.end method

.method public stopLceService(Landroid/os/Message;)V
    .locals 0
    .param p1, "result"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1778
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    #@3
    .line 1777
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
    .line 115
    iget-object v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mSimLockedState:Lcom/android/internal/telephony/test/SimulatedCommands$SimLockState;

    #@3
    sget-object v2, Lcom/android/internal/telephony/test/SimulatedCommands$SimLockState;->REQUIRE_PIN:Lcom/android/internal/telephony/test/SimulatedCommands$SimLockState;

    #@5
    if-eq v1, v2, :cond_0

    #@7
    .line 116
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
    .line 117
    iget-object v3, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mSimLockedState:Lcom/android/internal/telephony/test/SimulatedCommands$SimLockState;

    #@18
    .line 116
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
    .line 118
    new-instance v0, Lcom/android/internal/telephony/CommandException;

    #@25
    .line 119
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->PASSWORD_INCORRECT:Lcom/android/internal/telephony/CommandException$Error;

    #@27
    .line 118
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    #@2a
    .line 120
    .local v0, "ex":Lcom/android/internal/telephony/CommandException;
    invoke-static {p2, v4, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    #@2d
    .line 121
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    #@30
    .line 122
    return-void

    #@31
    .line 125
    .end local v0    # "ex":Lcom/android/internal/telephony/CommandException;
    :cond_0
    if-eqz p1, :cond_2

    #@33
    iget-object v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mPinCode:Ljava/lang/String;

    #@35
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@38
    move-result v1

    #@39
    if-eqz v1, :cond_2

    #@3b
    .line 126
    const-string/jumbo v1, "SimulatedCommands"

    #@3e
    const-string/jumbo v2, "[SimCmd] supplyIccPin: success!"

    #@41
    invoke-static {v1, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@44
    .line 127
    const/4 v1, 0x0

    #@45
    iput v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mPinUnlockAttempts:I

    #@47
    .line 128
    sget-object v1, Lcom/android/internal/telephony/test/SimulatedCommands$SimLockState;->NONE:Lcom/android/internal/telephony/test/SimulatedCommands$SimLockState;

    #@49
    iput-object v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mSimLockedState:Lcom/android/internal/telephony/test/SimulatedCommands$SimLockState;

    #@4b
    .line 129
    iget-object v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mIccStatusChangedRegistrants:Landroid/os/RegistrantList;

    #@4d
    invoke-virtual {v1}, Landroid/os/RegistrantList;->notifyRegistrants()V

    #@50
    .line 131
    if-eqz p2, :cond_1

    #@52
    .line 132
    invoke-static {p2, v4, v4}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    #@55
    .line 133
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    #@58
    .line 136
    :cond_1
    return-void

    #@59
    .line 139
    :cond_2
    if-eqz p2, :cond_4

    #@5b
    .line 140
    iget v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mPinUnlockAttempts:I

    #@5d
    add-int/lit8 v1, v1, 0x1

    #@5f
    iput v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mPinUnlockAttempts:I

    #@61
    .line 142
    const-string/jumbo v1, "SimulatedCommands"

    #@64
    new-instance v2, Ljava/lang/StringBuilder;

    #@66
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@69
    const-string/jumbo v3, "[SimCmd] supplyIccPin: failed! attempt="

    #@6c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6f
    move-result-object v2

    #@70
    .line 143
    iget v3, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mPinUnlockAttempts:I

    #@72
    .line 142
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@75
    move-result-object v2

    #@76
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@79
    move-result-object v2

    #@7a
    invoke-static {v1, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@7d
    .line 144
    iget v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mPinUnlockAttempts:I

    #@7f
    const/4 v2, 0x3

    #@80
    if-lt v1, v2, :cond_3

    #@82
    .line 145
    const-string/jumbo v1, "SimulatedCommands"

    #@85
    const-string/jumbo v2, "[SimCmd] supplyIccPin: set state to REQUIRE_PUK"

    #@88
    invoke-static {v1, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@8b
    .line 146
    sget-object v1, Lcom/android/internal/telephony/test/SimulatedCommands$SimLockState;->REQUIRE_PUK:Lcom/android/internal/telephony/test/SimulatedCommands$SimLockState;

    #@8d
    iput-object v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mSimLockedState:Lcom/android/internal/telephony/test/SimulatedCommands$SimLockState;

    #@8f
    .line 149
    :cond_3
    new-instance v0, Lcom/android/internal/telephony/CommandException;

    #@91
    .line 150
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->PASSWORD_INCORRECT:Lcom/android/internal/telephony/CommandException$Error;

    #@93
    .line 149
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    #@96
    .line 151
    .restart local v0    # "ex":Lcom/android/internal/telephony/CommandException;
    invoke-static {p2, v4, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    #@99
    .line 152
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    #@9c
    .line 114
    .end local v0    # "ex":Lcom/android/internal/telephony/CommandException;
    :cond_4
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
    .line 201
    iget-object v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mSimFdnEnabledState:Lcom/android/internal/telephony/test/SimulatedCommands$SimFdnState;

    #@3
    sget-object v2, Lcom/android/internal/telephony/test/SimulatedCommands$SimFdnState;->REQUIRE_PIN2:Lcom/android/internal/telephony/test/SimulatedCommands$SimFdnState;

    #@5
    if-eq v1, v2, :cond_0

    #@7
    .line 202
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
    .line 203
    iget-object v3, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mSimFdnEnabledState:Lcom/android/internal/telephony/test/SimulatedCommands$SimFdnState;

    #@18
    .line 202
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
    .line 204
    new-instance v0, Lcom/android/internal/telephony/CommandException;

    #@25
    .line 205
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->PASSWORD_INCORRECT:Lcom/android/internal/telephony/CommandException$Error;

    #@27
    .line 204
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    #@2a
    .line 206
    .local v0, "ex":Lcom/android/internal/telephony/CommandException;
    invoke-static {p2, v4, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    #@2d
    .line 207
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    #@30
    .line 208
    return-void

    #@31
    .line 211
    .end local v0    # "ex":Lcom/android/internal/telephony/CommandException;
    :cond_0
    if-eqz p1, :cond_2

    #@33
    iget-object v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mPin2Code:Ljava/lang/String;

    #@35
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@38
    move-result v1

    #@39
    if-eqz v1, :cond_2

    #@3b
    .line 212
    const-string/jumbo v1, "SimulatedCommands"

    #@3e
    const-string/jumbo v2, "[SimCmd] supplyIccPin2: success!"

    #@41
    invoke-static {v1, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@44
    .line 213
    const/4 v1, 0x0

    #@45
    iput v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mPin2UnlockAttempts:I

    #@47
    .line 214
    sget-object v1, Lcom/android/internal/telephony/test/SimulatedCommands$SimFdnState;->NONE:Lcom/android/internal/telephony/test/SimulatedCommands$SimFdnState;

    #@49
    iput-object v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mSimFdnEnabledState:Lcom/android/internal/telephony/test/SimulatedCommands$SimFdnState;

    #@4b
    .line 216
    if-eqz p2, :cond_1

    #@4d
    .line 217
    invoke-static {p2, v4, v4}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    #@50
    .line 218
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    #@53
    .line 221
    :cond_1
    return-void

    #@54
    .line 224
    :cond_2
    if-eqz p2, :cond_4

    #@56
    .line 225
    iget v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mPin2UnlockAttempts:I

    #@58
    add-int/lit8 v1, v1, 0x1

    #@5a
    iput v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mPin2UnlockAttempts:I

    #@5c
    .line 227
    const-string/jumbo v1, "SimulatedCommands"

    #@5f
    new-instance v2, Ljava/lang/StringBuilder;

    #@61
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@64
    const-string/jumbo v3, "[SimCmd] supplyIccPin2: failed! attempt="

    #@67
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6a
    move-result-object v2

    #@6b
    .line 228
    iget v3, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mPin2UnlockAttempts:I

    #@6d
    .line 227
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@70
    move-result-object v2

    #@71
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@74
    move-result-object v2

    #@75
    invoke-static {v1, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@78
    .line 229
    iget v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mPin2UnlockAttempts:I

    #@7a
    const/4 v2, 0x3

    #@7b
    if-lt v1, v2, :cond_3

    #@7d
    .line 230
    const-string/jumbo v1, "SimulatedCommands"

    #@80
    const-string/jumbo v2, "[SimCmd] supplyIccPin2: set state to REQUIRE_PUK2"

    #@83
    invoke-static {v1, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@86
    .line 231
    sget-object v1, Lcom/android/internal/telephony/test/SimulatedCommands$SimFdnState;->REQUIRE_PUK2:Lcom/android/internal/telephony/test/SimulatedCommands$SimFdnState;

    #@88
    iput-object v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mSimFdnEnabledState:Lcom/android/internal/telephony/test/SimulatedCommands$SimFdnState;

    #@8a
    .line 234
    :cond_3
    new-instance v0, Lcom/android/internal/telephony/CommandException;

    #@8c
    .line 235
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->PASSWORD_INCORRECT:Lcom/android/internal/telephony/CommandException$Error;

    #@8e
    .line 234
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    #@91
    .line 236
    .restart local v0    # "ex":Lcom/android/internal/telephony/CommandException;
    invoke-static {p2, v4, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    #@94
    .line 237
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    #@97
    .line 200
    .end local v0    # "ex":Lcom/android/internal/telephony/CommandException;
    :cond_4
    return-void
.end method

.method public supplyIccPin2ForApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "pin2"    # Ljava/lang/String;
    .param p2, "aid"    # Ljava/lang/String;
    .param p3, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1649
    invoke-direct {p0, p3}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    #@3
    .line 1648
    return-void
.end method

.method public supplyIccPinForApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "pin"    # Ljava/lang/String;
    .param p2, "aid"    # Ljava/lang/String;
    .param p3, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1639
    invoke-direct {p0, p3}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    #@3
    .line 1638
    return-void
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
    .line 158
    iget-object v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mSimLockedState:Lcom/android/internal/telephony/test/SimulatedCommands$SimLockState;

    #@3
    sget-object v2, Lcom/android/internal/telephony/test/SimulatedCommands$SimLockState;->REQUIRE_PUK:Lcom/android/internal/telephony/test/SimulatedCommands$SimLockState;

    #@5
    if-eq v1, v2, :cond_0

    #@7
    .line 159
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
    .line 160
    iget-object v3, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mSimLockedState:Lcom/android/internal/telephony/test/SimulatedCommands$SimLockState;

    #@18
    .line 159
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
    .line 161
    new-instance v0, Lcom/android/internal/telephony/CommandException;

    #@25
    .line 162
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->PASSWORD_INCORRECT:Lcom/android/internal/telephony/CommandException$Error;

    #@27
    .line 161
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    #@2a
    .line 163
    .local v0, "ex":Lcom/android/internal/telephony/CommandException;
    invoke-static {p3, v4, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    #@2d
    .line 164
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    #@30
    .line 165
    return-void

    #@31
    .line 168
    .end local v0    # "ex":Lcom/android/internal/telephony/CommandException;
    :cond_0
    if-eqz p1, :cond_2

    #@33
    const-string/jumbo v1, "12345678"

    #@36
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@39
    move-result v1

    #@3a
    if-eqz v1, :cond_2

    #@3c
    .line 169
    const-string/jumbo v1, "SimulatedCommands"

    #@3f
    const-string/jumbo v2, "[SimCmd] supplyIccPuk: success!"

    #@42
    invoke-static {v1, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@45
    .line 170
    sget-object v1, Lcom/android/internal/telephony/test/SimulatedCommands$SimLockState;->NONE:Lcom/android/internal/telephony/test/SimulatedCommands$SimLockState;

    #@47
    iput-object v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mSimLockedState:Lcom/android/internal/telephony/test/SimulatedCommands$SimLockState;

    #@49
    .line 171
    const/4 v1, 0x0

    #@4a
    iput v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mPukUnlockAttempts:I

    #@4c
    .line 172
    iget-object v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mIccStatusChangedRegistrants:Landroid/os/RegistrantList;

    #@4e
    invoke-virtual {v1}, Landroid/os/RegistrantList;->notifyRegistrants()V

    #@51
    .line 174
    if-eqz p3, :cond_1

    #@53
    .line 175
    invoke-static {p3, v4, v4}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    #@56
    .line 176
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    #@59
    .line 179
    :cond_1
    return-void

    #@5a
    .line 182
    :cond_2
    if-eqz p3, :cond_4

    #@5c
    .line 183
    iget v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mPukUnlockAttempts:I

    #@5e
    add-int/lit8 v1, v1, 0x1

    #@60
    iput v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mPukUnlockAttempts:I

    #@62
    .line 185
    const-string/jumbo v1, "SimulatedCommands"

    #@65
    new-instance v2, Ljava/lang/StringBuilder;

    #@67
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@6a
    const-string/jumbo v3, "[SimCmd] supplyIccPuk: failed! attempt="

    #@6d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@70
    move-result-object v2

    #@71
    .line 186
    iget v3, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mPukUnlockAttempts:I

    #@73
    .line 185
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@76
    move-result-object v2

    #@77
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7a
    move-result-object v2

    #@7b
    invoke-static {v1, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@7e
    .line 187
    iget v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mPukUnlockAttempts:I

    #@80
    const/16 v2, 0xa

    #@82
    if-lt v1, v2, :cond_3

    #@84
    .line 188
    const-string/jumbo v1, "SimulatedCommands"

    #@87
    const-string/jumbo v2, "[SimCmd] supplyIccPuk: set state to SIM_PERM_LOCKED"

    #@8a
    invoke-static {v1, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@8d
    .line 189
    sget-object v1, Lcom/android/internal/telephony/test/SimulatedCommands$SimLockState;->SIM_PERM_LOCKED:Lcom/android/internal/telephony/test/SimulatedCommands$SimLockState;

    #@8f
    iput-object v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mSimLockedState:Lcom/android/internal/telephony/test/SimulatedCommands$SimLockState;

    #@91
    .line 192
    :cond_3
    new-instance v0, Lcom/android/internal/telephony/CommandException;

    #@93
    .line 193
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->PASSWORD_INCORRECT:Lcom/android/internal/telephony/CommandException$Error;

    #@95
    .line 192
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    #@98
    .line 194
    .restart local v0    # "ex":Lcom/android/internal/telephony/CommandException;
    invoke-static {p3, v4, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    #@9b
    .line 195
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    #@9e
    .line 157
    .end local v0    # "ex":Lcom/android/internal/telephony/CommandException;
    :cond_4
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
    .line 243
    iget-object v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mSimFdnEnabledState:Lcom/android/internal/telephony/test/SimulatedCommands$SimFdnState;

    #@3
    sget-object v2, Lcom/android/internal/telephony/test/SimulatedCommands$SimFdnState;->REQUIRE_PUK2:Lcom/android/internal/telephony/test/SimulatedCommands$SimFdnState;

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
    const-string/jumbo v3, "[SimCmd] supplyIccPuk2: wrong state, state="

    #@12
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v2

    #@16
    .line 245
    iget-object v3, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mSimLockedState:Lcom/android/internal/telephony/test/SimulatedCommands$SimLockState;

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
    invoke-static {p3, v4, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    #@2d
    .line 249
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    #@30
    .line 250
    return-void

    #@31
    .line 253
    .end local v0    # "ex":Lcom/android/internal/telephony/CommandException;
    :cond_0
    if-eqz p1, :cond_2

    #@33
    const-string/jumbo v1, "87654321"

    #@36
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@39
    move-result v1

    #@3a
    if-eqz v1, :cond_2

    #@3c
    .line 254
    const-string/jumbo v1, "SimulatedCommands"

    #@3f
    const-string/jumbo v2, "[SimCmd] supplyIccPuk2: success!"

    #@42
    invoke-static {v1, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@45
    .line 255
    sget-object v1, Lcom/android/internal/telephony/test/SimulatedCommands$SimFdnState;->NONE:Lcom/android/internal/telephony/test/SimulatedCommands$SimFdnState;

    #@47
    iput-object v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mSimFdnEnabledState:Lcom/android/internal/telephony/test/SimulatedCommands$SimFdnState;

    #@49
    .line 256
    const/4 v1, 0x0

    #@4a
    iput v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mPuk2UnlockAttempts:I

    #@4c
    .line 258
    if-eqz p3, :cond_1

    #@4e
    .line 259
    invoke-static {p3, v4, v4}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    #@51
    .line 260
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    #@54
    .line 263
    :cond_1
    return-void

    #@55
    .line 266
    :cond_2
    if-eqz p3, :cond_4

    #@57
    .line 267
    iget v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mPuk2UnlockAttempts:I

    #@59
    add-int/lit8 v1, v1, 0x1

    #@5b
    iput v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mPuk2UnlockAttempts:I

    #@5d
    .line 269
    const-string/jumbo v1, "SimulatedCommands"

    #@60
    new-instance v2, Ljava/lang/StringBuilder;

    #@62
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@65
    const-string/jumbo v3, "[SimCmd] supplyIccPuk2: failed! attempt="

    #@68
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6b
    move-result-object v2

    #@6c
    .line 270
    iget v3, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mPuk2UnlockAttempts:I

    #@6e
    .line 269
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@71
    move-result-object v2

    #@72
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@75
    move-result-object v2

    #@76
    invoke-static {v1, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@79
    .line 271
    iget v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mPuk2UnlockAttempts:I

    #@7b
    const/16 v2, 0xa

    #@7d
    if-lt v1, v2, :cond_3

    #@7f
    .line 272
    const-string/jumbo v1, "SimulatedCommands"

    #@82
    const-string/jumbo v2, "[SimCmd] supplyIccPuk2: set state to SIM_PERM_LOCKED"

    #@85
    invoke-static {v1, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@88
    .line 273
    sget-object v1, Lcom/android/internal/telephony/test/SimulatedCommands$SimFdnState;->SIM_PERM_LOCKED:Lcom/android/internal/telephony/test/SimulatedCommands$SimFdnState;

    #@8a
    iput-object v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mSimFdnEnabledState:Lcom/android/internal/telephony/test/SimulatedCommands$SimFdnState;

    #@8c
    .line 276
    :cond_3
    new-instance v0, Lcom/android/internal/telephony/CommandException;

    #@8e
    .line 277
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->PASSWORD_INCORRECT:Lcom/android/internal/telephony/CommandException$Error;

    #@90
    .line 276
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    #@93
    .line 278
    .restart local v0    # "ex":Lcom/android/internal/telephony/CommandException;
    invoke-static {p3, v4, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    #@96
    .line 279
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    #@99
    .line 242
    .end local v0    # "ex":Lcom/android/internal/telephony/CommandException;
    :cond_4
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
    .line 1654
    invoke-direct {p0, p4}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    #@3
    .line 1653
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
    .line 1644
    invoke-direct {p0, p4}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    #@3
    .line 1643
    return-void
.end method

.method public supplyNetworkDepersonalization(Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "netpin"    # Ljava/lang/String;
    .param p2, "result"    # Landroid/os/Message;

    #@0
    .prologue
    .line 444
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    #@3
    .line 443
    return-void
.end method

.method public switchWaitingOrHoldingAndActive(Landroid/os/Message;)V
    .locals 4
    .param p1, "result"    # Landroid/os/Message;

    #@0
    .prologue
    .line 647
    iget-object v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->simulatedCallState:Lcom/android/internal/telephony/test/SimulatedGsmCallState;

    #@2
    const/16 v2, 0x32

    #@4
    const/4 v3, 0x0

    #@5
    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->onChld(CC)Z

    #@8
    move-result v0

    #@9
    .line 649
    .local v0, "success":Z
    if-nez v0, :cond_0

    #@b
    .line 650
    new-instance v1, Ljava/lang/RuntimeException;

    #@d
    const-string/jumbo v2, "Hangup Error"

    #@10
    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@13
    invoke-direct {p0, p1, v1}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultFail(Landroid/os/Message;Ljava/lang/Throwable;)V

    #@16
    .line 644
    :goto_0
    return-void

    #@17
    .line 652
    :cond_0
    const/4 v1, 0x0

    #@18
    invoke-direct {p0, p1, v1}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    #@1b
    goto :goto_0
.end method

.method public triggerHangupAll()V
    .locals 1

    #@0
    .prologue
    .line 1430
    iget-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->simulatedCallState:Lcom/android/internal/telephony/test/SimulatedGsmCallState;

    #@2
    invoke-virtual {v0}, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->triggerHangupAll()Z

    #@5
    .line 1431
    iget-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mCallStateRegistrants:Landroid/os/RegistrantList;

    #@7
    invoke-virtual {v0}, Landroid/os/RegistrantList;->notifyRegistrants()V

    #@a
    .line 1429
    return-void
.end method

.method public triggerHangupBackground()V
    .locals 1

    #@0
    .prologue
    .line 1403
    iget-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->simulatedCallState:Lcom/android/internal/telephony/test/SimulatedGsmCallState;

    #@2
    invoke-virtual {v0}, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->triggerHangupBackground()Z

    #@5
    .line 1404
    iget-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mCallStateRegistrants:Landroid/os/RegistrantList;

    #@7
    invoke-virtual {v0}, Landroid/os/RegistrantList;->notifyRegistrants()V

    #@a
    .line 1402
    return-void
.end method

.method public triggerHangupForeground()V
    .locals 1

    #@0
    .prologue
    .line 1395
    iget-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->simulatedCallState:Lcom/android/internal/telephony/test/SimulatedGsmCallState;

    #@2
    invoke-virtual {v0}, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->triggerHangupForeground()Z

    #@5
    .line 1396
    iget-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mCallStateRegistrants:Landroid/os/RegistrantList;

    #@7
    invoke-virtual {v0}, Landroid/os/RegistrantList;->notifyRegistrants()V

    #@a
    .line 1394
    return-void
.end method

.method public triggerIncomingSMS(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1436
    return-void
.end method

.method public triggerIncomingStkCcAlpha(Ljava/lang/String;)V
    .locals 1
    .param p1, "alphaString"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1275
    iget-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mCatCcAlphaRegistrant:Landroid/os/Registrant;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 1276
    iget-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mCatCcAlphaRegistrant:Landroid/os/Registrant;

    #@6
    invoke-virtual {v0, p1}, Landroid/os/Registrant;->notifyResult(Ljava/lang/Object;)V

    #@9
    .line 1274
    :cond_0
    return-void
.end method

.method public triggerIncomingUssd(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "statusCode"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1292
    iget-object v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mUSSDRegistrant:Landroid/os/Registrant;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 1293
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
    .line 1294
    .local v0, "result":[Ljava/lang/String;
    iget-object v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mUSSDRegistrant:Landroid/os/Registrant;

    #@f
    invoke-virtual {v1, v0}, Landroid/os/Registrant;->notifyResult(Ljava/lang/Object;)V

    #@12
    .line 1291
    .end local v0    # "result":[Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public triggerRing(Ljava/lang/String;)V
    .locals 1
    .param p1, "number"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1352
    iget-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->simulatedCallState:Lcom/android/internal/telephony/test/SimulatedGsmCallState;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->triggerRing(Ljava/lang/String;)Z

    #@5
    .line 1353
    iget-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mCallStateRegistrants:Landroid/os/RegistrantList;

    #@7
    invoke-virtual {v0}, Landroid/os/RegistrantList;->notifyRegistrants()V

    #@a
    .line 1351
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
    .line 1409
    new-instance v0, Lcom/android/internal/telephony/gsm/SuppServiceNotification;

    #@3
    invoke-direct {v0}, Lcom/android/internal/telephony/gsm/SuppServiceNotification;-><init>()V

    #@6
    .line 1410
    .local v0, "not":Lcom/android/internal/telephony/gsm/SuppServiceNotification;
    iput p1, v0, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->notificationType:I

    #@8
    .line 1411
    iput p2, v0, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->code:I

    #@a
    .line 1412
    iget-object v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mSsnRegistrant:Landroid/os/Registrant;

    #@c
    new-instance v2, Landroid/os/AsyncResult;

    #@e
    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    #@11
    invoke-virtual {v1, v2}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    #@14
    .line 1408
    return-void
.end method

.method public writeSmsToRuim(ILjava/lang/String;Landroid/os/Message;)V
    .locals 3
    .param p1, "status"    # I
    .param p2, "pdu"    # Ljava/lang/String;
    .param p3, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1030
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
    .line 1031
    invoke-direct {p0, p3}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    #@1d
    .line 1029
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
    .line 1024
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
    .line 1025
    invoke-direct {p0, p4}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    #@1d
    .line 1023
    return-void
.end method

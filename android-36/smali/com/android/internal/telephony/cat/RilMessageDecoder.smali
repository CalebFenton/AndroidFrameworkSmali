.class public Lcom/android/internal/telephony/cat/RilMessageDecoder;
.super Lcom/android/internal/telephony/StateMachine;
.source "RilMessageDecoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/cat/RilMessageDecoder$StateStart;,
        Lcom/android/internal/telephony/cat/RilMessageDecoder$StateCmdParamsReady;
    }
.end annotation


# static fields
.field private static greylist-max-r mInstance:[Lcom/android/internal/telephony/cat/RilMessageDecoder;

.field private static blacklist mSimCount:I


# instance fields
.field private blacklist mCaller:Landroid/os/Handler;

.field private greylist-max-r mCmdParamsFactory:Lcom/android/internal/telephony/cat/CommandParamsFactory;

.field private greylist-max-r mCurrentRilMessage:Lcom/android/internal/telephony/cat/RilMessage;

.field private final blacklist mLock:Ljava/lang/Object;

.field private blacklist mStateCmdParamsReady:Lcom/android/internal/telephony/cat/RilMessageDecoder$StateCmdParamsReady;

.field private greylist mStateStart:Lcom/android/internal/telephony/cat/RilMessageDecoder$StateStart;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmCurrentRilMessage(Lcom/android/internal/telephony/cat/RilMessageDecoder;)Lcom/android/internal/telephony/cat/RilMessage;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/cat/RilMessageDecoder;->mCurrentRilMessage:Lcom/android/internal/telephony/cat/RilMessage;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmStateCmdParamsReady(Lcom/android/internal/telephony/cat/RilMessageDecoder;)Lcom/android/internal/telephony/cat/RilMessageDecoder$StateCmdParamsReady;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/cat/RilMessageDecoder;->mStateCmdParamsReady:Lcom/android/internal/telephony/cat/RilMessageDecoder$StateCmdParamsReady;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmStateStart(Lcom/android/internal/telephony/cat/RilMessageDecoder;)Lcom/android/internal/telephony/cat/RilMessageDecoder$StateStart;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/cat/RilMessageDecoder;->mStateStart:Lcom/android/internal/telephony/cat/RilMessageDecoder$StateStart;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mdecodeMessageParams(Lcom/android/internal/telephony/cat/RilMessageDecoder;Lcom/android/internal/telephony/cat/RilMessage;)Z
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/RilMessageDecoder;->decodeMessageParams(Lcom/android/internal/telephony/cat/RilMessage;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$msendCmdForExecution(Lcom/android/internal/telephony/cat/RilMessageDecoder;Lcom/android/internal/telephony/cat/RilMessage;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/RilMessageDecoder;->sendCmdForExecution(Lcom/android/internal/telephony/cat/RilMessage;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 0

    .line 0
    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 3

    .line 143
    const-string v0, "RilMessageDecoder"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/StateMachine;-><init>(Ljava/lang/String;)V

    .line 44
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/cat/RilMessageDecoder;->mLock:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 46
    iput-object v0, p0, Lcom/android/internal/telephony/cat/RilMessageDecoder;->mCmdParamsFactory:Lcom/android/internal/telephony/cat/CommandParamsFactory;

    .line 49
    iput-object v0, p0, Lcom/android/internal/telephony/cat/RilMessageDecoder;->mCurrentRilMessage:Lcom/android/internal/telephony/cat/RilMessage;

    .line 51
    iput-object v0, p0, Lcom/android/internal/telephony/cat/RilMessageDecoder;->mCaller:Landroid/os/Handler;

    .line 58
    new-instance v1, Lcom/android/internal/telephony/cat/RilMessageDecoder$StateStart;

    invoke-direct {v1, p0, v0}, Lcom/android/internal/telephony/cat/RilMessageDecoder$StateStart;-><init>(Lcom/android/internal/telephony/cat/RilMessageDecoder;Lcom/android/internal/telephony/cat/RilMessageDecoder-IA;)V

    iput-object v1, p0, Lcom/android/internal/telephony/cat/RilMessageDecoder;->mStateStart:Lcom/android/internal/telephony/cat/RilMessageDecoder$StateStart;

    .line 60
    new-instance v1, Lcom/android/internal/telephony/cat/RilMessageDecoder$StateCmdParamsReady;

    invoke-direct {v1, p0, v0}, Lcom/android/internal/telephony/cat/RilMessageDecoder$StateCmdParamsReady;-><init>(Lcom/android/internal/telephony/cat/RilMessageDecoder;Lcom/android/internal/telephony/cat/RilMessageDecoder-IA;)V

    iput-object v1, p0, Lcom/android/internal/telephony/cat/RilMessageDecoder;->mStateCmdParamsReady:Lcom/android/internal/telephony/cat/RilMessageDecoder$StateCmdParamsReady;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Handler;Lcom/android/internal/telephony/uicc/IccFileHandler;Landroid/content/Context;)V
    .registers 7

    .line 130
    const-string v0, "RilMessageDecoder"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/StateMachine;-><init>(Ljava/lang/String;)V

    .line 44
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/cat/RilMessageDecoder;->mLock:Ljava/lang/Object;

    const/4 v1, 0x0

    .line 46
    iput-object v1, p0, Lcom/android/internal/telephony/cat/RilMessageDecoder;->mCmdParamsFactory:Lcom/android/internal/telephony/cat/CommandParamsFactory;

    .line 49
    iput-object v1, p0, Lcom/android/internal/telephony/cat/RilMessageDecoder;->mCurrentRilMessage:Lcom/android/internal/telephony/cat/RilMessage;

    .line 51
    iput-object v1, p0, Lcom/android/internal/telephony/cat/RilMessageDecoder;->mCaller:Landroid/os/Handler;

    .line 58
    new-instance v2, Lcom/android/internal/telephony/cat/RilMessageDecoder$StateStart;

    invoke-direct {v2, p0, v1}, Lcom/android/internal/telephony/cat/RilMessageDecoder$StateStart;-><init>(Lcom/android/internal/telephony/cat/RilMessageDecoder;Lcom/android/internal/telephony/cat/RilMessageDecoder-IA;)V

    iput-object v2, p0, Lcom/android/internal/telephony/cat/RilMessageDecoder;->mStateStart:Lcom/android/internal/telephony/cat/RilMessageDecoder$StateStart;

    .line 60
    new-instance v2, Lcom/android/internal/telephony/cat/RilMessageDecoder$StateCmdParamsReady;

    invoke-direct {v2, p0, v1}, Lcom/android/internal/telephony/cat/RilMessageDecoder$StateCmdParamsReady;-><init>(Lcom/android/internal/telephony/cat/RilMessageDecoder;Lcom/android/internal/telephony/cat/RilMessageDecoder-IA;)V

    iput-object v2, p0, Lcom/android/internal/telephony/cat/RilMessageDecoder;->mStateCmdParamsReady:Lcom/android/internal/telephony/cat/RilMessageDecoder$StateCmdParamsReady;

    .line 132
    iget-object v1, p0, Lcom/android/internal/telephony/cat/RilMessageDecoder;->mStateStart:Lcom/android/internal/telephony/cat/RilMessageDecoder$StateStart;

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/StateMachine;->addState(Lcom/android/internal/telephony/State;)V

    .line 133
    iget-object v1, p0, Lcom/android/internal/telephony/cat/RilMessageDecoder;->mStateCmdParamsReady:Lcom/android/internal/telephony/cat/RilMessageDecoder$StateCmdParamsReady;

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/StateMachine;->addState(Lcom/android/internal/telephony/State;)V

    .line 134
    iget-object v1, p0, Lcom/android/internal/telephony/cat/RilMessageDecoder;->mStateStart:Lcom/android/internal/telephony/cat/RilMessageDecoder$StateStart;

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/StateMachine;->setInitialState(Lcom/android/internal/telephony/State;)V

    .line 136
    monitor-enter v0

    .line 137
    :try_start_31
    iput-object p1, p0, Lcom/android/internal/telephony/cat/RilMessageDecoder;->mCaller:Landroid/os/Handler;

    .line 138
    invoke-static {p0, p2, p3}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->getInstance(Lcom/android/internal/telephony/cat/RilMessageDecoder;Lcom/android/internal/telephony/uicc/IccFileHandler;Landroid/content/Context;)Lcom/android/internal/telephony/cat/CommandParamsFactory;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/cat/RilMessageDecoder;->mCmdParamsFactory:Lcom/android/internal/telephony/cat/CommandParamsFactory;

    .line 139
    monitor-exit v0

    return-void

    :catchall_3b
    move-exception p0

    monitor-exit v0
    :try_end_3d
    .catchall {:try_start_31 .. :try_end_3d} :catchall_3b

    throw p0
.end method

.method private blacklist decodeMessageParams(Lcom/android/internal/telephony/cat/RilMessage;)Z
    .registers 6

    .line 181
    iput-object p1, p0, Lcom/android/internal/telephony/cat/RilMessageDecoder;->mCurrentRilMessage:Lcom/android/internal/telephony/cat/RilMessage;

    .line 182
    iget v0, p1, Lcom/android/internal/telephony/cat/RilMessage;->mId:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_5c

    const/4 v3, 0x2

    if-eq v0, v3, :cond_15

    const/4 v3, 0x3

    if-eq v0, v3, :cond_15

    const/4 v3, 0x4

    if-eq v0, v3, :cond_5c

    const/4 v3, 0x5

    if-eq v0, v3, :cond_15

    return v2

    .line 194
    :cond_15
    :try_start_15
    iget-object p1, p1, Lcom/android/internal/telephony/cat/RilMessage;->mData:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/android/internal/telephony/uicc/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object p1
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_1d} :catch_56

    .line 202
    iget-object v0, p0, Lcom/android/internal/telephony/cat/RilMessageDecoder;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 203
    :try_start_20
    iget-object v3, p0, Lcom/android/internal/telephony/cat/RilMessageDecoder;->mCmdParamsFactory:Lcom/android/internal/telephony/cat/CommandParamsFactory;
    :try_end_22
    .catchall {:try_start_20 .. :try_end_22} :catchall_2c

    if-eqz v3, :cond_50

    .line 206
    :try_start_24
    invoke-static {p1}, Lcom/android/internal/telephony/cat/BerTlv;->decode([B)Lcom/android/internal/telephony/cat/BerTlv;

    move-result-object p1

    invoke-virtual {v3, p1}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->make(Lcom/android/internal/telephony/cat/BerTlv;)V
    :try_end_2b
    .catch Lcom/android/internal/telephony/cat/ResultException; {:try_start_24 .. :try_end_2b} :catch_2e
    .catchall {:try_start_24 .. :try_end_2b} :catchall_2c

    goto :goto_51

    :catchall_2c
    move-exception p0

    goto :goto_54

    :catch_2e
    move-exception p1

    .line 210
    :try_start_2f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "decodeMessageParams: caught ResultException e="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 211
    iget-object v1, p0, Lcom/android/internal/telephony/cat/RilMessageDecoder;->mCurrentRilMessage:Lcom/android/internal/telephony/cat/RilMessage;

    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/ResultException;->result()Lcom/android/internal/telephony/cat/ResultCode;

    move-result-object p1

    iput-object p1, v1, Lcom/android/internal/telephony/cat/RilMessage;->mResCode:Lcom/android/internal/telephony/cat/ResultCode;

    .line 212
    iget-object p1, p0, Lcom/android/internal/telephony/cat/RilMessageDecoder;->mCurrentRilMessage:Lcom/android/internal/telephony/cat/RilMessage;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/RilMessageDecoder;->sendCmdForExecution(Lcom/android/internal/telephony/cat/RilMessage;)V

    :cond_50
    move v1, v2

    .line 216
    :goto_51
    monitor-exit v0

    move v2, v1

    goto :goto_5b

    :goto_54
    monitor-exit v0
    :try_end_55
    .catchall {:try_start_2f .. :try_end_55} :catchall_2c

    throw p0

    .line 197
    :catch_56
    const-string p1, "decodeMessageParams dropping zombie messages"

    invoke-static {p0, p1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_5b
    return v2

    .line 185
    :cond_5c
    sget-object v0, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    iput-object v0, p1, Lcom/android/internal/telephony/cat/RilMessage;->mResCode:Lcom/android/internal/telephony/cat/ResultCode;

    .line 186
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/RilMessageDecoder;->sendCmdForExecution(Lcom/android/internal/telephony/cat/RilMessage;)V

    return v2
.end method

.method public static declared-synchronized greylist-max-r getInstance(Landroid/os/Handler;Lcom/android/internal/telephony/uicc/IccFileHandler;Landroid/content/Context;I)Lcom/android/internal/telephony/cat/RilMessageDecoder;
    .registers 8

    const-class v0, Lcom/android/internal/telephony/cat/RilMessageDecoder;

    monitor-enter v0

    .line 72
    :try_start_3
    sget-object v1, Lcom/android/internal/telephony/cat/RilMessageDecoder;->mInstance:[Lcom/android/internal/telephony/cat/RilMessageDecoder;

    const/4 v2, 0x0

    if-nez v1, :cond_24

    .line 73
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSupportedModemCount()I

    move-result v1

    sput v1, Lcom/android/internal/telephony/cat/RilMessageDecoder;->mSimCount:I

    .line 74
    new-array v1, v1, [Lcom/android/internal/telephony/cat/RilMessageDecoder;

    sput-object v1, Lcom/android/internal/telephony/cat/RilMessageDecoder;->mInstance:[Lcom/android/internal/telephony/cat/RilMessageDecoder;

    const/4 v1, 0x0

    .line 75
    :goto_17
    sget v3, Lcom/android/internal/telephony/cat/RilMessageDecoder;->mSimCount:I

    if-ge v1, v3, :cond_24

    .line 76
    sget-object v3, Lcom/android/internal/telephony/cat/RilMessageDecoder;->mInstance:[Lcom/android/internal/telephony/cat/RilMessageDecoder;

    aput-object v2, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    :catchall_22
    move-exception p0

    goto :goto_56

    :cond_24
    const/4 v1, -0x1

    if-eq p3, v1, :cond_3e

    .line 80
    sget v1, Lcom/android/internal/telephony/cat/RilMessageDecoder;->mSimCount:I

    if-ge p3, v1, :cond_3e

    .line 81
    sget-object v1, Lcom/android/internal/telephony/cat/RilMessageDecoder;->mInstance:[Lcom/android/internal/telephony/cat/RilMessageDecoder;

    aget-object v2, v1, p3

    if-nez v2, :cond_38

    .line 82
    new-instance v2, Lcom/android/internal/telephony/cat/RilMessageDecoder;

    invoke-direct {v2, p0, p1, p2}, Lcom/android/internal/telephony/cat/RilMessageDecoder;-><init>(Landroid/os/Handler;Lcom/android/internal/telephony/uicc/IccFileHandler;Landroid/content/Context;)V

    aput-object v2, v1, p3

    .line 89
    :cond_38
    sget-object p0, Lcom/android/internal/telephony/cat/RilMessageDecoder;->mInstance:[Lcom/android/internal/telephony/cat/RilMessageDecoder;

    aget-object p0, p0, p3
    :try_end_3c
    .catchall {:try_start_3 .. :try_end_3c} :catchall_22

    monitor-exit v0

    return-object p0

    .line 85
    :cond_3e
    :try_start_3e
    const-string p0, "RilMessageDecoder"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "invaild slot id: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_54
    .catchall {:try_start_3e .. :try_end_54} :catchall_22

    .line 86
    monitor-exit v0

    return-object v2

    :goto_56
    :try_start_56
    monitor-exit v0
    :try_end_57
    .catchall {:try_start_56 .. :try_end_57} :catchall_22

    throw p0
.end method

.method private greylist-max-r sendCmdForExecution(Lcom/android/internal/telephony/cat/RilMessage;)V
    .registers 4

    .line 120
    iget-object v0, p0, Lcom/android/internal/telephony/cat/RilMessageDecoder;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 121
    :try_start_3
    iget-object p0, p0, Lcom/android/internal/telephony/cat/RilMessageDecoder;->mCaller:Landroid/os/Handler;

    if-eqz p0, :cond_18

    .line 122
    new-instance v1, Lcom/android/internal/telephony/cat/RilMessage;

    invoke-direct {v1, p1}, Lcom/android/internal/telephony/cat/RilMessage;-><init>(Lcom/android/internal/telephony/cat/RilMessage;)V

    const/16 p1, 0xa

    invoke-virtual {p0, p1, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 124
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_18

    :catchall_16
    move-exception p0

    goto :goto_1a

    .line 126
    :cond_18
    :goto_18
    monitor-exit v0

    return-void

    :goto_1a
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_16

    throw p0
.end method


# virtual methods
.method public blacklist dispose()V
    .registers 4

    .line 226
    invoke-virtual {p0}, Lcom/android/internal/telephony/StateMachine;->quitNow()V

    const/4 v0, 0x0

    .line 227
    iput-object v0, p0, Lcom/android/internal/telephony/cat/RilMessageDecoder;->mStateStart:Lcom/android/internal/telephony/cat/RilMessageDecoder$StateStart;

    .line 228
    iput-object v0, p0, Lcom/android/internal/telephony/cat/RilMessageDecoder;->mStateCmdParamsReady:Lcom/android/internal/telephony/cat/RilMessageDecoder$StateCmdParamsReady;

    .line 230
    iget-object v1, p0, Lcom/android/internal/telephony/cat/RilMessageDecoder;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 231
    :try_start_b
    iget-object v2, p0, Lcom/android/internal/telephony/cat/RilMessageDecoder;->mCmdParamsFactory:Lcom/android/internal/telephony/cat/CommandParamsFactory;

    if-eqz v2, :cond_17

    .line 232
    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->dispose()V

    .line 233
    iput-object v0, p0, Lcom/android/internal/telephony/cat/RilMessageDecoder;->mCmdParamsFactory:Lcom/android/internal/telephony/cat/CommandParamsFactory;

    goto :goto_17

    :catchall_15
    move-exception p0

    goto :goto_1f

    .line 235
    :cond_17
    :goto_17
    iput-object v0, p0, Lcom/android/internal/telephony/cat/RilMessageDecoder;->mCaller:Landroid/os/Handler;

    .line 236
    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_b .. :try_end_1a} :catchall_15

    .line 238
    iput-object v0, p0, Lcom/android/internal/telephony/cat/RilMessageDecoder;->mCurrentRilMessage:Lcom/android/internal/telephony/cat/RilMessage;

    .line 239
    sput-object v0, Lcom/android/internal/telephony/cat/RilMessageDecoder;->mInstance:[Lcom/android/internal/telephony/cat/RilMessageDecoder;

    return-void

    .line 236
    :goto_1f
    :try_start_1f
    monitor-exit v1
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_15

    throw p0
.end method

.method public blacklist sendMsgParamsDecoded(Lcom/android/internal/telephony/cat/ResultCode;Lcom/android/internal/telephony/cat/CommandParams;)V
    .registers 4

    const/4 v0, 0x2

    .line 112
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/StateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 113
    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/ResultCode;->value()I

    move-result p1

    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 114
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 115
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/StateMachine;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public greylist-max-r sendStartDecodingMessageParams(Lcom/android/internal/telephony/cat/RilMessage;)V
    .registers 3

    const/4 v0, 0x1

    .line 100
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/StateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 101
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 102
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/StateMachine;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

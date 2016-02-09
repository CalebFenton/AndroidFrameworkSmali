.class public Lcom/android/server/hdmi/TimerRecordingAction;
.super Lcom/android/server/hdmi/HdmiCecFeatureAction;
.source "TimerRecordingAction.java"


# static fields
.field private static final STATE_WAITING_FOR_TIMER_STATUS:I = 0x1

.field private static final TAG:Ljava/lang/String; = "TimerRecordingAction"

.field private static final TIMER_STATUS_TIMEOUT_MS:I = 0x1d4c0


# instance fields
.field private final mRecordSource:[B

.field private final mRecorderAddress:I

.field private final mSourceType:I


# direct methods
.method static synthetic -get0(Lcom/android/server/hdmi/TimerRecordingAction;)I
    .locals 1

    #@0
    iget v0, p0, Lcom/android/server/hdmi/TimerRecordingAction;->mRecorderAddress:I

    #@2
    return v0
.end method

.method constructor <init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;II[B)V
    .locals 0
    .param p1, "source"    # Lcom/android/server/hdmi/HdmiCecLocalDevice;
    .param p2, "recorderAddress"    # I
    .param p3, "sourceType"    # I
    .param p4, "recordSource"    # [B

    #@0
    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;)V

    #@3
    .line 50
    iput p2, p0, Lcom/android/server/hdmi/TimerRecordingAction;->mRecorderAddress:I

    #@5
    .line 51
    iput p3, p0, Lcom/android/server/hdmi/TimerRecordingAction;->mSourceType:I

    #@7
    .line 52
    iput-object p4, p0, Lcom/android/server/hdmi/TimerRecordingAction;->mRecordSource:[B

    #@9
    .line 48
    return-void
.end method

.method private static bytesToInt([B)I
    .locals 6
    .param p0, "data"    # [B

    #@0
    .prologue
    .line 149
    array-length v3, p0

    #@1
    const/4 v4, 0x4

    #@2
    if-le v3, v4, :cond_0

    #@4
    .line 150
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@6
    new-instance v4, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    const-string/jumbo v5, "Invalid data size:"

    #@e
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v4

    #@12
    invoke-static {p0}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    #@15
    move-result-object v5

    #@16
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v4

    #@1a
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d
    move-result-object v4

    #@1e
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@21
    throw v3

    #@22
    .line 152
    :cond_0
    const/4 v1, 0x0

    #@23
    .line 153
    .local v1, "result":I
    const/4 v0, 0x0

    #@24
    .local v0, "i":I
    :goto_0
    array-length v3, p0

    #@25
    if-ge v0, v3, :cond_1

    #@27
    .line 154
    rsub-int/lit8 v3, v0, 0x3

    #@29
    mul-int/lit8 v2, v3, 0x8

    #@2b
    .line 155
    .local v2, "shift":I
    aget-byte v3, p0, v0

    #@2d
    and-int/lit16 v3, v3, 0xff

    #@2f
    shl-int/2addr v3, v2

    #@30
    or-int/2addr v1, v3

    #@31
    .line 153
    add-int/lit8 v0, v0, 0x1

    #@33
    goto :goto_0

    #@34
    .line 157
    .end local v2    # "shift":I
    :cond_1
    return v1
.end method

.method private handleFeatureAbort(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .locals 7
    .param p1, "cmd"    # Lcom/android/server/hdmi/HdmiCecMessage;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    const/4 v6, 0x1

    #@2
    .line 129
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    #@5
    move-result-object v1

    #@6
    .line 130
    .local v1, "params":[B
    aget-byte v3, v1, v4

    #@8
    and-int/lit16 v0, v3, 0xff

    #@a
    .line 131
    .local v0, "messageType":I
    sparse-switch v0, :sswitch_data_0

    #@d
    .line 137
    return v4

    #@e
    .line 139
    :sswitch_0
    aget-byte v3, v1, v6

    #@10
    and-int/lit16 v2, v3, 0xff

    #@12
    .line 140
    .local v2, "reason":I
    const-string/jumbo v3, "TimerRecordingAction"

    #@15
    new-instance v4, Ljava/lang/StringBuilder;

    #@17
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@1a
    const-string/jumbo v5, "[Feature Abort] for "

    #@1d
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v4

    #@21
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@24
    move-result-object v4

    #@25
    const-string/jumbo v5, " reason:"

    #@28
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v4

    #@2c
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v4

    #@30
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@33
    move-result-object v4

    #@34
    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@37
    .line 141
    invoke-virtual {p0}, Lcom/android/server/hdmi/TimerRecordingAction;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    #@3a
    move-result-object v3

    #@3b
    iget v4, p0, Lcom/android/server/hdmi/TimerRecordingAction;->mRecorderAddress:I

    #@3d
    invoke-virtual {v3, v4, v6}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->announceTimerRecordingResult(II)V

    #@40
    .line 143
    invoke-virtual {p0}, Lcom/android/server/hdmi/TimerRecordingAction;->finish()V

    #@43
    .line 144
    return v6

    #@44
    .line 131
    :sswitch_data_0
    .sparse-switch
        0x34 -> :sswitch_0
        0x97 -> :sswitch_0
        0xa2 -> :sswitch_0
    .end sparse-switch
.end method

.method private handleTimerStatus(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .locals 5
    .param p1, "cmd"    # Lcom/android/server/hdmi/HdmiCecMessage;

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    .line 114
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    #@4
    move-result-object v0

    #@5
    .line 116
    .local v0, "timerStatusData":[B
    array-length v1, v0

    #@6
    if-eq v1, v4, :cond_0

    #@8
    array-length v1, v0

    #@9
    const/4 v2, 0x3

    #@a
    if-ne v1, v2, :cond_1

    #@c
    .line 117
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/hdmi/TimerRecordingAction;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    #@f
    move-result-object v1

    #@10
    iget v2, p0, Lcom/android/server/hdmi/TimerRecordingAction;->mRecorderAddress:I

    #@12
    invoke-static {v0}, Lcom/android/server/hdmi/TimerRecordingAction;->bytesToInt([B)I

    #@15
    move-result v3

    #@16
    invoke-virtual {v1, v2, v3}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->announceTimerRecordingResult(II)V

    #@19
    .line 118
    const-string/jumbo v1, "TimerRecordingAction"

    #@1c
    new-instance v2, Ljava/lang/StringBuilder;

    #@1e
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@21
    const-string/jumbo v3, "Received [Timer Status Data]:"

    #@24
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v2

    #@28
    invoke-static {v0}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    #@2b
    move-result-object v3

    #@2c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v2

    #@30
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@33
    move-result-object v2

    #@34
    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@37
    .line 124
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/hdmi/TimerRecordingAction;->finish()V

    #@3a
    .line 125
    return v4

    #@3b
    .line 120
    :cond_1
    const-string/jumbo v1, "TimerRecordingAction"

    #@3e
    new-instance v2, Ljava/lang/StringBuilder;

    #@40
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@43
    const-string/jumbo v3, "Invalid [Timer Status Data]:"

    #@46
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@49
    move-result-object v2

    #@4a
    invoke-static {v0}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    #@4d
    move-result-object v3

    #@4e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@51
    move-result-object v2

    #@52
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@55
    move-result-object v2

    #@56
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@59
    goto :goto_0
.end method

.method private sendTimerMessage()V
    .locals 4

    #@0
    .prologue
    .line 62
    const/4 v0, 0x0

    #@1
    .line 63
    .local v0, "message":Lcom/android/server/hdmi/HdmiCecMessage;
    iget v1, p0, Lcom/android/server/hdmi/TimerRecordingAction;->mSourceType:I

    #@3
    packed-switch v1, :pswitch_data_0

    #@6
    .line 77
    invoke-virtual {p0}, Lcom/android/server/hdmi/TimerRecordingAction;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    #@9
    move-result-object v1

    #@a
    iget v2, p0, Lcom/android/server/hdmi/TimerRecordingAction;->mRecorderAddress:I

    #@c
    .line 78
    const/4 v3, 0x2

    #@d
    .line 77
    invoke-virtual {v1, v2, v3}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->announceTimerRecordingResult(II)V

    #@10
    .line 79
    invoke-virtual {p0}, Lcom/android/server/hdmi/TimerRecordingAction;->finish()V

    #@13
    .line 80
    return-void

    #@14
    .line 65
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/server/hdmi/TimerRecordingAction;->getSourceAddress()I

    #@17
    move-result v1

    #@18
    .line 66
    iget v2, p0, Lcom/android/server/hdmi/TimerRecordingAction;->mRecorderAddress:I

    #@1a
    iget-object v3, p0, Lcom/android/server/hdmi/TimerRecordingAction;->mRecordSource:[B

    #@1c
    .line 65
    invoke-static {v1, v2, v3}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildSetDigitalTimer(II[B)Lcom/android/server/hdmi/HdmiCecMessage;

    #@1f
    move-result-object v0

    #@20
    .line 82
    .local v0, "message":Lcom/android/server/hdmi/HdmiCecMessage;
    :goto_0
    new-instance v1, Lcom/android/server/hdmi/TimerRecordingAction$1;

    #@22
    invoke-direct {v1, p0}, Lcom/android/server/hdmi/TimerRecordingAction$1;-><init>(Lcom/android/server/hdmi/TimerRecordingAction;)V

    #@25
    invoke-virtual {p0, v0, v1}, Lcom/android/server/hdmi/TimerRecordingAction;->sendCommand(Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V

    #@28
    .line 61
    return-void

    #@29
    .line 69
    .local v0, "message":Lcom/android/server/hdmi/HdmiCecMessage;
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/server/hdmi/TimerRecordingAction;->getSourceAddress()I

    #@2c
    move-result v1

    #@2d
    .line 70
    iget v2, p0, Lcom/android/server/hdmi/TimerRecordingAction;->mRecorderAddress:I

    #@2f
    iget-object v3, p0, Lcom/android/server/hdmi/TimerRecordingAction;->mRecordSource:[B

    #@31
    .line 69
    invoke-static {v1, v2, v3}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildSetAnalogueTimer(II[B)Lcom/android/server/hdmi/HdmiCecMessage;

    #@34
    move-result-object v0

    #@35
    .local v0, "message":Lcom/android/server/hdmi/HdmiCecMessage;
    goto :goto_0

    #@36
    .line 73
    .local v0, "message":Lcom/android/server/hdmi/HdmiCecMessage;
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/server/hdmi/TimerRecordingAction;->getSourceAddress()I

    #@39
    move-result v1

    #@3a
    .line 74
    iget v2, p0, Lcom/android/server/hdmi/TimerRecordingAction;->mRecorderAddress:I

    #@3c
    iget-object v3, p0, Lcom/android/server/hdmi/TimerRecordingAction;->mRecordSource:[B

    #@3e
    .line 73
    invoke-static {v1, v2, v3}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildSetExternalTimer(II[B)Lcom/android/server/hdmi/HdmiCecMessage;

    #@41
    move-result-object v0

    #@42
    .local v0, "message":Lcom/android/server/hdmi/HdmiCecMessage;
    goto :goto_0

    #@43
    .line 63
    nop

    #@44
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method handleTimerEvent(I)V
    .locals 3
    .param p1, "state"    # I

    #@0
    .prologue
    .line 162
    iget v0, p0, Lcom/android/server/hdmi/TimerRecordingAction;->mState:I

    #@2
    if-eq v0, p1, :cond_0

    #@4
    .line 163
    const-string/jumbo v0, "TimerRecordingAction"

    #@7
    new-instance v1, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    const-string/jumbo v2, "Timeout in invalid state:[Expected:"

    #@f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    iget v2, p0, Lcom/android/server/hdmi/TimerRecordingAction;->mState:I

    #@15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@18
    move-result-object v1

    #@19
    const-string/jumbo v2, ", Actual:"

    #@1c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v1

    #@20
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@23
    move-result-object v1

    #@24
    const-string/jumbo v2, "]"

    #@27
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v1

    #@2b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2e
    move-result-object v1

    #@2f
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@32
    .line 164
    return-void

    #@33
    .line 167
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/hdmi/TimerRecordingAction;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    #@36
    move-result-object v0

    #@37
    iget v1, p0, Lcom/android/server/hdmi/TimerRecordingAction;->mRecorderAddress:I

    #@39
    .line 168
    const/4 v2, 0x1

    #@3a
    .line 167
    invoke-virtual {v0, v1, v2}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->announceTimerRecordingResult(II)V

    #@3d
    .line 169
    invoke-virtual {p0}, Lcom/android/server/hdmi/TimerRecordingAction;->finish()V

    #@40
    .line 161
    return-void
.end method

.method processCommand(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .locals 3
    .param p1, "cmd"    # Lcom/android/server/hdmi/HdmiCecMessage;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 99
    iget v0, p0, Lcom/android/server/hdmi/TimerRecordingAction;->mState:I

    #@3
    const/4 v1, 0x1

    #@4
    if-ne v0, v1, :cond_0

    #@6
    .line 100
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    #@9
    move-result v0

    #@a
    iget v1, p0, Lcom/android/server/hdmi/TimerRecordingAction;->mRecorderAddress:I

    #@c
    if-eq v0, v1, :cond_1

    #@e
    .line 101
    :cond_0
    return v2

    #@f
    .line 104
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getOpcode()I

    #@12
    move-result v0

    #@13
    sparse-switch v0, :sswitch_data_0

    #@16
    .line 110
    return v2

    #@17
    .line 106
    :sswitch_0
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/TimerRecordingAction;->handleTimerStatus(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    #@1a
    move-result v0

    #@1b
    return v0

    #@1c
    .line 108
    :sswitch_1
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/TimerRecordingAction;->handleFeatureAbort(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    #@1f
    move-result v0

    #@20
    return v0

    #@21
    .line 104
    nop

    #@22
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x35 -> :sswitch_0
    .end sparse-switch
.end method

.method start()Z
    .locals 1

    #@0
    .prologue
    .line 57
    invoke-direct {p0}, Lcom/android/server/hdmi/TimerRecordingAction;->sendTimerMessage()V

    #@3
    .line 58
    const/4 v0, 0x1

    #@4
    return v0
.end method

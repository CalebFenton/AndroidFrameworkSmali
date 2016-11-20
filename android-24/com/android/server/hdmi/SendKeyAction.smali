.class final Lcom/android/server/hdmi/SendKeyAction;
.super Lcom/android/server/hdmi/HdmiCecFeatureAction;
.source "SendKeyAction.java"


# static fields
.field private static final AWAIT_LONGPRESS_MS:I = 0x190

.field private static final AWAIT_RELEASE_KEY_MS:I = 0x3e8

.field private static final STATE_CHECKING_LONGPRESS:I = 0x1

.field private static final STATE_PROCESSING_KEYCODE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "SendKeyAction"


# instance fields
.field private mLastKeycode:I

.field private mLastSendKeyTime:J

.field private final mTargetAddress:I


# direct methods
.method constructor <init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;II)V
    .locals 0
    .param p1, "source"    # Lcom/android/server/hdmi/HdmiCecLocalDevice;
    .param p2, "targetAddress"    # I
    .param p3, "keycode"    # I

    #@0
    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;)V

    #@3
    .line 77
    iput p2, p0, Lcom/android/server/hdmi/SendKeyAction;->mTargetAddress:I

    #@5
    .line 78
    iput p3, p0, Lcom/android/server/hdmi/SendKeyAction;->mLastKeycode:I

    #@7
    .line 75
    return-void
.end method

.method private getCurrentTime()J
    .locals 2

    #@0
    .prologue
    .line 97
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@3
    move-result-wide v0

    #@4
    return-wide v0
.end method

.method private sendKeyDown(I)V
    .locals 3
    .param p1, "keycode"    # I

    #@0
    .prologue
    .line 145
    invoke-static {p1}, Lcom/android/server/hdmi/HdmiCecKeycode;->androidKeyToCecKey(I)[B

    #@3
    move-result-object v0

    #@4
    .line 146
    .local v0, "cecKeycodeAndParams":[B
    if-nez v0, :cond_0

    #@6
    .line 147
    return-void

    #@7
    .line 149
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/hdmi/SendKeyAction;->getSourceAddress()I

    #@a
    move-result v1

    #@b
    .line 150
    iget v2, p0, Lcom/android/server/hdmi/SendKeyAction;->mTargetAddress:I

    #@d
    .line 149
    invoke-static {v1, v2, v0}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildUserControlPressed(II[B)Lcom/android/server/hdmi/HdmiCecMessage;

    #@10
    move-result-object v1

    #@11
    invoke-virtual {p0, v1}, Lcom/android/server/hdmi/SendKeyAction;->sendCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    #@14
    .line 144
    return-void
.end method

.method private sendKeyUp()V
    .locals 2

    #@0
    .prologue
    .line 154
    invoke-virtual {p0}, Lcom/android/server/hdmi/SendKeyAction;->getSourceAddress()I

    #@3
    move-result v0

    #@4
    .line 155
    iget v1, p0, Lcom/android/server/hdmi/SendKeyAction;->mTargetAddress:I

    #@6
    .line 154
    invoke-static {v0, v1}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildUserControlReleased(II)Lcom/android/server/hdmi/HdmiCecMessage;

    #@9
    move-result-object v0

    #@a
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/SendKeyAction;->sendCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    #@d
    .line 153
    return-void
.end method


# virtual methods
.method public handleTimerEvent(I)V
    .locals 2
    .param p1, "state"    # I

    #@0
    .prologue
    .line 166
    iget v0, p0, Lcom/android/server/hdmi/SendKeyAction;->mState:I

    #@2
    packed-switch v0, :pswitch_data_0

    #@5
    .line 181
    const-string/jumbo v0, "SendKeyAction"

    #@8
    const-string/jumbo v1, "Not in a valid state"

    #@b
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@e
    .line 165
    :goto_0
    return-void

    #@f
    .line 169
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/hdmi/SendKeyAction;->mActionTimer:Lcom/android/server/hdmi/HdmiCecFeatureAction$ActionTimer;

    #@11
    invoke-interface {v0}, Lcom/android/server/hdmi/HdmiCecFeatureAction$ActionTimer;->clearTimerMessage()V

    #@14
    .line 170
    const/4 v0, 0x2

    #@15
    iput v0, p0, Lcom/android/server/hdmi/SendKeyAction;->mState:I

    #@17
    .line 171
    iget v0, p0, Lcom/android/server/hdmi/SendKeyAction;->mLastKeycode:I

    #@19
    invoke-direct {p0, v0}, Lcom/android/server/hdmi/SendKeyAction;->sendKeyDown(I)V

    #@1c
    .line 172
    invoke-direct {p0}, Lcom/android/server/hdmi/SendKeyAction;->getCurrentTime()J

    #@1f
    move-result-wide v0

    #@20
    iput-wide v0, p0, Lcom/android/server/hdmi/SendKeyAction;->mLastSendKeyTime:J

    #@22
    .line 173
    iget v0, p0, Lcom/android/server/hdmi/SendKeyAction;->mState:I

    #@24
    const/16 v1, 0x3e8

    #@26
    invoke-virtual {p0, v0, v1}, Lcom/android/server/hdmi/SendKeyAction;->addTimer(II)V

    #@29
    goto :goto_0

    #@2a
    .line 177
    :pswitch_1
    invoke-direct {p0}, Lcom/android/server/hdmi/SendKeyAction;->sendKeyUp()V

    #@2d
    .line 178
    invoke-virtual {p0}, Lcom/android/server/hdmi/SendKeyAction;->finish()V

    #@30
    goto :goto_0

    #@31
    .line 166
    nop

    #@32
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public processCommand(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .locals 1
    .param p1, "cmd"    # Lcom/android/server/hdmi/HdmiCecMessage;

    #@0
    .prologue
    .line 161
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method processKeyEvent(IZ)V
    .locals 4
    .param p1, "keycode"    # I
    .param p2, "isPressed"    # Z

    #@0
    .prologue
    .line 107
    iget v0, p0, Lcom/android/server/hdmi/SendKeyAction;->mState:I

    #@2
    const/4 v1, 0x1

    #@3
    if-eq v0, v1, :cond_0

    #@5
    iget v0, p0, Lcom/android/server/hdmi/SendKeyAction;->mState:I

    #@7
    const/4 v1, 0x2

    #@8
    if-eq v0, v1, :cond_0

    #@a
    .line 108
    const-string/jumbo v0, "SendKeyAction"

    #@d
    const-string/jumbo v1, "Not in a valid state"

    #@10
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@13
    .line 109
    return-void

    #@14
    .line 111
    :cond_0
    if-eqz p2, :cond_4

    #@16
    .line 114
    iget v0, p0, Lcom/android/server/hdmi/SendKeyAction;->mLastKeycode:I

    #@18
    if-eq p1, v0, :cond_1

    #@1a
    .line 115
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/SendKeyAction;->sendKeyDown(I)V

    #@1d
    .line 116
    invoke-direct {p0}, Lcom/android/server/hdmi/SendKeyAction;->getCurrentTime()J

    #@20
    move-result-wide v0

    #@21
    iput-wide v0, p0, Lcom/android/server/hdmi/SendKeyAction;->mLastSendKeyTime:J

    #@23
    .line 117
    invoke-static {p1}, Lcom/android/server/hdmi/HdmiCecKeycode;->isRepeatableKey(I)Z

    #@26
    move-result v0

    #@27
    if-nez v0, :cond_2

    #@29
    .line 118
    invoke-direct {p0}, Lcom/android/server/hdmi/SendKeyAction;->sendKeyUp()V

    #@2c
    .line 119
    invoke-virtual {p0}, Lcom/android/server/hdmi/SendKeyAction;->finish()V

    #@2f
    .line 120
    return-void

    #@30
    .line 126
    :cond_1
    invoke-direct {p0}, Lcom/android/server/hdmi/SendKeyAction;->getCurrentTime()J

    #@33
    move-result-wide v0

    #@34
    iget-wide v2, p0, Lcom/android/server/hdmi/SendKeyAction;->mLastSendKeyTime:J

    #@36
    sub-long/2addr v0, v2

    #@37
    const-wide/16 v2, 0x12c

    #@39
    cmp-long v0, v0, v2

    #@3b
    if-ltz v0, :cond_2

    #@3d
    .line 127
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/SendKeyAction;->sendKeyDown(I)V

    #@40
    .line 128
    invoke-direct {p0}, Lcom/android/server/hdmi/SendKeyAction;->getCurrentTime()J

    #@43
    move-result-wide v0

    #@44
    iput-wide v0, p0, Lcom/android/server/hdmi/SendKeyAction;->mLastSendKeyTime:J

    #@46
    .line 131
    :cond_2
    iget-object v0, p0, Lcom/android/server/hdmi/SendKeyAction;->mActionTimer:Lcom/android/server/hdmi/HdmiCecFeatureAction$ActionTimer;

    #@48
    invoke-interface {v0}, Lcom/android/server/hdmi/HdmiCecFeatureAction$ActionTimer;->clearTimerMessage()V

    #@4b
    .line 132
    iget v0, p0, Lcom/android/server/hdmi/SendKeyAction;->mState:I

    #@4d
    const/16 v1, 0x3e8

    #@4f
    invoke-virtual {p0, v0, v1}, Lcom/android/server/hdmi/SendKeyAction;->addTimer(II)V

    #@52
    .line 133
    iput p1, p0, Lcom/android/server/hdmi/SendKeyAction;->mLastKeycode:I

    #@54
    .line 106
    :cond_3
    :goto_0
    return-void

    #@55
    .line 137
    :cond_4
    iget v0, p0, Lcom/android/server/hdmi/SendKeyAction;->mLastKeycode:I

    #@57
    if-ne p1, v0, :cond_3

    #@59
    .line 138
    invoke-direct {p0}, Lcom/android/server/hdmi/SendKeyAction;->sendKeyUp()V

    #@5c
    .line 139
    invoke-virtual {p0}, Lcom/android/server/hdmi/SendKeyAction;->finish()V

    #@5f
    goto :goto_0
.end method

.method public start()Z
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 83
    iget v0, p0, Lcom/android/server/hdmi/SendKeyAction;->mLastKeycode:I

    #@3
    invoke-direct {p0, v0}, Lcom/android/server/hdmi/SendKeyAction;->sendKeyDown(I)V

    #@6
    .line 84
    invoke-direct {p0}, Lcom/android/server/hdmi/SendKeyAction;->getCurrentTime()J

    #@9
    move-result-wide v0

    #@a
    iput-wide v0, p0, Lcom/android/server/hdmi/SendKeyAction;->mLastSendKeyTime:J

    #@c
    .line 86
    iget v0, p0, Lcom/android/server/hdmi/SendKeyAction;->mLastKeycode:I

    #@e
    invoke-static {v0}, Lcom/android/server/hdmi/HdmiCecKeycode;->isRepeatableKey(I)Z

    #@11
    move-result v0

    #@12
    if-nez v0, :cond_0

    #@14
    .line 87
    invoke-direct {p0}, Lcom/android/server/hdmi/SendKeyAction;->sendKeyUp()V

    #@17
    .line 88
    invoke-virtual {p0}, Lcom/android/server/hdmi/SendKeyAction;->finish()V

    #@1a
    .line 89
    return v2

    #@1b
    .line 91
    :cond_0
    iput v2, p0, Lcom/android/server/hdmi/SendKeyAction;->mState:I

    #@1d
    .line 92
    iget v0, p0, Lcom/android/server/hdmi/SendKeyAction;->mState:I

    #@1f
    const/16 v1, 0x190

    #@21
    invoke-virtual {p0, v0, v1}, Lcom/android/server/hdmi/SendKeyAction;->addTimer(II)V

    #@24
    .line 93
    return v2
.end method

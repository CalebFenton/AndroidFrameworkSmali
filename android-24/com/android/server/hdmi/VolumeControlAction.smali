.class final Lcom/android/server/hdmi/VolumeControlAction;
.super Lcom/android/server/hdmi/HdmiCecFeatureAction;
.source "VolumeControlAction.java"


# static fields
.field private static final MAX_VOLUME:I = 0x64

.field private static final STATE_WAIT_FOR_NEXT_VOLUME_PRESS:I = 0x1

.field private static final TAG:Ljava/lang/String; = "VolumeControlAction"

.field private static final UNKNOWN_AVR_VOLUME:I = -0x1


# instance fields
.field private final mAvrAddress:I

.field private mIsVolumeUp:Z

.field private mLastAvrMute:Z

.field private mLastAvrVolume:I

.field private mLastKeyUpdateTime:J

.field private mSentKeyPressed:Z


# direct methods
.method constructor <init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;IZ)V
    .locals 2
    .param p1, "source"    # Lcom/android/server/hdmi/HdmiCecLocalDevice;
    .param p2, "avrAddress"    # I
    .param p3, "isVolumeUp"    # Z

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 74
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;)V

    #@4
    .line 75
    iput p2, p0, Lcom/android/server/hdmi/VolumeControlAction;->mAvrAddress:I

    #@6
    .line 76
    iput-boolean p3, p0, Lcom/android/server/hdmi/VolumeControlAction;->mIsVolumeUp:Z

    #@8
    .line 77
    const/4 v0, -0x1

    #@9
    iput v0, p0, Lcom/android/server/hdmi/VolumeControlAction;->mLastAvrVolume:I

    #@b
    .line 78
    iput-boolean v1, p0, Lcom/android/server/hdmi/VolumeControlAction;->mLastAvrMute:Z

    #@d
    .line 79
    iput-boolean v1, p0, Lcom/android/server/hdmi/VolumeControlAction;->mSentKeyPressed:Z

    #@f
    .line 81
    invoke-direct {p0}, Lcom/android/server/hdmi/VolumeControlAction;->updateLastKeyUpdateTime()V

    #@12
    .line 73
    return-void
.end method

.method private handleFeatureAbort(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .locals 3
    .param p1, "cmd"    # Lcom/android/server/hdmi/HdmiCecMessage;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 174
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    #@4
    move-result-object v1

    #@5
    aget-byte v1, v1, v2

    #@7
    and-int/lit16 v0, v1, 0xff

    #@9
    .line 177
    .local v0, "originalOpcode":I
    const/16 v1, 0x44

    #@b
    if-ne v0, v1, :cond_0

    #@d
    .line 178
    invoke-virtual {p0}, Lcom/android/server/hdmi/VolumeControlAction;->finish()V

    #@10
    .line 179
    const/4 v1, 0x1

    #@11
    return v1

    #@12
    .line 181
    :cond_0
    return v2
.end method

.method private handleReportAudioStatus(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .locals 8
    .param p1, "cmd"    # Lcom/android/server/hdmi/HdmiCecMessage;

    #@0
    .prologue
    const/4 v7, 0x1

    #@1
    const/4 v6, 0x0

    #@2
    .line 141
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    #@5
    move-result-object v1

    #@6
    .line 142
    .local v1, "params":[B
    aget-byte v3, v1, v6

    #@8
    and-int/lit16 v3, v3, 0x80

    #@a
    const/16 v4, 0x80

    #@c
    if-ne v3, v4, :cond_1

    #@e
    const/4 v0, 0x1

    #@f
    .line 143
    .local v0, "mute":Z
    :goto_0
    aget-byte v3, v1, v6

    #@11
    and-int/lit8 v2, v3, 0x7f

    #@13
    .line 144
    .local v2, "volume":I
    iput v2, p0, Lcom/android/server/hdmi/VolumeControlAction;->mLastAvrVolume:I

    #@15
    .line 145
    iput-boolean v0, p0, Lcom/android/server/hdmi/VolumeControlAction;->mLastAvrMute:Z

    #@17
    .line 146
    invoke-direct {p0, v0}, Lcom/android/server/hdmi/VolumeControlAction;->shouldUpdateAudioVolume(Z)Z

    #@1a
    move-result v3

    #@1b
    if-eqz v3, :cond_0

    #@1d
    .line 147
    const-string/jumbo v3, "Force volume change[mute:%b, volume=%d]"

    #@20
    const/4 v4, 0x2

    #@21
    new-array v4, v4, [Ljava/lang/Object;

    #@23
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@26
    move-result-object v5

    #@27
    aput-object v5, v4, v6

    #@29
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@2c
    move-result-object v5

    #@2d
    aput-object v5, v4, v7

    #@2f
    invoke-static {v3, v4}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    #@32
    .line 148
    invoke-virtual {p0}, Lcom/android/server/hdmi/VolumeControlAction;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    #@35
    move-result-object v3

    #@36
    invoke-virtual {v3, v0, v2}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->setAudioStatus(ZI)V

    #@39
    .line 149
    const/4 v3, -0x1

    #@3a
    iput v3, p0, Lcom/android/server/hdmi/VolumeControlAction;->mLastAvrVolume:I

    #@3c
    .line 150
    iput-boolean v6, p0, Lcom/android/server/hdmi/VolumeControlAction;->mLastAvrMute:Z

    #@3e
    .line 152
    :cond_0
    return v7

    #@3f
    .line 142
    .end local v0    # "mute":Z
    .end local v2    # "volume":I
    :cond_1
    const/4 v0, 0x0

    #@40
    .restart local v0    # "mute":Z
    goto :goto_0
.end method

.method private resetTimer()V
    .locals 2

    #@0
    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/server/hdmi/VolumeControlAction;->mActionTimer:Lcom/android/server/hdmi/HdmiCecFeatureAction$ActionTimer;

    #@2
    invoke-interface {v0}, Lcom/android/server/hdmi/HdmiCecFeatureAction$ActionTimer;->clearTimerMessage()V

    #@5
    .line 105
    const/4 v0, 0x1

    #@6
    const/16 v1, 0x12c

    #@8
    invoke-virtual {p0, v0, v1}, Lcom/android/server/hdmi/VolumeControlAction;->addTimer(II)V

    #@b
    .line 103
    return-void
.end method

.method public static scaleToCecVolume(II)I
    .locals 1
    .param p0, "volume"    # I
    .param p1, "scale"    # I

    #@0
    .prologue
    .line 59
    mul-int/lit8 v0, p0, 0x64

    #@2
    div-int/2addr v0, p1

    #@3
    return v0
.end method

.method public static scaleToCustomVolume(II)I
    .locals 1
    .param p0, "cecVolume"    # I
    .param p1, "scale"    # I

    #@0
    .prologue
    .line 70
    mul-int v0, p0, p1

    #@2
    div-int/lit8 v0, v0, 0x64

    #@4
    return v0
.end method

.method private sendVolumeKeyPressed()V
    .locals 3

    #@0
    .prologue
    .line 97
    invoke-virtual {p0}, Lcom/android/server/hdmi/VolumeControlAction;->getSourceAddress()I

    #@3
    move-result v1

    #@4
    iget v2, p0, Lcom/android/server/hdmi/VolumeControlAction;->mAvrAddress:I

    #@6
    .line 98
    iget-boolean v0, p0, Lcom/android/server/hdmi/VolumeControlAction;->mIsVolumeUp:Z

    #@8
    if-eqz v0, :cond_0

    #@a
    const/16 v0, 0x41

    #@c
    .line 97
    :goto_0
    invoke-static {v1, v2, v0}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildUserControlPressed(III)Lcom/android/server/hdmi/HdmiCecMessage;

    #@f
    move-result-object v0

    #@10
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/VolumeControlAction;->sendCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    #@13
    .line 100
    const/4 v0, 0x1

    #@14
    iput-boolean v0, p0, Lcom/android/server/hdmi/VolumeControlAction;->mSentKeyPressed:Z

    #@16
    .line 96
    return-void

    #@17
    .line 99
    :cond_0
    const/16 v0, 0x42

    #@19
    goto :goto_0
.end method

.method private sendVolumeKeyReleased()V
    .locals 2

    #@0
    .prologue
    .line 121
    invoke-virtual {p0}, Lcom/android/server/hdmi/VolumeControlAction;->getSourceAddress()I

    #@3
    move-result v0

    #@4
    iget v1, p0, Lcom/android/server/hdmi/VolumeControlAction;->mAvrAddress:I

    #@6
    .line 120
    invoke-static {v0, v1}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildUserControlReleased(II)Lcom/android/server/hdmi/HdmiCecMessage;

    #@9
    move-result-object v0

    #@a
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/VolumeControlAction;->sendCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    #@d
    .line 122
    const/4 v0, 0x0

    #@e
    iput-boolean v0, p0, Lcom/android/server/hdmi/VolumeControlAction;->mSentKeyPressed:Z

    #@10
    .line 119
    return-void
.end method

.method private shouldUpdateAudioVolume(Z)Z
    .locals 7
    .param p1, "mute"    # Z

    #@0
    .prologue
    const/4 v6, 0x3

    #@1
    const/4 v3, 0x1

    #@2
    const/4 v4, 0x0

    #@3
    .line 157
    if-eqz p1, :cond_0

    #@5
    .line 158
    return v3

    #@6
    .line 163
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/hdmi/VolumeControlAction;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    #@9
    move-result-object v5

    #@a
    invoke-virtual {v5}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getService()Lcom/android/server/hdmi/HdmiControlService;

    #@d
    move-result-object v5

    #@e
    invoke-virtual {v5}, Lcom/android/server/hdmi/HdmiControlService;->getAudioManager()Landroid/media/AudioManager;

    #@11
    move-result-object v0

    #@12
    .line 164
    .local v0, "audioManager":Landroid/media/AudioManager;
    invoke-virtual {v0, v6}, Landroid/media/AudioManager;->getStreamVolume(I)I

    #@15
    move-result v1

    #@16
    .line 165
    .local v1, "currentVolume":I
    iget-boolean v5, p0, Lcom/android/server/hdmi/VolumeControlAction;->mIsVolumeUp:Z

    #@18
    if-eqz v5, :cond_2

    #@1a
    .line 166
    invoke-virtual {v0, v6}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    #@1d
    move-result v2

    #@1e
    .line 167
    .local v2, "maxVolume":I
    if-ne v1, v2, :cond_1

    #@20
    :goto_0
    return v3

    #@21
    :cond_1
    move v3, v4

    #@22
    goto :goto_0

    #@23
    .line 169
    .end local v2    # "maxVolume":I
    :cond_2
    if-nez v1, :cond_3

    #@25
    :goto_1
    return v3

    #@26
    :cond_3
    move v3, v4

    #@27
    goto :goto_1
.end method

.method private updateLastKeyUpdateTime()V
    .locals 2

    #@0
    .prologue
    .line 85
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@3
    move-result-wide v0

    #@4
    iput-wide v0, p0, Lcom/android/server/hdmi/VolumeControlAction;->mLastKeyUpdateTime:J

    #@6
    .line 84
    return-void
.end method


# virtual methods
.method protected clear()V
    .locals 4

    #@0
    .prologue
    const/4 v3, -0x1

    #@1
    .line 186
    invoke-super {p0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->clear()V

    #@4
    .line 187
    iget-boolean v0, p0, Lcom/android/server/hdmi/VolumeControlAction;->mSentKeyPressed:Z

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 188
    invoke-direct {p0}, Lcom/android/server/hdmi/VolumeControlAction;->sendVolumeKeyReleased()V

    #@b
    .line 190
    :cond_0
    iget v0, p0, Lcom/android/server/hdmi/VolumeControlAction;->mLastAvrVolume:I

    #@d
    if-eq v0, v3, :cond_1

    #@f
    .line 191
    invoke-virtual {p0}, Lcom/android/server/hdmi/VolumeControlAction;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    #@12
    move-result-object v0

    #@13
    iget-boolean v1, p0, Lcom/android/server/hdmi/VolumeControlAction;->mLastAvrMute:Z

    #@15
    iget v2, p0, Lcom/android/server/hdmi/VolumeControlAction;->mLastAvrVolume:I

    #@17
    invoke-virtual {v0, v1, v2}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->setAudioStatus(ZI)V

    #@1a
    .line 192
    iput v3, p0, Lcom/android/server/hdmi/VolumeControlAction;->mLastAvrVolume:I

    #@1c
    .line 193
    const/4 v0, 0x0

    #@1d
    iput-boolean v0, p0, Lcom/android/server/hdmi/VolumeControlAction;->mLastAvrMute:Z

    #@1f
    .line 185
    :cond_1
    return-void
.end method

.method handleTimerEvent(I)V
    .locals 4
    .param p1, "state"    # I

    #@0
    .prologue
    .line 199
    const/4 v0, 0x1

    #@1
    if-eq p1, v0, :cond_0

    #@3
    .line 200
    return-void

    #@4
    .line 203
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@7
    move-result-wide v0

    #@8
    iget-wide v2, p0, Lcom/android/server/hdmi/VolumeControlAction;->mLastKeyUpdateTime:J

    #@a
    sub-long/2addr v0, v2

    #@b
    const-wide/16 v2, 0x12c

    #@d
    cmp-long v0, v0, v2

    #@f
    if-ltz v0, :cond_1

    #@11
    .line 204
    invoke-virtual {p0}, Lcom/android/server/hdmi/VolumeControlAction;->finish()V

    #@14
    .line 198
    :goto_0
    return-void

    #@15
    .line 206
    :cond_1
    invoke-direct {p0}, Lcom/android/server/hdmi/VolumeControlAction;->sendVolumeKeyPressed()V

    #@18
    .line 207
    invoke-direct {p0}, Lcom/android/server/hdmi/VolumeControlAction;->resetTimer()V

    #@1b
    goto :goto_0
.end method

.method handleVolumeChange(Z)V
    .locals 4
    .param p1, "isVolumeUp"    # Z

    #@0
    .prologue
    .line 109
    iget-boolean v0, p0, Lcom/android/server/hdmi/VolumeControlAction;->mIsVolumeUp:Z

    #@2
    if-eq v0, p1, :cond_0

    #@4
    .line 110
    const-string/jumbo v0, "Volume Key Status Changed[old:%b new:%b]"

    #@7
    const/4 v1, 0x2

    #@8
    new-array v1, v1, [Ljava/lang/Object;

    #@a
    iget-boolean v2, p0, Lcom/android/server/hdmi/VolumeControlAction;->mIsVolumeUp:Z

    #@c
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@f
    move-result-object v2

    #@10
    const/4 v3, 0x0

    #@11
    aput-object v2, v1, v3

    #@13
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@16
    move-result-object v2

    #@17
    const/4 v3, 0x1

    #@18
    aput-object v2, v1, v3

    #@1a
    invoke-static {v0, v1}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    #@1d
    .line 111
    invoke-direct {p0}, Lcom/android/server/hdmi/VolumeControlAction;->sendVolumeKeyReleased()V

    #@20
    .line 112
    iput-boolean p1, p0, Lcom/android/server/hdmi/VolumeControlAction;->mIsVolumeUp:Z

    #@22
    .line 113
    invoke-direct {p0}, Lcom/android/server/hdmi/VolumeControlAction;->sendVolumeKeyPressed()V

    #@25
    .line 114
    invoke-direct {p0}, Lcom/android/server/hdmi/VolumeControlAction;->resetTimer()V

    #@28
    .line 116
    :cond_0
    invoke-direct {p0}, Lcom/android/server/hdmi/VolumeControlAction;->updateLastKeyUpdateTime()V

    #@2b
    .line 108
    return-void
.end method

.method processCommand(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .locals 3
    .param p1, "cmd"    # Lcom/android/server/hdmi/HdmiCecMessage;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 127
    iget v0, p0, Lcom/android/server/hdmi/VolumeControlAction;->mState:I

    #@3
    const/4 v1, 0x1

    #@4
    if-ne v0, v1, :cond_0

    #@6
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    #@9
    move-result v0

    #@a
    iget v1, p0, Lcom/android/server/hdmi/VolumeControlAction;->mAvrAddress:I

    #@c
    if-eq v0, v1, :cond_1

    #@e
    .line 128
    :cond_0
    return v2

    #@f
    .line 131
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getOpcode()I

    #@12
    move-result v0

    #@13
    sparse-switch v0, :sswitch_data_0

    #@16
    .line 137
    return v2

    #@17
    .line 133
    :sswitch_0
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/VolumeControlAction;->handleReportAudioStatus(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    #@1a
    move-result v0

    #@1b
    return v0

    #@1c
    .line 135
    :sswitch_1
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/VolumeControlAction;->handleFeatureAbort(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    #@1f
    move-result v0

    #@20
    return v0

    #@21
    .line 131
    nop

    #@22
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x7a -> :sswitch_0
    .end sparse-switch
.end method

.method start()Z
    .locals 1

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 90
    iput v0, p0, Lcom/android/server/hdmi/VolumeControlAction;->mState:I

    #@3
    .line 91
    invoke-direct {p0}, Lcom/android/server/hdmi/VolumeControlAction;->sendVolumeKeyPressed()V

    #@6
    .line 92
    invoke-direct {p0}, Lcom/android/server/hdmi/VolumeControlAction;->resetTimer()V

    #@9
    .line 93
    return v0
.end method

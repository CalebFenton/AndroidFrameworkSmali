.class final Lcom/android/server/hdmi/NewDeviceAction;
.super Lcom/android/server/hdmi/HdmiCecFeatureAction;
.source "NewDeviceAction.java"


# static fields
.field static final STATE_WAITING_FOR_DEVICE_VENDOR_ID:I = 0x2

.field static final STATE_WAITING_FOR_SET_OSD_NAME:I = 0x1

.field private static final TAG:Ljava/lang/String; = "NewDeviceAction"


# instance fields
.field private final mDeviceLogicalAddress:I

.field private final mDevicePhysicalAddress:I

.field private final mDeviceType:I

.field private mDisplayName:Ljava/lang/String;

.field private mTimeoutRetry:I

.field private mVendorId:I


# direct methods
.method constructor <init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;III)V
    .locals 1
    .param p1, "source"    # Lcom/android/server/hdmi/HdmiCecLocalDevice;
    .param p2, "deviceLogicalAddress"    # I
    .param p3, "devicePhysicalAddress"    # I
    .param p4, "deviceType"    # I

    #@0
    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;)V

    #@3
    .line 67
    iput p2, p0, Lcom/android/server/hdmi/NewDeviceAction;->mDeviceLogicalAddress:I

    #@5
    .line 68
    iput p3, p0, Lcom/android/server/hdmi/NewDeviceAction;->mDevicePhysicalAddress:I

    #@7
    .line 69
    iput p4, p0, Lcom/android/server/hdmi/NewDeviceAction;->mDeviceType:I

    #@9
    .line 70
    const v0, 0xffffff

    #@c
    iput v0, p0, Lcom/android/server/hdmi/NewDeviceAction;->mVendorId:I

    #@e
    .line 65
    return-void
.end method

.method private addDeviceInfo()V
    .locals 7

    #@0
    .prologue
    .line 167
    invoke-virtual {p0}, Lcom/android/server/hdmi/NewDeviceAction;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    #@3
    move-result-object v1

    #@4
    iget v2, p0, Lcom/android/server/hdmi/NewDeviceAction;->mDeviceLogicalAddress:I

    #@6
    iget v3, p0, Lcom/android/server/hdmi/NewDeviceAction;->mDevicePhysicalAddress:I

    #@8
    invoke-virtual {v1, v2, v3}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->isInDeviceList(II)Z

    #@b
    move-result v1

    #@c
    if-nez v1, :cond_0

    #@e
    .line 168
    const-string/jumbo v1, "NewDeviceAction"

    #@11
    const-string/jumbo v2, "Device not found (%02x, %04x)"

    #@14
    const/4 v3, 0x2

    #@15
    new-array v3, v3, [Ljava/lang/Object;

    #@17
    .line 169
    iget v4, p0, Lcom/android/server/hdmi/NewDeviceAction;->mDeviceLogicalAddress:I

    #@19
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1c
    move-result-object v4

    #@1d
    const/4 v5, 0x0

    #@1e
    aput-object v4, v3, v5

    #@20
    iget v4, p0, Lcom/android/server/hdmi/NewDeviceAction;->mDevicePhysicalAddress:I

    #@22
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@25
    move-result-object v4

    #@26
    const/4 v5, 0x1

    #@27
    aput-object v4, v3, v5

    #@29
    .line 168
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@2c
    move-result-object v2

    #@2d
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@30
    .line 170
    return-void

    #@31
    .line 172
    :cond_0
    iget-object v1, p0, Lcom/android/server/hdmi/NewDeviceAction;->mDisplayName:Ljava/lang/String;

    #@33
    if-nez v1, :cond_1

    #@35
    .line 173
    iget v1, p0, Lcom/android/server/hdmi/NewDeviceAction;->mDeviceLogicalAddress:I

    #@37
    invoke-static {v1}, Lcom/android/server/hdmi/HdmiUtils;->getDefaultDeviceName(I)Ljava/lang/String;

    #@3a
    move-result-object v1

    #@3b
    iput-object v1, p0, Lcom/android/server/hdmi/NewDeviceAction;->mDisplayName:Ljava/lang/String;

    #@3d
    .line 175
    :cond_1
    new-instance v0, Landroid/hardware/hdmi/HdmiDeviceInfo;

    #@3f
    .line 176
    iget v1, p0, Lcom/android/server/hdmi/NewDeviceAction;->mDeviceLogicalAddress:I

    #@41
    iget v2, p0, Lcom/android/server/hdmi/NewDeviceAction;->mDevicePhysicalAddress:I

    #@43
    .line 177
    invoke-virtual {p0}, Lcom/android/server/hdmi/NewDeviceAction;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    #@46
    move-result-object v3

    #@47
    iget v4, p0, Lcom/android/server/hdmi/NewDeviceAction;->mDevicePhysicalAddress:I

    #@49
    invoke-virtual {v3, v4}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getPortId(I)I

    #@4c
    move-result v3

    #@4d
    .line 178
    iget v4, p0, Lcom/android/server/hdmi/NewDeviceAction;->mDeviceType:I

    #@4f
    iget v5, p0, Lcom/android/server/hdmi/NewDeviceAction;->mVendorId:I

    #@51
    iget-object v6, p0, Lcom/android/server/hdmi/NewDeviceAction;->mDisplayName:Ljava/lang/String;

    #@53
    .line 175
    invoke-direct/range {v0 .. v6}, Landroid/hardware/hdmi/HdmiDeviceInfo;-><init>(IIIIILjava/lang/String;)V

    #@56
    .line 179
    .local v0, "deviceInfo":Landroid/hardware/hdmi/HdmiDeviceInfo;
    invoke-virtual {p0}, Lcom/android/server/hdmi/NewDeviceAction;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    #@59
    move-result-object v1

    #@5a
    invoke-virtual {v1, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->addCecDevice(Landroid/hardware/hdmi/HdmiDeviceInfo;)V

    #@5d
    .line 182
    invoke-virtual {p0}, Lcom/android/server/hdmi/NewDeviceAction;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    #@60
    move-result-object v1

    #@61
    iget v2, p0, Lcom/android/server/hdmi/NewDeviceAction;->mDeviceLogicalAddress:I

    #@63
    invoke-virtual {v1, v2}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->processDelayedMessages(I)V

    #@66
    .line 184
    iget v1, p0, Lcom/android/server/hdmi/NewDeviceAction;->mDeviceLogicalAddress:I

    #@68
    invoke-static {v1}, Lcom/android/server/hdmi/HdmiUtils;->getTypeFromAddress(I)I

    #@6b
    move-result v1

    #@6c
    .line 185
    const/4 v2, 0x5

    #@6d
    .line 184
    if-ne v1, v2, :cond_2

    #@6f
    .line 186
    invoke-virtual {p0}, Lcom/android/server/hdmi/NewDeviceAction;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    #@72
    move-result-object v1

    #@73
    invoke-virtual {v1, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->onNewAvrAdded(Landroid/hardware/hdmi/HdmiDeviceInfo;)V

    #@76
    .line 165
    :cond_2
    return-void
.end method

.method private mayProcessCommandIfCached(II)Z
    .locals 2
    .param p1, "destAddress"    # I
    .param p2, "opcode"    # I

    #@0
    .prologue
    .line 142
    invoke-virtual {p0}, Lcom/android/server/hdmi/NewDeviceAction;->getCecMessageCache()Lcom/android/server/hdmi/HdmiCecMessageCache;

    #@3
    move-result-object v1

    #@4
    invoke-virtual {v1, p1, p2}, Lcom/android/server/hdmi/HdmiCecMessageCache;->getMessage(II)Lcom/android/server/hdmi/HdmiCecMessage;

    #@7
    move-result-object v0

    #@8
    .line 143
    .local v0, "message":Lcom/android/server/hdmi/HdmiCecMessage;
    if-eqz v0, :cond_0

    #@a
    .line 144
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/NewDeviceAction;->processCommand(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    #@d
    move-result v1

    #@e
    return v1

    #@f
    .line 146
    :cond_0
    const/4 v1, 0x0

    #@10
    return v1
.end method

.method private requestOsdName(Z)V
    .locals 2
    .param p1, "firstTry"    # Z

    #@0
    .prologue
    .line 80
    if-eqz p1, :cond_0

    #@2
    .line 81
    const/4 v0, 0x0

    #@3
    iput v0, p0, Lcom/android/server/hdmi/NewDeviceAction;->mTimeoutRetry:I

    #@5
    .line 83
    :cond_0
    const/4 v0, 0x1

    #@6
    iput v0, p0, Lcom/android/server/hdmi/NewDeviceAction;->mState:I

    #@8
    .line 84
    iget v0, p0, Lcom/android/server/hdmi/NewDeviceAction;->mDeviceLogicalAddress:I

    #@a
    const/16 v1, 0x47

    #@c
    invoke-direct {p0, v0, v1}, Lcom/android/server/hdmi/NewDeviceAction;->mayProcessCommandIfCached(II)Z

    #@f
    move-result v0

    #@10
    if-eqz v0, :cond_1

    #@12
    .line 85
    return-void

    #@13
    .line 88
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/hdmi/NewDeviceAction;->getSourceAddress()I

    #@16
    move-result v0

    #@17
    .line 89
    iget v1, p0, Lcom/android/server/hdmi/NewDeviceAction;->mDeviceLogicalAddress:I

    #@19
    .line 88
    invoke-static {v0, v1}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildGiveOsdNameCommand(II)Lcom/android/server/hdmi/HdmiCecMessage;

    #@1c
    move-result-object v0

    #@1d
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/NewDeviceAction;->sendCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    #@20
    .line 90
    iget v0, p0, Lcom/android/server/hdmi/NewDeviceAction;->mState:I

    #@22
    const/16 v1, 0x7d0

    #@24
    invoke-virtual {p0, v0, v1}, Lcom/android/server/hdmi/NewDeviceAction;->addTimer(II)V

    #@27
    .line 79
    return-void
.end method

.method private requestVendorId(Z)V
    .locals 2
    .param p1, "firstTry"    # Z

    #@0
    .prologue
    .line 150
    if-eqz p1, :cond_0

    #@2
    .line 151
    const/4 v0, 0x0

    #@3
    iput v0, p0, Lcom/android/server/hdmi/NewDeviceAction;->mTimeoutRetry:I

    #@5
    .line 154
    :cond_0
    const/4 v0, 0x2

    #@6
    iput v0, p0, Lcom/android/server/hdmi/NewDeviceAction;->mState:I

    #@8
    .line 156
    iget v0, p0, Lcom/android/server/hdmi/NewDeviceAction;->mDeviceLogicalAddress:I

    #@a
    .line 157
    const/16 v1, 0x87

    #@c
    .line 156
    invoke-direct {p0, v0, v1}, Lcom/android/server/hdmi/NewDeviceAction;->mayProcessCommandIfCached(II)Z

    #@f
    move-result v0

    #@10
    if-eqz v0, :cond_1

    #@12
    .line 158
    return-void

    #@13
    .line 160
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/hdmi/NewDeviceAction;->getSourceAddress()I

    #@16
    move-result v0

    #@17
    .line 161
    iget v1, p0, Lcom/android/server/hdmi/NewDeviceAction;->mDeviceLogicalAddress:I

    #@19
    .line 160
    invoke-static {v0, v1}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildGiveDeviceVendorIdCommand(II)Lcom/android/server/hdmi/HdmiCecMessage;

    #@1c
    move-result-object v0

    #@1d
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/NewDeviceAction;->sendCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    #@20
    .line 162
    iget v0, p0, Lcom/android/server/hdmi/NewDeviceAction;->mState:I

    #@22
    const/16 v1, 0x7d0

    #@24
    invoke-virtual {p0, v0, v1}, Lcom/android/server/hdmi/NewDeviceAction;->addTimer(II)V

    #@27
    .line 149
    return-void
.end method


# virtual methods
.method public handleTimerEvent(I)V
    .locals 4
    .param p1, "state"    # I

    #@0
    .prologue
    const/4 v3, 0x5

    #@1
    const/4 v2, 0x1

    #@2
    const/4 v1, 0x0

    #@3
    .line 192
    iget v0, p0, Lcom/android/server/hdmi/NewDeviceAction;->mState:I

    #@5
    if-eqz v0, :cond_0

    #@7
    iget v0, p0, Lcom/android/server/hdmi/NewDeviceAction;->mState:I

    #@9
    if-eq v0, p1, :cond_1

    #@b
    .line 193
    :cond_0
    return-void

    #@c
    .line 195
    :cond_1
    if-ne p1, v2, :cond_4

    #@e
    .line 196
    iget v0, p0, Lcom/android/server/hdmi/NewDeviceAction;->mTimeoutRetry:I

    #@10
    add-int/lit8 v0, v0, 0x1

    #@12
    iput v0, p0, Lcom/android/server/hdmi/NewDeviceAction;->mTimeoutRetry:I

    #@14
    if-ge v0, v3, :cond_2

    #@16
    .line 197
    invoke-direct {p0, v1}, Lcom/android/server/hdmi/NewDeviceAction;->requestOsdName(Z)V

    #@19
    .line 198
    return-void

    #@1a
    .line 201
    :cond_2
    invoke-direct {p0, v2}, Lcom/android/server/hdmi/NewDeviceAction;->requestVendorId(Z)V

    #@1d
    .line 191
    :cond_3
    :goto_0
    return-void

    #@1e
    .line 202
    :cond_4
    const/4 v0, 0x2

    #@1f
    if-ne p1, v0, :cond_3

    #@21
    .line 203
    iget v0, p0, Lcom/android/server/hdmi/NewDeviceAction;->mTimeoutRetry:I

    #@23
    add-int/lit8 v0, v0, 0x1

    #@25
    iput v0, p0, Lcom/android/server/hdmi/NewDeviceAction;->mTimeoutRetry:I

    #@27
    if-ge v0, v3, :cond_5

    #@29
    .line 204
    invoke-direct {p0, v1}, Lcom/android/server/hdmi/NewDeviceAction;->requestVendorId(Z)V

    #@2c
    .line 205
    return-void

    #@2d
    .line 208
    :cond_5
    invoke-direct {p0}, Lcom/android/server/hdmi/NewDeviceAction;->addDeviceInfo()V

    #@30
    .line 209
    invoke-virtual {p0}, Lcom/android/server/hdmi/NewDeviceAction;->finish()V

    #@33
    goto :goto_0
.end method

.method isActionOf(Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;)Z
    .locals 3
    .param p1, "activeSource"    # Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 214
    iget v1, p0, Lcom/android/server/hdmi/NewDeviceAction;->mDeviceLogicalAddress:I

    #@3
    iget v2, p1, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;->logicalAddress:I

    #@5
    if-ne v1, v2, :cond_0

    #@7
    .line 215
    iget v1, p0, Lcom/android/server/hdmi/NewDeviceAction;->mDevicePhysicalAddress:I

    #@9
    iget v2, p1, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;->physicalAddress:I

    #@b
    if-ne v1, v2, :cond_0

    #@d
    const/4 v0, 0x1

    #@e
    .line 214
    :cond_0
    return v0
.end method

.method public processCommand(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .locals 9
    .param p1, "cmd"    # Lcom/android/server/hdmi/HdmiCecMessage;

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    const/4 v8, 0x1

    #@2
    .line 99
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getOpcode()I

    #@5
    move-result v1

    #@6
    .line 100
    .local v1, "opcode":I
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    #@9
    move-result v4

    #@a
    .line 101
    .local v4, "src":I
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    #@d
    move-result-object v2

    #@e
    .line 103
    .local v2, "params":[B
    iget v5, p0, Lcom/android/server/hdmi/NewDeviceAction;->mDeviceLogicalAddress:I

    #@10
    if-eq v5, v4, :cond_0

    #@12
    .line 104
    return v7

    #@13
    .line 107
    :cond_0
    iget v5, p0, Lcom/android/server/hdmi/NewDeviceAction;->mState:I

    #@15
    if-ne v5, v8, :cond_2

    #@17
    .line 108
    const/16 v5, 0x47

    #@19
    if-ne v1, v5, :cond_1

    #@1b
    .line 110
    :try_start_0
    new-instance v5, Ljava/lang/String;

    #@1d
    const-string/jumbo v6, "US-ASCII"

    #@20
    invoke-direct {v5, v2, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    #@23
    iput-object v5, p0, Lcom/android/server/hdmi/NewDeviceAction;->mDisplayName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    #@25
    .line 114
    :goto_0
    invoke-direct {p0, v8}, Lcom/android/server/hdmi/NewDeviceAction;->requestVendorId(Z)V

    #@28
    .line 115
    return v8

    #@29
    .line 111
    :catch_0
    move-exception v0

    #@2a
    .line 112
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    const-string/jumbo v5, "NewDeviceAction"

    #@2d
    new-instance v6, Ljava/lang/StringBuilder;

    #@2f
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@32
    const-string/jumbo v7, "Failed to get OSD name: "

    #@35
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v6

    #@39
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    #@3c
    move-result-object v7

    #@3d
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v6

    #@41
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@44
    move-result-object v6

    #@45
    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@48
    goto :goto_0

    #@49
    .line 116
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_1
    if-nez v1, :cond_4

    #@4b
    .line 117
    aget-byte v5, v2, v7

    #@4d
    and-int/lit16 v3, v5, 0xff

    #@4f
    .line 118
    .local v3, "requestOpcode":I
    const/16 v5, 0x46

    #@51
    if-ne v3, v5, :cond_4

    #@53
    .line 119
    invoke-direct {p0, v8}, Lcom/android/server/hdmi/NewDeviceAction;->requestVendorId(Z)V

    #@56
    .line 120
    return v8

    #@57
    .line 123
    .end local v3    # "requestOpcode":I
    :cond_2
    iget v5, p0, Lcom/android/server/hdmi/NewDeviceAction;->mState:I

    #@59
    const/4 v6, 0x2

    #@5a
    if-ne v5, v6, :cond_4

    #@5c
    .line 124
    const/16 v5, 0x87

    #@5e
    if-ne v1, v5, :cond_3

    #@60
    .line 125
    invoke-static {v2}, Lcom/android/server/hdmi/HdmiUtils;->threeBytesToInt([B)I

    #@63
    move-result v5

    #@64
    iput v5, p0, Lcom/android/server/hdmi/NewDeviceAction;->mVendorId:I

    #@66
    .line 126
    invoke-direct {p0}, Lcom/android/server/hdmi/NewDeviceAction;->addDeviceInfo()V

    #@69
    .line 127
    invoke-virtual {p0}, Lcom/android/server/hdmi/NewDeviceAction;->finish()V

    #@6c
    .line 128
    return v8

    #@6d
    .line 129
    :cond_3
    if-nez v1, :cond_4

    #@6f
    .line 130
    aget-byte v5, v2, v7

    #@71
    and-int/lit16 v3, v5, 0xff

    #@73
    .line 131
    .restart local v3    # "requestOpcode":I
    const/16 v5, 0x8c

    #@75
    if-ne v3, v5, :cond_4

    #@77
    .line 132
    invoke-direct {p0}, Lcom/android/server/hdmi/NewDeviceAction;->addDeviceInfo()V

    #@7a
    .line 133
    invoke-virtual {p0}, Lcom/android/server/hdmi/NewDeviceAction;->finish()V

    #@7d
    .line 134
    return v8

    #@7e
    .line 138
    .end local v3    # "requestOpcode":I
    :cond_4
    return v7
.end method

.method public start()Z
    .locals 1

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 75
    invoke-direct {p0, v0}, Lcom/android/server/hdmi/NewDeviceAction;->requestOsdName(Z)V

    #@4
    .line 76
    return v0
.end method

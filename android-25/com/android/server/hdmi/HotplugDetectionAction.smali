.class final Lcom/android/server/hdmi/HotplugDetectionAction;
.super Lcom/android/server/hdmi/HdmiCecFeatureAction;
.source "HotplugDetectionAction.java"


# static fields
.field private static final AVR_COUNT_MAX:I = 0x3

.field private static final NUM_OF_ADDRESS:I = 0xf

.field private static final POLLING_INTERVAL_MS:I = 0x1388

.field private static final STATE_WAIT_FOR_NEXT_POLLING:I = 0x1

.field private static final TAG:Ljava/lang/String; = "HotPlugDetectionAction"

.field private static final TIMEOUT_COUNT:I = 0x3


# instance fields
.field private mAvrStatusCount:I

.field private mTimeoutCount:I


# direct methods
.method static synthetic -wrap0(Lcom/android/server/hdmi/HotplugDetectionAction;Ljava/util/List;Z)V
    .locals 0
    .param p1, "ackedAddress"    # Ljava/util/List;
    .param p2, "audioOnly"    # Z

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/hdmi/HotplugDetectionAction;->checkHotplug(Ljava/util/List;Z)V

    #@3
    return-void
.end method

.method constructor <init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;)V
    .locals 1
    .param p1, "source"    # Lcom/android/server/hdmi/HdmiCecLocalDevice;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 64
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;)V

    #@4
    .line 50
    iput v0, p0, Lcom/android/server/hdmi/HotplugDetectionAction;->mTimeoutCount:I

    #@6
    .line 56
    iput v0, p0, Lcom/android/server/hdmi/HotplugDetectionAction;->mAvrStatusCount:I

    #@8
    .line 63
    return-void
.end method

.method private addDevice(I)V
    .locals 1
    .param p1, "addedAddress"    # I

    #@0
    .prologue
    .line 218
    invoke-virtual {p0}, Lcom/android/server/hdmi/HotplugDetectionAction;->getSourceAddress()I

    #@3
    move-result v0

    #@4
    invoke-static {v0, p1}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildGivePhysicalAddress(II)Lcom/android/server/hdmi/HdmiCecMessage;

    #@7
    move-result-object v0

    #@8
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HotplugDetectionAction;->sendCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    #@b
    .line 216
    return-void
.end method

.method private static addressListToBitSet(Ljava/util/List;)Ljava/util/BitSet;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/BitSet;"
        }
    .end annotation

    #@0
    .prologue
    .line 201
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v0, Ljava/util/BitSet;

    #@2
    const/16 v3, 0xf

    #@4
    invoke-direct {v0, v3}, Ljava/util/BitSet;-><init>(I)V

    #@7
    .line 202
    .local v0, "set":Ljava/util/BitSet;
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@a
    move-result-object v2

    #@b
    .local v2, "value$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@e
    move-result v3

    #@f
    if-eqz v3, :cond_0

    #@11
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@14
    move-result-object v1

    #@15
    check-cast v1, Ljava/lang/Integer;

    #@17
    .line 203
    .local v1, "value":Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    #@1a
    move-result v3

    #@1b
    invoke-virtual {v0, v3}, Ljava/util/BitSet;->set(I)V

    #@1e
    goto :goto_0

    #@1f
    .line 205
    .end local v1    # "value":Ljava/lang/Integer;
    :cond_0
    return-object v0
.end method

.method private checkHotplug(Ljava/util/List;Z)V
    .locals 12
    .param p2, "audioOnly"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    #@0
    .prologue
    .local p1, "ackedAddress":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v11, 0x5

    #@1
    const/4 v10, 0x0

    #@2
    const/4 v9, -0x1

    #@3
    .line 151
    invoke-virtual {p0}, Lcom/android/server/hdmi/HotplugDetectionAction;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    #@6
    move-result-object v6

    #@7
    invoke-virtual {v6, v10}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getDeviceInfoList(Z)Ljava/util/List;

    #@a
    move-result-object v6

    #@b
    invoke-static {v6, p2}, Lcom/android/server/hdmi/HotplugDetectionAction;->infoListToBitSet(Ljava/util/List;Z)Ljava/util/BitSet;

    #@e
    move-result-object v2

    #@f
    .line 152
    .local v2, "currentInfos":Ljava/util/BitSet;
    invoke-static {p1}, Lcom/android/server/hdmi/HotplugDetectionAction;->addressListToBitSet(Ljava/util/List;)Ljava/util/BitSet;

    #@12
    move-result-object v4

    #@13
    .line 155
    .local v4, "polledResult":Ljava/util/BitSet;
    invoke-static {v2, v4}, Lcom/android/server/hdmi/HotplugDetectionAction;->complement(Ljava/util/BitSet;Ljava/util/BitSet;)Ljava/util/BitSet;

    #@16
    move-result-object v5

    #@17
    .line 156
    .local v5, "removed":Ljava/util/BitSet;
    const/4 v3, -0x1

    #@18
    .line 157
    .local v3, "index":I
    :cond_0
    :goto_0
    add-int/lit8 v6, v3, 0x1

    #@1a
    invoke-virtual {v5, v6}, Ljava/util/BitSet;->nextSetBit(I)I

    #@1d
    move-result v3

    #@1e
    if-eq v3, v9, :cond_2

    #@20
    .line 158
    if-ne v3, v11, :cond_1

    #@22
    .line 159
    invoke-virtual {p0}, Lcom/android/server/hdmi/HotplugDetectionAction;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    #@25
    move-result-object v6

    #@26
    invoke-virtual {v6}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getAvrDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    #@29
    move-result-object v1

    #@2a
    .line 160
    .local v1, "avr":Landroid/hardware/hdmi/HdmiDeviceInfo;
    if-eqz v1, :cond_1

    #@2c
    invoke-virtual {p0}, Lcom/android/server/hdmi/HotplugDetectionAction;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    #@2f
    move-result-object v6

    #@30
    invoke-virtual {v1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getPortId()I

    #@33
    move-result v7

    #@34
    invoke-virtual {v6, v7}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->isConnected(I)Z

    #@37
    move-result v6

    #@38
    if-eqz v6, :cond_1

    #@3a
    .line 161
    iget v6, p0, Lcom/android/server/hdmi/HotplugDetectionAction;->mAvrStatusCount:I

    #@3c
    add-int/lit8 v6, v6, 0x1

    #@3e
    iput v6, p0, Lcom/android/server/hdmi/HotplugDetectionAction;->mAvrStatusCount:I

    #@40
    .line 162
    const-string/jumbo v6, "HotPlugDetectionAction"

    #@43
    new-instance v7, Ljava/lang/StringBuilder;

    #@45
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@48
    const-string/jumbo v8, "Ack not returned from AVR. count: "

    #@4b
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v7

    #@4f
    iget v8, p0, Lcom/android/server/hdmi/HotplugDetectionAction;->mAvrStatusCount:I

    #@51
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@54
    move-result-object v7

    #@55
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@58
    move-result-object v7

    #@59
    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@5c
    .line 163
    iget v6, p0, Lcom/android/server/hdmi/HotplugDetectionAction;->mAvrStatusCount:I

    #@5e
    const/4 v7, 0x3

    #@5f
    if-lt v6, v7, :cond_0

    #@61
    .line 168
    .end local v1    # "avr":Landroid/hardware/hdmi/HdmiDeviceInfo;
    :cond_1
    const-string/jumbo v6, "HotPlugDetectionAction"

    #@64
    new-instance v7, Ljava/lang/StringBuilder;

    #@66
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@69
    const-string/jumbo v8, "Remove device by hot-plug detection:"

    #@6c
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6f
    move-result-object v7

    #@70
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@73
    move-result-object v7

    #@74
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@77
    move-result-object v7

    #@78
    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@7b
    .line 169
    invoke-direct {p0, v3}, Lcom/android/server/hdmi/HotplugDetectionAction;->removeDevice(I)V

    #@7e
    goto :goto_0

    #@7f
    .line 173
    :cond_2
    invoke-virtual {v5, v11}, Ljava/util/BitSet;->get(I)Z

    #@82
    move-result v6

    #@83
    if-nez v6, :cond_3

    #@85
    .line 174
    iput v10, p0, Lcom/android/server/hdmi/HotplugDetectionAction;->mAvrStatusCount:I

    #@87
    .line 178
    :cond_3
    invoke-static {v4, v2}, Lcom/android/server/hdmi/HotplugDetectionAction;->complement(Ljava/util/BitSet;Ljava/util/BitSet;)Ljava/util/BitSet;

    #@8a
    move-result-object v0

    #@8b
    .line 179
    .local v0, "added":Ljava/util/BitSet;
    const/4 v3, -0x1

    #@8c
    .line 180
    :goto_1
    add-int/lit8 v6, v3, 0x1

    #@8e
    invoke-virtual {v0, v6}, Ljava/util/BitSet;->nextSetBit(I)I

    #@91
    move-result v3

    #@92
    if-eq v3, v9, :cond_4

    #@94
    .line 181
    const-string/jumbo v6, "HotPlugDetectionAction"

    #@97
    new-instance v7, Ljava/lang/StringBuilder;

    #@99
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@9c
    const-string/jumbo v8, "Add device by hot-plug detection:"

    #@9f
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a2
    move-result-object v7

    #@a3
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@a6
    move-result-object v7

    #@a7
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@aa
    move-result-object v7

    #@ab
    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@ae
    .line 182
    invoke-direct {p0, v3}, Lcom/android/server/hdmi/HotplugDetectionAction;->addDevice(I)V

    #@b1
    goto :goto_1

    #@b2
    .line 150
    :cond_4
    return-void
.end method

.method private static complement(Ljava/util/BitSet;Ljava/util/BitSet;)Ljava/util/BitSet;
    .locals 1
    .param p0, "first"    # Ljava/util/BitSet;
    .param p1, "second"    # Ljava/util/BitSet;

    #@0
    .prologue
    .line 211
    invoke-virtual {p0}, Ljava/util/BitSet;->clone()Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Ljava/util/BitSet;

    #@6
    .line 212
    .local v0, "clone":Ljava/util/BitSet;
    invoke-virtual {v0, p1}, Ljava/util/BitSet;->andNot(Ljava/util/BitSet;)V

    #@9
    .line 213
    return-object v0
.end method

.method private static infoListToBitSet(Ljava/util/List;Z)Ljava/util/BitSet;
    .locals 5
    .param p1, "audioOnly"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/hdmi/HdmiDeviceInfo;",
            ">;Z)",
            "Ljava/util/BitSet;"
        }
    .end annotation

    #@0
    .prologue
    .line 187
    .local p0, "infoList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/hdmi/HdmiDeviceInfo;>;"
    new-instance v2, Ljava/util/BitSet;

    #@2
    const/16 v3, 0xf

    #@4
    invoke-direct {v2, v3}, Ljava/util/BitSet;-><init>(I)V

    #@7
    .line 188
    .local v2, "set":Ljava/util/BitSet;
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@a
    move-result-object v1

    #@b
    .local v1, "info$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@e
    move-result v3

    #@f
    if-eqz v3, :cond_2

    #@11
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@14
    move-result-object v0

    #@15
    check-cast v0, Landroid/hardware/hdmi/HdmiDeviceInfo;

    #@17
    .line 189
    .local v0, "info":Landroid/hardware/hdmi/HdmiDeviceInfo;
    if-eqz p1, :cond_1

    #@19
    .line 190
    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getDeviceType()I

    #@1c
    move-result v3

    #@1d
    const/4 v4, 0x5

    #@1e
    if-ne v3, v4, :cond_0

    #@20
    .line 191
    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    #@23
    move-result v3

    #@24
    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    #@27
    goto :goto_0

    #@28
    .line 194
    :cond_1
    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    #@2b
    move-result v3

    #@2c
    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    #@2f
    goto :goto_0

    #@30
    .line 197
    .end local v0    # "info":Landroid/hardware/hdmi/HdmiDeviceInfo;
    :cond_2
    return-object v2
.end method

.method private mayCancelDeviceSelect(I)V
    .locals 3
    .param p1, "address"    # I

    #@0
    .prologue
    .line 239
    const-class v2, Lcom/android/server/hdmi/DeviceSelectAction;

    #@2
    invoke-virtual {p0, v2}, Lcom/android/server/hdmi/HotplugDetectionAction;->getActions(Ljava/lang/Class;)Ljava/util/List;

    #@5
    move-result-object v1

    #@6
    .line 240
    .local v1, "actions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/hdmi/DeviceSelectAction;>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    #@9
    move-result v2

    #@a
    if-eqz v2, :cond_0

    #@c
    .line 241
    return-void

    #@d
    .line 245
    :cond_0
    const/4 v2, 0x0

    #@e
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@11
    move-result-object v0

    #@12
    check-cast v0, Lcom/android/server/hdmi/DeviceSelectAction;

    #@14
    .line 246
    .local v0, "action":Lcom/android/server/hdmi/DeviceSelectAction;
    invoke-virtual {v0}, Lcom/android/server/hdmi/DeviceSelectAction;->getTargetAddress()I

    #@17
    move-result v2

    #@18
    if-ne v2, p1, :cond_1

    #@1a
    .line 247
    const-class v2, Lcom/android/server/hdmi/DeviceSelectAction;

    #@1c
    invoke-virtual {p0, v2}, Lcom/android/server/hdmi/HotplugDetectionAction;->removeAction(Ljava/lang/Class;)V

    #@1f
    .line 238
    :cond_1
    return-void
.end method

.method private mayCancelOneTouchRecord(I)V
    .locals 4
    .param p1, "address"    # I

    #@0
    .prologue
    .line 252
    const-class v3, Lcom/android/server/hdmi/OneTouchRecordAction;

    #@2
    invoke-virtual {p0, v3}, Lcom/android/server/hdmi/HotplugDetectionAction;->getActions(Ljava/lang/Class;)Ljava/util/List;

    #@5
    move-result-object v2

    #@6
    .line 253
    .local v2, "actions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/hdmi/OneTouchRecordAction;>;"
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@9
    move-result-object v1

    #@a
    .local v1, "action$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@d
    move-result v3

    #@e
    if-eqz v3, :cond_1

    #@10
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@13
    move-result-object v0

    #@14
    check-cast v0, Lcom/android/server/hdmi/OneTouchRecordAction;

    #@16
    .line 254
    .local v0, "action":Lcom/android/server/hdmi/OneTouchRecordAction;
    invoke-virtual {v0}, Lcom/android/server/hdmi/OneTouchRecordAction;->getRecorderAddress()I

    #@19
    move-result v3

    #@1a
    if-ne v3, p1, :cond_0

    #@1c
    .line 255
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HotplugDetectionAction;->removeAction(Lcom/android/server/hdmi/HdmiCecFeatureAction;)V

    #@1f
    goto :goto_0

    #@20
    .line 251
    .end local v0    # "action":Lcom/android/server/hdmi/OneTouchRecordAction;
    :cond_1
    return-void
.end method

.method private mayChangeRoutingPath(I)V
    .locals 3
    .param p1, "address"    # I

    #@0
    .prologue
    .line 232
    invoke-virtual {p0}, Lcom/android/server/hdmi/HotplugDetectionAction;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    #@3
    move-result-object v1

    #@4
    invoke-virtual {v1, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getCecDeviceInfo(I)Landroid/hardware/hdmi/HdmiDeviceInfo;

    #@7
    move-result-object v0

    #@8
    .line 233
    .local v0, "info":Landroid/hardware/hdmi/HdmiDeviceInfo;
    if-eqz v0, :cond_0

    #@a
    .line 234
    invoke-virtual {p0}, Lcom/android/server/hdmi/HotplugDetectionAction;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    #@d
    move-result-object v1

    #@e
    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getPhysicalAddress()I

    #@11
    move-result v2

    #@12
    invoke-virtual {v1, v2}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->handleRemoveActiveRoutingPath(I)V

    #@15
    .line 231
    :cond_0
    return-void
.end method

.method private mayDisableSystemAudioAndARC(I)V
    .locals 3
    .param p1, "address"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 261
    invoke-static {p1}, Lcom/android/server/hdmi/HdmiUtils;->getTypeFromAddress(I)I

    #@4
    move-result v0

    #@5
    const/4 v1, 0x5

    #@6
    if-eq v0, v1, :cond_0

    #@8
    .line 262
    return-void

    #@9
    .line 266
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/hdmi/HotplugDetectionAction;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    #@c
    move-result-object v0

    #@d
    const/4 v1, 0x1

    #@e
    invoke-virtual {v0, v2, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->setSystemAudioMode(ZZ)V

    #@11
    .line 267
    invoke-virtual {p0}, Lcom/android/server/hdmi/HotplugDetectionAction;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    #@14
    move-result-object v0

    #@15
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->isArcEstablished()Z

    #@18
    move-result v0

    #@19
    if-eqz v0, :cond_1

    #@1b
    .line 268
    invoke-virtual {p0}, Lcom/android/server/hdmi/HotplugDetectionAction;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    #@1e
    move-result-object v0

    #@1f
    invoke-virtual {v0, v2}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->setAudioReturnChannel(Z)V

    #@22
    .line 269
    new-instance v0, Lcom/android/server/hdmi/RequestArcTerminationAction;

    #@24
    invoke-virtual {p0}, Lcom/android/server/hdmi/HotplugDetectionAction;->localDevice()Lcom/android/server/hdmi/HdmiCecLocalDevice;

    #@27
    move-result-object v1

    #@28
    invoke-direct {v0, v1, p1}, Lcom/android/server/hdmi/RequestArcTerminationAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;I)V

    #@2b
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HotplugDetectionAction;->addAndStartAction(Lcom/android/server/hdmi/HdmiCecFeatureAction;)V

    #@2e
    .line 260
    :cond_1
    return-void
.end method

.method private pollAllDevices()V
    .locals 3

    #@0
    .prologue
    .line 127
    const-string/jumbo v0, "HotPlugDetectionAction"

    #@3
    const-string/jumbo v1, "Poll all devices."

    #@6
    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@9
    .line 129
    new-instance v0, Lcom/android/server/hdmi/HotplugDetectionAction$1;

    #@b
    invoke-direct {v0, p0}, Lcom/android/server/hdmi/HotplugDetectionAction$1;-><init>(Lcom/android/server/hdmi/HotplugDetectionAction;)V

    #@e
    .line 134
    const v1, 0x10001

    #@11
    .line 135
    const/4 v2, 0x1

    #@12
    .line 129
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/hdmi/HotplugDetectionAction;->pollDevices(Lcom/android/server/hdmi/HdmiControlService$DevicePollingCallback;II)V

    #@15
    .line 126
    return-void
.end method

.method private pollAudioSystem()V
    .locals 3

    #@0
    .prologue
    .line 139
    const-string/jumbo v0, "HotPlugDetectionAction"

    #@3
    const-string/jumbo v1, "Poll audio system."

    #@6
    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@9
    .line 141
    new-instance v0, Lcom/android/server/hdmi/HotplugDetectionAction$2;

    #@b
    invoke-direct {v0, p0}, Lcom/android/server/hdmi/HotplugDetectionAction$2;-><init>(Lcom/android/server/hdmi/HotplugDetectionAction;)V

    #@e
    .line 146
    const v1, 0x10002

    #@11
    .line 147
    const/4 v2, 0x1

    #@12
    .line 141
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/hdmi/HotplugDetectionAction;->pollDevices(Lcom/android/server/hdmi/HdmiControlService$DevicePollingCallback;II)V

    #@15
    .line 138
    return-void
.end method

.method private pollDevices()V
    .locals 2

    #@0
    .prologue
    .line 115
    iget v0, p0, Lcom/android/server/hdmi/HotplugDetectionAction;->mTimeoutCount:I

    #@2
    if-nez v0, :cond_1

    #@4
    .line 116
    invoke-direct {p0}, Lcom/android/server/hdmi/HotplugDetectionAction;->pollAllDevices()V

    #@7
    .line 123
    :cond_0
    :goto_0
    iget v0, p0, Lcom/android/server/hdmi/HotplugDetectionAction;->mState:I

    #@9
    const/16 v1, 0x1388

    #@b
    invoke-virtual {p0, v0, v1}, Lcom/android/server/hdmi/HotplugDetectionAction;->addTimer(II)V

    #@e
    .line 113
    return-void

    #@f
    .line 118
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/hdmi/HotplugDetectionAction;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    #@12
    move-result-object v0

    #@13
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->isSystemAudioActivated()Z

    #@16
    move-result v0

    #@17
    if-eqz v0, :cond_0

    #@19
    .line 119
    invoke-direct {p0}, Lcom/android/server/hdmi/HotplugDetectionAction;->pollAudioSystem()V

    #@1c
    goto :goto_0
.end method

.method private removeDevice(I)V
    .locals 1
    .param p1, "removedAddress"    # I

    #@0
    .prologue
    .line 223
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HotplugDetectionAction;->mayChangeRoutingPath(I)V

    #@3
    .line 224
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HotplugDetectionAction;->mayCancelDeviceSelect(I)V

    #@6
    .line 225
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HotplugDetectionAction;->mayCancelOneTouchRecord(I)V

    #@9
    .line 226
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HotplugDetectionAction;->mayDisableSystemAudioAndARC(I)V

    #@c
    .line 228
    invoke-virtual {p0}, Lcom/android/server/hdmi/HotplugDetectionAction;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    #@f
    move-result-object v0

    #@10
    invoke-virtual {v0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->removeCecDevice(I)V

    #@13
    .line 222
    return-void
.end method


# virtual methods
.method handleTimerEvent(I)V
    .locals 2
    .param p1, "state"    # I

    #@0
    .prologue
    .line 88
    iget v0, p0, Lcom/android/server/hdmi/HotplugDetectionAction;->mState:I

    #@2
    if-eq v0, p1, :cond_0

    #@4
    .line 89
    return-void

    #@5
    .line 92
    :cond_0
    iget v0, p0, Lcom/android/server/hdmi/HotplugDetectionAction;->mState:I

    #@7
    const/4 v1, 0x1

    #@8
    if-ne v0, v1, :cond_1

    #@a
    .line 93
    iget v0, p0, Lcom/android/server/hdmi/HotplugDetectionAction;->mTimeoutCount:I

    #@c
    add-int/lit8 v0, v0, 0x1

    #@e
    rem-int/lit8 v0, v0, 0x3

    #@10
    iput v0, p0, Lcom/android/server/hdmi/HotplugDetectionAction;->mTimeoutCount:I

    #@12
    .line 94
    invoke-direct {p0}, Lcom/android/server/hdmi/HotplugDetectionAction;->pollDevices()V

    #@15
    .line 87
    :cond_1
    return-void
.end method

.method pollAllDevicesNow()V
    .locals 2

    #@0
    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/server/hdmi/HotplugDetectionAction;->mActionTimer:Lcom/android/server/hdmi/HdmiCecFeatureAction$ActionTimer;

    #@2
    invoke-interface {v0}, Lcom/android/server/hdmi/HdmiCecFeatureAction$ActionTimer;->clearTimerMessage()V

    #@5
    .line 105
    const/4 v0, 0x0

    #@6
    iput v0, p0, Lcom/android/server/hdmi/HotplugDetectionAction;->mTimeoutCount:I

    #@8
    .line 106
    const/4 v0, 0x1

    #@9
    iput v0, p0, Lcom/android/server/hdmi/HotplugDetectionAction;->mState:I

    #@b
    .line 107
    invoke-direct {p0}, Lcom/android/server/hdmi/HotplugDetectionAction;->pollAllDevices()V

    #@e
    .line 109
    iget v0, p0, Lcom/android/server/hdmi/HotplugDetectionAction;->mState:I

    #@10
    const/16 v1, 0x1388

    #@12
    invoke-virtual {p0, v0, v1}, Lcom/android/server/hdmi/HotplugDetectionAction;->addTimer(II)V

    #@15
    .line 101
    return-void
.end method

.method processCommand(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .locals 1
    .param p1, "cmd"    # Lcom/android/server/hdmi/HdmiCecMessage;

    #@0
    .prologue
    .line 83
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method start()Z
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 69
    const-string/jumbo v0, "HotPlugDetectionAction"

    #@4
    const-string/jumbo v1, "Hot-plug dection started."

    #@7
    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@a
    .line 71
    iput v2, p0, Lcom/android/server/hdmi/HotplugDetectionAction;->mState:I

    #@c
    .line 72
    const/4 v0, 0x0

    #@d
    iput v0, p0, Lcom/android/server/hdmi/HotplugDetectionAction;->mTimeoutCount:I

    #@f
    .line 76
    iget v0, p0, Lcom/android/server/hdmi/HotplugDetectionAction;->mState:I

    #@11
    const/16 v1, 0x1388

    #@13
    invoke-virtual {p0, v0, v1}, Lcom/android/server/hdmi/HotplugDetectionAction;->addTimer(II)V

    #@16
    .line 77
    return v2
.end method

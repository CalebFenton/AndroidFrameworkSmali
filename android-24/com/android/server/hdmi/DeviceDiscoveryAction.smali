.class final Lcom/android/server/hdmi/DeviceDiscoveryAction;
.super Lcom/android/server/hdmi/HdmiCecFeatureAction;
.source "DeviceDiscoveryAction.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceDiscoveryCallback;,
        Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;
    }
.end annotation


# static fields
.field private static final STATE_WAITING_FOR_DEVICE_POLLING:I = 0x1

.field private static final STATE_WAITING_FOR_OSD_NAME:I = 0x3

.field private static final STATE_WAITING_FOR_PHYSICAL_ADDRESS:I = 0x2

.field private static final STATE_WAITING_FOR_VENDOR_ID:I = 0x4

.field private static final TAG:Ljava/lang/String; = "DeviceDiscoveryAction"


# instance fields
.field private final mCallback:Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceDiscoveryCallback;

.field private final mDevices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mProcessedDeviceCount:I

.field private mTimeoutRetry:I


# direct methods
.method static synthetic -wrap0(Lcom/android/server/hdmi/DeviceDiscoveryAction;Ljava/util/List;)V
    .locals 0
    .param p1, "addresses"    # Ljava/util/List;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->allocateDevices(Ljava/util/List;)V

    #@3
    return-void
.end method

.method static synthetic -wrap1(Lcom/android/server/hdmi/DeviceDiscoveryAction;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->startPhysicalAddressStage()V

    #@3
    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/hdmi/DeviceDiscoveryAction;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->wrapUpAndFinish()V

    #@3
    return-void
.end method

.method constructor <init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceDiscoveryCallback;)V
    .locals 2
    .param p1, "source"    # Lcom/android/server/hdmi/HdmiCecLocalDevice;
    .param p2, "callback"    # Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceDiscoveryCallback;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 99
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;)V

    #@4
    .line 88
    new-instance v0, Ljava/util/ArrayList;

    #@6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@9
    iput-object v0, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mDevices:Ljava/util/ArrayList;

    #@b
    .line 90
    iput v1, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mProcessedDeviceCount:I

    #@d
    .line 91
    iput v1, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mTimeoutRetry:I

    #@f
    .line 100
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@12
    move-result-object v0

    #@13
    check-cast v0, Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceDiscoveryCallback;

    #@15
    iput-object v0, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mCallback:Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceDiscoveryCallback;

    #@17
    .line 98
    return-void
.end method

.method private allocateDevices(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 127
    .local p1, "addresses":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@3
    move-result-object v1

    #@4
    .local v1, "i$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@7
    move-result v3

    #@8
    if-eqz v3, :cond_0

    #@a
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@d
    move-result-object v0

    #@e
    check-cast v0, Ljava/lang/Integer;

    #@10
    .line 128
    .local v0, "i":Ljava/lang/Integer;
    new-instance v2, Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;

    #@12
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    #@15
    move-result v3

    #@16
    const/4 v4, 0x0

    #@17
    invoke-direct {v2, v3, v4}, Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;-><init>(ILcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;)V

    #@1a
    .line 129
    .local v2, "info":Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;
    iget-object v3, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mDevices:Ljava/util/ArrayList;

    #@1c
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@1f
    goto :goto_0

    #@20
    .line 126
    .end local v0    # "i":Ljava/lang/Integer;
    .end local v2    # "info":Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;
    :cond_0
    return-void
.end method

.method private checkAndProceedStage()V
    .locals 2

    #@0
    .prologue
    .line 337
    iget-object v0, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mDevices:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 338
    invoke-direct {p0}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->wrapUpAndFinish()V

    #@b
    .line 339
    return-void

    #@c
    .line 343
    :cond_0
    iget v0, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mProcessedDeviceCount:I

    #@e
    iget-object v1, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mDevices:Ljava/util/ArrayList;

    #@10
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@13
    move-result v1

    #@14
    if-ne v0, v1, :cond_1

    #@16
    .line 344
    const/4 v0, 0x0

    #@17
    iput v0, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mProcessedDeviceCount:I

    #@19
    .line 345
    iget v0, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mState:I

    #@1b
    packed-switch v0, :pswitch_data_0

    #@1e
    .line 356
    return-void

    #@1f
    .line 347
    :pswitch_0
    invoke-direct {p0}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->startOsdNameStage()V

    #@22
    .line 348
    return-void

    #@23
    .line 350
    :pswitch_1
    invoke-direct {p0}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->startVendorIdStage()V

    #@26
    .line 351
    return-void

    #@27
    .line 353
    :pswitch_2
    invoke-direct {p0}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->wrapUpAndFinish()V

    #@2a
    .line 354
    return-void

    #@2b
    .line 359
    :cond_1
    invoke-direct {p0}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->sendQueryCommand()V

    #@2e
    .line 336
    return-void

    #@2f
    .line 345
    nop

    #@30
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getPortId(I)I
    .locals 1
    .param p1, "physicalAddress"    # I

    #@0
    .prologue
    .line 269
    invoke-virtual {p0}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getPortId(I)I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method private handleReportPhysicalAddress(Lcom/android/server/hdmi/HdmiCecMessage;)V
    .locals 6
    .param p1, "cmd"    # Lcom/android/server/hdmi/HdmiCecMessage;

    #@0
    .prologue
    .line 247
    iget v2, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mProcessedDeviceCount:I

    #@2
    iget-object v3, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mDevices:Ljava/util/ArrayList;

    #@4
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@7
    move-result v3

    #@8
    if-ge v2, v3, :cond_0

    #@a
    const/4 v2, 0x1

    #@b
    :goto_0
    invoke-static {v2}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    #@e
    .line 249
    iget-object v2, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mDevices:Ljava/util/ArrayList;

    #@10
    iget v3, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mProcessedDeviceCount:I

    #@12
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@15
    move-result-object v0

    #@16
    check-cast v0, Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;

    #@18
    .line 250
    .local v0, "current":Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;
    invoke-static {v0}, Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;->-get1(Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;)I

    #@1b
    move-result v2

    #@1c
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    #@1f
    move-result v3

    #@20
    if-eq v2, v3, :cond_1

    #@22
    .line 251
    const-string/jumbo v2, "DeviceDiscoveryAction"

    #@25
    new-instance v3, Ljava/lang/StringBuilder;

    #@27
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@2a
    const-string/jumbo v4, "Unmatched address[expected:"

    #@2d
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v3

    #@31
    invoke-static {v0}, Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;->-get1(Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;)I

    #@34
    move-result v4

    #@35
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@38
    move-result-object v3

    #@39
    const-string/jumbo v4, ", actual:"

    #@3c
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v3

    #@40
    .line 252
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    #@43
    move-result v4

    #@44
    .line 251
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@47
    move-result-object v3

    #@48
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4b
    move-result-object v3

    #@4c
    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@4f
    .line 253
    return-void

    #@50
    .line 247
    .end local v0    # "current":Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;
    :cond_0
    const/4 v2, 0x0

    #@51
    goto :goto_0

    #@52
    .line 256
    .restart local v0    # "current":Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    #@55
    move-result-object v1

    #@56
    .line 257
    .local v1, "params":[B
    invoke-static {v1}, Lcom/android/server/hdmi/HdmiUtils;->twoBytesToInt([B)I

    #@59
    move-result v2

    #@5a
    invoke-static {v0, v2}, Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;->-set2(Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;I)I

    #@5d
    .line 258
    invoke-static {v0}, Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;->-get2(Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;)I

    #@60
    move-result v2

    #@61
    invoke-direct {p0, v2}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->getPortId(I)I

    #@64
    move-result v2

    #@65
    invoke-static {v0, v2}, Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;->-set3(Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;I)I

    #@68
    .line 259
    const/4 v2, 0x2

    #@69
    aget-byte v2, v1, v2

    #@6b
    and-int/lit16 v2, v2, 0xff

    #@6d
    invoke-static {v0, v2}, Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;->-set0(Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;I)I

    #@70
    .line 261
    invoke-virtual {p0}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    #@73
    move-result-object v2

    #@74
    invoke-static {v0}, Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;->-get1(Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;)I

    #@77
    move-result v3

    #@78
    invoke-static {v0}, Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;->-get0(Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;)I

    #@7b
    move-result v4

    #@7c
    .line 262
    invoke-static {v0}, Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;->-get2(Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;)I

    #@7f
    move-result v5

    #@80
    .line 261
    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->updateCecSwitchInfo(III)Z

    #@83
    .line 264
    invoke-direct {p0}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->increaseProcessedDeviceCount()V

    #@86
    .line 265
    invoke-direct {p0}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->checkAndProceedStage()V

    #@89
    .line 246
    return-void
.end method

.method private handleSetOsdName(Lcom/android/server/hdmi/HdmiCecMessage;)V
    .locals 6
    .param p1, "cmd"    # Lcom/android/server/hdmi/HdmiCecMessage;

    #@0
    .prologue
    .line 273
    iget v3, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mProcessedDeviceCount:I

    #@2
    iget-object v4, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mDevices:Ljava/util/ArrayList;

    #@4
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@7
    move-result v4

    #@8
    if-ge v3, v4, :cond_0

    #@a
    const/4 v3, 0x1

    #@b
    :goto_0
    invoke-static {v3}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    #@e
    .line 275
    iget-object v3, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mDevices:Ljava/util/ArrayList;

    #@10
    iget v4, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mProcessedDeviceCount:I

    #@12
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@15
    move-result-object v0

    #@16
    check-cast v0, Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;

    #@18
    .line 276
    .local v0, "current":Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;
    invoke-static {v0}, Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;->-get1(Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;)I

    #@1b
    move-result v3

    #@1c
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    #@1f
    move-result v4

    #@20
    if-eq v3, v4, :cond_1

    #@22
    .line 277
    const-string/jumbo v3, "DeviceDiscoveryAction"

    #@25
    new-instance v4, Ljava/lang/StringBuilder;

    #@27
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@2a
    const-string/jumbo v5, "Unmatched address[expected:"

    #@2d
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v4

    #@31
    invoke-static {v0}, Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;->-get1(Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;)I

    #@34
    move-result v5

    #@35
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@38
    move-result-object v4

    #@39
    const-string/jumbo v5, ", actual:"

    #@3c
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v4

    #@40
    .line 278
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    #@43
    move-result v5

    #@44
    .line 277
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@47
    move-result-object v4

    #@48
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4b
    move-result-object v4

    #@4c
    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@4f
    .line 279
    return-void

    #@50
    .line 273
    .end local v0    # "current":Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;
    :cond_0
    const/4 v3, 0x0

    #@51
    goto :goto_0

    #@52
    .line 282
    .restart local v0    # "current":Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;
    :cond_1
    const/4 v1, 0x0

    #@53
    .line 284
    .local v1, "displayName":Ljava/lang/String;
    :try_start_0
    new-instance v1, Ljava/lang/String;

    #@55
    .end local v1    # "displayName":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    #@58
    move-result-object v3

    #@59
    const-string/jumbo v4, "US-ASCII"

    #@5c
    invoke-direct {v1, v3, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    #@5f
    .line 290
    .local v1, "displayName":Ljava/lang/String;
    :goto_1
    invoke-static {v0, v1}, Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;->-set1(Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;Ljava/lang/String;)Ljava/lang/String;

    #@62
    .line 291
    invoke-direct {p0}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->increaseProcessedDeviceCount()V

    #@65
    .line 292
    invoke-direct {p0}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->checkAndProceedStage()V

    #@68
    .line 272
    return-void

    #@69
    .line 285
    .end local v1    # "displayName":Ljava/lang/String;
    :catch_0
    move-exception v2

    #@6a
    .line 286
    .local v2, "e":Ljava/io/UnsupportedEncodingException;
    const-string/jumbo v3, "DeviceDiscoveryAction"

    #@6d
    new-instance v4, Ljava/lang/StringBuilder;

    #@6f
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@72
    const-string/jumbo v5, "Failed to decode display name: "

    #@75
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@78
    move-result-object v4

    #@79
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->toString()Ljava/lang/String;

    #@7c
    move-result-object v5

    #@7d
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@80
    move-result-object v4

    #@81
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@84
    move-result-object v4

    #@85
    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@88
    .line 288
    invoke-static {v0}, Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;->-get1(Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;)I

    #@8b
    move-result v3

    #@8c
    invoke-static {v3}, Lcom/android/server/hdmi/HdmiUtils;->getDefaultDeviceName(I)Ljava/lang/String;

    #@8f
    move-result-object v1

    #@90
    .restart local v1    # "displayName":Ljava/lang/String;
    goto :goto_1
.end method

.method private handleVendorId(Lcom/android/server/hdmi/HdmiCecMessage;)V
    .locals 6
    .param p1, "cmd"    # Lcom/android/server/hdmi/HdmiCecMessage;

    #@0
    .prologue
    .line 296
    iget v3, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mProcessedDeviceCount:I

    #@2
    iget-object v4, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mDevices:Ljava/util/ArrayList;

    #@4
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@7
    move-result v4

    #@8
    if-ge v3, v4, :cond_0

    #@a
    const/4 v3, 0x1

    #@b
    :goto_0
    invoke-static {v3}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    #@e
    .line 298
    iget-object v3, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mDevices:Ljava/util/ArrayList;

    #@10
    iget v4, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mProcessedDeviceCount:I

    #@12
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@15
    move-result-object v0

    #@16
    check-cast v0, Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;

    #@18
    .line 299
    .local v0, "current":Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;
    invoke-static {v0}, Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;->-get1(Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;)I

    #@1b
    move-result v3

    #@1c
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    #@1f
    move-result v4

    #@20
    if-eq v3, v4, :cond_1

    #@22
    .line 300
    const-string/jumbo v3, "DeviceDiscoveryAction"

    #@25
    new-instance v4, Ljava/lang/StringBuilder;

    #@27
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@2a
    const-string/jumbo v5, "Unmatched address[expected:"

    #@2d
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v4

    #@31
    invoke-static {v0}, Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;->-get1(Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;)I

    #@34
    move-result v5

    #@35
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@38
    move-result-object v4

    #@39
    const-string/jumbo v5, ", actual:"

    #@3c
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v4

    #@40
    .line 301
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    #@43
    move-result v5

    #@44
    .line 300
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@47
    move-result-object v4

    #@48
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4b
    move-result-object v4

    #@4c
    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@4f
    .line 302
    return-void

    #@50
    .line 296
    .end local v0    # "current":Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;
    :cond_0
    const/4 v3, 0x0

    #@51
    goto :goto_0

    #@52
    .line 305
    .restart local v0    # "current":Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    #@55
    move-result-object v1

    #@56
    .line 306
    .local v1, "params":[B
    invoke-static {v1}, Lcom/android/server/hdmi/HdmiUtils;->threeBytesToInt([B)I

    #@59
    move-result v2

    #@5a
    .line 307
    .local v2, "vendorId":I
    invoke-static {v0, v2}, Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;->-set4(Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;I)I

    #@5d
    .line 308
    invoke-direct {p0}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->increaseProcessedDeviceCount()V

    #@60
    .line 309
    invoke-direct {p0}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->checkAndProceedStage()V

    #@63
    .line 295
    return-void
.end method

.method private increaseProcessedDeviceCount()V
    .locals 1

    #@0
    .prologue
    .line 313
    iget v0, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mProcessedDeviceCount:I

    #@2
    add-int/lit8 v0, v0, 0x1

    #@4
    iput v0, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mProcessedDeviceCount:I

    #@6
    .line 314
    const/4 v0, 0x0

    #@7
    iput v0, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mTimeoutRetry:I

    #@9
    .line 312
    return-void
.end method

.method private mayProcessMessageIfCached(II)Z
    .locals 2
    .param p1, "address"    # I
    .param p2, "opcode"    # I

    #@0
    .prologue
    .line 210
    invoke-virtual {p0}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->getCecMessageCache()Lcom/android/server/hdmi/HdmiCecMessageCache;

    #@3
    move-result-object v1

    #@4
    invoke-virtual {v1, p1, p2}, Lcom/android/server/hdmi/HdmiCecMessageCache;->getMessage(II)Lcom/android/server/hdmi/HdmiCecMessage;

    #@7
    move-result-object v0

    #@8
    .line 211
    .local v0, "message":Lcom/android/server/hdmi/HdmiCecMessage;
    if-eqz v0, :cond_0

    #@a
    .line 212
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->processCommand(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    #@d
    .line 213
    const/4 v1, 0x1

    #@e
    return v1

    #@f
    .line 215
    :cond_0
    const/4 v1, 0x0

    #@10
    return v1
.end method

.method private queryOsdName(I)V
    .locals 2
    .param p1, "address"    # I

    #@0
    .prologue
    .line 170
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->verifyValidLogicalAddress(I)Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 171
    invoke-direct {p0}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->checkAndProceedStage()V

    #@9
    .line 172
    return-void

    #@a
    .line 175
    :cond_0
    iget-object v0, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mActionTimer:Lcom/android/server/hdmi/HdmiCecFeatureAction$ActionTimer;

    #@c
    invoke-interface {v0}, Lcom/android/server/hdmi/HdmiCecFeatureAction$ActionTimer;->clearTimerMessage()V

    #@f
    .line 177
    const/16 v0, 0x47

    #@11
    invoke-direct {p0, p1, v0}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mayProcessMessageIfCached(II)Z

    #@14
    move-result v0

    #@15
    if-eqz v0, :cond_1

    #@17
    .line 178
    return-void

    #@18
    .line 180
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->getSourceAddress()I

    #@1b
    move-result v0

    #@1c
    invoke-static {v0, p1}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildGiveOsdNameCommand(II)Lcom/android/server/hdmi/HdmiCecMessage;

    #@1f
    move-result-object v0

    #@20
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->sendCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    #@23
    .line 181
    iget v0, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mState:I

    #@25
    const/16 v1, 0x7d0

    #@27
    invoke-virtual {p0, v0, v1}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->addTimer(II)V

    #@2a
    .line 169
    return-void
.end method

.method private queryPhysicalAddress(I)V
    .locals 2
    .param p1, "address"    # I

    #@0
    .prologue
    .line 146
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->verifyValidLogicalAddress(I)Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 147
    invoke-direct {p0}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->checkAndProceedStage()V

    #@9
    .line 148
    return-void

    #@a
    .line 151
    :cond_0
    iget-object v0, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mActionTimer:Lcom/android/server/hdmi/HdmiCecFeatureAction$ActionTimer;

    #@c
    invoke-interface {v0}, Lcom/android/server/hdmi/HdmiCecFeatureAction$ActionTimer;->clearTimerMessage()V

    #@f
    .line 154
    const/16 v0, 0x84

    #@11
    invoke-direct {p0, p1, v0}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mayProcessMessageIfCached(II)Z

    #@14
    move-result v0

    #@15
    if-eqz v0, :cond_1

    #@17
    .line 155
    return-void

    #@18
    .line 157
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->getSourceAddress()I

    #@1b
    move-result v0

    #@1c
    invoke-static {v0, p1}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildGivePhysicalAddress(II)Lcom/android/server/hdmi/HdmiCecMessage;

    #@1f
    move-result-object v0

    #@20
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->sendCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    #@23
    .line 158
    iget v0, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mState:I

    #@25
    const/16 v1, 0x7d0

    #@27
    invoke-virtual {p0, v0, v1}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->addTimer(II)V

    #@2a
    .line 145
    return-void
.end method

.method private queryVendorId(I)V
    .locals 2
    .param p1, "address"    # I

    #@0
    .prologue
    .line 194
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->verifyValidLogicalAddress(I)Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 195
    invoke-direct {p0}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->checkAndProceedStage()V

    #@9
    .line 196
    return-void

    #@a
    .line 199
    :cond_0
    iget-object v0, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mActionTimer:Lcom/android/server/hdmi/HdmiCecFeatureAction$ActionTimer;

    #@c
    invoke-interface {v0}, Lcom/android/server/hdmi/HdmiCecFeatureAction$ActionTimer;->clearTimerMessage()V

    #@f
    .line 201
    const/16 v0, 0x87

    #@11
    invoke-direct {p0, p1, v0}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mayProcessMessageIfCached(II)Z

    #@14
    move-result v0

    #@15
    if-eqz v0, :cond_1

    #@17
    .line 202
    return-void

    #@18
    .line 205
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->getSourceAddress()I

    #@1b
    move-result v0

    #@1c
    invoke-static {v0, p1}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildGiveDeviceVendorIdCommand(II)Lcom/android/server/hdmi/HdmiCecMessage;

    #@1f
    move-result-object v0

    #@20
    .line 204
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->sendCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    #@23
    .line 206
    iget v0, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mState:I

    #@25
    const/16 v1, 0x7d0

    #@27
    invoke-virtual {p0, v0, v1}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->addTimer(II)V

    #@2a
    .line 193
    return-void
.end method

.method private removeDevice(I)V
    .locals 1
    .param p1, "index"    # I

    #@0
    .prologue
    .line 318
    iget-object v0, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mDevices:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@5
    .line 317
    return-void
.end method

.method private sendQueryCommand()V
    .locals 3

    #@0
    .prologue
    .line 364
    iget-object v1, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mDevices:Ljava/util/ArrayList;

    #@2
    iget v2, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mProcessedDeviceCount:I

    #@4
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@7
    move-result-object v1

    #@8
    check-cast v1, Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;

    #@a
    invoke-static {v1}, Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;->-get1(Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;)I

    #@d
    move-result v0

    #@e
    .line 365
    .local v0, "address":I
    iget v1, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mState:I

    #@10
    packed-switch v1, :pswitch_data_0

    #@13
    .line 375
    :goto_0
    return-void

    #@14
    .line 367
    :pswitch_0
    invoke-direct {p0, v0}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->queryPhysicalAddress(I)V

    #@17
    .line 368
    return-void

    #@18
    .line 370
    :pswitch_1
    invoke-direct {p0, v0}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->queryOsdName(I)V

    #@1b
    .line 371
    return-void

    #@1c
    .line 373
    :pswitch_2
    invoke-direct {p0, v0}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->queryVendorId(I)V

    #@1f
    goto :goto_0

    #@20
    .line 365
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private startOsdNameStage()V
    .locals 3

    #@0
    .prologue
    .line 162
    const-string/jumbo v0, "DeviceDiscoveryAction"

    #@3
    new-instance v1, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v2, "Start [Osd Name Stage]:"

    #@b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v1

    #@f
    iget-object v2, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mDevices:Ljava/util/ArrayList;

    #@11
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@14
    move-result v2

    #@15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@18
    move-result-object v1

    #@19
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c
    move-result-object v1

    #@1d
    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@20
    .line 163
    const/4 v0, 0x0

    #@21
    iput v0, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mProcessedDeviceCount:I

    #@23
    .line 164
    const/4 v0, 0x3

    #@24
    iput v0, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mState:I

    #@26
    .line 166
    invoke-direct {p0}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->checkAndProceedStage()V

    #@29
    .line 161
    return-void
.end method

.method private startPhysicalAddressStage()V
    .locals 3

    #@0
    .prologue
    .line 134
    const-string/jumbo v0, "DeviceDiscoveryAction"

    #@3
    new-instance v1, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v2, "Start [Physical Address Stage]:"

    #@b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v1

    #@f
    iget-object v2, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mDevices:Ljava/util/ArrayList;

    #@11
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@14
    move-result v2

    #@15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@18
    move-result-object v1

    #@19
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c
    move-result-object v1

    #@1d
    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@20
    .line 135
    const/4 v0, 0x0

    #@21
    iput v0, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mProcessedDeviceCount:I

    #@23
    .line 136
    const/4 v0, 0x2

    #@24
    iput v0, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mState:I

    #@26
    .line 138
    invoke-direct {p0}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->checkAndProceedStage()V

    #@29
    .line 133
    return-void
.end method

.method private startVendorIdStage()V
    .locals 3

    #@0
    .prologue
    .line 185
    const-string/jumbo v0, "DeviceDiscoveryAction"

    #@3
    new-instance v1, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v2, "Start [Vendor Id Stage]:"

    #@b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v1

    #@f
    iget-object v2, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mDevices:Ljava/util/ArrayList;

    #@11
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@14
    move-result v2

    #@15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@18
    move-result-object v1

    #@19
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c
    move-result-object v1

    #@1d
    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@20
    .line 187
    const/4 v0, 0x0

    #@21
    iput v0, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mProcessedDeviceCount:I

    #@23
    .line 188
    const/4 v0, 0x4

    #@24
    iput v0, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mState:I

    #@26
    .line 190
    invoke-direct {p0}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->checkAndProceedStage()V

    #@29
    .line 184
    return-void
.end method

.method private verifyValidLogicalAddress(I)Z
    .locals 2
    .param p1, "address"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 142
    if-ltz p1, :cond_0

    #@3
    const/16 v1, 0xf

    #@5
    if-ge p1, v1, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :cond_0
    return v0
.end method

.method private wrapUpAndFinish()V
    .locals 7

    #@0
    .prologue
    .line 322
    const-string/jumbo v4, "DeviceDiscoveryAction"

    #@3
    new-instance v5, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v6, "---------Wrap up Device Discovery:["

    #@b
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v5

    #@f
    iget-object v6, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mDevices:Ljava/util/ArrayList;

    #@11
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    #@14
    move-result v6

    #@15
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@18
    move-result-object v5

    #@19
    const-string/jumbo v6, "]---------"

    #@1c
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v5

    #@20
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@23
    move-result-object v5

    #@24
    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@27
    .line 323
    new-instance v3, Ljava/util/ArrayList;

    #@29
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    #@2c
    .line 324
    .local v3, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/hdmi/HdmiDeviceInfo;>;"
    iget-object v4, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mDevices:Ljava/util/ArrayList;

    #@2e
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@31
    move-result-object v2

    #@32
    .local v2, "info$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@35
    move-result v4

    #@36
    if-eqz v4, :cond_0

    #@38
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@3b
    move-result-object v1

    #@3c
    check-cast v1, Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;

    #@3e
    .line 325
    .local v1, "info":Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;
    invoke-static {v1}, Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;->-wrap0(Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;)Landroid/hardware/hdmi/HdmiDeviceInfo;

    #@41
    move-result-object v0

    #@42
    .line 326
    .local v0, "cecDeviceInfo":Landroid/hardware/hdmi/HdmiDeviceInfo;
    const-string/jumbo v4, "DeviceDiscoveryAction"

    #@45
    new-instance v5, Ljava/lang/StringBuilder;

    #@47
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@4a
    const-string/jumbo v6, " DeviceInfo: "

    #@4d
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@50
    move-result-object v5

    #@51
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@54
    move-result-object v5

    #@55
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@58
    move-result-object v5

    #@59
    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@5c
    .line 327
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@5f
    goto :goto_0

    #@60
    .line 329
    .end local v0    # "cecDeviceInfo":Landroid/hardware/hdmi/HdmiDeviceInfo;
    .end local v1    # "info":Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;
    :cond_0
    const-string/jumbo v4, "DeviceDiscoveryAction"

    #@63
    const-string/jumbo v5, "--------------------------------------------"

    #@66
    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@69
    .line 330
    iget-object v4, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mCallback:Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceDiscoveryCallback;

    #@6b
    invoke-interface {v4, v3}, Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceDiscoveryCallback;->onDeviceDiscoveryDone(Ljava/util/List;)V

    #@6e
    .line 331
    invoke-virtual {p0}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->finish()V

    #@71
    .line 333
    invoke-virtual {p0}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    #@74
    move-result-object v4

    #@75
    invoke-virtual {v4}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->processAllDelayedMessages()V

    #@78
    .line 321
    return-void
.end method


# virtual methods
.method handleTimerEvent(I)V
    .locals 3
    .param p1, "state"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 381
    iget v0, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mState:I

    #@3
    if-eqz v0, :cond_0

    #@5
    iget v0, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mState:I

    #@7
    if-eq v0, p1, :cond_1

    #@9
    .line 382
    :cond_0
    return-void

    #@a
    .line 385
    :cond_1
    iget v0, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mTimeoutRetry:I

    #@c
    add-int/lit8 v0, v0, 0x1

    #@e
    iput v0, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mTimeoutRetry:I

    #@10
    const/4 v1, 0x5

    #@11
    if-ge v0, v1, :cond_2

    #@13
    .line 386
    invoke-direct {p0}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->sendQueryCommand()V

    #@16
    .line 387
    return-void

    #@17
    .line 389
    :cond_2
    iput v2, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mTimeoutRetry:I

    #@19
    .line 390
    const-string/jumbo v0, "DeviceDiscoveryAction"

    #@1c
    new-instance v1, Ljava/lang/StringBuilder;

    #@1e
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@21
    const-string/jumbo v2, "Timeout[State="

    #@24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v1

    #@28
    iget v2, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mState:I

    #@2a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v1

    #@2e
    const-string/jumbo v2, ", Processed="

    #@31
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v1

    #@35
    iget v2, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mProcessedDeviceCount:I

    #@37
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v1

    #@3b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3e
    move-result-object v1

    #@3f
    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@42
    .line 391
    iget v0, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mProcessedDeviceCount:I

    #@44
    invoke-direct {p0, v0}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->removeDevice(I)V

    #@47
    .line 392
    invoke-direct {p0}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->checkAndProceedStage()V

    #@4a
    .line 380
    return-void
.end method

.method processCommand(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .locals 4
    .param p1, "cmd"    # Lcom/android/server/hdmi/HdmiCecMessage;

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 220
    iget v0, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mState:I

    #@4
    packed-switch v0, :pswitch_data_0

    #@7
    .line 242
    return v2

    #@8
    .line 222
    :pswitch_0
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getOpcode()I

    #@b
    move-result v0

    #@c
    const/16 v1, 0x84

    #@e
    if-ne v0, v1, :cond_0

    #@10
    .line 223
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->handleReportPhysicalAddress(Lcom/android/server/hdmi/HdmiCecMessage;)V

    #@13
    .line 224
    return v3

    #@14
    .line 226
    :cond_0
    return v2

    #@15
    .line 228
    :pswitch_1
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getOpcode()I

    #@18
    move-result v0

    #@19
    const/16 v1, 0x47

    #@1b
    if-ne v0, v1, :cond_1

    #@1d
    .line 229
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->handleSetOsdName(Lcom/android/server/hdmi/HdmiCecMessage;)V

    #@20
    .line 230
    return v3

    #@21
    .line 232
    :cond_1
    return v2

    #@22
    .line 234
    :pswitch_2
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getOpcode()I

    #@25
    move-result v0

    #@26
    const/16 v1, 0x87

    #@28
    if-ne v0, v1, :cond_2

    #@2a
    .line 235
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->handleVendorId(Lcom/android/server/hdmi/HdmiCecMessage;)V

    #@2d
    .line 236
    return v3

    #@2e
    .line 238
    :cond_2
    return v2

    #@2f
    .line 220
    nop

    #@30
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method start()Z
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 105
    iget-object v0, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mDevices:Ljava/util/ArrayList;

    #@3
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    #@6
    .line 106
    iput v2, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mState:I

    #@8
    .line 108
    new-instance v0, Lcom/android/server/hdmi/DeviceDiscoveryAction$1;

    #@a
    invoke-direct {v0, p0}, Lcom/android/server/hdmi/DeviceDiscoveryAction$1;-><init>(Lcom/android/server/hdmi/DeviceDiscoveryAction;)V

    #@d
    .line 121
    const v1, 0x20001

    #@10
    .line 108
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->pollDevices(Lcom/android/server/hdmi/HdmiControlService$DevicePollingCallback;II)V

    #@13
    .line 123
    return v2
.end method

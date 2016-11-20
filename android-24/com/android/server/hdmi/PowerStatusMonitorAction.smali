.class public Lcom/android/server/hdmi/PowerStatusMonitorAction;
.super Lcom/android/server/hdmi/HdmiCecFeatureAction;
.source "PowerStatusMonitorAction.java"


# static fields
.field private static final INVALID_POWER_STATUS:I = -0x2

.field private static final MONITIROING_INTERNAL_MS:I = 0xea60

.field private static final REPORT_POWER_STATUS_TIMEOUT_MS:I = 0x1388

.field private static final STATE_WAIT_FOR_NEXT_MONITORING:I = 0x2

.field private static final STATE_WAIT_FOR_REPORT_POWER_STATUS:I = 0x1

.field private static final TAG:Ljava/lang/String; = "PowerStatusMonitorAction"


# instance fields
.field private final mPowerStatus:Landroid/util/SparseIntArray;


# direct methods
.method static synthetic -wrap0(Lcom/android/server/hdmi/PowerStatusMonitorAction;IIZ)V
    .locals 0
    .param p1, "logicalAddress"    # I
    .param p2, "newStatus"    # I
    .param p3, "remove"    # Z

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/hdmi/PowerStatusMonitorAction;->updatePowerStatus(IIZ)V

    #@3
    return-void
.end method

.method constructor <init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;)V
    .locals 1
    .param p1, "source"    # Lcom/android/server/hdmi/HdmiCecLocalDevice;

    #@0
    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;)V

    #@3
    .line 53
    new-instance v0, Landroid/util/SparseIntArray;

    #@5
    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    #@8
    iput-object v0, p0, Lcom/android/server/hdmi/PowerStatusMonitorAction;->mPowerStatus:Landroid/util/SparseIntArray;

    #@a
    .line 55
    return-void
.end method

.method private handleReportPowerStatus(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .locals 7
    .param p1, "cmd"    # Lcom/android/server/hdmi/HdmiCecMessage;

    #@0
    .prologue
    const/4 v6, 0x1

    #@1
    const/4 v5, 0x0

    #@2
    const/4 v4, -0x2

    #@3
    .line 75
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    #@6
    move-result v2

    #@7
    .line 76
    .local v2, "sourceAddress":I
    iget-object v3, p0, Lcom/android/server/hdmi/PowerStatusMonitorAction;->mPowerStatus:Landroid/util/SparseIntArray;

    #@9
    invoke-virtual {v3, v2, v4}, Landroid/util/SparseIntArray;->get(II)I

    #@c
    move-result v1

    #@d
    .line 77
    .local v1, "oldStatus":I
    if-ne v1, v4, :cond_0

    #@f
    .line 79
    return v5

    #@10
    .line 81
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    #@13
    move-result-object v3

    #@14
    aget-byte v3, v3, v5

    #@16
    and-int/lit16 v0, v3, 0xff

    #@18
    .line 82
    .local v0, "newStatus":I
    invoke-direct {p0, v2, v0, v6}, Lcom/android/server/hdmi/PowerStatusMonitorAction;->updatePowerStatus(IIZ)V

    #@1b
    .line 83
    return v6
.end method

.method private handleTimeout()V
    .locals 4

    #@0
    .prologue
    .line 99
    const/4 v0, 0x0

    #@1
    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/hdmi/PowerStatusMonitorAction;->mPowerStatus:Landroid/util/SparseIntArray;

    #@3
    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    #@6
    move-result v2

    #@7
    if-ge v0, v2, :cond_0

    #@9
    .line 100
    iget-object v2, p0, Lcom/android/server/hdmi/PowerStatusMonitorAction;->mPowerStatus:Landroid/util/SparseIntArray;

    #@b
    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    #@e
    move-result v1

    #@f
    .line 101
    .local v1, "logicalAddress":I
    const/4 v2, -0x1

    #@10
    const/4 v3, 0x0

    #@11
    invoke-direct {p0, v1, v2, v3}, Lcom/android/server/hdmi/PowerStatusMonitorAction;->updatePowerStatus(IIZ)V

    #@14
    .line 99
    add-int/lit8 v0, v0, 0x1

    #@16
    goto :goto_0

    #@17
    .line 103
    .end local v1    # "logicalAddress":I
    :cond_0
    iget-object v2, p0, Lcom/android/server/hdmi/PowerStatusMonitorAction;->mPowerStatus:Landroid/util/SparseIntArray;

    #@19
    invoke-virtual {v2}, Landroid/util/SparseIntArray;->clear()V

    #@1c
    .line 104
    const/4 v2, 0x2

    #@1d
    iput v2, p0, Lcom/android/server/hdmi/PowerStatusMonitorAction;->mState:I

    #@1f
    .line 98
    return-void
.end method

.method private queryPowerStatus()V
    .locals 7

    #@0
    .prologue
    const/4 v6, 0x1

    #@1
    .line 115
    invoke-virtual {p0}, Lcom/android/server/hdmi/PowerStatusMonitorAction;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    #@4
    move-result-object v4

    #@5
    const/4 v5, 0x0

    #@6
    invoke-virtual {v4, v5}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getDeviceInfoList(Z)Ljava/util/List;

    #@9
    move-result-object v0

    #@a
    .line 116
    .local v0, "deviceInfos":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/hdmi/HdmiDeviceInfo;>;"
    invoke-direct {p0, v0}, Lcom/android/server/hdmi/PowerStatusMonitorAction;->resetPowerStatus(Ljava/util/List;)V

    #@d
    .line 117
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@10
    move-result-object v2

    #@11
    .local v2, "info$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@14
    move-result v4

    #@15
    if-eqz v4, :cond_0

    #@17
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1a
    move-result-object v1

    #@1b
    check-cast v1, Landroid/hardware/hdmi/HdmiDeviceInfo;

    #@1d
    .line 118
    .local v1, "info":Landroid/hardware/hdmi/HdmiDeviceInfo;
    invoke-virtual {v1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    #@20
    move-result v3

    #@21
    .line 119
    .local v3, "logicalAddress":I
    invoke-virtual {p0}, Lcom/android/server/hdmi/PowerStatusMonitorAction;->getSourceAddress()I

    #@24
    move-result v4

    #@25
    invoke-static {v4, v3}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildGiveDevicePowerStatus(II)Lcom/android/server/hdmi/HdmiCecMessage;

    #@28
    move-result-object v4

    #@29
    .line 121
    new-instance v5, Lcom/android/server/hdmi/PowerStatusMonitorAction$1;

    #@2b
    invoke-direct {v5, p0, v3}, Lcom/android/server/hdmi/PowerStatusMonitorAction$1;-><init>(Lcom/android/server/hdmi/PowerStatusMonitorAction;I)V

    #@2e
    .line 119
    invoke-virtual {p0, v4, v5}, Lcom/android/server/hdmi/PowerStatusMonitorAction;->sendCommand(Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V

    #@31
    goto :goto_0

    #@32
    .line 133
    .end local v1    # "info":Landroid/hardware/hdmi/HdmiDeviceInfo;
    .end local v3    # "logicalAddress":I
    :cond_0
    iput v6, p0, Lcom/android/server/hdmi/PowerStatusMonitorAction;->mState:I

    #@34
    .line 136
    const/4 v4, 0x2

    #@35
    const v5, 0xea60

    #@38
    invoke-virtual {p0, v4, v5}, Lcom/android/server/hdmi/PowerStatusMonitorAction;->addTimer(II)V

    #@3b
    .line 137
    const/16 v4, 0x1388

    #@3d
    invoke-virtual {p0, v6, v4}, Lcom/android/server/hdmi/PowerStatusMonitorAction;->addTimer(II)V

    #@40
    .line 114
    return-void
.end method

.method private resetPowerStatus(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/hdmi/HdmiDeviceInfo;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 108
    .local p1, "deviceInfos":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/hdmi/HdmiDeviceInfo;>;"
    iget-object v2, p0, Lcom/android/server/hdmi/PowerStatusMonitorAction;->mPowerStatus:Landroid/util/SparseIntArray;

    #@2
    invoke-virtual {v2}, Landroid/util/SparseIntArray;->clear()V

    #@5
    .line 109
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@8
    move-result-object v1

    #@9
    .local v1, "info$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@c
    move-result v2

    #@d
    if-eqz v2, :cond_0

    #@f
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@12
    move-result-object v0

    #@13
    check-cast v0, Landroid/hardware/hdmi/HdmiDeviceInfo;

    #@15
    .line 110
    .local v0, "info":Landroid/hardware/hdmi/HdmiDeviceInfo;
    iget-object v2, p0, Lcom/android/server/hdmi/PowerStatusMonitorAction;->mPowerStatus:Landroid/util/SparseIntArray;

    #@17
    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    #@1a
    move-result v3

    #@1b
    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getDevicePowerStatus()I

    #@1e
    move-result v4

    #@1f
    invoke-virtual {v2, v3, v4}, Landroid/util/SparseIntArray;->append(II)V

    #@22
    goto :goto_0

    #@23
    .line 107
    .end local v0    # "info":Landroid/hardware/hdmi/HdmiDeviceInfo;
    :cond_0
    return-void
.end method

.method private updatePowerStatus(IIZ)V
    .locals 1
    .param p1, "logicalAddress"    # I
    .param p2, "newStatus"    # I
    .param p3, "remove"    # Z

    #@0
    .prologue
    .line 141
    invoke-virtual {p0}, Lcom/android/server/hdmi/PowerStatusMonitorAction;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1, p2}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->updateDevicePowerStatus(II)V

    #@7
    .line 143
    if-eqz p3, :cond_0

    #@9
    .line 144
    iget-object v0, p0, Lcom/android/server/hdmi/PowerStatusMonitorAction;->mPowerStatus:Landroid/util/SparseIntArray;

    #@b
    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->delete(I)V

    #@e
    .line 140
    :cond_0
    return-void
.end method


# virtual methods
.method handleTimerEvent(I)V
    .locals 1
    .param p1, "state"    # I

    #@0
    .prologue
    .line 88
    iget v0, p0, Lcom/android/server/hdmi/PowerStatusMonitorAction;->mState:I

    #@2
    packed-switch v0, :pswitch_data_0

    #@5
    .line 87
    :goto_0
    return-void

    #@6
    .line 90
    :pswitch_0
    invoke-direct {p0}, Lcom/android/server/hdmi/PowerStatusMonitorAction;->queryPowerStatus()V

    #@9
    goto :goto_0

    #@a
    .line 93
    :pswitch_1
    invoke-direct {p0}, Lcom/android/server/hdmi/PowerStatusMonitorAction;->handleTimeout()V

    #@d
    goto :goto_0

    #@e
    .line 88
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method processCommand(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .locals 2
    .param p1, "cmd"    # Lcom/android/server/hdmi/HdmiCecMessage;

    #@0
    .prologue
    .line 67
    iget v0, p0, Lcom/android/server/hdmi/PowerStatusMonitorAction;->mState:I

    #@2
    const/4 v1, 0x1

    #@3
    if-ne v0, v1, :cond_0

    #@5
    .line 68
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getOpcode()I

    #@8
    move-result v0

    #@9
    const/16 v1, 0x90

    #@b
    if-ne v0, v1, :cond_0

    #@d
    .line 69
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/PowerStatusMonitorAction;->handleReportPowerStatus(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    #@10
    move-result v0

    #@11
    return v0

    #@12
    .line 71
    :cond_0
    const/4 v0, 0x0

    #@13
    return v0
.end method

.method start()Z
    .locals 1

    #@0
    .prologue
    .line 61
    invoke-direct {p0}, Lcom/android/server/hdmi/PowerStatusMonitorAction;->queryPowerStatus()V

    #@3
    .line 62
    const/4 v0, 0x1

    #@4
    return v0
.end method

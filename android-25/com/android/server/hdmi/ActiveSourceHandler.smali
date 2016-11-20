.class final Lcom/android/server/hdmi/ActiveSourceHandler;
.super Ljava/lang/Object;
.source "ActiveSourceHandler.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ActiveSourceHandler"


# instance fields
.field private final mCallback:Landroid/hardware/hdmi/IHdmiControlCallback;

.field private final mService:Lcom/android/server/hdmi/HdmiControlService;

.field private final mSource:Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;


# direct methods
.method private constructor <init>(Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;Landroid/hardware/hdmi/IHdmiControlCallback;)V
    .locals 1
    .param p1, "source"    # Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;
    .param p2, "callback"    # Landroid/hardware/hdmi/IHdmiControlCallback;

    #@0
    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 51
    iput-object p1, p0, Lcom/android/server/hdmi/ActiveSourceHandler;->mSource:Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    #@5
    .line 52
    iget-object v0, p0, Lcom/android/server/hdmi/ActiveSourceHandler;->mSource:Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    #@7
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getService()Lcom/android/server/hdmi/HdmiControlService;

    #@a
    move-result-object v0

    #@b
    iput-object v0, p0, Lcom/android/server/hdmi/ActiveSourceHandler;->mService:Lcom/android/server/hdmi/HdmiControlService;

    #@d
    .line 53
    iput-object p2, p0, Lcom/android/server/hdmi/ActiveSourceHandler;->mCallback:Landroid/hardware/hdmi/IHdmiControlCallback;

    #@f
    .line 50
    return-void
.end method

.method static create(Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;Landroid/hardware/hdmi/IHdmiControlCallback;)Lcom/android/server/hdmi/ActiveSourceHandler;
    .locals 3
    .param p0, "source"    # Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;
    .param p1, "callback"    # Landroid/hardware/hdmi/IHdmiControlCallback;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 43
    if-nez p0, :cond_0

    #@3
    .line 44
    const-string/jumbo v0, "ActiveSourceHandler"

    #@6
    const-string/jumbo v1, "Wrong arguments"

    #@9
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@c
    .line 45
    return-object v2

    #@d
    .line 47
    :cond_0
    new-instance v0, Lcom/android/server/hdmi/ActiveSourceHandler;

    #@f
    invoke-direct {v0, p0, p1}, Lcom/android/server/hdmi/ActiveSourceHandler;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;Landroid/hardware/hdmi/IHdmiControlCallback;)V

    #@12
    return-object v0
.end method

.method private final getSourceAddress()I
    .locals 1

    #@0
    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/server/hdmi/ActiveSourceHandler;->mSource:Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    #@2
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    #@9
    move-result v0

    #@a
    return v0
.end method

.method private invokeCallback(I)V
    .locals 4
    .param p1, "result"    # I

    #@0
    .prologue
    .line 102
    iget-object v1, p0, Lcom/android/server/hdmi/ActiveSourceHandler;->mCallback:Landroid/hardware/hdmi/IHdmiControlCallback;

    #@2
    if-nez v1, :cond_0

    #@4
    .line 103
    return-void

    #@5
    .line 106
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/hdmi/ActiveSourceHandler;->mCallback:Landroid/hardware/hdmi/IHdmiControlCallback;

    #@7
    invoke-interface {v1, p1}, Landroid/hardware/hdmi/IHdmiControlCallback;->onComplete(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@a
    .line 101
    :goto_0
    return-void

    #@b
    .line 107
    :catch_0
    move-exception v0

    #@c
    .line 108
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "ActiveSourceHandler"

    #@f
    new-instance v2, Ljava/lang/StringBuilder;

    #@11
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@14
    const-string/jumbo v3, "Callback failed:"

    #@17
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v2

    #@1b
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v2

    #@1f
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object v2

    #@23
    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@26
    goto :goto_0
.end method


# virtual methods
.method process(Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;I)V
    .locals 10
    .param p1, "newActive"    # Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;
    .param p2, "deviceType"    # I

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 64
    iget-object v5, p0, Lcom/android/server/hdmi/ActiveSourceHandler;->mSource:Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    #@3
    .line 65
    .local v5, "tv":Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;
    iget-object v6, p0, Lcom/android/server/hdmi/ActiveSourceHandler;->mService:Lcom/android/server/hdmi/HdmiControlService;

    #@5
    iget v7, p1, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;->logicalAddress:I

    #@7
    invoke-virtual {v6, v7}, Lcom/android/server/hdmi/HdmiControlService;->getDeviceInfo(I)Landroid/hardware/hdmi/HdmiDeviceInfo;

    #@a
    move-result-object v2

    #@b
    .line 66
    .local v2, "device":Landroid/hardware/hdmi/HdmiDeviceInfo;
    if-nez v2, :cond_0

    #@d
    .line 67
    invoke-virtual {v5, p1, p2}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->startNewDeviceAction(Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;I)V

    #@10
    .line 70
    :cond_0
    invoke-virtual {v5}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->isProhibitMode()Z

    #@13
    move-result v6

    #@14
    if-nez v6, :cond_3

    #@16
    .line 71
    invoke-virtual {v5}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getActiveSource()Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;

    #@19
    move-result-object v6

    #@1a
    invoke-static {v6}, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;->of(Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;)Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;

    #@1d
    move-result-object v4

    #@1e
    .line 72
    .local v4, "old":Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;
    invoke-virtual {v5, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->updateActiveSource(Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;)V

    #@21
    .line 73
    iget-object v6, p0, Lcom/android/server/hdmi/ActiveSourceHandler;->mCallback:Landroid/hardware/hdmi/IHdmiControlCallback;

    #@23
    if-nez v6, :cond_2

    #@25
    const/4 v3, 0x1

    #@26
    .line 74
    .local v3, "notifyInputChange":Z
    :goto_0
    invoke-virtual {v4, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;->equals(Ljava/lang/Object;)Z

    #@29
    move-result v6

    #@2a
    if-nez v6, :cond_1

    #@2c
    .line 75
    invoke-virtual {v5}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getActivePortId()I

    #@2f
    move-result v6

    #@30
    invoke-virtual {v5, v6}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->setPrevPortId(I)V

    #@33
    .line 77
    :cond_1
    iget v6, p1, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;->physicalAddress:I

    #@35
    invoke-virtual {v5, v6, v3}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->updateActiveInput(IZ)V

    #@38
    .line 78
    invoke-direct {p0, v8}, Lcom/android/server/hdmi/ActiveSourceHandler;->invokeCallback(I)V

    #@3b
    .line 62
    .end local v3    # "notifyInputChange":Z
    .end local v4    # "old":Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;
    :goto_1
    return-void

    #@3c
    .line 73
    .restart local v4    # "old":Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;
    :cond_2
    const/4 v3, 0x0

    #@3d
    .restart local v3    # "notifyInputChange":Z
    goto :goto_0

    #@3e
    .line 83
    .end local v3    # "notifyInputChange":Z
    .end local v4    # "old":Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;
    :cond_3
    invoke-virtual {v5}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getActiveSource()Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;

    #@41
    move-result-object v1

    #@42
    .line 84
    .local v1, "current":Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;
    iget v6, v1, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;->logicalAddress:I

    #@44
    invoke-direct {p0}, Lcom/android/server/hdmi/ActiveSourceHandler;->getSourceAddress()I

    #@47
    move-result v7

    #@48
    if-ne v6, v7, :cond_4

    #@4a
    .line 86
    iget v6, v1, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;->logicalAddress:I

    #@4c
    iget v7, v1, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;->physicalAddress:I

    #@4e
    .line 85
    invoke-static {v6, v7}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildActiveSource(II)Lcom/android/server/hdmi/HdmiCecMessage;

    #@51
    move-result-object v0

    #@52
    .line 87
    .local v0, "activeSourceCommand":Lcom/android/server/hdmi/HdmiCecMessage;
    iget-object v6, p0, Lcom/android/server/hdmi/ActiveSourceHandler;->mService:Lcom/android/server/hdmi/HdmiControlService;

    #@54
    invoke-virtual {v6, v0}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    #@57
    .line 88
    invoke-virtual {v5, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->updateActiveSource(Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;)V

    #@5a
    .line 89
    invoke-direct {p0, v8}, Lcom/android/server/hdmi/ActiveSourceHandler;->invokeCallback(I)V

    #@5d
    goto :goto_1

    #@5e
    .line 91
    .end local v0    # "activeSourceCommand":Lcom/android/server/hdmi/HdmiCecMessage;
    :cond_4
    iget v6, p1, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;->physicalAddress:I

    #@60
    iget v7, v1, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;->physicalAddress:I

    #@62
    .line 92
    iget-object v8, p0, Lcom/android/server/hdmi/ActiveSourceHandler;->mCallback:Landroid/hardware/hdmi/IHdmiControlCallback;

    #@64
    .line 91
    const/4 v9, 0x1

    #@65
    invoke-virtual {v5, v6, v7, v9, v8}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->startRoutingControl(IIZLandroid/hardware/hdmi/IHdmiControlCallback;)V

    #@68
    goto :goto_1
.end method

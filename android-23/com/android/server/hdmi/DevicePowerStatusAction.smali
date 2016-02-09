.class final Lcom/android/server/hdmi/DevicePowerStatusAction;
.super Lcom/android/server/hdmi/HdmiCecFeatureAction;
.source "DevicePowerStatusAction.java"


# static fields
.field private static final STATE_WAITING_FOR_REPORT_POWER_STATUS:I = 0x1

.field private static final TAG:Ljava/lang/String; = "DevicePowerStatusAction"


# instance fields
.field private final mCallback:Landroid/hardware/hdmi/IHdmiControlCallback;

.field private final mTargetAddress:I


# direct methods
.method private constructor <init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;ILandroid/hardware/hdmi/IHdmiControlCallback;)V
    .locals 0
    .param p1, "localDevice"    # Lcom/android/server/hdmi/HdmiCecLocalDevice;
    .param p2, "targetAddress"    # I
    .param p3, "callback"    # Landroid/hardware/hdmi/IHdmiControlCallback;

    #@0
    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;)V

    #@3
    .line 54
    iput p2, p0, Lcom/android/server/hdmi/DevicePowerStatusAction;->mTargetAddress:I

    #@5
    .line 55
    iput-object p3, p0, Lcom/android/server/hdmi/DevicePowerStatusAction;->mCallback:Landroid/hardware/hdmi/IHdmiControlCallback;

    #@7
    .line 52
    return-void
.end method

.method static create(Lcom/android/server/hdmi/HdmiCecLocalDevice;ILandroid/hardware/hdmi/IHdmiControlCallback;)Lcom/android/server/hdmi/DevicePowerStatusAction;
    .locals 3
    .param p0, "source"    # Lcom/android/server/hdmi/HdmiCecLocalDevice;
    .param p1, "targetAddress"    # I
    .param p2, "callback"    # Landroid/hardware/hdmi/IHdmiControlCallback;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 44
    if-eqz p0, :cond_0

    #@3
    if-nez p2, :cond_1

    #@5
    .line 45
    :cond_0
    const-string/jumbo v0, "DevicePowerStatusAction"

    #@8
    const-string/jumbo v1, "Wrong arguments"

    #@b
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@e
    .line 46
    return-object v2

    #@f
    .line 48
    :cond_1
    new-instance v0, Lcom/android/server/hdmi/DevicePowerStatusAction;

    #@11
    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/hdmi/DevicePowerStatusAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;ILandroid/hardware/hdmi/IHdmiControlCallback;)V

    #@14
    return-object v0
.end method

.method private invokeCallback(I)V
    .locals 4
    .param p1, "result"    # I

    #@0
    .prologue
    .line 100
    :try_start_0
    iget-object v1, p0, Lcom/android/server/hdmi/DevicePowerStatusAction;->mCallback:Landroid/hardware/hdmi/IHdmiControlCallback;

    #@2
    invoke-interface {v1, p1}, Landroid/hardware/hdmi/IHdmiControlCallback;->onComplete(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 98
    :goto_0
    return-void

    #@6
    .line 101
    :catch_0
    move-exception v0

    #@7
    .line 102
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "DevicePowerStatusAction"

    #@a
    new-instance v2, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string/jumbo v3, "Callback failed:"

    #@12
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v2

    #@16
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v2

    #@1a
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d
    move-result-object v2

    #@1e
    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@21
    goto :goto_0
.end method

.method private queryDevicePowerStatus()V
    .locals 2

    #@0
    .prologue
    .line 67
    invoke-virtual {p0}, Lcom/android/server/hdmi/DevicePowerStatusAction;->getSourceAddress()I

    #@3
    move-result v0

    #@4
    .line 68
    iget v1, p0, Lcom/android/server/hdmi/DevicePowerStatusAction;->mTargetAddress:I

    #@6
    .line 67
    invoke-static {v0, v1}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildGiveDevicePowerStatus(II)Lcom/android/server/hdmi/HdmiCecMessage;

    #@9
    move-result-object v0

    #@a
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/DevicePowerStatusAction;->sendCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    #@d
    .line 66
    return-void
.end method


# virtual methods
.method handleTimerEvent(I)V
    .locals 1
    .param p1, "state"    # I

    #@0
    .prologue
    .line 88
    iget v0, p0, Lcom/android/server/hdmi/DevicePowerStatusAction;->mState:I

    #@2
    if-eq v0, p1, :cond_0

    #@4
    .line 89
    return-void

    #@5
    .line 91
    :cond_0
    const/4 v0, 0x1

    #@6
    if-ne p1, v0, :cond_1

    #@8
    .line 93
    const/4 v0, -0x1

    #@9
    invoke-direct {p0, v0}, Lcom/android/server/hdmi/DevicePowerStatusAction;->invokeCallback(I)V

    #@c
    .line 94
    invoke-virtual {p0}, Lcom/android/server/hdmi/DevicePowerStatusAction;->finish()V

    #@f
    .line 87
    :cond_1
    return-void
.end method

.method processCommand(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .locals 5
    .param p1, "cmd"    # Lcom/android/server/hdmi/HdmiCecMessage;

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 73
    iget v1, p0, Lcom/android/server/hdmi/DevicePowerStatusAction;->mState:I

    #@4
    if-ne v1, v4, :cond_0

    #@6
    .line 74
    iget v1, p0, Lcom/android/server/hdmi/DevicePowerStatusAction;->mTargetAddress:I

    #@8
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    #@b
    move-result v2

    #@c
    if-eq v1, v2, :cond_1

    #@e
    .line 75
    :cond_0
    return v3

    #@f
    .line 77
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getOpcode()I

    #@12
    move-result v1

    #@13
    const/16 v2, 0x90

    #@15
    if-ne v1, v2, :cond_2

    #@17
    .line 78
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    #@1a
    move-result-object v1

    #@1b
    aget-byte v0, v1, v3

    #@1d
    .line 79
    .local v0, "status":I
    invoke-direct {p0, v0}, Lcom/android/server/hdmi/DevicePowerStatusAction;->invokeCallback(I)V

    #@20
    .line 80
    invoke-virtual {p0}, Lcom/android/server/hdmi/DevicePowerStatusAction;->finish()V

    #@23
    .line 81
    return v4

    #@24
    .line 83
    .end local v0    # "status":I
    :cond_2
    return v3
.end method

.method start()Z
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 60
    invoke-direct {p0}, Lcom/android/server/hdmi/DevicePowerStatusAction;->queryDevicePowerStatus()V

    #@4
    .line 61
    iput v2, p0, Lcom/android/server/hdmi/DevicePowerStatusAction;->mState:I

    #@6
    .line 62
    iget v0, p0, Lcom/android/server/hdmi/DevicePowerStatusAction;->mState:I

    #@8
    const/16 v1, 0x7d0

    #@a
    invoke-virtual {p0, v0, v1}, Lcom/android/server/hdmi/DevicePowerStatusAction;->addTimer(II)V

    #@d
    .line 63
    return v2
.end method

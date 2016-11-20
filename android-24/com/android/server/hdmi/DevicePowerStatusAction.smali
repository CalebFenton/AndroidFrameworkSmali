.class final Lcom/android/server/hdmi/DevicePowerStatusAction;
.super Lcom/android/server/hdmi/HdmiCecFeatureAction;
.source "DevicePowerStatusAction.java"


# static fields
.field private static final STATE_WAITING_FOR_REPORT_POWER_STATUS:I = 0x1

.field private static final TAG:Ljava/lang/String; = "DevicePowerStatusAction"


# instance fields
.field private final mCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/hardware/hdmi/IHdmiControlCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mTargetAddress:I


# direct methods
.method private constructor <init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;ILandroid/hardware/hdmi/IHdmiControlCallback;)V
    .locals 1
    .param p1, "localDevice"    # Lcom/android/server/hdmi/HdmiCecLocalDevice;
    .param p2, "targetAddress"    # I
    .param p3, "callback"    # Landroid/hardware/hdmi/IHdmiControlCallback;

    #@0
    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;)V

    #@3
    .line 43
    new-instance v0, Ljava/util/ArrayList;

    #@5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@8
    iput-object v0, p0, Lcom/android/server/hdmi/DevicePowerStatusAction;->mCallbacks:Ljava/util/List;

    #@a
    .line 57
    iput p2, p0, Lcom/android/server/hdmi/DevicePowerStatusAction;->mTargetAddress:I

    #@c
    .line 58
    invoke-virtual {p0, p3}, Lcom/android/server/hdmi/DevicePowerStatusAction;->addCallback(Landroid/hardware/hdmi/IHdmiControlCallback;)V

    #@f
    .line 55
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
    .line 47
    if-eqz p0, :cond_0

    #@3
    if-nez p2, :cond_1

    #@5
    .line 48
    :cond_0
    const-string/jumbo v0, "DevicePowerStatusAction"

    #@8
    const-string/jumbo v1, "Wrong arguments"

    #@b
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@e
    .line 49
    return-object v2

    #@f
    .line 51
    :cond_1
    new-instance v0, Lcom/android/server/hdmi/DevicePowerStatusAction;

    #@11
    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/hdmi/DevicePowerStatusAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;ILandroid/hardware/hdmi/IHdmiControlCallback;)V

    #@14
    return-object v0
.end method

.method private invokeCallback(I)V
    .locals 6
    .param p1, "result"    # I

    #@0
    .prologue
    .line 107
    :try_start_0
    iget-object v3, p0, Lcom/android/server/hdmi/DevicePowerStatusAction;->mCallbacks:Ljava/util/List;

    #@2
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@5
    move-result-object v1

    #@6
    .local v1, "callback$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@9
    move-result v3

    #@a
    if-eqz v3, :cond_0

    #@c
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Landroid/hardware/hdmi/IHdmiControlCallback;

    #@12
    .line 108
    .local v0, "callback":Landroid/hardware/hdmi/IHdmiControlCallback;
    invoke-interface {v0, p1}, Landroid/hardware/hdmi/IHdmiControlCallback;->onComplete(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@15
    goto :goto_0

    #@16
    .line 110
    .end local v0    # "callback":Landroid/hardware/hdmi/IHdmiControlCallback;
    .end local v1    # "callback$iterator":Ljava/util/Iterator;
    :catch_0
    move-exception v2

    #@17
    .line 111
    .local v2, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "DevicePowerStatusAction"

    #@1a
    new-instance v4, Ljava/lang/StringBuilder;

    #@1c
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@1f
    const-string/jumbo v5, "Callback failed:"

    #@22
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v4

    #@26
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v4

    #@2a
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2d
    move-result-object v4

    #@2e
    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@31
    .line 105
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_0
    return-void
.end method

.method private queryDevicePowerStatus()V
    .locals 2

    #@0
    .prologue
    .line 70
    invoke-virtual {p0}, Lcom/android/server/hdmi/DevicePowerStatusAction;->getSourceAddress()I

    #@3
    move-result v0

    #@4
    .line 71
    iget v1, p0, Lcom/android/server/hdmi/DevicePowerStatusAction;->mTargetAddress:I

    #@6
    .line 70
    invoke-static {v0, v1}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildGiveDevicePowerStatus(II)Lcom/android/server/hdmi/HdmiCecMessage;

    #@9
    move-result-object v0

    #@a
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/DevicePowerStatusAction;->sendCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    #@d
    .line 69
    return-void
.end method


# virtual methods
.method public addCallback(Landroid/hardware/hdmi/IHdmiControlCallback;)V
    .locals 1
    .param p1, "callback"    # Landroid/hardware/hdmi/IHdmiControlCallback;

    #@0
    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/server/hdmi/DevicePowerStatusAction;->mCallbacks:Ljava/util/List;

    #@2
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@5
    .line 101
    return-void
.end method

.method handleTimerEvent(I)V
    .locals 1
    .param p1, "state"    # I

    #@0
    .prologue
    .line 91
    iget v0, p0, Lcom/android/server/hdmi/DevicePowerStatusAction;->mState:I

    #@2
    if-eq v0, p1, :cond_0

    #@4
    .line 92
    return-void

    #@5
    .line 94
    :cond_0
    const/4 v0, 0x1

    #@6
    if-ne p1, v0, :cond_1

    #@8
    .line 96
    const/4 v0, -0x1

    #@9
    invoke-direct {p0, v0}, Lcom/android/server/hdmi/DevicePowerStatusAction;->invokeCallback(I)V

    #@c
    .line 97
    invoke-virtual {p0}, Lcom/android/server/hdmi/DevicePowerStatusAction;->finish()V

    #@f
    .line 90
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
    .line 76
    iget v1, p0, Lcom/android/server/hdmi/DevicePowerStatusAction;->mState:I

    #@4
    if-ne v1, v4, :cond_0

    #@6
    .line 77
    iget v1, p0, Lcom/android/server/hdmi/DevicePowerStatusAction;->mTargetAddress:I

    #@8
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    #@b
    move-result v2

    #@c
    if-eq v1, v2, :cond_1

    #@e
    .line 78
    :cond_0
    return v3

    #@f
    .line 80
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getOpcode()I

    #@12
    move-result v1

    #@13
    const/16 v2, 0x90

    #@15
    if-ne v1, v2, :cond_2

    #@17
    .line 81
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    #@1a
    move-result-object v1

    #@1b
    aget-byte v0, v1, v3

    #@1d
    .line 82
    .local v0, "status":I
    invoke-direct {p0, v0}, Lcom/android/server/hdmi/DevicePowerStatusAction;->invokeCallback(I)V

    #@20
    .line 83
    invoke-virtual {p0}, Lcom/android/server/hdmi/DevicePowerStatusAction;->finish()V

    #@23
    .line 84
    return v4

    #@24
    .line 86
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
    .line 63
    invoke-direct {p0}, Lcom/android/server/hdmi/DevicePowerStatusAction;->queryDevicePowerStatus()V

    #@4
    .line 64
    iput v2, p0, Lcom/android/server/hdmi/DevicePowerStatusAction;->mState:I

    #@6
    .line 65
    iget v0, p0, Lcom/android/server/hdmi/DevicePowerStatusAction;->mState:I

    #@8
    const/16 v1, 0x7d0

    #@a
    invoke-virtual {p0, v0, v1}, Lcom/android/server/hdmi/DevicePowerStatusAction;->addTimer(II)V

    #@d
    .line 66
    return v2
.end method

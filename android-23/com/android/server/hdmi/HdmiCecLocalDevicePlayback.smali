.class final Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;
.super Lcom/android/server/hdmi/HdmiCecLocalDevice;
.source "HdmiCecLocalDevicePlayback.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$ActiveWakeLock;,
        Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$SystemWakeLock;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "HdmiCecLocalDevicePlayback"

.field private static final WAKE_ON_HOTPLUG:Z


# instance fields
.field private mAutoTvOff:Z

.field private mIsActiveSource:Z

.field private mWakeLock:Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$ActiveWakeLock;


# direct methods
.method static synthetic -get0(Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mIsActiveSource:Z

    #@2
    return v0
.end method

.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 45
    const-string/jumbo v0, "ro.hdmi.wake_on_hotplug"

    #@3
    const/4 v1, 0x1

    #@4
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    #@7
    move-result v0

    #@8
    .line 44
    sput-boolean v0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->WAKE_ON_HOTPLUG:Z

    #@a
    .line 41
    return-void
.end method

.method constructor <init>(Lcom/android/server/hdmi/HdmiControlService;)V
    .locals 3
    .param p1, "service"    # Lcom/android/server/hdmi/HdmiControlService;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 61
    const/4 v0, 0x4

    #@2
    invoke-direct {p0, p1, v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;-><init>(Lcom/android/server/hdmi/HdmiControlService;I)V

    #@5
    .line 47
    iput-boolean v2, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mIsActiveSource:Z

    #@7
    .line 63
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mService:Lcom/android/server/hdmi/HdmiControlService;

    #@9
    const-string/jumbo v1, "hdmi_control_auto_device_off_enabled"

    #@c
    invoke-virtual {v0, v1, v2}, Lcom/android/server/hdmi/HdmiControlService;->readBooleanSetting(Ljava/lang/String;Z)Z

    #@f
    move-result v0

    #@10
    iput-boolean v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mAutoTvOff:Z

    #@12
    .line 67
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mService:Lcom/android/server/hdmi/HdmiControlService;

    #@14
    const-string/jumbo v1, "hdmi_control_auto_device_off_enabled"

    #@17
    iget-boolean v2, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mAutoTvOff:Z

    #@19
    invoke-virtual {v0, v1, v2}, Lcom/android/server/hdmi/HdmiControlService;->writeBooleanSetting(Ljava/lang/String;Z)V

    #@1c
    .line 60
    return-void
.end method

.method private getWakeLock()Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$ActiveWakeLock;
    .locals 2
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    #@0
    .prologue
    .line 202
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->assertRunOnServiceThread()V

    #@3
    .line 203
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mWakeLock:Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$ActiveWakeLock;

    #@5
    if-nez v0, :cond_0

    #@7
    .line 204
    const-string/jumbo v0, "persist.sys.hdmi.keep_awake"

    #@a
    const/4 v1, 0x1

    #@b
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    #@e
    move-result v0

    #@f
    if-eqz v0, :cond_1

    #@11
    .line 205
    new-instance v0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$SystemWakeLock;

    #@13
    invoke-direct {v0, p0}, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$SystemWakeLock;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;)V

    #@16
    iput-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mWakeLock:Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$ActiveWakeLock;

    #@18
    .line 220
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mWakeLock:Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$ActiveWakeLock;

    #@1a
    return-object v0

    #@1b
    .line 209
    :cond_1
    new-instance v0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$1;

    #@1d
    invoke-direct {v0, p0}, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$1;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;)V

    #@20
    iput-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mWakeLock:Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$ActiveWakeLock;

    #@22
    .line 217
    const-string/jumbo v0, "No wakelock is used to keep the display on."

    #@25
    const/4 v1, 0x0

    #@26
    new-array v1, v1, [Ljava/lang/Object;

    #@28
    invoke-static {v0, v1}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    #@2b
    goto :goto_0
.end method

.method private invokeCallback(Landroid/hardware/hdmi/IHdmiControlCallback;I)V
    .locals 4
    .param p1, "callback"    # Landroid/hardware/hdmi/IHdmiControlCallback;
    .param p2, "result"    # I
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    #@0
    .prologue
    .line 138
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->assertRunOnServiceThread()V

    #@3
    .line 140
    :try_start_0
    invoke-interface {p1, p2}, Landroid/hardware/hdmi/IHdmiControlCallback;->onComplete(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@6
    .line 137
    :goto_0
    return-void

    #@7
    .line 141
    :catch_0
    move-exception v0

    #@8
    .line 142
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "HdmiCecLocalDevicePlayback"

    #@b
    new-instance v2, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string/jumbo v3, "Invoking callback failed:"

    #@13
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v2

    #@17
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v2

    #@1b
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v2

    #@1f
    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@22
    goto :goto_0
.end method

.method private mayResetActiveSource(I)V
    .locals 1
    .param p1, "physicalAddress"    # I

    #@0
    .prologue
    .line 238
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mService:Lcom/android/server/hdmi/HdmiControlService;

    #@2
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->getPhysicalAddress()I

    #@5
    move-result v0

    #@6
    if-eq p1, v0, :cond_0

    #@8
    .line 239
    const/4 v0, 0x0

    #@9
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->setActiveSource(Z)V

    #@c
    .line 237
    :cond_0
    return-void
.end method

.method private maySendActiveSource(I)V
    .locals 3
    .param p1, "dest"    # I

    #@0
    .prologue
    .line 298
    iget-boolean v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mIsActiveSource:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 299
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mService:Lcom/android/server/hdmi/HdmiControlService;

    #@6
    .line 300
    iget v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mAddress:I

    #@8
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mService:Lcom/android/server/hdmi/HdmiControlService;

    #@a
    invoke-virtual {v2}, Lcom/android/server/hdmi/HdmiControlService;->getPhysicalAddress()I

    #@d
    move-result v2

    #@e
    .line 299
    invoke-static {v1, v2}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildActiveSource(II)Lcom/android/server/hdmi/HdmiCecMessage;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    #@15
    .line 302
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mService:Lcom/android/server/hdmi/HdmiControlService;

    #@17
    .line 303
    iget v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mAddress:I

    #@19
    const/4 v2, 0x0

    #@1a
    .line 302
    invoke-static {v1, p1, v2}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildReportMenuStatus(III)Lcom/android/server/hdmi/HdmiCecMessage;

    #@1d
    move-result-object v1

    #@1e
    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    #@21
    .line 297
    :cond_0
    return-void
.end method

.method private maySetActiveSource(I)V
    .locals 1
    .param p1, "physicalAddress"    # I

    #@0
    .prologue
    .line 283
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mService:Lcom/android/server/hdmi/HdmiControlService;

    #@2
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->getPhysicalAddress()I

    #@5
    move-result v0

    #@6
    if-ne p1, v0, :cond_0

    #@8
    const/4 v0, 0x1

    #@9
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->setActiveSource(Z)V

    #@c
    .line 282
    return-void

    #@d
    .line 283
    :cond_0
    const/4 v0, 0x0

    #@e
    goto :goto_0
.end method

.method private wakeUpIfActiveSource()V
    .locals 1

    #@0
    .prologue
    .line 287
    iget-boolean v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mIsActiveSource:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 288
    return-void

    #@5
    .line 292
    :cond_0
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mService:Lcom/android/server/hdmi/HdmiControlService;

    #@7
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->isPowerStandbyOrTransient()Z

    #@a
    move-result v0

    #@b
    if-nez v0, :cond_1

    #@d
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mService:Lcom/android/server/hdmi/HdmiControlService;

    #@f
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->getPowerManager()Landroid/os/PowerManager;

    #@12
    move-result-object v0

    #@13
    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    #@16
    move-result v0

    #@17
    if-eqz v0, :cond_1

    #@19
    .line 286
    :goto_0
    return-void

    #@1a
    .line 293
    :cond_1
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mService:Lcom/android/server/hdmi/HdmiControlService;

    #@1c
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->wakeUp()V

    #@1f
    goto :goto_0
.end method


# virtual methods
.method protected canGoToStandby()Z
    .locals 1

    #@0
    .prologue
    .line 225
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->getWakeLock()Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$ActiveWakeLock;

    #@3
    move-result-object v0

    #@4
    invoke-interface {v0}, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$ActiveWakeLock;->isHeld()Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_0

    #@a
    const/4 v0, 0x0

    #@b
    :goto_0
    return v0

    #@c
    :cond_0
    const/4 v0, 0x1

    #@d
    goto :goto_0
.end method

.method protected disableDevice(ZLcom/android/server/hdmi/HdmiCecLocalDevice$PendingActionClearedCallback;)V
    .locals 3
    .param p1, "initiatedByCec"    # Z
    .param p2, "callback"    # Lcom/android/server/hdmi/HdmiCecLocalDevice$PendingActionClearedCallback;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    #@0
    .prologue
    .line 364
    invoke-super {p0, p1, p2}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->disableDevice(ZLcom/android/server/hdmi/HdmiCecLocalDevice$PendingActionClearedCallback;)V

    #@3
    .line 366
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->assertRunOnServiceThread()V

    #@6
    .line 367
    if-nez p1, :cond_0

    #@8
    iget-boolean v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mIsActiveSource:Z

    #@a
    if-eqz v0, :cond_0

    #@c
    .line 368
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mService:Lcom/android/server/hdmi/HdmiControlService;

    #@e
    .line 369
    iget v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mAddress:I

    #@10
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mService:Lcom/android/server/hdmi/HdmiControlService;

    #@12
    invoke-virtual {v2}, Lcom/android/server/hdmi/HdmiControlService;->getPhysicalAddress()I

    #@15
    move-result v2

    #@16
    .line 368
    invoke-static {v1, v2}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildInactiveSource(II)Lcom/android/server/hdmi/HdmiCecMessage;

    #@19
    move-result-object v1

    #@1a
    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    #@1d
    .line 371
    :cond_0
    const/4 v0, 0x0

    #@1e
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->setActiveSource(Z)V

    #@21
    .line 372
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->checkIfPendingActionsCleared()V

    #@24
    .line 363
    return-void
.end method

.method protected dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 2
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    #@0
    .prologue
    .line 377
    invoke-super {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    #@3
    .line 378
    new-instance v0, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v1, "mIsActiveSource: "

    #@b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v0

    #@f
    iget-boolean v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mIsActiveSource:Z

    #@11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@14
    move-result-object v0

    #@15
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@18
    move-result-object v0

    #@19
    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@1c
    .line 379
    new-instance v0, Ljava/lang/StringBuilder;

    #@1e
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@21
    const-string/jumbo v1, "mAutoTvOff:"

    #@24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v0

    #@28
    iget-boolean v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mAutoTvOff:Z

    #@2a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v0

    #@2e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@31
    move-result-object v0

    #@32
    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@35
    .line 376
    return-void
.end method

.method protected getPreferredAddress()I
    .locals 2
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    #@0
    .prologue
    .line 84
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->assertRunOnServiceThread()V

    #@3
    .line 85
    const-string/jumbo v0, "persist.sys.hdmi.addr.playback"

    #@6
    .line 86
    const/16 v1, 0xf

    #@8
    .line 85
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    #@b
    move-result v0

    #@c
    return v0
.end method

.method protected handleActiveSource(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .locals 2
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    #@0
    .prologue
    .line 231
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->assertRunOnServiceThread()V

    #@3
    .line 232
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    #@6
    move-result-object v1

    #@7
    invoke-static {v1}, Lcom/android/server/hdmi/HdmiUtils;->twoBytesToInt([B)I

    #@a
    move-result v0

    #@b
    .line 233
    .local v0, "physicalAddress":I
    invoke-direct {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mayResetActiveSource(I)V

    #@e
    .line 234
    const/4 v1, 0x1

    #@f
    return v1
.end method

.method protected handleRequestActiveSource(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .locals 1
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    #@0
    .prologue
    .line 310
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->assertRunOnServiceThread()V

    #@3
    .line 311
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    #@6
    move-result v0

    #@7
    invoke-direct {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->maySendActiveSource(I)V

    #@a
    .line 312
    const/4 v0, 0x1

    #@b
    return v0
.end method

.method protected handleRoutingChange(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .locals 3
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    #@0
    .prologue
    .line 267
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->assertRunOnServiceThread()V

    #@3
    .line 268
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    #@6
    move-result-object v1

    #@7
    const/4 v2, 0x2

    #@8
    invoke-static {v1, v2}, Lcom/android/server/hdmi/HdmiUtils;->twoBytesToInt([BI)I

    #@b
    move-result v0

    #@c
    .line 269
    .local v0, "newPath":I
    invoke-direct {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->maySetActiveSource(I)V

    #@f
    .line 270
    const/4 v1, 0x1

    #@10
    return v1
.end method

.method protected handleRoutingInformation(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .locals 2
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    #@0
    .prologue
    .line 276
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->assertRunOnServiceThread()V

    #@3
    .line 277
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    #@6
    move-result-object v1

    #@7
    invoke-static {v1}, Lcom/android/server/hdmi/HdmiUtils;->twoBytesToInt([B)I

    #@a
    move-result v0

    #@b
    .line 278
    .local v0, "physicalAddress":I
    invoke-direct {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->maySetActiveSource(I)V

    #@e
    .line 279
    const/4 v1, 0x1

    #@f
    return v1
.end method

.method protected handleSetMenuLanguage(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .locals 12
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    #@0
    .prologue
    const/4 v11, 0x1

    #@1
    const/4 v10, 0x0

    #@2
    .line 317
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->assertRunOnServiceThread()V

    #@5
    .line 320
    :try_start_0
    new-instance v2, Ljava/lang/String;

    #@7
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    #@a
    move-result-object v6

    #@b
    const-string/jumbo v7, "US-ASCII"

    #@e
    const/4 v8, 0x0

    #@f
    const/4 v9, 0x3

    #@10
    invoke-direct {v2, v6, v8, v9, v7}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    #@13
    .line 321
    .local v2, "iso3Language":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mService:Lcom/android/server/hdmi/HdmiControlService;

    #@15
    invoke-virtual {v6}, Lcom/android/server/hdmi/HdmiControlService;->getContext()Landroid/content/Context;

    #@18
    move-result-object v6

    #@19
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@1c
    move-result-object v6

    #@1d
    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    #@20
    move-result-object v6

    #@21
    iget-object v0, v6, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    #@23
    .line 322
    .local v0, "currentLocale":Ljava/util/Locale;
    invoke-virtual {v0}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    #@26
    move-result-object v6

    #@27
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2a
    move-result v6

    #@2b
    if-eqz v6, :cond_0

    #@2d
    .line 326
    return v11

    #@2e
    .line 332
    :cond_0
    iget-object v6, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mService:Lcom/android/server/hdmi/HdmiControlService;

    #@30
    invoke-virtual {v6}, Lcom/android/server/hdmi/HdmiControlService;->getContext()Landroid/content/Context;

    #@33
    move-result-object v6

    #@34
    const/4 v7, 0x0

    #@35
    .line 331
    invoke-static {v6, v7}, Lcom/android/internal/app/LocalePicker;->getAllAssetLocales(Landroid/content/Context;Z)Ljava/util/List;

    #@38
    move-result-object v5

    #@39
    .line 333
    .local v5, "localeInfos":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/LocalePicker$LocaleInfo;>;"
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@3c
    move-result-object v4

    #@3d
    .local v4, "localeInfo$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    #@40
    move-result v6

    #@41
    if-eqz v6, :cond_2

    #@43
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@46
    move-result-object v3

    #@47
    check-cast v3, Lcom/android/internal/app/LocalePicker$LocaleInfo;

    #@49
    .line 334
    .local v3, "localeInfo":Lcom/android/internal/app/LocalePicker$LocaleInfo;
    invoke-virtual {v3}, Lcom/android/internal/app/LocalePicker$LocaleInfo;->getLocale()Ljava/util/Locale;

    #@4c
    move-result-object v6

    #@4d
    invoke-virtual {v6}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    #@50
    move-result-object v6

    #@51
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@54
    move-result v6

    #@55
    if-eqz v6, :cond_1

    #@57
    .line 340
    invoke-virtual {v3}, Lcom/android/internal/app/LocalePicker$LocaleInfo;->getLocale()Ljava/util/Locale;

    #@5a
    move-result-object v6

    #@5b
    invoke-static {v6}, Lcom/android/internal/app/LocalePicker;->updateLocale(Ljava/util/Locale;)V

    #@5e
    .line 341
    return v11

    #@5f
    .line 344
    .end local v3    # "localeInfo":Lcom/android/internal/app/LocalePicker$LocaleInfo;
    :cond_2
    const-string/jumbo v6, "HdmiCecLocalDevicePlayback"

    #@62
    new-instance v7, Ljava/lang/StringBuilder;

    #@64
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@67
    const-string/jumbo v8, "Can\'t handle <Set Menu Language> of "

    #@6a
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6d
    move-result-object v7

    #@6e
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@71
    move-result-object v7

    #@72
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@75
    move-result-object v7

    #@76
    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    #@79
    .line 345
    return v10

    #@7a
    .line 346
    .end local v0    # "currentLocale":Ljava/util/Locale;
    .end local v2    # "iso3Language":Ljava/lang/String;
    .end local v4    # "localeInfo$iterator":Ljava/util/Iterator;
    .end local v5    # "localeInfos":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/LocalePicker$LocaleInfo;>;"
    :catch_0
    move-exception v1

    #@7b
    .line 347
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    return v10
.end method

.method protected handleSetStreamPath(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .locals 2
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    #@0
    .prologue
    .line 253
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->assertRunOnServiceThread()V

    #@3
    .line 254
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    #@6
    move-result-object v1

    #@7
    invoke-static {v1}, Lcom/android/server/hdmi/HdmiUtils;->twoBytesToInt([B)I

    #@a
    move-result v0

    #@b
    .line 255
    .local v0, "physicalAddress":I
    invoke-direct {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->maySetActiveSource(I)V

    #@e
    .line 256
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    #@11
    move-result v1

    #@12
    invoke-direct {p0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->maySendActiveSource(I)V

    #@15
    .line 257
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->wakeUpIfActiveSource()V

    #@18
    .line 258
    const/4 v1, 0x1

    #@19
    return v1
.end method

.method protected handleUserControlPressed(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .locals 1
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    #@0
    .prologue
    .line 245
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->assertRunOnServiceThread()V

    #@3
    .line 246
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->wakeUpIfActiveSource()V

    #@6
    .line 247
    invoke-super {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->handleUserControlPressed(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    #@9
    move-result v0

    #@a
    return v0
.end method

.method protected onAddressAllocated(II)V
    .locals 4
    .param p1, "logicalAddress"    # I
    .param p2, "reason"    # I
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    #@0
    .prologue
    .line 73
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->assertRunOnServiceThread()V

    #@3
    .line 74
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mService:Lcom/android/server/hdmi/HdmiControlService;

    #@5
    .line 75
    iget v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mAddress:I

    #@7
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mService:Lcom/android/server/hdmi/HdmiControlService;

    #@9
    invoke-virtual {v2}, Lcom/android/server/hdmi/HdmiControlService;->getPhysicalAddress()I

    #@c
    move-result v2

    #@d
    iget v3, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mDeviceType:I

    #@f
    .line 74
    invoke-static {v1, v2, v3}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildReportPhysicalAddressCommand(III)Lcom/android/server/hdmi/HdmiCecMessage;

    #@12
    move-result-object v1

    #@13
    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    #@16
    .line 76
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mService:Lcom/android/server/hdmi/HdmiControlService;

    #@18
    .line 77
    iget v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mAddress:I

    #@1a
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mService:Lcom/android/server/hdmi/HdmiControlService;

    #@1c
    invoke-virtual {v2}, Lcom/android/server/hdmi/HdmiControlService;->getVendorId()I

    #@1f
    move-result v2

    #@20
    .line 76
    invoke-static {v1, v2}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildDeviceVendorIdCommand(II)Lcom/android/server/hdmi/HdmiCecMessage;

    #@23
    move-result-object v1

    #@24
    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    #@27
    .line 78
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->startQueuedActions()V

    #@2a
    .line 72
    return-void
.end method

.method onHotplug(IZ)V
    .locals 1
    .param p1, "portId"    # I
    .param p2, "connected"    # Z
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    #@0
    .prologue
    .line 149
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->assertRunOnServiceThread()V

    #@3
    .line 150
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mCecMessageCache:Lcom/android/server/hdmi/HdmiCecMessageCache;

    #@5
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecMessageCache;->flushAll()V

    #@8
    .line 152
    sget-boolean v0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->WAKE_ON_HOTPLUG:Z

    #@a
    if-eqz v0, :cond_0

    #@c
    if-eqz p2, :cond_0

    #@e
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mService:Lcom/android/server/hdmi/HdmiControlService;

    #@10
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->isPowerStandbyOrTransient()Z

    #@13
    move-result v0

    #@14
    if-eqz v0, :cond_0

    #@16
    .line 153
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mService:Lcom/android/server/hdmi/HdmiControlService;

    #@18
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->wakeUp()V

    #@1b
    .line 155
    :cond_0
    if-nez p2, :cond_1

    #@1d
    .line 156
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->getWakeLock()Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$ActiveWakeLock;

    #@20
    move-result-object v0

    #@21
    invoke-interface {v0}, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$ActiveWakeLock;->release()V

    #@24
    .line 148
    :cond_1
    return-void
.end method

.method protected onStandby(ZI)V
    .locals 3
    .param p1, "initiatedByCec"    # Z
    .param p2, "standbyAction"    # I
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    #@0
    .prologue
    .line 163
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->assertRunOnServiceThread()V

    #@3
    .line 164
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mService:Lcom/android/server/hdmi/HdmiControlService;

    #@5
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->isControlEnabled()Z

    #@8
    move-result v0

    #@9
    if-eqz v0, :cond_0

    #@b
    if-eqz p1, :cond_1

    #@d
    .line 165
    :cond_0
    return-void

    #@e
    .line 167
    :cond_1
    packed-switch p2, :pswitch_data_0

    #@11
    .line 162
    :cond_2
    :goto_0
    return-void

    #@12
    .line 169
    :pswitch_0
    iget-boolean v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mAutoTvOff:Z

    #@14
    if-eqz v0, :cond_2

    #@16
    .line 170
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mService:Lcom/android/server/hdmi/HdmiControlService;

    #@18
    .line 171
    iget v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mAddress:I

    #@1a
    const/4 v2, 0x0

    #@1b
    invoke-static {v1, v2}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildStandby(II)Lcom/android/server/hdmi/HdmiCecMessage;

    #@1e
    move-result-object v1

    #@1f
    .line 170
    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    #@22
    goto :goto_0

    #@23
    .line 176
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mService:Lcom/android/server/hdmi/HdmiControlService;

    #@25
    .line 177
    iget v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mAddress:I

    #@27
    const/16 v2, 0xf

    #@29
    invoke-static {v1, v2}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildStandby(II)Lcom/android/server/hdmi/HdmiCecMessage;

    #@2c
    move-result-object v1

    #@2d
    .line 176
    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    #@30
    goto :goto_0

    #@31
    .line 167
    nop

    #@32
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method oneTouchPlay(Landroid/hardware/hdmi/IHdmiControlCallback;)V
    .locals 3
    .param p1, "callback"    # Landroid/hardware/hdmi/IHdmiControlCallback;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    #@0
    .prologue
    .line 99
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->assertRunOnServiceThread()V

    #@3
    .line 100
    const-class v1, Lcom/android/server/hdmi/OneTouchPlayAction;

    #@5
    invoke-virtual {p0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->hasAction(Ljava/lang/Class;)Z

    #@8
    move-result v1

    #@9
    if-eqz v1, :cond_0

    #@b
    .line 101
    const-string/jumbo v1, "HdmiCecLocalDevicePlayback"

    #@e
    const-string/jumbo v2, "oneTouchPlay already in progress"

    #@11
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@14
    .line 102
    const/4 v1, 0x4

    #@15
    invoke-direct {p0, p1, v1}, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->invokeCallback(Landroid/hardware/hdmi/IHdmiControlCallback;I)V

    #@18
    .line 103
    return-void

    #@19
    .line 108
    :cond_0
    const/4 v1, 0x0

    #@1a
    invoke-static {p0, v1, p1}, Lcom/android/server/hdmi/OneTouchPlayAction;->create(Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;ILandroid/hardware/hdmi/IHdmiControlCallback;)Lcom/android/server/hdmi/OneTouchPlayAction;

    #@1d
    move-result-object v0

    #@1e
    .line 110
    .local v0, "action":Lcom/android/server/hdmi/OneTouchPlayAction;
    if-nez v0, :cond_1

    #@20
    .line 111
    const-string/jumbo v1, "HdmiCecLocalDevicePlayback"

    #@23
    const-string/jumbo v2, "Cannot initiate oneTouchPlay"

    #@26
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@29
    .line 112
    const/4 v1, 0x5

    #@2a
    invoke-direct {p0, p1, v1}, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->invokeCallback(Landroid/hardware/hdmi/IHdmiControlCallback;I)V

    #@2d
    .line 113
    return-void

    #@2e
    .line 115
    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->addAndStartAction(Lcom/android/server/hdmi/HdmiCecFeatureAction;)V

    #@31
    .line 98
    return-void
.end method

.method queryDisplayStatus(Landroid/hardware/hdmi/IHdmiControlCallback;)V
    .locals 3
    .param p1, "callback"    # Landroid/hardware/hdmi/IHdmiControlCallback;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    #@0
    .prologue
    .line 120
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->assertRunOnServiceThread()V

    #@3
    .line 121
    const-class v1, Lcom/android/server/hdmi/DevicePowerStatusAction;

    #@5
    invoke-virtual {p0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->hasAction(Ljava/lang/Class;)Z

    #@8
    move-result v1

    #@9
    if-eqz v1, :cond_0

    #@b
    .line 122
    const-string/jumbo v1, "HdmiCecLocalDevicePlayback"

    #@e
    const-string/jumbo v2, "queryDisplayStatus already in progress"

    #@11
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@14
    .line 123
    const/4 v1, 0x4

    #@15
    invoke-direct {p0, p1, v1}, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->invokeCallback(Landroid/hardware/hdmi/IHdmiControlCallback;I)V

    #@18
    .line 124
    return-void

    #@19
    .line 127
    :cond_0
    const/4 v1, 0x0

    #@1a
    .line 126
    invoke-static {p0, v1, p1}, Lcom/android/server/hdmi/DevicePowerStatusAction;->create(Lcom/android/server/hdmi/HdmiCecLocalDevice;ILandroid/hardware/hdmi/IHdmiControlCallback;)Lcom/android/server/hdmi/DevicePowerStatusAction;

    #@1d
    move-result-object v0

    #@1e
    .line 128
    .local v0, "action":Lcom/android/server/hdmi/DevicePowerStatusAction;
    if-nez v0, :cond_1

    #@20
    .line 129
    const-string/jumbo v1, "HdmiCecLocalDevicePlayback"

    #@23
    const-string/jumbo v2, "Cannot initiate queryDisplayStatus"

    #@26
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@29
    .line 130
    const/4 v1, 0x5

    #@2a
    invoke-direct {p0, p1, v1}, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->invokeCallback(Landroid/hardware/hdmi/IHdmiControlCallback;I)V

    #@2d
    .line 131
    return-void

    #@2e
    .line 133
    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->addAndStartAction(Lcom/android/server/hdmi/HdmiCecFeatureAction;)V

    #@31
    .line 119
    return-void
.end method

.method protected sendStandby(I)V
    .locals 3
    .param p1, "deviceId"    # I
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    #@0
    .prologue
    .line 354
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->assertRunOnServiceThread()V

    #@3
    .line 357
    const/4 v0, 0x0

    #@4
    .line 358
    .local v0, "targetAddress":I
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mService:Lcom/android/server/hdmi/HdmiControlService;

    #@6
    iget v2, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mAddress:I

    #@8
    invoke-static {v2, v0}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildStandby(II)Lcom/android/server/hdmi/HdmiCecMessage;

    #@b
    move-result-object v2

    #@c
    invoke-virtual {v1, v2}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    #@f
    .line 353
    return-void
.end method

.method setActiveSource(Z)V
    .locals 1
    .param p1, "on"    # Z
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    #@0
    .prologue
    .line 191
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->assertRunOnServiceThread()V

    #@3
    .line 192
    iput-boolean p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mIsActiveSource:Z

    #@5
    .line 193
    if-eqz p1, :cond_0

    #@7
    .line 194
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->getWakeLock()Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$ActiveWakeLock;

    #@a
    move-result-object v0

    #@b
    invoke-interface {v0}, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$ActiveWakeLock;->acquire()V

    #@e
    .line 190
    :goto_0
    return-void

    #@f
    .line 196
    :cond_0
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->getWakeLock()Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$ActiveWakeLock;

    #@12
    move-result-object v0

    #@13
    invoke-interface {v0}, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$ActiveWakeLock;->release()V

    #@16
    goto :goto_0
.end method

.method setAutoDeviceOff(Z)V
    .locals 0
    .param p1, "enabled"    # Z
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    #@0
    .prologue
    .line 185
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->assertRunOnServiceThread()V

    #@3
    .line 186
    iput-boolean p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mAutoTvOff:Z

    #@5
    .line 184
    return-void
.end method

.method protected setPreferredAddress(I)V
    .locals 2
    .param p1, "addr"    # I
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    #@0
    .prologue
    .line 92
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->assertRunOnServiceThread()V

    #@3
    .line 93
    const-string/jumbo v0, "persist.sys.hdmi.addr.playback"

    #@6
    .line 94
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    #@9
    move-result-object v1

    #@a
    .line 93
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    #@d
    .line 91
    return-void
.end method

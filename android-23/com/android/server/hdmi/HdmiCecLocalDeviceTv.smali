.class final Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;
.super Lcom/android/server/hdmi/HdmiCecLocalDevice;
.source "HdmiCecLocalDeviceTv.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/hdmi/HdmiCecLocalDeviceTv$1;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "HdmiCecLocalDeviceTv"


# instance fields
.field private mArcEstablished:Z
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation
.end field

.field private final mArcFeatureEnabled:Landroid/util/SparseBooleanArray;

.field private mAutoDeviceOff:Z

.field private mAutoWakeup:Z

.field private final mCecSwitches:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mDelayedMessageBuffer:Lcom/android/server/hdmi/DelayedMessageBuffer;

.field private final mDeviceInfos:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/hardware/hdmi/HdmiDeviceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mLocalDeviceAddresses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mPrevPortId:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mSafeAllDeviceInfos:Ljava/util/List;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/hardware/hdmi/HdmiDeviceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mSafeExternalInputs:Ljava/util/List;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/hardware/hdmi/HdmiDeviceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mSkipRoutingControl:Z

.field private final mStandbyHandler:Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;

.field private mSystemAudioActivated:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mSystemAudioMute:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mSystemAudioVolume:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mTvInputCallback:Landroid/media/tv/TvInputManager$TvInputCallback;

.field private final mTvInputs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -wrap0(Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;Ljava/lang/String;I)V
    .locals 0
    .param p1, "inputId"    # Ljava/lang/String;
    .param p2, "deviceId"    # I

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->addTvInput(Ljava/lang/String;I)V

    #@3
    return-void
.end method

.method static synthetic -wrap1(Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;Ljava/lang/String;)V
    .locals 0
    .param p1, "inputId"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->removeTvInput(Ljava/lang/String;)V

    #@3
    return-void
.end method

.method constructor <init>(Lcom/android/server/hdmi/HdmiControlService;)V
    .locals 4
    .param p1, "service"    # Lcom/android/server/hdmi/HdmiControlService;

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v2, -0x1

    #@2
    const/4 v1, 0x0

    #@3
    .line 181
    invoke-direct {p0, p1, v1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;-><init>(Lcom/android/server/hdmi/HdmiControlService;I)V

    #@6
    .line 73
    iput-boolean v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mArcEstablished:Z

    #@8
    .line 76
    new-instance v0, Landroid/util/SparseBooleanArray;

    #@a
    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    #@d
    iput-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mArcFeatureEnabled:Landroid/util/SparseBooleanArray;

    #@f
    .line 81
    iput-boolean v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mSystemAudioActivated:Z

    #@11
    .line 92
    iput v2, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mSystemAudioVolume:I

    #@13
    .line 95
    iput-boolean v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mSystemAudioMute:Z

    #@15
    .line 99
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    #@18
    move-result-object v0

    #@19
    iput-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mSafeAllDeviceInfos:Ljava/util/List;

    #@1b
    .line 102
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    #@1e
    move-result-object v0

    #@1f
    iput-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mSafeExternalInputs:Ljava/util/List;

    #@21
    .line 107
    new-instance v0, Landroid/util/SparseArray;

    #@23
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    #@26
    iput-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mDeviceInfos:Landroid/util/SparseArray;

    #@28
    .line 126
    new-instance v0, Landroid/util/ArraySet;

    #@2a
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    #@2d
    iput-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mCecSwitches:Landroid/util/ArraySet;

    #@2f
    .line 132
    new-instance v0, Lcom/android/server/hdmi/DelayedMessageBuffer;

    #@31
    invoke-direct {v0, p0}, Lcom/android/server/hdmi/DelayedMessageBuffer;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;)V

    #@34
    iput-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mDelayedMessageBuffer:Lcom/android/server/hdmi/DelayedMessageBuffer;

    #@36
    .line 137
    new-instance v0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv$1;

    #@38
    invoke-direct {v0, p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv$1;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;)V

    #@3b
    iput-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mTvInputCallback:Landroid/media/tv/TvInputManager$TvInputCallback;

    #@3d
    .line 159
    new-instance v0, Ljava/util/HashMap;

    #@3f
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@42
    iput-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mTvInputs:Ljava/util/HashMap;

    #@44
    .line 182
    iput v2, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mPrevPortId:I

    #@46
    .line 183
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mService:Lcom/android/server/hdmi/HdmiControlService;

    #@48
    const-string/jumbo v1, "hdmi_control_auto_device_off_enabled"

    #@4b
    invoke-virtual {v0, v1, v3}, Lcom/android/server/hdmi/HdmiControlService;->readBooleanSetting(Ljava/lang/String;Z)Z

    #@4e
    move-result v0

    #@4f
    iput-boolean v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mAutoDeviceOff:Z

    #@51
    .line 185
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mService:Lcom/android/server/hdmi/HdmiControlService;

    #@53
    const-string/jumbo v1, "hdmi_control_auto_wakeup_enabled"

    #@56
    invoke-virtual {v0, v1, v3}, Lcom/android/server/hdmi/HdmiControlService;->readBooleanSetting(Ljava/lang/String;Z)Z

    #@59
    move-result v0

    #@5a
    iput-boolean v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mAutoWakeup:Z

    #@5c
    .line 186
    new-instance v0, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;

    #@5e
    invoke-direct {v0, p1, p0}, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;-><init>(Lcom/android/server/hdmi/HdmiControlService;Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;)V

    #@61
    iput-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mStandbyHandler:Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;

    #@63
    .line 180
    return-void
.end method

.method private addDeviceInfo(Landroid/hardware/hdmi/HdmiDeviceInfo;)Landroid/hardware/hdmi/HdmiDeviceInfo;
    .locals 3
    .param p1, "deviceInfo"    # Landroid/hardware/hdmi/HdmiDeviceInfo;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    #@0
    .prologue
    .line 1237
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->assertRunOnServiceThread()V

    #@3
    .line 1238
    invoke-virtual {p1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    #@6
    move-result v1

    #@7
    invoke-virtual {p0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getCecDeviceInfo(I)Landroid/hardware/hdmi/HdmiDeviceInfo;

    #@a
    move-result-object v0

    #@b
    .line 1239
    .local v0, "oldDeviceInfo":Landroid/hardware/hdmi/HdmiDeviceInfo;
    if-eqz v0, :cond_0

    #@d
    .line 1240
    invoke-virtual {p1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getId()I

    #@10
    move-result v1

    #@11
    invoke-direct {p0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->removeDeviceInfo(I)Landroid/hardware/hdmi/HdmiDeviceInfo;

    #@14
    .line 1242
    :cond_0
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mDeviceInfos:Landroid/util/SparseArray;

    #@16
    invoke-virtual {p1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getId()I

    #@19
    move-result v2

    #@1a
    invoke-virtual {v1, v2, p1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    #@1d
    .line 1243
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->updateSafeDeviceInfoList()V

    #@20
    .line 1244
    return-object v0
.end method

.method private addTvInput(Ljava/lang/String;I)V
    .locals 2
    .param p1, "inputId"    # Ljava/lang/String;
    .param p2, "deviceId"    # I
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    #@0
    .prologue
    .line 163
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->assertRunOnServiceThread()V

    #@3
    .line 164
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mTvInputs:Ljava/util/HashMap;

    #@5
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@8
    move-result-object v1

    #@9
    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@c
    .line 162
    return-void
.end method

.method private canStartArcUpdateAction(IZ)Z
    .locals 2
    .param p1, "avrAddress"    # I
    .param p2, "shouldCheckArcFeatureEnabled"    # Z

    #@0
    .prologue
    .line 1106
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getAvrDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    #@3
    move-result-object v0

    #@4
    .line 1107
    .local v0, "avr":Landroid/hardware/hdmi/HdmiDeviceInfo;
    if-eqz v0, :cond_1

    #@6
    .line 1108
    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    #@9
    move-result v1

    #@a
    if-ne p1, v1, :cond_1

    #@c
    .line 1109
    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getPhysicalAddress()I

    #@f
    move-result v1

    #@10
    invoke-virtual {p0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->isConnectedToArcPort(I)Z

    #@13
    move-result v1

    #@14
    .line 1107
    if-eqz v1, :cond_1

    #@16
    .line 1110
    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getPhysicalAddress()I

    #@19
    move-result v1

    #@1a
    invoke-direct {p0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->isDirectConnectAddress(I)Z

    #@1d
    move-result v1

    #@1e
    .line 1107
    if-eqz v1, :cond_1

    #@20
    .line 1111
    if-eqz p2, :cond_0

    #@22
    .line 1112
    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getPortId()I

    #@25
    move-result v1

    #@26
    invoke-virtual {p0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->isArcFeatureEnabled(I)Z

    #@29
    move-result v1

    #@2a
    return v1

    #@2b
    .line 1114
    :cond_0
    const/4 v1, 0x1

    #@2c
    return v1

    #@2d
    .line 1117
    :cond_1
    const/4 v1, 0x0

    #@2e
    return v1
.end method

.method private checkRecordSource([B)Z
    .locals 1
    .param p1, "recordSource"    # [B

    #@0
    .prologue
    .line 1755
    if-eqz p1, :cond_0

    #@2
    invoke-static {p1}, Landroid/hardware/hdmi/HdmiRecordSources;->checkRecordSource([B)Z

    #@5
    move-result v0

    #@6
    :goto_0
    return v0

    #@7
    :cond_0
    const/4 v0, 0x0

    #@8
    goto :goto_0
.end method

.method private checkRecorder(I)Z
    .locals 4
    .param p1, "recorderAddress"    # I

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 1748
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getCecDeviceInfo(I)Landroid/hardware/hdmi/HdmiDeviceInfo;

    #@5
    move-result-object v0

    #@6
    .line 1749
    .local v0, "device":Landroid/hardware/hdmi/HdmiDeviceInfo;
    if-eqz v0, :cond_1

    #@8
    .line 1750
    invoke-static {p1}, Lcom/android/server/hdmi/HdmiUtils;->getTypeFromAddress(I)I

    #@b
    move-result v3

    #@c
    if-ne v3, v1, :cond_0

    #@e
    .line 1749
    :goto_0
    return v1

    #@f
    :cond_0
    move v1, v2

    #@10
    .line 1750
    goto :goto_0

    #@11
    :cond_1
    move v1, v2

    #@12
    .line 1749
    goto :goto_0
.end method

.method private checkTimerRecordingSource(I[B)Z
    .locals 1
    .param p1, "sourceType"    # I
    .param p2, "recordSource"    # [B

    #@0
    .prologue
    .line 1790
    if-eqz p2, :cond_0

    #@2
    .line 1791
    invoke-static {p1, p2}, Landroid/hardware/hdmi/HdmiTimerRecordSources;->checkTimerRecordSource(I[B)Z

    #@5
    move-result v0

    #@6
    .line 1790
    :goto_0
    return v0

    #@7
    :cond_0
    const/4 v0, 0x0

    #@8
    goto :goto_0
.end method

.method private clearDeviceInfoList()V
    .locals 3
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    #@0
    .prologue
    .line 812
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->assertRunOnServiceThread()V

    #@3
    .line 813
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mSafeExternalInputs:Ljava/util/List;

    #@5
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

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
    .line 814
    .local v0, "info":Landroid/hardware/hdmi/HdmiDeviceInfo;
    const/4 v2, 0x2

    #@16
    invoke-direct {p0, v0, v2}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->invokeDeviceEventListener(Landroid/hardware/hdmi/HdmiDeviceInfo;I)V

    #@19
    goto :goto_0

    #@1a
    .line 816
    .end local v0    # "info":Landroid/hardware/hdmi/HdmiDeviceInfo;
    :cond_0
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mDeviceInfos:Landroid/util/SparseArray;

    #@1c
    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    #@1f
    .line 817
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->updateSafeDeviceInfoList()V

    #@22
    .line 811
    return-void
.end method

.method private disableArcIfExist()V
    .locals 3
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    #@0
    .prologue
    .line 1648
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->assertRunOnServiceThread()V

    #@3
    .line 1649
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getAvrDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    #@6
    move-result-object v0

    #@7
    .line 1650
    .local v0, "avr":Landroid/hardware/hdmi/HdmiDeviceInfo;
    if-nez v0, :cond_0

    #@9
    .line 1651
    return-void

    #@a
    .line 1655
    :cond_0
    const-class v1, Lcom/android/server/hdmi/RequestArcInitiationAction;

    #@c
    invoke-virtual {p0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->removeAction(Ljava/lang/Class;)V

    #@f
    .line 1656
    const-class v1, Lcom/android/server/hdmi/RequestArcTerminationAction;

    #@11
    invoke-virtual {p0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->hasAction(Ljava/lang/Class;)Z

    #@14
    move-result v1

    #@15
    if-nez v1, :cond_1

    #@17
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->isArcEstablished()Z

    #@1a
    move-result v1

    #@1b
    if-eqz v1, :cond_1

    #@1d
    .line 1657
    new-instance v1, Lcom/android/server/hdmi/RequestArcTerminationAction;

    #@1f
    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    #@22
    move-result v2

    #@23
    invoke-direct {v1, p0, v2}, Lcom/android/server/hdmi/RequestArcTerminationAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;I)V

    #@26
    invoke-virtual {p0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->addAndStartAction(Lcom/android/server/hdmi/HdmiCecFeatureAction;)V

    #@29
    .line 1647
    :cond_1
    return-void
.end method

.method private disableSystemAudioIfExist()V
    .locals 1
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    #@0
    .prologue
    .line 1633
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->assertRunOnServiceThread()V

    #@3
    .line 1634
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getAvrDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    #@6
    move-result-object v0

    #@7
    if-nez v0, :cond_0

    #@9
    .line 1635
    return-void

    #@a
    .line 1639
    :cond_0
    const-class v0, Lcom/android/server/hdmi/SystemAudioActionFromAvr;

    #@c
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->removeAction(Ljava/lang/Class;)V

    #@f
    .line 1640
    const-class v0, Lcom/android/server/hdmi/SystemAudioActionFromTv;

    #@11
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->removeAction(Ljava/lang/Class;)V

    #@14
    .line 1641
    const-class v0, Lcom/android/server/hdmi/SystemAudioAutoInitiationAction;

    #@16
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->removeAction(Ljava/lang/Class;)V

    #@19
    .line 1642
    const-class v0, Lcom/android/server/hdmi/SystemAudioStatusAction;

    #@1b
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->removeAction(Ljava/lang/Class;)V

    #@1e
    .line 1643
    const-class v0, Lcom/android/server/hdmi/VolumeControlAction;

    #@20
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->removeAction(Ljava/lang/Class;)V

    #@23
    .line 1632
    return-void
.end method

.method private findKeyReceiverAddress()I
    .locals 2

    #@0
    .prologue
    .line 452
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getActiveSource()Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;

    #@3
    move-result-object v1

    #@4
    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;->isValid()Z

    #@7
    move-result v1

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 453
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getActiveSource()Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;

    #@d
    move-result-object v1

    #@e
    iget v1, v1, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;->logicalAddress:I

    #@10
    return v1

    #@11
    .line 455
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getActivePath()I

    #@14
    move-result v1

    #@15
    invoke-virtual {p0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getDeviceInfoByPath(I)Landroid/hardware/hdmi/HdmiDeviceInfo;

    #@18
    move-result-object v0

    #@19
    .line 456
    .local v0, "info":Landroid/hardware/hdmi/HdmiDeviceInfo;
    if-eqz v0, :cond_1

    #@1b
    .line 457
    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    #@1e
    move-result v1

    #@1f
    return v1

    #@20
    .line 459
    :cond_1
    const/4 v1, -0x1

    #@21
    return v1
.end method

.method private getInputDevices()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/hdmi/HdmiDeviceInfo;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 1316
    new-instance v2, Ljava/util/ArrayList;

    #@2
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 1317
    .local v2, "infoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/hdmi/HdmiDeviceInfo;>;"
    const/4 v0, 0x0

    #@6
    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mDeviceInfos:Landroid/util/SparseArray;

    #@8
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    #@b
    move-result v3

    #@c
    if-ge v0, v3, :cond_2

    #@e
    .line 1318
    iget-object v3, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mDeviceInfos:Landroid/util/SparseArray;

    #@10
    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@13
    move-result-object v1

    #@14
    check-cast v1, Landroid/hardware/hdmi/HdmiDeviceInfo;

    #@16
    .line 1319
    .local v1, "info":Landroid/hardware/hdmi/HdmiDeviceInfo;
    invoke-virtual {v1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    #@19
    move-result v3

    #@1a
    invoke-direct {p0, v3}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->isLocalDeviceAddress(I)Z

    #@1d
    move-result v3

    #@1e
    if-eqz v3, :cond_1

    #@20
    .line 1317
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    #@22
    goto :goto_0

    #@23
    .line 1322
    :cond_1
    invoke-virtual {v1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->isSourceType()Z

    #@26
    move-result v3

    #@27
    if-eqz v3, :cond_0

    #@29
    invoke-direct {p0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->hideDevicesBehindLegacySwitch(Landroid/hardware/hdmi/HdmiDeviceInfo;)Z

    #@2c
    move-result v3

    #@2d
    if-nez v3, :cond_0

    #@2f
    .line 1323
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@32
    goto :goto_1

    #@33
    .line 1326
    .end local v1    # "info":Landroid/hardware/hdmi/HdmiDeviceInfo;
    :cond_2
    return-object v2
.end method

.method private handleNewDeviceAtTheTailOfActivePath(I)Z
    .locals 4
    .param p1, "path"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 650
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getActivePath()I

    #@4
    move-result v1

    #@5
    invoke-static {p1, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->isTailOfActivePath(II)Z

    #@8
    move-result v1

    #@9
    if-eqz v1, :cond_0

    #@b
    .line 651
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mService:Lcom/android/server/hdmi/HdmiControlService;

    #@d
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getActivePortId()I

    #@10
    move-result v2

    #@11
    invoke-virtual {v1, v2}, Lcom/android/server/hdmi/HdmiControlService;->portIdToPath(I)I

    #@14
    move-result v0

    #@15
    .line 652
    .local v0, "newPath":I
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->setActivePath(I)V

    #@18
    .line 653
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getActivePath()I

    #@1b
    move-result v1

    #@1c
    const/4 v2, 0x0

    #@1d
    invoke-virtual {p0, v1, v0, v3, v2}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->startRoutingControl(IIZLandroid/hardware/hdmi/IHdmiControlCallback;)V

    #@20
    .line 654
    const/4 v1, 0x1

    #@21
    return v1

    #@22
    .line 656
    .end local v0    # "newPath":I
    :cond_0
    return v3
.end method

.method private handleSelectInternalSource()V
    .locals 3
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    #@0
    .prologue
    .line 283
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->assertRunOnServiceThread()V

    #@3
    .line 285
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mService:Lcom/android/server/hdmi/HdmiControlService;

    #@5
    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiControlService;->isControlEnabled()Z

    #@8
    move-result v1

    #@9
    if-eqz v1, :cond_1

    #@b
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mActiveSource:Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;

    #@d
    iget v1, v1, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;->logicalAddress:I

    #@f
    iget v2, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mAddress:I

    #@11
    if-eq v1, v2, :cond_1

    #@13
    .line 286
    iget v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mAddress:I

    #@15
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mService:Lcom/android/server/hdmi/HdmiControlService;

    #@17
    invoke-virtual {v2}, Lcom/android/server/hdmi/HdmiControlService;->getPhysicalAddress()I

    #@1a
    move-result v2

    #@1b
    invoke-virtual {p0, v1, v2}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->updateActiveSource(II)V

    #@1e
    .line 287
    iget-boolean v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mSkipRoutingControl:Z

    #@20
    if-eqz v1, :cond_0

    #@22
    .line 288
    const/4 v1, 0x0

    #@23
    iput-boolean v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mSkipRoutingControl:Z

    #@25
    .line 289
    return-void

    #@26
    .line 292
    :cond_0
    iget v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mAddress:I

    #@28
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mService:Lcom/android/server/hdmi/HdmiControlService;

    #@2a
    invoke-virtual {v2}, Lcom/android/server/hdmi/HdmiControlService;->getPhysicalAddress()I

    #@2d
    move-result v2

    #@2e
    .line 291
    invoke-static {v1, v2}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildActiveSource(II)Lcom/android/server/hdmi/HdmiCecMessage;

    #@31
    move-result-object v0

    #@32
    .line 293
    .local v0, "activeSource":Lcom/android/server/hdmi/HdmiCecMessage;
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mService:Lcom/android/server/hdmi/HdmiControlService;

    #@34
    invoke-virtual {v1, v0}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    #@37
    .line 282
    .end local v0    # "activeSource":Lcom/android/server/hdmi/HdmiCecMessage;
    :cond_1
    return-void
.end method

.method private hideDevicesBehindLegacySwitch(Landroid/hardware/hdmi/HdmiDeviceInfo;)Z
    .locals 2
    .param p1, "info"    # Landroid/hardware/hdmi/HdmiDeviceInfo;

    #@0
    .prologue
    .line 1334
    invoke-virtual {p1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getPhysicalAddress()I

    #@3
    move-result v0

    #@4
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mCecSwitches:Landroid/util/ArraySet;

    #@6
    invoke-static {v0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->isConnectedToCecSwitch(ILjava/util/Collection;)Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_0

    #@c
    const/4 v0, 0x0

    #@d
    .line 1333
    :goto_0
    return v0

    #@e
    .line 1334
    :cond_0
    const/4 v0, 0x1

    #@f
    goto :goto_0
.end method

.method private initLocalDeviceAddresses()Ljava/util/List;
    .locals 4
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 214
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->assertRunOnServiceThread()V

    #@3
    .line 215
    new-instance v0, Ljava/util/ArrayList;

    #@5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@8
    .line 216
    .local v0, "addresses":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v3, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mService:Lcom/android/server/hdmi/HdmiControlService;

    #@a
    invoke-virtual {v3}, Lcom/android/server/hdmi/HdmiControlService;->getAllLocalDevices()Ljava/util/List;

    #@d
    move-result-object v3

    #@e
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@11
    move-result-object v2

    #@12
    .local v2, "device$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@15
    move-result v3

    #@16
    if-eqz v3, :cond_0

    #@18
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1b
    move-result-object v1

    #@1c
    check-cast v1, Lcom/android/server/hdmi/HdmiCecLocalDevice;

    #@1e
    .line 217
    .local v1, "device":Lcom/android/server/hdmi/HdmiCecLocalDevice;
    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    #@21
    move-result-object v3

    #@22
    invoke-virtual {v3}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    #@25
    move-result v3

    #@26
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@29
    move-result-object v3

    #@2a
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@2d
    goto :goto_0

    #@2e
    .line 219
    .end local v1    # "device":Lcom/android/server/hdmi/HdmiCecLocalDevice;
    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    #@31
    move-result-object v3

    #@32
    return-object v3
.end method

.method private static invokeCallback(Landroid/hardware/hdmi/IHdmiControlCallback;I)V
    .locals 4
    .param p0, "callback"    # Landroid/hardware/hdmi/IHdmiControlCallback;
    .param p1, "result"    # I

    #@0
    .prologue
    .line 463
    if-nez p0, :cond_0

    #@2
    .line 464
    return-void

    #@3
    .line 467
    :cond_0
    :try_start_0
    invoke-interface {p0, p1}, Landroid/hardware/hdmi/IHdmiControlCallback;->onComplete(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@6
    .line 462
    :goto_0
    return-void

    #@7
    .line 468
    :catch_0
    move-exception v0

    #@8
    .line 469
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "HdmiCecLocalDeviceTv"

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

.method private invokeDeviceEventListener(Landroid/hardware/hdmi/HdmiDeviceInfo;I)V
    .locals 1
    .param p1, "info"    # Landroid/hardware/hdmi/HdmiDeviceInfo;
    .param p2, "status"    # I

    #@0
    .prologue
    .line 1360
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->hideDevicesBehindLegacySwitch(Landroid/hardware/hdmi/HdmiDeviceInfo;)Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 1361
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mService:Lcom/android/server/hdmi/HdmiControlService;

    #@8
    invoke-virtual {v0, p1, p2}, Lcom/android/server/hdmi/HdmiControlService;->invokeDeviceEventListeners(Landroid/hardware/hdmi/HdmiDeviceInfo;I)V

    #@b
    .line 1359
    :cond_0
    return-void
.end method

.method private static isConnectedToCecSwitch(ILjava/util/Collection;)Z
    .locals 3
    .param p0, "path"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    #@0
    .prologue
    .line 1338
    .local p1, "switches":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Integer;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@3
    move-result-object v1

    #@4
    .local v1, "switchPath$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@7
    move-result v2

    #@8
    if-eqz v2, :cond_1

    #@a
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@d
    move-result-object v2

    #@e
    check-cast v2, Ljava/lang/Integer;

    #@10
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    #@13
    move-result v0

    #@14
    .line 1339
    .local v0, "switchPath":I
    invoke-static {v0, p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->isParentPath(II)Z

    #@17
    move-result v2

    #@18
    if-eqz v2, :cond_0

    #@1a
    .line 1340
    const/4 v2, 0x1

    #@1b
    return v2

    #@1c
    .line 1343
    .end local v0    # "switchPath":I
    :cond_1
    const/4 v2, 0x0

    #@1d
    return v2
.end method

.method private isDirectConnectAddress(I)Z
    .locals 1
    .param p1, "physicalAddress"    # I

    #@0
    .prologue
    .line 1011
    const v0, 0xf000

    #@3
    and-int/2addr v0, p1

    #@4
    if-ne v0, p1, :cond_0

    #@6
    const/4 v0, 0x1

    #@7
    :goto_0
    return v0

    #@8
    :cond_0
    const/4 v0, 0x0

    #@9
    goto :goto_0
.end method

.method private isLocalDeviceAddress(I)Z
    .locals 2
    .param p1, "address"    # I

    #@0
    .prologue
    .line 1366
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mLocalDeviceAddresses:Ljava/util/List;

    #@2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@5
    move-result-object v1

    #@6
    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    #@9
    move-result v0

    #@a
    return v0
.end method

.method private isMessageForSystemAudio(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .locals 3
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1218
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mService:Lcom/android/server/hdmi/HdmiControlService;

    #@3
    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiControlService;->isControlEnabled()Z

    #@6
    move-result v1

    #@7
    if-eqz v1, :cond_1

    #@9
    .line 1219
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    #@c
    move-result v1

    #@d
    const/4 v2, 0x5

    #@e
    if-ne v1, v2, :cond_1

    #@10
    .line 1220
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getDestination()I

    #@13
    move-result v1

    #@14
    if-eqz v1, :cond_0

    #@16
    .line 1221
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getDestination()I

    #@19
    move-result v1

    #@1a
    const/16 v2, 0xf

    #@1c
    if-ne v1, v2, :cond_1

    #@1e
    .line 1222
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getAvrDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    #@21
    move-result-object v1

    #@22
    if-eqz v1, :cond_1

    #@24
    const/4 v0, 0x1

    #@25
    .line 1218
    :cond_1
    return v0
.end method

.method private static isParentPath(II)Z
    .locals 6
    .param p0, "parentPath"    # I
    .param p1, "childPath"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1349
    const/4 v0, 0x0

    #@2
    .local v0, "i":I
    :goto_0
    const/16 v4, 0xc

    #@4
    if-gt v0, v4, :cond_2

    #@6
    .line 1350
    shr-int v4, p1, v0

    #@8
    and-int/lit8 v1, v4, 0xf

    #@a
    .line 1351
    .local v1, "nibble":I
    if-eqz v1, :cond_1

    #@c
    .line 1352
    shr-int v4, p0, v0

    #@e
    and-int/lit8 v2, v4, 0xf

    #@10
    .line 1353
    .local v2, "parentNibble":I
    if-nez v2, :cond_0

    #@12
    add-int/lit8 v4, v0, 0x4

    #@14
    shr-int v4, p1, v4

    #@16
    add-int/lit8 v5, v0, 0x4

    #@18
    shr-int v5, p0, v5

    #@1a
    if-ne v4, v5, :cond_0

    #@1c
    const/4 v3, 0x1

    #@1d
    :cond_0
    return v3

    #@1e
    .line 1349
    .end local v2    # "parentNibble":I
    :cond_1
    add-int/lit8 v0, v0, 0x4

    #@20
    goto :goto_0

    #@21
    .line 1356
    .end local v1    # "nibble":I
    :cond_2
    return v3
.end method

.method static isTailOfActivePath(II)Z
    .locals 5
    .param p0, "path"    # I
    .param p1, "activePath"    # I

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 669
    if-nez p1, :cond_0

    #@3
    .line 670
    return v4

    #@4
    .line 672
    :cond_0
    const/16 v2, 0xc

    #@6
    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_3

    #@8
    .line 673
    shr-int v3, p1, v2

    #@a
    and-int/lit8 v0, v3, 0xf

    #@c
    .line 674
    .local v0, "curActivePath":I
    if-nez v0, :cond_1

    #@e
    .line 675
    const/4 v3, 0x1

    #@f
    return v3

    #@10
    .line 677
    :cond_1
    shr-int v3, p0, v2

    #@12
    and-int/lit8 v1, v3, 0xf

    #@14
    .line 678
    .local v1, "curPath":I
    if-eq v1, v0, :cond_2

    #@16
    .line 679
    return v4

    #@17
    .line 672
    :cond_2
    add-int/lit8 v2, v2, -0x4

    #@19
    goto :goto_0

    #@1a
    .line 683
    .end local v0    # "curActivePath":I
    .end local v1    # "curPath":I
    :cond_3
    return v4
.end method

.method private launchDeviceDiscovery()V
    .locals 2
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    #@0
    .prologue
    .line 763
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->assertRunOnServiceThread()V

    #@3
    .line 764
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->clearDeviceInfoList()V

    #@6
    .line 765
    new-instance v0, Lcom/android/server/hdmi/DeviceDiscoveryAction;

    #@8
    .line 766
    new-instance v1, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv$2;

    #@a
    invoke-direct {v1, p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv$2;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;)V

    #@d
    .line 765
    invoke-direct {v0, p0, v1}, Lcom/android/server/hdmi/DeviceDiscoveryAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceDiscoveryCallback;)V

    #@10
    .line 794
    .local v0, "action":Lcom/android/server/hdmi/DeviceDiscoveryAction;
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->addAndStartAction(Lcom/android/server/hdmi/HdmiCecFeatureAction;)V

    #@13
    .line 762
    return-void
.end method

.method private notifyArcStatusToAudioService(Z)V
    .locals 5
    .param p1, "enabled"    # Z

    #@0
    .prologue
    .line 937
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mService:Lcom/android/server/hdmi/HdmiControlService;

    #@2
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->getAudioManager()Landroid/media/AudioManager;

    #@5
    move-result-object v1

    #@6
    .line 939
    if-eqz p1, :cond_0

    #@8
    const/4 v0, 0x1

    #@9
    :goto_0
    const-string/jumbo v2, ""

    #@c
    const-string/jumbo v3, ""

    #@f
    .line 938
    const/high16 v4, 0x40000

    #@11
    .line 937
    invoke-virtual {v1, v4, v0, v2, v3}, Landroid/media/AudioManager;->setWiredDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;)V

    #@14
    .line 935
    return-void

    #@15
    .line 939
    :cond_0
    const/4 v0, 0x0

    #@16
    goto :goto_0
.end method

.method private removeCecSwitches(I)V
    .locals 3
    .param p1, "portId"    # I

    #@0
    .prologue
    .line 1577
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mCecSwitches:Landroid/util/ArraySet;

    #@2
    invoke-virtual {v2}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    #@5
    move-result-object v0

    #@6
    .line 1578
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@9
    move-result v2

    #@a
    if-nez v2, :cond_1

    #@c
    .line 1579
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@f
    move-result-object v2

    #@10
    check-cast v2, Ljava/lang/Integer;

    #@12
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    #@15
    move-result v1

    #@16
    .line 1580
    .local v1, "path":I
    invoke-virtual {p0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->pathToPortId(I)I

    #@19
    move-result v2

    #@1a
    if-ne v2, p1, :cond_0

    #@1c
    .line 1581
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    #@1f
    goto :goto_0

    #@20
    .line 1576
    .end local v1    # "path":I
    :cond_1
    return-void
.end method

.method private removeDeviceInfo(I)Landroid/hardware/hdmi/HdmiDeviceInfo;
    .locals 2
    .param p1, "id"    # I
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    #@0
    .prologue
    .line 1258
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->assertRunOnServiceThread()V

    #@3
    .line 1259
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mDeviceInfos:Landroid/util/SparseArray;

    #@5
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Landroid/hardware/hdmi/HdmiDeviceInfo;

    #@b
    .line 1260
    .local v0, "deviceInfo":Landroid/hardware/hdmi/HdmiDeviceInfo;
    if-eqz v0, :cond_0

    #@d
    .line 1261
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mDeviceInfos:Landroid/util/SparseArray;

    #@f
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    #@12
    .line 1263
    :cond_0
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->updateSafeDeviceInfoList()V

    #@15
    .line 1264
    return-object v0
.end method

.method private removeTvInput(Ljava/lang/String;)V
    .locals 1
    .param p1, "inputId"    # Ljava/lang/String;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    #@0
    .prologue
    .line 169
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->assertRunOnServiceThread()V

    #@3
    .line 170
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mTvInputs:Ljava/util/HashMap;

    #@5
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@8
    .line 168
    return-void
.end method

.method private sendClearTimerMessage(II[B)V
    .locals 4
    .param p1, "recorderAddress"    # I
    .param p2, "sourceType"    # I
    .param p3, "recordSource"    # [B

    #@0
    .prologue
    .line 1822
    const/4 v0, 0x0

    #@1
    .line 1823
    .local v0, "message":Lcom/android/server/hdmi/HdmiCecMessage;
    packed-switch p2, :pswitch_data_0

    #@4
    .line 1837
    const-string/jumbo v1, "HdmiCecLocalDeviceTv"

    #@7
    new-instance v2, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    const-string/jumbo v3, "Invalid source type:"

    #@f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v2

    #@13
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@16
    move-result-object v2

    #@17
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a
    move-result-object v2

    #@1b
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@1e
    .line 1839
    const/16 v1, 0xa1

    #@20
    .line 1838
    invoke-virtual {p0, p1, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->announceClearTimerRecordingResult(II)V

    #@23
    .line 1840
    return-void

    #@24
    .line 1825
    :pswitch_0
    iget v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mAddress:I

    #@26
    invoke-static {v1, p1, p3}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildClearDigitalTimer(II[B)Lcom/android/server/hdmi/HdmiCecMessage;

    #@29
    move-result-object v0

    #@2a
    .line 1843
    .local v0, "message":Lcom/android/server/hdmi/HdmiCecMessage;
    :goto_0
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mService:Lcom/android/server/hdmi/HdmiControlService;

    #@2c
    new-instance v2, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv$3;

    #@2e
    invoke-direct {v2, p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv$3;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;I)V

    #@31
    invoke-virtual {v1, v0, v2}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V

    #@34
    .line 1821
    return-void

    #@35
    .line 1829
    .local v0, "message":Lcom/android/server/hdmi/HdmiCecMessage;
    :pswitch_1
    iget v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mAddress:I

    #@37
    invoke-static {v1, p1, p3}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildClearAnalogueTimer(II[B)Lcom/android/server/hdmi/HdmiCecMessage;

    #@3a
    move-result-object v0

    #@3b
    .local v0, "message":Lcom/android/server/hdmi/HdmiCecMessage;
    goto :goto_0

    #@3c
    .line 1833
    .local v0, "message":Lcom/android/server/hdmi/HdmiCecMessage;
    :pswitch_2
    iget v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mAddress:I

    #@3e
    invoke-static {v1, p1, p3}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildClearExternalTimer(II[B)Lcom/android/server/hdmi/HdmiCecMessage;

    #@41
    move-result-object v0

    #@42
    .local v0, "message":Lcom/android/server/hdmi/HdmiCecMessage;
    goto :goto_0

    #@43
    .line 1823
    nop

    #@44
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private updateArcFeatureStatus(IZ)V
    .locals 3
    .param p1, "portId"    # I
    .param p2, "isConnected"    # Z
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    #@0
    .prologue
    .line 908
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->assertRunOnServiceThread()V

    #@3
    .line 909
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mService:Lcom/android/server/hdmi/HdmiControlService;

    #@5
    invoke-virtual {v2, p1}, Lcom/android/server/hdmi/HdmiControlService;->getPortInfo(I)Landroid/hardware/hdmi/HdmiPortInfo;

    #@8
    move-result-object v1

    #@9
    .line 910
    .local v1, "portInfo":Landroid/hardware/hdmi/HdmiPortInfo;
    invoke-virtual {v1}, Landroid/hardware/hdmi/HdmiPortInfo;->isArcSupported()Z

    #@c
    move-result v2

    #@d
    if-nez v2, :cond_0

    #@f
    .line 911
    return-void

    #@10
    .line 913
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getAvrDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    #@13
    move-result-object v0

    #@14
    .line 914
    .local v0, "avr":Landroid/hardware/hdmi/HdmiDeviceInfo;
    if-nez v0, :cond_2

    #@16
    .line 915
    if-eqz p2, :cond_1

    #@18
    .line 918
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mArcFeatureEnabled:Landroid/util/SparseBooleanArray;

    #@1a
    invoke-virtual {v2, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    #@1d
    .line 920
    :cond_1
    return-void

    #@1e
    .line 924
    :cond_2
    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getPortId()I

    #@21
    move-result v2

    #@22
    if-ne v2, p1, :cond_3

    #@24
    .line 925
    invoke-virtual {p0, p1, p2}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->changeArcFeatureEnabled(IZ)V

    #@27
    .line 907
    :cond_3
    return-void
.end method

.method private updateAudioManagerForSystemAudio(Z)V
    .locals 5
    .param p1, "on"    # Z

    #@0
    .prologue
    .line 857
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mService:Lcom/android/server/hdmi/HdmiControlService;

    #@2
    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiControlService;->getAudioManager()Landroid/media/AudioManager;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {v1, p1}, Landroid/media/AudioManager;->setHdmiSystemAudioSupported(Z)I

    #@9
    move-result v0

    #@a
    .line 858
    .local v0, "device":I
    const-string/jumbo v1, "[A]UpdateSystemAudio mode[on=%b] output=[%X]"

    #@d
    const/4 v2, 0x2

    #@e
    new-array v2, v2, [Ljava/lang/Object;

    #@10
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@13
    move-result-object v3

    #@14
    const/4 v4, 0x0

    #@15
    aput-object v3, v2, v4

    #@17
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1a
    move-result-object v3

    #@1b
    const/4 v4, 0x1

    #@1c
    aput-object v3, v2, v4

    #@1e
    invoke-static {v1, v2}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    #@21
    .line 856
    return-void
.end method

.method private updateSafeDeviceInfoList()V
    .locals 4
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    #@0
    .prologue
    .line 1300
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->assertRunOnServiceThread()V

    #@3
    .line 1301
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mDeviceInfos:Landroid/util/SparseArray;

    #@5
    invoke-static {v2}, Lcom/android/server/hdmi/HdmiUtils;->sparseArrayToList(Landroid/util/SparseArray;)Ljava/util/List;

    #@8
    move-result-object v0

    #@9
    .line 1302
    .local v0, "copiedDevices":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/hdmi/HdmiDeviceInfo;>;"
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getInputDevices()Ljava/util/List;

    #@c
    move-result-object v1

    #@d
    .line 1303
    .local v1, "externalInputs":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/hdmi/HdmiDeviceInfo;>;"
    iget-object v3, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mLock:Ljava/lang/Object;

    #@f
    monitor-enter v3

    #@10
    .line 1304
    :try_start_0
    iput-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mSafeAllDeviceInfos:Ljava/util/List;

    #@12
    .line 1305
    iput-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mSafeExternalInputs:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@14
    monitor-exit v3

    #@15
    .line 1299
    return-void

    #@16
    .line 1303
    :catchall_0
    move-exception v2

    #@17
    monitor-exit v3

    #@18
    throw v2
.end method


# virtual methods
.method final addCecDevice(Landroid/hardware/hdmi/HdmiDeviceInfo;)V
    .locals 4
    .param p1, "info"    # Landroid/hardware/hdmi/HdmiDeviceInfo;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    .line 1435
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->assertRunOnServiceThread()V

    #@4
    .line 1436
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->addDeviceInfo(Landroid/hardware/hdmi/HdmiDeviceInfo;)Landroid/hardware/hdmi/HdmiDeviceInfo;

    #@7
    move-result-object v0

    #@8
    .line 1437
    .local v0, "old":Landroid/hardware/hdmi/HdmiDeviceInfo;
    invoke-virtual {p1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    #@b
    move-result v1

    #@c
    iget v2, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mAddress:I

    #@e
    if-ne v1, v2, :cond_0

    #@10
    .line 1439
    return-void

    #@11
    .line 1441
    :cond_0
    if-nez v0, :cond_2

    #@13
    .line 1442
    invoke-direct {p0, p1, v3}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->invokeDeviceEventListener(Landroid/hardware/hdmi/HdmiDeviceInfo;I)V

    #@16
    .line 1434
    :cond_1
    :goto_0
    return-void

    #@17
    .line 1443
    :cond_2
    invoke-virtual {v0, p1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->equals(Ljava/lang/Object;)Z

    #@1a
    move-result v1

    #@1b
    if-nez v1, :cond_1

    #@1d
    .line 1444
    const/4 v1, 0x2

    #@1e
    invoke-direct {p0, v0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->invokeDeviceEventListener(Landroid/hardware/hdmi/HdmiDeviceInfo;I)V

    #@21
    .line 1445
    invoke-direct {p0, p1, v3}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->invokeDeviceEventListener(Landroid/hardware/hdmi/HdmiDeviceInfo;I)V

    #@24
    goto :goto_0
.end method

.method announceClearTimerRecordingResult(II)V
    .locals 1
    .param p1, "recorderAddress"    # I
    .param p2, "result"    # I

    #@0
    .prologue
    .line 1214
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mService:Lcom/android/server/hdmi/HdmiControlService;

    #@2
    invoke-virtual {v0, p1, p2}, Lcom/android/server/hdmi/HdmiControlService;->invokeClearTimerRecordingResult(II)V

    #@5
    .line 1213
    return-void
.end method

.method announceOneTouchRecordResult(II)V
    .locals 1
    .param p1, "recorderAddress"    # I
    .param p2, "result"    # I

    #@0
    .prologue
    .line 1206
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mService:Lcom/android/server/hdmi/HdmiControlService;

    #@2
    invoke-virtual {v0, p1, p2}, Lcom/android/server/hdmi/HdmiControlService;->invokeOneTouchRecordResult(II)V

    #@5
    .line 1205
    return-void
.end method

.method announceTimerRecordingResult(II)V
    .locals 1
    .param p1, "recorderAddress"    # I
    .param p2, "result"    # I

    #@0
    .prologue
    .line 1210
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mService:Lcom/android/server/hdmi/HdmiControlService;

    #@2
    invoke-virtual {v0, p1, p2}, Lcom/android/server/hdmi/HdmiControlService;->invokeTimerRecordingResult(II)V

    #@5
    .line 1209
    return-void
.end method

.method broadcastMenuLanguage(Ljava/lang/String;)Z
    .locals 2
    .param p1, "language"    # Ljava/lang/String;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    #@0
    .prologue
    .line 558
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->assertRunOnServiceThread()V

    #@3
    .line 560
    iget v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mAddress:I

    #@5
    .line 559
    invoke-static {v1, p1}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildSetMenuLanguageCommand(ILjava/lang/String;)Lcom/android/server/hdmi/HdmiCecMessage;

    #@8
    move-result-object v0

    #@9
    .line 561
    .local v0, "command":Lcom/android/server/hdmi/HdmiCecMessage;
    if-eqz v0, :cond_0

    #@b
    .line 562
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mService:Lcom/android/server/hdmi/HdmiControlService;

    #@d
    invoke-virtual {v1, v0}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    #@10
    .line 563
    const/4 v1, 0x1

    #@11
    return v1

    #@12
    .line 565
    :cond_0
    const/4 v1, 0x0

    #@13
    return v1
.end method

.method changeArcFeatureEnabled(IZ)V
    .locals 1
    .param p1, "portId"    # I
    .param p2, "enabled"    # Z
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    #@0
    .prologue
    .line 958
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->assertRunOnServiceThread()V

    #@3
    .line 960
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mArcFeatureEnabled:Landroid/util/SparseBooleanArray;

    #@5
    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    #@8
    move-result v0

    #@9
    if-eq v0, p2, :cond_0

    #@b
    .line 961
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mArcFeatureEnabled:Landroid/util/SparseBooleanArray;

    #@d
    invoke-virtual {v0, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    #@10
    .line 962
    if-eqz p2, :cond_1

    #@12
    .line 963
    iget-boolean v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mArcEstablished:Z

    #@14
    if-nez v0, :cond_0

    #@16
    .line 964
    const/4 v0, 0x1

    #@17
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->startArcAction(Z)V

    #@1a
    .line 957
    :cond_0
    :goto_0
    return-void

    #@1b
    .line 967
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mArcEstablished:Z

    #@1d
    if-eqz v0, :cond_0

    #@1f
    .line 968
    const/4 v0, 0x0

    #@20
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->startArcAction(Z)V

    #@23
    goto :goto_0
.end method

.method changeMute(Z)V
    .locals 4
    .param p1, "mute"    # Z
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1058
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->assertRunOnServiceThread()V

    #@4
    .line 1059
    const-string/jumbo v0, "[A]:Change mute:%b"

    #@7
    const/4 v1, 0x1

    #@8
    new-array v1, v1, [Ljava/lang/Object;

    #@a
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@d
    move-result-object v2

    #@e
    aput-object v2, v1, v3

    #@10
    invoke-static {v0, v1}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    #@13
    .line 1060
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mLock:Ljava/lang/Object;

    #@15
    monitor-enter v1

    #@16
    .line 1061
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mSystemAudioMute:Z

    #@18
    if-ne v0, p1, :cond_0

    #@1a
    .line 1062
    const-string/jumbo v0, "No need to change mute."

    #@1d
    const/4 v2, 0x0

    #@1e
    new-array v2, v2, [Ljava/lang/Object;

    #@20
    invoke-static {v0, v2}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@23
    monitor-exit v1

    #@24
    .line 1063
    return-void

    #@25
    :cond_0
    monitor-exit v1

    #@26
    .line 1066
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->isSystemAudioActivated()Z

    #@29
    move-result v0

    #@2a
    if-nez v0, :cond_1

    #@2c
    .line 1067
    const-string/jumbo v0, "[A]:System audio is not activated."

    #@2f
    new-array v1, v3, [Ljava/lang/Object;

    #@31
    invoke-static {v0, v1}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    #@34
    .line 1068
    return-void

    #@35
    .line 1060
    :catchall_0
    move-exception v0

    #@36
    monitor-exit v1

    #@37
    throw v0

    #@38
    .line 1072
    :cond_1
    const-class v0, Lcom/android/server/hdmi/VolumeControlAction;

    #@3a
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->removeAction(Ljava/lang/Class;)V

    #@3d
    .line 1073
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getAvrDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    #@40
    move-result-object v0

    #@41
    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    #@44
    move-result v1

    #@45
    .line 1074
    if-eqz p1, :cond_2

    #@47
    const/16 v0, 0x65

    #@49
    .line 1073
    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->sendUserControlPressedAndReleased(II)V

    #@4c
    .line 1057
    return-void

    #@4d
    .line 1075
    :cond_2
    const/16 v0, 0x66

    #@4f
    goto :goto_0
.end method

.method changeSystemAudioMode(ZLandroid/hardware/hdmi/IHdmiControlCallback;)V
    .locals 4
    .param p1, "enabled"    # Z
    .param p2, "callback"    # Landroid/hardware/hdmi/IHdmiControlCallback;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 823
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->assertRunOnServiceThread()V

    #@5
    .line 824
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mService:Lcom/android/server/hdmi/HdmiControlService;

    #@7
    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiControlService;->isControlEnabled()Z

    #@a
    move-result v1

    #@b
    if-eqz v1, :cond_0

    #@d
    const-class v1, Lcom/android/server/hdmi/DeviceDiscoveryAction;

    #@f
    invoke-virtual {p0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->hasAction(Ljava/lang/Class;)Z

    #@12
    move-result v1

    #@13
    if-eqz v1, :cond_1

    #@15
    .line 825
    :cond_0
    invoke-virtual {p0, v2, v3}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->setSystemAudioMode(ZZ)V

    #@18
    .line 826
    const/4 v1, 0x6

    #@19
    invoke-static {p2, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->invokeCallback(Landroid/hardware/hdmi/IHdmiControlCallback;I)V

    #@1c
    .line 827
    return-void

    #@1d
    .line 829
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getAvrDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    #@20
    move-result-object v0

    #@21
    .line 830
    .local v0, "avr":Landroid/hardware/hdmi/HdmiDeviceInfo;
    if-nez v0, :cond_2

    #@23
    .line 831
    invoke-virtual {p0, v2, v3}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->setSystemAudioMode(ZZ)V

    #@26
    .line 832
    const/4 v1, 0x3

    #@27
    invoke-static {p2, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->invokeCallback(Landroid/hardware/hdmi/IHdmiControlCallback;I)V

    #@2a
    .line 833
    return-void

    #@2b
    .line 837
    :cond_2
    new-instance v1, Lcom/android/server/hdmi/SystemAudioActionFromTv;

    #@2d
    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    #@30
    move-result v2

    #@31
    invoke-direct {v1, p0, v2, p1, p2}, Lcom/android/server/hdmi/SystemAudioActionFromTv;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;IZLandroid/hardware/hdmi/IHdmiControlCallback;)V

    #@34
    .line 836
    invoke-virtual {p0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->addAndStartAction(Lcom/android/server/hdmi/HdmiCecFeatureAction;)V

    #@37
    .line 822
    return-void
.end method

.method changeVolume(III)V
    .locals 8
    .param p1, "curVolume"    # I
    .param p2, "delta"    # I
    .param p3, "maxVolume"    # I
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v5, 0x0

    #@2
    .line 1029
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->assertRunOnServiceThread()V

    #@5
    .line 1030
    if-eqz p2, :cond_0

    #@7
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->isSystemAudioActivated()Z

    #@a
    move-result v3

    #@b
    if-eqz v3, :cond_0

    #@d
    .line 1034
    add-int v2, p1, p2

    #@f
    .line 1035
    .local v2, "targetVolume":I
    invoke-static {v2, p3}, Lcom/android/server/hdmi/VolumeControlAction;->scaleToCecVolume(II)I

    #@12
    move-result v1

    #@13
    .line 1036
    .local v1, "cecVolume":I
    iget-object v6, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mLock:Ljava/lang/Object;

    #@15
    monitor-enter v6

    #@16
    .line 1039
    :try_start_0
    iget v3, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mSystemAudioVolume:I

    #@18
    if-ne v1, v3, :cond_1

    #@1a
    .line 1041
    iget-object v3, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mService:Lcom/android/server/hdmi/HdmiControlService;

    #@1c
    .line 1042
    iget v4, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mSystemAudioVolume:I

    #@1e
    invoke-static {v4, p3}, Lcom/android/server/hdmi/VolumeControlAction;->scaleToCustomVolume(II)I

    #@21
    move-result v4

    #@22
    .line 1041
    const/4 v5, 0x0

    #@23
    invoke-virtual {v3, v5, v4}, Lcom/android/server/hdmi/HdmiControlService;->setAudioStatus(ZI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@26
    monitor-exit v6

    #@27
    .line 1043
    return-void

    #@28
    .line 1031
    .end local v1    # "cecVolume":I
    .end local v2    # "targetVolume":I
    :cond_0
    return-void

    #@29
    .restart local v1    # "cecVolume":I
    .restart local v2    # "targetVolume":I
    :cond_1
    monitor-exit v6

    #@2a
    .line 1047
    const-class v3, Lcom/android/server/hdmi/VolumeControlAction;

    #@2c
    invoke-virtual {p0, v3}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getActions(Ljava/lang/Class;)Ljava/util/List;

    #@2f
    move-result-object v0

    #@30
    .line 1048
    .local v0, "actions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/hdmi/VolumeControlAction;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    #@33
    move-result v3

    #@34
    if-eqz v3, :cond_3

    #@36
    .line 1049
    new-instance v6, Lcom/android/server/hdmi/VolumeControlAction;

    #@38
    .line 1050
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getAvrDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    #@3b
    move-result-object v3

    #@3c
    invoke-virtual {v3}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    #@3f
    move-result v7

    #@40
    if-lez p2, :cond_2

    #@42
    move v3, v4

    #@43
    .line 1049
    :goto_0
    invoke-direct {v6, p0, v7, v3}, Lcom/android/server/hdmi/VolumeControlAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;IZ)V

    #@46
    invoke-virtual {p0, v6}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->addAndStartAction(Lcom/android/server/hdmi/HdmiCecFeatureAction;)V

    #@49
    .line 1028
    :goto_1
    return-void

    #@4a
    .line 1036
    .end local v0    # "actions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/hdmi/VolumeControlAction;>;"
    :catchall_0
    move-exception v3

    #@4b
    monitor-exit v6

    #@4c
    throw v3

    #@4d
    .restart local v0    # "actions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/hdmi/VolumeControlAction;>;"
    :cond_2
    move v3, v5

    #@4e
    .line 1050
    goto :goto_0

    #@4f
    .line 1052
    :cond_3
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@52
    move-result-object v3

    #@53
    check-cast v3, Lcom/android/server/hdmi/VolumeControlAction;

    #@55
    if-lez p2, :cond_4

    #@57
    :goto_2
    invoke-virtual {v3, v4}, Lcom/android/server/hdmi/VolumeControlAction;->handleVolumeChange(Z)V

    #@5a
    goto :goto_1

    #@5b
    :cond_4
    move v4, v5

    #@5c
    goto :goto_2
.end method

.method clearTimerRecording(II[B)V
    .locals 3
    .param p1, "recorderAddress"    # I
    .param p2, "sourceType"    # I
    .param p3, "recordSource"    # [B
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    #@0
    .prologue
    .line 1796
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->assertRunOnServiceThread()V

    #@3
    .line 1797
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mService:Lcom/android/server/hdmi/HdmiControlService;

    #@5
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->isControlEnabled()Z

    #@8
    move-result v0

    #@9
    if-nez v0, :cond_0

    #@b
    .line 1798
    const-string/jumbo v0, "HdmiCecLocalDeviceTv"

    #@e
    const-string/jumbo v1, "Can not start one touch record. CEC control is disabled."

    #@11
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@14
    .line 1799
    const/16 v0, 0xa2

    #@16
    invoke-virtual {p0, p1, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->announceClearTimerRecordingResult(II)V

    #@19
    .line 1800
    return-void

    #@1a
    .line 1803
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->checkRecorder(I)Z

    #@1d
    move-result v0

    #@1e
    if-nez v0, :cond_1

    #@20
    .line 1804
    const-string/jumbo v0, "HdmiCecLocalDeviceTv"

    #@23
    new-instance v1, Ljava/lang/StringBuilder;

    #@25
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@28
    const-string/jumbo v2, "Invalid recorder address:"

    #@2b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v1

    #@2f
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@32
    move-result-object v1

    #@33
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@36
    move-result-object v1

    #@37
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@3a
    .line 1806
    const/16 v0, 0xa0

    #@3c
    .line 1805
    invoke-virtual {p0, p1, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->announceClearTimerRecordingResult(II)V

    #@3f
    .line 1807
    return-void

    #@40
    .line 1810
    :cond_1
    invoke-direct {p0, p2, p3}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->checkTimerRecordingSource(I[B)Z

    #@43
    move-result v0

    #@44
    if-nez v0, :cond_2

    #@46
    .line 1811
    const-string/jumbo v0, "HdmiCecLocalDeviceTv"

    #@49
    new-instance v1, Ljava/lang/StringBuilder;

    #@4b
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@4e
    const-string/jumbo v2, "Invalid record source."

    #@51
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@54
    move-result-object v1

    #@55
    invoke-static {p3}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    #@58
    move-result-object v2

    #@59
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5c
    move-result-object v1

    #@5d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@60
    move-result-object v1

    #@61
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@64
    .line 1813
    const/16 v0, 0xa1

    #@66
    .line 1812
    invoke-virtual {p0, p1, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->announceClearTimerRecordingResult(II)V

    #@69
    .line 1814
    return-void

    #@6a
    .line 1817
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->sendClearTimerMessage(II[B)V

    #@6d
    .line 1795
    return-void
.end method

.method deviceSelect(ILandroid/hardware/hdmi/IHdmiControlCallback;)V
    .locals 5
    .param p1, "id"    # I
    .param p2, "callback"    # Landroid/hardware/hdmi/IHdmiControlCallback;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 250
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->assertRunOnServiceThread()V

    #@4
    .line 251
    iget-object v3, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mDeviceInfos:Landroid/util/SparseArray;

    #@6
    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@9
    move-result-object v2

    #@a
    check-cast v2, Landroid/hardware/hdmi/HdmiDeviceInfo;

    #@c
    .line 252
    .local v2, "targetDevice":Landroid/hardware/hdmi/HdmiDeviceInfo;
    if-nez v2, :cond_0

    #@e
    .line 253
    const/4 v3, 0x3

    #@f
    invoke-static {p2, v3}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->invokeCallback(Landroid/hardware/hdmi/IHdmiControlCallback;I)V

    #@12
    .line 254
    return-void

    #@13
    .line 256
    :cond_0
    invoke-virtual {v2}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    #@16
    move-result v1

    #@17
    .line 257
    .local v1, "targetAddress":I
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getActiveSource()Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;

    #@1a
    move-result-object v0

    #@1b
    .line 258
    .local v0, "active":Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;
    invoke-virtual {v2}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getDevicePowerStatus()I

    #@1e
    move-result v3

    #@1f
    if-nez v3, :cond_1

    #@21
    .line 259
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;->isValid()Z

    #@24
    move-result v3

    #@25
    .line 258
    if-eqz v3, :cond_1

    #@27
    .line 260
    iget v3, v0, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;->logicalAddress:I

    #@29
    if-ne v1, v3, :cond_1

    #@2b
    .line 261
    invoke-static {p2, v4}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->invokeCallback(Landroid/hardware/hdmi/IHdmiControlCallback;I)V

    #@2e
    .line 262
    return-void

    #@2f
    .line 264
    :cond_1
    if-nez v1, :cond_2

    #@31
    .line 265
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->handleSelectInternalSource()V

    #@34
    .line 267
    iget-object v3, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mService:Lcom/android/server/hdmi/HdmiControlService;

    #@36
    invoke-virtual {v3}, Lcom/android/server/hdmi/HdmiControlService;->getPhysicalAddress()I

    #@39
    move-result v3

    #@3a
    invoke-virtual {p0, v1, v3}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->setActiveSource(II)V

    #@3d
    .line 268
    iget-object v3, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mService:Lcom/android/server/hdmi/HdmiControlService;

    #@3f
    invoke-virtual {v3}, Lcom/android/server/hdmi/HdmiControlService;->getPhysicalAddress()I

    #@42
    move-result v3

    #@43
    invoke-virtual {p0, v3}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->setActivePath(I)V

    #@46
    .line 269
    invoke-static {p2, v4}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->invokeCallback(Landroid/hardware/hdmi/IHdmiControlCallback;I)V

    #@49
    .line 270
    return-void

    #@4a
    .line 272
    :cond_2
    iget-object v3, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mService:Lcom/android/server/hdmi/HdmiControlService;

    #@4c
    invoke-virtual {v3}, Lcom/android/server/hdmi/HdmiControlService;->isControlEnabled()Z

    #@4f
    move-result v3

    #@50
    if-nez v3, :cond_3

    #@52
    .line 273
    invoke-virtual {p0, v2}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->setActiveSource(Landroid/hardware/hdmi/HdmiDeviceInfo;)V

    #@55
    .line 274
    const/4 v3, 0x6

    #@56
    invoke-static {p2, v3}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->invokeCallback(Landroid/hardware/hdmi/IHdmiControlCallback;I)V

    #@59
    .line 275
    return-void

    #@5a
    .line 277
    :cond_3
    const-class v3, Lcom/android/server/hdmi/DeviceSelectAction;

    #@5c
    invoke-virtual {p0, v3}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->removeAction(Ljava/lang/Class;)V

    #@5f
    .line 278
    new-instance v3, Lcom/android/server/hdmi/DeviceSelectAction;

    #@61
    invoke-direct {v3, p0, v2, p2}, Lcom/android/server/hdmi/DeviceSelectAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;Landroid/hardware/hdmi/HdmiDeviceInfo;Landroid/hardware/hdmi/IHdmiControlCallback;)V

    #@64
    invoke-virtual {p0, v3}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->addAndStartAction(Lcom/android/server/hdmi/HdmiCecFeatureAction;)V

    #@67
    .line 249
    return-void
.end method

.method protected disableDevice(ZLcom/android/server/hdmi/HdmiCecLocalDevice$PendingActionClearedCallback;)V
    .locals 2
    .param p1, "initiatedByCec"    # Z
    .param p2, "callback"    # Lcom/android/server/hdmi/HdmiCecLocalDevice$PendingActionClearedCallback;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    #@0
    .prologue
    .line 1608
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->assertRunOnServiceThread()V

    #@3
    .line 1609
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mService:Lcom/android/server/hdmi/HdmiControlService;

    #@5
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mTvInputCallback:Landroid/media/tv/TvInputManager$TvInputCallback;

    #@7
    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiControlService;->unregisterTvInputCallback(Landroid/media/tv/TvInputManager$TvInputCallback;)V

    #@a
    .line 1614
    const-class v0, Lcom/android/server/hdmi/DeviceDiscoveryAction;

    #@c
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->removeAction(Ljava/lang/Class;)V

    #@f
    .line 1615
    const-class v0, Lcom/android/server/hdmi/HotplugDetectionAction;

    #@11
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->removeAction(Ljava/lang/Class;)V

    #@14
    .line 1616
    const-class v0, Lcom/android/server/hdmi/PowerStatusMonitorAction;

    #@16
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->removeAction(Ljava/lang/Class;)V

    #@19
    .line 1618
    const-class v0, Lcom/android/server/hdmi/OneTouchRecordAction;

    #@1b
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->removeAction(Ljava/lang/Class;)V

    #@1e
    .line 1619
    const-class v0, Lcom/android/server/hdmi/TimerRecordingAction;

    #@20
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->removeAction(Ljava/lang/Class;)V

    #@23
    .line 1621
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->disableSystemAudioIfExist()V

    #@26
    .line 1622
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->disableArcIfExist()V

    #@29
    .line 1624
    invoke-super {p0, p1, p2}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->disableDevice(ZLcom/android/server/hdmi/HdmiCecLocalDevice$PendingActionClearedCallback;)V

    #@2c
    .line 1625
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->clearDeviceInfoList()V

    #@2f
    .line 1626
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getActiveSource()Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;

    #@32
    move-result-object v0

    #@33
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;->invalidate()V

    #@36
    .line 1627
    const v0, 0xffff

    #@39
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->setActivePath(I)V

    #@3c
    .line 1628
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->checkIfPendingActionsCleared()V

    #@3f
    .line 1607
    return-void
.end method

.method dispatchMessage(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .locals 1
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    #@0
    .prologue
    .line 235
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->assertRunOnServiceThread()V

    #@3
    .line 236
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mService:Lcom/android/server/hdmi/HdmiControlService;

    #@5
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->isPowerStandby()Z

    #@8
    move-result v0

    #@9
    if-eqz v0, :cond_0

    #@b
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mStandbyHandler:Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;

    #@d
    invoke-virtual {v0, p1}, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->handleCommand(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    #@10
    move-result v0

    #@11
    if-eqz v0, :cond_0

    #@13
    .line 237
    const/4 v0, 0x1

    #@14
    return v0

    #@15
    .line 239
    :cond_0
    invoke-super {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->onMessage(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    #@18
    move-result v0

    #@19
    return v0
.end method

.method displayOsd(I)V
    .locals 1
    .param p1, "messageId"    # I
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    #@0
    .prologue
    .line 1685
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->assertRunOnServiceThread()V

    #@3
    .line 1686
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mService:Lcom/android/server/hdmi/HdmiControlService;

    #@5
    invoke-virtual {v0, p1}, Lcom/android/server/hdmi/HdmiControlService;->displayOsd(I)V

    #@8
    .line 1684
    return-void
.end method

.method displayOsd(II)V
    .locals 1
    .param p1, "messageId"    # I
    .param p2, "extra"    # I
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    #@0
    .prologue
    .line 1691
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->assertRunOnServiceThread()V

    #@3
    .line 1692
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mService:Lcom/android/server/hdmi/HdmiControlService;

    #@5
    invoke-virtual {v0, p1, p2}, Lcom/android/server/hdmi/HdmiControlService;->displayOsd(II)V

    #@8
    .line 1690
    return-void
.end method

.method doManualPortSwitching(ILandroid/hardware/hdmi/IHdmiControlCallback;)V
    .locals 5
    .param p1, "portId"    # I
    .param p2, "callback"    # Landroid/hardware/hdmi/IHdmiControlCallback;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x6

    #@1
    const/4 v4, 0x0

    #@2
    .line 370
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->assertRunOnServiceThread()V

    #@5
    .line 372
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mService:Lcom/android/server/hdmi/HdmiControlService;

    #@7
    invoke-virtual {v2, p1}, Lcom/android/server/hdmi/HdmiControlService;->isValidPortId(I)Z

    #@a
    move-result v2

    #@b
    if-nez v2, :cond_0

    #@d
    .line 373
    invoke-static {p2, v3}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->invokeCallback(Landroid/hardware/hdmi/IHdmiControlCallback;I)V

    #@10
    .line 374
    return-void

    #@11
    .line 376
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getActivePortId()I

    #@14
    move-result v2

    #@15
    if-ne p1, v2, :cond_1

    #@17
    .line 377
    invoke-static {p2, v4}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->invokeCallback(Landroid/hardware/hdmi/IHdmiControlCallback;I)V

    #@1a
    .line 378
    return-void

    #@1b
    .line 380
    :cond_1
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mActiveSource:Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;

    #@1d
    invoke-virtual {v2}, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;->invalidate()V

    #@20
    .line 381
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mService:Lcom/android/server/hdmi/HdmiControlService;

    #@22
    invoke-virtual {v2}, Lcom/android/server/hdmi/HdmiControlService;->isControlEnabled()Z

    #@25
    move-result v2

    #@26
    if-nez v2, :cond_2

    #@28
    .line 382
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->setActivePortId(I)V

    #@2b
    .line 383
    invoke-static {p2, v3}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->invokeCallback(Landroid/hardware/hdmi/IHdmiControlCallback;I)V

    #@2e
    .line 384
    return-void

    #@2f
    .line 386
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getActivePortId()I

    #@32
    move-result v2

    #@33
    const/4 v3, -0x1

    #@34
    if-eq v2, v3, :cond_3

    #@36
    .line 387
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mService:Lcom/android/server/hdmi/HdmiControlService;

    #@38
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getActivePortId()I

    #@3b
    move-result v3

    #@3c
    invoke-virtual {v2, v3}, Lcom/android/server/hdmi/HdmiControlService;->portIdToPath(I)I

    #@3f
    move-result v1

    #@40
    .line 388
    .local v1, "oldPath":I
    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->setActivePath(I)V

    #@43
    .line 389
    iget-boolean v2, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mSkipRoutingControl:Z

    #@45
    if-eqz v2, :cond_4

    #@47
    .line 390
    iput-boolean v4, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mSkipRoutingControl:Z

    #@49
    .line 391
    return-void

    #@4a
    .line 387
    .end local v1    # "oldPath":I
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    #@4d
    move-result-object v2

    #@4e
    invoke-virtual {v2}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getPhysicalAddress()I

    #@51
    move-result v1

    #@52
    .restart local v1    # "oldPath":I
    goto :goto_0

    #@53
    .line 393
    :cond_4
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mService:Lcom/android/server/hdmi/HdmiControlService;

    #@55
    invoke-virtual {v2, p1}, Lcom/android/server/hdmi/HdmiControlService;->portIdToPath(I)I

    #@58
    move-result v0

    #@59
    .line 394
    .local v0, "newPath":I
    const/4 v2, 0x1

    #@5a
    invoke-virtual {p0, v1, v0, v2, p2}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->startRoutingControl(IIZLandroid/hardware/hdmi/IHdmiControlCallback;)V

    #@5d
    .line 369
    return-void
.end method

.method protected dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 4
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    #@0
    .prologue
    .line 1908
    invoke-super {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    #@3
    .line 1909
    new-instance v2, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v3, "mArcEstablished: "

    #@b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v2

    #@f
    iget-boolean v3, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mArcEstablished:Z

    #@11
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@14
    move-result-object v2

    #@15
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@18
    move-result-object v2

    #@19
    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@1c
    .line 1910
    new-instance v2, Ljava/lang/StringBuilder;

    #@1e
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@21
    const-string/jumbo v3, "mArcFeatureEnabled: "

    #@24
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v2

    #@28
    iget-object v3, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mArcFeatureEnabled:Landroid/util/SparseBooleanArray;

    #@2a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v2

    #@2e
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@31
    move-result-object v2

    #@32
    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@35
    .line 1911
    new-instance v2, Ljava/lang/StringBuilder;

    #@37
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@3a
    const-string/jumbo v3, "mSystemAudioActivated: "

    #@3d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v2

    #@41
    iget-boolean v3, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mSystemAudioActivated:Z

    #@43
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@46
    move-result-object v2

    #@47
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4a
    move-result-object v2

    #@4b
    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@4e
    .line 1912
    new-instance v2, Ljava/lang/StringBuilder;

    #@50
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@53
    const-string/jumbo v3, "mSystemAudioMute: "

    #@56
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@59
    move-result-object v2

    #@5a
    iget-boolean v3, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mSystemAudioMute:Z

    #@5c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@5f
    move-result-object v2

    #@60
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@63
    move-result-object v2

    #@64
    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@67
    .line 1913
    new-instance v2, Ljava/lang/StringBuilder;

    #@69
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@6c
    const-string/jumbo v3, "mAutoDeviceOff: "

    #@6f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@72
    move-result-object v2

    #@73
    iget-boolean v3, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mAutoDeviceOff:Z

    #@75
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@78
    move-result-object v2

    #@79
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7c
    move-result-object v2

    #@7d
    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@80
    .line 1914
    new-instance v2, Ljava/lang/StringBuilder;

    #@82
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@85
    const-string/jumbo v3, "mAutoWakeup: "

    #@88
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8b
    move-result-object v2

    #@8c
    iget-boolean v3, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mAutoWakeup:Z

    #@8e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@91
    move-result-object v2

    #@92
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@95
    move-result-object v2

    #@96
    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@99
    .line 1915
    new-instance v2, Ljava/lang/StringBuilder;

    #@9b
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@9e
    const-string/jumbo v3, "mSkipRoutingControl: "

    #@a1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a4
    move-result-object v2

    #@a5
    iget-boolean v3, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mSkipRoutingControl:Z

    #@a7
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@aa
    move-result-object v2

    #@ab
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ae
    move-result-object v2

    #@af
    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@b2
    .line 1916
    new-instance v2, Ljava/lang/StringBuilder;

    #@b4
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@b7
    const-string/jumbo v3, "mPrevPortId: "

    #@ba
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bd
    move-result-object v2

    #@be
    iget v3, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mPrevPortId:I

    #@c0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@c3
    move-result-object v2

    #@c4
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c7
    move-result-object v2

    #@c8
    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@cb
    .line 1917
    const-string/jumbo v2, "CEC devices:"

    #@ce
    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@d1
    .line 1918
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    #@d4
    .line 1919
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mSafeAllDeviceInfos:Ljava/util/List;

    #@d6
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@d9
    move-result-object v1

    #@da
    .local v1, "info$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@dd
    move-result v2

    #@de
    if-eqz v2, :cond_0

    #@e0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@e3
    move-result-object v0

    #@e4
    check-cast v0, Landroid/hardware/hdmi/HdmiDeviceInfo;

    #@e6
    .line 1920
    .local v0, "info":Landroid/hardware/hdmi/HdmiDeviceInfo;
    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    #@e9
    goto :goto_0

    #@ea
    .line 1922
    .end local v0    # "info":Landroid/hardware/hdmi/HdmiDeviceInfo;
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    #@ed
    .line 1907
    return-void
.end method

.method getAutoWakeup()Z
    .locals 1
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    #@0
    .prologue
    .line 1601
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->assertRunOnServiceThread()V

    #@3
    .line 1602
    iget-boolean v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mAutoWakeup:Z

    #@5
    return v0
.end method

.method getAvrDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;
    .locals 1
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    #@0
    .prologue
    .line 1371
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->assertRunOnServiceThread()V

    #@3
    .line 1372
    const/4 v0, 0x5

    #@4
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getCecDeviceInfo(I)Landroid/hardware/hdmi/HdmiDeviceInfo;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method getCecDeviceInfo(I)Landroid/hardware/hdmi/HdmiDeviceInfo;
    .locals 2
    .param p1, "logicalAddress"    # I
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    #@0
    .prologue
    .line 1386
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->assertRunOnServiceThread()V

    #@3
    .line 1387
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mDeviceInfos:Landroid/util/SparseArray;

    #@5
    invoke-static {p1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->idForCecDevice(I)I

    #@8
    move-result v1

    #@9
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@c
    move-result-object v0

    #@d
    check-cast v0, Landroid/hardware/hdmi/HdmiDeviceInfo;

    #@f
    return-object v0
.end method

.method final getDeviceInfoByPath(I)Landroid/hardware/hdmi/HdmiDeviceInfo;
    .locals 3
    .param p1, "path"    # I
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    #@0
    .prologue
    .line 1510
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->assertRunOnServiceThread()V

    #@3
    .line 1511
    const/4 v2, 0x0

    #@4
    invoke-virtual {p0, v2}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getDeviceInfoList(Z)Ljava/util/List;

    #@7
    move-result-object v2

    #@8
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@b
    move-result-object v1

    #@c
    .local v1, "info$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@f
    move-result v2

    #@10
    if-eqz v2, :cond_1

    #@12
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@15
    move-result-object v0

    #@16
    check-cast v0, Landroid/hardware/hdmi/HdmiDeviceInfo;

    #@18
    .line 1512
    .local v0, "info":Landroid/hardware/hdmi/HdmiDeviceInfo;
    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getPhysicalAddress()I

    #@1b
    move-result v2

    #@1c
    if-ne v2, p1, :cond_0

    #@1e
    .line 1513
    return-object v0

    #@1f
    .line 1516
    .end local v0    # "info":Landroid/hardware/hdmi/HdmiDeviceInfo;
    :cond_1
    const/4 v2, 0x0

    #@20
    return-object v2
.end method

.method getDeviceInfoList(Z)Ljava/util/List;
    .locals 4
    .param p1, "includeLocalDevice"    # Z
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/hdmi/HdmiDeviceInfo;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 1276
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->assertRunOnServiceThread()V

    #@3
    .line 1277
    if-eqz p1, :cond_0

    #@5
    .line 1278
    iget-object v3, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mDeviceInfos:Landroid/util/SparseArray;

    #@7
    invoke-static {v3}, Lcom/android/server/hdmi/HdmiUtils;->sparseArrayToList(Landroid/util/SparseArray;)Ljava/util/List;

    #@a
    move-result-object v3

    #@b
    return-object v3

    #@c
    .line 1280
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    #@e
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@11
    .line 1281
    .local v2, "infoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/hdmi/HdmiDeviceInfo;>;"
    const/4 v0, 0x0

    #@12
    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mDeviceInfos:Landroid/util/SparseArray;

    #@14
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    #@17
    move-result v3

    #@18
    if-ge v0, v3, :cond_2

    #@1a
    .line 1282
    iget-object v3, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mDeviceInfos:Landroid/util/SparseArray;

    #@1c
    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@1f
    move-result-object v1

    #@20
    check-cast v1, Landroid/hardware/hdmi/HdmiDeviceInfo;

    #@22
    .line 1283
    .local v1, "info":Landroid/hardware/hdmi/HdmiDeviceInfo;
    invoke-virtual {v1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    #@25
    move-result v3

    #@26
    invoke-direct {p0, v3}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->isLocalDeviceAddress(I)Z

    #@29
    move-result v3

    #@2a
    if-nez v3, :cond_1

    #@2c
    .line 1284
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@2f
    .line 1281
    :cond_1
    add-int/lit8 v0, v0, 0x1

    #@31
    goto :goto_0

    #@32
    .line 1287
    .end local v1    # "info":Landroid/hardware/hdmi/HdmiDeviceInfo;
    :cond_2
    return-object v2
.end method

.method getPortId(I)I
    .locals 1
    .param p1, "physicalAddress"    # I

    #@0
    .prologue
    .line 324
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mService:Lcom/android/server/hdmi/HdmiControlService;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/server/hdmi/HdmiControlService;->pathToPortId(I)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method getPowerStatus()I
    .locals 1
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    #@0
    .prologue
    .line 414
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->assertRunOnServiceThread()V

    #@3
    .line 415
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mService:Lcom/android/server/hdmi/HdmiControlService;

    #@5
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->getPowerStatus()I

    #@8
    move-result v0

    #@9
    return v0
.end method

.method protected getPreferredAddress()I
    .locals 1

    #@0
    .prologue
    .line 224
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method getPrevPortId()I
    .locals 2

    #@0
    .prologue
    .line 331
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    .line 332
    :try_start_0
    iget v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mPrevPortId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    monitor-exit v0

    #@6
    return v1

    #@7
    .line 331
    :catchall_0
    move-exception v1

    #@8
    monitor-exit v0

    #@9
    throw v1
.end method

.method getSafeAvrDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;
    .locals 1

    #@0
    .prologue
    .line 1395
    const/4 v0, 0x5

    #@1
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getSafeCecDeviceInfo(I)Landroid/hardware/hdmi/HdmiDeviceInfo;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method getSafeCecDeviceInfo(I)Landroid/hardware/hdmi/HdmiDeviceInfo;
    .locals 4
    .param p1, "logicalAddress"    # I

    #@0
    .prologue
    .line 1406
    iget-object v3, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v3

    #@3
    .line 1407
    :try_start_0
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mSafeAllDeviceInfos:Ljava/util/List;

    #@5
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@8
    move-result-object v1

    #@9
    .local v1, "info$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@c
    move-result v2

    #@d
    if-eqz v2, :cond_1

    #@f
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@12
    move-result-object v0

    #@13
    check-cast v0, Landroid/hardware/hdmi/HdmiDeviceInfo;

    #@15
    .line 1408
    .local v0, "info":Landroid/hardware/hdmi/HdmiDeviceInfo;
    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->isCecDevice()Z

    #@18
    move-result v2

    #@19
    if-eqz v2, :cond_0

    #@1b
    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1e
    move-result v2

    #@1f
    if-ne v2, p1, :cond_0

    #@21
    monitor-exit v3

    #@22
    .line 1409
    return-object v0

    #@23
    .line 1412
    .end local v0    # "info":Landroid/hardware/hdmi/HdmiDeviceInfo;
    :cond_1
    const/4 v2, 0x0

    #@24
    monitor-exit v3

    #@25
    return-object v2

    #@26
    .line 1406
    .end local v1    # "info$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    #@27
    monitor-exit v3

    #@28
    throw v2
.end method

.method getSafeCecDevicesLocked()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/hdmi/HdmiDeviceInfo;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 1417
    new-instance v2, Ljava/util/ArrayList;

    #@2
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 1418
    .local v2, "infoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/hdmi/HdmiDeviceInfo;>;"
    iget-object v3, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mSafeAllDeviceInfos:Ljava/util/List;

    #@7
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

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
    if-eqz v3, :cond_1

    #@11
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@14
    move-result-object v0

    #@15
    check-cast v0, Landroid/hardware/hdmi/HdmiDeviceInfo;

    #@17
    .line 1419
    .local v0, "info":Landroid/hardware/hdmi/HdmiDeviceInfo;
    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    #@1a
    move-result v3

    #@1b
    invoke-direct {p0, v3}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->isLocalDeviceAddress(I)Z

    #@1e
    move-result v3

    #@1f
    if-nez v3, :cond_0

    #@21
    .line 1422
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@24
    goto :goto_0

    #@25
    .line 1424
    .end local v0    # "info":Landroid/hardware/hdmi/HdmiDeviceInfo;
    :cond_1
    return-object v2
.end method

.method getSafeDeviceInfoByPath(I)Landroid/hardware/hdmi/HdmiDeviceInfo;
    .locals 4
    .param p1, "path"    # I

    #@0
    .prologue
    .line 1528
    iget-object v3, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v3

    #@3
    .line 1529
    :try_start_0
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mSafeAllDeviceInfos:Ljava/util/List;

    #@5
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@8
    move-result-object v1

    #@9
    .local v1, "info$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@c
    move-result v2

    #@d
    if-eqz v2, :cond_1

    #@f
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@12
    move-result-object v0

    #@13
    check-cast v0, Landroid/hardware/hdmi/HdmiDeviceInfo;

    #@15
    .line 1530
    .local v0, "info":Landroid/hardware/hdmi/HdmiDeviceInfo;
    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getPhysicalAddress()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@18
    move-result v2

    #@19
    if-ne v2, p1, :cond_0

    #@1b
    monitor-exit v3

    #@1c
    .line 1531
    return-object v0

    #@1d
    .line 1534
    .end local v0    # "info":Landroid/hardware/hdmi/HdmiDeviceInfo;
    :cond_1
    const/4 v2, 0x0

    #@1e
    monitor-exit v3

    #@1f
    return-object v2

    #@20
    .line 1528
    .end local v1    # "info$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    #@21
    monitor-exit v3

    #@22
    throw v2
.end method

.method getSafeExternalInputsLocked()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/hdmi/HdmiDeviceInfo;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 1295
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mSafeExternalInputs:Ljava/util/List;

    #@2
    return-object v0
.end method

.method getSystemAudioModeSetting()Z
    .locals 3

    #@0
    .prologue
    .line 871
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mService:Lcom/android/server/hdmi/HdmiControlService;

    #@2
    const-string/jumbo v1, "hdmi_system_audio_enabled"

    #@5
    const/4 v2, 0x0

    #@6
    invoke-virtual {v0, v1, v2}, Lcom/android/server/hdmi/HdmiControlService;->readBooleanSetting(Ljava/lang/String;Z)Z

    #@9
    move-result v0

    #@a
    return v0
.end method

.method protected handleActiveSource(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .locals 9
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    const/4 v8, 0x1

    #@2
    const/4 v7, 0x0

    #@3
    .line 476
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->assertRunOnServiceThread()V

    #@6
    .line 477
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    #@9
    move-result v2

    #@a
    .line 478
    .local v2, "logicalAddress":I
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    #@d
    move-result-object v4

    #@e
    invoke-static {v4}, Lcom/android/server/hdmi/HdmiUtils;->twoBytesToInt([B)I

    #@11
    move-result v3

    #@12
    .line 479
    .local v3, "physicalAddress":I
    invoke-virtual {p0, v2}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getCecDeviceInfo(I)Landroid/hardware/hdmi/HdmiDeviceInfo;

    #@15
    move-result-object v1

    #@16
    .line 480
    .local v1, "info":Landroid/hardware/hdmi/HdmiDeviceInfo;
    if-nez v1, :cond_1

    #@18
    .line 481
    invoke-direct {p0, v3}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->handleNewDeviceAtTheTailOfActivePath(I)Z

    #@1b
    move-result v4

    #@1c
    if-nez v4, :cond_0

    #@1e
    .line 482
    const-string/jumbo v4, "Device info %X not found; buffering the command"

    #@21
    new-array v5, v8, [Ljava/lang/Object;

    #@23
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@26
    move-result-object v6

    #@27
    aput-object v6, v5, v7

    #@29
    invoke-static {v4, v5}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    #@2c
    .line 483
    iget-object v4, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mDelayedMessageBuffer:Lcom/android/server/hdmi/DelayedMessageBuffer;

    #@2e
    invoke-virtual {v4, p1}, Lcom/android/server/hdmi/DelayedMessageBuffer;->add(Lcom/android/server/hdmi/HdmiCecMessage;)V

    #@31
    .line 493
    :cond_0
    :goto_0
    return v8

    #@32
    .line 485
    :cond_1
    invoke-virtual {v1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getId()I

    #@35
    move-result v4

    #@36
    invoke-virtual {p0, v4}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->isInputReady(I)Z

    #@39
    move-result v4

    #@3a
    if-nez v4, :cond_2

    #@3c
    .line 486
    const-string/jumbo v4, "Input not ready for device: %X; buffering the command"

    #@3f
    new-array v5, v8, [Ljava/lang/Object;

    #@41
    invoke-virtual {v1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getId()I

    #@44
    move-result v6

    #@45
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@48
    move-result-object v6

    #@49
    aput-object v6, v5, v7

    #@4b
    invoke-static {v4, v5}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    #@4e
    .line 487
    iget-object v4, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mDelayedMessageBuffer:Lcom/android/server/hdmi/DelayedMessageBuffer;

    #@50
    invoke-virtual {v4, p1}, Lcom/android/server/hdmi/DelayedMessageBuffer;->add(Lcom/android/server/hdmi/HdmiCecMessage;)V

    #@53
    goto :goto_0

    #@54
    .line 489
    :cond_2
    invoke-virtual {p0, v2, v7}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->updateDevicePowerStatus(II)V

    #@57
    .line 490
    invoke-static {v2, v3}, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;->of(II)Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;

    #@5a
    move-result-object v0

    #@5b
    .line 491
    .local v0, "activeSource":Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;
    invoke-static {p0, v5}, Lcom/android/server/hdmi/ActiveSourceHandler;->create(Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;Landroid/hardware/hdmi/IHdmiControlCallback;)Lcom/android/server/hdmi/ActiveSourceHandler;

    #@5e
    move-result-object v4

    #@5f
    invoke-virtual {v1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getDeviceType()I

    #@62
    move-result v5

    #@63
    invoke-virtual {v4, v0, v5}, Lcom/android/server/hdmi/ActiveSourceHandler;->process(Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;I)V

    #@66
    goto :goto_0
.end method

.method protected handleGetMenuLanguage(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .locals 3
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    #@0
    .prologue
    .line 549
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->assertRunOnServiceThread()V

    #@3
    .line 550
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mService:Lcom/android/server/hdmi/HdmiControlService;

    #@5
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->getLanguage()Ljava/lang/String;

    #@8
    move-result-object v0

    #@9
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->broadcastMenuLanguage(Ljava/lang/String;)Z

    #@c
    move-result v0

    #@d
    if-nez v0, :cond_0

    #@f
    .line 551
    const-string/jumbo v0, "HdmiCecLocalDeviceTv"

    #@12
    new-instance v1, Ljava/lang/StringBuilder;

    #@14
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@17
    const-string/jumbo v2, "Failed to respond to <Get Menu Language>: "

    #@1a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v1

    #@1e
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->toString()Ljava/lang/String;

    #@21
    move-result-object v2

    #@22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v1

    #@26
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@29
    move-result-object v1

    #@2a
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@2d
    .line 553
    :cond_0
    const/4 v0, 0x1

    #@2e
    return v0
.end method

.method protected handleImageViewOn(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .locals 1
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    #@0
    .prologue
    .line 727
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->assertRunOnServiceThread()V

    #@3
    .line 729
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->handleTextViewOn(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    #@6
    move-result v0

    #@7
    return v0
.end method

.method protected handleInactiveSource(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .locals 7
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    const/4 v5, -0x1

    #@2
    const/4 v4, 0x1

    #@3
    .line 499
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->assertRunOnServiceThread()V

    #@6
    .line 503
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getActiveSource()Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;

    #@9
    move-result-object v2

    #@a
    iget v2, v2, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;->logicalAddress:I

    #@c
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    #@f
    move-result v3

    #@10
    if-eq v2, v3, :cond_0

    #@12
    .line 504
    return v4

    #@13
    .line 506
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->isProhibitMode()Z

    #@16
    move-result v2

    #@17
    if-eqz v2, :cond_1

    #@19
    .line 507
    return v4

    #@1a
    .line 509
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getPrevPortId()I

    #@1d
    move-result v1

    #@1e
    .line 510
    .local v1, "portId":I
    if-eq v1, v5, :cond_4

    #@20
    .line 513
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    #@23
    move-result v2

    #@24
    invoke-virtual {p0, v2}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getCecDeviceInfo(I)Landroid/hardware/hdmi/HdmiDeviceInfo;

    #@27
    move-result-object v0

    #@28
    .line 514
    .local v0, "inactiveSource":Landroid/hardware/hdmi/HdmiDeviceInfo;
    if-nez v0, :cond_2

    #@2a
    .line 515
    return v4

    #@2b
    .line 517
    :cond_2
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mService:Lcom/android/server/hdmi/HdmiControlService;

    #@2d
    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getPhysicalAddress()I

    #@30
    move-result v3

    #@31
    invoke-virtual {v2, v3}, Lcom/android/server/hdmi/HdmiControlService;->pathToPortId(I)I

    #@34
    move-result v2

    #@35
    if-ne v2, v1, :cond_3

    #@37
    .line 518
    return v4

    #@38
    .line 522
    :cond_3
    invoke-virtual {p0, v1, v6}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->doManualPortSwitching(ILandroid/hardware/hdmi/IHdmiControlCallback;)V

    #@3b
    .line 523
    invoke-virtual {p0, v5}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->setPrevPortId(I)V

    #@3e
    .line 531
    .end local v0    # "inactiveSource":Landroid/hardware/hdmi/HdmiDeviceInfo;
    :goto_0
    return v4

    #@3f
    .line 527
    :cond_4
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mActiveSource:Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;

    #@41
    invoke-virtual {v2}, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;->invalidate()V

    #@44
    .line 528
    const v2, 0xffff

    #@47
    invoke-virtual {p0, v2}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->setActivePath(I)V

    #@4a
    .line 529
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mService:Lcom/android/server/hdmi/HdmiControlService;

    #@4c
    sget-object v3, Landroid/hardware/hdmi/HdmiDeviceInfo;->INACTIVE_DEVICE:Landroid/hardware/hdmi/HdmiDeviceInfo;

    #@4e
    invoke-virtual {v2, v3}, Lcom/android/server/hdmi/HdmiControlService;->invokeInputChangeListener(Landroid/hardware/hdmi/HdmiDeviceInfo;)V

    #@51
    goto :goto_0
.end method

.method protected handleInitiateArc(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .locals 4
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    .line 1081
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->assertRunOnServiceThread()V

    #@4
    .line 1083
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    #@7
    move-result v1

    #@8
    invoke-direct {p0, v1, v3}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->canStartArcUpdateAction(IZ)Z

    #@b
    move-result v1

    #@c
    if-nez v1, :cond_2

    #@e
    .line 1084
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getAvrDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    #@11
    move-result-object v1

    #@12
    if-nez v1, :cond_0

    #@14
    .line 1086
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mDelayedMessageBuffer:Lcom/android/server/hdmi/DelayedMessageBuffer;

    #@16
    invoke-virtual {v1, p1}, Lcom/android/server/hdmi/DelayedMessageBuffer;->add(Lcom/android/server/hdmi/HdmiCecMessage;)V

    #@19
    .line 1087
    return v3

    #@1a
    .line 1089
    :cond_0
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mService:Lcom/android/server/hdmi/HdmiControlService;

    #@1c
    const/4 v2, 0x4

    #@1d
    invoke-virtual {v1, p1, v2}, Lcom/android/server/hdmi/HdmiControlService;->maySendFeatureAbortCommand(Lcom/android/server/hdmi/HdmiCecMessage;I)V

    #@20
    .line 1090
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    #@23
    move-result v1

    #@24
    invoke-virtual {p0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->isConnectedToArcPort(I)Z

    #@27
    move-result v1

    #@28
    if-nez v1, :cond_1

    #@2a
    .line 1091
    invoke-virtual {p0, v3}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->displayOsd(I)V

    #@2d
    .line 1093
    :cond_1
    return v3

    #@2e
    .line 1098
    :cond_2
    const-class v1, Lcom/android/server/hdmi/RequestArcInitiationAction;

    #@30
    invoke-virtual {p0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->removeAction(Ljava/lang/Class;)V

    #@33
    .line 1099
    new-instance v0, Lcom/android/server/hdmi/SetArcTransmissionStateAction;

    #@35
    .line 1100
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    #@38
    move-result v1

    #@39
    .line 1099
    invoke-direct {v0, p0, v1, v3}, Lcom/android/server/hdmi/SetArcTransmissionStateAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;IZ)V

    #@3c
    .line 1101
    .local v0, "action":Lcom/android/server/hdmi/SetArcTransmissionStateAction;
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->addAndStartAction(Lcom/android/server/hdmi/HdmiCecFeatureAction;)V

    #@3f
    .line 1102
    return v3
.end method

.method protected handleMenuStatus(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .locals 1
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;

    #@0
    .prologue
    .line 1875
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method protected handleRecordStatus(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .locals 1
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;

    #@0
    .prologue
    .line 613
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method protected handleRecordTvScreen(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .locals 7
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    #@0
    .prologue
    .line 1176
    const-class v5, Lcom/android/server/hdmi/OneTouchRecordAction;

    #@2
    invoke-virtual {p0, v5}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getActions(Ljava/lang/Class;)Ljava/util/List;

    #@5
    move-result-object v1

    #@6
    .line 1177
    .local v1, "actions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/hdmi/OneTouchRecordAction;>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    #@9
    move-result v5

    #@a
    if-nez v5, :cond_1

    #@c
    .line 1179
    const/4 v5, 0x0

    #@d
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@10
    move-result-object v0

    #@11
    check-cast v0, Lcom/android/server/hdmi/OneTouchRecordAction;

    #@13
    .line 1180
    .local v0, "action":Lcom/android/server/hdmi/OneTouchRecordAction;
    invoke-virtual {v0}, Lcom/android/server/hdmi/OneTouchRecordAction;->getRecorderAddress()I

    #@16
    move-result v5

    #@17
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    #@1a
    move-result v6

    #@1b
    if-eq v5, v6, :cond_0

    #@1d
    .line 1182
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    #@20
    move-result v5

    #@21
    .line 1183
    const/16 v6, 0x30

    #@23
    .line 1181
    invoke-virtual {p0, v5, v6}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->announceOneTouchRecordResult(II)V

    #@26
    .line 1185
    :cond_0
    invoke-super {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->handleRecordTvScreen(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    #@29
    move-result v5

    #@2a
    return v5

    #@2b
    .line 1188
    .end local v0    # "action":Lcom/android/server/hdmi/OneTouchRecordAction;
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    #@2e
    move-result v4

    #@2f
    .line 1189
    .local v4, "recorderAddress":I
    iget-object v5, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mService:Lcom/android/server/hdmi/HdmiControlService;

    #@31
    invoke-virtual {v5, v4}, Lcom/android/server/hdmi/HdmiControlService;->invokeRecordRequestListener(I)[B

    #@34
    move-result-object v3

    #@35
    .line 1190
    .local v3, "recordSource":[B
    invoke-virtual {p0, v4, v3}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->startOneTouchRecord(I[B)I

    #@38
    move-result v2

    #@39
    .line 1191
    .local v2, "reason":I
    const/4 v5, -0x1

    #@3a
    if-eq v2, v5, :cond_2

    #@3c
    .line 1192
    iget-object v5, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mService:Lcom/android/server/hdmi/HdmiControlService;

    #@3e
    invoke-virtual {v5, p1, v2}, Lcom/android/server/hdmi/HdmiControlService;->maySendFeatureAbortCommand(Lcom/android/server/hdmi/HdmiCecMessage;I)V

    #@41
    .line 1194
    :cond_2
    const/4 v5, 0x1

    #@42
    return v5
.end method

.method handleRemoveActiveRoutingPath(I)V
    .locals 4
    .param p1, "path"    # I
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    #@0
    .prologue
    .line 1465
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->assertRunOnServiceThread()V

    #@3
    .line 1467
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getActivePath()I

    #@6
    move-result v1

    #@7
    invoke-static {p1, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->isTailOfActivePath(II)Z

    #@a
    move-result v1

    #@b
    if-eqz v1, :cond_0

    #@d
    .line 1468
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mService:Lcom/android/server/hdmi/HdmiControlService;

    #@f
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getActivePortId()I

    #@12
    move-result v2

    #@13
    invoke-virtual {v1, v2}, Lcom/android/server/hdmi/HdmiControlService;->portIdToPath(I)I

    #@16
    move-result v0

    #@17
    .line 1469
    .local v0, "newPath":I
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getActivePath()I

    #@1a
    move-result v1

    #@1b
    const/4 v2, 0x1

    #@1c
    const/4 v3, 0x0

    #@1d
    invoke-virtual {p0, v1, v0, v2, v3}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->startRoutingControl(IIZLandroid/hardware/hdmi/IHdmiControlCallback;)V

    #@20
    .line 1464
    .end local v0    # "newPath":I
    :cond_0
    return-void
.end method

.method protected handleReportAudioStatus(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .locals 6
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 705
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->assertRunOnServiceThread()V

    #@5
    .line 707
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    #@8
    move-result-object v1

    #@9
    .line 708
    .local v1, "params":[B
    aget-byte v5, v1, v3

    #@b
    and-int/lit16 v0, v5, 0x80

    #@d
    .line 709
    .local v0, "mute":I
    aget-byte v5, v1, v3

    #@f
    and-int/lit8 v2, v5, 0x7f

    #@11
    .line 710
    .local v2, "volume":I
    const/16 v5, 0x80

    #@13
    if-ne v0, v5, :cond_0

    #@15
    move v3, v4

    #@16
    :cond_0
    invoke-virtual {p0, v3, v2}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->setAudioStatus(ZI)V

    #@19
    .line 711
    return v4
.end method

.method protected handleReportPhysicalAddress(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .locals 8
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    #@0
    .prologue
    const/4 v7, 0x1

    #@1
    .line 571
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->assertRunOnServiceThread()V

    #@4
    .line 572
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    #@7
    move-result-object v3

    #@8
    invoke-static {v3}, Lcom/android/server/hdmi/HdmiUtils;->twoBytesToInt([B)I

    #@b
    move-result v2

    #@c
    .line 573
    .local v2, "path":I
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    #@f
    move-result v1

    #@10
    .line 574
    .local v1, "address":I
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    #@13
    move-result-object v3

    #@14
    const/4 v5, 0x2

    #@15
    aget-byte v4, v3, v5

    #@17
    .line 576
    .local v4, "type":I
    invoke-virtual {p0, v1, v4, v2}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->updateCecSwitchInfo(III)Z

    #@1a
    move-result v3

    #@1b
    if-eqz v3, :cond_0

    #@1d
    return v7

    #@1e
    .line 579
    :cond_0
    const-class v3, Lcom/android/server/hdmi/DeviceDiscoveryAction;

    #@20
    invoke-virtual {p0, v3}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->hasAction(Ljava/lang/Class;)Z

    #@23
    move-result v3

    #@24
    if-eqz v3, :cond_1

    #@26
    .line 580
    const-string/jumbo v3, "HdmiCecLocalDeviceTv"

    #@29
    new-instance v5, Ljava/lang/StringBuilder;

    #@2b
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@2e
    const-string/jumbo v6, "Ignored while Device Discovery Action is in progress: "

    #@31
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v5

    #@35
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v5

    #@39
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3c
    move-result-object v5

    #@3d
    invoke-static {v3, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@40
    .line 581
    return v7

    #@41
    .line 584
    :cond_1
    invoke-virtual {p0, v1, v2}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->isInDeviceList(II)Z

    #@44
    move-result v3

    #@45
    if-nez v3, :cond_2

    #@47
    .line 585
    invoke-direct {p0, v2}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->handleNewDeviceAtTheTailOfActivePath(I)Z

    #@4a
    .line 590
    :cond_2
    new-instance v0, Landroid/hardware/hdmi/HdmiDeviceInfo;

    #@4c
    invoke-virtual {p0, v2}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getPortId(I)I

    #@4f
    move-result v3

    #@50
    .line 591
    invoke-static {v1}, Lcom/android/server/hdmi/HdmiUtils;->getDefaultDeviceName(I)Ljava/lang/String;

    #@53
    move-result-object v6

    #@54
    const v5, 0xffffff

    #@57
    .line 590
    invoke-direct/range {v0 .. v6}, Landroid/hardware/hdmi/HdmiDeviceInfo;-><init>(IIIIILjava/lang/String;)V

    #@5a
    .line 592
    .local v0, "deviceInfo":Landroid/hardware/hdmi/HdmiDeviceInfo;
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->addCecDevice(Landroid/hardware/hdmi/HdmiDeviceInfo;)V

    #@5d
    .line 593
    invoke-static {v1, v2}, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;->of(II)Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;

    #@60
    move-result-object v3

    #@61
    invoke-virtual {p0, v3, v4}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->startNewDeviceAction(Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;I)V

    #@64
    .line 594
    return v7
.end method

.method protected handleReportPowerStatus(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .locals 3
    .param p1, "command"    # Lcom/android/server/hdmi/HdmiCecMessage;

    #@0
    .prologue
    .line 599
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    #@3
    move-result-object v1

    #@4
    const/4 v2, 0x0

    #@5
    aget-byte v1, v1, v2

    #@7
    and-int/lit16 v0, v1, 0xff

    #@9
    .line 600
    .local v0, "newStatus":I
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    #@c
    move-result v1

    #@d
    invoke-virtual {p0, v1, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->updateDevicePowerStatus(II)V

    #@10
    .line 601
    const/4 v1, 0x1

    #@11
    return v1
.end method

.method protected handleRequestActiveSource(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .locals 3
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    #@0
    .prologue
    .line 537
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->assertRunOnServiceThread()V

    #@3
    .line 539
    iget v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mAddress:I

    #@5
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getActiveSource()Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;

    #@8
    move-result-object v1

    #@9
    iget v1, v1, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;->logicalAddress:I

    #@b
    if-ne v0, v1, :cond_0

    #@d
    .line 540
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mService:Lcom/android/server/hdmi/HdmiControlService;

    #@f
    .line 541
    iget v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mAddress:I

    #@11
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getActivePath()I

    #@14
    move-result v2

    #@15
    invoke-static {v1, v2}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildActiveSource(II)Lcom/android/server/hdmi/HdmiCecMessage;

    #@18
    move-result-object v1

    #@19
    .line 540
    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    #@1c
    .line 543
    :cond_0
    const/4 v0, 0x1

    #@1d
    return v0
.end method

.method protected handleRoutingChange(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .locals 6
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    .line 689
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->assertRunOnServiceThread()V

    #@4
    .line 691
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    #@7
    move-result-object v2

    #@8
    .line 692
    .local v2, "params":[B
    invoke-static {v2}, Lcom/android/server/hdmi/HdmiUtils;->twoBytesToInt([B)I

    #@b
    move-result v0

    #@c
    .line 693
    .local v0, "currentPath":I
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getActivePath()I

    #@f
    move-result v3

    #@10
    invoke-static {v3, v0}, Lcom/android/server/hdmi/HdmiUtils;->isAffectingActiveRoutingPath(II)Z

    #@13
    move-result v3

    #@14
    if-eqz v3, :cond_0

    #@16
    .line 694
    iget-object v3, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mActiveSource:Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;

    #@18
    invoke-virtual {v3}, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;->invalidate()V

    #@1b
    .line 695
    const-class v3, Lcom/android/server/hdmi/RoutingControlAction;

    #@1d
    invoke-virtual {p0, v3}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->removeAction(Ljava/lang/Class;)V

    #@20
    .line 696
    const/4 v3, 0x2

    #@21
    invoke-static {v2, v3}, Lcom/android/server/hdmi/HdmiUtils;->twoBytesToInt([BI)I

    #@24
    move-result v1

    #@25
    .line 697
    .local v1, "newPath":I
    new-instance v3, Lcom/android/server/hdmi/RoutingControlAction;

    #@27
    const/4 v4, 0x0

    #@28
    invoke-direct {v3, p0, v1, v5, v4}, Lcom/android/server/hdmi/RoutingControlAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;IZLandroid/hardware/hdmi/IHdmiControlCallback;)V

    #@2b
    invoke-virtual {p0, v3}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->addAndStartAction(Lcom/android/server/hdmi/HdmiCecFeatureAction;)V

    #@2e
    .line 699
    .end local v1    # "newPath":I
    :cond_0
    return v5
.end method

.method protected handleSetOsdName(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .locals 11
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    #@0
    .prologue
    const/4 v10, 0x1

    #@1
    .line 735
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    #@4
    move-result v9

    #@5
    .line 736
    .local v9, "source":I
    invoke-virtual {p0, v9}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getCecDeviceInfo(I)Landroid/hardware/hdmi/HdmiDeviceInfo;

    #@8
    move-result-object v7

    #@9
    .line 738
    .local v7, "deviceInfo":Landroid/hardware/hdmi/HdmiDeviceInfo;
    if-nez v7, :cond_0

    #@b
    .line 739
    const-string/jumbo v0, "HdmiCecLocalDeviceTv"

    #@e
    new-instance v1, Ljava/lang/StringBuilder;

    #@10
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@13
    const-string/jumbo v2, "No source device info for <Set Osd Name>."

    #@16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v1

    #@1e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21
    move-result-object v1

    #@22
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@25
    .line 740
    return v10

    #@26
    .line 742
    :cond_0
    const/4 v6, 0x0

    #@27
    .line 744
    .local v6, "osdName":Ljava/lang/String;
    :try_start_0
    new-instance v6, Ljava/lang/String;

    #@29
    .end local v6    # "osdName":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    #@2c
    move-result-object v0

    #@2d
    const-string/jumbo v1, "US-ASCII"

    #@30
    invoke-direct {v6, v0, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    #@33
    .line 750
    .local v6, "osdName":Ljava/lang/String;
    invoke-virtual {v7}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getDisplayName()Ljava/lang/String;

    #@36
    move-result-object v0

    #@37
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3a
    move-result v0

    #@3b
    if-eqz v0, :cond_1

    #@3d
    .line 751
    const-string/jumbo v0, "HdmiCecLocalDeviceTv"

    #@40
    new-instance v1, Ljava/lang/StringBuilder;

    #@42
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@45
    const-string/jumbo v2, "Ignore incoming <Set Osd Name> having same osd name:"

    #@48
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v1

    #@4c
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v1

    #@50
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@53
    move-result-object v1

    #@54
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@57
    .line 752
    return v10

    #@58
    .line 745
    .end local v6    # "osdName":Ljava/lang/String;
    :catch_0
    move-exception v8

    #@59
    .line 746
    .local v8, "e":Ljava/io/UnsupportedEncodingException;
    const-string/jumbo v0, "HdmiCecLocalDeviceTv"

    #@5c
    new-instance v1, Ljava/lang/StringBuilder;

    #@5e
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@61
    const-string/jumbo v2, "Invalid <Set Osd Name> request:"

    #@64
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@67
    move-result-object v1

    #@68
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@6b
    move-result-object v1

    #@6c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6f
    move-result-object v1

    #@70
    invoke-static {v0, v1, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@73
    .line 747
    return v10

    #@74
    .line 755
    .end local v8    # "e":Ljava/io/UnsupportedEncodingException;
    .restart local v6    # "osdName":Ljava/lang/String;
    :cond_1
    new-instance v0, Landroid/hardware/hdmi/HdmiDeviceInfo;

    #@76
    invoke-virtual {v7}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    #@79
    move-result v1

    #@7a
    .line 756
    invoke-virtual {v7}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getPhysicalAddress()I

    #@7d
    move-result v2

    #@7e
    invoke-virtual {v7}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getPortId()I

    #@81
    move-result v3

    #@82
    .line 757
    invoke-virtual {v7}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getDeviceType()I

    #@85
    move-result v4

    #@86
    invoke-virtual {v7}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getVendorId()I

    #@89
    move-result v5

    #@8a
    .line 755
    invoke-direct/range {v0 .. v6}, Landroid/hardware/hdmi/HdmiDeviceInfo;-><init>(IIIIILjava/lang/String;)V

    #@8d
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->addCecDevice(Landroid/hardware/hdmi/HdmiDeviceInfo;)V

    #@90
    .line 758
    return v10
.end method

.method protected handleSetSystemAudioMode(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .locals 5
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    const/4 v3, 0x1

    #@2
    .line 1142
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->assertRunOnServiceThread()V

    #@5
    .line 1143
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->isMessageForSystemAudio(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    #@8
    move-result v1

    #@9
    if-nez v1, :cond_1

    #@b
    .line 1144
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getAvrDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    #@e
    move-result-object v1

    #@f
    if-nez v1, :cond_0

    #@11
    .line 1146
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mDelayedMessageBuffer:Lcom/android/server/hdmi/DelayedMessageBuffer;

    #@13
    invoke-virtual {v1, p1}, Lcom/android/server/hdmi/DelayedMessageBuffer;->add(Lcom/android/server/hdmi/HdmiCecMessage;)V

    #@16
    .line 1147
    return v3

    #@17
    .line 1149
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    #@19
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1c
    const-string/jumbo v2, "Invalid <Set System Audio Mode> message:"

    #@1f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v1

    #@23
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v1

    #@27
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2a
    move-result-object v1

    #@2b
    const/4 v2, 0x0

    #@2c
    new-array v2, v2, [Ljava/lang/Object;

    #@2e
    invoke-static {v1, v2}, Lcom/android/server/hdmi/HdmiLogger;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    #@31
    .line 1150
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mService:Lcom/android/server/hdmi/HdmiControlService;

    #@33
    const/4 v2, 0x4

    #@34
    invoke-virtual {v1, p1, v2}, Lcom/android/server/hdmi/HdmiControlService;->maySendFeatureAbortCommand(Lcom/android/server/hdmi/HdmiCecMessage;I)V

    #@37
    .line 1151
    return v3

    #@38
    .line 1153
    :cond_1
    new-instance v0, Lcom/android/server/hdmi/SystemAudioActionFromAvr;

    #@3a
    .line 1154
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    #@3d
    move-result v1

    #@3e
    invoke-static {p1}, Lcom/android/server/hdmi/HdmiUtils;->parseCommandParamSystemAudioStatus(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    #@41
    move-result v2

    #@42
    .line 1153
    invoke-direct {v0, p0, v1, v2, v4}, Lcom/android/server/hdmi/SystemAudioActionFromAvr;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;IZLandroid/hardware/hdmi/IHdmiControlCallback;)V

    #@45
    .line 1155
    .local v0, "action":Lcom/android/server/hdmi/SystemAudioActionFromAvr;
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->addAndStartAction(Lcom/android/server/hdmi/HdmiCecFeatureAction;)V

    #@48
    .line 1156
    return v3
.end method

.method protected handleSystemAudioModeStatus(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .locals 3
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 1162
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->assertRunOnServiceThread()V

    #@4
    .line 1163
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->isMessageForSystemAudio(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    #@7
    move-result v0

    #@8
    if-nez v0, :cond_0

    #@a
    .line 1164
    new-instance v0, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string/jumbo v1, "Invalid <System Audio Mode Status> message:"

    #@12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v0

    #@16
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v0

    #@1a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d
    move-result-object v0

    #@1e
    const/4 v1, 0x0

    #@1f
    new-array v1, v1, [Ljava/lang/Object;

    #@21
    invoke-static {v0, v1}, Lcom/android/server/hdmi/HdmiLogger;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    #@24
    .line 1166
    return v2

    #@25
    .line 1168
    :cond_0
    invoke-static {p1}, Lcom/android/server/hdmi/HdmiUtils;->parseCommandParamSystemAudioStatus(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    #@28
    move-result v0

    #@29
    invoke-virtual {p0, v0, v2}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->setSystemAudioMode(ZZ)V

    #@2c
    .line 1169
    return v2
.end method

.method protected handleTerminateArc(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .locals 4
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 1124
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->assertRunOnServiceThread()V

    #@5
    .line 1125
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mService:Lcom/android/server/hdmi/HdmiControlService;

    #@7
    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiControlService;->isPowerStandbyOrTransient()Z

    #@a
    move-result v1

    #@b
    if-eqz v1, :cond_0

    #@d
    .line 1126
    invoke-virtual {p0, v2}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->setArcStatus(Z)Z

    #@10
    .line 1127
    return v3

    #@11
    .line 1132
    :cond_0
    const-class v1, Lcom/android/server/hdmi/RequestArcTerminationAction;

    #@13
    invoke-virtual {p0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->removeAction(Ljava/lang/Class;)V

    #@16
    .line 1133
    new-instance v0, Lcom/android/server/hdmi/SetArcTransmissionStateAction;

    #@18
    .line 1134
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    #@1b
    move-result v1

    #@1c
    .line 1133
    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/hdmi/SetArcTransmissionStateAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;IZ)V

    #@1f
    .line 1135
    .local v0, "action":Lcom/android/server/hdmi/SetArcTransmissionStateAction;
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->addAndStartAction(Lcom/android/server/hdmi/HdmiCecFeatureAction;)V

    #@22
    .line 1136
    return v3
.end method

.method protected handleTextViewOn(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .locals 1
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    #@0
    .prologue
    .line 717
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->assertRunOnServiceThread()V

    #@3
    .line 718
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mService:Lcom/android/server/hdmi/HdmiControlService;

    #@5
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->isPowerStandbyOrTransient()Z

    #@8
    move-result v0

    #@9
    if-eqz v0, :cond_0

    #@b
    iget-boolean v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mAutoWakeup:Z

    #@d
    if-eqz v0, :cond_0

    #@f
    .line 719
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mService:Lcom/android/server/hdmi/HdmiControlService;

    #@11
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->wakeUp()V

    #@14
    .line 721
    :cond_0
    const/4 v0, 0x1

    #@15
    return v0
.end method

.method protected handleTimerClearedStatus(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .locals 3
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;

    #@0
    .prologue
    .line 1199
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    #@3
    move-result-object v0

    #@4
    .line 1200
    .local v0, "params":[B
    const/4 v2, 0x0

    #@5
    aget-byte v2, v0, v2

    #@7
    and-int/lit16 v1, v2, 0xff

    #@9
    .line 1201
    .local v1, "timerClearedStatusData":I
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    #@c
    move-result v2

    #@d
    invoke-virtual {p0, v2, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->announceTimerRecordingResult(II)V

    #@10
    .line 1202
    const/4 v2, 0x1

    #@11
    return v2
.end method

.method protected handleTimerStatus(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .locals 1
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;

    #@0
    .prologue
    .line 607
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method hasSystemAudioDevice()Z
    .locals 1

    #@0
    .prologue
    .line 1391
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getSafeAvrDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    #@3
    move-result-object v0

    #@4
    if-eqz v0, :cond_0

    #@6
    const/4 v0, 0x1

    #@7
    :goto_0
    return v0

    #@8
    :cond_0
    const/4 v0, 0x0

    #@9
    goto :goto_0
.end method

.method isArcEstablished()Z
    .locals 2
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    #@0
    .prologue
    .line 947
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->assertRunOnServiceThread()V

    #@3
    .line 948
    iget-boolean v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mArcEstablished:Z

    #@5
    if-eqz v1, :cond_1

    #@7
    .line 949
    const/4 v0, 0x0

    #@8
    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mArcFeatureEnabled:Landroid/util/SparseBooleanArray;

    #@a
    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->size()I

    #@d
    move-result v1

    #@e
    if-ge v0, v1, :cond_1

    #@10
    .line 950
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mArcFeatureEnabled:Landroid/util/SparseBooleanArray;

    #@12
    invoke-virtual {v1, v0}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    #@15
    move-result v1

    #@16
    if-eqz v1, :cond_0

    #@18
    const/4 v1, 0x1

    #@19
    return v1

    #@1a
    .line 949
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@1c
    goto :goto_0

    #@1d
    .line 953
    .end local v0    # "i":I
    :cond_1
    const/4 v1, 0x0

    #@1e
    return v1
.end method

.method isArcFeatureEnabled(I)Z
    .locals 1
    .param p1, "portId"    # I
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    #@0
    .prologue
    .line 976
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->assertRunOnServiceThread()V

    #@3
    .line 977
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mArcFeatureEnabled:Landroid/util/SparseBooleanArray;

    #@5
    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    #@8
    move-result v0

    #@9
    return v0
.end method

.method isConnected(I)Z
    .locals 1
    .param p1, "portId"    # I
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    #@0
    .prologue
    .line 931
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->assertRunOnServiceThread()V

    #@3
    .line 932
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mService:Lcom/android/server/hdmi/HdmiControlService;

    #@5
    invoke-virtual {v0, p1}, Lcom/android/server/hdmi/HdmiControlService;->isConnected(I)Z

    #@8
    move-result v0

    #@9
    return v0
.end method

.method isInDeviceList(II)Z
    .locals 3
    .param p1, "logicalAddress"    # I
    .param p2, "physicalAddress"    # I
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1549
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->assertRunOnServiceThread()V

    #@4
    .line 1550
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getCecDeviceInfo(I)Landroid/hardware/hdmi/HdmiDeviceInfo;

    #@7
    move-result-object v0

    #@8
    .line 1551
    .local v0, "device":Landroid/hardware/hdmi/HdmiDeviceInfo;
    if-nez v0, :cond_0

    #@a
    .line 1552
    return v1

    #@b
    .line 1554
    :cond_0
    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getPhysicalAddress()I

    #@e
    move-result v2

    #@f
    if-ne v2, p2, :cond_1

    #@11
    const/4 v1, 0x1

    #@12
    :cond_1
    return v1
.end method

.method protected isInputReady(I)Z
    .locals 2
    .param p1, "deviceId"    # I
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    #@0
    .prologue
    .line 176
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->assertRunOnServiceThread()V

    #@3
    .line 177
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mTvInputs:Ljava/util/HashMap;

    #@5
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@8
    move-result-object v1

    #@9
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    #@c
    move-result v0

    #@d
    return v0
.end method

.method isPowerStandbyOrTransient()Z
    .locals 1

    #@0
    .prologue
    .line 1680
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mService:Lcom/android/server/hdmi/HdmiControlService;

    #@2
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->isPowerStandbyOrTransient()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method isProhibitMode()Z
    .locals 1

    #@0
    .prologue
    .line 1676
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mService:Lcom/android/server/hdmi/HdmiControlService;

    #@2
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->isProhibitMode()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method isSystemAudioActivated()Z
    .locals 2

    #@0
    .prologue
    .line 862
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->hasSystemAudioDevice()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 863
    const/4 v0, 0x0

    #@7
    return v0

    #@8
    .line 865
    :cond_0
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mLock:Ljava/lang/Object;

    #@a
    monitor-enter v0

    #@b
    .line 866
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mSystemAudioActivated:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@d
    monitor-exit v0

    #@e
    return v1

    #@f
    .line 865
    :catchall_0
    move-exception v1

    #@10
    monitor-exit v0

    #@11
    throw v1
.end method

.method launchRoutingControl(Z)V
    .locals 4
    .param p1, "routingForBootup"    # Z
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    #@0
    .prologue
    .line 1481
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->assertRunOnServiceThread()V

    #@3
    .line 1483
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getActivePortId()I

    #@6
    move-result v2

    #@7
    const/4 v3, -0x1

    #@8
    if-eq v2, v3, :cond_2

    #@a
    .line 1484
    if-nez p1, :cond_0

    #@c
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->isProhibitMode()Z

    #@f
    move-result v2

    #@10
    if-eqz v2, :cond_1

    #@12
    .line 1480
    :cond_0
    :goto_0
    return-void

    #@13
    .line 1485
    :cond_1
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mService:Lcom/android/server/hdmi/HdmiControlService;

    #@15
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getActivePortId()I

    #@18
    move-result v3

    #@19
    invoke-virtual {v2, v3}, Lcom/android/server/hdmi/HdmiControlService;->portIdToPath(I)I

    #@1c
    move-result v1

    #@1d
    .line 1486
    .local v1, "newPath":I
    invoke-virtual {p0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->setActivePath(I)V

    #@20
    .line 1487
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getActivePath()I

    #@23
    move-result v2

    #@24
    const/4 v3, 0x0

    #@25
    invoke-virtual {p0, v2, v1, p1, v3}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->startRoutingControl(IIZLandroid/hardware/hdmi/IHdmiControlCallback;)V

    #@28
    goto :goto_0

    #@29
    .line 1490
    .end local v1    # "newPath":I
    :cond_2
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mService:Lcom/android/server/hdmi/HdmiControlService;

    #@2b
    invoke-virtual {v2}, Lcom/android/server/hdmi/HdmiControlService;->getPhysicalAddress()I

    #@2e
    move-result v0

    #@2f
    .line 1491
    .local v0, "activePath":I
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->setActivePath(I)V

    #@32
    .line 1492
    if-nez p1, :cond_0

    #@34
    .line 1493
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mDelayedMessageBuffer:Lcom/android/server/hdmi/DelayedMessageBuffer;

    #@36
    const/16 v3, 0x82

    #@38
    invoke-virtual {v2, v3}, Lcom/android/server/hdmi/DelayedMessageBuffer;->isBuffered(I)Z

    #@3b
    move-result v2

    #@3c
    if-nez v2, :cond_0

    #@3e
    .line 1494
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mService:Lcom/android/server/hdmi/HdmiControlService;

    #@40
    iget v3, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mAddress:I

    #@42
    invoke-static {v3, v0}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildActiveSource(II)Lcom/android/server/hdmi/HdmiCecMessage;

    #@45
    move-result-object v3

    #@46
    invoke-virtual {v2, v3}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    #@49
    goto :goto_0
.end method

.method protected onAddressAllocated(II)V
    .locals 9
    .param p1, "logicalAddress"    # I
    .param p2, "reason"    # I
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v5, 0x0

    #@2
    .line 192
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->assertRunOnServiceThread()V

    #@5
    .line 193
    iget-object v3, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mService:Lcom/android/server/hdmi/HdmiControlService;

    #@7
    invoke-virtual {v3}, Lcom/android/server/hdmi/HdmiControlService;->getPortInfo()Ljava/util/List;

    #@a
    move-result-object v2

    #@b
    .line 194
    .local v2, "ports":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/hdmi/HdmiPortInfo;>;"
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@e
    move-result-object v1

    #@f
    .local v1, "port$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@12
    move-result v3

    #@13
    if-eqz v3, :cond_0

    #@15
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@18
    move-result-object v0

    #@19
    check-cast v0, Landroid/hardware/hdmi/HdmiPortInfo;

    #@1b
    .line 195
    .local v0, "port":Landroid/hardware/hdmi/HdmiPortInfo;
    iget-object v3, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mArcFeatureEnabled:Landroid/util/SparseBooleanArray;

    #@1d
    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiPortInfo;->getId()I

    #@20
    move-result v6

    #@21
    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiPortInfo;->isArcSupported()Z

    #@24
    move-result v7

    #@25
    invoke-virtual {v3, v6, v7}, Landroid/util/SparseBooleanArray;->put(IZ)V

    #@28
    goto :goto_0

    #@29
    .line 197
    .end local v0    # "port":Landroid/hardware/hdmi/HdmiPortInfo;
    :cond_0
    iget-object v3, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mService:Lcom/android/server/hdmi/HdmiControlService;

    #@2b
    iget-object v6, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mTvInputCallback:Landroid/media/tv/TvInputManager$TvInputCallback;

    #@2d
    invoke-virtual {v3, v6}, Lcom/android/server/hdmi/HdmiControlService;->registerTvInputCallback(Landroid/media/tv/TvInputManager$TvInputCallback;)V

    #@30
    .line 198
    iget-object v3, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mService:Lcom/android/server/hdmi/HdmiControlService;

    #@32
    .line 199
    iget v6, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mAddress:I

    #@34
    iget-object v7, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mService:Lcom/android/server/hdmi/HdmiControlService;

    #@36
    invoke-virtual {v7}, Lcom/android/server/hdmi/HdmiControlService;->getPhysicalAddress()I

    #@39
    move-result v7

    #@3a
    iget v8, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mDeviceType:I

    #@3c
    .line 198
    invoke-static {v6, v7, v8}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildReportPhysicalAddressCommand(III)Lcom/android/server/hdmi/HdmiCecMessage;

    #@3f
    move-result-object v6

    #@40
    invoke-virtual {v3, v6}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    #@43
    .line 200
    iget-object v3, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mService:Lcom/android/server/hdmi/HdmiControlService;

    #@45
    .line 201
    iget v6, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mAddress:I

    #@47
    iget-object v7, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mService:Lcom/android/server/hdmi/HdmiControlService;

    #@49
    invoke-virtual {v7}, Lcom/android/server/hdmi/HdmiControlService;->getVendorId()I

    #@4c
    move-result v7

    #@4d
    .line 200
    invoke-static {v6, v7}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildDeviceVendorIdCommand(II)Lcom/android/server/hdmi/HdmiCecMessage;

    #@50
    move-result-object v6

    #@51
    invoke-virtual {v3, v6}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    #@54
    .line 202
    iget-object v3, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mCecSwitches:Landroid/util/ArraySet;

    #@56
    iget-object v6, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mService:Lcom/android/server/hdmi/HdmiControlService;

    #@58
    invoke-virtual {v6}, Lcom/android/server/hdmi/HdmiControlService;->getPhysicalAddress()I

    #@5b
    move-result v6

    #@5c
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@5f
    move-result-object v6

    #@60
    invoke-virtual {v3, v6}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    #@63
    .line 203
    iget-object v3, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mTvInputs:Ljava/util/HashMap;

    #@65
    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    #@68
    .line 204
    const/4 v3, 0x3

    #@69
    if-ne p2, v3, :cond_2

    #@6b
    move v3, v4

    #@6c
    :goto_1
    iput-boolean v3, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mSkipRoutingControl:Z

    #@6e
    .line 205
    if-eqz p2, :cond_1

    #@70
    .line 206
    if-eq p2, v4, :cond_1

    #@72
    move v5, v4

    #@73
    .line 205
    :cond_1
    invoke-virtual {p0, v5}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->launchRoutingControl(Z)V

    #@76
    .line 207
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->initLocalDeviceAddresses()Ljava/util/List;

    #@79
    move-result-object v3

    #@7a
    iput-object v3, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mLocalDeviceAddresses:Ljava/util/List;

    #@7c
    .line 208
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->launchDeviceDiscovery()V

    #@7f
    .line 191
    return-void

    #@80
    :cond_2
    move v3, v5

    #@81
    .line 204
    goto :goto_1
.end method

.method onHotplug(IZ)V
    .locals 2
    .param p1, "portId"    # I
    .param p2, "connected"    # Z
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    #@0
    .prologue
    .line 1560
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->assertRunOnServiceThread()V

    #@3
    .line 1562
    if-nez p2, :cond_0

    #@5
    .line 1563
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->removeCecSwitches(I)V

    #@8
    .line 1566
    :cond_0
    const-class v1, Lcom/android/server/hdmi/HotplugDetectionAction;

    #@a
    invoke-virtual {p0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getActions(Ljava/lang/Class;)Ljava/util/List;

    #@d
    move-result-object v0

    #@e
    .line 1567
    .local v0, "hotplugActions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/hdmi/HotplugDetectionAction;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    #@11
    move-result v1

    #@12
    if-nez v1, :cond_1

    #@14
    .line 1571
    const/4 v1, 0x0

    #@15
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@18
    move-result-object v1

    #@19
    check-cast v1, Lcom/android/server/hdmi/HotplugDetectionAction;

    #@1b
    invoke-virtual {v1}, Lcom/android/server/hdmi/HotplugDetectionAction;->pollAllDevicesNow()V

    #@1e
    .line 1573
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->updateArcFeatureStatus(IZ)V

    #@21
    .line 1559
    return-void
.end method

.method onNewAvrAdded(Landroid/hardware/hdmi/HdmiDeviceInfo;)V
    .locals 2
    .param p1, "avr"    # Landroid/hardware/hdmi/HdmiDeviceInfo;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    #@0
    .prologue
    .line 799
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->assertRunOnServiceThread()V

    #@3
    .line 800
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getSystemAudioModeSetting()Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->isSystemAudioActivated()Z

    #@c
    move-result v0

    #@d
    if-eqz v0, :cond_2

    #@f
    .line 803
    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getPortId()I

    #@12
    move-result v0

    #@13
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->isArcFeatureEnabled(I)Z

    #@16
    move-result v0

    #@17
    if-eqz v0, :cond_1

    #@19
    .line 804
    const-class v0, Lcom/android/server/hdmi/SetArcTransmissionStateAction;

    #@1b
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->hasAction(Ljava/lang/Class;)Z

    #@1e
    move-result v0

    #@1f
    if-eqz v0, :cond_3

    #@21
    .line 798
    :cond_1
    :goto_1
    return-void

    #@22
    .line 801
    :cond_2
    new-instance v0, Lcom/android/server/hdmi/SystemAudioAutoInitiationAction;

    #@24
    invoke-virtual {p1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    #@27
    move-result v1

    #@28
    invoke-direct {v0, p0, v1}, Lcom/android/server/hdmi/SystemAudioAutoInitiationAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;I)V

    #@2b
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->addAndStartAction(Lcom/android/server/hdmi/HdmiCecFeatureAction;)V

    #@2e
    goto :goto_0

    #@2f
    .line 805
    :cond_3
    const/4 v0, 0x1

    #@30
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->startArcAction(Z)V

    #@33
    goto :goto_1
.end method

.method protected onStandby(ZI)V
    .locals 3
    .param p1, "initiatedByCec"    # Z
    .param p2, "standbyAction"    # I
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    #@0
    .prologue
    .line 1664
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->assertRunOnServiceThread()V

    #@3
    .line 1666
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mService:Lcom/android/server/hdmi/HdmiControlService;

    #@5
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->isControlEnabled()Z

    #@8
    move-result v0

    #@9
    if-nez v0, :cond_0

    #@b
    .line 1667
    return-void

    #@c
    .line 1669
    :cond_0
    if-nez p1, :cond_1

    #@e
    iget-boolean v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mAutoDeviceOff:Z

    #@10
    if-eqz v0, :cond_1

    #@12
    .line 1670
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mService:Lcom/android/server/hdmi/HdmiControlService;

    #@14
    .line 1671
    iget v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mAddress:I

    #@16
    const/16 v2, 0xf

    #@18
    .line 1670
    invoke-static {v1, v2}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildStandby(II)Lcom/android/server/hdmi/HdmiCecMessage;

    #@1b
    move-result-object v1

    #@1c
    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    #@1f
    .line 1663
    :cond_1
    return-void
.end method

.method processAllDelayedMessages()V
    .locals 1
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    #@0
    .prologue
    .line 1890
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->assertRunOnServiceThread()V

    #@3
    .line 1891
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mDelayedMessageBuffer:Lcom/android/server/hdmi/DelayedMessageBuffer;

    #@5
    invoke-virtual {v0}, Lcom/android/server/hdmi/DelayedMessageBuffer;->processAllMessages()V

    #@8
    .line 1889
    return-void
.end method

.method processDelayedActiveSource(I)V
    .locals 1
    .param p1, "address"    # I
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    #@0
    .prologue
    .line 1902
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->assertRunOnServiceThread()V

    #@3
    .line 1903
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mDelayedMessageBuffer:Lcom/android/server/hdmi/DelayedMessageBuffer;

    #@5
    invoke-virtual {v0, p1}, Lcom/android/server/hdmi/DelayedMessageBuffer;->processActiveSource(I)V

    #@8
    .line 1901
    return-void
.end method

.method processDelayedMessages(I)V
    .locals 1
    .param p1, "address"    # I
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    #@0
    .prologue
    .line 1896
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->assertRunOnServiceThread()V

    #@3
    .line 1897
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mDelayedMessageBuffer:Lcom/android/server/hdmi/DelayedMessageBuffer;

    #@5
    invoke-virtual {v0, p1}, Lcom/android/server/hdmi/DelayedMessageBuffer;->processMessagesForDevice(I)V

    #@8
    .line 1895
    return-void
.end method

.method final removeCecDevice(I)V
    .locals 2
    .param p1, "address"    # I
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    #@0
    .prologue
    .line 1456
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->assertRunOnServiceThread()V

    #@3
    .line 1457
    invoke-static {p1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->idForCecDevice(I)I

    #@6
    move-result v1

    #@7
    invoke-direct {p0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->removeDeviceInfo(I)Landroid/hardware/hdmi/HdmiDeviceInfo;

    #@a
    move-result-object v0

    #@b
    .line 1459
    .local v0, "info":Landroid/hardware/hdmi/HdmiDeviceInfo;
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mCecMessageCache:Lcom/android/server/hdmi/HdmiCecMessageCache;

    #@d
    invoke-virtual {v1, p1}, Lcom/android/server/hdmi/HdmiCecMessageCache;->flushMessagesFrom(I)V

    #@10
    .line 1460
    const/4 v1, 0x2

    #@11
    invoke-direct {p0, v0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->invokeDeviceEventListener(Landroid/hardware/hdmi/HdmiDeviceInfo;I)V

    #@14
    .line 1455
    return-void
.end method

.method protected sendKeyEvent(IZ)V
    .locals 5
    .param p1, "keyCode"    # I
    .param p2, "isPressed"    # Z
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    #@0
    .prologue
    .line 427
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->assertRunOnServiceThread()V

    #@3
    .line 428
    invoke-static {p1}, Lcom/android/server/hdmi/HdmiCecKeycode;->isSupportedKeycode(I)Z

    #@6
    move-result v2

    #@7
    if-nez v2, :cond_0

    #@9
    .line 429
    const-string/jumbo v2, "HdmiCecLocalDeviceTv"

    #@c
    new-instance v3, Ljava/lang/StringBuilder;

    #@e
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@11
    const-string/jumbo v4, "Unsupported key: "

    #@14
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v3

    #@18
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v3

    #@1c
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f
    move-result-object v3

    #@20
    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@23
    .line 430
    return-void

    #@24
    .line 432
    :cond_0
    const-class v2, Lcom/android/server/hdmi/SendKeyAction;

    #@26
    invoke-virtual {p0, v2}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getActions(Ljava/lang/Class;)Ljava/util/List;

    #@29
    move-result-object v0

    #@2a
    .line 433
    .local v0, "action":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/hdmi/SendKeyAction;>;"
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->findKeyReceiverAddress()I

    #@2d
    move-result v1

    #@2e
    .line 434
    .local v1, "logicalAddress":I
    iget v2, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mAddress:I

    #@30
    if-ne v1, v2, :cond_1

    #@32
    .line 435
    const-string/jumbo v2, "HdmiCecLocalDeviceTv"

    #@35
    new-instance v3, Ljava/lang/StringBuilder;

    #@37
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@3a
    const-string/jumbo v4, "Discard key event to itself :"

    #@3d
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v3

    #@41
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@44
    move-result-object v3

    #@45
    const-string/jumbo v4, " pressed:"

    #@48
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v3

    #@4c
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v3

    #@50
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@53
    move-result-object v3

    #@54
    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@57
    .line 436
    return-void

    #@58
    .line 438
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    #@5b
    move-result v2

    #@5c
    if-nez v2, :cond_2

    #@5e
    .line 439
    const/4 v2, 0x0

    #@5f
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@62
    move-result-object v2

    #@63
    check-cast v2, Lcom/android/server/hdmi/SendKeyAction;

    #@65
    invoke-virtual {v2, p1, p2}, Lcom/android/server/hdmi/SendKeyAction;->processKeyEvent(IZ)V

    #@68
    .line 426
    :goto_0
    return-void

    #@69
    .line 441
    :cond_2
    if-eqz p2, :cond_3

    #@6b
    .line 442
    const/4 v2, -0x1

    #@6c
    if-eq v1, v2, :cond_3

    #@6e
    .line 443
    new-instance v2, Lcom/android/server/hdmi/SendKeyAction;

    #@70
    invoke-direct {v2, p0, v1, p1}, Lcom/android/server/hdmi/SendKeyAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;II)V

    #@73
    invoke-virtual {p0, v2}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->addAndStartAction(Lcom/android/server/hdmi/HdmiCecFeatureAction;)V

    #@76
    .line 444
    return-void

    #@77
    .line 447
    :cond_3
    const-string/jumbo v2, "HdmiCecLocalDeviceTv"

    #@7a
    new-instance v3, Ljava/lang/StringBuilder;

    #@7c
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@7f
    const-string/jumbo v4, "Discard key event: "

    #@82
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@85
    move-result-object v3

    #@86
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@89
    move-result-object v3

    #@8a
    const-string/jumbo v4, " pressed:"

    #@8d
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@90
    move-result-object v3

    #@91
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@94
    move-result-object v3

    #@95
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@98
    move-result-object v3

    #@99
    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@9c
    goto :goto_0
.end method

.method protected sendStandby(I)V
    .locals 4
    .param p1, "deviceId"    # I

    #@0
    .prologue
    .line 1880
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mDeviceInfos:Landroid/util/SparseArray;

    #@2
    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@5
    move-result-object v1

    #@6
    check-cast v1, Landroid/hardware/hdmi/HdmiDeviceInfo;

    #@8
    .line 1881
    .local v1, "targetDevice":Landroid/hardware/hdmi/HdmiDeviceInfo;
    if-nez v1, :cond_0

    #@a
    .line 1882
    return-void

    #@b
    .line 1884
    :cond_0
    invoke-virtual {v1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    #@e
    move-result v0

    #@f
    .line 1885
    .local v0, "targetAddress":I
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mService:Lcom/android/server/hdmi/HdmiControlService;

    #@11
    iget v3, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mAddress:I

    #@13
    invoke-static {v3, v0}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildStandby(II)Lcom/android/server/hdmi/HdmiCecMessage;

    #@16
    move-result-object v3

    #@17
    invoke-virtual {v2, v3}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    #@1a
    .line 1879
    return-void
.end method

.method setArcStatus(Z)Z
    .locals 5
    .param p1, "enabled"    # Z
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    #@0
    .prologue
    .line 881
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->assertRunOnServiceThread()V

    #@3
    .line 883
    const-string/jumbo v1, "Set Arc Status[old:%b new:%b]"

    #@6
    const/4 v2, 0x2

    #@7
    new-array v2, v2, [Ljava/lang/Object;

    #@9
    iget-boolean v3, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mArcEstablished:Z

    #@b
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@e
    move-result-object v3

    #@f
    const/4 v4, 0x0

    #@10
    aput-object v3, v2, v4

    #@12
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@15
    move-result-object v3

    #@16
    const/4 v4, 0x1

    #@17
    aput-object v3, v2, v4

    #@19
    invoke-static {v1, v2}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    #@1c
    .line 884
    iget-boolean v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mArcEstablished:Z

    #@1e
    .line 886
    .local v0, "oldStatus":Z
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->setAudioReturnChannel(Z)V

    #@21
    .line 888
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->notifyArcStatusToAudioService(Z)V

    #@24
    .line 890
    iput-boolean p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mArcEstablished:Z

    #@26
    .line 891
    return v0
.end method

.method setAudioReturnChannel(Z)V
    .locals 3
    .param p1, "enabled"    # Z
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    #@0
    .prologue
    .line 899
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->assertRunOnServiceThread()V

    #@3
    .line 900
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getAvrDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    #@6
    move-result-object v0

    #@7
    .line 901
    .local v0, "avr":Landroid/hardware/hdmi/HdmiDeviceInfo;
    if-eqz v0, :cond_0

    #@9
    .line 902
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mService:Lcom/android/server/hdmi/HdmiControlService;

    #@b
    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getPortId()I

    #@e
    move-result v2

    #@f
    invoke-virtual {v1, v2, p1}, Lcom/android/server/hdmi/HdmiControlService;->setAudioReturnChannel(IZ)V

    #@12
    .line 898
    :cond_0
    return-void
.end method

.method setAudioStatus(ZI)V
    .locals 4
    .param p1, "mute"    # Z
    .param p2, "volume"    # I

    #@0
    .prologue
    .line 1015
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 1016
    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mSystemAudioMute:Z

    #@5
    .line 1017
    iput p2, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mSystemAudioVolume:I

    #@7
    .line 1018
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mService:Lcom/android/server/hdmi/HdmiControlService;

    #@9
    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiControlService;->getAudioManager()Landroid/media/AudioManager;

    #@c
    move-result-object v1

    #@d
    .line 1019
    const/4 v3, 0x3

    #@e
    .line 1018
    invoke-virtual {v1, v3}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    #@11
    move-result v0

    #@12
    .line 1020
    .local v0, "maxVolume":I
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mService:Lcom/android/server/hdmi/HdmiControlService;

    #@14
    .line 1021
    invoke-static {p2, v0}, Lcom/android/server/hdmi/VolumeControlAction;->scaleToCustomVolume(II)I

    #@17
    move-result v3

    #@18
    .line 1020
    invoke-virtual {v1, p1, v3}, Lcom/android/server/hdmi/HdmiControlService;->setAudioStatus(ZI)V

    #@1b
    .line 1023
    if-eqz p1, :cond_0

    #@1d
    const/16 p2, 0x65

    #@1f
    .line 1022
    .end local p2    # "volume":I
    :cond_0
    const/4 v1, 0x2

    #@20
    invoke-virtual {p0, v1, p2}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->displayOsd(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@23
    monitor-exit v2

    #@24
    .line 1014
    return-void

    #@25
    .line 1015
    .end local v0    # "maxVolume":I
    :catchall_0
    move-exception v1

    #@26
    monitor-exit v2

    #@27
    throw v1
.end method

.method setAutoDeviceOff(Z)V
    .locals 0
    .param p1, "enabled"    # Z
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    #@0
    .prologue
    .line 1589
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->assertRunOnServiceThread()V

    #@3
    .line 1590
    iput-boolean p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mAutoDeviceOff:Z

    #@5
    .line 1588
    return-void
.end method

.method setAutoWakeup(Z)V
    .locals 0
    .param p1, "enabled"    # Z
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    #@0
    .prologue
    .line 1595
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->assertRunOnServiceThread()V

    #@3
    .line 1596
    iput-boolean p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mAutoWakeup:Z

    #@5
    .line 1594
    return-void
.end method

.method protected setPreferredAddress(I)V
    .locals 2
    .param p1, "addr"    # I

    #@0
    .prologue
    .line 229
    const-string/jumbo v0, "HdmiCecLocalDeviceTv"

    #@3
    const-string/jumbo v1, "Preferred addres will not be stored for TV"

    #@6
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@9
    .line 228
    return-void
.end method

.method setPrevPortId(I)V
    .locals 2
    .param p1, "portId"    # I

    #@0
    .prologue
    .line 341
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    .line 342
    :try_start_0
    iput p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mPrevPortId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    monitor-exit v0

    #@6
    .line 340
    return-void

    #@7
    .line 341
    :catchall_0
    move-exception v1

    #@8
    monitor-exit v0

    #@9
    throw v1
.end method

.method setSystemAudioMode(ZZ)V
    .locals 4
    .param p1, "on"    # Z
    .param p2, "updateSetting"    # Z

    #@0
    .prologue
    .line 842
    const-string/jumbo v0, "System Audio Mode change[old:%b new:%b]"

    #@3
    const/4 v1, 0x2

    #@4
    new-array v1, v1, [Ljava/lang/Object;

    #@6
    iget-boolean v2, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mSystemAudioActivated:Z

    #@8
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@b
    move-result-object v2

    #@c
    const/4 v3, 0x0

    #@d
    aput-object v2, v1, v3

    #@f
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@12
    move-result-object v2

    #@13
    const/4 v3, 0x1

    #@14
    aput-object v2, v1, v3

    #@16
    invoke-static {v0, v1}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    #@19
    .line 844
    if-eqz p2, :cond_0

    #@1b
    .line 845
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mService:Lcom/android/server/hdmi/HdmiControlService;

    #@1d
    const-string/jumbo v1, "hdmi_system_audio_enabled"

    #@20
    invoke-virtual {v0, v1, p1}, Lcom/android/server/hdmi/HdmiControlService;->writeBooleanSetting(Ljava/lang/String;Z)V

    #@23
    .line 847
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->updateAudioManagerForSystemAudio(Z)V

    #@26
    .line 848
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mLock:Ljava/lang/Object;

    #@28
    monitor-enter v1

    #@29
    .line 849
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mSystemAudioActivated:Z

    #@2b
    if-eq v0, p1, :cond_1

    #@2d
    .line 850
    iput-boolean p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mSystemAudioActivated:Z

    #@2f
    .line 851
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mService:Lcom/android/server/hdmi/HdmiControlService;

    #@31
    invoke-virtual {v0, p1}, Lcom/android/server/hdmi/HdmiControlService;->announceSystemAudioModeChange(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@34
    :cond_1
    monitor-exit v1

    #@35
    .line 841
    return-void

    #@36
    .line 848
    :catchall_0
    move-exception v0

    #@37
    monitor-exit v1

    #@38
    throw v0
.end method

.method startArcAction(Z)V
    .locals 3
    .param p1, "enabled"    # Z
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    #@0
    .prologue
    .line 982
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->assertRunOnServiceThread()V

    #@3
    .line 983
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getAvrDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    #@6
    move-result-object v0

    #@7
    .line 984
    .local v0, "info":Landroid/hardware/hdmi/HdmiDeviceInfo;
    if-nez v0, :cond_0

    #@9
    .line 985
    const-string/jumbo v1, "HdmiCecLocalDeviceTv"

    #@c
    const-string/jumbo v2, "Failed to start arc action; No AVR device."

    #@f
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@12
    .line 986
    return-void

    #@13
    .line 988
    :cond_0
    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    #@16
    move-result v1

    #@17
    invoke-direct {p0, v1, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->canStartArcUpdateAction(IZ)Z

    #@1a
    move-result v1

    #@1b
    if-nez v1, :cond_3

    #@1d
    .line 989
    const-string/jumbo v1, "HdmiCecLocalDeviceTv"

    #@20
    const-string/jumbo v2, "Failed to start arc action; ARC configuration check failed."

    #@23
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@26
    .line 990
    if-eqz p1, :cond_1

    #@28
    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getPhysicalAddress()I

    #@2b
    move-result v1

    #@2c
    invoke-virtual {p0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->isConnectedToArcPort(I)Z

    #@2f
    move-result v1

    #@30
    if-eqz v1, :cond_2

    #@32
    .line 993
    :cond_1
    :goto_0
    return-void

    #@33
    .line 991
    :cond_2
    const/4 v1, 0x1

    #@34
    invoke-virtual {p0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->displayOsd(I)V

    #@37
    goto :goto_0

    #@38
    .line 997
    :cond_3
    if-eqz p1, :cond_5

    #@3a
    .line 998
    const-class v1, Lcom/android/server/hdmi/RequestArcTerminationAction;

    #@3c
    invoke-virtual {p0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->removeAction(Ljava/lang/Class;)V

    #@3f
    .line 999
    const-class v1, Lcom/android/server/hdmi/RequestArcInitiationAction;

    #@41
    invoke-virtual {p0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->hasAction(Ljava/lang/Class;)Z

    #@44
    move-result v1

    #@45
    if-nez v1, :cond_4

    #@47
    .line 1000
    new-instance v1, Lcom/android/server/hdmi/RequestArcInitiationAction;

    #@49
    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    #@4c
    move-result v2

    #@4d
    invoke-direct {v1, p0, v2}, Lcom/android/server/hdmi/RequestArcInitiationAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;I)V

    #@50
    invoke-virtual {p0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->addAndStartAction(Lcom/android/server/hdmi/HdmiCecFeatureAction;)V

    #@53
    .line 981
    :cond_4
    :goto_1
    return-void

    #@54
    .line 1003
    :cond_5
    const-class v1, Lcom/android/server/hdmi/RequestArcInitiationAction;

    #@56
    invoke-virtual {p0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->removeAction(Ljava/lang/Class;)V

    #@59
    .line 1004
    const-class v1, Lcom/android/server/hdmi/RequestArcTerminationAction;

    #@5b
    invoke-virtual {p0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->hasAction(Ljava/lang/Class;)Z

    #@5e
    move-result v1

    #@5f
    if-nez v1, :cond_4

    #@61
    .line 1005
    new-instance v1, Lcom/android/server/hdmi/RequestArcTerminationAction;

    #@63
    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    #@66
    move-result v2

    #@67
    invoke-direct {v1, p0, v2}, Lcom/android/server/hdmi/RequestArcTerminationAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;I)V

    #@6a
    invoke-virtual {p0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->addAndStartAction(Lcom/android/server/hdmi/HdmiCecFeatureAction;)V

    #@6d
    goto :goto_1
.end method

.method startNewDeviceAction(Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;I)V
    .locals 5
    .param p1, "activeSource"    # Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;
    .param p2, "deviceType"    # I

    #@0
    .prologue
    .line 630
    const-class v2, Lcom/android/server/hdmi/NewDeviceAction;

    #@2
    invoke-virtual {p0, v2}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getActions(Ljava/lang/Class;)Ljava/util/List;

    #@5
    move-result-object v2

    #@6
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@9
    move-result-object v1

    #@a
    .local v1, "action$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@d
    move-result v2

    #@e
    if-eqz v2, :cond_1

    #@10
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@13
    move-result-object v0

    #@14
    check-cast v0, Lcom/android/server/hdmi/NewDeviceAction;

    #@16
    .line 639
    .local v0, "action":Lcom/android/server/hdmi/NewDeviceAction;
    invoke-virtual {v0, p1}, Lcom/android/server/hdmi/NewDeviceAction;->isActionOf(Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;)Z

    #@19
    move-result v2

    #@1a
    if-eqz v2, :cond_0

    #@1c
    .line 640
    return-void

    #@1d
    .line 644
    .end local v0    # "action":Lcom/android/server/hdmi/NewDeviceAction;
    :cond_1
    new-instance v2, Lcom/android/server/hdmi/NewDeviceAction;

    #@1f
    iget v3, p1, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;->logicalAddress:I

    #@21
    .line 645
    iget v4, p1, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;->physicalAddress:I

    #@23
    .line 644
    invoke-direct {v2, p0, v3, v4, p2}, Lcom/android/server/hdmi/NewDeviceAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;III)V

    #@26
    invoke-virtual {p0, v2}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->addAndStartAction(Lcom/android/server/hdmi/HdmiCecFeatureAction;)V

    #@29
    .line 629
    return-void
.end method

.method startOneTouchRecord(I[B)I
    .locals 4
    .param p1, "recorderAddress"    # I
    .param p2, "recordSource"    # [B
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    .line 1698
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->assertRunOnServiceThread()V

    #@4
    .line 1699
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mService:Lcom/android/server/hdmi/HdmiControlService;

    #@6
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->isControlEnabled()Z

    #@9
    move-result v0

    #@a
    if-nez v0, :cond_0

    #@c
    .line 1700
    const-string/jumbo v0, "HdmiCecLocalDeviceTv"

    #@f
    const-string/jumbo v1, "Can not start one touch record. CEC control is disabled."

    #@12
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@15
    .line 1701
    const/16 v0, 0x33

    #@17
    invoke-virtual {p0, p1, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->announceOneTouchRecordResult(II)V

    #@1a
    .line 1702
    return v3

    #@1b
    .line 1705
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->checkRecorder(I)Z

    #@1e
    move-result v0

    #@1f
    if-nez v0, :cond_1

    #@21
    .line 1706
    const-string/jumbo v0, "HdmiCecLocalDeviceTv"

    #@24
    new-instance v1, Ljava/lang/StringBuilder;

    #@26
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@29
    const-string/jumbo v2, "Invalid recorder address:"

    #@2c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v1

    #@30
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@33
    move-result-object v1

    #@34
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@37
    move-result-object v1

    #@38
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@3b
    .line 1708
    const/16 v0, 0x31

    #@3d
    .line 1707
    invoke-virtual {p0, p1, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->announceOneTouchRecordResult(II)V

    #@40
    .line 1709
    return v3

    #@41
    .line 1712
    :cond_1
    invoke-direct {p0, p2}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->checkRecordSource([B)Z

    #@44
    move-result v0

    #@45
    if-nez v0, :cond_2

    #@47
    .line 1713
    const-string/jumbo v0, "HdmiCecLocalDeviceTv"

    #@4a
    new-instance v1, Ljava/lang/StringBuilder;

    #@4c
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@4f
    const-string/jumbo v2, "Invalid record source."

    #@52
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@55
    move-result-object v1

    #@56
    invoke-static {p2}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    #@59
    move-result-object v2

    #@5a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5d
    move-result-object v1

    #@5e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@61
    move-result-object v1

    #@62
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@65
    .line 1715
    const/16 v0, 0x32

    #@67
    .line 1714
    invoke-virtual {p0, p1, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->announceOneTouchRecordResult(II)V

    #@6a
    .line 1716
    const/4 v0, 0x2

    #@6b
    return v0

    #@6c
    .line 1719
    :cond_2
    new-instance v0, Lcom/android/server/hdmi/OneTouchRecordAction;

    #@6e
    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/hdmi/OneTouchRecordAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;I[B)V

    #@71
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->addAndStartAction(Lcom/android/server/hdmi/HdmiCecFeatureAction;)V

    #@74
    .line 1720
    const-string/jumbo v0, "HdmiCecLocalDeviceTv"

    #@77
    new-instance v1, Ljava/lang/StringBuilder;

    #@79
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@7c
    const-string/jumbo v2, "Start new [One Touch Record]-Target:"

    #@7f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@82
    move-result-object v1

    #@83
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@86
    move-result-object v1

    #@87
    const-string/jumbo v2, ", recordSource:"

    #@8a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8d
    move-result-object v1

    #@8e
    .line 1721
    invoke-static {p2}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    #@91
    move-result-object v2

    #@92
    .line 1720
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@95
    move-result-object v1

    #@96
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@99
    move-result-object v1

    #@9a
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@9d
    .line 1722
    const/4 v0, -0x1

    #@9e
    return v0
.end method

.method startRoutingControl(IIZLandroid/hardware/hdmi/IHdmiControlCallback;)V
    .locals 2
    .param p1, "oldPath"    # I
    .param p2, "newPath"    # I
    .param p3, "queryDevicePowerStatus"    # Z
    .param p4, "callback"    # Landroid/hardware/hdmi/IHdmiControlCallback;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    #@0
    .prologue
    .line 400
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->assertRunOnServiceThread()V

    #@3
    .line 401
    if-ne p1, p2, :cond_0

    #@5
    .line 402
    return-void

    #@6
    .line 405
    :cond_0
    iget v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mAddress:I

    #@8
    invoke-static {v1, p1, p2}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildRoutingChange(III)Lcom/android/server/hdmi/HdmiCecMessage;

    #@b
    move-result-object v0

    #@c
    .line 406
    .local v0, "routingChange":Lcom/android/server/hdmi/HdmiCecMessage;
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mService:Lcom/android/server/hdmi/HdmiControlService;

    #@e
    invoke-virtual {v1, v0}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    #@11
    .line 407
    const-class v1, Lcom/android/server/hdmi/RoutingControlAction;

    #@13
    invoke-virtual {p0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->removeAction(Ljava/lang/Class;)V

    #@16
    .line 409
    new-instance v1, Lcom/android/server/hdmi/RoutingControlAction;

    #@18
    invoke-direct {v1, p0, p2, p3, p4}, Lcom/android/server/hdmi/RoutingControlAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;IZLandroid/hardware/hdmi/IHdmiControlCallback;)V

    #@1b
    .line 408
    invoke-virtual {p0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->addAndStartAction(Lcom/android/server/hdmi/HdmiCecFeatureAction;)V

    #@1e
    .line 399
    return-void
.end method

.method startTimerRecording(II[B)V
    .locals 3
    .param p1, "recorderAddress"    # I
    .param p2, "sourceType"    # I
    .param p3, "recordSource"    # [B
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    #@0
    .prologue
    .line 1760
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->assertRunOnServiceThread()V

    #@3
    .line 1761
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mService:Lcom/android/server/hdmi/HdmiControlService;

    #@5
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->isControlEnabled()Z

    #@8
    move-result v0

    #@9
    if-nez v0, :cond_0

    #@b
    .line 1762
    const-string/jumbo v0, "HdmiCecLocalDeviceTv"

    #@e
    const-string/jumbo v1, "Can not start one touch record. CEC control is disabled."

    #@11
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@14
    .line 1764
    const/4 v0, 0x3

    #@15
    .line 1763
    invoke-virtual {p0, p1, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->announceTimerRecordingResult(II)V

    #@18
    .line 1765
    return-void

    #@19
    .line 1768
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->checkRecorder(I)Z

    #@1c
    move-result v0

    #@1d
    if-nez v0, :cond_1

    #@1f
    .line 1769
    const-string/jumbo v0, "HdmiCecLocalDeviceTv"

    #@22
    new-instance v1, Ljava/lang/StringBuilder;

    #@24
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@27
    const-string/jumbo v2, "Invalid recorder address:"

    #@2a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v1

    #@2e
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@31
    move-result-object v1

    #@32
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@35
    move-result-object v1

    #@36
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@39
    .line 1771
    const/4 v0, 0x1

    #@3a
    .line 1770
    invoke-virtual {p0, p1, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->announceTimerRecordingResult(II)V

    #@3d
    .line 1772
    return-void

    #@3e
    .line 1775
    :cond_1
    invoke-direct {p0, p2, p3}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->checkTimerRecordingSource(I[B)Z

    #@41
    move-result v0

    #@42
    if-nez v0, :cond_2

    #@44
    .line 1776
    const-string/jumbo v0, "HdmiCecLocalDeviceTv"

    #@47
    new-instance v1, Ljava/lang/StringBuilder;

    #@49
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@4c
    const-string/jumbo v2, "Invalid record source."

    #@4f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@52
    move-result-object v1

    #@53
    invoke-static {p3}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    #@56
    move-result-object v2

    #@57
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v1

    #@5b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5e
    move-result-object v1

    #@5f
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@62
    .line 1779
    const/4 v0, 0x2

    #@63
    .line 1777
    invoke-virtual {p0, p1, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->announceTimerRecordingResult(II)V

    #@66
    .line 1780
    return-void

    #@67
    .line 1784
    :cond_2
    new-instance v0, Lcom/android/server/hdmi/TimerRecordingAction;

    #@69
    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/server/hdmi/TimerRecordingAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;II[B)V

    #@6c
    .line 1783
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->addAndStartAction(Lcom/android/server/hdmi/HdmiCecFeatureAction;)V

    #@6f
    .line 1785
    const-string/jumbo v0, "HdmiCecLocalDeviceTv"

    #@72
    new-instance v1, Ljava/lang/StringBuilder;

    #@74
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@77
    const-string/jumbo v2, "Start [Timer Recording]-Target:"

    #@7a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7d
    move-result-object v1

    #@7e
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@81
    move-result-object v1

    #@82
    const-string/jumbo v2, ", SourceType:"

    #@85
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@88
    move-result-object v1

    #@89
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@8c
    move-result-object v1

    #@8d
    .line 1786
    const-string/jumbo v2, ", RecordSource:"

    #@90
    .line 1785
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@93
    move-result-object v1

    #@94
    .line 1786
    invoke-static {p3}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    #@97
    move-result-object v2

    #@98
    .line 1785
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9b
    move-result-object v1

    #@9c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9f
    move-result-object v1

    #@a0
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@a3
    .line 1759
    return-void
.end method

.method stopOneTouchRecord(I)V
    .locals 3
    .param p1, "recorderAddress"    # I
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    #@0
    .prologue
    .line 1727
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->assertRunOnServiceThread()V

    #@3
    .line 1728
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mService:Lcom/android/server/hdmi/HdmiControlService;

    #@5
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->isControlEnabled()Z

    #@8
    move-result v0

    #@9
    if-nez v0, :cond_0

    #@b
    .line 1729
    const-string/jumbo v0, "HdmiCecLocalDeviceTv"

    #@e
    const-string/jumbo v1, "Can not stop one touch record. CEC control is disabled."

    #@11
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@14
    .line 1730
    const/16 v0, 0x33

    #@16
    invoke-virtual {p0, p1, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->announceOneTouchRecordResult(II)V

    #@19
    .line 1731
    return-void

    #@1a
    .line 1734
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->checkRecorder(I)Z

    #@1d
    move-result v0

    #@1e
    if-nez v0, :cond_1

    #@20
    .line 1735
    const-string/jumbo v0, "HdmiCecLocalDeviceTv"

    #@23
    new-instance v1, Ljava/lang/StringBuilder;

    #@25
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@28
    const-string/jumbo v2, "Invalid recorder address:"

    #@2b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v1

    #@2f
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@32
    move-result-object v1

    #@33
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@36
    move-result-object v1

    #@37
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@3a
    .line 1737
    const/16 v0, 0x31

    #@3c
    .line 1736
    invoke-virtual {p0, p1, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->announceOneTouchRecordResult(II)V

    #@3f
    .line 1738
    return-void

    #@40
    .line 1742
    :cond_1
    const-class v0, Lcom/android/server/hdmi/OneTouchRecordAction;

    #@42
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->removeAction(Ljava/lang/Class;)V

    #@45
    .line 1743
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mService:Lcom/android/server/hdmi/HdmiControlService;

    #@47
    iget v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mAddress:I

    #@49
    invoke-static {v1, p1}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildRecordOff(II)Lcom/android/server/hdmi/HdmiCecMessage;

    #@4c
    move-result-object v1

    #@4d
    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    #@50
    .line 1744
    const-string/jumbo v0, "HdmiCecLocalDeviceTv"

    #@53
    new-instance v1, Ljava/lang/StringBuilder;

    #@55
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@58
    const-string/jumbo v2, "Stop [One Touch Record]-Target:"

    #@5b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5e
    move-result-object v1

    #@5f
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@62
    move-result-object v1

    #@63
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@66
    move-result-object v1

    #@67
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@6a
    .line 1726
    return-void
.end method

.method updateActiveInput(IZ)V
    .locals 4
    .param p1, "path"    # I
    .param p2, "notifyInputChange"    # Z
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    #@0
    .prologue
    .line 348
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->assertRunOnServiceThread()V

    #@3
    .line 350
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->setActivePath(I)V

    #@6
    .line 353
    if-eqz p2, :cond_1

    #@8
    .line 354
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getActiveSource()Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;

    #@b
    move-result-object v0

    #@c
    .line 355
    .local v0, "activeSource":Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;
    iget v2, v0, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;->logicalAddress:I

    #@e
    invoke-virtual {p0, v2}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getCecDeviceInfo(I)Landroid/hardware/hdmi/HdmiDeviceInfo;

    #@11
    move-result-object v1

    #@12
    .line 356
    .local v1, "info":Landroid/hardware/hdmi/HdmiDeviceInfo;
    if-nez v1, :cond_0

    #@14
    .line 357
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mService:Lcom/android/server/hdmi/HdmiControlService;

    #@16
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getActivePortId()I

    #@19
    move-result v3

    #@1a
    invoke-virtual {v2, v3}, Lcom/android/server/hdmi/HdmiControlService;->getDeviceInfoByPort(I)Landroid/hardware/hdmi/HdmiDeviceInfo;

    #@1d
    move-result-object v1

    #@1e
    .line 358
    if-nez v1, :cond_0

    #@20
    .line 361
    new-instance v1, Landroid/hardware/hdmi/HdmiDeviceInfo;

    #@22
    .end local v1    # "info":Landroid/hardware/hdmi/HdmiDeviceInfo;
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getActivePortId()I

    #@25
    move-result v2

    #@26
    invoke-direct {v1, p1, v2}, Landroid/hardware/hdmi/HdmiDeviceInfo;-><init>(II)V

    #@29
    .line 364
    .restart local v1    # "info":Landroid/hardware/hdmi/HdmiDeviceInfo;
    :cond_0
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mService:Lcom/android/server/hdmi/HdmiControlService;

    #@2b
    invoke-virtual {v2, v1}, Lcom/android/server/hdmi/HdmiControlService;->invokeInputChangeListener(Landroid/hardware/hdmi/HdmiDeviceInfo;)V

    #@2e
    .line 347
    .end local v0    # "activeSource":Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;
    .end local v1    # "info":Landroid/hardware/hdmi/HdmiDeviceInfo;
    :cond_1
    return-void
.end method

.method updateActiveSource(II)V
    .locals 1
    .param p1, "logicalAddress"    # I
    .param p2, "physicalAddress"    # I
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    #@0
    .prologue
    .line 299
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->assertRunOnServiceThread()V

    #@3
    .line 300
    invoke-static {p1, p2}, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;->of(II)Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;

    #@6
    move-result-object v0

    #@7
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->updateActiveSource(Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;)V

    #@a
    .line 298
    return-void
.end method

.method updateActiveSource(Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;)V
    .locals 3
    .param p1, "newActive"    # Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    #@0
    .prologue
    .line 305
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->assertRunOnServiceThread()V

    #@3
    .line 307
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mActiveSource:Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;

    #@5
    invoke-virtual {v1, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;->equals(Ljava/lang/Object;)Z

    #@8
    move-result v1

    #@9
    if-eqz v1, :cond_0

    #@b
    .line 308
    return-void

    #@c
    .line 310
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->setActiveSource(Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;)V

    #@f
    .line 311
    iget v0, p1, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;->logicalAddress:I

    #@11
    .line 312
    .local v0, "logicalAddress":I
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getCecDeviceInfo(I)Landroid/hardware/hdmi/HdmiDeviceInfo;

    #@14
    move-result-object v1

    #@15
    if-eqz v1, :cond_1

    #@17
    iget v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mAddress:I

    #@19
    if-eq v0, v1, :cond_1

    #@1b
    .line 313
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mService:Lcom/android/server/hdmi/HdmiControlService;

    #@1d
    iget v2, p1, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;->physicalAddress:I

    #@1f
    invoke-virtual {v1, v2}, Lcom/android/server/hdmi/HdmiControlService;->pathToPortId(I)I

    #@22
    move-result v1

    #@23
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getActivePortId()I

    #@26
    move-result v2

    #@27
    if-ne v1, v2, :cond_1

    #@29
    .line 314
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getActivePortId()I

    #@2c
    move-result v1

    #@2d
    invoke-virtual {p0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->setPrevPortId(I)V

    #@30
    .line 304
    :cond_1
    return-void
.end method

.method updateCecSwitchInfo(III)Z
    .locals 2
    .param p1, "address"    # I
    .param p2, "type"    # I
    .param p3, "path"    # I

    #@0
    .prologue
    .line 617
    const/16 v0, 0xf

    #@2
    if-ne p1, v0, :cond_0

    #@4
    .line 618
    const/4 v0, 0x6

    #@5
    if-ne p2, v0, :cond_0

    #@7
    .line 619
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mCecSwitches:Landroid/util/ArraySet;

    #@9
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@c
    move-result-object v1

    #@d
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    #@10
    .line 620
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->updateSafeDeviceInfoList()V

    #@13
    .line 621
    const/4 v0, 0x1

    #@14
    return v0

    #@15
    .line 623
    :cond_0
    const/4 v0, 0x5

    #@16
    if-ne p2, v0, :cond_1

    #@18
    .line 624
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mCecSwitches:Landroid/util/ArraySet;

    #@1a
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1d
    move-result-object v1

    #@1e
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    #@21
    .line 626
    :cond_1
    const/4 v0, 0x0

    #@22
    return v0
.end method

.method updateDevicePowerStatus(II)V
    .locals 5
    .param p1, "logicalAddress"    # I
    .param p2, "newPowerStatus"    # I

    #@0
    .prologue
    .line 1855
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getCecDeviceInfo(I)Landroid/hardware/hdmi/HdmiDeviceInfo;

    #@3
    move-result-object v0

    #@4
    .line 1856
    .local v0, "info":Landroid/hardware/hdmi/HdmiDeviceInfo;
    if-nez v0, :cond_0

    #@6
    .line 1857
    const-string/jumbo v2, "HdmiCecLocalDeviceTv"

    #@9
    new-instance v3, Ljava/lang/StringBuilder;

    #@b
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    const-string/jumbo v4, "Can not update power status of non-existing device:"

    #@11
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v3

    #@15
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@18
    move-result-object v3

    #@19
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c
    move-result-object v3

    #@1d
    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@20
    .line 1858
    return-void

    #@21
    .line 1861
    :cond_0
    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getDevicePowerStatus()I

    #@24
    move-result v2

    #@25
    if-ne v2, p2, :cond_1

    #@27
    .line 1862
    return-void

    #@28
    .line 1865
    :cond_1
    invoke-static {v0, p2}, Lcom/android/server/hdmi/HdmiUtils;->cloneHdmiDeviceInfo(Landroid/hardware/hdmi/HdmiDeviceInfo;I)Landroid/hardware/hdmi/HdmiDeviceInfo;

    #@2b
    move-result-object v1

    #@2c
    .line 1867
    .local v1, "newInfo":Landroid/hardware/hdmi/HdmiDeviceInfo;
    invoke-direct {p0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->addDeviceInfo(Landroid/hardware/hdmi/HdmiDeviceInfo;)Landroid/hardware/hdmi/HdmiDeviceInfo;

    #@2f
    .line 1869
    const/4 v2, 0x3

    #@30
    invoke-direct {p0, v1, v2}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->invokeDeviceEventListener(Landroid/hardware/hdmi/HdmiDeviceInfo;I)V

    #@33
    .line 1854
    return-void
.end method

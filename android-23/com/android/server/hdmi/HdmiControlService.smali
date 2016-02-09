.class public final Lcom/android/server/hdmi/HdmiControlService;
.super Lcom/android/server/SystemService;
.source "HdmiControlService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;,
        Lcom/android/server/hdmi/HdmiControlService$DevicePollingCallback;,
        Lcom/android/server/hdmi/HdmiControlService$HdmiControlBroadcastReceiver;,
        Lcom/android/server/hdmi/HdmiControlService$CecMessageBuffer;,
        Lcom/android/server/hdmi/HdmiControlService$SettingsObserver;,
        Lcom/android/server/hdmi/HdmiControlService$HdmiMhlVendorCommandListenerRecord;,
        Lcom/android/server/hdmi/HdmiControlService$HotplugEventListenerRecord;,
        Lcom/android/server/hdmi/HdmiControlService$DeviceEventListenerRecord;,
        Lcom/android/server/hdmi/HdmiControlService$SystemAudioModeChangeListenerRecord;,
        Lcom/android/server/hdmi/HdmiControlService$VendorCommandListenerRecord;,
        Lcom/android/server/hdmi/HdmiControlService$HdmiRecordListenerRecord;,
        Lcom/android/server/hdmi/HdmiControlService$BinderService;,
        Lcom/android/server/hdmi/HdmiControlService$InputChangeListenerRecord;
    }
.end annotation


# static fields
.field static final INITIATED_BY_BOOT_UP:I = 0x1

.field static final INITIATED_BY_ENABLE_CEC:I = 0x0

.field static final INITIATED_BY_HOTPLUG:I = 0x4

.field static final INITIATED_BY_SCREEN_ON:I = 0x2

.field static final INITIATED_BY_WAKE_UP_MESSAGE:I = 0x3

.field static final PERMISSION:Ljava/lang/String; = "android.permission.HDMI_CEC"

.field static final STANDBY_SCREEN_OFF:I = 0x0

.field static final STANDBY_SHUTDOWN:I = 0x1

.field private static final TAG:Ljava/lang/String; = "HdmiControlService"


# instance fields
.field private final HONG_KONG:Ljava/util/Locale;

.field private final MACAU:Ljava/util/Locale;

.field private mActivePortId:I
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation
.end field

.field private mAddressAllocated:Z

.field private mCecController:Lcom/android/server/hdmi/HdmiCecController;

.field private mCecMessageBuffer:Lcom/android/server/hdmi/HdmiControlService$CecMessageBuffer;

.field private final mDeviceEventListenerRecords:Ljava/util/ArrayList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/hdmi/HdmiControlService$DeviceEventListenerRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private final mHdmiControlBroadcastReceiver:Lcom/android/server/hdmi/HdmiControlService$HdmiControlBroadcastReceiver;

.field private mHdmiControlEnabled:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mHotplugEventListenerRecords:Ljava/util/ArrayList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/hdmi/HdmiControlService$HotplugEventListenerRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mInputChangeListenerRecord:Lcom/android/server/hdmi/HdmiControlService$InputChangeListenerRecord;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mIoThread:Landroid/os/HandlerThread;

.field private mLanguage:Ljava/lang/String;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation
.end field

.field private mLastInputMhl:I
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation
.end field

.field private final mLocalDevices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private mMessageValidator:Lcom/android/server/hdmi/HdmiCecMessageValidator;

.field private mMhlController:Lcom/android/server/hdmi/HdmiMhlControllerStub;

.field private mMhlDevices:Ljava/util/List;
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

.field private mMhlInputChangeEnabled:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mMhlVendorCommandListenerRecords:Ljava/util/ArrayList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/hdmi/HdmiControlService$HdmiMhlVendorCommandListenerRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mPortDeviceMap:Lcom/android/server/hdmi/UnmodifiableSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/hdmi/UnmodifiableSparseArray",
            "<",
            "Landroid/hardware/hdmi/HdmiDeviceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mPortIdMap:Lcom/android/server/hdmi/UnmodifiableSparseIntArray;

.field private mPortInfo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/hardware/hdmi/HdmiPortInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mPortInfoMap:Lcom/android/server/hdmi/UnmodifiableSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/hdmi/UnmodifiableSparseArray",
            "<",
            "Landroid/hardware/hdmi/HdmiPortInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mPowerManager:Landroid/os/PowerManager;

.field private mPowerStatus:I
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation
.end field

.field private mProhibitMode:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mRecordListenerRecord:Lcom/android/server/hdmi/HdmiControlService$HdmiRecordListenerRecord;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mSettingsObserver:Lcom/android/server/hdmi/HdmiControlService$SettingsObserver;

.field private mStandbyMessageReceived:Z
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation
.end field

.field private final mSystemAudioModeChangeListenerRecords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/hdmi/HdmiControlService$SystemAudioModeChangeListenerRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mTvInputManager:Landroid/media/tv/TvInputManager;

.field private final mVendorCommandListenerRecords:Ljava/util/ArrayList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/hdmi/HdmiControlService$VendorCommandListenerRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mWakeUpMessageReceived:Z
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lcom/android/server/hdmi/HdmiControlService;)Ljava/util/Locale;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->HONG_KONG:Ljava/util/Locale;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/hdmi/HdmiControlService;)Ljava/util/Locale;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->MACAU:Ljava/util/Locale;

    #@2
    return-object v0
.end method

.method static synthetic -get10(Lcom/android/server/hdmi/HdmiControlService;)Ljava/lang/Object;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method static synthetic -get11(Lcom/android/server/hdmi/HdmiControlService;)Lcom/android/server/hdmi/HdmiMhlControllerStub;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mMhlController:Lcom/android/server/hdmi/HdmiMhlControllerStub;

    #@2
    return-object v0
.end method

.method static synthetic -get12(Lcom/android/server/hdmi/HdmiControlService;)Ljava/util/ArrayList;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mMhlVendorCommandListenerRecords:Ljava/util/ArrayList;

    #@2
    return-object v0
.end method

.method static synthetic -get13(Lcom/android/server/hdmi/HdmiControlService;)Ljava/util/List;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mPortInfo:Ljava/util/List;

    #@2
    return-object v0
.end method

.method static synthetic -get14(Lcom/android/server/hdmi/HdmiControlService;)I
    .locals 1

    #@0
    iget v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mPowerStatus:I

    #@2
    return v0
.end method

.method static synthetic -get15(Lcom/android/server/hdmi/HdmiControlService;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mProhibitMode:Z

    #@2
    return v0
.end method

.method static synthetic -get16(Lcom/android/server/hdmi/HdmiControlService;)Ljava/util/ArrayList;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mSystemAudioModeChangeListenerRecords:Ljava/util/ArrayList;

    #@2
    return-object v0
.end method

.method static synthetic -get17(Lcom/android/server/hdmi/HdmiControlService;)Ljava/util/ArrayList;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mVendorCommandListenerRecords:Ljava/util/ArrayList;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/hdmi/HdmiControlService;)I
    .locals 1

    #@0
    iget v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mActivePortId:I

    #@2
    return v0
.end method

.method static synthetic -get3(Lcom/android/server/hdmi/HdmiControlService;)Lcom/android/server/hdmi/HdmiCecController;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;

    #@2
    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/hdmi/HdmiControlService;)Lcom/android/server/hdmi/HdmiControlService$CecMessageBuffer;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecMessageBuffer:Lcom/android/server/hdmi/HdmiControlService$CecMessageBuffer;

    #@2
    return-object v0
.end method

.method static synthetic -get5(Lcom/android/server/hdmi/HdmiControlService;)Ljava/util/ArrayList;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mDeviceEventListenerRecords:Ljava/util/ArrayList;

    #@2
    return-object v0
.end method

.method static synthetic -get6(Lcom/android/server/hdmi/HdmiControlService;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiControlEnabled:Z

    #@2
    return v0
.end method

.method static synthetic -get7(Lcom/android/server/hdmi/HdmiControlService;)Ljava/util/ArrayList;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mHotplugEventListenerRecords:Ljava/util/ArrayList;

    #@2
    return-object v0
.end method

.method static synthetic -get8(Lcom/android/server/hdmi/HdmiControlService;)Ljava/lang/String;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mLanguage:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method static synthetic -get9(Lcom/android/server/hdmi/HdmiControlService;)Ljava/util/List;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mLocalDevices:Ljava/util/List;

    #@2
    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/hdmi/HdmiControlService;Z)Z
    .locals 0

    #@0
    iput-boolean p1, p0, Lcom/android/server/hdmi/HdmiControlService;->mAddressAllocated:Z

    #@2
    return p1
.end method

.method static synthetic -set1(Lcom/android/server/hdmi/HdmiControlService;Lcom/android/server/hdmi/HdmiControlService$InputChangeListenerRecord;)Lcom/android/server/hdmi/HdmiControlService$InputChangeListenerRecord;
    .locals 0

    #@0
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiControlService;->mInputChangeListenerRecord:Lcom/android/server/hdmi/HdmiControlService$InputChangeListenerRecord;

    #@2
    return-object p1
.end method

.method static synthetic -set2(Lcom/android/server/hdmi/HdmiControlService;Lcom/android/server/hdmi/HdmiControlService$HdmiRecordListenerRecord;)Lcom/android/server/hdmi/HdmiControlService$HdmiRecordListenerRecord;
    .locals 0

    #@0
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiControlService;->mRecordListenerRecord:Lcom/android/server/hdmi/HdmiControlService$HdmiRecordListenerRecord;

    #@2
    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/server/hdmi/HdmiControlService;III)Landroid/hardware/hdmi/HdmiDeviceInfo;
    .locals 1
    .param p1, "logicalAddress"    # I
    .param p2, "deviceType"    # I
    .param p3, "powerStatus"    # I

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/hdmi/HdmiControlService;->createDeviceInfo(III)Landroid/hardware/hdmi/HdmiDeviceInfo;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/server/hdmi/HdmiControlService;)Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;
    .locals 1

    #@0
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiControlService;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap10(Lcom/android/server/hdmi/HdmiControlService;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiControlService;->clearLocalDevices()V

    #@3
    return-void
.end method

.method static synthetic -wrap11(Lcom/android/server/hdmi/HdmiControlService;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiControlService;->disableHdmiControlService()V

    #@3
    return-void
.end method

.method static synthetic -wrap12(Lcom/android/server/hdmi/HdmiControlService;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiControlService;->enforceAccessPermission()V

    #@3
    return-void
.end method

.method static synthetic -wrap13(Lcom/android/server/hdmi/HdmiControlService;Landroid/hardware/hdmi/IHdmiControlCallback;I)V
    .locals 0
    .param p1, "callback"    # Landroid/hardware/hdmi/IHdmiControlCallback;
    .param p2, "result"    # I

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/hdmi/HdmiControlService;->invokeCallback(Landroid/hardware/hdmi/IHdmiControlCallback;I)V

    #@3
    return-void
.end method

.method static synthetic -wrap14(Lcom/android/server/hdmi/HdmiControlService;Landroid/hardware/hdmi/IHdmiHotplugEventListener;Landroid/hardware/hdmi/HdmiHotplugEvent;)V
    .locals 0
    .param p1, "listener"    # Landroid/hardware/hdmi/IHdmiHotplugEventListener;
    .param p2, "event"    # Landroid/hardware/hdmi/HdmiHotplugEvent;

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/hdmi/HdmiControlService;->invokeHotplugEventListenerLocked(Landroid/hardware/hdmi/IHdmiHotplugEventListener;Landroid/hardware/hdmi/HdmiHotplugEvent;)V

    #@3
    return-void
.end method

.method static synthetic -wrap15(Lcom/android/server/hdmi/HdmiControlService;Ljava/util/ArrayList;I)V
    .locals 0
    .param p1, "devices"    # Ljava/util/ArrayList;
    .param p2, "initiatedBy"    # I

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/hdmi/HdmiControlService;->notifyAddressAllocated(Ljava/util/ArrayList;I)V

    #@3
    return-void
.end method

.method static synthetic -wrap16(Lcom/android/server/hdmi/HdmiControlService;I)V
    .locals 0
    .param p1, "initiatedBy"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiControlService;->onInitializeCecComplete(I)V

    #@3
    return-void
.end method

.method static synthetic -wrap17(Lcom/android/server/hdmi/HdmiControlService;Ljava/lang/String;)V
    .locals 0
    .param p1, "language"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiControlService;->onLanguageChanged(Ljava/lang/String;)V

    #@3
    return-void
.end method

.method static synthetic -wrap18(Lcom/android/server/hdmi/HdmiControlService;I)V
    .locals 0
    .param p1, "standbyAction"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiControlService;->onStandbyCompleted(I)V

    #@3
    return-void
.end method

.method static synthetic -wrap19(Lcom/android/server/hdmi/HdmiControlService;I)V
    .locals 0
    .param p1, "standbyAction"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiControlService;->onStandby(I)V

    #@3
    return-void
.end method

.method static synthetic -wrap2(Z)I
    .locals 1
    .param p0, "enabled"    # Z

    #@0
    .prologue
    invoke-static {p0}, Lcom/android/server/hdmi/HdmiControlService;->toInt(Z)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap20(Lcom/android/server/hdmi/HdmiControlService;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiControlService;->onWakeUp()V

    #@3
    return-void
.end method

.method static synthetic -wrap21(Lcom/android/server/hdmi/HdmiControlService;Landroid/hardware/hdmi/IHdmiControlCallback;)V
    .locals 0
    .param p1, "callback"    # Landroid/hardware/hdmi/IHdmiControlCallback;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiControlService;->oneTouchPlay(Landroid/hardware/hdmi/IHdmiControlCallback;)V

    #@3
    return-void
.end method

.method static synthetic -wrap22(Lcom/android/server/hdmi/HdmiControlService;Landroid/hardware/hdmi/IHdmiControlCallback;)V
    .locals 0
    .param p1, "callback"    # Landroid/hardware/hdmi/IHdmiControlCallback;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiControlService;->queryDisplayStatus(Landroid/hardware/hdmi/IHdmiControlCallback;)V

    #@3
    return-void
.end method

.method static synthetic -wrap23(Lcom/android/server/hdmi/HdmiControlService;Landroid/hardware/hdmi/IHdmiHotplugEventListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/hardware/hdmi/IHdmiHotplugEventListener;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiControlService;->removeHotplugEventListener(Landroid/hardware/hdmi/IHdmiHotplugEventListener;)V

    #@3
    return-void
.end method

.method static synthetic -wrap24(Lcom/android/server/hdmi/HdmiControlService;Landroid/hardware/hdmi/IHdmiSystemAudioModeChangeListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/hardware/hdmi/IHdmiSystemAudioModeChangeListener;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiControlService;->removeSystemAudioModeChangeListener(Landroid/hardware/hdmi/IHdmiSystemAudioModeChangeListener;)V

    #@3
    return-void
.end method

.method static synthetic -wrap25(Lcom/android/server/hdmi/HdmiControlService;Landroid/hardware/hdmi/IHdmiRecordListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/hardware/hdmi/IHdmiRecordListener;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiControlService;->setHdmiRecordListener(Landroid/hardware/hdmi/IHdmiRecordListener;)V

    #@3
    return-void
.end method

.method static synthetic -wrap26(Lcom/android/server/hdmi/HdmiControlService;Landroid/hardware/hdmi/IHdmiInputChangeListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/hardware/hdmi/IHdmiInputChangeListener;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiControlService;->setInputChangeListener(Landroid/hardware/hdmi/IHdmiInputChangeListener;)V

    #@3
    return-void
.end method

.method static synthetic -wrap3(Lcom/android/server/hdmi/HdmiControlService;)Ljava/util/List;
    .locals 1

    #@0
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiControlService;->getMhlDevicesLocked()Ljava/util/List;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap4(Lcom/android/server/hdmi/HdmiControlService;Landroid/hardware/hdmi/IHdmiDeviceEventListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/hardware/hdmi/IHdmiDeviceEventListener;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiControlService;->addDeviceEventListener(Landroid/hardware/hdmi/IHdmiDeviceEventListener;)V

    #@3
    return-void
.end method

.method static synthetic -wrap5(Lcom/android/server/hdmi/HdmiControlService;Landroid/hardware/hdmi/IHdmiMhlVendorCommandListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/hardware/hdmi/IHdmiMhlVendorCommandListener;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiControlService;->addHdmiMhlVendorCommandListener(Landroid/hardware/hdmi/IHdmiMhlVendorCommandListener;)V

    #@3
    return-void
.end method

.method static synthetic -wrap6(Lcom/android/server/hdmi/HdmiControlService;Landroid/hardware/hdmi/IHdmiHotplugEventListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/hardware/hdmi/IHdmiHotplugEventListener;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiControlService;->addHotplugEventListener(Landroid/hardware/hdmi/IHdmiHotplugEventListener;)V

    #@3
    return-void
.end method

.method static synthetic -wrap7(Lcom/android/server/hdmi/HdmiControlService;Landroid/hardware/hdmi/IHdmiSystemAudioModeChangeListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/hardware/hdmi/IHdmiSystemAudioModeChangeListener;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiControlService;->addSystemAudioModeChangeListner(Landroid/hardware/hdmi/IHdmiSystemAudioModeChangeListener;)V

    #@3
    return-void
.end method

.method static synthetic -wrap8(Lcom/android/server/hdmi/HdmiControlService;Landroid/hardware/hdmi/IHdmiVendorCommandListener;I)V
    .locals 0
    .param p1, "listener"    # Landroid/hardware/hdmi/IHdmiVendorCommandListener;
    .param p2, "deviceType"    # I

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/hdmi/HdmiControlService;->addVendorCommandListener(Landroid/hardware/hdmi/IHdmiVendorCommandListener;I)V

    #@3
    return-void
.end method

.method static synthetic -wrap9(Lcom/android/server/hdmi/HdmiControlService;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    #@3
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    const/4 v4, -0x1

    #@2
    const/4 v3, 0x0

    #@3
    .line 366
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    #@6
    .line 97
    new-instance v0, Ljava/util/Locale;

    #@8
    const-string/jumbo v1, "zh"

    #@b
    const-string/jumbo v2, "HK"

    #@e
    invoke-direct {v0, v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@11
    iput-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->HONG_KONG:Ljava/util/Locale;

    #@13
    .line 98
    new-instance v0, Ljava/util/Locale;

    #@15
    const-string/jumbo v1, "zh"

    #@18
    const-string/jumbo v2, "MO"

    #@1b
    invoke-direct {v0, v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@1e
    iput-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->MACAU:Ljava/util/Locale;

    #@20
    .line 190
    new-instance v0, Landroid/os/HandlerThread;

    #@22
    const-string/jumbo v1, "Hdmi Control Io Thread"

    #@25
    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    #@28
    iput-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mIoThread:Landroid/os/HandlerThread;

    #@2a
    .line 193
    new-instance v0, Ljava/lang/Object;

    #@2c
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@2f
    iput-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    #@31
    .line 201
    new-instance v0, Ljava/util/ArrayList;

    #@33
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@36
    .line 200
    iput-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mHotplugEventListenerRecords:Ljava/util/ArrayList;

    #@38
    .line 206
    new-instance v0, Ljava/util/ArrayList;

    #@3a
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@3d
    .line 205
    iput-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mDeviceEventListenerRecords:Ljava/util/ArrayList;

    #@3f
    .line 211
    new-instance v0, Ljava/util/ArrayList;

    #@41
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@44
    .line 210
    iput-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mVendorCommandListenerRecords:Ljava/util/ArrayList;

    #@46
    .line 232
    new-instance v0, Ljava/util/ArrayList;

    #@48
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@4b
    iput-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mSystemAudioModeChangeListenerRecords:Ljava/util/ArrayList;

    #@4d
    .line 235
    new-instance v0, Landroid/os/Handler;

    #@4f
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    #@52
    iput-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mHandler:Landroid/os/Handler;

    #@54
    .line 240
    new-instance v0, Lcom/android/server/hdmi/HdmiControlService$HdmiControlBroadcastReceiver;

    #@56
    invoke-direct {v0, p0, v5}, Lcom/android/server/hdmi/HdmiControlService$HdmiControlBroadcastReceiver;-><init>(Lcom/android/server/hdmi/HdmiControlService;Lcom/android/server/hdmi/HdmiControlService$HdmiControlBroadcastReceiver;)V

    #@59
    iput-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiControlBroadcastReceiver:Lcom/android/server/hdmi/HdmiControlService$HdmiControlBroadcastReceiver;

    #@5b
    .line 261
    const/4 v0, 0x1

    #@5c
    iput v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mPowerStatus:I

    #@5e
    .line 264
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    #@61
    move-result-object v0

    #@62
    invoke-virtual {v0}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    #@65
    move-result-object v0

    #@66
    iput-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mLanguage:Ljava/lang/String;

    #@68
    .line 267
    iput-boolean v3, p0, Lcom/android/server/hdmi/HdmiControlService;->mStandbyMessageReceived:Z

    #@6a
    .line 270
    iput-boolean v3, p0, Lcom/android/server/hdmi/HdmiControlService;->mWakeUpMessageReceived:Z

    #@6c
    .line 273
    iput v4, p0, Lcom/android/server/hdmi/HdmiControlService;->mActivePortId:I

    #@6e
    .line 282
    new-instance v0, Ljava/util/ArrayList;

    #@70
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@73
    iput-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mMhlVendorCommandListenerRecords:Ljava/util/ArrayList;

    #@75
    .line 300
    iput v4, p0, Lcom/android/server/hdmi/HdmiControlService;->mLastInputMhl:I

    #@77
    .line 303
    iput-boolean v3, p0, Lcom/android/server/hdmi/HdmiControlService;->mAddressAllocated:Z

    #@79
    .line 363
    new-instance v0, Lcom/android/server/hdmi/HdmiControlService$CecMessageBuffer;

    #@7b
    invoke-direct {v0, p0, v5}, Lcom/android/server/hdmi/HdmiControlService$CecMessageBuffer;-><init>(Lcom/android/server/hdmi/HdmiControlService;Lcom/android/server/hdmi/HdmiControlService$CecMessageBuffer;)V

    #@7e
    iput-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecMessageBuffer:Lcom/android/server/hdmi/HdmiControlService$CecMessageBuffer;

    #@80
    .line 367
    const-string/jumbo v0, "ro.hdmi.device_type"

    #@83
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    #@86
    move-result-object v0

    #@87
    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->getIntList(Ljava/lang/String;)Ljava/util/List;

    #@8a
    move-result-object v0

    #@8b
    iput-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mLocalDevices:Ljava/util/List;

    #@8d
    .line 368
    new-instance v0, Lcom/android/server/hdmi/HdmiControlService$SettingsObserver;

    #@8f
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mHandler:Landroid/os/Handler;

    #@91
    invoke-direct {v0, p0, v1}, Lcom/android/server/hdmi/HdmiControlService$SettingsObserver;-><init>(Lcom/android/server/hdmi/HdmiControlService;Landroid/os/Handler;)V

    #@94
    iput-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mSettingsObserver:Lcom/android/server/hdmi/HdmiControlService$SettingsObserver;

    #@96
    .line 365
    return-void
.end method

.method private addDeviceEventListener(Landroid/hardware/hdmi/IHdmiDeviceEventListener;)V
    .locals 4
    .param p1, "listener"    # Landroid/hardware/hdmi/IHdmiDeviceEventListener;

    #@0
    .prologue
    .line 1729
    new-instance v1, Lcom/android/server/hdmi/HdmiControlService$DeviceEventListenerRecord;

    #@2
    invoke-direct {v1, p0, p1}, Lcom/android/server/hdmi/HdmiControlService$DeviceEventListenerRecord;-><init>(Lcom/android/server/hdmi/HdmiControlService;Landroid/hardware/hdmi/IHdmiDeviceEventListener;)V

    #@5
    .line 1731
    .local v1, "record":Lcom/android/server/hdmi/HdmiControlService$DeviceEventListenerRecord;
    :try_start_0
    invoke-interface {p1}, Landroid/hardware/hdmi/IHdmiDeviceEventListener;->asBinder()Landroid/os/IBinder;

    #@8
    move-result-object v2

    #@9
    const/4 v3, 0x0

    #@a
    invoke-interface {v2, v1, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@d
    .line 1736
    iget-object v3, p0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    #@f
    monitor-enter v3

    #@10
    .line 1737
    :try_start_1
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiControlService;->mDeviceEventListenerRecords:Ljava/util/ArrayList;

    #@12
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@15
    monitor-exit v3

    #@16
    .line 1728
    return-void

    #@17
    .line 1732
    :catch_0
    move-exception v0

    #@18
    .line 1733
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "HdmiControlService"

    #@1b
    const-string/jumbo v3, "Listener already died"

    #@1e
    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@21
    .line 1734
    return-void

    #@22
    .line 1736
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    #@23
    monitor-exit v3

    #@24
    throw v2
.end method

.method private addHdmiMhlVendorCommandListener(Landroid/hardware/hdmi/IHdmiMhlVendorCommandListener;)V
    .locals 4
    .param p1, "listener"    # Landroid/hardware/hdmi/IHdmiMhlVendorCommandListener;

    #@0
    .prologue
    .line 2141
    new-instance v1, Lcom/android/server/hdmi/HdmiControlService$HdmiMhlVendorCommandListenerRecord;

    #@2
    invoke-direct {v1, p0, p1}, Lcom/android/server/hdmi/HdmiControlService$HdmiMhlVendorCommandListenerRecord;-><init>(Lcom/android/server/hdmi/HdmiControlService;Landroid/hardware/hdmi/IHdmiMhlVendorCommandListener;)V

    #@5
    .line 2143
    .local v1, "record":Lcom/android/server/hdmi/HdmiControlService$HdmiMhlVendorCommandListenerRecord;
    :try_start_0
    invoke-interface {p1}, Landroid/hardware/hdmi/IHdmiMhlVendorCommandListener;->asBinder()Landroid/os/IBinder;

    #@8
    move-result-object v2

    #@9
    const/4 v3, 0x0

    #@a
    invoke-interface {v2, v1, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@d
    .line 2149
    iget-object v3, p0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    #@f
    monitor-enter v3

    #@10
    .line 2150
    :try_start_1
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiControlService;->mMhlVendorCommandListenerRecords:Ljava/util/ArrayList;

    #@12
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@15
    monitor-exit v3

    #@16
    .line 2139
    return-void

    #@17
    .line 2144
    :catch_0
    move-exception v0

    #@18
    .line 2145
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "HdmiControlService"

    #@1b
    const-string/jumbo v3, "Listener already died."

    #@1e
    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@21
    .line 2146
    return-void

    #@22
    .line 2149
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    #@23
    monitor-exit v3

    #@24
    throw v2
.end method

.method private addHotplugEventListener(Landroid/hardware/hdmi/IHdmiHotplugEventListener;)V
    .locals 4
    .param p1, "listener"    # Landroid/hardware/hdmi/IHdmiHotplugEventListener;

    #@0
    .prologue
    .line 1686
    new-instance v1, Lcom/android/server/hdmi/HdmiControlService$HotplugEventListenerRecord;

    #@2
    invoke-direct {v1, p0, p1}, Lcom/android/server/hdmi/HdmiControlService$HotplugEventListenerRecord;-><init>(Lcom/android/server/hdmi/HdmiControlService;Landroid/hardware/hdmi/IHdmiHotplugEventListener;)V

    #@5
    .line 1688
    .local v1, "record":Lcom/android/server/hdmi/HdmiControlService$HotplugEventListenerRecord;
    :try_start_0
    invoke-interface {p1}, Landroid/hardware/hdmi/IHdmiHotplugEventListener;->asBinder()Landroid/os/IBinder;

    #@8
    move-result-object v2

    #@9
    const/4 v3, 0x0

    #@a
    invoke-interface {v2, v1, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@d
    .line 1693
    iget-object v3, p0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    #@f
    monitor-enter v3

    #@10
    .line 1694
    :try_start_1
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiControlService;->mHotplugEventListenerRecords:Ljava/util/ArrayList;

    #@12
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@15
    monitor-exit v3

    #@16
    .line 1699
    new-instance v2, Lcom/android/server/hdmi/HdmiControlService$2;

    #@18
    invoke-direct {v2, p0, v1, p1}, Lcom/android/server/hdmi/HdmiControlService$2;-><init>(Lcom/android/server/hdmi/HdmiControlService;Lcom/android/server/hdmi/HdmiControlService$HotplugEventListenerRecord;Landroid/hardware/hdmi/IHdmiHotplugEventListener;)V

    #@1b
    invoke-virtual {p0, v2}, Lcom/android/server/hdmi/HdmiControlService;->runOnServiceThread(Ljava/lang/Runnable;)V

    #@1e
    .line 1685
    return-void

    #@1f
    .line 1689
    :catch_0
    move-exception v0

    #@20
    .line 1690
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "HdmiControlService"

    #@23
    const-string/jumbo v3, "Listener already died"

    #@26
    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@29
    .line 1691
    return-void

    #@2a
    .line 1693
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    #@2b
    monitor-exit v3

    #@2c
    throw v2
.end method

.method private addSystemAudioModeChangeListner(Landroid/hardware/hdmi/IHdmiSystemAudioModeChangeListener;)V
    .locals 4
    .param p1, "listener"    # Landroid/hardware/hdmi/IHdmiSystemAudioModeChangeListener;

    #@0
    .prologue
    .line 1754
    new-instance v1, Lcom/android/server/hdmi/HdmiControlService$SystemAudioModeChangeListenerRecord;

    #@2
    invoke-direct {v1, p0, p1}, Lcom/android/server/hdmi/HdmiControlService$SystemAudioModeChangeListenerRecord;-><init>(Lcom/android/server/hdmi/HdmiControlService;Landroid/hardware/hdmi/IHdmiSystemAudioModeChangeListener;)V

    #@5
    .line 1757
    .local v1, "record":Lcom/android/server/hdmi/HdmiControlService$SystemAudioModeChangeListenerRecord;
    :try_start_0
    invoke-interface {p1}, Landroid/hardware/hdmi/IHdmiSystemAudioModeChangeListener;->asBinder()Landroid/os/IBinder;

    #@8
    move-result-object v2

    #@9
    const/4 v3, 0x0

    #@a
    invoke-interface {v2, v1, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@d
    .line 1762
    iget-object v3, p0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    #@f
    monitor-enter v3

    #@10
    .line 1763
    :try_start_1
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiControlService;->mSystemAudioModeChangeListenerRecords:Ljava/util/ArrayList;

    #@12
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@15
    monitor-exit v3

    #@16
    .line 1753
    return-void

    #@17
    .line 1758
    :catch_0
    move-exception v0

    #@18
    .line 1759
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "HdmiControlService"

    #@1b
    const-string/jumbo v3, "Listener already died"

    #@1e
    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@21
    .line 1760
    return-void

    #@22
    .line 1762
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    #@23
    monitor-exit v3

    #@24
    throw v2
.end method

.method private addVendorCommandListener(Landroid/hardware/hdmi/IHdmiVendorCommandListener;I)V
    .locals 4
    .param p1, "listener"    # Landroid/hardware/hdmi/IHdmiVendorCommandListener;
    .param p2, "deviceType"    # I

    #@0
    .prologue
    .line 2091
    new-instance v1, Lcom/android/server/hdmi/HdmiControlService$VendorCommandListenerRecord;

    #@2
    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/hdmi/HdmiControlService$VendorCommandListenerRecord;-><init>(Lcom/android/server/hdmi/HdmiControlService;Landroid/hardware/hdmi/IHdmiVendorCommandListener;I)V

    #@5
    .line 2093
    .local v1, "record":Lcom/android/server/hdmi/HdmiControlService$VendorCommandListenerRecord;
    :try_start_0
    invoke-interface {p1}, Landroid/hardware/hdmi/IHdmiVendorCommandListener;->asBinder()Landroid/os/IBinder;

    #@8
    move-result-object v2

    #@9
    const/4 v3, 0x0

    #@a
    invoke-interface {v2, v1, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@d
    .line 2098
    iget-object v3, p0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    #@f
    monitor-enter v3

    #@10
    .line 2099
    :try_start_1
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiControlService;->mVendorCommandListenerRecords:Ljava/util/ArrayList;

    #@12
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@15
    monitor-exit v3

    #@16
    .line 2090
    return-void

    #@17
    .line 2094
    :catch_0
    move-exception v0

    #@18
    .line 2095
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "HdmiControlService"

    #@1b
    const-string/jumbo v3, "Listener already died"

    #@1e
    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@21
    .line 2096
    return-void

    #@22
    .line 2098
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    #@23
    monitor-exit v3

    #@24
    throw v2
.end method

.method private allocateLogicalAddress(Ljava/util/ArrayList;I)V
    .locals 11
    .param p2, "initiatedBy"    # I
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/hdmi/HdmiCecLocalDevice;",
            ">;I)V"
        }
    .end annotation

    #@0
    .prologue
    .line 579
    .local p1, "allocatingDevices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/hdmi/HdmiCecLocalDevice;>;"
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    #@3
    .line 580
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;

    #@5
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecController;->clearLogicalAddress()V

    #@8
    .line 581
    new-instance v3, Ljava/util/ArrayList;

    #@a
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    #@d
    .line 582
    .local v3, "allocatedDevices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/hdmi/HdmiCecLocalDevice;>;"
    const/4 v0, 0x1

    #@e
    new-array v5, v0, [I

    #@10
    .line 583
    .local v5, "finished":[I
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    #@13
    move-result v0

    #@14
    iput-boolean v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mAddressAllocated:Z

    #@16
    .line 585
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@19
    move-result-object v7

    #@1a
    .local v7, "localDevice$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    #@1d
    move-result v0

    #@1e
    if-eqz v0, :cond_0

    #@20
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@23
    move-result-object v2

    #@24
    check-cast v2, Lcom/android/server/hdmi/HdmiCecLocalDevice;

    #@26
    .line 586
    .local v2, "localDevice":Lcom/android/server/hdmi/HdmiCecLocalDevice;
    iget-object v8, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;

    #@28
    invoke-virtual {v2}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getType()I

    #@2b
    move-result v9

    #@2c
    .line 587
    invoke-virtual {v2}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getPreferredAddress()I

    #@2f
    move-result v10

    #@30
    new-instance v0, Lcom/android/server/hdmi/HdmiControlService$1;

    #@32
    move-object v1, p0

    #@33
    move-object v4, p1

    #@34
    move v6, p2

    #@35
    invoke-direct/range {v0 .. v6}, Lcom/android/server/hdmi/HdmiControlService$1;-><init>(Lcom/android/server/hdmi/HdmiControlService;Lcom/android/server/hdmi/HdmiCecLocalDevice;Ljava/util/ArrayList;Ljava/util/ArrayList;[II)V

    #@38
    .line 586
    invoke-virtual {v8, v9, v10, v0}, Lcom/android/server/hdmi/HdmiCecController;->allocateLogicalAddress(IILcom/android/server/hdmi/HdmiCecController$AllocateAddressCallback;)V

    #@3b
    goto :goto_0

    #@3c
    .line 578
    .end local v2    # "localDevice":Lcom/android/server/hdmi/HdmiCecLocalDevice;
    :cond_0
    return-void
.end method

.method private announceHotplugEvent(IZ)V
    .locals 5
    .param p1, "portId"    # I
    .param p2, "connected"    # Z

    #@0
    .prologue
    .line 1898
    new-instance v0, Landroid/hardware/hdmi/HdmiHotplugEvent;

    #@2
    invoke-direct {v0, p1, p2}, Landroid/hardware/hdmi/HdmiHotplugEvent;-><init>(IZ)V

    #@5
    .line 1899
    .local v0, "event":Landroid/hardware/hdmi/HdmiHotplugEvent;
    iget-object v4, p0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    #@7
    monitor-enter v4

    #@8
    .line 1900
    :try_start_0
    iget-object v3, p0, Lcom/android/server/hdmi/HdmiControlService;->mHotplugEventListenerRecords:Ljava/util/ArrayList;

    #@a
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@d
    move-result-object v2

    #@e
    .local v2, "record$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@11
    move-result v3

    #@12
    if-eqz v3, :cond_0

    #@14
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@17
    move-result-object v1

    #@18
    check-cast v1, Lcom/android/server/hdmi/HdmiControlService$HotplugEventListenerRecord;

    #@1a
    .line 1901
    .local v1, "record":Lcom/android/server/hdmi/HdmiControlService$HotplugEventListenerRecord;
    invoke-static {v1}, Lcom/android/server/hdmi/HdmiControlService$HotplugEventListenerRecord;->-get0(Lcom/android/server/hdmi/HdmiControlService$HotplugEventListenerRecord;)Landroid/hardware/hdmi/IHdmiHotplugEventListener;

    #@1d
    move-result-object v3

    #@1e
    invoke-direct {p0, v3, v0}, Lcom/android/server/hdmi/HdmiControlService;->invokeHotplugEventListenerLocked(Landroid/hardware/hdmi/IHdmiHotplugEventListener;Landroid/hardware/hdmi/HdmiHotplugEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@21
    goto :goto_0

    #@22
    .line 1899
    .end local v1    # "record":Lcom/android/server/hdmi/HdmiControlService$HotplugEventListenerRecord;
    .end local v2    # "record$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    #@23
    monitor-exit v4

    #@24
    throw v3

    #@25
    .restart local v2    # "record$iterator":Ljava/util/Iterator;
    :cond_0
    monitor-exit v4

    #@26
    .line 1897
    return-void
.end method

.method private assertRunOnServiceThread()V
    .locals 2

    #@0
    .prologue
    .line 806
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    #@3
    move-result-object v0

    #@4
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mHandler:Landroid/os/Handler;

    #@6
    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    #@9
    move-result-object v1

    #@a
    if-eq v0, v1, :cond_0

    #@c
    .line 807
    new-instance v0, Ljava/lang/IllegalStateException;

    #@e
    const-string/jumbo v1, "Should run on service thread."

    #@11
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@14
    throw v0

    #@15
    .line 805
    :cond_0
    return-void
.end method

.method private canGoToStandby()Z
    .locals 3

    #@0
    .prologue
    .line 2029
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;

    #@2
    invoke-virtual {v2}, Lcom/android/server/hdmi/HdmiCecController;->getLocalDeviceList()Ljava/util/List;

    #@5
    move-result-object v2

    #@6
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@9
    move-result-object v1

    #@a
    .local v1, "device$iterator":Ljava/util/Iterator;
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
    check-cast v0, Lcom/android/server/hdmi/HdmiCecLocalDevice;

    #@16
    .line 2030
    .local v0, "device":Lcom/android/server/hdmi/HdmiCecLocalDevice;
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->canGoToStandby()Z

    #@19
    move-result v2

    #@1a
    if-nez v2, :cond_0

    #@1c
    const/4 v2, 0x0

    #@1d
    return v2

    #@1e
    .line 2032
    .end local v0    # "device":Lcom/android/server/hdmi/HdmiCecLocalDevice;
    :cond_1
    const/4 v2, 0x1

    #@1f
    return v2
.end method

.method private checkPollStrategy(I)I
    .locals 5
    .param p1, "pickStrategy"    # I

    #@0
    .prologue
    .line 935
    and-int/lit8 v1, p1, 0x3

    #@2
    .line 936
    .local v1, "strategy":I
    if-nez v1, :cond_0

    #@4
    .line 937
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@6
    new-instance v3, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    const-string/jumbo v4, "Invalid poll strategy:"

    #@e
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v3

    #@12
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@15
    move-result-object v3

    #@16
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@19
    move-result-object v3

    #@1a
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1d
    throw v2

    #@1e
    .line 939
    :cond_0
    const/high16 v2, 0x30000

    #@20
    and-int v0, p1, v2

    #@22
    .line 940
    .local v0, "iterationStrategy":I
    if-nez v0, :cond_1

    #@24
    .line 941
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@26
    new-instance v3, Ljava/lang/StringBuilder;

    #@28
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@2b
    const-string/jumbo v4, "Invalid iteration strategy:"

    #@2e
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v3

    #@32
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@35
    move-result-object v3

    #@36
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@39
    move-result-object v3

    #@3a
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@3d
    throw v2

    #@3e
    .line 943
    :cond_1
    or-int v2, v1, v0

    #@40
    return v2
.end method

.method private clearLocalDevices()V
    .locals 1
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    #@0
    .prologue
    .line 2064
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    #@3
    .line 2065
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;

    #@5
    if-nez v0, :cond_0

    #@7
    .line 2066
    return-void

    #@8
    .line 2068
    :cond_0
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;

    #@a
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecController;->clearLogicalAddress()V

    #@d
    .line 2069
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;

    #@f
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecController;->clearLocalDevices()V

    #@12
    .line 2063
    return-void
.end method

.method private createDeviceInfo(III)Landroid/hardware/hdmi/HdmiDeviceInfo;
    .locals 7
    .param p1, "logicalAddress"    # I
    .param p2, "deviceType"    # I
    .param p3, "powerStatus"    # I

    #@0
    .prologue
    .line 984
    sget-object v6, Landroid/os/Build;->MODEL:Ljava/lang/String;

    #@2
    .line 985
    .local v6, "displayName":Ljava/lang/String;
    new-instance v0, Landroid/hardware/hdmi/HdmiDeviceInfo;

    #@4
    .line 986
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->getPhysicalAddress()I

    #@7
    move-result v2

    #@8
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->getPhysicalAddress()I

    #@b
    move-result v1

    #@c
    invoke-virtual {p0, v1}, Lcom/android/server/hdmi/HdmiControlService;->pathToPortId(I)I

    #@f
    move-result v3

    #@10
    .line 987
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->getVendorId()I

    #@13
    move-result v5

    #@14
    move v1, p1

    #@15
    move v4, p2

    #@16
    .line 985
    invoke-direct/range {v0 .. v6}, Landroid/hardware/hdmi/HdmiDeviceInfo;-><init>(IIIIILjava/lang/String;)V

    #@19
    return-object v0
.end method

.method private disableDevices(Lcom/android/server/hdmi/HdmiCecLocalDevice$PendingActionClearedCallback;)V
    .locals 3
    .param p1, "callback"    # Lcom/android/server/hdmi/HdmiCecLocalDevice$PendingActionClearedCallback;

    #@0
    .prologue
    .line 2053
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;

    #@2
    if-eqz v2, :cond_0

    #@4
    .line 2054
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;

    #@6
    invoke-virtual {v2}, Lcom/android/server/hdmi/HdmiCecController;->getLocalDeviceList()Ljava/util/List;

    #@9
    move-result-object v2

    #@a
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@d
    move-result-object v1

    #@e
    .local v1, "device$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@11
    move-result v2

    #@12
    if-eqz v2, :cond_0

    #@14
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@17
    move-result-object v0

    #@18
    check-cast v0, Lcom/android/server/hdmi/HdmiCecLocalDevice;

    #@1a
    .line 2055
    .local v0, "device":Lcom/android/server/hdmi/HdmiCecLocalDevice;
    iget-boolean v2, p0, Lcom/android/server/hdmi/HdmiControlService;->mStandbyMessageReceived:Z

    #@1c
    invoke-virtual {v0, v2, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->disableDevice(ZLcom/android/server/hdmi/HdmiCecLocalDevice$PendingActionClearedCallback;)V

    #@1f
    goto :goto_0

    #@20
    .line 2059
    .end local v0    # "device":Lcom/android/server/hdmi/HdmiCecLocalDevice;
    .end local v1    # "device$iterator":Ljava/util/Iterator;
    :cond_0
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiControlService;->mMhlController:Lcom/android/server/hdmi/HdmiMhlControllerStub;

    #@22
    invoke-virtual {v2}, Lcom/android/server/hdmi/HdmiMhlControllerStub;->clearAllLocalDevices()V

    #@25
    .line 2052
    return-void
.end method

.method private disableHdmiControlService()V
    .locals 1
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    #@0
    .prologue
    .line 2220
    new-instance v0, Lcom/android/server/hdmi/HdmiControlService$5;

    #@2
    invoke-direct {v0, p0}, Lcom/android/server/hdmi/HdmiControlService$5;-><init>(Lcom/android/server/hdmi/HdmiControlService;)V

    #@5
    invoke-direct {p0, v0}, Lcom/android/server/hdmi/HdmiControlService;->disableDevices(Lcom/android/server/hdmi/HdmiCecLocalDevice$PendingActionClearedCallback;)V

    #@8
    .line 2219
    return-void
.end method

.method private dispatchMessageToLocalDevice(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .locals 5
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    #@0
    .prologue
    const/16 v3, 0xf

    #@2
    const/4 v4, 0x0

    #@3
    .line 873
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    #@6
    .line 874
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;

    #@8
    invoke-virtual {v2}, Lcom/android/server/hdmi/HdmiCecController;->getLocalDeviceList()Ljava/util/List;

    #@b
    move-result-object v2

    #@c
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@f
    move-result-object v1

    #@10
    .local v1, "device$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@13
    move-result v2

    #@14
    if-eqz v2, :cond_1

    #@16
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@19
    move-result-object v0

    #@1a
    check-cast v0, Lcom/android/server/hdmi/HdmiCecLocalDevice;

    #@1c
    .line 875
    .local v0, "device":Lcom/android/server/hdmi/HdmiCecLocalDevice;
    invoke-virtual {v0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->dispatchMessage(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    #@1f
    move-result v2

    #@20
    if-eqz v2, :cond_0

    #@22
    .line 876
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getDestination()I

    #@25
    move-result v2

    #@26
    if-eq v2, v3, :cond_0

    #@28
    .line 877
    const/4 v2, 0x1

    #@29
    return v2

    #@2a
    .line 881
    .end local v0    # "device":Lcom/android/server/hdmi/HdmiCecLocalDevice;
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getDestination()I

    #@2d
    move-result v2

    #@2e
    if-eq v2, v3, :cond_2

    #@30
    .line 882
    new-instance v2, Ljava/lang/StringBuilder;

    #@32
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@35
    const-string/jumbo v3, "Unhandled cec command:"

    #@38
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v2

    #@3c
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v2

    #@40
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@43
    move-result-object v2

    #@44
    new-array v3, v4, [Ljava/lang/Object;

    #@46
    invoke-static {v2, v3}, Lcom/android/server/hdmi/HdmiLogger;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    #@49
    .line 884
    :cond_2
    return v4
.end method

.method private enableHdmiControlService()V
    .locals 3
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 2212
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;

    #@3
    const/4 v1, 0x2

    #@4
    invoke-virtual {v0, v1, v2}, Lcom/android/server/hdmi/HdmiCecController;->setOption(II)V

    #@7
    .line 2213
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mMhlController:Lcom/android/server/hdmi/HdmiMhlControllerStub;

    #@9
    const/16 v1, 0x67

    #@b
    invoke-virtual {v0, v1, v2}, Lcom/android/server/hdmi/HdmiMhlControllerStub;->setOption(II)V

    #@e
    .line 2215
    const/4 v0, 0x0

    #@f
    invoke-direct {p0, v0}, Lcom/android/server/hdmi/HdmiControlService;->initializeCec(I)V

    #@12
    .line 2211
    return-void
.end method

.method private enforceAccessPermission()V
    .locals 3

    #@0
    .prologue
    .line 1182
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->getContext()Landroid/content/Context;

    #@3
    move-result-object v0

    #@4
    const-string/jumbo v1, "android.permission.HDMI_CEC"

    #@7
    const-string/jumbo v2, "HdmiControlService"

    #@a
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@d
    .line 1181
    return-void
.end method

.method private static getIntList(Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .param p0, "string"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 372
    new-instance v3, Ljava/util/ArrayList;

    #@2
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 373
    .local v3, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v4, Landroid/text/TextUtils$SimpleStringSplitter;

    #@7
    const/16 v5, 0x2c

    #@9
    invoke-direct {v4, v5}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    #@c
    .line 374
    .local v4, "splitter":Landroid/text/TextUtils$SimpleStringSplitter;
    invoke-virtual {v4, p0}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    #@f
    .line 375
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@12
    move-result-object v2

    #@13
    .local v2, "item$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@16
    move-result v5

    #@17
    if-eqz v5, :cond_0

    #@19
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1c
    move-result-object v1

    #@1d
    check-cast v1, Ljava/lang/String;

    #@1f
    .line 377
    .local v1, "item":Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@22
    move-result v5

    #@23
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@26
    move-result-object v5

    #@27
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@2a
    goto :goto_0

    #@2b
    .line 378
    :catch_0
    move-exception v0

    #@2c
    .line 379
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v5, "HdmiControlService"

    #@2f
    new-instance v6, Ljava/lang/StringBuilder;

    #@31
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@34
    const-string/jumbo v7, "Can\'t parseInt: "

    #@37
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v6

    #@3b
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v6

    #@3f
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@42
    move-result-object v6

    #@43
    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@46
    goto :goto_0

    #@47
    .line 382
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .end local v1    # "item":Ljava/lang/String;
    :cond_0
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    #@4a
    move-result-object v5

    #@4b
    return-object v5
.end method

.method private getMhlDevicesLocked()Ljava/util/List;
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
    .line 1073
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mMhlDevices:Ljava/util/List;

    #@2
    return-object v0
.end method

.method private initPortInfo()V
    .locals 19
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    #@0
    .prologue
    .line 632
    invoke-direct/range {p0 .. p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    #@3
    .line 633
    const/4 v9, 0x0

    #@4
    .line 637
    .local v9, "cecPortInfo":[Landroid/hardware/hdmi/HdmiPortInfo;
    move-object/from16 v0, p0

    #@6
    iget-object v2, v0, Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;

    #@8
    if-eqz v2, :cond_0

    #@a
    .line 638
    move-object/from16 v0, p0

    #@c
    iget-object v2, v0, Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;

    #@e
    invoke-virtual {v2}, Lcom/android/server/hdmi/HdmiCecController;->getPortInfos()[Landroid/hardware/hdmi/HdmiPortInfo;

    #@11
    move-result-object v9

    #@12
    .line 640
    .end local v9    # "cecPortInfo":[Landroid/hardware/hdmi/HdmiPortInfo;
    :cond_0
    if-nez v9, :cond_1

    #@14
    .line 641
    return-void

    #@15
    .line 644
    :cond_1
    new-instance v15, Landroid/util/SparseArray;

    #@17
    invoke-direct {v15}, Landroid/util/SparseArray;-><init>()V

    #@1a
    .line 645
    .local v15, "portInfoMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/hardware/hdmi/HdmiPortInfo;>;"
    new-instance v14, Landroid/util/SparseIntArray;

    #@1c
    invoke-direct {v14}, Landroid/util/SparseIntArray;-><init>()V

    #@1f
    .line 646
    .local v14, "portIdMap":Landroid/util/SparseIntArray;
    new-instance v13, Landroid/util/SparseArray;

    #@21
    invoke-direct {v13}, Landroid/util/SparseArray;-><init>()V

    #@24
    .line 647
    .local v13, "portDeviceMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/hardware/hdmi/HdmiDeviceInfo;>;"
    const/4 v2, 0x0

    #@25
    array-length v3, v9

    #@26
    :goto_0
    if-ge v2, v3, :cond_2

    #@28
    aget-object v10, v9, v2

    #@2a
    .line 648
    .local v10, "info":Landroid/hardware/hdmi/HdmiPortInfo;
    invoke-virtual {v10}, Landroid/hardware/hdmi/HdmiPortInfo;->getAddress()I

    #@2d
    move-result v4

    #@2e
    invoke-virtual {v10}, Landroid/hardware/hdmi/HdmiPortInfo;->getId()I

    #@31
    move-result v5

    #@32
    invoke-virtual {v14, v4, v5}, Landroid/util/SparseIntArray;->put(II)V

    #@35
    .line 649
    invoke-virtual {v10}, Landroid/hardware/hdmi/HdmiPortInfo;->getId()I

    #@38
    move-result v4

    #@39
    invoke-virtual {v15, v4, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@3c
    .line 650
    invoke-virtual {v10}, Landroid/hardware/hdmi/HdmiPortInfo;->getId()I

    #@3f
    move-result v4

    #@40
    new-instance v5, Landroid/hardware/hdmi/HdmiDeviceInfo;

    #@42
    invoke-virtual {v10}, Landroid/hardware/hdmi/HdmiPortInfo;->getAddress()I

    #@45
    move-result v6

    #@46
    invoke-virtual {v10}, Landroid/hardware/hdmi/HdmiPortInfo;->getId()I

    #@49
    move-result v7

    #@4a
    invoke-direct {v5, v6, v7}, Landroid/hardware/hdmi/HdmiDeviceInfo;-><init>(II)V

    #@4d
    invoke-virtual {v13, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@50
    .line 647
    add-int/lit8 v2, v2, 0x1

    #@52
    goto :goto_0

    #@53
    .line 652
    .end local v10    # "info":Landroid/hardware/hdmi/HdmiPortInfo;
    :cond_2
    new-instance v2, Lcom/android/server/hdmi/UnmodifiableSparseIntArray;

    #@55
    invoke-direct {v2, v14}, Lcom/android/server/hdmi/UnmodifiableSparseIntArray;-><init>(Landroid/util/SparseIntArray;)V

    #@58
    move-object/from16 v0, p0

    #@5a
    iput-object v2, v0, Lcom/android/server/hdmi/HdmiControlService;->mPortIdMap:Lcom/android/server/hdmi/UnmodifiableSparseIntArray;

    #@5c
    .line 653
    new-instance v2, Lcom/android/server/hdmi/UnmodifiableSparseArray;

    #@5e
    invoke-direct {v2, v15}, Lcom/android/server/hdmi/UnmodifiableSparseArray;-><init>(Landroid/util/SparseArray;)V

    #@61
    move-object/from16 v0, p0

    #@63
    iput-object v2, v0, Lcom/android/server/hdmi/HdmiControlService;->mPortInfoMap:Lcom/android/server/hdmi/UnmodifiableSparseArray;

    #@65
    .line 654
    new-instance v2, Lcom/android/server/hdmi/UnmodifiableSparseArray;

    #@67
    invoke-direct {v2, v13}, Lcom/android/server/hdmi/UnmodifiableSparseArray;-><init>(Landroid/util/SparseArray;)V

    #@6a
    move-object/from16 v0, p0

    #@6c
    iput-object v2, v0, Lcom/android/server/hdmi/HdmiControlService;->mPortDeviceMap:Lcom/android/server/hdmi/UnmodifiableSparseArray;

    #@6e
    .line 656
    move-object/from16 v0, p0

    #@70
    iget-object v2, v0, Lcom/android/server/hdmi/HdmiControlService;->mMhlController:Lcom/android/server/hdmi/HdmiMhlControllerStub;

    #@72
    invoke-virtual {v2}, Lcom/android/server/hdmi/HdmiMhlControllerStub;->getPortInfos()[Landroid/hardware/hdmi/HdmiPortInfo;

    #@75
    move-result-object v11

    #@76
    .line 657
    .local v11, "mhlPortInfo":[Landroid/hardware/hdmi/HdmiPortInfo;
    new-instance v12, Landroid/util/ArraySet;

    #@78
    array-length v2, v11

    #@79
    invoke-direct {v12, v2}, Landroid/util/ArraySet;-><init>(I)V

    #@7c
    .line 658
    .local v12, "mhlSupportedPorts":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    const/4 v2, 0x0

    #@7d
    array-length v3, v11

    #@7e
    :goto_1
    if-ge v2, v3, :cond_4

    #@80
    aget-object v10, v11, v2

    #@82
    .line 659
    .restart local v10    # "info":Landroid/hardware/hdmi/HdmiPortInfo;
    invoke-virtual {v10}, Landroid/hardware/hdmi/HdmiPortInfo;->isMhlSupported()Z

    #@85
    move-result v4

    #@86
    if-eqz v4, :cond_3

    #@88
    .line 660
    invoke-virtual {v10}, Landroid/hardware/hdmi/HdmiPortInfo;->getId()I

    #@8b
    move-result v4

    #@8c
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@8f
    move-result-object v4

    #@90
    invoke-virtual {v12, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    #@93
    .line 658
    :cond_3
    add-int/lit8 v2, v2, 0x1

    #@95
    goto :goto_1

    #@96
    .line 666
    .end local v10    # "info":Landroid/hardware/hdmi/HdmiPortInfo;
    :cond_4
    invoke-virtual {v12}, Landroid/util/ArraySet;->isEmpty()Z

    #@99
    move-result v2

    #@9a
    if-eqz v2, :cond_5

    #@9c
    .line 667
    invoke-static {v9}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    #@9f
    move-result-object v2

    #@a0
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    #@a3
    move-result-object v2

    #@a4
    move-object/from16 v0, p0

    #@a6
    iput-object v2, v0, Lcom/android/server/hdmi/HdmiControlService;->mPortInfo:Ljava/util/List;

    #@a8
    .line 668
    return-void

    #@a9
    .line 670
    :cond_5
    new-instance v16, Ljava/util/ArrayList;

    #@ab
    array-length v2, v9

    #@ac
    move-object/from16 v0, v16

    #@ae
    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    #@b1
    .line 671
    .local v16, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/hdmi/HdmiPortInfo;>;"
    const/4 v2, 0x0

    #@b2
    array-length v0, v9

    #@b3
    move/from16 v18, v0

    #@b5
    move/from16 v17, v2

    #@b7
    :goto_2
    move/from16 v0, v17

    #@b9
    move/from16 v1, v18

    #@bb
    if-ge v0, v1, :cond_7

    #@bd
    aget-object v10, v9, v17

    #@bf
    .line 672
    .restart local v10    # "info":Landroid/hardware/hdmi/HdmiPortInfo;
    invoke-virtual {v10}, Landroid/hardware/hdmi/HdmiPortInfo;->getId()I

    #@c2
    move-result v2

    #@c3
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@c6
    move-result-object v2

    #@c7
    invoke-virtual {v12, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    #@ca
    move-result v2

    #@cb
    if-eqz v2, :cond_6

    #@cd
    .line 673
    new-instance v2, Landroid/hardware/hdmi/HdmiPortInfo;

    #@cf
    invoke-virtual {v10}, Landroid/hardware/hdmi/HdmiPortInfo;->getId()I

    #@d2
    move-result v3

    #@d3
    invoke-virtual {v10}, Landroid/hardware/hdmi/HdmiPortInfo;->getType()I

    #@d6
    move-result v4

    #@d7
    invoke-virtual {v10}, Landroid/hardware/hdmi/HdmiPortInfo;->getAddress()I

    #@da
    move-result v5

    #@db
    .line 674
    invoke-virtual {v10}, Landroid/hardware/hdmi/HdmiPortInfo;->isCecSupported()Z

    #@de
    move-result v6

    #@df
    invoke-virtual {v10}, Landroid/hardware/hdmi/HdmiPortInfo;->isArcSupported()Z

    #@e2
    move-result v8

    #@e3
    const/4 v7, 0x1

    #@e4
    .line 673
    invoke-direct/range {v2 .. v8}, Landroid/hardware/hdmi/HdmiPortInfo;-><init>(IIIZZZ)V

    #@e7
    move-object/from16 v0, v16

    #@e9
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@ec
    .line 671
    :goto_3
    add-int/lit8 v2, v17, 0x1

    #@ee
    move/from16 v17, v2

    #@f0
    goto :goto_2

    #@f1
    .line 676
    :cond_6
    move-object/from16 v0, v16

    #@f3
    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@f6
    goto :goto_3

    #@f7
    .line 679
    .end local v10    # "info":Landroid/hardware/hdmi/HdmiPortInfo;
    :cond_7
    invoke-static/range {v16 .. v16}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    #@fa
    move-result-object v2

    #@fb
    move-object/from16 v0, p0

    #@fd
    iput-object v2, v0, Lcom/android/server/hdmi/HdmiControlService;->mPortInfo:Ljava/util/List;

    #@ff
    .line 631
    return-void
.end method

.method private initializeCec(I)V
    .locals 3
    .param p1, "initiatedBy"    # I

    #@0
    .prologue
    .line 551
    const/4 v0, 0x0

    #@1
    iput-boolean v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mAddressAllocated:Z

    #@3
    .line 552
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;

    #@5
    const/4 v1, 0x3

    #@6
    const/4 v2, 0x1

    #@7
    invoke-virtual {v0, v1, v2}, Lcom/android/server/hdmi/HdmiCecController;->setOption(II)V

    #@a
    .line 553
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;

    #@c
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mLanguage:Ljava/lang/String;

    #@e
    invoke-static {v1}, Lcom/android/server/hdmi/HdmiUtils;->languageToInt(Ljava/lang/String;)I

    #@11
    move-result v1

    #@12
    const/4 v2, 0x5

    #@13
    invoke-virtual {v0, v2, v1}, Lcom/android/server/hdmi/HdmiCecController;->setOption(II)V

    #@16
    .line 554
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiControlService;->initializeLocalDevices(I)V

    #@19
    .line 550
    return-void
.end method

.method private initializeLocalDevices(I)V
    .locals 5
    .param p1, "initiatedBy"    # I
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    #@0
    .prologue
    .line 559
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    #@3
    .line 561
    new-instance v1, Ljava/util/ArrayList;

    #@5
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@8
    .line 562
    .local v1, "localDevices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/hdmi/HdmiCecLocalDevice;>;"
    iget-object v4, p0, Lcom/android/server/hdmi/HdmiControlService;->mLocalDevices:Ljava/util/List;

    #@a
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@d
    move-result-object v3

    #@e
    .local v3, "type$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@11
    move-result v4

    #@12
    if-eqz v4, :cond_1

    #@14
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@17
    move-result-object v4

    #@18
    check-cast v4, Ljava/lang/Integer;

    #@1a
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    #@1d
    move-result v2

    #@1e
    .line 563
    .local v2, "type":I
    iget-object v4, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;

    #@20
    invoke-virtual {v4, v2}, Lcom/android/server/hdmi/HdmiCecController;->getLocalDevice(I)Lcom/android/server/hdmi/HdmiCecLocalDevice;

    #@23
    move-result-object v0

    #@24
    .line 564
    .local v0, "localDevice":Lcom/android/server/hdmi/HdmiCecLocalDevice;
    if-nez v0, :cond_0

    #@26
    .line 565
    invoke-static {p0, v2}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->create(Lcom/android/server/hdmi/HdmiControlService;I)Lcom/android/server/hdmi/HdmiCecLocalDevice;

    #@29
    move-result-object v0

    #@2a
    .line 567
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->init()V

    #@2d
    .line 568
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@30
    goto :goto_0

    #@31
    .line 572
    .end local v0    # "localDevice":Lcom/android/server/hdmi/HdmiCecLocalDevice;
    .end local v2    # "type":I
    :cond_1
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiControlService;->clearLocalDevices()V

    #@34
    .line 573
    invoke-direct {p0, v1, p1}, Lcom/android/server/hdmi/HdmiControlService;->allocateLogicalAddress(Ljava/util/ArrayList;I)V

    #@37
    .line 558
    return-void
.end method

.method private invokeCallback(Landroid/hardware/hdmi/IHdmiControlCallback;I)V
    .locals 4
    .param p1, "callback"    # Landroid/hardware/hdmi/IHdmiControlCallback;
    .param p2, "result"    # I

    #@0
    .prologue
    .line 1882
    :try_start_0
    invoke-interface {p1, p2}, Landroid/hardware/hdmi/IHdmiControlCallback;->onComplete(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@3
    .line 1880
    :goto_0
    return-void

    #@4
    .line 1883
    :catch_0
    move-exception v0

    #@5
    .line 1884
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "HdmiControlService"

    #@8
    new-instance v2, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v3, "Invoking callback failed:"

    #@10
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v2

    #@14
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v2

    #@18
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object v2

    #@1c
    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@1f
    goto :goto_0
.end method

.method private invokeHotplugEventListenerLocked(Landroid/hardware/hdmi/IHdmiHotplugEventListener;Landroid/hardware/hdmi/HdmiHotplugEvent;)V
    .locals 4
    .param p1, "listener"    # Landroid/hardware/hdmi/IHdmiHotplugEventListener;
    .param p2, "event"    # Landroid/hardware/hdmi/HdmiHotplugEvent;

    #@0
    .prologue
    .line 1909
    :try_start_0
    invoke-interface {p1, p2}, Landroid/hardware/hdmi/IHdmiHotplugEventListener;->onReceived(Landroid/hardware/hdmi/HdmiHotplugEvent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@3
    .line 1907
    :goto_0
    return-void

    #@4
    .line 1910
    :catch_0
    move-exception v0

    #@5
    .line 1911
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "HdmiControlService"

    #@8
    new-instance v2, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v3, "Failed to report hotplug event:"

    #@10
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v2

    #@14
    invoke-virtual {p2}, Landroid/hardware/hdmi/HdmiHotplugEvent;->toString()Ljava/lang/String;

    #@17
    move-result-object v3

    #@18
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v2

    #@1c
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f
    move-result-object v2

    #@20
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@23
    goto :goto_0
.end method

.method private invokeSystemAudioModeChangeLocked(Landroid/hardware/hdmi/IHdmiSystemAudioModeChangeListener;Z)V
    .locals 4
    .param p1, "listener"    # Landroid/hardware/hdmi/IHdmiSystemAudioModeChangeListener;
    .param p2, "enabled"    # Z

    #@0
    .prologue
    .line 1891
    :try_start_0
    invoke-interface {p1, p2}, Landroid/hardware/hdmi/IHdmiSystemAudioModeChangeListener;->onStatusChanged(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@3
    .line 1889
    :goto_0
    return-void

    #@4
    .line 1892
    :catch_0
    move-exception v0

    #@5
    .line 1893
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "HdmiControlService"

    #@8
    new-instance v2, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v3, "Invoking callback failed:"

    #@10
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v2

    #@14
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v2

    #@18
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object v2

    #@1c
    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@1f
    goto :goto_0
.end method

.method private notifyAddressAllocated(Ljava/util/ArrayList;I)V
    .locals 4
    .param p2, "initiatedBy"    # I
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/hdmi/HdmiCecLocalDevice;",
            ">;I)V"
        }
    .end annotation

    #@0
    .prologue
    .line 621
    .local p1, "devices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/hdmi/HdmiCecLocalDevice;>;"
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    #@3
    .line 622
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@6
    move-result-object v2

    #@7
    .local v2, "device$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@a
    move-result v3

    #@b
    if-eqz v3, :cond_0

    #@d
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@10
    move-result-object v1

    #@11
    check-cast v1, Lcom/android/server/hdmi/HdmiCecLocalDevice;

    #@13
    .line 623
    .local v1, "device":Lcom/android/server/hdmi/HdmiCecLocalDevice;
    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    #@16
    move-result-object v3

    #@17
    invoke-virtual {v3}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    #@1a
    move-result v0

    #@1b
    .line 624
    .local v0, "address":I
    invoke-virtual {v1, v0, p2}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->handleAddressAllocated(II)V

    #@1e
    goto :goto_0

    #@1f
    .line 620
    .end local v0    # "address":I
    .end local v1    # "device":Lcom/android/server/hdmi/HdmiCecLocalDevice;
    :cond_0
    return-void
.end method

.method private onInitializeCecComplete(I)V
    .locals 5
    .param p1, "initiatedBy"    # I

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 458
    iget v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mPowerStatus:I

    #@4
    const/4 v2, 0x2

    #@5
    if-ne v1, v2, :cond_0

    #@7
    .line 459
    iput v3, p0, Lcom/android/server/hdmi/HdmiControlService;->mPowerStatus:I

    #@9
    .line 461
    :cond_0
    iput-boolean v3, p0, Lcom/android/server/hdmi/HdmiControlService;->mWakeUpMessageReceived:Z

    #@b
    .line 463
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->isTvDeviceEnabled()Z

    #@e
    move-result v1

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 464
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;

    #@13
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiControlService;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    #@16
    move-result-object v2

    #@17
    invoke-virtual {v2}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getAutoWakeup()Z

    #@1a
    move-result v2

    #@1b
    invoke-static {v2}, Lcom/android/server/hdmi/HdmiControlService;->toInt(Z)I

    #@1e
    move-result v2

    #@1f
    invoke-virtual {v1, v4, v2}, Lcom/android/server/hdmi/HdmiCecController;->setOption(II)V

    #@22
    .line 466
    :cond_1
    const/4 v0, -0x1

    #@23
    .line 467
    .local v0, "reason":I
    packed-switch p1, :pswitch_data_0

    #@26
    .line 479
    :goto_0
    const/4 v1, -0x1

    #@27
    if-eq v0, v1, :cond_2

    #@29
    .line 480
    invoke-virtual {p0, v4, v0}, Lcom/android/server/hdmi/HdmiControlService;->invokeVendorCommandListenersOnControlStateChanged(ZI)Z

    #@2c
    .line 457
    :cond_2
    return-void

    #@2d
    .line 469
    :pswitch_0
    const/4 v0, 0x0

    #@2e
    .line 470
    goto :goto_0

    #@2f
    .line 472
    :pswitch_1
    const/4 v0, 0x1

    #@30
    .line 473
    goto :goto_0

    #@31
    .line 476
    :pswitch_2
    const/4 v0, 0x2

    #@32
    .line 477
    goto :goto_0

    #@33
    .line 467
    nop

    #@34
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private onLanguageChanged(Ljava/lang/String;)V
    .locals 3
    .param p1, "language"    # Ljava/lang/String;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    #@0
    .prologue
    .line 2037
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    #@3
    .line 2038
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiControlService;->mLanguage:Ljava/lang/String;

    #@5
    .line 2040
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->isTvDeviceEnabled()Z

    #@8
    move-result v0

    #@9
    if-eqz v0, :cond_0

    #@b
    .line 2041
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiControlService;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    #@e
    move-result-object v0

    #@f
    invoke-virtual {v0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->broadcastMenuLanguage(Ljava/lang/String;)Z

    #@12
    .line 2042
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;

    #@14
    invoke-static {p1}, Lcom/android/server/hdmi/HdmiUtils;->languageToInt(Ljava/lang/String;)I

    #@17
    move-result v1

    #@18
    const/4 v2, 0x5

    #@19
    invoke-virtual {v0, v2, v1}, Lcom/android/server/hdmi/HdmiCecController;->setOption(II)V

    #@1c
    .line 2036
    :cond_0
    return-void
.end method

.method private onStandby(I)V
    .locals 3
    .param p1, "standbyAction"    # I
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x3

    #@1
    .line 2006
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    #@4
    .line 2007
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiControlService;->canGoToStandby()Z

    #@7
    move-result v1

    #@8
    if-nez v1, :cond_0

    #@a
    return-void

    #@b
    .line 2008
    :cond_0
    iput v2, p0, Lcom/android/server/hdmi/HdmiControlService;->mPowerStatus:I

    #@d
    .line 2009
    const/4 v1, 0x0

    #@e
    invoke-virtual {p0, v1, v2}, Lcom/android/server/hdmi/HdmiControlService;->invokeVendorCommandListenersOnControlStateChanged(ZI)Z

    #@11
    .line 2012
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->getAllLocalDevices()Ljava/util/List;

    #@14
    move-result-object v0

    #@15
    .line 2013
    .local v0, "devices":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/hdmi/HdmiCecLocalDevice;>;"
    new-instance v1, Lcom/android/server/hdmi/HdmiControlService$3;

    #@17
    invoke-direct {v1, p0, v0, p1}, Lcom/android/server/hdmi/HdmiControlService$3;-><init>(Lcom/android/server/hdmi/HdmiControlService;Ljava/util/List;I)V

    #@1a
    invoke-direct {p0, v1}, Lcom/android/server/hdmi/HdmiControlService;->disableDevices(Lcom/android/server/hdmi/HdmiCecLocalDevice$PendingActionClearedCallback;)V

    #@1d
    .line 2005
    return-void
.end method

.method private onStandbyCompleted(I)V
    .locals 6
    .param p1, "standbyAction"    # I
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    #@0
    .prologue
    const/4 v5, 0x3

    #@1
    const/4 v4, 0x0

    #@2
    .line 2074
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    #@5
    .line 2075
    const-string/jumbo v2, "HdmiControlService"

    #@8
    const-string/jumbo v3, "onStandbyCompleted"

    #@b
    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@e
    .line 2077
    iget v2, p0, Lcom/android/server/hdmi/HdmiControlService;->mPowerStatus:I

    #@10
    if-eq v2, v5, :cond_0

    #@12
    .line 2078
    return-void

    #@13
    .line 2080
    :cond_0
    const/4 v2, 0x1

    #@14
    iput v2, p0, Lcom/android/server/hdmi/HdmiControlService;->mPowerStatus:I

    #@16
    .line 2081
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;

    #@18
    invoke-virtual {v2}, Lcom/android/server/hdmi/HdmiCecController;->getLocalDeviceList()Ljava/util/List;

    #@1b
    move-result-object v2

    #@1c
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@1f
    move-result-object v1

    #@20
    .local v1, "device$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@23
    move-result v2

    #@24
    if-eqz v2, :cond_1

    #@26
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@29
    move-result-object v0

    #@2a
    check-cast v0, Lcom/android/server/hdmi/HdmiCecLocalDevice;

    #@2c
    .line 2082
    .local v0, "device":Lcom/android/server/hdmi/HdmiCecLocalDevice;
    iget-boolean v2, p0, Lcom/android/server/hdmi/HdmiControlService;->mStandbyMessageReceived:Z

    #@2e
    invoke-virtual {v0, v2, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->onStandby(ZI)V

    #@31
    goto :goto_0

    #@32
    .line 2084
    .end local v0    # "device":Lcom/android/server/hdmi/HdmiCecLocalDevice;
    :cond_1
    iput-boolean v4, p0, Lcom/android/server/hdmi/HdmiControlService;->mStandbyMessageReceived:Z

    #@34
    .line 2085
    iput-boolean v4, p0, Lcom/android/server/hdmi/HdmiControlService;->mAddressAllocated:Z

    #@36
    .line 2086
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;

    #@38
    invoke-virtual {v2, v5, v4}, Lcom/android/server/hdmi/HdmiCecController;->setOption(II)V

    #@3b
    .line 2087
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiControlService;->mMhlController:Lcom/android/server/hdmi/HdmiMhlControllerStub;

    #@3d
    const/16 v3, 0x68

    #@3f
    invoke-virtual {v2, v3, v4}, Lcom/android/server/hdmi/HdmiMhlControllerStub;->setOption(II)V

    #@42
    .line 2073
    return-void
.end method

.method private onWakeUp()V
    .locals 3
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    #@0
    .prologue
    .line 1988
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    #@3
    .line 1989
    const/4 v1, 0x2

    #@4
    iput v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mPowerStatus:I

    #@6
    .line 1990
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;

    #@8
    if-eqz v1, :cond_2

    #@a
    .line 1991
    iget-boolean v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiControlEnabled:Z

    #@c
    if-eqz v1, :cond_1

    #@e
    .line 1992
    const/4 v0, 0x2

    #@f
    .line 1993
    .local v0, "startReason":I
    iget-boolean v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mWakeUpMessageReceived:Z

    #@11
    if-eqz v1, :cond_0

    #@13
    .line 1994
    const/4 v0, 0x3

    #@14
    .line 1996
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/server/hdmi/HdmiControlService;->initializeCec(I)V

    #@17
    .line 1987
    .end local v0    # "startReason":I
    :cond_1
    :goto_0
    return-void

    #@18
    .line 1999
    :cond_2
    const-string/jumbo v1, "HdmiControlService"

    #@1b
    const-string/jumbo v2, "Device does not support HDMI-CEC."

    #@1e
    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@21
    goto :goto_0
.end method

.method private oneTouchPlay(Landroid/hardware/hdmi/IHdmiControlCallback;)V
    .locals 3
    .param p1, "callback"    # Landroid/hardware/hdmi/IHdmiControlCallback;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    #@0
    .prologue
    .line 1663
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    #@3
    .line 1664
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiControlService;->playback()Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;

    #@6
    move-result-object v0

    #@7
    .line 1665
    .local v0, "source":Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;
    if-nez v0, :cond_0

    #@9
    .line 1666
    const-string/jumbo v1, "HdmiControlService"

    #@c
    const-string/jumbo v2, "Local playback device not available"

    #@f
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@12
    .line 1667
    const/4 v1, 0x2

    #@13
    invoke-direct {p0, p1, v1}, Lcom/android/server/hdmi/HdmiControlService;->invokeCallback(Landroid/hardware/hdmi/IHdmiControlCallback;I)V

    #@16
    .line 1668
    return-void

    #@17
    .line 1670
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->oneTouchPlay(Landroid/hardware/hdmi/IHdmiControlCallback;)V

    #@1a
    .line 1662
    return-void
.end method

.method private playback()Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;
    .locals 2

    #@0
    .prologue
    .line 1929
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;

    #@2
    const/4 v1, 0x4

    #@3
    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiCecController;->getLocalDevice(I)Lcom/android/server/hdmi/HdmiCecLocalDevice;

    #@6
    move-result-object v0

    #@7
    .line 1928
    check-cast v0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;

    #@9
    return-object v0
.end method

.method private queryDisplayStatus(Landroid/hardware/hdmi/IHdmiControlCallback;)V
    .locals 3
    .param p1, "callback"    # Landroid/hardware/hdmi/IHdmiControlCallback;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    #@0
    .prologue
    .line 1675
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    #@3
    .line 1676
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiControlService;->playback()Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;

    #@6
    move-result-object v0

    #@7
    .line 1677
    .local v0, "source":Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;
    if-nez v0, :cond_0

    #@9
    .line 1678
    const-string/jumbo v1, "HdmiControlService"

    #@c
    const-string/jumbo v2, "Local playback device not available"

    #@f
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@12
    .line 1679
    const/4 v1, 0x2

    #@13
    invoke-direct {p0, p1, v1}, Lcom/android/server/hdmi/HdmiControlService;->invokeCallback(Landroid/hardware/hdmi/IHdmiControlCallback;I)V

    #@16
    .line 1680
    return-void

    #@17
    .line 1682
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->queryDisplayStatus(Landroid/hardware/hdmi/IHdmiControlCallback;)V

    #@1a
    .line 1674
    return-void
.end method

.method private registerContentObserver()V
    .locals 9

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 485
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->getContext()Landroid/content/Context;

    #@4
    move-result-object v3

    #@5
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@8
    move-result-object v0

    #@9
    .line 486
    .local v0, "resolver":Landroid/content/ContentResolver;
    const/4 v3, 0x5

    #@a
    new-array v2, v3, [Ljava/lang/String;

    #@c
    .line 487
    const-string/jumbo v3, "hdmi_control_enabled"

    #@f
    aput-object v3, v2, v4

    #@11
    .line 488
    const-string/jumbo v3, "hdmi_control_auto_wakeup_enabled"

    #@14
    const/4 v5, 0x1

    #@15
    aput-object v3, v2, v5

    #@17
    .line 489
    const-string/jumbo v3, "hdmi_control_auto_device_off_enabled"

    #@1a
    const/4 v5, 0x2

    #@1b
    aput-object v3, v2, v5

    #@1d
    .line 490
    const-string/jumbo v3, "mhl_input_switching_enabled"

    #@20
    const/4 v5, 0x3

    #@21
    aput-object v3, v2, v5

    #@23
    .line 491
    const-string/jumbo v3, "mhl_power_charge_enabled"

    #@26
    const/4 v5, 0x4

    #@27
    aput-object v3, v2, v5

    #@29
    .line 493
    .local v2, "settings":[Ljava/lang/String;
    array-length v5, v2

    #@2a
    move v3, v4

    #@2b
    :goto_0
    if-ge v3, v5, :cond_0

    #@2d
    aget-object v1, v2, v3

    #@2f
    .line 494
    .local v1, "s":Ljava/lang/String;
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    #@32
    move-result-object v6

    #@33
    iget-object v7, p0, Lcom/android/server/hdmi/HdmiControlService;->mSettingsObserver:Lcom/android/server/hdmi/HdmiControlService$SettingsObserver;

    #@35
    .line 495
    const/4 v8, -0x1

    #@36
    .line 494
    invoke-virtual {v0, v6, v4, v7, v8}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    #@39
    .line 493
    add-int/lit8 v3, v3, 0x1

    #@3b
    goto :goto_0

    #@3c
    .line 484
    .end local v1    # "s":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private removeHotplugEventListener(Landroid/hardware/hdmi/IHdmiHotplugEventListener;)V
    .locals 5
    .param p1, "listener"    # Landroid/hardware/hdmi/IHdmiHotplugEventListener;

    #@0
    .prologue
    .line 1717
    iget-object v3, p0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v3

    #@3
    .line 1718
    :try_start_0
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiControlService;->mHotplugEventListenerRecords:Ljava/util/ArrayList;

    #@5
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@8
    move-result-object v1

    #@9
    .local v1, "record$iterator":Ljava/util/Iterator;
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
    check-cast v0, Lcom/android/server/hdmi/HdmiControlService$HotplugEventListenerRecord;

    #@15
    .line 1719
    .local v0, "record":Lcom/android/server/hdmi/HdmiControlService$HotplugEventListenerRecord;
    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService$HotplugEventListenerRecord;->-get0(Lcom/android/server/hdmi/HdmiControlService$HotplugEventListenerRecord;)Landroid/hardware/hdmi/IHdmiHotplugEventListener;

    #@18
    move-result-object v2

    #@19
    invoke-interface {v2}, Landroid/hardware/hdmi/IHdmiHotplugEventListener;->asBinder()Landroid/os/IBinder;

    #@1c
    move-result-object v2

    #@1d
    invoke-interface {p1}, Landroid/hardware/hdmi/IHdmiHotplugEventListener;->asBinder()Landroid/os/IBinder;

    #@20
    move-result-object v4

    #@21
    if-ne v2, v4, :cond_0

    #@23
    .line 1720
    invoke-interface {p1}, Landroid/hardware/hdmi/IHdmiHotplugEventListener;->asBinder()Landroid/os/IBinder;

    #@26
    move-result-object v2

    #@27
    const/4 v4, 0x0

    #@28
    invoke-interface {v2, v0, v4}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    #@2b
    .line 1721
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiControlService;->mHotplugEventListenerRecords:Ljava/util/ArrayList;

    #@2d
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@30
    .end local v0    # "record":Lcom/android/server/hdmi/HdmiControlService$HotplugEventListenerRecord;
    :cond_1
    monitor-exit v3

    #@31
    .line 1716
    return-void

    #@32
    .line 1717
    .end local v1    # "record$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    #@33
    monitor-exit v3

    #@34
    throw v2
.end method

.method private removeSystemAudioModeChangeListener(Landroid/hardware/hdmi/IHdmiSystemAudioModeChangeListener;)V
    .locals 5
    .param p1, "listener"    # Landroid/hardware/hdmi/IHdmiSystemAudioModeChangeListener;

    #@0
    .prologue
    .line 1768
    iget-object v3, p0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v3

    #@3
    .line 1770
    :try_start_0
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiControlService;->mSystemAudioModeChangeListenerRecords:Ljava/util/ArrayList;

    #@5
    .line 1769
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@8
    move-result-object v1

    #@9
    .local v1, "record$iterator":Ljava/util/Iterator;
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
    check-cast v0, Lcom/android/server/hdmi/HdmiControlService$SystemAudioModeChangeListenerRecord;

    #@15
    .line 1771
    .local v0, "record":Lcom/android/server/hdmi/HdmiControlService$SystemAudioModeChangeListenerRecord;
    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService$SystemAudioModeChangeListenerRecord;->-get0(Lcom/android/server/hdmi/HdmiControlService$SystemAudioModeChangeListenerRecord;)Landroid/hardware/hdmi/IHdmiSystemAudioModeChangeListener;

    #@18
    move-result-object v2

    #@19
    invoke-interface {v2}, Landroid/hardware/hdmi/IHdmiSystemAudioModeChangeListener;->asBinder()Landroid/os/IBinder;

    #@1c
    move-result-object v2

    #@1d
    if-ne v2, p1, :cond_0

    #@1f
    .line 1772
    invoke-interface {p1}, Landroid/hardware/hdmi/IHdmiSystemAudioModeChangeListener;->asBinder()Landroid/os/IBinder;

    #@22
    move-result-object v2

    #@23
    const/4 v4, 0x0

    #@24
    invoke-interface {v2, v0, v4}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    #@27
    .line 1773
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiControlService;->mSystemAudioModeChangeListenerRecords:Ljava/util/ArrayList;

    #@29
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2c
    .end local v0    # "record":Lcom/android/server/hdmi/HdmiControlService$SystemAudioModeChangeListenerRecord;
    :cond_1
    monitor-exit v3

    #@2d
    .line 1767
    return-void

    #@2e
    .line 1768
    .end local v1    # "record$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    #@2f
    monitor-exit v3

    #@30
    throw v2
.end method

.method private setHdmiRecordListener(Landroid/hardware/hdmi/IHdmiRecordListener;)V
    .locals 5
    .param p1, "listener"    # Landroid/hardware/hdmi/IHdmiRecordListener;

    #@0
    .prologue
    .line 1820
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 1821
    :try_start_0
    new-instance v1, Lcom/android/server/hdmi/HdmiControlService$HdmiRecordListenerRecord;

    #@5
    invoke-direct {v1, p0, p1}, Lcom/android/server/hdmi/HdmiControlService$HdmiRecordListenerRecord;-><init>(Lcom/android/server/hdmi/HdmiControlService;Landroid/hardware/hdmi/IHdmiRecordListener;)V

    #@8
    iput-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mRecordListenerRecord:Lcom/android/server/hdmi/HdmiControlService$HdmiRecordListenerRecord;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@a
    .line 1823
    :try_start_1
    invoke-interface {p1}, Landroid/hardware/hdmi/IHdmiRecordListener;->asBinder()Landroid/os/IBinder;

    #@d
    move-result-object v1

    #@e
    iget-object v3, p0, Lcom/android/server/hdmi/HdmiControlService;->mRecordListenerRecord:Lcom/android/server/hdmi/HdmiControlService$HdmiRecordListenerRecord;

    #@10
    const/4 v4, 0x0

    #@11
    invoke-interface {v1, v3, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@14
    :goto_0
    monitor-exit v2

    #@15
    .line 1819
    return-void

    #@16
    .line 1824
    :catch_0
    move-exception v0

    #@17
    .line 1825
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string/jumbo v1, "HdmiControlService"

    #@1a
    const-string/jumbo v3, "Listener already died."

    #@1d
    invoke-static {v1, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@20
    goto :goto_0

    #@21
    .line 1820
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    #@22
    monitor-exit v2

    #@23
    throw v1
.end method

.method private setInputChangeListener(Landroid/hardware/hdmi/IHdmiInputChangeListener;)V
    .locals 5
    .param p1, "listener"    # Landroid/hardware/hdmi/IHdmiInputChangeListener;

    #@0
    .prologue
    .line 1796
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 1797
    :try_start_0
    new-instance v1, Lcom/android/server/hdmi/HdmiControlService$InputChangeListenerRecord;

    #@5
    invoke-direct {v1, p0, p1}, Lcom/android/server/hdmi/HdmiControlService$InputChangeListenerRecord;-><init>(Lcom/android/server/hdmi/HdmiControlService;Landroid/hardware/hdmi/IHdmiInputChangeListener;)V

    #@8
    iput-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mInputChangeListenerRecord:Lcom/android/server/hdmi/HdmiControlService$InputChangeListenerRecord;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@a
    .line 1799
    :try_start_1
    invoke-interface {p1}, Landroid/hardware/hdmi/IHdmiInputChangeListener;->asBinder()Landroid/os/IBinder;

    #@d
    move-result-object v1

    #@e
    iget-object v3, p0, Lcom/android/server/hdmi/HdmiControlService;->mInputChangeListenerRecord:Lcom/android/server/hdmi/HdmiControlService$InputChangeListenerRecord;

    #@10
    const/4 v4, 0x0

    #@11
    invoke-interface {v1, v3, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@14
    monitor-exit v2

    #@15
    .line 1795
    return-void

    #@16
    .line 1800
    :catch_0
    move-exception v0

    #@17
    .line 1801
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string/jumbo v1, "HdmiControlService"

    #@1a
    const-string/jumbo v3, "Listener already died"

    #@1d
    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@20
    monitor-exit v2

    #@21
    .line 1802
    return-void

    #@22
    .line 1796
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    #@23
    monitor-exit v2

    #@24
    throw v1
.end method

.method private static toInt(Z)I
    .locals 1
    .param p0, "enabled"    # Z

    #@0
    .prologue
    .line 537
    if-eqz p0, :cond_0

    #@2
    const/4 v0, 0x1

    #@3
    :goto_0
    return v0

    #@4
    :cond_0
    const/4 v0, 0x0

    #@5
    goto :goto_0
.end method

.method private tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;
    .locals 2

    #@0
    .prologue
    .line 1916
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiCecController;->getLocalDevice(I)Lcom/android/server/hdmi/HdmiCecLocalDevice;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    #@9
    return-object v0
.end method

.method private updateSafeMhlInput()V
    .locals 7
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    #@0
    .prologue
    .line 1054
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    #@3
    .line 1055
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    #@6
    move-result-object v4

    #@7
    .line 1056
    .local v4, "inputs":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/hdmi/HdmiDeviceInfo;>;"
    iget-object v5, p0, Lcom/android/server/hdmi/HdmiControlService;->mMhlController:Lcom/android/server/hdmi/HdmiMhlControllerStub;

    #@9
    invoke-virtual {v5}, Lcom/android/server/hdmi/HdmiMhlControllerStub;->getAllLocalDevices()Landroid/util/SparseArray;

    #@c
    move-result-object v1

    #@d
    .line 1057
    .local v1, "devices":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;>;"
    const/4 v2, 0x0

    #@e
    .local v2, "i":I
    :goto_0
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    #@11
    move-result v5

    #@12
    if-ge v2, v5, :cond_2

    #@14
    .line 1058
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@17
    move-result-object v0

    #@18
    check-cast v0, Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;

    #@1a
    .line 1059
    .local v0, "device":Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;->getInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    #@1d
    move-result-object v3

    #@1e
    .line 1060
    .local v3, "info":Landroid/hardware/hdmi/HdmiDeviceInfo;
    if-eqz v3, :cond_1

    #@20
    .line 1061
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    #@23
    move-result v5

    #@24
    if-eqz v5, :cond_0

    #@26
    .line 1062
    new-instance v4, Ljava/util/ArrayList;

    #@28
    .end local v4    # "inputs":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/hdmi/HdmiDeviceInfo;>;"
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    #@2b
    .line 1064
    .restart local v4    # "inputs":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/hdmi/HdmiDeviceInfo;>;"
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;->getInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    #@2e
    move-result-object v5

    #@2f
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@32
    .line 1057
    :cond_1
    add-int/lit8 v2, v2, 0x1

    #@34
    goto :goto_0

    #@35
    .line 1067
    .end local v0    # "device":Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;
    .end local v3    # "info":Landroid/hardware/hdmi/HdmiDeviceInfo;
    :cond_2
    iget-object v5, p0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    #@37
    monitor-enter v5

    #@38
    .line 1068
    :try_start_0
    iput-object v4, p0, Lcom/android/server/hdmi/HdmiControlService;->mMhlDevices:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3a
    monitor-exit v5

    #@3b
    .line 1053
    return-void

    #@3c
    .line 1067
    :catchall_0
    move-exception v6

    #@3d
    monitor-exit v5

    #@3e
    throw v6
.end method


# virtual methods
.method announceSystemAudioModeChange(Z)V
    .locals 4
    .param p1, "enabled"    # Z

    #@0
    .prologue
    .line 974
    iget-object v3, p0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v3

    #@3
    .line 976
    :try_start_0
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiControlService;->mSystemAudioModeChangeListenerRecords:Ljava/util/ArrayList;

    #@5
    .line 975
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@8
    move-result-object v1

    #@9
    .local v1, "record$iterator":Ljava/util/Iterator;
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
    check-cast v0, Lcom/android/server/hdmi/HdmiControlService$SystemAudioModeChangeListenerRecord;

    #@15
    .line 977
    .local v0, "record":Lcom/android/server/hdmi/HdmiControlService$SystemAudioModeChangeListenerRecord;
    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService$SystemAudioModeChangeListenerRecord;->-get0(Lcom/android/server/hdmi/HdmiControlService$SystemAudioModeChangeListenerRecord;)Landroid/hardware/hdmi/IHdmiSystemAudioModeChangeListener;

    #@18
    move-result-object v2

    #@19
    invoke-direct {p0, v2, p1}, Lcom/android/server/hdmi/HdmiControlService;->invokeSystemAudioModeChangeLocked(Landroid/hardware/hdmi/IHdmiSystemAudioModeChangeListener;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    goto :goto_0

    #@1d
    .line 974
    .end local v0    # "record":Lcom/android/server/hdmi/HdmiControlService$SystemAudioModeChangeListenerRecord;
    .end local v1    # "record$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    #@1e
    monitor-exit v3

    #@1f
    throw v2

    #@20
    .restart local v1    # "record$iterator":Ljava/util/Iterator;
    :cond_0
    monitor-exit v3

    #@21
    .line 973
    return-void
.end method

.method changeInputForMhl(IZ)V
    .locals 5
    .param p1, "portId"    # I
    .param p2, "contentOn"    # Z
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    #@0
    .prologue
    .line 2266
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    #@3
    .line 2267
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiControlService;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    #@6
    move-result-object v3

    #@7
    if-nez v3, :cond_0

    #@9
    return-void

    #@a
    .line 2268
    :cond_0
    if-eqz p2, :cond_2

    #@c
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiControlService;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    #@f
    move-result-object v3

    #@10
    invoke-virtual {v3}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getActivePortId()I

    #@13
    move-result v2

    #@14
    .line 2269
    .local v2, "lastInput":I
    :goto_0
    const/4 v3, -0x1

    #@15
    if-eq p1, v3, :cond_1

    #@17
    .line 2270
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiControlService;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    #@1a
    move-result-object v3

    #@1b
    new-instance v4, Lcom/android/server/hdmi/HdmiControlService$6;

    #@1d
    invoke-direct {v4, p0, v2}, Lcom/android/server/hdmi/HdmiControlService$6;-><init>(Lcom/android/server/hdmi/HdmiControlService;I)V

    #@20
    invoke-virtual {v3, p1, v4}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->doManualPortSwitching(ILandroid/hardware/hdmi/IHdmiControlCallback;)V

    #@23
    .line 2282
    :cond_1
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiControlService;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    #@26
    move-result-object v3

    #@27
    invoke-virtual {v3, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->setActivePortId(I)V

    #@2a
    .line 2288
    iget-object v3, p0, Lcom/android/server/hdmi/HdmiControlService;->mMhlController:Lcom/android/server/hdmi/HdmiMhlControllerStub;

    #@2c
    invoke-virtual {v3, p1}, Lcom/android/server/hdmi/HdmiMhlControllerStub;->getLocalDevice(I)Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;

    #@2f
    move-result-object v0

    #@30
    .line 2289
    .local v0, "device":Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;
    if-eqz v0, :cond_3

    #@32
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;->getInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    #@35
    move-result-object v1

    #@36
    .line 2291
    .local v1, "info":Landroid/hardware/hdmi/HdmiDeviceInfo;
    :goto_1
    invoke-virtual {p0, v1}, Lcom/android/server/hdmi/HdmiControlService;->invokeInputChangeListener(Landroid/hardware/hdmi/HdmiDeviceInfo;)V

    #@39
    .line 2265
    return-void

    #@3a
    .line 2268
    .end local v0    # "device":Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;
    .end local v1    # "info":Landroid/hardware/hdmi/HdmiDeviceInfo;
    .end local v2    # "lastInput":I
    :cond_2
    const/4 v2, -0x1

    #@3b
    .restart local v2    # "lastInput":I
    goto :goto_0

    #@3c
    .line 2290
    .restart local v0    # "device":Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;
    :cond_3
    iget-object v3, p0, Lcom/android/server/hdmi/HdmiControlService;->mPortDeviceMap:Lcom/android/server/hdmi/UnmodifiableSparseArray;

    #@3e
    sget-object v4, Landroid/hardware/hdmi/HdmiDeviceInfo;->INACTIVE_DEVICE:Landroid/hardware/hdmi/HdmiDeviceInfo;

    #@40
    invoke-virtual {v3, p1, v4}, Lcom/android/server/hdmi/UnmodifiableSparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    #@43
    move-result-object v1

    #@44
    check-cast v1, Landroid/hardware/hdmi/HdmiDeviceInfo;

    #@46
    .restart local v1    # "info":Landroid/hardware/hdmi/HdmiDeviceInfo;
    goto :goto_1
.end method

.method displayOsd(I)V
    .locals 4
    .param p1, "messageId"    # I
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    #@0
    .prologue
    .line 2310
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    #@3
    .line 2311
    new-instance v0, Landroid/content/Intent;

    #@5
    const-string/jumbo v1, "android.hardware.hdmi.action.OSD_MESSAGE"

    #@8
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@b
    .line 2312
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "android.hardware.hdmi.extra.MESSAGE_ID"

    #@e
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@11
    .line 2313
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->getContext()Landroid/content/Context;

    #@14
    move-result-object v1

    #@15
    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    #@17
    .line 2314
    const-string/jumbo v3, "android.permission.HDMI_CEC"

    #@1a
    .line 2313
    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    #@1d
    .line 2309
    return-void
.end method

.method displayOsd(II)V
    .locals 4
    .param p1, "messageId"    # I
    .param p2, "extra"    # I
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    #@0
    .prologue
    .line 2319
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    #@3
    .line 2320
    new-instance v0, Landroid/content/Intent;

    #@5
    const-string/jumbo v1, "android.hardware.hdmi.action.OSD_MESSAGE"

    #@8
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@b
    .line 2321
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "android.hardware.hdmi.extra.MESSAGE_ID"

    #@e
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@11
    .line 2322
    const-string/jumbo v1, "android.hardware.hdmi.extra.MESSAGE_EXTRA_PARAM1"

    #@14
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@17
    .line 2323
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->getContext()Landroid/content/Context;

    #@1a
    move-result-object v1

    #@1b
    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    #@1d
    .line 2324
    const-string/jumbo v3, "android.permission.HDMI_CEC"

    #@20
    .line 2323
    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    #@23
    .line 2318
    return-void
.end method

.method getAllLocalDevices()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/hdmi/HdmiCecLocalDevice;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 947
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    #@3
    .line 948
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;

    #@5
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecController;->getLocalDeviceList()Ljava/util/List;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method getAudioManager()Landroid/media/AudioManager;
    .locals 2

    #@0
    .prologue
    .line 1933
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->getContext()Landroid/content/Context;

    #@3
    move-result-object v0

    #@4
    const-string/jumbo v1, "audio"

    #@7
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@a
    move-result-object v0

    #@b
    check-cast v0, Landroid/media/AudioManager;

    #@d
    return-object v0
.end method

.method getCecVersion()I
    .locals 1

    #@0
    .prologue
    .line 777
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;

    #@2
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecController;->getVersion()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method getDeviceInfo(I)Landroid/hardware/hdmi/HdmiDeviceInfo;
    .locals 2
    .param p1, "logicalAddress"    # I
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 759
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    #@4
    .line 760
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiControlService;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    #@7
    move-result-object v1

    #@8
    if-nez v1, :cond_0

    #@a
    :goto_0
    return-object v0

    #@b
    :cond_0
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiControlService;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    #@e
    move-result-object v0

    #@f
    invoke-virtual {v0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getCecDeviceInfo(I)Landroid/hardware/hdmi/HdmiDeviceInfo;

    #@12
    move-result-object v0

    #@13
    goto :goto_0
.end method

.method getDeviceInfoByPort(I)Landroid/hardware/hdmi/HdmiDeviceInfo;
    .locals 3
    .param p1, "port"    # I
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 765
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    #@4
    .line 766
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mMhlController:Lcom/android/server/hdmi/HdmiMhlControllerStub;

    #@6
    invoke-virtual {v1, p1}, Lcom/android/server/hdmi/HdmiMhlControllerStub;->getLocalDevice(I)Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;

    #@9
    move-result-object v0

    #@a
    .line 767
    .local v0, "info":Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;
    if-eqz v0, :cond_0

    #@c
    .line 768
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;->getInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    #@f
    move-result-object v1

    #@10
    return-object v1

    #@11
    .line 770
    :cond_0
    return-object v2
.end method

.method getIoLooper()Landroid/os/Looper;
    .locals 1

    #@0
    .prologue
    .line 730
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mIoThread:Landroid/os/HandlerThread;

    #@2
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method getLanguage()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    #@0
    .prologue
    .line 2048
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    #@3
    .line 2049
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mLanguage:Ljava/lang/String;

    #@5
    return-object v0
.end method

.method getLastInputForMhl()I
    .locals 1
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    #@0
    .prologue
    .line 2254
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    #@3
    .line 2255
    iget v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mLastInputMhl:I

    #@5
    return v0
.end method

.method getPhysicalAddress()I
    .locals 1

    #@0
    .prologue
    .line 747
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;

    #@2
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecController;->getPhysicalAddress()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method getPortInfo(I)Landroid/hardware/hdmi/HdmiPortInfo;
    .locals 2
    .param p1, "portId"    # I

    #@0
    .prologue
    .line 693
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mPortInfoMap:Lcom/android/server/hdmi/UnmodifiableSparseArray;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-virtual {v0, p1, v1}, Lcom/android/server/hdmi/UnmodifiableSparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Landroid/hardware/hdmi/HdmiPortInfo;

    #@9
    return-object v0
.end method

.method getPortInfo()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/hdmi/HdmiPortInfo;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 683
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mPortInfo:Ljava/util/List;

    #@2
    return-object v0
.end method

.method getPowerManager()Landroid/os/PowerManager;
    .locals 1

    #@0
    .prologue
    .line 451
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mPowerManager:Landroid/os/PowerManager;

    #@2
    return-object v0
.end method

.method getPowerStatus()I
    .locals 1
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    #@0
    .prologue
    .line 1944
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    #@3
    .line 1945
    iget v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mPowerStatus:I

    #@5
    return v0
.end method

.method getServiceLock()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 952
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method getServiceLooper()Landroid/os/Looper;
    .locals 1

    #@0
    .prologue
    .line 740
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mHandler:Landroid/os/Handler;

    #@2
    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method getTvInputManager()Landroid/media/tv/TvInputManager;
    .locals 1

    #@0
    .prologue
    .line 437
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mTvInputManager:Landroid/media/tv/TvInputManager;

    #@2
    return-object v0
.end method

.method getVendorId()I
    .locals 1

    #@0
    .prologue
    .line 754
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;

    #@2
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecController;->getVendorId()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method handleCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .locals 4
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x3

    #@1
    const/4 v2, 0x1

    #@2
    .line 850
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    #@5
    .line 851
    iget-boolean v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mAddressAllocated:Z

    #@7
    if-nez v1, :cond_0

    #@9
    .line 852
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecMessageBuffer:Lcom/android/server/hdmi/HdmiControlService$CecMessageBuffer;

    #@b
    invoke-virtual {v1, p1}, Lcom/android/server/hdmi/HdmiControlService$CecMessageBuffer;->bufferMessage(Lcom/android/server/hdmi/HdmiCecMessage;)V

    #@e
    .line 853
    return v2

    #@f
    .line 855
    :cond_0
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mMessageValidator:Lcom/android/server/hdmi/HdmiCecMessageValidator;

    #@11
    invoke-virtual {v1, p1}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isValid(Lcom/android/server/hdmi/HdmiCecMessage;)I

    #@14
    move-result v0

    #@15
    .line 856
    .local v0, "errorCode":I
    if-eqz v0, :cond_2

    #@17
    .line 859
    if-ne v0, v3, :cond_1

    #@19
    .line 860
    invoke-virtual {p0, p1, v3}, Lcom/android/server/hdmi/HdmiControlService;->maySendFeatureAbortCommand(Lcom/android/server/hdmi/HdmiCecMessage;I)V

    #@1c
    .line 862
    :cond_1
    return v2

    #@1d
    .line 864
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiControlService;->dispatchMessageToLocalDevice(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    #@20
    move-result v1

    #@21
    return v1
.end method

.method handleMhlBusModeChanged(II)V
    .locals 4
    .param p1, "portId"    # I
    .param p2, "busmode"    # I
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    #@0
    .prologue
    .line 1018
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    #@3
    .line 1019
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mMhlController:Lcom/android/server/hdmi/HdmiMhlControllerStub;

    #@5
    invoke-virtual {v1, p1}, Lcom/android/server/hdmi/HdmiMhlControllerStub;->getLocalDevice(I)Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;

    #@8
    move-result-object v0

    #@9
    .line 1020
    .local v0, "device":Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;
    if-eqz v0, :cond_0

    #@b
    .line 1021
    invoke-virtual {v0, p2}, Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;->setBusMode(I)V

    #@e
    .line 1017
    :goto_0
    return-void

    #@f
    .line 1023
    :cond_0
    const-string/jumbo v1, "HdmiControlService"

    #@12
    new-instance v2, Ljava/lang/StringBuilder;

    #@14
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@17
    const-string/jumbo v3, "No mhl device exists for bus mode change[portId:"

    #@1a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v2

    #@1e
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@21
    move-result-object v2

    #@22
    .line 1024
    const-string/jumbo v3, ", busmode:"

    #@25
    .line 1023
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v2

    #@29
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v2

    #@2d
    .line 1024
    const-string/jumbo v3, "]"

    #@30
    .line 1023
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v2

    #@34
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@37
    move-result-object v2

    #@38
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@3b
    goto :goto_0
.end method

.method handleMhlBusOvercurrent(IZ)V
    .locals 4
    .param p1, "portId"    # I
    .param p2, "on"    # Z
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    #@0
    .prologue
    .line 1030
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    #@3
    .line 1031
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mMhlController:Lcom/android/server/hdmi/HdmiMhlControllerStub;

    #@5
    invoke-virtual {v1, p1}, Lcom/android/server/hdmi/HdmiMhlControllerStub;->getLocalDevice(I)Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;

    #@8
    move-result-object v0

    #@9
    .line 1032
    .local v0, "device":Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;
    if-eqz v0, :cond_0

    #@b
    .line 1033
    invoke-virtual {v0, p2}, Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;->onBusOvercurrentDetected(Z)V

    #@e
    .line 1029
    :goto_0
    return-void

    #@f
    .line 1035
    :cond_0
    const-string/jumbo v1, "HdmiControlService"

    #@12
    new-instance v2, Ljava/lang/StringBuilder;

    #@14
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@17
    const-string/jumbo v3, "No mhl device exists for bus overcurrent event[portId:"

    #@1a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v2

    #@1e
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@21
    move-result-object v2

    #@22
    const-string/jumbo v3, "]"

    #@25
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v2

    #@29
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2c
    move-result-object v2

    #@2d
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@30
    goto :goto_0
.end method

.method handleMhlDeviceStatusChanged(III)V
    .locals 4
    .param p1, "portId"    # I
    .param p2, "adopterId"    # I
    .param p3, "deviceId"    # I
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    #@0
    .prologue
    .line 1041
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    #@3
    .line 1042
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mMhlController:Lcom/android/server/hdmi/HdmiMhlControllerStub;

    #@5
    invoke-virtual {v1, p1}, Lcom/android/server/hdmi/HdmiMhlControllerStub;->getLocalDevice(I)Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;

    #@8
    move-result-object v0

    #@9
    .line 1044
    .local v0, "device":Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;
    if-eqz v0, :cond_0

    #@b
    .line 1045
    invoke-virtual {v0, p2, p3}, Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;->setDeviceStatusChange(II)V

    #@e
    .line 1040
    :goto_0
    return-void

    #@f
    .line 1047
    :cond_0
    const-string/jumbo v1, "HdmiControlService"

    #@12
    new-instance v2, Ljava/lang/StringBuilder;

    #@14
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@17
    const-string/jumbo v3, "No mhl device exists for device status event[portId:"

    #@1a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v2

    #@1e
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@21
    move-result-object v2

    #@22
    .line 1048
    const-string/jumbo v3, ", adopterId:"

    #@25
    .line 1047
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v2

    #@29
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v2

    #@2d
    .line 1048
    const-string/jumbo v3, ", deviceId:"

    #@30
    .line 1047
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v2

    #@34
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@37
    move-result-object v2

    #@38
    .line 1048
    const-string/jumbo v3, "]"

    #@3b
    .line 1047
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v2

    #@3f
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@42
    move-result-object v2

    #@43
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@46
    goto :goto_0
.end method

.method handleMhlHotplugEvent(IZ)V
    .locals 6
    .param p1, "portId"    # I
    .param p2, "connected"    # Z
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    #@0
    .prologue
    .line 992
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    #@3
    .line 994
    if-eqz p2, :cond_1

    #@5
    .line 995
    new-instance v1, Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;

    #@7
    invoke-direct {v1, p0, p1}, Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;-><init>(Lcom/android/server/hdmi/HdmiControlService;I)V

    #@a
    .line 996
    .local v1, "newDevice":Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;
    iget-object v3, p0, Lcom/android/server/hdmi/HdmiControlService;->mMhlController:Lcom/android/server/hdmi/HdmiMhlControllerStub;

    #@c
    invoke-virtual {v3, v1}, Lcom/android/server/hdmi/HdmiMhlControllerStub;->addLocalDevice(Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;)Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;

    #@f
    move-result-object v2

    #@10
    .line 997
    .local v2, "oldDevice":Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;
    if-eqz v2, :cond_0

    #@12
    .line 998
    invoke-virtual {v2}, Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;->onDeviceRemoved()V

    #@15
    .line 999
    const-string/jumbo v3, "HdmiControlService"

    #@18
    new-instance v4, Ljava/lang/StringBuilder;

    #@1a
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@1d
    const-string/jumbo v5, "Old device of port "

    #@20
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v4

    #@24
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@27
    move-result-object v4

    #@28
    const-string/jumbo v5, " is removed"

    #@2b
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v4

    #@2f
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@32
    move-result-object v4

    #@33
    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@36
    .line 1001
    :cond_0
    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;->getInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    #@39
    move-result-object v3

    #@3a
    const/4 v4, 0x1

    #@3b
    invoke-virtual {p0, v3, v4}, Lcom/android/server/hdmi/HdmiControlService;->invokeDeviceEventListeners(Landroid/hardware/hdmi/HdmiDeviceInfo;I)V

    #@3e
    .line 1002
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiControlService;->updateSafeMhlInput()V

    #@41
    .line 1013
    .end local v1    # "newDevice":Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;
    .end local v2    # "oldDevice":Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;
    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/hdmi/HdmiControlService;->announceHotplugEvent(IZ)V

    #@44
    .line 991
    return-void

    #@45
    .line 1004
    :cond_1
    iget-object v3, p0, Lcom/android/server/hdmi/HdmiControlService;->mMhlController:Lcom/android/server/hdmi/HdmiMhlControllerStub;

    #@47
    invoke-virtual {v3, p1}, Lcom/android/server/hdmi/HdmiMhlControllerStub;->removeLocalDevice(I)Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;

    #@4a
    move-result-object v0

    #@4b
    .line 1005
    .local v0, "device":Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;
    if-eqz v0, :cond_2

    #@4d
    .line 1006
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;->onDeviceRemoved()V

    #@50
    .line 1007
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;->getInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    #@53
    move-result-object v3

    #@54
    const/4 v4, 0x2

    #@55
    invoke-virtual {p0, v3, v4}, Lcom/android/server/hdmi/HdmiControlService;->invokeDeviceEventListeners(Landroid/hardware/hdmi/HdmiDeviceInfo;I)V

    #@58
    .line 1008
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiControlService;->updateSafeMhlInput()V

    #@5b
    goto :goto_0

    #@5c
    .line 1010
    :cond_2
    const-string/jumbo v3, "HdmiControlService"

    #@5f
    new-instance v4, Ljava/lang/StringBuilder;

    #@61
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@64
    const-string/jumbo v5, "No device to remove:[portId="

    #@67
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6a
    move-result-object v4

    #@6b
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@6e
    move-result-object v4

    #@6f
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@72
    move-result-object v4

    #@73
    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@76
    goto :goto_0
.end method

.method invokeClearTimerRecordingResult(II)V
    .locals 4
    .param p1, "recorderAddress"    # I
    .param p2, "result"    # I

    #@0
    .prologue
    .line 1868
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 1869
    :try_start_0
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mRecordListenerRecord:Lcom/android/server/hdmi/HdmiControlService$HdmiRecordListenerRecord;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    if-eqz v1, :cond_0

    #@7
    .line 1871
    :try_start_1
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mRecordListenerRecord:Lcom/android/server/hdmi/HdmiControlService$HdmiRecordListenerRecord;

    #@9
    invoke-static {v1}, Lcom/android/server/hdmi/HdmiControlService$HdmiRecordListenerRecord;->-get0(Lcom/android/server/hdmi/HdmiControlService$HdmiRecordListenerRecord;)Landroid/hardware/hdmi/IHdmiRecordListener;

    #@c
    move-result-object v1

    #@d
    invoke-interface {v1, p1, p2}, Landroid/hardware/hdmi/IHdmiRecordListener;->onClearTimerRecordingResult(II)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@10
    :cond_0
    :goto_0
    monitor-exit v2

    #@11
    .line 1867
    return-void

    #@12
    .line 1873
    :catch_0
    move-exception v0

    #@13
    .line 1874
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string/jumbo v1, "HdmiControlService"

    #@16
    const-string/jumbo v3, "Failed to call onClearTimerRecordingResult."

    #@19
    invoke-static {v1, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@1c
    goto :goto_0

    #@1d
    .line 1868
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    #@1e
    monitor-exit v2

    #@1f
    throw v1
.end method

.method invokeDeviceEventListeners(Landroid/hardware/hdmi/HdmiDeviceInfo;I)V
    .locals 7
    .param p1, "device"    # Landroid/hardware/hdmi/HdmiDeviceInfo;
    .param p2, "status"    # I

    #@0
    .prologue
    .line 1742
    iget-object v4, p0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v4

    #@3
    .line 1743
    :try_start_0
    iget-object v3, p0, Lcom/android/server/hdmi/HdmiControlService;->mDeviceEventListenerRecords:Ljava/util/ArrayList;

    #@5
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@8
    move-result-object v2

    #@9
    .local v2, "record$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@c
    move-result v3

    #@d
    if-eqz v3, :cond_0

    #@f
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@12
    move-result-object v1

    #@13
    check-cast v1, Lcom/android/server/hdmi/HdmiControlService$DeviceEventListenerRecord;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@15
    .line 1745
    .local v1, "record":Lcom/android/server/hdmi/HdmiControlService$DeviceEventListenerRecord;
    :try_start_1
    invoke-static {v1}, Lcom/android/server/hdmi/HdmiControlService$DeviceEventListenerRecord;->-get0(Lcom/android/server/hdmi/HdmiControlService$DeviceEventListenerRecord;)Landroid/hardware/hdmi/IHdmiDeviceEventListener;

    #@18
    move-result-object v3

    #@19
    invoke-interface {v3, p1, p2}, Landroid/hardware/hdmi/IHdmiDeviceEventListener;->onStatusChanged(Landroid/hardware/hdmi/HdmiDeviceInfo;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1c
    goto :goto_0

    #@1d
    .line 1746
    :catch_0
    move-exception v0

    #@1e
    .line 1747
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string/jumbo v3, "HdmiControlService"

    #@21
    new-instance v5, Ljava/lang/StringBuilder;

    #@23
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@26
    const-string/jumbo v6, "Failed to report device event:"

    #@29
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v5

    #@2d
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v5

    #@31
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@34
    move-result-object v5

    #@35
    invoke-static {v3, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@38
    goto :goto_0

    #@39
    .line 1742
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "record":Lcom/android/server/hdmi/HdmiControlService$DeviceEventListenerRecord;
    .end local v2    # "record$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    #@3a
    monitor-exit v4

    #@3b
    throw v3

    #@3c
    .restart local v2    # "record$iterator":Ljava/util/Iterator;
    :cond_0
    monitor-exit v4

    #@3d
    .line 1741
    return-void
.end method

.method invokeInputChangeListener(Landroid/hardware/hdmi/HdmiDeviceInfo;)V
    .locals 5
    .param p1, "info"    # Landroid/hardware/hdmi/HdmiDeviceInfo;

    #@0
    .prologue
    .line 1808
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 1809
    :try_start_0
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mInputChangeListenerRecord:Lcom/android/server/hdmi/HdmiControlService$InputChangeListenerRecord;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    if-eqz v1, :cond_0

    #@7
    .line 1811
    :try_start_1
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mInputChangeListenerRecord:Lcom/android/server/hdmi/HdmiControlService$InputChangeListenerRecord;

    #@9
    invoke-static {v1}, Lcom/android/server/hdmi/HdmiControlService$InputChangeListenerRecord;->-get0(Lcom/android/server/hdmi/HdmiControlService$InputChangeListenerRecord;)Landroid/hardware/hdmi/IHdmiInputChangeListener;

    #@c
    move-result-object v1

    #@d
    invoke-interface {v1, p1}, Landroid/hardware/hdmi/IHdmiInputChangeListener;->onChanged(Landroid/hardware/hdmi/HdmiDeviceInfo;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@10
    :cond_0
    :goto_0
    monitor-exit v2

    #@11
    .line 1807
    return-void

    #@12
    .line 1812
    :catch_0
    move-exception v0

    #@13
    .line 1813
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string/jumbo v1, "HdmiControlService"

    #@16
    new-instance v3, Ljava/lang/StringBuilder;

    #@18
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@1b
    const-string/jumbo v4, "Exception thrown by IHdmiInputChangeListener: "

    #@1e
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v3

    #@22
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v3

    #@26
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@29
    move-result-object v3

    #@2a
    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@2d
    goto :goto_0

    #@2e
    .line 1808
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    #@2f
    monitor-exit v2

    #@30
    throw v1
.end method

.method invokeMhlVendorCommandListeners(III[B)V
    .locals 6
    .param p1, "portId"    # I
    .param p2, "offest"    # I
    .param p3, "length"    # I
    .param p4, "data"    # [B

    #@0
    .prologue
    .line 2155
    iget-object v4, p0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v4

    #@3
    .line 2156
    :try_start_0
    iget-object v3, p0, Lcom/android/server/hdmi/HdmiControlService;->mMhlVendorCommandListenerRecords:Ljava/util/ArrayList;

    #@5
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@8
    move-result-object v2

    #@9
    .local v2, "record$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@c
    move-result v3

    #@d
    if-eqz v3, :cond_0

    #@f
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@12
    move-result-object v1

    #@13
    check-cast v1, Lcom/android/server/hdmi/HdmiControlService$HdmiMhlVendorCommandListenerRecord;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@15
    .line 2158
    .local v1, "record":Lcom/android/server/hdmi/HdmiControlService$HdmiMhlVendorCommandListenerRecord;
    :try_start_1
    invoke-static {v1}, Lcom/android/server/hdmi/HdmiControlService$HdmiMhlVendorCommandListenerRecord;->-get0(Lcom/android/server/hdmi/HdmiControlService$HdmiMhlVendorCommandListenerRecord;)Landroid/hardware/hdmi/IHdmiMhlVendorCommandListener;

    #@18
    move-result-object v3

    #@19
    invoke-interface {v3, p1, p2, p3, p4}, Landroid/hardware/hdmi/IHdmiMhlVendorCommandListener;->onReceived(III[B)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1c
    goto :goto_0

    #@1d
    .line 2159
    :catch_0
    move-exception v0

    #@1e
    .line 2160
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string/jumbo v3, "HdmiControlService"

    #@21
    const-string/jumbo v5, "Failed to notify MHL vendor command"

    #@24
    invoke-static {v3, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@27
    goto :goto_0

    #@28
    .line 2155
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "record":Lcom/android/server/hdmi/HdmiControlService$HdmiMhlVendorCommandListenerRecord;
    .end local v2    # "record$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    #@29
    monitor-exit v4

    #@2a
    throw v3

    #@2b
    .restart local v2    # "record$iterator":Ljava/util/Iterator;
    :cond_0
    monitor-exit v4

    #@2c
    .line 2154
    return-void
.end method

.method invokeOneTouchRecordResult(II)V
    .locals 4
    .param p1, "recorderAddress"    # I
    .param p2, "result"    # I

    #@0
    .prologue
    .line 1844
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 1845
    :try_start_0
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mRecordListenerRecord:Lcom/android/server/hdmi/HdmiControlService$HdmiRecordListenerRecord;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    if-eqz v1, :cond_0

    #@7
    .line 1847
    :try_start_1
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mRecordListenerRecord:Lcom/android/server/hdmi/HdmiControlService$HdmiRecordListenerRecord;

    #@9
    invoke-static {v1}, Lcom/android/server/hdmi/HdmiControlService$HdmiRecordListenerRecord;->-get0(Lcom/android/server/hdmi/HdmiControlService$HdmiRecordListenerRecord;)Landroid/hardware/hdmi/IHdmiRecordListener;

    #@c
    move-result-object v1

    #@d
    invoke-interface {v1, p1, p2}, Landroid/hardware/hdmi/IHdmiRecordListener;->onOneTouchRecordResult(II)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@10
    :cond_0
    :goto_0
    monitor-exit v2

    #@11
    .line 1843
    return-void

    #@12
    .line 1848
    :catch_0
    move-exception v0

    #@13
    .line 1849
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string/jumbo v1, "HdmiControlService"

    #@16
    const-string/jumbo v3, "Failed to call onOneTouchRecordResult."

    #@19
    invoke-static {v1, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@1c
    goto :goto_0

    #@1d
    .line 1844
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    #@1e
    monitor-exit v2

    #@1f
    throw v1
.end method

.method invokeRecordRequestListener(I)[B
    .locals 4
    .param p1, "recorderAddress"    # I

    #@0
    .prologue
    .line 1831
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 1832
    :try_start_0
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mRecordListenerRecord:Lcom/android/server/hdmi/HdmiControlService$HdmiRecordListenerRecord;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    if-eqz v1, :cond_0

    #@7
    .line 1834
    :try_start_1
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mRecordListenerRecord:Lcom/android/server/hdmi/HdmiControlService$HdmiRecordListenerRecord;

    #@9
    invoke-static {v1}, Lcom/android/server/hdmi/HdmiControlService$HdmiRecordListenerRecord;->-get0(Lcom/android/server/hdmi/HdmiControlService$HdmiRecordListenerRecord;)Landroid/hardware/hdmi/IHdmiRecordListener;

    #@c
    move-result-object v1

    #@d
    invoke-interface {v1, p1}, Landroid/hardware/hdmi/IHdmiRecordListener;->getOneTouchRecordSource(I)[B
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@10
    move-result-object v1

    #@11
    monitor-exit v2

    #@12
    return-object v1

    #@13
    .line 1835
    :catch_0
    move-exception v0

    #@14
    .line 1836
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string/jumbo v1, "HdmiControlService"

    #@17
    const-string/jumbo v3, "Failed to start record."

    #@1a
    invoke-static {v1, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@1d
    .line 1839
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    sget-object v1, Llibcore/util/EmptyArray;->BYTE:[B
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@1f
    monitor-exit v2

    #@20
    return-object v1

    #@21
    .line 1831
    :catchall_0
    move-exception v1

    #@22
    monitor-exit v2

    #@23
    throw v1
.end method

.method invokeTimerRecordingResult(II)V
    .locals 4
    .param p1, "recorderAddress"    # I
    .param p2, "result"    # I

    #@0
    .prologue
    .line 1856
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 1857
    :try_start_0
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mRecordListenerRecord:Lcom/android/server/hdmi/HdmiControlService$HdmiRecordListenerRecord;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    if-eqz v1, :cond_0

    #@7
    .line 1859
    :try_start_1
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mRecordListenerRecord:Lcom/android/server/hdmi/HdmiControlService$HdmiRecordListenerRecord;

    #@9
    invoke-static {v1}, Lcom/android/server/hdmi/HdmiControlService$HdmiRecordListenerRecord;->-get0(Lcom/android/server/hdmi/HdmiControlService$HdmiRecordListenerRecord;)Landroid/hardware/hdmi/IHdmiRecordListener;

    #@c
    move-result-object v1

    #@d
    invoke-interface {v1, p1, p2}, Landroid/hardware/hdmi/IHdmiRecordListener;->onTimerRecordingResult(II)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@10
    :cond_0
    :goto_0
    monitor-exit v2

    #@11
    .line 1855
    return-void

    #@12
    .line 1860
    :catch_0
    move-exception v0

    #@13
    .line 1861
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string/jumbo v1, "HdmiControlService"

    #@16
    const-string/jumbo v3, "Failed to call onTimerRecordingResult."

    #@19
    invoke-static {v1, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@1c
    goto :goto_0

    #@1d
    .line 1856
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    #@1e
    monitor-exit v2

    #@1f
    throw v1
.end method

.method invokeVendorCommandListenersOnControlStateChanged(ZI)Z
    .locals 6
    .param p1, "enabled"    # Z
    .param p2, "reason"    # I

    #@0
    .prologue
    .line 2124
    iget-object v4, p0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v4

    #@3
    .line 2125
    :try_start_0
    iget-object v3, p0, Lcom/android/server/hdmi/HdmiControlService;->mVendorCommandListenerRecords:Ljava/util/ArrayList;

    #@5
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    move-result v3

    #@9
    if-eqz v3, :cond_0

    #@b
    .line 2126
    const/4 v3, 0x0

    #@c
    monitor-exit v4

    #@d
    return v3

    #@e
    .line 2128
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/android/server/hdmi/HdmiControlService;->mVendorCommandListenerRecords:Ljava/util/ArrayList;

    #@10
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@13
    move-result-object v2

    #@14
    .local v2, "record$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@17
    move-result v3

    #@18
    if-eqz v3, :cond_1

    #@1a
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1d
    move-result-object v1

    #@1e
    check-cast v1, Lcom/android/server/hdmi/HdmiControlService$VendorCommandListenerRecord;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@20
    .line 2130
    .local v1, "record":Lcom/android/server/hdmi/HdmiControlService$VendorCommandListenerRecord;
    :try_start_2
    invoke-static {v1}, Lcom/android/server/hdmi/HdmiControlService$VendorCommandListenerRecord;->-get1(Lcom/android/server/hdmi/HdmiControlService$VendorCommandListenerRecord;)Landroid/hardware/hdmi/IHdmiVendorCommandListener;

    #@23
    move-result-object v3

    #@24
    invoke-interface {v3, p1, p2}, Landroid/hardware/hdmi/IHdmiVendorCommandListener;->onControlStateChanged(ZI)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@27
    goto :goto_0

    #@28
    .line 2131
    :catch_0
    move-exception v0

    #@29
    .line 2132
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_3
    const-string/jumbo v3, "HdmiControlService"

    #@2c
    const-string/jumbo v5, "Failed to notify control-state-changed to vendor handler"

    #@2f
    invoke-static {v3, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@32
    goto :goto_0

    #@33
    .line 2124
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "record":Lcom/android/server/hdmi/HdmiControlService$VendorCommandListenerRecord;
    .end local v2    # "record$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    #@34
    monitor-exit v4

    #@35
    throw v3

    #@36
    .line 2135
    .restart local v2    # "record$iterator":Ljava/util/Iterator;
    :cond_1
    const/4 v3, 0x1

    #@37
    monitor-exit v4

    #@38
    return v3
.end method

.method invokeVendorCommandListenersOnReceived(III[BZ)Z
    .locals 6
    .param p1, "deviceType"    # I
    .param p2, "srcAddress"    # I
    .param p3, "destAddress"    # I
    .param p4, "params"    # [B
    .param p5, "hasVendorId"    # Z

    #@0
    .prologue
    .line 2105
    iget-object v4, p0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v4

    #@3
    .line 2106
    :try_start_0
    iget-object v3, p0, Lcom/android/server/hdmi/HdmiControlService;->mVendorCommandListenerRecords:Ljava/util/ArrayList;

    #@5
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    move-result v3

    #@9
    if-eqz v3, :cond_0

    #@b
    .line 2107
    const/4 v3, 0x0

    #@c
    monitor-exit v4

    #@d
    return v3

    #@e
    .line 2109
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/android/server/hdmi/HdmiControlService;->mVendorCommandListenerRecords:Ljava/util/ArrayList;

    #@10
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@13
    move-result-object v2

    #@14
    .local v2, "record$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@17
    move-result v3

    #@18
    if-eqz v3, :cond_2

    #@1a
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1d
    move-result-object v1

    #@1e
    check-cast v1, Lcom/android/server/hdmi/HdmiControlService$VendorCommandListenerRecord;

    #@20
    .line 2110
    .local v1, "record":Lcom/android/server/hdmi/HdmiControlService$VendorCommandListenerRecord;
    invoke-static {v1}, Lcom/android/server/hdmi/HdmiControlService$VendorCommandListenerRecord;->-get0(Lcom/android/server/hdmi/HdmiControlService$VendorCommandListenerRecord;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@23
    move-result v3

    #@24
    if-ne v3, p1, :cond_1

    #@26
    .line 2114
    :try_start_2
    invoke-static {v1}, Lcom/android/server/hdmi/HdmiControlService$VendorCommandListenerRecord;->-get1(Lcom/android/server/hdmi/HdmiControlService$VendorCommandListenerRecord;)Landroid/hardware/hdmi/IHdmiVendorCommandListener;

    #@29
    move-result-object v3

    #@2a
    invoke-interface {v3, p2, p3, p4, p5}, Landroid/hardware/hdmi/IHdmiVendorCommandListener;->onReceived(II[BZ)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@2d
    goto :goto_0

    #@2e
    .line 2115
    :catch_0
    move-exception v0

    #@2f
    .line 2116
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_3
    const-string/jumbo v3, "HdmiControlService"

    #@32
    const-string/jumbo v5, "Failed to notify vendor command reception"

    #@35
    invoke-static {v3, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@38
    goto :goto_0

    #@39
    .line 2105
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "record":Lcom/android/server/hdmi/HdmiControlService$VendorCommandListenerRecord;
    .end local v2    # "record$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    #@3a
    monitor-exit v4

    #@3b
    throw v3

    #@3c
    .line 2119
    .restart local v2    # "record$iterator":Ljava/util/Iterator;
    :cond_2
    const/4 v3, 0x1

    #@3d
    monitor-exit v4

    #@3e
    return v3
.end method

.method isConnected(I)Z
    .locals 1
    .param p1, "portId"    # I
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    #@0
    .prologue
    .line 793
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    #@3
    .line 794
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;

    #@5
    invoke-virtual {v0, p1}, Lcom/android/server/hdmi/HdmiCecController;->isConnected(I)Z

    #@8
    move-result v0

    #@9
    return v0
.end method

.method isConnectedToArcPort(I)Z
    .locals 2
    .param p1, "physicalAddress"    # I

    #@0
    .prologue
    .line 784
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiControlService;->pathToPortId(I)I

    #@3
    move-result v0

    #@4
    .line 785
    .local v0, "portId":I
    const/4 v1, -0x1

    #@5
    if-eq v0, v1, :cond_0

    #@7
    .line 786
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mPortInfoMap:Lcom/android/server/hdmi/UnmodifiableSparseArray;

    #@9
    invoke-virtual {v1, v0}, Lcom/android/server/hdmi/UnmodifiableSparseArray;->get(I)Ljava/lang/Object;

    #@c
    move-result-object v1

    #@d
    check-cast v1, Landroid/hardware/hdmi/HdmiPortInfo;

    #@f
    invoke-virtual {v1}, Landroid/hardware/hdmi/HdmiPortInfo;->isArcSupported()Z

    #@12
    move-result v1

    #@13
    return v1

    #@14
    .line 788
    :cond_0
    const/4 v1, 0x0

    #@15
    return v1
.end method

.method isControlEnabled()Z
    .locals 2

    #@0
    .prologue
    .line 1937
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    .line 1938
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiControlEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    monitor-exit v0

    #@6
    return v1

    #@7
    .line 1937
    :catchall_0
    move-exception v1

    #@8
    monitor-exit v0

    #@9
    throw v1
.end method

.method isMhlInputChangeEnabled()Z
    .locals 2

    #@0
    .prologue
    .line 2303
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    .line 2304
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mMhlInputChangeEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    monitor-exit v0

    #@6
    return v1

    #@7
    .line 2303
    :catchall_0
    move-exception v1

    #@8
    monitor-exit v0

    #@9
    throw v1
.end method

.method isPowerOnOrTransient()Z
    .locals 4
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 1950
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    #@5
    .line 1951
    iget v2, p0, Lcom/android/server/hdmi/HdmiControlService;->mPowerStatus:I

    #@7
    if-eqz v2, :cond_0

    #@9
    .line 1952
    iget v2, p0, Lcom/android/server/hdmi/HdmiControlService;->mPowerStatus:I

    #@b
    const/4 v3, 0x2

    #@c
    if-ne v2, v3, :cond_1

    #@e
    .line 1951
    :cond_0
    :goto_0
    return v0

    #@f
    :cond_1
    move v0, v1

    #@10
    .line 1952
    goto :goto_0
.end method

.method isPowerStandby()Z
    .locals 2
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 1964
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    #@4
    .line 1965
    iget v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mPowerStatus:I

    #@6
    if-ne v1, v0, :cond_0

    #@8
    :goto_0
    return v0

    #@9
    :cond_0
    const/4 v0, 0x0

    #@a
    goto :goto_0
.end method

.method isPowerStandbyOrTransient()Z
    .locals 3
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 1957
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    #@4
    .line 1958
    iget v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mPowerStatus:I

    #@6
    if-eq v1, v0, :cond_0

    #@8
    .line 1959
    iget v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mPowerStatus:I

    #@a
    const/4 v2, 0x3

    #@b
    if-ne v1, v2, :cond_1

    #@d
    .line 1958
    :cond_0
    :goto_0
    return v0

    #@e
    .line 1959
    :cond_1
    const/4 v0, 0x0

    #@f
    goto :goto_0
.end method

.method isProhibitMode()Z
    .locals 2

    #@0
    .prologue
    .line 2167
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    .line 2168
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mProhibitMode:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    monitor-exit v0

    #@6
    return v1

    #@7
    .line 2167
    :catchall_0
    move-exception v1

    #@8
    monitor-exit v0

    #@9
    throw v1
.end method

.method isTvDevice()Z
    .locals 2

    #@0
    .prologue
    .line 1920
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mLocalDevices:Ljava/util/List;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@6
    move-result-object v1

    #@7
    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    #@a
    move-result v0

    #@b
    return v0
.end method

.method isTvDeviceEnabled()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1924
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->isTvDevice()Z

    #@4
    move-result v1

    #@5
    if-eqz v1, :cond_0

    #@7
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiControlService;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    #@a
    move-result-object v1

    #@b
    if-eqz v1, :cond_0

    #@d
    const/4 v0, 0x1

    #@e
    :cond_0
    return v0
.end method

.method isValidPortId(I)Z
    .locals 1
    .param p1, "portId"    # I

    #@0
    .prologue
    .line 721
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiControlService;->getPortInfo(I)Landroid/hardware/hdmi/HdmiPortInfo;

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

.method maySendFeatureAbortCommand(Lcom/android/server/hdmi/HdmiCecMessage;I)V
    .locals 1
    .param p1, "command"    # Lcom/android/server/hdmi/HdmiCecMessage;
    .param p2, "reason"    # I
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    #@0
    .prologue
    .line 844
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    #@3
    .line 845
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;

    #@5
    invoke-virtual {v0, p1, p2}, Lcom/android/server/hdmi/HdmiCecController;->maySendFeatureAbortCommand(Lcom/android/server/hdmi/HdmiCecMessage;I)V

    #@8
    .line 843
    return-void
.end method

.method public onBootPhase(I)V
    .locals 2
    .param p1, "phase"    # I

    #@0
    .prologue
    .line 429
    const/16 v0, 0x1f4

    #@2
    if-ne p1, v0, :cond_0

    #@4
    .line 430
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->getContext()Landroid/content/Context;

    #@7
    move-result-object v0

    #@8
    .line 431
    const-string/jumbo v1, "tv_input"

    #@b
    .line 430
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@e
    move-result-object v0

    #@f
    check-cast v0, Landroid/media/tv/TvInputManager;

    #@11
    iput-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mTvInputManager:Landroid/media/tv/TvInputManager;

    #@13
    .line 432
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->getContext()Landroid/content/Context;

    #@16
    move-result-object v0

    #@17
    const-string/jumbo v1, "power"

    #@1a
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@1d
    move-result-object v0

    #@1e
    check-cast v0, Landroid/os/PowerManager;

    #@20
    iput-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mPowerManager:Landroid/os/PowerManager;

    #@22
    .line 428
    :cond_0
    return-void
.end method

.method onHotplug(IZ)V
    .locals 7
    .param p1, "portId"    # I
    .param p2, "connected"    # Z
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    #@0
    .prologue
    .line 895
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    #@3
    .line 897
    if-eqz p2, :cond_0

    #@5
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->isTvDevice()Z

    #@8
    move-result v6

    #@9
    if-eqz v6, :cond_1

    #@b
    .line 910
    :cond_0
    :goto_0
    iget-object v6, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;

    #@d
    invoke-virtual {v6}, Lcom/android/server/hdmi/HdmiCecController;->getLocalDeviceList()Ljava/util/List;

    #@10
    move-result-object v6

    #@11
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@14
    move-result-object v1

    #@15
    .local v1, "device$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@18
    move-result v6

    #@19
    if-eqz v6, :cond_4

    #@1b
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1e
    move-result-object v0

    #@1f
    check-cast v0, Lcom/android/server/hdmi/HdmiCecLocalDevice;

    #@21
    .line 911
    .local v0, "device":Lcom/android/server/hdmi/HdmiCecLocalDevice;
    invoke-virtual {v0, p1, p2}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->onHotplug(IZ)V

    #@24
    goto :goto_1

    #@25
    .line 898
    .end local v0    # "device":Lcom/android/server/hdmi/HdmiCecLocalDevice;
    .end local v1    # "device$iterator":Ljava/util/Iterator;
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    #@27
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    #@2a
    .line 899
    .local v3, "localDevices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/hdmi/HdmiCecLocalDevice;>;"
    iget-object v6, p0, Lcom/android/server/hdmi/HdmiControlService;->mLocalDevices:Ljava/util/List;

    #@2c
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@2f
    move-result-object v5

    #@30
    .local v5, "type$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    #@33
    move-result v6

    #@34
    if-eqz v6, :cond_3

    #@36
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@39
    move-result-object v6

    #@3a
    check-cast v6, Ljava/lang/Integer;

    #@3c
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    #@3f
    move-result v4

    #@40
    .line 900
    .local v4, "type":I
    iget-object v6, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;

    #@42
    invoke-virtual {v6, v4}, Lcom/android/server/hdmi/HdmiCecController;->getLocalDevice(I)Lcom/android/server/hdmi/HdmiCecLocalDevice;

    #@45
    move-result-object v2

    #@46
    .line 901
    .local v2, "localDevice":Lcom/android/server/hdmi/HdmiCecLocalDevice;
    if-nez v2, :cond_2

    #@48
    .line 902
    invoke-static {p0, v4}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->create(Lcom/android/server/hdmi/HdmiControlService;I)Lcom/android/server/hdmi/HdmiCecLocalDevice;

    #@4b
    move-result-object v2

    #@4c
    .line 903
    invoke-virtual {v2}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->init()V

    #@4f
    .line 905
    :cond_2
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@52
    goto :goto_2

    #@53
    .line 907
    .end local v2    # "localDevice":Lcom/android/server/hdmi/HdmiCecLocalDevice;
    .end local v4    # "type":I
    :cond_3
    const/4 v6, 0x4

    #@54
    invoke-direct {p0, v3, v6}, Lcom/android/server/hdmi/HdmiControlService;->allocateLogicalAddress(Ljava/util/ArrayList;I)V

    #@57
    goto :goto_0

    #@58
    .line 913
    .end local v3    # "localDevices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/hdmi/HdmiCecLocalDevice;>;"
    .end local v5    # "type$iterator":Ljava/util/Iterator;
    .restart local v1    # "device$iterator":Ljava/util/Iterator;
    :cond_4
    invoke-direct {p0, p1, p2}, Lcom/android/server/hdmi/HdmiControlService;->announceHotplugEvent(IZ)V

    #@5b
    .line 894
    return-void
.end method

.method public onStart()V
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    const/4 v3, 0x1

    #@2
    .line 387
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mIoThread:Landroid/os/HandlerThread;

    #@4
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    #@7
    .line 388
    const/4 v1, 0x2

    #@8
    iput v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mPowerStatus:I

    #@a
    .line 389
    const/4 v1, 0x0

    #@b
    iput-boolean v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mProhibitMode:Z

    #@d
    .line 390
    const-string/jumbo v1, "hdmi_control_enabled"

    #@10
    invoke-virtual {p0, v1, v3}, Lcom/android/server/hdmi/HdmiControlService;->readBooleanSetting(Ljava/lang/String;Z)Z

    #@13
    move-result v1

    #@14
    iput-boolean v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiControlEnabled:Z

    #@16
    .line 391
    const-string/jumbo v1, "mhl_input_switching_enabled"

    #@19
    invoke-virtual {p0, v1, v3}, Lcom/android/server/hdmi/HdmiControlService;->readBooleanSetting(Ljava/lang/String;Z)Z

    #@1c
    move-result v1

    #@1d
    iput-boolean v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mMhlInputChangeEnabled:Z

    #@1f
    .line 393
    invoke-static {p0}, Lcom/android/server/hdmi/HdmiCecController;->create(Lcom/android/server/hdmi/HdmiControlService;)Lcom/android/server/hdmi/HdmiCecController;

    #@22
    move-result-object v1

    #@23
    iput-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;

    #@25
    .line 394
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;

    #@27
    if-eqz v1, :cond_3

    #@29
    .line 395
    iget-boolean v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiControlEnabled:Z

    #@2b
    if-eqz v1, :cond_0

    #@2d
    .line 396
    invoke-direct {p0, v3}, Lcom/android/server/hdmi/HdmiControlService;->initializeCec(I)V

    #@30
    .line 403
    :cond_0
    invoke-static {p0}, Lcom/android/server/hdmi/HdmiMhlControllerStub;->create(Lcom/android/server/hdmi/HdmiControlService;)Lcom/android/server/hdmi/HdmiMhlControllerStub;

    #@33
    move-result-object v1

    #@34
    iput-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mMhlController:Lcom/android/server/hdmi/HdmiMhlControllerStub;

    #@36
    .line 404
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mMhlController:Lcom/android/server/hdmi/HdmiMhlControllerStub;

    #@38
    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiMhlControllerStub;->isReady()Z

    #@3b
    move-result v1

    #@3c
    if-nez v1, :cond_1

    #@3e
    .line 405
    const-string/jumbo v1, "HdmiControlService"

    #@41
    const-string/jumbo v2, "Device does not support MHL-control."

    #@44
    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@47
    .line 407
    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    #@4a
    move-result-object v1

    #@4b
    iput-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mMhlDevices:Ljava/util/List;

    #@4d
    .line 409
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiControlService;->initPortInfo()V

    #@50
    .line 410
    new-instance v1, Lcom/android/server/hdmi/HdmiCecMessageValidator;

    #@52
    invoke-direct {v1, p0}, Lcom/android/server/hdmi/HdmiCecMessageValidator;-><init>(Lcom/android/server/hdmi/HdmiControlService;)V

    #@55
    iput-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mMessageValidator:Lcom/android/server/hdmi/HdmiCecMessageValidator;

    #@57
    .line 411
    const-string/jumbo v1, "hdmi_control"

    #@5a
    new-instance v2, Lcom/android/server/hdmi/HdmiControlService$BinderService;

    #@5c
    invoke-direct {v2, p0, v4}, Lcom/android/server/hdmi/HdmiControlService$BinderService;-><init>(Lcom/android/server/hdmi/HdmiControlService;Lcom/android/server/hdmi/HdmiControlService$BinderService;)V

    #@5f
    invoke-virtual {p0, v1, v2}, Lcom/android/server/hdmi/HdmiControlService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    #@62
    .line 413
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;

    #@64
    if-eqz v1, :cond_2

    #@66
    .line 415
    new-instance v0, Landroid/content/IntentFilter;

    #@68
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    #@6b
    .line 416
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.intent.action.SCREEN_OFF"

    #@6e
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@71
    .line 417
    const-string/jumbo v1, "android.intent.action.SCREEN_ON"

    #@74
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@77
    .line 418
    const-string/jumbo v1, "android.intent.action.CONFIGURATION_CHANGED"

    #@7a
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@7d
    .line 419
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->getContext()Landroid/content/Context;

    #@80
    move-result-object v1

    #@81
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiControlBroadcastReceiver:Lcom/android/server/hdmi/HdmiControlService$HdmiControlBroadcastReceiver;

    #@83
    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    #@86
    .line 422
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiControlService;->registerContentObserver()V

    #@89
    .line 424
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_2
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mMhlController:Lcom/android/server/hdmi/HdmiMhlControllerStub;

    #@8b
    const/16 v2, 0x68

    #@8d
    invoke-virtual {v1, v2, v3}, Lcom/android/server/hdmi/HdmiMhlControllerStub;->setOption(II)V

    #@90
    .line 386
    return-void

    #@91
    .line 399
    :cond_3
    const-string/jumbo v1, "HdmiControlService"

    #@94
    const-string/jumbo v2, "Device does not support HDMI-CEC."

    #@97
    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@9a
    .line 400
    return-void
.end method

.method pathToPortId(I)I
    .locals 3
    .param p1, "path"    # I

    #@0
    .prologue
    .line 716
    const v1, 0xf000

    #@3
    and-int v0, p1, v1

    #@5
    .line 717
    .local v0, "portAddress":I
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mPortIdMap:Lcom/android/server/hdmi/UnmodifiableSparseIntArray;

    #@7
    const/4 v2, -0x1

    #@8
    invoke-virtual {v1, v0, v2}, Lcom/android/server/hdmi/UnmodifiableSparseIntArray;->get(II)I

    #@b
    move-result v1

    #@c
    return v1
.end method

.method pollDevices(Lcom/android/server/hdmi/HdmiControlService$DevicePollingCallback;III)V
    .locals 2
    .param p1, "callback"    # Lcom/android/server/hdmi/HdmiControlService$DevicePollingCallback;
    .param p2, "sourceAddress"    # I
    .param p3, "pickStrategy"    # I
    .param p4, "retryCount"    # I
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    #@0
    .prologue
    .line 929
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    #@3
    .line 930
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;

    #@5
    invoke-direct {p0, p3}, Lcom/android/server/hdmi/HdmiControlService;->checkPollStrategy(I)I

    #@8
    move-result v1

    #@9
    invoke-virtual {v0, p1, p2, v1, p4}, Lcom/android/server/hdmi/HdmiCecController;->pollDevices(Lcom/android/server/hdmi/HdmiControlService$DevicePollingCallback;III)V

    #@c
    .line 928
    return-void
.end method

.method portIdToPath(I)I
    .locals 4
    .param p1, "portId"    # I

    #@0
    .prologue
    .line 701
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiControlService;->getPortInfo(I)Landroid/hardware/hdmi/HdmiPortInfo;

    #@3
    move-result-object v0

    #@4
    .line 702
    .local v0, "portInfo":Landroid/hardware/hdmi/HdmiPortInfo;
    if-nez v0, :cond_0

    #@6
    .line 703
    const-string/jumbo v1, "HdmiControlService"

    #@9
    new-instance v2, Ljava/lang/StringBuilder;

    #@b
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    const-string/jumbo v3, "Cannot find the port info: "

    #@11
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v2

    #@15
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@18
    move-result-object v2

    #@19
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c
    move-result-object v2

    #@1d
    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@20
    .line 704
    const v1, 0xffff

    #@23
    return v1

    #@24
    .line 706
    :cond_0
    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiPortInfo;->getAddress()I

    #@27
    move-result v1

    #@28
    return v1
.end method

.method readBooleanSetting(Ljava/lang/String;Z)Z
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defVal"    # Z

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 541
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->getContext()Landroid/content/Context;

    #@4
    move-result-object v2

    #@5
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@8
    move-result-object v0

    #@9
    .line 542
    .local v0, "cr":Landroid/content/ContentResolver;
    invoke-static {p2}, Lcom/android/server/hdmi/HdmiControlService;->toInt(Z)I

    #@c
    move-result v2

    #@d
    invoke-static {v0, p1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    #@10
    move-result v2

    #@11
    if-ne v2, v1, :cond_0

    #@13
    :goto_0
    return v1

    #@14
    :cond_0
    const/4 v1, 0x0

    #@15
    goto :goto_0
.end method

.method registerTvInputCallback(Landroid/media/tv/TvInputManager$TvInputCallback;)V
    .locals 2
    .param p1, "callback"    # Landroid/media/tv/TvInputManager$TvInputCallback;

    #@0
    .prologue
    .line 441
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mTvInputManager:Landroid/media/tv/TvInputManager;

    #@2
    if-nez v0, :cond_0

    #@4
    return-void

    #@5
    .line 442
    :cond_0
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mTvInputManager:Landroid/media/tv/TvInputManager;

    #@7
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mHandler:Landroid/os/Handler;

    #@9
    invoke-virtual {v0, p1, v1}, Landroid/media/tv/TvInputManager;->registerCallback(Landroid/media/tv/TvInputManager$TvInputCallback;Landroid/os/Handler;)V

    #@c
    .line 440
    return-void
.end method

.method runOnServiceThread(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "runnable"    # Ljava/lang/Runnable;

    #@0
    .prologue
    .line 798
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mHandler:Landroid/os/Handler;

    #@2
    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@5
    .line 797
    return-void
.end method

.method runOnServiceThreadAtFrontOfQueue(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "runnable"    # Ljava/lang/Runnable;

    #@0
    .prologue
    .line 802
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mHandler:Landroid/os/Handler;

    #@2
    invoke-virtual {v0, p1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    #@5
    .line 801
    return-void
.end method

.method sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V
    .locals 1
    .param p1, "command"    # Lcom/android/server/hdmi/HdmiCecMessage;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    #@0
    .prologue
    .line 832
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    #@3
    .line 833
    const/4 v0, 0x0

    #@4
    invoke-virtual {p0, p1, v0}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V

    #@7
    .line 831
    return-void
.end method

.method sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V
    .locals 3
    .param p1, "command"    # Lcom/android/server/hdmi/HdmiCecMessage;
    .param p2, "callback"    # Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 819
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    #@4
    .line 820
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mMessageValidator:Lcom/android/server/hdmi/HdmiCecMessageValidator;

    #@6
    invoke-virtual {v0, p1}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isValid(Lcom/android/server/hdmi/HdmiCecMessage;)I

    #@9
    move-result v0

    #@a
    if-nez v0, :cond_1

    #@c
    .line 821
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;

    #@e
    invoke-virtual {v0, p1, p2}, Lcom/android/server/hdmi/HdmiCecController;->sendCommand(Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V

    #@11
    .line 818
    :cond_0
    :goto_0
    return-void

    #@12
    .line 823
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    #@14
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@17
    const-string/jumbo v1, "Invalid message type:"

    #@1a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v0

    #@1e
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v0

    #@22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@25
    move-result-object v0

    #@26
    new-array v1, v2, [Ljava/lang/Object;

    #@28
    invoke-static {v0, v1}, Lcom/android/server/hdmi/HdmiLogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    #@2b
    .line 824
    if-eqz p2, :cond_0

    #@2d
    .line 825
    const/4 v0, 0x3

    #@2e
    invoke-interface {p2, v0}, Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;->onSendCompleted(I)V

    #@31
    goto :goto_0
.end method

.method setActivePortId(I)V
    .locals 1
    .param p1, "portId"    # I
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    #@0
    .prologue
    .line 2238
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    #@3
    .line 2239
    iput p1, p0, Lcom/android/server/hdmi/HdmiControlService;->mActivePortId:I

    #@5
    .line 2243
    const/4 v0, -0x1

    #@6
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiControlService;->setLastInputForMhl(I)V

    #@9
    .line 2237
    return-void
.end method

.method setAudioReturnChannel(IZ)V
    .locals 1
    .param p1, "portId"    # I
    .param p2, "enabled"    # Z

    #@0
    .prologue
    .line 868
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;

    #@2
    invoke-virtual {v0, p1, p2}, Lcom/android/server/hdmi/HdmiCecController;->setAudioReturnChannel(IZ)V

    #@5
    .line 867
    return-void
.end method

.method setAudioStatus(ZI)V
    .locals 4
    .param p1, "mute"    # Z
    .param p2, "volume"    # I

    #@0
    .prologue
    const/4 v3, 0x3

    #@1
    .line 956
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->getAudioManager()Landroid/media/AudioManager;

    #@4
    move-result-object v0

    #@5
    .line 957
    .local v0, "audioManager":Landroid/media/AudioManager;
    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->isStreamMute(I)Z

    #@8
    move-result v1

    #@9
    .line 958
    .local v1, "muted":Z
    if-eqz p1, :cond_1

    #@b
    .line 959
    if-nez v1, :cond_0

    #@d
    .line 960
    const/4 v2, 0x1

    #@e
    invoke-virtual {v0, v3, v2}, Landroid/media/AudioManager;->setStreamMute(IZ)V

    #@11
    .line 955
    :cond_0
    :goto_0
    return-void

    #@12
    .line 963
    :cond_1
    if-eqz v1, :cond_2

    #@14
    .line 964
    const/4 v2, 0x0

    #@15
    invoke-virtual {v0, v3, v2}, Landroid/media/AudioManager;->setStreamMute(IZ)V

    #@18
    .line 969
    :cond_2
    const/16 v2, 0x101

    #@1a
    .line 968
    invoke-virtual {v0, v3, p2, v2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    #@1d
    goto :goto_0
.end method

.method setCecOption(II)V
    .locals 1
    .param p1, "key"    # I
    .param p2, "value"    # I
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    #@0
    .prologue
    .line 2180
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    #@3
    .line 2181
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;

    #@5
    invoke-virtual {v0, p1, p2}, Lcom/android/server/hdmi/HdmiCecController;->setOption(II)V

    #@8
    .line 2179
    return-void
.end method

.method setControlEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    #@0
    .prologue
    .line 2186
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    #@3
    .line 2188
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    #@5
    monitor-enter v0

    #@6
    .line 2189
    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiControlEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    monitor-exit v0

    #@9
    .line 2192
    if-eqz p1, :cond_0

    #@b
    .line 2193
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiControlService;->enableHdmiControlService()V

    #@e
    .line 2194
    return-void

    #@f
    .line 2188
    :catchall_0
    move-exception v1

    #@10
    monitor-exit v0

    #@11
    throw v1

    #@12
    .line 2197
    :cond_0
    const/4 v0, 0x0

    #@13
    .line 2198
    const/4 v1, 0x1

    #@14
    .line 2197
    invoke-virtual {p0, v0, v1}, Lcom/android/server/hdmi/HdmiControlService;->invokeVendorCommandListenersOnControlStateChanged(ZI)Z

    #@17
    .line 2201
    new-instance v0, Lcom/android/server/hdmi/HdmiControlService$4;

    #@19
    invoke-direct {v0, p0}, Lcom/android/server/hdmi/HdmiControlService$4;-><init>(Lcom/android/server/hdmi/HdmiControlService;)V

    #@1c
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiControlService;->runOnServiceThread(Ljava/lang/Runnable;)V

    #@1f
    .line 2207
    return-void
.end method

.method setLastInputForMhl(I)V
    .locals 0
    .param p1, "portId"    # I
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    #@0
    .prologue
    .line 2248
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    #@3
    .line 2249
    iput p1, p0, Lcom/android/server/hdmi/HdmiControlService;->mLastInputMhl:I

    #@5
    .line 2247
    return-void
.end method

.method setMhlInputChangeEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    #@0
    .prologue
    .line 2295
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mMhlController:Lcom/android/server/hdmi/HdmiMhlControllerStub;

    #@2
    invoke-static {p1}, Lcom/android/server/hdmi/HdmiControlService;->toInt(Z)I

    #@5
    move-result v1

    #@6
    const/16 v2, 0x65

    #@8
    invoke-virtual {v0, v2, v1}, Lcom/android/server/hdmi/HdmiMhlControllerStub;->setOption(II)V

    #@b
    .line 2297
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    #@d
    monitor-enter v0

    #@e
    .line 2298
    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/hdmi/HdmiControlService;->mMhlInputChangeEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    monitor-exit v0

    #@11
    .line 2294
    return-void

    #@12
    .line 2297
    :catchall_0
    move-exception v1

    #@13
    monitor-exit v0

    #@14
    throw v1
.end method

.method setProhibitMode(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    #@0
    .prologue
    .line 2173
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    .line 2174
    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/hdmi/HdmiControlService;->mProhibitMode:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    monitor-exit v0

    #@6
    .line 2172
    return-void

    #@7
    .line 2173
    :catchall_0
    move-exception v1

    #@8
    monitor-exit v0

    #@9
    throw v1
.end method

.method standby()V
    .locals 5
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    #@0
    .prologue
    .line 1979
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    #@3
    .line 1980
    const/4 v0, 0x1

    #@4
    iput-boolean v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mStandbyMessageReceived:Z

    #@6
    .line 1981
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mPowerManager:Landroid/os/PowerManager;

    #@8
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@b
    move-result-wide v2

    #@c
    const/4 v1, 0x5

    #@d
    const/4 v4, 0x0

    #@e
    invoke-virtual {v0, v2, v3, v1, v4}, Landroid/os/PowerManager;->goToSleep(JII)V

    #@11
    .line 1978
    return-void
.end method

.method unregisterTvInputCallback(Landroid/media/tv/TvInputManager$TvInputCallback;)V
    .locals 1
    .param p1, "callback"    # Landroid/media/tv/TvInputManager$TvInputCallback;

    #@0
    .prologue
    .line 446
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mTvInputManager:Landroid/media/tv/TvInputManager;

    #@2
    if-nez v0, :cond_0

    #@4
    return-void

    #@5
    .line 447
    :cond_0
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mTvInputManager:Landroid/media/tv/TvInputManager;

    #@7
    invoke-virtual {v0, p1}, Landroid/media/tv/TvInputManager;->unregisterCallback(Landroid/media/tv/TvInputManager$TvInputCallback;)V

    #@a
    .line 445
    return-void
.end method

.method wakeUp()V
    .locals 4
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    #@0
    .prologue
    .line 1970
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    #@3
    .line 1971
    const/4 v0, 0x1

    #@4
    iput-boolean v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mWakeUpMessageReceived:Z

    #@6
    .line 1972
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mPowerManager:Landroid/os/PowerManager;

    #@8
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@b
    move-result-wide v2

    #@c
    const-string/jumbo v1, "android.server.hdmi:WAKE"

    #@f
    invoke-virtual {v0, v2, v3, v1}, Landroid/os/PowerManager;->wakeUp(JLjava/lang/String;)V

    #@12
    .line 1969
    return-void
.end method

.method writeBooleanSetting(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z

    #@0
    .prologue
    .line 546
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->getContext()Landroid/content/Context;

    #@3
    move-result-object v1

    #@4
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@7
    move-result-object v0

    #@8
    .line 547
    .local v0, "cr":Landroid/content/ContentResolver;
    invoke-static {p2}, Lcom/android/server/hdmi/HdmiControlService;->toInt(Z)I

    #@b
    move-result v1

    #@c
    invoke-static {v0, p1, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    #@f
    .line 545
    return-void
.end method

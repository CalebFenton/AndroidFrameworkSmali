.class public final Lcom/android/internal/telephony/RIL;
.super Lcom/android/internal/telephony/BaseCommands;
.source "RIL.java"

# interfaces
.implements Lcom/android/internal/telephony/CommandsInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/RIL$RILSender;,
        Lcom/android/internal/telephony/RIL$RILReceiver;,
        Lcom/android/internal/telephony/RIL$1;,
        Lcom/android/internal/telephony/RIL$2;
    }
.end annotation


# static fields
.field private static final CDMA_BROADCAST_SMS_NO_OF_SERVICE_CATEGORIES:I = 0x1f

.field private static final CDMA_BSI_NO_OF_INTS_STRUCT:I = 0x3

.field private static final DEFAULT_WAKE_LOCK_TIMEOUT:I = 0xea60

.field static final EVENT_SEND:I = 0x1

.field static final EVENT_WAKE_LOCK_TIMEOUT:I = 0x2

.field static final RADIO_SCREEN_OFF:I = 0x0

.field static final RADIO_SCREEN_ON:I = 0x1

.field static final RADIO_SCREEN_UNSET:I = -0x1

.field static final RESPONSE_SOLICITED:I = 0x0

.field static final RESPONSE_UNSOLICITED:I = 0x1

.field static final RILJ_LOGD:Z = true

.field static final RILJ_LOGV:Z = false

.field static final RILJ_LOG_TAG:Ljava/lang/String; = "RILJ"

.field static final RIL_MAX_COMMAND_BYTES:I = 0x2000

.field static final SOCKET_NAME_RIL:[Ljava/lang/String;

.field static final SOCKET_OPEN_RETRY_MILLIS:I = 0xfa0


# instance fields
.field private final mBatteryStateListener:Landroid/content/BroadcastReceiver;

.field mDefaultDisplay:Landroid/view/Display;

.field mDefaultDisplayState:I

.field private final mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

.field private mInstanceId:Ljava/lang/Integer;

.field mIsDevicePlugged:Z

.field mLastNITZTimeInfo:Ljava/lang/Object;

.field mRadioScreenState:I

.field mReceiver:Lcom/android/internal/telephony/RIL$RILReceiver;

.field mReceiverThread:Ljava/lang/Thread;

.field mRequestList:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/internal/telephony/RILRequest;",
            ">;"
        }
    .end annotation
.end field

.field mSender:Lcom/android/internal/telephony/RIL$RILSender;

.field mSenderThread:Landroid/os/HandlerThread;

.field mSocket:Landroid/net/LocalSocket;

.field mTestingEmergencyCall:Ljava/util/concurrent/atomic/AtomicBoolean;

.field mWakeLock:Landroid/os/PowerManager$WakeLock;

.field mWakeLockCount:I

.field final mWakeLockTimeout:I


# direct methods
.method static synthetic -get0(Lcom/android/internal/telephony/RIL;)Ljava/lang/Integer;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mInstanceId:Ljava/lang/Integer;

    #@2
    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/internal/telephony/RIL;)Z
    .locals 1

    #@0
    invoke-direct {p0}, Lcom/android/internal/telephony/RIL;->clearWakeLock()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap1(Lcom/android/internal/telephony/RIL;I)Lcom/android/internal/telephony/RILRequest;
    .locals 1
    .param p1, "serial"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->findAndRemoveRequestFromList(I)Lcom/android/internal/telephony/RILRequest;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap2(Ljava/io/InputStream;[B)I
    .locals 1
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "buffer"    # [B

    #@0
    .prologue
    invoke-static {p0, p1}, Lcom/android/internal/telephony/RIL;->readRilMessage(Ljava/io/InputStream;[B)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap3(Lcom/android/internal/telephony/RIL;IZ)V
    .locals 0
    .param p1, "error"    # I
    .param p2, "loggable"    # Z

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RIL;->clearRequestList(IZ)V

    #@3
    return-void
.end method

.method static synthetic -wrap4(Lcom/android/internal/telephony/RIL;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/internal/telephony/RIL;->decrementWakeLock()V

    #@3
    return-void
.end method

.method static synthetic -wrap5(Lcom/android/internal/telephony/RIL;I)V
    .locals 0
    .param p1, "rilVer"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->notifyRegistrantsRilConnectionChanged(I)V

    #@3
    return-void
.end method

.method static synthetic -wrap6(Lcom/android/internal/telephony/RIL;Landroid/os/Parcel;)V
    .locals 0
    .param p1, "p"    # Landroid/os/Parcel;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->processResponse(Landroid/os/Parcel;)V

    #@3
    return-void
.end method

.method static synthetic -wrap7(Lcom/android/internal/telephony/RIL;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/internal/telephony/RIL;->updateScreenState()V

    #@3
    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    .line 284
    const/4 v0, 0x3

    #@1
    new-array v0, v0, [Ljava/lang/String;

    #@3
    const-string/jumbo v1, "rild"

    #@6
    const/4 v2, 0x0

    #@7
    aput-object v1, v0, v2

    #@9
    const-string/jumbo v1, "rild2"

    #@c
    const/4 v2, 0x1

    #@d
    aput-object v1, v0, v2

    #@f
    const-string/jumbo v1, "rild3"

    #@12
    const/4 v2, 0x2

    #@13
    aput-object v1, v0, v2

    #@15
    sput-object v0, Lcom/android/internal/telephony/RIL;->SOCKET_NAME_RIL:[Ljava/lang/String;

    #@17
    .line 231
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "preferredNetworkType"    # I
    .param p3, "cdmaSubscription"    # I

    #@0
    .prologue
    .line 627
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/internal/telephony/RIL;-><init>(Landroid/content/Context;IILjava/lang/Integer;)V

    #@4
    .line 626
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IILjava/lang/Integer;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "preferredNetworkType"    # I
    .param p3, "cdmaSubscription"    # I
    .param p4, "instanceId"    # Ljava/lang/Integer;

    #@0
    .prologue
    .line 632
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/BaseCommands;-><init>(Landroid/content/Context;)V

    #@3
    .line 254
    const/4 v7, 0x0

    #@4
    iput v7, p0, Lcom/android/internal/telephony/RIL;->mDefaultDisplayState:I

    #@6
    .line 255
    const/4 v7, -0x1

    #@7
    iput v7, p0, Lcom/android/internal/telephony/RIL;->mRadioScreenState:I

    #@9
    .line 256
    const/4 v7, 0x0

    #@a
    iput-boolean v7, p0, Lcom/android/internal/telephony/RIL;->mIsDevicePlugged:Z

    #@c
    .line 263
    new-instance v7, Landroid/util/SparseArray;

    #@e
    invoke-direct {v7}, Landroid/util/SparseArray;-><init>()V

    #@11
    iput-object v7, p0, Lcom/android/internal/telephony/RIL;->mRequestList:Landroid/util/SparseArray;

    #@13
    .line 268
    new-instance v7, Ljava/util/concurrent/atomic/AtomicBoolean;

    #@15
    const/4 v8, 0x0

    #@16
    invoke-direct {v7, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    #@19
    iput-object v7, p0, Lcom/android/internal/telephony/RIL;->mTestingEmergencyCall:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@1b
    .line 295
    new-instance v7, Lcom/android/internal/telephony/RIL$1;

    #@1d
    invoke-direct {v7, p0}, Lcom/android/internal/telephony/RIL$1;-><init>(Lcom/android/internal/telephony/RIL;)V

    #@20
    .line 294
    iput-object v7, p0, Lcom/android/internal/telephony/RIL;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    #@22
    .line 314
    new-instance v7, Lcom/android/internal/telephony/RIL$2;

    #@24
    invoke-direct {v7, p0}, Lcom/android/internal/telephony/RIL$2;-><init>(Lcom/android/internal/telephony/RIL;)V

    #@27
    iput-object v7, p0, Lcom/android/internal/telephony/RIL;->mBatteryStateListener:Landroid/content/BroadcastReceiver;

    #@29
    .line 634
    new-instance v7, Ljava/lang/StringBuilder;

    #@2b
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@2e
    const-string/jumbo v8, "RIL(context, preferredNetworkType="

    #@31
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v7

    #@35
    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@38
    move-result-object v7

    #@39
    .line 635
    const-string/jumbo v8, " cdmaSubscription="

    #@3c
    .line 634
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v7

    #@40
    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@43
    move-result-object v7

    #@44
    .line 635
    const-string/jumbo v8, ")"

    #@47
    .line 634
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v7

    #@4b
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4e
    move-result-object v7

    #@4f
    invoke-direct {p0, v7}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    #@52
    .line 638
    iput-object p1, p0, Lcom/android/internal/telephony/RIL;->mContext:Landroid/content/Context;

    #@54
    .line 639
    iput p3, p0, Lcom/android/internal/telephony/RIL;->mCdmaSubscription:I

    #@56
    .line 640
    iput p2, p0, Lcom/android/internal/telephony/RIL;->mPreferredNetworkType:I

    #@58
    .line 641
    const/4 v7, 0x0

    #@59
    iput v7, p0, Lcom/android/internal/telephony/RIL;->mPhoneType:I

    #@5b
    .line 642
    iput-object p4, p0, Lcom/android/internal/telephony/RIL;->mInstanceId:Ljava/lang/Integer;

    #@5d
    .line 644
    const-string/jumbo v7, "power"

    #@60
    invoke-virtual {p1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@63
    move-result-object v5

    #@64
    check-cast v5, Landroid/os/PowerManager;

    #@66
    .line 645
    .local v5, "pm":Landroid/os/PowerManager;
    const-string/jumbo v7, "RILJ"

    #@69
    const/4 v8, 0x1

    #@6a
    invoke-virtual {v5, v8, v7}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    #@6d
    move-result-object v7

    #@6e
    iput-object v7, p0, Lcom/android/internal/telephony/RIL;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    #@70
    .line 646
    iget-object v7, p0, Lcom/android/internal/telephony/RIL;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    #@72
    const/4 v8, 0x0

    #@73
    invoke-virtual {v7, v8}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    #@76
    .line 647
    const-string/jumbo v7, "ro.ril.wake_lock_timeout"

    #@79
    .line 648
    const v8, 0xea60

    #@7c
    .line 647
    invoke-static {v7, v8}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    #@7f
    move-result v7

    #@80
    iput v7, p0, Lcom/android/internal/telephony/RIL;->mWakeLockTimeout:I

    #@82
    .line 649
    const/4 v7, 0x0

    #@83
    iput v7, p0, Lcom/android/internal/telephony/RIL;->mWakeLockCount:I

    #@85
    .line 651
    new-instance v7, Landroid/os/HandlerThread;

    #@87
    new-instance v8, Ljava/lang/StringBuilder;

    #@89
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@8c
    const-string/jumbo v9, "RILSender"

    #@8f
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@92
    move-result-object v8

    #@93
    iget-object v9, p0, Lcom/android/internal/telephony/RIL;->mInstanceId:Ljava/lang/Integer;

    #@95
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@98
    move-result-object v8

    #@99
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9c
    move-result-object v8

    #@9d
    invoke-direct {v7, v8}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    #@a0
    iput-object v7, p0, Lcom/android/internal/telephony/RIL;->mSenderThread:Landroid/os/HandlerThread;

    #@a2
    .line 652
    iget-object v7, p0, Lcom/android/internal/telephony/RIL;->mSenderThread:Landroid/os/HandlerThread;

    #@a4
    invoke-virtual {v7}, Landroid/os/HandlerThread;->start()V

    #@a7
    .line 654
    iget-object v7, p0, Lcom/android/internal/telephony/RIL;->mSenderThread:Landroid/os/HandlerThread;

    #@a9
    invoke-virtual {v7}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    #@ac
    move-result-object v4

    #@ad
    .line 655
    .local v4, "looper":Landroid/os/Looper;
    new-instance v7, Lcom/android/internal/telephony/RIL$RILSender;

    #@af
    invoke-direct {v7, p0, v4}, Lcom/android/internal/telephony/RIL$RILSender;-><init>(Lcom/android/internal/telephony/RIL;Landroid/os/Looper;)V

    #@b2
    iput-object v7, p0, Lcom/android/internal/telephony/RIL;->mSender:Lcom/android/internal/telephony/RIL$RILSender;

    #@b4
    .line 658
    const-string/jumbo v7, "connectivity"

    #@b7
    .line 657
    invoke-virtual {p1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@ba
    move-result-object v1

    #@bb
    check-cast v1, Landroid/net/ConnectivityManager;

    #@bd
    .line 659
    .local v1, "cm":Landroid/net/ConnectivityManager;
    const/4 v7, 0x0

    #@be
    invoke-virtual {v1, v7}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    #@c1
    move-result v7

    #@c2
    if-nez v7, :cond_1

    #@c4
    .line 660
    const-string/jumbo v7, "Not starting RILReceiver: wifi-only"

    #@c7
    invoke-direct {p0, v7}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    #@ca
    .line 680
    :cond_0
    :goto_0
    invoke-static {}, Lcom/android/internal/telephony/TelephonyDevController;->getInstance()Lcom/android/internal/telephony/TelephonyDevController;

    #@cd
    move-result-object v6

    #@ce
    .line 681
    .local v6, "tdc":Lcom/android/internal/telephony/TelephonyDevController;
    invoke-static {p0}, Lcom/android/internal/telephony/TelephonyDevController;->registerRIL(Lcom/android/internal/telephony/CommandsInterface;)V

    #@d1
    .line 631
    return-void

    #@d2
    .line 662
    .end local v6    # "tdc":Lcom/android/internal/telephony/TelephonyDevController;
    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    #@d4
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@d7
    const-string/jumbo v8, "Starting RILReceiver"

    #@da
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@dd
    move-result-object v7

    #@de
    iget-object v8, p0, Lcom/android/internal/telephony/RIL;->mInstanceId:Ljava/lang/Integer;

    #@e0
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@e3
    move-result-object v7

    #@e4
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@e7
    move-result-object v7

    #@e8
    invoke-direct {p0, v7}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    #@eb
    .line 663
    new-instance v7, Lcom/android/internal/telephony/RIL$RILReceiver;

    #@ed
    invoke-direct {v7, p0}, Lcom/android/internal/telephony/RIL$RILReceiver;-><init>(Lcom/android/internal/telephony/RIL;)V

    #@f0
    iput-object v7, p0, Lcom/android/internal/telephony/RIL;->mReceiver:Lcom/android/internal/telephony/RIL$RILReceiver;

    #@f2
    .line 664
    new-instance v7, Ljava/lang/Thread;

    #@f4
    iget-object v8, p0, Lcom/android/internal/telephony/RIL;->mReceiver:Lcom/android/internal/telephony/RIL$RILReceiver;

    #@f6
    new-instance v9, Ljava/lang/StringBuilder;

    #@f8
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@fb
    const-string/jumbo v10, "RILReceiver"

    #@fe
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@101
    move-result-object v9

    #@102
    iget-object v10, p0, Lcom/android/internal/telephony/RIL;->mInstanceId:Ljava/lang/Integer;

    #@104
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@107
    move-result-object v9

    #@108
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@10b
    move-result-object v9

    #@10c
    invoke-direct {v7, v8, v9}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    #@10f
    iput-object v7, p0, Lcom/android/internal/telephony/RIL;->mReceiverThread:Ljava/lang/Thread;

    #@111
    .line 665
    iget-object v7, p0, Lcom/android/internal/telephony/RIL;->mReceiverThread:Ljava/lang/Thread;

    #@113
    invoke-virtual {v7}, Ljava/lang/Thread;->start()V

    #@116
    .line 668
    const-string/jumbo v7, "display"

    #@119
    .line 667
    invoke-virtual {p1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@11c
    move-result-object v2

    #@11d
    check-cast v2, Landroid/hardware/display/DisplayManager;

    #@11f
    .line 669
    .local v2, "dm":Landroid/hardware/display/DisplayManager;
    const/4 v7, 0x0

    #@120
    invoke-virtual {v2, v7}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    #@123
    move-result-object v7

    #@124
    iput-object v7, p0, Lcom/android/internal/telephony/RIL;->mDefaultDisplay:Landroid/view/Display;

    #@126
    .line 670
    iget-object v7, p0, Lcom/android/internal/telephony/RIL;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    #@128
    const/4 v8, 0x0

    #@129
    invoke-virtual {v2, v7, v8}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    #@12c
    .line 672
    new-instance v3, Landroid/content/IntentFilter;

    #@12e
    const-string/jumbo v7, "android.intent.action.BATTERY_CHANGED"

    #@131
    invoke-direct {v3, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    #@134
    .line 673
    .local v3, "filter":Landroid/content/IntentFilter;
    iget-object v7, p0, Lcom/android/internal/telephony/RIL;->mBatteryStateListener:Landroid/content/BroadcastReceiver;

    #@136
    invoke-virtual {p1, v7, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    #@139
    move-result-object v0

    #@13a
    .line 674
    .local v0, "batteryStatus":Landroid/content/Intent;
    if-eqz v0, :cond_0

    #@13c
    .line 676
    const-string/jumbo v7, "plugged"

    #@13f
    const/4 v8, 0x0

    #@140
    invoke-virtual {v0, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    #@143
    move-result v7

    #@144
    if-eqz v7, :cond_2

    #@146
    const/4 v7, 0x1

    #@147
    :goto_1
    iput-boolean v7, p0, Lcom/android/internal/telephony/RIL;->mIsDevicePlugged:Z

    #@149
    goto :goto_0

    #@14a
    :cond_2
    const/4 v7, 0x0

    #@14b
    goto :goto_1
.end method

.method private acquireWakeLock()V
    .locals 6

    #@0
    .prologue
    .line 2320
    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    #@2
    monitor-enter v2

    #@3
    .line 2321
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    #@5
    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    #@8
    .line 2322
    iget v1, p0, Lcom/android/internal/telephony/RIL;->mWakeLockCount:I

    #@a
    add-int/lit8 v1, v1, 0x1

    #@c
    iput v1, p0, Lcom/android/internal/telephony/RIL;->mWakeLockCount:I

    #@e
    .line 2324
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mSender:Lcom/android/internal/telephony/RIL$RILSender;

    #@10
    const/4 v3, 0x2

    #@11
    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/RIL$RILSender;->removeMessages(I)V

    #@14
    .line 2325
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mSender:Lcom/android/internal/telephony/RIL$RILSender;

    #@16
    const/4 v3, 0x2

    #@17
    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/RIL$RILSender;->obtainMessage(I)Landroid/os/Message;

    #@1a
    move-result-object v0

    #@1b
    .line 2326
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mSender:Lcom/android/internal/telephony/RIL$RILSender;

    #@1d
    iget v3, p0, Lcom/android/internal/telephony/RIL;->mWakeLockTimeout:I

    #@1f
    int-to-long v4, v3

    #@20
    invoke-virtual {v1, v0, v4, v5}, Lcom/android/internal/telephony/RIL$RILSender;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@23
    monitor-exit v2

    #@24
    .line 2319
    return-void

    #@25
    .line 2320
    .end local v0    # "msg":Landroid/os/Message;
    :catchall_0
    move-exception v1

    #@26
    monitor-exit v2

    #@27
    throw v1
.end method

.method private clearRequestList(IZ)V
    .locals 7
    .param p1, "error"    # I
    .param p2, "loggable"    # Z

    #@0
    .prologue
    .line 2397
    iget-object v4, p0, Lcom/android/internal/telephony/RIL;->mRequestList:Landroid/util/SparseArray;

    #@2
    monitor-enter v4

    #@3
    .line 2398
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRequestList:Landroid/util/SparseArray;

    #@5
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    #@8
    move-result v0

    #@9
    .line 2399
    .local v0, "count":I
    if-eqz p2, :cond_0

    #@b
    .line 2400
    const-string/jumbo v3, "RILJ"

    #@e
    new-instance v5, Ljava/lang/StringBuilder;

    #@10
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@13
    const-string/jumbo v6, "clearRequestList  mWakeLockCount="

    #@16
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v5

    #@1a
    .line 2401
    iget v6, p0, Lcom/android/internal/telephony/RIL;->mWakeLockCount:I

    #@1c
    .line 2400
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v5

    #@20
    .line 2402
    const-string/jumbo v6, " mRequestList="

    #@23
    .line 2400
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v5

    #@27
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v5

    #@2b
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2e
    move-result-object v5

    #@2f
    invoke-static {v3, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@32
    .line 2405
    :cond_0
    const/4 v1, 0x0

    #@33
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    #@35
    .line 2406
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRequestList:Landroid/util/SparseArray;

    #@37
    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@3a
    move-result-object v2

    #@3b
    check-cast v2, Lcom/android/internal/telephony/RILRequest;

    #@3d
    .line 2407
    .local v2, "rr":Lcom/android/internal/telephony/RILRequest;
    if-eqz p2, :cond_1

    #@3f
    .line 2408
    const-string/jumbo v3, "RILJ"

    #@42
    new-instance v5, Ljava/lang/StringBuilder;

    #@44
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@47
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v5

    #@4b
    const-string/jumbo v6, ": ["

    #@4e
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@51
    move-result-object v5

    #@52
    iget v6, v2, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    #@54
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@57
    move-result-object v5

    #@58
    const-string/jumbo v6, "] "

    #@5b
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5e
    move-result-object v5

    #@5f
    .line 2409
    iget v6, v2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    #@61
    invoke-static {v6}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    #@64
    move-result-object v6

    #@65
    .line 2408
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@68
    move-result-object v5

    #@69
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6c
    move-result-object v5

    #@6d
    invoke-static {v3, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@70
    .line 2411
    :cond_1
    const/4 v3, 0x0

    #@71
    invoke-virtual {v2, p1, v3}, Lcom/android/internal/telephony/RILRequest;->onError(ILjava/lang/Object;)V

    #@74
    .line 2412
    invoke-virtual {v2}, Lcom/android/internal/telephony/RILRequest;->release()V

    #@77
    .line 2413
    invoke-direct {p0}, Lcom/android/internal/telephony/RIL;->decrementWakeLock()V

    #@7a
    .line 2405
    add-int/lit8 v1, v1, 0x1

    #@7c
    goto :goto_0

    #@7d
    .line 2415
    .end local v2    # "rr":Lcom/android/internal/telephony/RILRequest;
    :cond_2
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRequestList:Landroid/util/SparseArray;

    #@7f
    invoke-virtual {v3}, Landroid/util/SparseArray;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@82
    monitor-exit v4

    #@83
    .line 2395
    return-void

    #@84
    .line 2397
    .end local v0    # "count":I
    .end local v1    # "i":I
    :catchall_0
    move-exception v3

    #@85
    monitor-exit v4

    #@86
    throw v3
.end method

.method private clearWakeLock()Z
    .locals 4

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 2346
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    #@3
    monitor-enter v1

    #@4
    .line 2347
    :try_start_0
    iget v0, p0, Lcom/android/internal/telephony/RIL;->mWakeLockCount:I

    #@6
    if-nez v0, :cond_0

    #@8
    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    #@a
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@d
    move-result v0

    #@e
    if-nez v0, :cond_0

    #@10
    monitor-exit v1

    #@11
    return v2

    #@12
    .line 2348
    :cond_0
    :try_start_1
    const-string/jumbo v0, "RILJ"

    #@15
    new-instance v2, Ljava/lang/StringBuilder;

    #@17
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@1a
    const-string/jumbo v3, "NOTE: mWakeLockCount is "

    #@1d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v2

    #@21
    iget v3, p0, Lcom/android/internal/telephony/RIL;->mWakeLockCount:I

    #@23
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@26
    move-result-object v2

    #@27
    const-string/jumbo v3, "at time of clearing"

    #@2a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v2

    #@2e
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@31
    move-result-object v2

    #@32
    invoke-static {v0, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@35
    .line 2349
    const/4 v0, 0x0

    #@36
    iput v0, p0, Lcom/android/internal/telephony/RIL;->mWakeLockCount:I

    #@38
    .line 2350
    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    #@3a
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    #@3d
    .line 2351
    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mSender:Lcom/android/internal/telephony/RIL$RILSender;

    #@3f
    const/4 v2, 0x2

    #@40
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/RIL$RILSender;->removeMessages(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@43
    .line 2352
    const/4 v0, 0x1

    #@44
    monitor-exit v1

    #@45
    return v0

    #@46
    .line 2346
    :catchall_0
    move-exception v0

    #@47
    monitor-exit v1

    #@48
    throw v0
.end method

.method private constructCdmaSendSmsRilRequest(Lcom/android/internal/telephony/RILRequest;[B)V
    .locals 9
    .param p1, "rr"    # Lcom/android/internal/telephony/RILRequest;
    .param p2, "pdu"    # [B

    #@0
    .prologue
    .line 1341
    new-instance v1, Ljava/io/ByteArrayInputStream;

    #@2
    invoke-direct {v1, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    #@5
    .line 1342
    .local v1, "bais":Ljava/io/ByteArrayInputStream;
    new-instance v3, Ljava/io/DataInputStream;

    #@7
    invoke-direct {v3, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    #@a
    .line 1345
    .local v3, "dis":Ljava/io/DataInputStream;
    :try_start_0
    iget-object v7, p1, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@c
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    #@f
    move-result v8

    #@10
    invoke-virtual {v7, v8}, Landroid/os/Parcel;->writeInt(I)V

    #@13
    .line 1346
    iget-object v7, p1, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@15
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    #@18
    move-result v8

    #@19
    int-to-byte v8, v8

    #@1a
    invoke-virtual {v7, v8}, Landroid/os/Parcel;->writeByte(B)V

    #@1d
    .line 1347
    iget-object v7, p1, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@1f
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    #@22
    move-result v8

    #@23
    invoke-virtual {v7, v8}, Landroid/os/Parcel;->writeInt(I)V

    #@26
    .line 1348
    iget-object v7, p1, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@28
    invoke-virtual {v3}, Ljava/io/DataInputStream;->read()I

    #@2b
    move-result v8

    #@2c
    invoke-virtual {v7, v8}, Landroid/os/Parcel;->writeInt(I)V

    #@2f
    .line 1349
    iget-object v7, p1, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@31
    invoke-virtual {v3}, Ljava/io/DataInputStream;->read()I

    #@34
    move-result v8

    #@35
    invoke-virtual {v7, v8}, Landroid/os/Parcel;->writeInt(I)V

    #@38
    .line 1350
    iget-object v7, p1, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@3a
    invoke-virtual {v3}, Ljava/io/DataInputStream;->read()I

    #@3d
    move-result v8

    #@3e
    invoke-virtual {v7, v8}, Landroid/os/Parcel;->writeInt(I)V

    #@41
    .line 1351
    iget-object v7, p1, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@43
    invoke-virtual {v3}, Ljava/io/DataInputStream;->read()I

    #@46
    move-result v8

    #@47
    invoke-virtual {v7, v8}, Landroid/os/Parcel;->writeInt(I)V

    #@4a
    .line 1352
    invoke-virtual {v3}, Ljava/io/DataInputStream;->read()I

    #@4d
    move-result v7

    #@4e
    int-to-byte v0, v7

    #@4f
    .line 1353
    .local v0, "address_nbr_of_digits":I
    iget-object v7, p1, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@51
    int-to-byte v8, v0

    #@52
    invoke-virtual {v7, v8}, Landroid/os/Parcel;->writeByte(B)V

    #@55
    .line 1354
    const/4 v5, 0x0

    #@56
    .local v5, "i":I
    :goto_0
    if-ge v5, v0, :cond_0

    #@58
    .line 1355
    iget-object v7, p1, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@5a
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readByte()B

    #@5d
    move-result v8

    #@5e
    invoke-virtual {v7, v8}, Landroid/os/Parcel;->writeByte(B)V

    #@61
    .line 1354
    add-int/lit8 v5, v5, 0x1

    #@63
    goto :goto_0

    #@64
    .line 1357
    :cond_0
    iget-object v7, p1, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@66
    invoke-virtual {v3}, Ljava/io/DataInputStream;->read()I

    #@69
    move-result v8

    #@6a
    invoke-virtual {v7, v8}, Landroid/os/Parcel;->writeInt(I)V

    #@6d
    .line 1358
    iget-object v7, p1, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@6f
    invoke-virtual {v3}, Ljava/io/DataInputStream;->read()I

    #@72
    move-result v8

    #@73
    int-to-byte v8, v8

    #@74
    invoke-virtual {v7, v8}, Landroid/os/Parcel;->writeByte(B)V

    #@77
    .line 1359
    invoke-virtual {v3}, Ljava/io/DataInputStream;->read()I

    #@7a
    move-result v7

    #@7b
    int-to-byte v6, v7

    #@7c
    .line 1360
    .local v6, "subaddr_nbr_of_digits":I
    iget-object v7, p1, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@7e
    int-to-byte v8, v6

    #@7f
    invoke-virtual {v7, v8}, Landroid/os/Parcel;->writeByte(B)V

    #@82
    .line 1361
    const/4 v5, 0x0

    #@83
    :goto_1
    if-ge v5, v6, :cond_1

    #@85
    .line 1362
    iget-object v7, p1, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@87
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readByte()B

    #@8a
    move-result v8

    #@8b
    invoke-virtual {v7, v8}, Landroid/os/Parcel;->writeByte(B)V

    #@8e
    .line 1361
    add-int/lit8 v5, v5, 0x1

    #@90
    goto :goto_1

    #@91
    .line 1365
    :cond_1
    invoke-virtual {v3}, Ljava/io/DataInputStream;->read()I

    #@94
    move-result v2

    #@95
    .line 1366
    .local v2, "bearerDataLength":I
    iget-object v7, p1, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@97
    invoke-virtual {v7, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@9a
    .line 1367
    const/4 v5, 0x0

    #@9b
    :goto_2
    if-ge v5, v2, :cond_2

    #@9d
    .line 1368
    iget-object v7, p1, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@9f
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readByte()B

    #@a2
    move-result v8

    #@a3
    invoke-virtual {v7, v8}, Landroid/os/Parcel;->writeByte(B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@a6
    .line 1367
    add-int/lit8 v5, v5, 0x1

    #@a8
    goto :goto_2

    #@a9
    .line 1370
    .end local v0    # "address_nbr_of_digits":I
    .end local v2    # "bearerDataLength":I
    .end local v5    # "i":I
    .end local v6    # "subaddr_nbr_of_digits":I
    :catch_0
    move-exception v4

    #@aa
    .line 1371
    .local v4, "ex":Ljava/io/IOException;
    new-instance v7, Ljava/lang/StringBuilder;

    #@ac
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@af
    const-string/jumbo v8, "sendSmsCdma: conversion from input stream to object failed: "

    #@b2
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b5
    move-result-object v7

    #@b6
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@b9
    move-result-object v7

    #@ba
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@bd
    move-result-object v7

    #@be
    invoke-direct {p0, v7}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    #@c1
    .line 1337
    .end local v4    # "ex":Ljava/io/IOException;
    :cond_2
    return-void
.end method

.method private constructGsmSendSmsRilRequest(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "rr"    # Lcom/android/internal/telephony/RILRequest;
    .param p2, "smscPDU"    # Ljava/lang/String;
    .param p3, "pdu"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1306
    iget-object v0, p1, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@2
    const/4 v1, 0x2

    #@3
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@6
    .line 1307
    iget-object v0, p1, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@8
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@b
    .line 1308
    iget-object v0, p1, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@d
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@10
    .line 1305
    return-void
.end method

.method private decrementWakeLock()V
    .locals 3

    #@0
    .prologue
    .line 2332
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    #@2
    monitor-enter v1

    #@3
    .line 2333
    :try_start_0
    iget v0, p0, Lcom/android/internal/telephony/RIL;->mWakeLockCount:I

    #@5
    const/4 v2, 0x1

    #@6
    if-le v0, v2, :cond_0

    #@8
    .line 2334
    iget v0, p0, Lcom/android/internal/telephony/RIL;->mWakeLockCount:I

    #@a
    add-int/lit8 v0, v0, -0x1

    #@c
    iput v0, p0, Lcom/android/internal/telephony/RIL;->mWakeLockCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e
    :goto_0
    monitor-exit v1

    #@f
    .line 2331
    return-void

    #@10
    .line 2336
    :cond_0
    const/4 v0, 0x0

    #@11
    :try_start_1
    iput v0, p0, Lcom/android/internal/telephony/RIL;->mWakeLockCount:I

    #@13
    .line 2337
    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    #@15
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    #@18
    .line 2338
    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mSender:Lcom/android/internal/telephony/RIL$RILSender;

    #@1a
    const/4 v2, 0x2

    #@1b
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/RIL$RILSender;->removeMessages(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1e
    goto :goto_0

    #@1f
    .line 2332
    :catchall_0
    move-exception v0

    #@20
    monitor-exit v1

    #@21
    throw v0
.end method

.method private findAndRemoveRequestFromList(I)Lcom/android/internal/telephony/RILRequest;
    .locals 4
    .param p1, "serial"    # I

    #@0
    .prologue
    .line 2420
    const/4 v1, 0x0

    #@1
    .line 2421
    .local v1, "rr":Lcom/android/internal/telephony/RILRequest;
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRequestList:Landroid/util/SparseArray;

    #@3
    monitor-enter v3

    #@4
    .line 2422
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mRequestList:Landroid/util/SparseArray;

    #@6
    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@9
    move-result-object v2

    #@a
    move-object v0, v2

    #@b
    check-cast v0, Lcom/android/internal/telephony/RILRequest;

    #@d
    move-object v1, v0

    #@e
    .line 2423
    .local v1, "rr":Lcom/android/internal/telephony/RILRequest;
    if-eqz v1, :cond_0

    #@10
    .line 2424
    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mRequestList:Landroid/util/SparseArray;

    #@12
    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@15
    :cond_0
    monitor-exit v3

    #@16
    .line 2428
    return-object v1

    #@17
    .line 2421
    .end local v1    # "rr":Lcom/android/internal/telephony/RILRequest;
    :catchall_0
    move-exception v2

    #@18
    monitor-exit v3

    #@19
    throw v2
.end method

.method private getDataCallResponse(Landroid/os/Parcel;I)Lcom/android/internal/telephony/dataconnection/DataCallResponse;
    .locals 7
    .param p1, "p"    # Landroid/os/Parcel;
    .param p2, "version"    # I

    #@0
    .prologue
    .line 3573
    new-instance v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse;

    #@2
    invoke-direct {v1}, Lcom/android/internal/telephony/dataconnection/DataCallResponse;-><init>()V

    #@5
    .line 3575
    .local v1, "dataCall":Lcom/android/internal/telephony/dataconnection/DataCallResponse;
    iput p2, v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->version:I

    #@7
    .line 3576
    const/4 v5, 0x5

    #@8
    if-ge p2, v5, :cond_1

    #@a
    .line 3577
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@d
    move-result v5

    #@e
    iput v5, v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->cid:I

    #@10
    .line 3578
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@13
    move-result v5

    #@14
    iput v5, v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->active:I

    #@16
    .line 3579
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@19
    move-result-object v5

    #@1a
    iput-object v5, v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->type:Ljava/lang/String;

    #@1c
    .line 3580
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1f
    move-result-object v0

    #@20
    .line 3581
    .local v0, "addresses":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@23
    move-result v5

    #@24
    if-nez v5, :cond_0

    #@26
    .line 3582
    const-string/jumbo v5, " "

    #@29
    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@2c
    move-result-object v5

    #@2d
    iput-object v5, v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->addresses:[Ljava/lang/String;

    #@2f
    .line 3617
    :cond_0
    :goto_0
    return-object v1

    #@30
    .line 3585
    .end local v0    # "addresses":Ljava/lang/String;
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@33
    move-result v5

    #@34
    iput v5, v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->status:I

    #@36
    .line 3586
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@39
    move-result v5

    #@3a
    iput v5, v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->suggestedRetryTime:I

    #@3c
    .line 3587
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@3f
    move-result v5

    #@40
    iput v5, v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->cid:I

    #@42
    .line 3588
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@45
    move-result v5

    #@46
    iput v5, v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->active:I

    #@48
    .line 3589
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@4b
    move-result-object v5

    #@4c
    iput-object v5, v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->type:Ljava/lang/String;

    #@4e
    .line 3590
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@51
    move-result-object v5

    #@52
    iput-object v5, v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->ifname:Ljava/lang/String;

    #@54
    .line 3591
    iget v5, v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->status:I

    #@56
    sget-object v6, Lcom/android/internal/telephony/dataconnection/DcFailCause;->NONE:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    #@58
    invoke-virtual {v6}, Lcom/android/internal/telephony/dataconnection/DcFailCause;->getErrorCode()I

    #@5b
    move-result v6

    #@5c
    if-ne v5, v6, :cond_2

    #@5e
    .line 3592
    iget-object v5, v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->ifname:Ljava/lang/String;

    #@60
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@63
    move-result v5

    #@64
    .line 3591
    if-eqz v5, :cond_2

    #@66
    .line 3593
    new-instance v5, Ljava/lang/RuntimeException;

    #@68
    const-string/jumbo v6, "getDataCallResponse, no ifname"

    #@6b
    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@6e
    throw v5

    #@6f
    .line 3595
    :cond_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@72
    move-result-object v0

    #@73
    .line 3596
    .restart local v0    # "addresses":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@76
    move-result v5

    #@77
    if-nez v5, :cond_3

    #@79
    .line 3597
    const-string/jumbo v5, " "

    #@7c
    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@7f
    move-result-object v5

    #@80
    iput-object v5, v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->addresses:[Ljava/lang/String;

    #@82
    .line 3599
    :cond_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@85
    move-result-object v2

    #@86
    .line 3600
    .local v2, "dnses":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@89
    move-result v5

    #@8a
    if-nez v5, :cond_4

    #@8c
    .line 3601
    const-string/jumbo v5, " "

    #@8f
    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@92
    move-result-object v5

    #@93
    iput-object v5, v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->dnses:[Ljava/lang/String;

    #@95
    .line 3603
    :cond_4
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@98
    move-result-object v3

    #@99
    .line 3604
    .local v3, "gateways":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@9c
    move-result v5

    #@9d
    if-nez v5, :cond_5

    #@9f
    .line 3605
    const-string/jumbo v5, " "

    #@a2
    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@a5
    move-result-object v5

    #@a6
    iput-object v5, v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->gateways:[Ljava/lang/String;

    #@a8
    .line 3607
    :cond_5
    const/16 v5, 0xa

    #@aa
    if-lt p2, v5, :cond_6

    #@ac
    .line 3608
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@af
    move-result-object v4

    #@b0
    .line 3609
    .local v4, "pcscf":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@b3
    move-result v5

    #@b4
    if-nez v5, :cond_6

    #@b6
    .line 3610
    const-string/jumbo v5, " "

    #@b9
    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@bc
    move-result-object v5

    #@bd
    iput-object v5, v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->pcscf:[Ljava/lang/String;

    #@bf
    .line 3613
    .end local v4    # "pcscf":Ljava/lang/String;
    :cond_6
    const/16 v5, 0xb

    #@c1
    if-lt p2, v5, :cond_0

    #@c3
    .line 3614
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@c6
    move-result v5

    #@c7
    iput v5, v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->mtu:I

    #@c9
    goto/16 :goto_0
.end method

.method private getRadioStateFromInt(I)Lcom/android/internal/telephony/CommandsInterface$RadioState;
    .locals 4
    .param p1, "stateInt"    # I

    #@0
    .prologue
    .line 2293
    sparse-switch p1, :sswitch_data_0

    #@3
    .line 2299
    new-instance v1, Ljava/lang/RuntimeException;

    #@5
    .line 2300
    new-instance v2, Ljava/lang/StringBuilder;

    #@7
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@a
    const-string/jumbo v3, "Unrecognized RIL_RadioState: "

    #@d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v2

    #@11
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@14
    move-result-object v2

    #@15
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@18
    move-result-object v2

    #@19
    .line 2299
    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@1c
    throw v1

    #@1d
    .line 2294
    :sswitch_0
    sget-object v0, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_OFF:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    #@1f
    .line 2302
    .local v0, "state":Lcom/android/internal/telephony/CommandsInterface$RadioState;
    :goto_0
    return-object v0

    #@20
    .line 2295
    .end local v0    # "state":Lcom/android/internal/telephony/CommandsInterface$RadioState;
    :sswitch_1
    sget-object v0, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_UNAVAILABLE:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    #@22
    .restart local v0    # "state":Lcom/android/internal/telephony/CommandsInterface$RadioState;
    goto :goto_0

    #@23
    .line 2296
    .end local v0    # "state":Lcom/android/internal/telephony/CommandsInterface$RadioState;
    :sswitch_2
    sget-object v0, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_ON:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    #@25
    .restart local v0    # "state":Lcom/android/internal/telephony/CommandsInterface$RadioState;
    goto :goto_0

    #@26
    .line 2293
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0xa -> :sswitch_2
    .end sparse-switch
.end method

.method private iccTransmitApduHelper(IIIIIIILjava/lang/String;Landroid/os/Message;)V
    .locals 3
    .param p1, "rilCommand"    # I
    .param p2, "channel"    # I
    .param p3, "cla"    # I
    .param p4, "instruction"    # I
    .param p5, "p1"    # I
    .param p6, "p2"    # I
    .param p7, "p3"    # I
    .param p8, "data"    # Ljava/lang/String;
    .param p9, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 4704
    invoke-static {p1, p9}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    #@3
    move-result-object v0

    #@4
    .line 4705
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@6
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@9
    .line 4706
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@b
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeInt(I)V

    #@e
    .line 4707
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@10
    invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeInt(I)V

    #@13
    .line 4708
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@15
    invoke-virtual {v1, p5}, Landroid/os/Parcel;->writeInt(I)V

    #@18
    .line 4709
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@1a
    invoke-virtual {v1, p6}, Landroid/os/Parcel;->writeInt(I)V

    #@1d
    .line 4710
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@1f
    invoke-virtual {v1, p7}, Landroid/os/Parcel;->writeInt(I)V

    #@22
    .line 4711
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@24
    invoke-virtual {v1, p8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@27
    .line 4714
    new-instance v1, Ljava/lang/StringBuilder;

    #@29
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@2c
    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    #@2f
    move-result-object v2

    #@30
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v1

    #@34
    const-string/jumbo v2, "> "

    #@37
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v1

    #@3b
    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    #@3d
    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    #@40
    move-result-object v2

    #@41
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v1

    #@45
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@48
    move-result-object v1

    #@49
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    #@4c
    .line 4716
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    #@4f
    .line 4703
    return-void
.end method

.method private makeStaticRadioCapability()Lcom/android/internal/telephony/RadioCapability;
    .locals 8

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 2695
    const/4 v4, 0x1

    #@2
    .line 2697
    .local v4, "raf":I
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mContext:Landroid/content/Context;

    #@4
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@7
    move-result-object v1

    #@8
    .line 2698
    const v3, 0x104004f

    #@b
    .line 2697
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    #@e
    move-result-object v7

    #@f
    .line 2699
    .local v7, "rafString":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@12
    move-result v1

    #@13
    if-nez v1, :cond_0

    #@15
    .line 2700
    invoke-static {v7}, Landroid/telephony/RadioAccessFamily;->rafTypeFromString(Ljava/lang/String;)I

    #@18
    move-result v4

    #@19
    .line 2702
    :cond_0
    new-instance v0, Lcom/android/internal/telephony/RadioCapability;

    #@1b
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mInstanceId:Ljava/lang/Integer;

    #@1d
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    #@20
    move-result v1

    #@21
    .line 2703
    const-string/jumbo v5, ""

    #@24
    const/4 v6, 0x1

    #@25
    move v3, v2

    #@26
    .line 2702
    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/RadioCapability;-><init>(IIIILjava/lang/String;I)V

    #@29
    .line 2704
    .local v0, "rc":Lcom/android/internal/telephony/RadioCapability;
    new-instance v1, Ljava/lang/StringBuilder;

    #@2b
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@2e
    const-string/jumbo v2, "Faking RIL_REQUEST_GET_RADIO_CAPABILITY response using "

    #@31
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v1

    #@35
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@38
    move-result-object v1

    #@39
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3c
    move-result-object v1

    #@3d
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    #@40
    .line 2705
    return-object v0
.end method

.method private notifyRegistrantsCdmaInfoRec(Lcom/android/internal/telephony/cdma/CdmaInformationRecords;)V
    .locals 5
    .param p1, "infoRec"    # Lcom/android/internal/telephony/cdma/CdmaInformationRecords;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 3877
    const/16 v0, 0x403

    #@3
    .line 3878
    .local v0, "response":I
    iget-object v1, p1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;->record:Ljava/lang/Object;

    #@5
    instance-of v1, v1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaDisplayInfoRec;

    #@7
    if-eqz v1, :cond_1

    #@9
    .line 3879
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mDisplayInfoRegistrants:Landroid/os/RegistrantList;

    #@b
    if-eqz v1, :cond_0

    #@d
    .line 3880
    iget-object v1, p1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;->record:Ljava/lang/Object;

    #@f
    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    #@12
    .line 3881
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mDisplayInfoRegistrants:Landroid/os/RegistrantList;

    #@14
    .line 3882
    new-instance v2, Landroid/os/AsyncResult;

    #@16
    iget-object v3, p1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;->record:Ljava/lang/Object;

    #@18
    invoke-direct {v2, v4, v3, v4}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    #@1b
    .line 3881
    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    #@1e
    .line 3876
    :cond_0
    :goto_0
    return-void

    #@1f
    .line 3884
    :cond_1
    iget-object v1, p1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;->record:Ljava/lang/Object;

    #@21
    instance-of v1, v1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaSignalInfoRec;

    #@23
    if-eqz v1, :cond_2

    #@25
    .line 3885
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mSignalInfoRegistrants:Landroid/os/RegistrantList;

    #@27
    if-eqz v1, :cond_0

    #@29
    .line 3886
    iget-object v1, p1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;->record:Ljava/lang/Object;

    #@2b
    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    #@2e
    .line 3887
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mSignalInfoRegistrants:Landroid/os/RegistrantList;

    #@30
    .line 3888
    new-instance v2, Landroid/os/AsyncResult;

    #@32
    iget-object v3, p1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;->record:Ljava/lang/Object;

    #@34
    invoke-direct {v2, v4, v3, v4}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    #@37
    .line 3887
    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    #@3a
    goto :goto_0

    #@3b
    .line 3890
    :cond_2
    iget-object v1, p1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;->record:Ljava/lang/Object;

    #@3d
    instance-of v1, v1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaNumberInfoRec;

    #@3f
    if-eqz v1, :cond_3

    #@41
    .line 3891
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mNumberInfoRegistrants:Landroid/os/RegistrantList;

    #@43
    if-eqz v1, :cond_0

    #@45
    .line 3892
    iget-object v1, p1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;->record:Ljava/lang/Object;

    #@47
    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    #@4a
    .line 3893
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mNumberInfoRegistrants:Landroid/os/RegistrantList;

    #@4c
    .line 3894
    new-instance v2, Landroid/os/AsyncResult;

    #@4e
    iget-object v3, p1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;->record:Ljava/lang/Object;

    #@50
    invoke-direct {v2, v4, v3, v4}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    #@53
    .line 3893
    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    #@56
    goto :goto_0

    #@57
    .line 3896
    :cond_3
    iget-object v1, p1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;->record:Ljava/lang/Object;

    #@59
    instance-of v1, v1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaRedirectingNumberInfoRec;

    #@5b
    if-eqz v1, :cond_4

    #@5d
    .line 3897
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mRedirNumInfoRegistrants:Landroid/os/RegistrantList;

    #@5f
    if-eqz v1, :cond_0

    #@61
    .line 3898
    iget-object v1, p1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;->record:Ljava/lang/Object;

    #@63
    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    #@66
    .line 3899
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mRedirNumInfoRegistrants:Landroid/os/RegistrantList;

    #@68
    .line 3900
    new-instance v2, Landroid/os/AsyncResult;

    #@6a
    iget-object v3, p1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;->record:Ljava/lang/Object;

    #@6c
    invoke-direct {v2, v4, v3, v4}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    #@6f
    .line 3899
    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    #@72
    goto :goto_0

    #@73
    .line 3902
    :cond_4
    iget-object v1, p1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;->record:Ljava/lang/Object;

    #@75
    instance-of v1, v1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaLineControlInfoRec;

    #@77
    if-eqz v1, :cond_5

    #@79
    .line 3903
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mLineControlInfoRegistrants:Landroid/os/RegistrantList;

    #@7b
    if-eqz v1, :cond_0

    #@7d
    .line 3904
    iget-object v1, p1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;->record:Ljava/lang/Object;

    #@7f
    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    #@82
    .line 3905
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mLineControlInfoRegistrants:Landroid/os/RegistrantList;

    #@84
    .line 3906
    new-instance v2, Landroid/os/AsyncResult;

    #@86
    iget-object v3, p1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;->record:Ljava/lang/Object;

    #@88
    invoke-direct {v2, v4, v3, v4}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    #@8b
    .line 3905
    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    #@8e
    goto :goto_0

    #@8f
    .line 3908
    :cond_5
    iget-object v1, p1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;->record:Ljava/lang/Object;

    #@91
    instance-of v1, v1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaT53ClirInfoRec;

    #@93
    if-eqz v1, :cond_6

    #@95
    .line 3909
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mT53ClirInfoRegistrants:Landroid/os/RegistrantList;

    #@97
    if-eqz v1, :cond_0

    #@99
    .line 3910
    iget-object v1, p1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;->record:Ljava/lang/Object;

    #@9b
    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    #@9e
    .line 3911
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mT53ClirInfoRegistrants:Landroid/os/RegistrantList;

    #@a0
    .line 3912
    new-instance v2, Landroid/os/AsyncResult;

    #@a2
    iget-object v3, p1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;->record:Ljava/lang/Object;

    #@a4
    invoke-direct {v2, v4, v3, v4}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    #@a7
    .line 3911
    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    #@aa
    goto/16 :goto_0

    #@ac
    .line 3914
    :cond_6
    iget-object v1, p1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;->record:Ljava/lang/Object;

    #@ae
    instance-of v1, v1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaT53AudioControlInfoRec;

    #@b0
    if-eqz v1, :cond_0

    #@b2
    .line 3915
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mT53AudCntrlInfoRegistrants:Landroid/os/RegistrantList;

    #@b4
    if-eqz v1, :cond_0

    #@b6
    .line 3916
    iget-object v1, p1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;->record:Ljava/lang/Object;

    #@b8
    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    #@bb
    .line 3917
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mT53AudCntrlInfoRegistrants:Landroid/os/RegistrantList;

    #@bd
    .line 3918
    new-instance v2, Landroid/os/AsyncResult;

    #@bf
    iget-object v3, p1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;->record:Ljava/lang/Object;

    #@c1
    invoke-direct {v2, v4, v3, v4}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    #@c4
    .line 3917
    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    #@c7
    goto/16 :goto_0
.end method

.method private notifyRegistrantsRilConnectionChanged(I)V
    .locals 4
    .param p1, "rilVer"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 3289
    iput p1, p0, Lcom/android/internal/telephony/RIL;->mRilVersion:I

    #@3
    .line 3290
    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mRilConnectedRegistrants:Landroid/os/RegistrantList;

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 3291
    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mRilConnectedRegistrants:Landroid/os/RegistrantList;

    #@9
    .line 3292
    new-instance v1, Landroid/os/AsyncResult;

    #@b
    new-instance v2, Ljava/lang/Integer;

    #@d
    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    #@10
    invoke-direct {v1, v3, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    #@13
    .line 3291
    invoke-virtual {v0, v1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    #@16
    .line 3288
    :cond_0
    return-void
.end method

.method private processResponse(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "p"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 2377
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@3
    move-result v1

    #@4
    .line 2379
    .local v1, "type":I
    const/4 v2, 0x1

    #@5
    if-ne v1, v2, :cond_1

    #@7
    .line 2380
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->processUnsolicited(Landroid/os/Parcel;)V

    #@a
    .line 2374
    :cond_0
    :goto_0
    return-void

    #@b
    .line 2381
    :cond_1
    if-nez v1, :cond_0

    #@d
    .line 2382
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->processSolicited(Landroid/os/Parcel;)Lcom/android/internal/telephony/RILRequest;

    #@10
    move-result-object v0

    #@11
    .line 2383
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    if-eqz v0, :cond_0

    #@13
    .line 2384
    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->release()V

    #@16
    .line 2385
    invoke-direct {p0}, Lcom/android/internal/telephony/RIL;->decrementWakeLock()V

    #@19
    goto :goto_0
.end method

.method private processSolicited(Landroid/os/Parcel;)Lcom/android/internal/telephony/RILRequest;
    .locals 14
    .param p1, "p"    # Landroid/os/Parcel;

    #@0
    .prologue
    const/4 v13, 0x0

    #@1
    const/4 v4, 0x0

    #@2
    .line 2434
    const/4 v9, 0x0

    #@3
    .line 2436
    .local v9, "found":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@6
    move-result v11

    #@7
    .line 2437
    .local v11, "serial":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@a
    move-result v0

    #@b
    .line 2441
    .local v0, "error":I
    invoke-direct {p0, v11}, Lcom/android/internal/telephony/RIL;->findAndRemoveRequestFromList(I)Lcom/android/internal/telephony/RILRequest;

    #@e
    move-result-object v10

    #@f
    .line 2443
    .local v10, "rr":Lcom/android/internal/telephony/RILRequest;
    if-nez v10, :cond_0

    #@11
    .line 2444
    const-string/jumbo v2, "RILJ"

    #@14
    new-instance v3, Ljava/lang/StringBuilder;

    #@16
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@19
    const-string/jumbo v4, "Unexpected solicited response! sn: "

    #@1c
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v3

    #@20
    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@23
    move-result-object v3

    #@24
    .line 2445
    const-string/jumbo v4, " error: "

    #@27
    .line 2444
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v3

    #@2b
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v3

    #@2f
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@32
    move-result-object v3

    #@33
    invoke-static {v2, v3}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@36
    .line 2446
    return-object v13

    #@37
    .line 2449
    :cond_0
    const/4 v1, 0x0

    #@38
    .line 2451
    .local v1, "ret":Ljava/lang/Object;
    if-eqz v0, :cond_1

    #@3a
    invoke-virtual {p1}, Landroid/os/Parcel;->dataAvail()I

    #@3d
    move-result v2

    #@3e
    if-lez v2, :cond_3

    #@40
    .line 2453
    :cond_1
    :try_start_0
    iget v2, v10, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    #@42
    packed-switch v2, :pswitch_data_0

    #@45
    .line 2602
    :pswitch_0
    new-instance v2, Ljava/lang/RuntimeException;

    #@47
    new-instance v3, Ljava/lang/StringBuilder;

    #@49
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@4c
    const-string/jumbo v4, "Unrecognized solicited response: "

    #@4f
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@52
    move-result-object v3

    #@53
    iget v4, v10, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    #@55
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@58
    move-result-object v3

    #@59
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5c
    move-result-object v3

    #@5d
    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@60
    throw v2
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    #@61
    .line 2604
    :catch_0
    move-exception v12

    #@62
    .line 2607
    .local v12, "tr":Ljava/lang/Throwable;
    const-string/jumbo v2, "RILJ"

    #@65
    new-instance v3, Ljava/lang/StringBuilder;

    #@67
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@6a
    invoke-virtual {v10}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    #@6d
    move-result-object v4

    #@6e
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@71
    move-result-object v3

    #@72
    const-string/jumbo v4, "< "

    #@75
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@78
    move-result-object v3

    #@79
    .line 2608
    iget v4, v10, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    #@7b
    invoke-static {v4}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    #@7e
    move-result-object v4

    #@7f
    .line 2607
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@82
    move-result-object v3

    #@83
    .line 2609
    const-string/jumbo v4, " exception, possible invalid RIL response"

    #@86
    .line 2607
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@89
    move-result-object v3

    #@8a
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8d
    move-result-object v3

    #@8e
    invoke-static {v2, v3, v12}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@91
    .line 2611
    iget-object v2, v10, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    #@93
    if-eqz v2, :cond_2

    #@95
    .line 2612
    iget-object v2, v10, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    #@97
    invoke-static {v2, v13, v12}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    #@9a
    .line 2613
    iget-object v2, v10, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    #@9c
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    #@9f
    .line 2615
    :cond_2
    return-object v10

    #@a0
    .line 2459
    .end local v12    # "tr":Ljava/lang/Throwable;
    :pswitch_1
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseIccCardStatus(Landroid/os/Parcel;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    #@a3
    move-result-object v1

    #@a4
    .line 2619
    .end local v1    # "ret":Ljava/lang/Object;
    :cond_3
    :goto_0
    iget v2, v10, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    #@a6
    const/16 v3, 0x81

    #@a8
    if-ne v2, v3, :cond_4

    #@aa
    .line 2622
    new-instance v2, Ljava/lang/StringBuilder;

    #@ac
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@af
    const-string/jumbo v3, "Response to RIL_REQUEST_SHUTDOWN received. Error is "

    #@b2
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b5
    move-result-object v2

    #@b6
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@b9
    move-result-object v2

    #@ba
    .line 2623
    const-string/jumbo v3, " Setting Radio State to Unavailable regardless of error."

    #@bd
    .line 2622
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c0
    move-result-object v2

    #@c1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c4
    move-result-object v2

    #@c5
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    #@c8
    .line 2624
    sget-object v2, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_UNAVAILABLE:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    #@ca
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/RIL;->setRadioState(Lcom/android/internal/telephony/CommandsInterface$RadioState;)V

    #@cd
    .line 2630
    :cond_4
    iget v2, v10, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    #@cf
    packed-switch v2, :pswitch_data_1

    #@d2
    .line 2643
    :cond_5
    :goto_1
    :pswitch_2
    if-eqz v0, :cond_7

    #@d4
    .line 2644
    iget v2, v10, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    #@d6
    sparse-switch v2, :sswitch_data_0

    #@d9
    .line 2678
    :cond_6
    :goto_2
    if-eqz v0, :cond_7

    #@db
    invoke-virtual {v10, v0, v1}, Lcom/android/internal/telephony/RILRequest;->onError(ILjava/lang/Object;)V

    #@de
    .line 2680
    :cond_7
    if-nez v0, :cond_8

    #@e0
    .line 2682
    new-instance v2, Ljava/lang/StringBuilder;

    #@e2
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@e5
    invoke-virtual {v10}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    #@e8
    move-result-object v3

    #@e9
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ec
    move-result-object v2

    #@ed
    const-string/jumbo v3, "< "

    #@f0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f3
    move-result-object v2

    #@f4
    iget v3, v10, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    #@f6
    invoke-static {v3}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    #@f9
    move-result-object v3

    #@fa
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@fd
    move-result-object v2

    #@fe
    .line 2683
    const-string/jumbo v3, " "

    #@101
    .line 2682
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@104
    move-result-object v2

    #@105
    .line 2683
    iget v3, v10, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    #@107
    invoke-static {v3, v1}, Lcom/android/internal/telephony/RIL;->retToString(ILjava/lang/Object;)Ljava/lang/String;

    #@10a
    move-result-object v3

    #@10b
    .line 2682
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10e
    move-result-object v2

    #@10f
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@112
    move-result-object v2

    #@113
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    #@116
    .line 2685
    iget-object v2, v10, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    #@118
    if-eqz v2, :cond_8

    #@11a
    .line 2686
    iget-object v2, v10, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    #@11c
    invoke-static {v2, v1, v13}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    #@11f
    .line 2687
    iget-object v2, v10, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    #@121
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    #@124
    .line 2690
    :cond_8
    return-object v10

    #@125
    .line 2460
    .restart local v1    # "ret":Ljava/lang/Object;
    :pswitch_3
    :try_start_2
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    #@128
    move-result-object v1

    #@129
    goto/16 :goto_0

    #@12b
    .line 2461
    :pswitch_4
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    #@12e
    move-result-object v1

    #@12f
    goto/16 :goto_0

    #@131
    .line 2462
    :pswitch_5
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    #@134
    move-result-object v1

    #@135
    goto/16 :goto_0

    #@137
    .line 2463
    :pswitch_6
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    #@13a
    move-result-object v1

    #@13b
    goto/16 :goto_0

    #@13d
    .line 2464
    :pswitch_7
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    #@140
    move-result-object v1

    #@141
    goto/16 :goto_0

    #@143
    .line 2465
    :pswitch_8
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    #@146
    move-result-object v1

    #@147
    goto/16 :goto_0

    #@149
    .line 2466
    :pswitch_9
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    #@14c
    move-result-object v1

    #@14d
    goto/16 :goto_0

    #@14f
    .line 2467
    :pswitch_a
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseCallList(Landroid/os/Parcel;)Ljava/lang/Object;

    #@152
    move-result-object v1

    #@153
    goto/16 :goto_0

    #@155
    .line 2468
    :pswitch_b
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    #@158
    move-result-object v1

    #@159
    goto/16 :goto_0

    #@15b
    .line 2469
    :pswitch_c
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    #@15e
    move-result-object v1

    #@15f
    goto/16 :goto_0

    #@161
    .line 2470
    :pswitch_d
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    #@164
    move-result-object v1

    #@165
    goto/16 :goto_0

    #@167
    .line 2471
    :pswitch_e
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    #@16a
    move-result-object v1

    #@16b
    goto/16 :goto_0

    #@16d
    .line 2473
    :pswitch_f
    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mTestingEmergencyCall:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@16f
    const/4 v3, 0x0

    #@170
    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    #@173
    move-result v2

    #@174
    if-eqz v2, :cond_9

    #@176
    .line 2474
    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mEmergencyCallbackModeRegistrant:Landroid/os/Registrant;

    #@178
    if-eqz v2, :cond_9

    #@17a
    .line 2475
    const-string/jumbo v2, "testing emergency call, notify ECM Registrants"

    #@17d
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    #@180
    .line 2476
    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mEmergencyCallbackModeRegistrant:Landroid/os/Registrant;

    #@182
    invoke-virtual {v2}, Landroid/os/Registrant;->notifyRegistrant()V

    #@185
    .line 2479
    :cond_9
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    #@188
    move-result-object v1

    #@189
    goto/16 :goto_0

    #@18b
    .line 2482
    :pswitch_10
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    #@18e
    move-result-object v1

    #@18f
    goto/16 :goto_0

    #@191
    .line 2483
    :pswitch_11
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    #@194
    move-result-object v1

    #@195
    goto/16 :goto_0

    #@197
    .line 2484
    :pswitch_12
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    #@19a
    move-result-object v1

    #@19b
    goto/16 :goto_0

    #@19d
    .line 2485
    :pswitch_13
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseFailCause(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1a0
    move-result-object v1

    #@1a1
    goto/16 :goto_0

    #@1a3
    .line 2486
    :pswitch_14
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseSignalStrength(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1a6
    move-result-object v1

    #@1a7
    goto/16 :goto_0

    #@1a9
    .line 2487
    :pswitch_15
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseStrings(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1ac
    move-result-object v1

    #@1ad
    goto/16 :goto_0

    #@1af
    .line 2488
    :pswitch_16
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseStrings(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1b2
    move-result-object v1

    #@1b3
    goto/16 :goto_0

    #@1b5
    .line 2489
    :pswitch_17
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseStrings(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1b8
    move-result-object v1

    #@1b9
    goto/16 :goto_0

    #@1bb
    .line 2490
    :pswitch_18
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1be
    move-result-object v1

    #@1bf
    goto/16 :goto_0

    #@1c1
    .line 2491
    :pswitch_19
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1c4
    move-result-object v1

    #@1c5
    goto/16 :goto_0

    #@1c7
    .line 2492
    :pswitch_1a
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseSMS(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1ca
    move-result-object v1

    #@1cb
    goto/16 :goto_0

    #@1cd
    .line 2493
    :pswitch_1b
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseSMS(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1d0
    move-result-object v1

    #@1d1
    goto/16 :goto_0

    #@1d3
    .line 2494
    :pswitch_1c
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseSetupDataCall(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1d6
    move-result-object v1

    #@1d7
    goto/16 :goto_0

    #@1d9
    .line 2495
    :pswitch_1d
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseICC_IO(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1dc
    move-result-object v1

    #@1dd
    goto/16 :goto_0

    #@1df
    .line 2496
    :pswitch_1e
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1e2
    move-result-object v1

    #@1e3
    goto/16 :goto_0

    #@1e5
    .line 2497
    :pswitch_1f
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1e8
    move-result-object v1

    #@1e9
    goto/16 :goto_0

    #@1eb
    .line 2498
    :pswitch_20
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1ee
    move-result-object v1

    #@1ef
    goto/16 :goto_0

    #@1f1
    .line 2499
    :pswitch_21
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1f4
    move-result-object v1

    #@1f5
    goto/16 :goto_0

    #@1f7
    .line 2500
    :pswitch_22
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseCallForward(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1fa
    move-result-object v1

    #@1fb
    goto/16 :goto_0

    #@1fd
    .line 2501
    :pswitch_23
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    #@200
    move-result-object v1

    #@201
    goto/16 :goto_0

    #@203
    .line 2502
    :pswitch_24
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    #@206
    move-result-object v1

    #@207
    goto/16 :goto_0

    #@209
    .line 2503
    :pswitch_25
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    #@20c
    move-result-object v1

    #@20d
    goto/16 :goto_0

    #@20f
    .line 2504
    :pswitch_26
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    #@212
    move-result-object v1

    #@213
    goto/16 :goto_0

    #@215
    .line 2505
    :pswitch_27
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    #@218
    move-result-object v1

    #@219
    goto/16 :goto_0

    #@21b
    .line 2506
    :pswitch_28
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    #@21e
    move-result-object v1

    #@21f
    goto/16 :goto_0

    #@221
    .line 2507
    :pswitch_29
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    #@224
    move-result-object v1

    #@225
    goto/16 :goto_0

    #@227
    .line 2508
    :pswitch_2a
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    #@22a
    move-result-object v1

    #@22b
    goto/16 :goto_0

    #@22d
    .line 2509
    :pswitch_2b
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    #@230
    move-result-object v1

    #@231
    goto/16 :goto_0

    #@233
    .line 2510
    :pswitch_2c
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    #@236
    move-result-object v1

    #@237
    goto/16 :goto_0

    #@239
    .line 2511
    :pswitch_2d
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    #@23c
    move-result-object v1

    #@23d
    goto/16 :goto_0

    #@23f
    .line 2512
    :pswitch_2e
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    #@242
    move-result-object v1

    #@243
    goto/16 :goto_0

    #@245
    .line 2513
    :pswitch_2f
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    #@248
    move-result-object v1

    #@249
    goto/16 :goto_0

    #@24b
    .line 2514
    :pswitch_30
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    #@24e
    move-result-object v1

    #@24f
    goto/16 :goto_0

    #@251
    .line 2515
    :pswitch_31
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseOperatorInfos(Landroid/os/Parcel;)Ljava/lang/Object;

    #@254
    move-result-object v1

    #@255
    goto/16 :goto_0

    #@257
    .line 2516
    :pswitch_32
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    #@25a
    move-result-object v1

    #@25b
    goto/16 :goto_0

    #@25d
    .line 2517
    :pswitch_33
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    #@260
    move-result-object v1

    #@261
    goto/16 :goto_0

    #@263
    .line 2518
    :pswitch_34
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    #@266
    move-result-object v1

    #@267
    goto/16 :goto_0

    #@269
    .line 2519
    :pswitch_35
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    #@26c
    move-result-object v1

    #@26d
    goto/16 :goto_0

    #@26f
    .line 2520
    :pswitch_36
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    #@272
    move-result-object v1

    #@273
    goto/16 :goto_0

    #@275
    .line 2521
    :pswitch_37
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    #@278
    move-result-object v1

    #@279
    goto/16 :goto_0

    #@27b
    .line 2522
    :pswitch_38
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    #@27e
    move-result-object v1

    #@27f
    goto/16 :goto_0

    #@281
    .line 2523
    :pswitch_39
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    #@284
    move-result-object v1

    #@285
    goto/16 :goto_0

    #@287
    .line 2524
    :pswitch_3a
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseDataCallList(Landroid/os/Parcel;)Ljava/lang/Object;

    #@28a
    move-result-object v1

    #@28b
    goto/16 :goto_0

    #@28d
    .line 2525
    :pswitch_3b
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    #@290
    move-result-object v1

    #@291
    goto/16 :goto_0

    #@293
    .line 2526
    :pswitch_3c
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseRaw(Landroid/os/Parcel;)Ljava/lang/Object;

    #@296
    move-result-object v1

    #@297
    goto/16 :goto_0

    #@299
    .line 2527
    :pswitch_3d
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseStrings(Landroid/os/Parcel;)Ljava/lang/Object;

    #@29c
    move-result-object v1

    #@29d
    goto/16 :goto_0

    #@29f
    .line 2528
    :pswitch_3e
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    #@2a2
    move-result-object v1

    #@2a3
    goto/16 :goto_0

    #@2a5
    .line 2529
    :pswitch_3f
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    #@2a8
    move-result-object v1

    #@2a9
    goto/16 :goto_0

    #@2ab
    .line 2530
    :pswitch_40
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    #@2ae
    move-result-object v1

    #@2af
    goto/16 :goto_0

    #@2b1
    .line 2531
    :pswitch_41
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    #@2b4
    move-result-object v1

    #@2b5
    goto/16 :goto_0

    #@2b7
    .line 2532
    :pswitch_42
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    #@2ba
    move-result-object v1

    #@2bb
    goto/16 :goto_0

    #@2bd
    .line 2533
    :pswitch_43
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    #@2c0
    move-result-object v1

    #@2c1
    goto/16 :goto_0

    #@2c3
    .line 2534
    :pswitch_44
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    #@2c6
    move-result-object v1

    #@2c7
    goto/16 :goto_0

    #@2c9
    .line 2535
    :pswitch_45
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    #@2cc
    move-result-object v1

    #@2cd
    goto/16 :goto_0

    #@2cf
    .line 2536
    :pswitch_46
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    #@2d2
    move-result-object v1

    #@2d3
    goto/16 :goto_0

    #@2d5
    .line 2537
    :pswitch_47
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    #@2d8
    move-result-object v1

    #@2d9
    goto/16 :goto_0

    #@2db
    .line 2538
    :pswitch_48
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    #@2de
    move-result-object v1

    #@2df
    goto/16 :goto_0

    #@2e1
    .line 2539
    :pswitch_49
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    #@2e4
    move-result-object v1

    #@2e5
    goto/16 :goto_0

    #@2e7
    .line 2540
    :pswitch_4a
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    #@2ea
    move-result-object v1

    #@2eb
    goto/16 :goto_0

    #@2ed
    .line 2541
    :pswitch_4b
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseGetPreferredNetworkType(Landroid/os/Parcel;)Ljava/lang/Object;

    #@2f0
    move-result-object v1

    #@2f1
    goto/16 :goto_0

    #@2f3
    .line 2542
    :pswitch_4c
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseCellList(Landroid/os/Parcel;)Ljava/lang/Object;

    #@2f6
    move-result-object v1

    #@2f7
    goto/16 :goto_0

    #@2f9
    .line 2543
    :pswitch_4d
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    #@2fc
    move-result-object v1

    #@2fd
    goto/16 :goto_0

    #@2ff
    .line 2544
    :pswitch_4e
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    #@302
    move-result-object v1

    #@303
    goto/16 :goto_0

    #@305
    .line 2545
    :pswitch_4f
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    #@308
    move-result-object v1

    #@309
    goto/16 :goto_0

    #@30b
    .line 2546
    :pswitch_50
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    #@30e
    move-result-object v1

    #@30f
    goto/16 :goto_0

    #@311
    .line 2547
    :pswitch_51
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    #@314
    move-result-object v1

    #@315
    goto/16 :goto_0

    #@317
    .line 2548
    :pswitch_52
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    #@31a
    move-result-object v1

    #@31b
    goto/16 :goto_0

    #@31d
    .line 2549
    :pswitch_53
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    #@320
    move-result-object v1

    #@321
    goto/16 :goto_0

    #@323
    .line 2550
    :pswitch_54
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    #@326
    move-result-object v1

    #@327
    goto/16 :goto_0

    #@329
    .line 2551
    :pswitch_55
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    #@32c
    move-result-object v1

    #@32d
    goto/16 :goto_0

    #@32f
    .line 2552
    :pswitch_56
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    #@332
    move-result-object v1

    #@333
    goto/16 :goto_0

    #@335
    .line 2553
    :pswitch_57
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseSMS(Landroid/os/Parcel;)Ljava/lang/Object;

    #@338
    move-result-object v1

    #@339
    goto/16 :goto_0

    #@33b
    .line 2554
    :pswitch_58
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    #@33e
    move-result-object v1

    #@33f
    goto/16 :goto_0

    #@341
    .line 2555
    :pswitch_59
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseGmsBroadcastConfig(Landroid/os/Parcel;)Ljava/lang/Object;

    #@344
    move-result-object v1

    #@345
    goto/16 :goto_0

    #@347
    .line 2556
    :pswitch_5a
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    #@34a
    move-result-object v1

    #@34b
    goto/16 :goto_0

    #@34d
    .line 2557
    :pswitch_5b
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    #@350
    move-result-object v1

    #@351
    goto/16 :goto_0

    #@353
    .line 2558
    :pswitch_5c
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseCdmaBroadcastConfig(Landroid/os/Parcel;)Ljava/lang/Object;

    #@356
    move-result-object v1

    #@357
    goto/16 :goto_0

    #@359
    .line 2559
    :pswitch_5d
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    #@35c
    move-result-object v1

    #@35d
    goto/16 :goto_0

    #@35f
    .line 2560
    :pswitch_5e
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    #@362
    move-result-object v1

    #@363
    goto/16 :goto_0

    #@365
    .line 2561
    :pswitch_5f
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    #@368
    move-result-object v1

    #@369
    goto/16 :goto_0

    #@36b
    .line 2562
    :pswitch_60
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseStrings(Landroid/os/Parcel;)Ljava/lang/Object;

    #@36e
    move-result-object v1

    #@36f
    goto/16 :goto_0

    #@371
    .line 2563
    :pswitch_61
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    #@374
    move-result-object v1

    #@375
    goto/16 :goto_0

    #@377
    .line 2564
    :pswitch_62
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    #@37a
    move-result-object v1

    #@37b
    goto/16 :goto_0

    #@37d
    .line 2565
    :pswitch_63
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseStrings(Landroid/os/Parcel;)Ljava/lang/Object;

    #@380
    move-result-object v1

    #@381
    goto/16 :goto_0

    #@383
    .line 2566
    :pswitch_64
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    #@386
    move-result-object v1

    #@387
    goto/16 :goto_0

    #@389
    .line 2567
    :pswitch_65
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    #@38c
    move-result-object v1

    #@38d
    goto/16 :goto_0

    #@38f
    .line 2568
    :pswitch_66
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    #@392
    move-result-object v1

    #@393
    goto/16 :goto_0

    #@395
    .line 2569
    :pswitch_67
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    #@398
    move-result-object v1

    #@399
    goto/16 :goto_0

    #@39b
    .line 2570
    :pswitch_68
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    #@39e
    move-result-object v1

    #@39f
    goto/16 :goto_0

    #@3a1
    .line 2571
    :pswitch_69
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    #@3a4
    move-result-object v1

    #@3a5
    goto/16 :goto_0

    #@3a7
    .line 2572
    :pswitch_6a
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    #@3aa
    move-result-object v1

    #@3ab
    goto/16 :goto_0

    #@3ad
    .line 2573
    :pswitch_6b
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    #@3b0
    move-result-object v1

    #@3b1
    goto/16 :goto_0

    #@3b3
    .line 2574
    :pswitch_6c
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseICC_IO(Landroid/os/Parcel;)Ljava/lang/Object;

    #@3b6
    move-result-object v1

    #@3b7
    goto/16 :goto_0

    #@3b9
    .line 2575
    :pswitch_6d
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    #@3bc
    move-result-object v1

    #@3bd
    goto/16 :goto_0

    #@3bf
    .line 2576
    :pswitch_6e
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseCellInfoList(Landroid/os/Parcel;)Ljava/util/ArrayList;

    #@3c2
    move-result-object v1

    #@3c3
    goto/16 :goto_0

    #@3c5
    .line 2577
    :pswitch_6f
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    #@3c8
    move-result-object v1

    #@3c9
    goto/16 :goto_0

    #@3cb
    .line 2578
    :pswitch_70
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    #@3ce
    move-result-object v1

    #@3cf
    goto/16 :goto_0

    #@3d1
    .line 2579
    :pswitch_71
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    #@3d4
    move-result-object v1

    #@3d5
    goto/16 :goto_0

    #@3d7
    .line 2580
    :pswitch_72
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    #@3da
    move-result-object v1

    #@3db
    goto/16 :goto_0

    #@3dd
    .line 2581
    :pswitch_73
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseSMS(Landroid/os/Parcel;)Ljava/lang/Object;

    #@3e0
    move-result-object v1

    #@3e1
    goto/16 :goto_0

    #@3e3
    .line 2582
    :pswitch_74
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseICC_IO(Landroid/os/Parcel;)Ljava/lang/Object;

    #@3e6
    move-result-object v1

    #@3e7
    goto/16 :goto_0

    #@3e9
    .line 2583
    :pswitch_75
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    #@3ec
    move-result-object v1

    #@3ed
    goto/16 :goto_0

    #@3ef
    .line 2584
    :pswitch_76
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    #@3f2
    move-result-object v1

    #@3f3
    goto/16 :goto_0

    #@3f5
    .line 2585
    :pswitch_77
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseICC_IO(Landroid/os/Parcel;)Ljava/lang/Object;

    #@3f8
    move-result-object v1

    #@3f9
    goto/16 :goto_0

    #@3fb
    .line 2586
    :pswitch_78
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    #@3fe
    move-result-object v1

    #@3ff
    goto/16 :goto_0

    #@401
    .line 2587
    :pswitch_79
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    #@404
    move-result-object v1

    #@405
    goto/16 :goto_0

    #@407
    .line 2588
    :pswitch_7a
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    #@40a
    move-result-object v1

    #@40b
    goto/16 :goto_0

    #@40d
    .line 2589
    :pswitch_7b
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    #@410
    move-result-object v1

    #@411
    goto/16 :goto_0

    #@413
    .line 2590
    :pswitch_7c
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    #@416
    move-result-object v1

    #@417
    goto/16 :goto_0

    #@419
    .line 2591
    :pswitch_7d
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    #@41c
    move-result-object v1

    #@41d
    goto/16 :goto_0

    #@41f
    .line 2592
    :pswitch_7e
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseHardwareConfig(Landroid/os/Parcel;)Ljava/lang/Object;

    #@422
    move-result-object v1

    #@423
    goto/16 :goto_0

    #@425
    .line 2593
    :pswitch_7f
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseICC_IOBase64(Landroid/os/Parcel;)Ljava/lang/Object;

    #@428
    move-result-object v1

    #@429
    goto/16 :goto_0

    #@42b
    .line 2594
    :pswitch_80
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    #@42e
    move-result-object v1

    #@42f
    goto/16 :goto_0

    #@431
    .line 2595
    :pswitch_81
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseRadioCapability(Landroid/os/Parcel;)Ljava/lang/Object;

    #@434
    move-result-object v1

    #@435
    goto/16 :goto_0

    #@437
    .line 2596
    :pswitch_82
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseRadioCapability(Landroid/os/Parcel;)Ljava/lang/Object;

    #@43a
    move-result-object v1

    #@43b
    goto/16 :goto_0

    #@43d
    .line 2597
    :pswitch_83
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseLceStatus(Landroid/os/Parcel;)Ljava/lang/Object;

    #@440
    move-result-object v1

    #@441
    goto/16 :goto_0

    #@443
    .line 2598
    :pswitch_84
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseLceStatus(Landroid/os/Parcel;)Ljava/lang/Object;

    #@446
    move-result-object v1

    #@447
    goto/16 :goto_0

    #@449
    .line 2599
    :pswitch_85
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseLceData(Landroid/os/Parcel;)Ljava/lang/Object;

    #@44c
    move-result-object v1

    #@44d
    goto/16 :goto_0

    #@44f
    .line 2600
    :pswitch_86
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseActivityData(Landroid/os/Parcel;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    #@452
    move-result-object v1

    #@453
    goto/16 :goto_0

    #@455
    .line 2633
    .end local v1    # "ret":Ljava/lang/Object;
    :pswitch_87
    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mIccStatusChangedRegistrants:Landroid/os/RegistrantList;

    #@457
    if-eqz v2, :cond_5

    #@459
    .line 2635
    new-instance v2, Ljava/lang/StringBuilder;

    #@45b
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@45e
    const-string/jumbo v3, "ON enter sim puk fakeSimStatusChanged: reg count="

    #@461
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@464
    move-result-object v2

    #@465
    .line 2636
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mIccStatusChangedRegistrants:Landroid/os/RegistrantList;

    #@467
    invoke-virtual {v3}, Landroid/os/RegistrantList;->size()I

    #@46a
    move-result v3

    #@46b
    .line 2635
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@46e
    move-result-object v2

    #@46f
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@472
    move-result-object v2

    #@473
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    #@476
    .line 2638
    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mIccStatusChangedRegistrants:Landroid/os/RegistrantList;

    #@478
    invoke-virtual {v2}, Landroid/os/RegistrantList;->notifyRegistrants()V

    #@47b
    goto/16 :goto_1

    #@47d
    .line 2650
    :sswitch_0
    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mIccStatusChangedRegistrants:Landroid/os/RegistrantList;

    #@47f
    if-eqz v2, :cond_6

    #@481
    .line 2652
    new-instance v2, Ljava/lang/StringBuilder;

    #@483
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@486
    const-string/jumbo v3, "ON some errors fakeSimStatusChanged: reg count="

    #@489
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48c
    move-result-object v2

    #@48d
    .line 2653
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mIccStatusChangedRegistrants:Landroid/os/RegistrantList;

    #@48f
    invoke-virtual {v3}, Landroid/os/RegistrantList;->size()I

    #@492
    move-result v3

    #@493
    .line 2652
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@496
    move-result-object v2

    #@497
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@49a
    move-result-object v2

    #@49b
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    #@49e
    .line 2655
    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mIccStatusChangedRegistrants:Landroid/os/RegistrantList;

    #@4a0
    invoke-virtual {v2}, Landroid/os/RegistrantList;->notifyRegistrants()V

    #@4a3
    goto/16 :goto_2

    #@4a5
    .line 2662
    :sswitch_1
    const/4 v2, 0x6

    #@4a6
    if-eq v2, v0, :cond_a

    #@4a8
    .line 2663
    const/4 v2, 0x2

    #@4a9
    if-ne v2, v0, :cond_6

    #@4ab
    .line 2666
    :cond_a
    invoke-direct {p0}, Lcom/android/internal/telephony/RIL;->makeStaticRadioCapability()Lcom/android/internal/telephony/RadioCapability;

    #@4ae
    move-result-object v1

    #@4af
    .line 2667
    .restart local v1    # "ret":Ljava/lang/Object;
    const/4 v0, 0x0

    #@4b0
    goto/16 :goto_2

    #@4b2
    .line 2672
    .end local v1    # "ret":Ljava/lang/Object;
    :sswitch_2
    new-instance v1, Landroid/telephony/ModemActivityInfo;

    #@4b4
    const-wide/16 v2, 0x0

    #@4b6
    .line 2673
    const/4 v5, 0x5

    #@4b7
    new-array v6, v5, [I

    #@4b9
    move v5, v4

    #@4ba
    move v7, v4

    #@4bb
    move v8, v4

    #@4bc
    .line 2672
    invoke-direct/range {v1 .. v8}, Landroid/telephony/ModemActivityInfo;-><init>(JII[III)V

    #@4bf
    .line 2674
    .restart local v1    # "ret":Ljava/lang/Object;
    const/4 v0, 0x0

    #@4c0
    .line 2675
    goto/16 :goto_2

    #@4c2
    .line 2453
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_22
        :pswitch_23
        :pswitch_24
        :pswitch_25
        :pswitch_26
        :pswitch_27
        :pswitch_28
        :pswitch_29
        :pswitch_2a
        :pswitch_2b
        :pswitch_2c
        :pswitch_2d
        :pswitch_2e
        :pswitch_2f
        :pswitch_30
        :pswitch_31
        :pswitch_32
        :pswitch_33
        :pswitch_34
        :pswitch_35
        :pswitch_36
        :pswitch_37
        :pswitch_38
        :pswitch_39
        :pswitch_3a
        :pswitch_3b
        :pswitch_3c
        :pswitch_3d
        :pswitch_3e
        :pswitch_3f
        :pswitch_40
        :pswitch_41
        :pswitch_42
        :pswitch_43
        :pswitch_44
        :pswitch_45
        :pswitch_46
        :pswitch_47
        :pswitch_48
        :pswitch_49
        :pswitch_4a
        :pswitch_4b
        :pswitch_4c
        :pswitch_4d
        :pswitch_4e
        :pswitch_4f
        :pswitch_50
        :pswitch_51
        :pswitch_52
        :pswitch_53
        :pswitch_54
        :pswitch_55
        :pswitch_56
        :pswitch_5f
        :pswitch_57
        :pswitch_58
        :pswitch_59
        :pswitch_5a
        :pswitch_5b
        :pswitch_5c
        :pswitch_5d
        :pswitch_5e
        :pswitch_60
        :pswitch_61
        :pswitch_62
        :pswitch_63
        :pswitch_66
        :pswitch_64
        :pswitch_65
        :pswitch_67
        :pswitch_68
        :pswitch_69
        :pswitch_6a
        :pswitch_6b
        :pswitch_6c
        :pswitch_6d
        :pswitch_6e
        :pswitch_6f
        :pswitch_70
        :pswitch_72
        :pswitch_73
        :pswitch_74
        :pswitch_75
        :pswitch_76
        :pswitch_77
        :pswitch_78
        :pswitch_79
        :pswitch_7a
        :pswitch_7b
        :pswitch_7c
        :pswitch_7d
        :pswitch_7e
        :pswitch_7f
        :pswitch_0
        :pswitch_0
        :pswitch_71
        :pswitch_80
        :pswitch_81
        :pswitch_82
        :pswitch_83
        :pswitch_84
        :pswitch_85
        :pswitch_86
    .end packed-switch

    #@5d4
    .line 2630
    :pswitch_data_1
    .packed-switch 0x3
        :pswitch_87
        :pswitch_2
        :pswitch_87
    .end packed-switch

    #@5de
    .line 2644
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x4 -> :sswitch_0
        0x6 -> :sswitch_0
        0x7 -> :sswitch_0
        0x2b -> :sswitch_0
        0x82 -> :sswitch_1
        0x87 -> :sswitch_2
    .end sparse-switch
.end method

.method private processUnsolicited(Landroid/os/Parcel;)V
    .locals 26
    .param p1, "p"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 2797
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    #@3
    move-result v15

    #@4
    .line 2799
    .local v15, "response":I
    packed-switch v15, :pswitch_data_0

    #@7
    .line 2853
    :pswitch_0
    :try_start_0
    new-instance v21, Ljava/lang/RuntimeException;

    #@9
    new-instance v22, Ljava/lang/StringBuilder;

    #@b
    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    const-string/jumbo v23, "Unrecognized unsol response: "

    #@11
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v22

    #@15
    move-object/from16 v0, v22

    #@17
    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v22

    #@1b
    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v22

    #@1f
    invoke-direct/range {v21 .. v22}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@22
    throw v21
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    #@23
    .line 2855
    :catch_0
    move-exception v20

    #@24
    .line 2856
    .local v20, "tr":Ljava/lang/Throwable;
    const-string/jumbo v21, "RILJ"

    #@27
    new-instance v22, Ljava/lang/StringBuilder;

    #@29
    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    #@2c
    const-string/jumbo v23, "Exception processing unsol response: "

    #@2f
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v22

    #@33
    move-object/from16 v0, v22

    #@35
    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@38
    move-result-object v22

    #@39
    .line 2857
    const-string/jumbo v23, "Exception:"

    #@3c
    .line 2856
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v22

    #@40
    .line 2857
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    #@43
    move-result-object v23

    #@44
    .line 2856
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v22

    #@48
    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4b
    move-result-object v22

    #@4c
    invoke-static/range {v21 .. v22}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@4f
    .line 2858
    return-void

    #@50
    .line 2806
    .end local v20    # "tr":Ljava/lang/Throwable;
    :pswitch_1
    :try_start_1
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    #@53
    move-result-object v17

    #@54
    .line 2861
    .local v17, "ret":Ljava/lang/Object;
    :goto_0
    packed-switch v15, :pswitch_data_1

    #@57
    .line 2793
    .end local v17    # "ret":Ljava/lang/Object;
    :cond_0
    :goto_1
    :pswitch_2
    return-void

    #@58
    .line 2807
    :pswitch_3
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    #@5b
    move-result-object v17

    #@5c
    .restart local v17    # "ret":Ljava/lang/Object;
    goto :goto_0

    #@5d
    .line 2808
    .end local v17    # "ret":Ljava/lang/Object;
    :pswitch_4
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    #@60
    move-result-object v17

    #@61
    .restart local v17    # "ret":Ljava/lang/Object;
    goto :goto_0

    #@62
    .line 2809
    .end local v17    # "ret":Ljava/lang/Object;
    :pswitch_5
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    #@65
    move-result-object v17

    #@66
    .restart local v17    # "ret":Ljava/lang/Object;
    goto :goto_0

    #@67
    .line 2810
    .end local v17    # "ret":Ljava/lang/Object;
    :pswitch_6
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    #@6a
    move-result-object v17

    #@6b
    .restart local v17    # "ret":Ljava/lang/Object;
    goto :goto_0

    #@6c
    .line 2811
    .end local v17    # "ret":Ljava/lang/Object;
    :pswitch_7
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    #@6f
    move-result-object v17

    #@70
    .restart local v17    # "ret":Ljava/lang/Object;
    goto :goto_0

    #@71
    .line 2812
    .end local v17    # "ret":Ljava/lang/Object;
    :pswitch_8
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseStrings(Landroid/os/Parcel;)Ljava/lang/Object;

    #@74
    move-result-object v17

    #@75
    .restart local v17    # "ret":Ljava/lang/Object;
    goto :goto_0

    #@76
    .line 2813
    .end local v17    # "ret":Ljava/lang/Object;
    :pswitch_9
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    #@79
    move-result-object v17

    #@7a
    .restart local v17    # "ret":Ljava/lang/Object;
    goto :goto_0

    #@7b
    .line 2814
    .end local v17    # "ret":Ljava/lang/Object;
    :pswitch_a
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseSignalStrength(Landroid/os/Parcel;)Ljava/lang/Object;

    #@7e
    move-result-object v17

    #@7f
    .restart local v17    # "ret":Ljava/lang/Object;
    goto :goto_0

    #@80
    .line 2815
    .end local v17    # "ret":Ljava/lang/Object;
    :pswitch_b
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseDataCallList(Landroid/os/Parcel;)Ljava/lang/Object;

    #@83
    move-result-object v17

    #@84
    .restart local v17    # "ret":Ljava/lang/Object;
    goto :goto_0

    #@85
    .line 2816
    .end local v17    # "ret":Ljava/lang/Object;
    :pswitch_c
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseSuppServiceNotification(Landroid/os/Parcel;)Ljava/lang/Object;

    #@88
    move-result-object v17

    #@89
    .restart local v17    # "ret":Ljava/lang/Object;
    goto :goto_0

    #@8a
    .line 2817
    .end local v17    # "ret":Ljava/lang/Object;
    :pswitch_d
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    #@8d
    move-result-object v17

    #@8e
    .restart local v17    # "ret":Ljava/lang/Object;
    goto :goto_0

    #@8f
    .line 2818
    .end local v17    # "ret":Ljava/lang/Object;
    :pswitch_e
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    #@92
    move-result-object v17

    #@93
    .restart local v17    # "ret":Ljava/lang/Object;
    goto :goto_0

    #@94
    .line 2819
    .end local v17    # "ret":Ljava/lang/Object;
    :pswitch_f
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    #@97
    move-result-object v17

    #@98
    .restart local v17    # "ret":Ljava/lang/Object;
    goto :goto_0

    #@99
    .line 2820
    .end local v17    # "ret":Ljava/lang/Object;
    :pswitch_10
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    #@9c
    move-result-object v17

    #@9d
    .restart local v17    # "ret":Ljava/lang/Object;
    goto :goto_0

    #@9e
    .line 2821
    .end local v17    # "ret":Ljava/lang/Object;
    :pswitch_11
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    #@a1
    move-result-object v17

    #@a2
    .restart local v17    # "ret":Ljava/lang/Object;
    goto :goto_0

    #@a3
    .line 2822
    .end local v17    # "ret":Ljava/lang/Object;
    :pswitch_12
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseSimRefresh(Landroid/os/Parcel;)Ljava/lang/Object;

    #@a6
    move-result-object v17

    #@a7
    .restart local v17    # "ret":Ljava/lang/Object;
    goto :goto_0

    #@a8
    .line 2823
    .end local v17    # "ret":Ljava/lang/Object;
    :pswitch_13
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseCallRing(Landroid/os/Parcel;)Ljava/lang/Object;

    #@ab
    move-result-object v17

    #@ac
    .restart local v17    # "ret":Ljava/lang/Object;
    goto :goto_0

    #@ad
    .line 2824
    .end local v17    # "ret":Ljava/lang/Object;
    :pswitch_14
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    #@b0
    move-result-object v17

    #@b1
    .restart local v17    # "ret":Ljava/lang/Object;
    goto :goto_0

    #@b2
    .line 2825
    .end local v17    # "ret":Ljava/lang/Object;
    :pswitch_15
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    #@b5
    move-result-object v17

    #@b6
    .restart local v17    # "ret":Ljava/lang/Object;
    goto :goto_0

    #@b7
    .line 2826
    .end local v17    # "ret":Ljava/lang/Object;
    :pswitch_16
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseCdmaSms(Landroid/os/Parcel;)Ljava/lang/Object;

    #@ba
    move-result-object v17

    #@bb
    .restart local v17    # "ret":Ljava/lang/Object;
    goto :goto_0

    #@bc
    .line 2827
    .end local v17    # "ret":Ljava/lang/Object;
    :pswitch_17
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseRaw(Landroid/os/Parcel;)Ljava/lang/Object;

    #@bf
    move-result-object v17

    #@c0
    .restart local v17    # "ret":Ljava/lang/Object;
    goto :goto_0

    #@c1
    .line 2828
    .end local v17    # "ret":Ljava/lang/Object;
    :pswitch_18
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    #@c4
    move-result-object v17

    #@c5
    .restart local v17    # "ret":Ljava/lang/Object;
    goto :goto_0

    #@c6
    .line 2829
    .end local v17    # "ret":Ljava/lang/Object;
    :pswitch_19
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    #@c9
    move-result-object v17

    #@ca
    .restart local v17    # "ret":Ljava/lang/Object;
    goto :goto_0

    #@cb
    .line 2830
    .end local v17    # "ret":Ljava/lang/Object;
    :pswitch_1a
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseCdmaCallWaiting(Landroid/os/Parcel;)Ljava/lang/Object;

    #@ce
    move-result-object v17

    #@cf
    .restart local v17    # "ret":Ljava/lang/Object;
    goto :goto_0

    #@d0
    .line 2831
    .end local v17    # "ret":Ljava/lang/Object;
    :pswitch_1b
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    #@d3
    move-result-object v17

    #@d4
    .restart local v17    # "ret":Ljava/lang/Object;
    goto :goto_0

    #@d5
    .line 2832
    .end local v17    # "ret":Ljava/lang/Object;
    :pswitch_1c
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseCdmaInformationRecord(Landroid/os/Parcel;)Ljava/util/ArrayList;

    #@d8
    move-result-object v17

    #@d9
    .restart local v17    # "ret":Ljava/lang/Object;
    goto/16 :goto_0

    #@db
    .line 2833
    .end local v17    # "ret":Ljava/lang/Object;
    :pswitch_1d
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseRaw(Landroid/os/Parcel;)Ljava/lang/Object;

    #@de
    move-result-object v17

    #@df
    .restart local v17    # "ret":Ljava/lang/Object;
    goto/16 :goto_0

    #@e1
    .line 2834
    .end local v17    # "ret":Ljava/lang/Object;
    :pswitch_1e
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    #@e4
    move-result-object v17

    #@e5
    .restart local v17    # "ret":Ljava/lang/Object;
    goto/16 :goto_0

    #@e7
    .line 2835
    .end local v17    # "ret":Ljava/lang/Object;
    :pswitch_1f
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    #@ea
    move-result-object v17

    #@eb
    .restart local v17    # "ret":Ljava/lang/Object;
    goto/16 :goto_0

    #@ed
    .line 2836
    .end local v17    # "ret":Ljava/lang/Object;
    :pswitch_20
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    #@f0
    move-result-object v17

    #@f1
    .restart local v17    # "ret":Ljava/lang/Object;
    goto/16 :goto_0

    #@f3
    .line 2837
    .end local v17    # "ret":Ljava/lang/Object;
    :pswitch_21
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    #@f6
    move-result-object v17

    #@f7
    .restart local v17    # "ret":Ljava/lang/Object;
    goto/16 :goto_0

    #@f9
    .line 2838
    .end local v17    # "ret":Ljava/lang/Object;
    :pswitch_22
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    #@fc
    move-result-object v17

    #@fd
    .restart local v17    # "ret":Ljava/lang/Object;
    goto/16 :goto_0

    #@ff
    .line 2839
    .end local v17    # "ret":Ljava/lang/Object;
    :pswitch_23
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    #@102
    move-result-object v17

    #@103
    .restart local v17    # "ret":Ljava/lang/Object;
    goto/16 :goto_0

    #@105
    .line 2840
    .end local v17    # "ret":Ljava/lang/Object;
    :pswitch_24
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    #@108
    move-result-object v17

    #@109
    .restart local v17    # "ret":Ljava/lang/Object;
    goto/16 :goto_0

    #@10b
    .line 2841
    .end local v17    # "ret":Ljava/lang/Object;
    :pswitch_25
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseCellInfoList(Landroid/os/Parcel;)Ljava/util/ArrayList;

    #@10e
    move-result-object v17

    #@10f
    .restart local v17    # "ret":Ljava/lang/Object;
    goto/16 :goto_0

    #@111
    .line 2842
    .end local v17    # "ret":Ljava/lang/Object;
    :pswitch_26
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    #@114
    move-result-object v17

    #@115
    .restart local v17    # "ret":Ljava/lang/Object;
    goto/16 :goto_0

    #@117
    .line 2843
    .end local v17    # "ret":Ljava/lang/Object;
    :pswitch_27
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    #@11a
    move-result-object v17

    #@11b
    .restart local v17    # "ret":Ljava/lang/Object;
    goto/16 :goto_0

    #@11d
    .line 2844
    .end local v17    # "ret":Ljava/lang/Object;
    :pswitch_28
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    #@120
    move-result-object v17

    #@121
    .restart local v17    # "ret":Ljava/lang/Object;
    goto/16 :goto_0

    #@123
    .line 2845
    .end local v17    # "ret":Ljava/lang/Object;
    :pswitch_29
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseHardwareConfig(Landroid/os/Parcel;)Ljava/lang/Object;

    #@126
    move-result-object v17

    #@127
    .restart local v17    # "ret":Ljava/lang/Object;
    goto/16 :goto_0

    #@129
    .line 2847
    .end local v17    # "ret":Ljava/lang/Object;
    :pswitch_2a
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseRadioCapability(Landroid/os/Parcel;)Ljava/lang/Object;

    #@12c
    move-result-object v17

    #@12d
    .restart local v17    # "ret":Ljava/lang/Object;
    goto/16 :goto_0

    #@12f
    .line 2848
    .end local v17    # "ret":Ljava/lang/Object;
    :pswitch_2b
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseSsData(Landroid/os/Parcel;)Ljava/lang/Object;

    #@132
    move-result-object v17

    #@133
    .restart local v17    # "ret":Ljava/lang/Object;
    goto/16 :goto_0

    #@135
    .line 2849
    .end local v17    # "ret":Ljava/lang/Object;
    :pswitch_2c
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    #@138
    move-result-object v17

    #@139
    .restart local v17    # "ret":Ljava/lang/Object;
    goto/16 :goto_0

    #@13b
    .line 2850
    .end local v17    # "ret":Ljava/lang/Object;
    :pswitch_2d
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseLceData(Landroid/os/Parcel;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    #@13e
    move-result-object v17

    #@13f
    .restart local v17    # "ret":Ljava/lang/Object;
    goto/16 :goto_0

    #@141
    .line 2864
    :pswitch_2e
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    #@144
    move-result v21

    #@145
    move-object/from16 v0, p0

    #@147
    move/from16 v1, v21

    #@149
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/RIL;->getRadioStateFromInt(I)Lcom/android/internal/telephony/CommandsInterface$RadioState;

    #@14c
    move-result-object v8

    #@14d
    .line 2865
    .local v8, "newState":Lcom/android/internal/telephony/CommandsInterface$RadioState;
    invoke-virtual {v8}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->toString()Ljava/lang/String;

    #@150
    move-result-object v21

    #@151
    move-object/from16 v0, p0

    #@153
    move-object/from16 v1, v21

    #@155
    invoke-direct {v0, v15, v1}, Lcom/android/internal/telephony/RIL;->unsljLogMore(ILjava/lang/String;)V

    #@158
    .line 2867
    move-object/from16 v0, p0

    #@15a
    invoke-direct {v0, v8}, Lcom/android/internal/telephony/RIL;->switchToRadioState(Lcom/android/internal/telephony/CommandsInterface$RadioState;)V

    #@15d
    goto/16 :goto_1

    #@15f
    .line 2870
    .end local v8    # "newState":Lcom/android/internal/telephony/CommandsInterface$RadioState;
    :pswitch_2f
    move-object/from16 v0, p0

    #@161
    invoke-direct {v0, v15}, Lcom/android/internal/telephony/RIL;->unsljLog(I)V

    #@164
    .line 2872
    move-object/from16 v0, p0

    #@166
    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mImsNetworkStateChangedRegistrants:Landroid/os/RegistrantList;

    #@168
    move-object/from16 v21, v0

    #@16a
    .line 2873
    new-instance v22, Landroid/os/AsyncResult;

    #@16c
    const/16 v23, 0x0

    #@16e
    const/16 v24, 0x0

    #@170
    const/16 v25, 0x0

    #@172
    invoke-direct/range {v22 .. v25}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    #@175
    .line 2872
    invoke-virtual/range {v21 .. v22}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    #@178
    goto/16 :goto_1

    #@17a
    .line 2876
    :pswitch_30
    move-object/from16 v0, p0

    #@17c
    invoke-direct {v0, v15}, Lcom/android/internal/telephony/RIL;->unsljLog(I)V

    #@17f
    .line 2878
    move-object/from16 v0, p0

    #@181
    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mCallStateRegistrants:Landroid/os/RegistrantList;

    #@183
    move-object/from16 v21, v0

    #@185
    .line 2879
    new-instance v22, Landroid/os/AsyncResult;

    #@187
    const/16 v23, 0x0

    #@189
    const/16 v24, 0x0

    #@18b
    const/16 v25, 0x0

    #@18d
    invoke-direct/range {v22 .. v25}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    #@190
    .line 2878
    invoke-virtual/range {v21 .. v22}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    #@193
    goto/16 :goto_1

    #@195
    .line 2882
    :pswitch_31
    move-object/from16 v0, p0

    #@197
    invoke-direct {v0, v15}, Lcom/android/internal/telephony/RIL;->unsljLog(I)V

    #@19a
    .line 2884
    move-object/from16 v0, p0

    #@19c
    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mVoiceNetworkStateRegistrants:Landroid/os/RegistrantList;

    #@19e
    move-object/from16 v21, v0

    #@1a0
    .line 2885
    new-instance v22, Landroid/os/AsyncResult;

    #@1a2
    const/16 v23, 0x0

    #@1a4
    const/16 v24, 0x0

    #@1a6
    const/16 v25, 0x0

    #@1a8
    invoke-direct/range {v22 .. v25}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    #@1ab
    .line 2884
    invoke-virtual/range {v21 .. v22}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    #@1ae
    goto/16 :goto_1

    #@1b0
    .line 2888
    :pswitch_32
    move-object/from16 v0, p0

    #@1b2
    invoke-direct {v0, v15}, Lcom/android/internal/telephony/RIL;->unsljLog(I)V

    #@1b5
    .line 2891
    const/16 v21, 0x2

    #@1b7
    move/from16 v0, v21

    #@1b9
    new-array v4, v0, [Ljava/lang/String;

    #@1bb
    .line 2893
    .local v4, "a":[Ljava/lang/String;
    check-cast v17, Ljava/lang/String;

    #@1bd
    .end local v17    # "ret":Ljava/lang/Object;
    const/16 v21, 0x1

    #@1bf
    aput-object v17, v4, v21

    #@1c1
    .line 2897
    invoke-static {v4}, Landroid/telephony/SmsMessage;->newFromCMT([Ljava/lang/String;)Landroid/telephony/SmsMessage;

    #@1c4
    move-result-object v18

    #@1c5
    .line 2898
    .local v18, "sms":Landroid/telephony/SmsMessage;
    move-object/from16 v0, p0

    #@1c7
    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mGsmSmsRegistrant:Landroid/os/Registrant;

    #@1c9
    move-object/from16 v21, v0

    #@1cb
    if-eqz v21, :cond_0

    #@1cd
    .line 2899
    move-object/from16 v0, p0

    #@1cf
    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mGsmSmsRegistrant:Landroid/os/Registrant;

    #@1d1
    move-object/from16 v21, v0

    #@1d3
    .line 2900
    new-instance v22, Landroid/os/AsyncResult;

    #@1d5
    const/16 v23, 0x0

    #@1d7
    const/16 v24, 0x0

    #@1d9
    move-object/from16 v0, v22

    #@1db
    move-object/from16 v1, v23

    #@1dd
    move-object/from16 v2, v18

    #@1df
    move-object/from16 v3, v24

    #@1e1
    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    #@1e4
    .line 2899
    invoke-virtual/range {v21 .. v22}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    #@1e7
    goto/16 :goto_1

    #@1e9
    .line 2905
    .end local v4    # "a":[Ljava/lang/String;
    .end local v18    # "sms":Landroid/telephony/SmsMessage;
    .restart local v17    # "ret":Ljava/lang/Object;
    :pswitch_33
    move-object/from16 v0, p0

    #@1eb
    move-object/from16 v1, v17

    #@1ed
    invoke-direct {v0, v15, v1}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    #@1f0
    .line 2907
    move-object/from16 v0, p0

    #@1f2
    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mSmsStatusRegistrant:Landroid/os/Registrant;

    #@1f4
    move-object/from16 v21, v0

    #@1f6
    if-eqz v21, :cond_0

    #@1f8
    .line 2908
    move-object/from16 v0, p0

    #@1fa
    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mSmsStatusRegistrant:Landroid/os/Registrant;

    #@1fc
    move-object/from16 v21, v0

    #@1fe
    .line 2909
    new-instance v22, Landroid/os/AsyncResult;

    #@200
    const/16 v23, 0x0

    #@202
    const/16 v24, 0x0

    #@204
    move-object/from16 v0, v22

    #@206
    move-object/from16 v1, v23

    #@208
    move-object/from16 v2, v17

    #@20a
    move-object/from16 v3, v24

    #@20c
    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    #@20f
    .line 2908
    invoke-virtual/range {v21 .. v22}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    #@212
    goto/16 :goto_1

    #@214
    .line 2913
    :pswitch_34
    move-object/from16 v0, p0

    #@216
    move-object/from16 v1, v17

    #@218
    invoke-direct {v0, v15, v1}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    #@21b
    move-object/from16 v19, v17

    #@21d
    .line 2915
    check-cast v19, [I

    #@21f
    .line 2917
    .local v19, "smsIndex":[I
    move-object/from16 v0, v19

    #@221
    array-length v0, v0

    #@222
    move/from16 v21, v0

    #@224
    const/16 v22, 0x1

    #@226
    move/from16 v0, v21

    #@228
    move/from16 v1, v22

    #@22a
    if-ne v0, v1, :cond_1

    #@22c
    .line 2918
    move-object/from16 v0, p0

    #@22e
    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mSmsOnSimRegistrant:Landroid/os/Registrant;

    #@230
    move-object/from16 v21, v0

    #@232
    if-eqz v21, :cond_0

    #@234
    .line 2919
    move-object/from16 v0, p0

    #@236
    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mSmsOnSimRegistrant:Landroid/os/Registrant;

    #@238
    move-object/from16 v21, v0

    #@23a
    .line 2920
    new-instance v22, Landroid/os/AsyncResult;

    #@23c
    const/16 v23, 0x0

    #@23e
    const/16 v24, 0x0

    #@240
    move-object/from16 v0, v22

    #@242
    move-object/from16 v1, v23

    #@244
    move-object/from16 v2, v19

    #@246
    move-object/from16 v3, v24

    #@248
    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    #@24b
    .line 2919
    invoke-virtual/range {v21 .. v22}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    #@24e
    goto/16 :goto_1

    #@250
    .line 2923
    :cond_1
    new-instance v21, Ljava/lang/StringBuilder;

    #@252
    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    #@255
    const-string/jumbo v22, " NEW_SMS_ON_SIM ERROR with wrong length "

    #@258
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25b
    move-result-object v21

    #@25c
    .line 2924
    move-object/from16 v0, v19

    #@25e
    array-length v0, v0

    #@25f
    move/from16 v22, v0

    #@261
    .line 2923
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@264
    move-result-object v21

    #@265
    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@268
    move-result-object v21

    #@269
    move-object/from16 v0, p0

    #@26b
    move-object/from16 v1, v21

    #@26d
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    #@270
    goto/16 :goto_1

    #@272
    .end local v19    # "smsIndex":[I
    :pswitch_35
    move-object/from16 v14, v17

    #@274
    .line 2928
    check-cast v14, [Ljava/lang/String;

    #@276
    .line 2930
    .local v14, "resp":[Ljava/lang/String;
    array-length v0, v14

    #@277
    move/from16 v21, v0

    #@279
    const/16 v22, 0x2

    #@27b
    move/from16 v0, v21

    #@27d
    move/from16 v1, v22

    #@27f
    if-ge v0, v1, :cond_2

    #@281
    .line 2931
    const/16 v21, 0x2

    #@283
    move/from16 v0, v21

    #@285
    new-array v14, v0, [Ljava/lang/String;

    #@287
    .line 2932
    check-cast v17, [Ljava/lang/String;

    #@289
    .end local v17    # "ret":Ljava/lang/Object;
    const/16 v21, 0x0

    #@28b
    aget-object v21, v17, v21

    #@28d
    const/16 v22, 0x0

    #@28f
    aput-object v21, v14, v22

    #@291
    .line 2933
    const/16 v21, 0x0

    #@293
    const/16 v22, 0x1

    #@295
    aput-object v21, v14, v22

    #@297
    .line 2935
    :cond_2
    const/16 v21, 0x0

    #@299
    aget-object v21, v14, v21

    #@29b
    move-object/from16 v0, p0

    #@29d
    move-object/from16 v1, v21

    #@29f
    invoke-direct {v0, v15, v1}, Lcom/android/internal/telephony/RIL;->unsljLogMore(ILjava/lang/String;)V

    #@2a2
    .line 2936
    move-object/from16 v0, p0

    #@2a4
    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mUSSDRegistrant:Landroid/os/Registrant;

    #@2a6
    move-object/from16 v21, v0

    #@2a8
    if-eqz v21, :cond_0

    #@2aa
    .line 2937
    move-object/from16 v0, p0

    #@2ac
    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mUSSDRegistrant:Landroid/os/Registrant;

    #@2ae
    move-object/from16 v21, v0

    #@2b0
    .line 2938
    new-instance v22, Landroid/os/AsyncResult;

    #@2b2
    const/16 v23, 0x0

    #@2b4
    const/16 v24, 0x0

    #@2b6
    move-object/from16 v0, v22

    #@2b8
    move-object/from16 v1, v23

    #@2ba
    move-object/from16 v2, v24

    #@2bc
    invoke-direct {v0, v1, v14, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    #@2bf
    .line 2937
    invoke-virtual/range {v21 .. v22}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    #@2c2
    goto/16 :goto_1

    #@2c4
    .line 2942
    .end local v14    # "resp":[Ljava/lang/String;
    .restart local v17    # "ret":Ljava/lang/Object;
    :pswitch_36
    move-object/from16 v0, p0

    #@2c6
    move-object/from16 v1, v17

    #@2c8
    invoke-direct {v0, v15, v1}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    #@2cb
    .line 2946
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    #@2ce
    move-result-wide v10

    #@2cf
    .line 2948
    .local v10, "nitzReceiveTime":J
    const/16 v21, 0x2

    #@2d1
    move/from16 v0, v21

    #@2d3
    new-array v0, v0, [Ljava/lang/Object;

    #@2d5
    move-object/from16 v16, v0

    #@2d7
    .line 2950
    .local v16, "result":[Ljava/lang/Object;
    const/16 v21, 0x0

    #@2d9
    aput-object v17, v16, v21

    #@2db
    .line 2951
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@2de
    move-result-object v21

    #@2df
    const/16 v22, 0x1

    #@2e1
    aput-object v21, v16, v22

    #@2e3
    .line 2954
    const-string/jumbo v21, "telephony.test.ignore.nitz"

    #@2e6
    const/16 v22, 0x0

    #@2e8
    .line 2953
    invoke-static/range {v21 .. v22}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    #@2eb
    move-result v6

    #@2ec
    .line 2956
    .local v6, "ignoreNitz":Z
    if-eqz v6, :cond_3

    #@2ee
    .line 2957
    const-string/jumbo v21, "ignoring UNSOL_NITZ_TIME_RECEIVED"

    #@2f1
    move-object/from16 v0, p0

    #@2f3
    move-object/from16 v1, v21

    #@2f5
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    #@2f8
    goto/16 :goto_1

    #@2fa
    .line 2959
    :cond_3
    move-object/from16 v0, p0

    #@2fc
    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mNITZTimeRegistrant:Landroid/os/Registrant;

    #@2fe
    move-object/from16 v21, v0

    #@300
    if-eqz v21, :cond_4

    #@302
    .line 2961
    move-object/from16 v0, p0

    #@304
    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mNITZTimeRegistrant:Landroid/os/Registrant;

    #@306
    move-object/from16 v21, v0

    #@308
    .line 2962
    new-instance v22, Landroid/os/AsyncResult;

    #@30a
    const/16 v23, 0x0

    #@30c
    const/16 v24, 0x0

    #@30e
    move-object/from16 v0, v22

    #@310
    move-object/from16 v1, v23

    #@312
    move-object/from16 v2, v16

    #@314
    move-object/from16 v3, v24

    #@316
    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    #@319
    .line 2961
    invoke-virtual/range {v21 .. v22}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    #@31c
    .line 2966
    :cond_4
    move-object/from16 v0, v16

    #@31e
    move-object/from16 v1, p0

    #@320
    iput-object v0, v1, Lcom/android/internal/telephony/RIL;->mLastNITZTimeInfo:Ljava/lang/Object;

    #@322
    goto/16 :goto_1

    #@324
    .line 2975
    .end local v6    # "ignoreNitz":Z
    .end local v10    # "nitzReceiveTime":J
    .end local v16    # "result":[Ljava/lang/Object;
    :pswitch_37
    move-object/from16 v0, p0

    #@326
    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mSignalStrengthRegistrant:Landroid/os/Registrant;

    #@328
    move-object/from16 v21, v0

    #@32a
    if-eqz v21, :cond_0

    #@32c
    .line 2976
    move-object/from16 v0, p0

    #@32e
    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mSignalStrengthRegistrant:Landroid/os/Registrant;

    #@330
    move-object/from16 v21, v0

    #@332
    .line 2977
    new-instance v22, Landroid/os/AsyncResult;

    #@334
    const/16 v23, 0x0

    #@336
    const/16 v24, 0x0

    #@338
    move-object/from16 v0, v22

    #@33a
    move-object/from16 v1, v23

    #@33c
    move-object/from16 v2, v17

    #@33e
    move-object/from16 v3, v24

    #@340
    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    #@343
    .line 2976
    invoke-virtual/range {v21 .. v22}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    #@346
    goto/16 :goto_1

    #@348
    .line 2981
    :pswitch_38
    move-object/from16 v0, p0

    #@34a
    move-object/from16 v1, v17

    #@34c
    invoke-direct {v0, v15, v1}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    #@34f
    .line 2983
    move-object/from16 v0, p0

    #@351
    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mDataNetworkStateRegistrants:Landroid/os/RegistrantList;

    #@353
    move-object/from16 v21, v0

    #@355
    new-instance v22, Landroid/os/AsyncResult;

    #@357
    const/16 v23, 0x0

    #@359
    const/16 v24, 0x0

    #@35b
    move-object/from16 v0, v22

    #@35d
    move-object/from16 v1, v23

    #@35f
    move-object/from16 v2, v17

    #@361
    move-object/from16 v3, v24

    #@363
    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    #@366
    invoke-virtual/range {v21 .. v22}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    #@369
    goto/16 :goto_1

    #@36b
    .line 2987
    :pswitch_39
    move-object/from16 v0, p0

    #@36d
    move-object/from16 v1, v17

    #@36f
    invoke-direct {v0, v15, v1}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    #@372
    .line 2989
    move-object/from16 v0, p0

    #@374
    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mSsnRegistrant:Landroid/os/Registrant;

    #@376
    move-object/from16 v21, v0

    #@378
    if-eqz v21, :cond_0

    #@37a
    .line 2990
    move-object/from16 v0, p0

    #@37c
    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mSsnRegistrant:Landroid/os/Registrant;

    #@37e
    move-object/from16 v21, v0

    #@380
    .line 2991
    new-instance v22, Landroid/os/AsyncResult;

    #@382
    const/16 v23, 0x0

    #@384
    const/16 v24, 0x0

    #@386
    move-object/from16 v0, v22

    #@388
    move-object/from16 v1, v23

    #@38a
    move-object/from16 v2, v17

    #@38c
    move-object/from16 v3, v24

    #@38e
    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    #@391
    .line 2990
    invoke-virtual/range {v21 .. v22}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    #@394
    goto/16 :goto_1

    #@396
    .line 2996
    :pswitch_3a
    move-object/from16 v0, p0

    #@398
    invoke-direct {v0, v15}, Lcom/android/internal/telephony/RIL;->unsljLog(I)V

    #@39b
    .line 2998
    move-object/from16 v0, p0

    #@39d
    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mCatSessionEndRegistrant:Landroid/os/Registrant;

    #@39f
    move-object/from16 v21, v0

    #@3a1
    if-eqz v21, :cond_0

    #@3a3
    .line 2999
    move-object/from16 v0, p0

    #@3a5
    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mCatSessionEndRegistrant:Landroid/os/Registrant;

    #@3a7
    move-object/from16 v21, v0

    #@3a9
    .line 3000
    new-instance v22, Landroid/os/AsyncResult;

    #@3ab
    const/16 v23, 0x0

    #@3ad
    const/16 v24, 0x0

    #@3af
    move-object/from16 v0, v22

    #@3b1
    move-object/from16 v1, v23

    #@3b3
    move-object/from16 v2, v17

    #@3b5
    move-object/from16 v3, v24

    #@3b7
    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    #@3ba
    .line 2999
    invoke-virtual/range {v21 .. v22}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    #@3bd
    goto/16 :goto_1

    #@3bf
    .line 3005
    :pswitch_3b
    move-object/from16 v0, p0

    #@3c1
    invoke-direct {v0, v15}, Lcom/android/internal/telephony/RIL;->unsljLog(I)V

    #@3c4
    .line 3007
    move-object/from16 v0, p0

    #@3c6
    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mCatProCmdRegistrant:Landroid/os/Registrant;

    #@3c8
    move-object/from16 v21, v0

    #@3ca
    if-eqz v21, :cond_0

    #@3cc
    .line 3008
    move-object/from16 v0, p0

    #@3ce
    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mCatProCmdRegistrant:Landroid/os/Registrant;

    #@3d0
    move-object/from16 v21, v0

    #@3d2
    .line 3009
    new-instance v22, Landroid/os/AsyncResult;

    #@3d4
    const/16 v23, 0x0

    #@3d6
    const/16 v24, 0x0

    #@3d8
    move-object/from16 v0, v22

    #@3da
    move-object/from16 v1, v23

    #@3dc
    move-object/from16 v2, v17

    #@3de
    move-object/from16 v3, v24

    #@3e0
    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    #@3e3
    .line 3008
    invoke-virtual/range {v21 .. v22}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    #@3e6
    goto/16 :goto_1

    #@3e8
    .line 3014
    :pswitch_3c
    move-object/from16 v0, p0

    #@3ea
    invoke-direct {v0, v15}, Lcom/android/internal/telephony/RIL;->unsljLog(I)V

    #@3ed
    .line 3016
    move-object/from16 v0, p0

    #@3ef
    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mCatEventRegistrant:Landroid/os/Registrant;

    #@3f1
    move-object/from16 v21, v0

    #@3f3
    if-eqz v21, :cond_0

    #@3f5
    .line 3017
    move-object/from16 v0, p0

    #@3f7
    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mCatEventRegistrant:Landroid/os/Registrant;

    #@3f9
    move-object/from16 v21, v0

    #@3fb
    .line 3018
    new-instance v22, Landroid/os/AsyncResult;

    #@3fd
    const/16 v23, 0x0

    #@3ff
    const/16 v24, 0x0

    #@401
    move-object/from16 v0, v22

    #@403
    move-object/from16 v1, v23

    #@405
    move-object/from16 v2, v17

    #@407
    move-object/from16 v3, v24

    #@409
    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    #@40c
    .line 3017
    invoke-virtual/range {v21 .. v22}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    #@40f
    goto/16 :goto_1

    #@411
    .line 3023
    :pswitch_3d
    move-object/from16 v0, p0

    #@413
    move-object/from16 v1, v17

    #@415
    invoke-direct {v0, v15, v1}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    #@418
    .line 3025
    move-object/from16 v0, p0

    #@41a
    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mCatCallSetUpRegistrant:Landroid/os/Registrant;

    #@41c
    move-object/from16 v21, v0

    #@41e
    if-eqz v21, :cond_0

    #@420
    .line 3026
    move-object/from16 v0, p0

    #@422
    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mCatCallSetUpRegistrant:Landroid/os/Registrant;

    #@424
    move-object/from16 v21, v0

    #@426
    .line 3027
    new-instance v22, Landroid/os/AsyncResult;

    #@428
    const/16 v23, 0x0

    #@42a
    const/16 v24, 0x0

    #@42c
    move-object/from16 v0, v22

    #@42e
    move-object/from16 v1, v23

    #@430
    move-object/from16 v2, v17

    #@432
    move-object/from16 v3, v24

    #@434
    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    #@437
    .line 3026
    invoke-virtual/range {v21 .. v22}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    #@43a
    goto/16 :goto_1

    #@43c
    .line 3032
    :pswitch_3e
    move-object/from16 v0, p0

    #@43e
    invoke-direct {v0, v15}, Lcom/android/internal/telephony/RIL;->unsljLog(I)V

    #@441
    .line 3034
    move-object/from16 v0, p0

    #@443
    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mIccSmsFullRegistrant:Landroid/os/Registrant;

    #@445
    move-object/from16 v21, v0

    #@447
    if-eqz v21, :cond_0

    #@449
    .line 3035
    move-object/from16 v0, p0

    #@44b
    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mIccSmsFullRegistrant:Landroid/os/Registrant;

    #@44d
    move-object/from16 v21, v0

    #@44f
    invoke-virtual/range {v21 .. v21}, Landroid/os/Registrant;->notifyRegistrant()V

    #@452
    goto/16 :goto_1

    #@454
    .line 3040
    :pswitch_3f
    move-object/from16 v0, p0

    #@456
    move-object/from16 v1, v17

    #@458
    invoke-direct {v0, v15, v1}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    #@45b
    .line 3042
    move-object/from16 v0, p0

    #@45d
    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mIccRefreshRegistrants:Landroid/os/RegistrantList;

    #@45f
    move-object/from16 v21, v0

    #@461
    if-eqz v21, :cond_0

    #@463
    .line 3043
    move-object/from16 v0, p0

    #@465
    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mIccRefreshRegistrants:Landroid/os/RegistrantList;

    #@467
    move-object/from16 v21, v0

    #@469
    .line 3044
    new-instance v22, Landroid/os/AsyncResult;

    #@46b
    const/16 v23, 0x0

    #@46d
    const/16 v24, 0x0

    #@46f
    move-object/from16 v0, v22

    #@471
    move-object/from16 v1, v23

    #@473
    move-object/from16 v2, v17

    #@475
    move-object/from16 v3, v24

    #@477
    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    #@47a
    .line 3043
    invoke-virtual/range {v21 .. v22}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    #@47d
    goto/16 :goto_1

    #@47f
    .line 3049
    :pswitch_40
    move-object/from16 v0, p0

    #@481
    move-object/from16 v1, v17

    #@483
    invoke-direct {v0, v15, v1}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    #@486
    .line 3051
    move-object/from16 v0, p0

    #@488
    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mRingRegistrant:Landroid/os/Registrant;

    #@48a
    move-object/from16 v21, v0

    #@48c
    if-eqz v21, :cond_0

    #@48e
    .line 3052
    move-object/from16 v0, p0

    #@490
    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mRingRegistrant:Landroid/os/Registrant;

    #@492
    move-object/from16 v21, v0

    #@494
    .line 3053
    new-instance v22, Landroid/os/AsyncResult;

    #@496
    const/16 v23, 0x0

    #@498
    const/16 v24, 0x0

    #@49a
    move-object/from16 v0, v22

    #@49c
    move-object/from16 v1, v23

    #@49e
    move-object/from16 v2, v17

    #@4a0
    move-object/from16 v3, v24

    #@4a2
    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    #@4a5
    .line 3052
    invoke-virtual/range {v21 .. v22}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    #@4a8
    goto/16 :goto_1

    #@4aa
    .line 3058
    :pswitch_41
    move-object/from16 v0, p0

    #@4ac
    move-object/from16 v1, v17

    #@4ae
    invoke-direct {v0, v15, v1}, Lcom/android/internal/telephony/RIL;->unsljLogvRet(ILjava/lang/Object;)V

    #@4b1
    .line 3059
    move-object/from16 v0, p0

    #@4b3
    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mRestrictedStateRegistrant:Landroid/os/Registrant;

    #@4b5
    move-object/from16 v21, v0

    #@4b7
    if-eqz v21, :cond_0

    #@4b9
    .line 3060
    move-object/from16 v0, p0

    #@4bb
    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mRestrictedStateRegistrant:Landroid/os/Registrant;

    #@4bd
    move-object/from16 v21, v0

    #@4bf
    .line 3061
    new-instance v22, Landroid/os/AsyncResult;

    #@4c1
    const/16 v23, 0x0

    #@4c3
    const/16 v24, 0x0

    #@4c5
    move-object/from16 v0, v22

    #@4c7
    move-object/from16 v1, v23

    #@4c9
    move-object/from16 v2, v17

    #@4cb
    move-object/from16 v3, v24

    #@4cd
    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    #@4d0
    .line 3060
    invoke-virtual/range {v21 .. v22}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    #@4d3
    goto/16 :goto_1

    #@4d5
    .line 3066
    :pswitch_42
    move-object/from16 v0, p0

    #@4d7
    invoke-direct {v0, v15}, Lcom/android/internal/telephony/RIL;->unsljLog(I)V

    #@4da
    .line 3068
    move-object/from16 v0, p0

    #@4dc
    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mIccStatusChangedRegistrants:Landroid/os/RegistrantList;

    #@4de
    move-object/from16 v21, v0

    #@4e0
    if-eqz v21, :cond_0

    #@4e2
    .line 3069
    move-object/from16 v0, p0

    #@4e4
    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mIccStatusChangedRegistrants:Landroid/os/RegistrantList;

    #@4e6
    move-object/from16 v21, v0

    #@4e8
    invoke-virtual/range {v21 .. v21}, Landroid/os/RegistrantList;->notifyRegistrants()V

    #@4eb
    goto/16 :goto_1

    #@4ed
    .line 3074
    :pswitch_43
    move-object/from16 v0, p0

    #@4ef
    invoke-direct {v0, v15}, Lcom/android/internal/telephony/RIL;->unsljLog(I)V

    #@4f2
    move-object/from16 v18, v17

    #@4f4
    .line 3076
    check-cast v18, Landroid/telephony/SmsMessage;

    #@4f6
    .line 3078
    .restart local v18    # "sms":Landroid/telephony/SmsMessage;
    move-object/from16 v0, p0

    #@4f8
    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mCdmaSmsRegistrant:Landroid/os/Registrant;

    #@4fa
    move-object/from16 v21, v0

    #@4fc
    if-eqz v21, :cond_0

    #@4fe
    .line 3079
    move-object/from16 v0, p0

    #@500
    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mCdmaSmsRegistrant:Landroid/os/Registrant;

    #@502
    move-object/from16 v21, v0

    #@504
    .line 3080
    new-instance v22, Landroid/os/AsyncResult;

    #@506
    const/16 v23, 0x0

    #@508
    const/16 v24, 0x0

    #@50a
    move-object/from16 v0, v22

    #@50c
    move-object/from16 v1, v23

    #@50e
    move-object/from16 v2, v18

    #@510
    move-object/from16 v3, v24

    #@512
    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    #@515
    .line 3079
    invoke-virtual/range {v21 .. v22}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    #@518
    goto/16 :goto_1

    #@51a
    .end local v18    # "sms":Landroid/telephony/SmsMessage;
    :pswitch_44
    move-object/from16 v21, v17

    #@51c
    .line 3085
    check-cast v21, [B

    #@51e
    invoke-static/range {v21 .. v21}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    #@521
    move-result-object v21

    #@522
    move-object/from16 v0, p0

    #@524
    move-object/from16 v1, v21

    #@526
    invoke-direct {v0, v15, v1}, Lcom/android/internal/telephony/RIL;->unsljLogvRet(ILjava/lang/Object;)V

    #@529
    .line 3087
    move-object/from16 v0, p0

    #@52b
    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mGsmBroadcastSmsRegistrant:Landroid/os/Registrant;

    #@52d
    move-object/from16 v21, v0

    #@52f
    if-eqz v21, :cond_0

    #@531
    .line 3088
    move-object/from16 v0, p0

    #@533
    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mGsmBroadcastSmsRegistrant:Landroid/os/Registrant;

    #@535
    move-object/from16 v21, v0

    #@537
    .line 3089
    new-instance v22, Landroid/os/AsyncResult;

    #@539
    const/16 v23, 0x0

    #@53b
    const/16 v24, 0x0

    #@53d
    move-object/from16 v0, v22

    #@53f
    move-object/from16 v1, v23

    #@541
    move-object/from16 v2, v17

    #@543
    move-object/from16 v3, v24

    #@545
    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    #@548
    .line 3088
    invoke-virtual/range {v21 .. v22}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    #@54b
    goto/16 :goto_1

    #@54d
    .line 3094
    :pswitch_45
    move-object/from16 v0, p0

    #@54f
    invoke-direct {v0, v15}, Lcom/android/internal/telephony/RIL;->unsljLog(I)V

    #@552
    .line 3096
    move-object/from16 v0, p0

    #@554
    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mIccSmsFullRegistrant:Landroid/os/Registrant;

    #@556
    move-object/from16 v21, v0

    #@558
    if-eqz v21, :cond_0

    #@55a
    .line 3097
    move-object/from16 v0, p0

    #@55c
    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mIccSmsFullRegistrant:Landroid/os/Registrant;

    #@55e
    move-object/from16 v21, v0

    #@560
    invoke-virtual/range {v21 .. v21}, Landroid/os/Registrant;->notifyRegistrant()V

    #@563
    goto/16 :goto_1

    #@565
    .line 3102
    :pswitch_46
    move-object/from16 v0, p0

    #@567
    invoke-direct {v0, v15}, Lcom/android/internal/telephony/RIL;->unsljLog(I)V

    #@56a
    .line 3104
    move-object/from16 v0, p0

    #@56c
    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mEmergencyCallbackModeRegistrant:Landroid/os/Registrant;

    #@56e
    move-object/from16 v21, v0

    #@570
    if-eqz v21, :cond_0

    #@572
    .line 3105
    move-object/from16 v0, p0

    #@574
    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mEmergencyCallbackModeRegistrant:Landroid/os/Registrant;

    #@576
    move-object/from16 v21, v0

    #@578
    invoke-virtual/range {v21 .. v21}, Landroid/os/Registrant;->notifyRegistrant()V

    #@57b
    goto/16 :goto_1

    #@57d
    .line 3110
    :pswitch_47
    move-object/from16 v0, p0

    #@57f
    move-object/from16 v1, v17

    #@581
    invoke-direct {v0, v15, v1}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    #@584
    .line 3112
    move-object/from16 v0, p0

    #@586
    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mCallWaitingInfoRegistrants:Landroid/os/RegistrantList;

    #@588
    move-object/from16 v21, v0

    #@58a
    if-eqz v21, :cond_0

    #@58c
    .line 3113
    move-object/from16 v0, p0

    #@58e
    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mCallWaitingInfoRegistrants:Landroid/os/RegistrantList;

    #@590
    move-object/from16 v21, v0

    #@592
    .line 3114
    new-instance v22, Landroid/os/AsyncResult;

    #@594
    const/16 v23, 0x0

    #@596
    const/16 v24, 0x0

    #@598
    move-object/from16 v0, v22

    #@59a
    move-object/from16 v1, v23

    #@59c
    move-object/from16 v2, v17

    #@59e
    move-object/from16 v3, v24

    #@5a0
    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    #@5a3
    .line 3113
    invoke-virtual/range {v21 .. v22}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    #@5a6
    goto/16 :goto_1

    #@5a8
    .line 3119
    :pswitch_48
    move-object/from16 v0, p0

    #@5aa
    move-object/from16 v1, v17

    #@5ac
    invoke-direct {v0, v15, v1}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    #@5af
    .line 3121
    move-object/from16 v0, p0

    #@5b1
    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mOtaProvisionRegistrants:Landroid/os/RegistrantList;

    #@5b3
    move-object/from16 v21, v0

    #@5b5
    if-eqz v21, :cond_0

    #@5b7
    .line 3122
    move-object/from16 v0, p0

    #@5b9
    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mOtaProvisionRegistrants:Landroid/os/RegistrantList;

    #@5bb
    move-object/from16 v21, v0

    #@5bd
    .line 3123
    new-instance v22, Landroid/os/AsyncResult;

    #@5bf
    const/16 v23, 0x0

    #@5c1
    const/16 v24, 0x0

    #@5c3
    move-object/from16 v0, v22

    #@5c5
    move-object/from16 v1, v23

    #@5c7
    move-object/from16 v2, v17

    #@5c9
    move-object/from16 v3, v24

    #@5cb
    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    #@5ce
    .line 3122
    invoke-virtual/range {v21 .. v22}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    #@5d1
    goto/16 :goto_1

    #@5d3
    .line 3131
    :pswitch_49
    :try_start_2
    move-object/from16 v0, v17

    #@5d5
    check-cast v0, Ljava/util/ArrayList;

    #@5d7
    move-object v7, v0
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_1

    #@5d8
    .line 3137
    .local v7, "listInfoRecs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/cdma/CdmaInformationRecords;>;"
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@5db
    move-result-object v13

    #@5dc
    .local v13, "rec$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    #@5df
    move-result v21

    #@5e0
    if-eqz v21, :cond_0

    #@5e2
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@5e5
    move-result-object v12

    #@5e6
    check-cast v12, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;

    #@5e8
    .line 3138
    .local v12, "rec":Lcom/android/internal/telephony/cdma/CdmaInformationRecords;
    move-object/from16 v0, p0

    #@5ea
    invoke-direct {v0, v15, v12}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    #@5ed
    .line 3139
    move-object/from16 v0, p0

    #@5ef
    invoke-direct {v0, v12}, Lcom/android/internal/telephony/RIL;->notifyRegistrantsCdmaInfoRec(Lcom/android/internal/telephony/cdma/CdmaInformationRecords;)V

    #@5f2
    goto :goto_2

    #@5f3
    .line 3132
    .end local v7    # "listInfoRecs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/cdma/CdmaInformationRecords;>;"
    .end local v12    # "rec":Lcom/android/internal/telephony/cdma/CdmaInformationRecords;
    .end local v13    # "rec$iterator":Ljava/util/Iterator;
    :catch_1
    move-exception v5

    #@5f4
    .line 3133
    .local v5, "e":Ljava/lang/ClassCastException;
    const-string/jumbo v21, "RILJ"

    #@5f7
    const-string/jumbo v22, "Unexpected exception casting to listInfoRecs"

    #@5fa
    move-object/from16 v0, v21

    #@5fc
    move-object/from16 v1, v22

    #@5fe
    invoke-static {v0, v1, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@601
    goto/16 :goto_1

    #@603
    .end local v5    # "e":Ljava/lang/ClassCastException;
    :pswitch_4a
    move-object/from16 v21, v17

    #@605
    .line 3144
    check-cast v21, [B

    #@607
    invoke-static/range {v21 .. v21}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    #@60a
    move-result-object v21

    #@60b
    move-object/from16 v0, p0

    #@60d
    move-object/from16 v1, v21

    #@60f
    invoke-direct {v0, v15, v1}, Lcom/android/internal/telephony/RIL;->unsljLogvRet(ILjava/lang/Object;)V

    #@612
    .line 3145
    move-object/from16 v0, p0

    #@614
    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mUnsolOemHookRawRegistrant:Landroid/os/Registrant;

    #@616
    move-object/from16 v21, v0

    #@618
    if-eqz v21, :cond_0

    #@61a
    .line 3146
    move-object/from16 v0, p0

    #@61c
    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mUnsolOemHookRawRegistrant:Landroid/os/Registrant;

    #@61e
    move-object/from16 v21, v0

    #@620
    new-instance v22, Landroid/os/AsyncResult;

    #@622
    const/16 v23, 0x0

    #@624
    const/16 v24, 0x0

    #@626
    move-object/from16 v0, v22

    #@628
    move-object/from16 v1, v23

    #@62a
    move-object/from16 v2, v17

    #@62c
    move-object/from16 v3, v24

    #@62e
    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    #@631
    invoke-virtual/range {v21 .. v22}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    #@634
    goto/16 :goto_1

    #@636
    .line 3151
    :pswitch_4b
    move-object/from16 v0, p0

    #@638
    move-object/from16 v1, v17

    #@63a
    invoke-direct {v0, v15, v1}, Lcom/android/internal/telephony/RIL;->unsljLogvRet(ILjava/lang/Object;)V

    #@63d
    .line 3152
    move-object/from16 v0, p0

    #@63f
    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mRingbackToneRegistrants:Landroid/os/RegistrantList;

    #@641
    move-object/from16 v21, v0

    #@643
    if-eqz v21, :cond_0

    #@645
    .line 3153
    check-cast v17, [I

    #@647
    .end local v17    # "ret":Ljava/lang/Object;
    const/16 v21, 0x0

    #@649
    aget v21, v17, v21

    #@64b
    const/16 v22, 0x1

    #@64d
    move/from16 v0, v21

    #@64f
    move/from16 v1, v22

    #@651
    if-ne v0, v1, :cond_5

    #@653
    const/4 v9, 0x1

    #@654
    .line 3154
    .local v9, "playtone":Z
    :goto_3
    move-object/from16 v0, p0

    #@656
    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mRingbackToneRegistrants:Landroid/os/RegistrantList;

    #@658
    move-object/from16 v21, v0

    #@65a
    .line 3155
    new-instance v22, Landroid/os/AsyncResult;

    #@65c
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@65f
    move-result-object v23

    #@660
    const/16 v24, 0x0

    #@662
    const/16 v25, 0x0

    #@664
    move-object/from16 v0, v22

    #@666
    move-object/from16 v1, v24

    #@668
    move-object/from16 v2, v23

    #@66a
    move-object/from16 v3, v25

    #@66c
    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    #@66f
    .line 3154
    invoke-virtual/range {v21 .. v22}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    #@672
    goto/16 :goto_1

    #@674
    .line 3153
    .end local v9    # "playtone":Z
    :cond_5
    const/4 v9, 0x0

    #@675
    .restart local v9    # "playtone":Z
    goto :goto_3

    #@676
    .line 3160
    .end local v9    # "playtone":Z
    .restart local v17    # "ret":Ljava/lang/Object;
    :pswitch_4c
    move-object/from16 v0, p0

    #@678
    move-object/from16 v1, v17

    #@67a
    invoke-direct {v0, v15, v1}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    #@67d
    .line 3162
    move-object/from16 v0, p0

    #@67f
    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mResendIncallMuteRegistrants:Landroid/os/RegistrantList;

    #@681
    move-object/from16 v21, v0

    #@683
    if-eqz v21, :cond_0

    #@685
    .line 3163
    move-object/from16 v0, p0

    #@687
    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mResendIncallMuteRegistrants:Landroid/os/RegistrantList;

    #@689
    move-object/from16 v21, v0

    #@68b
    .line 3164
    new-instance v22, Landroid/os/AsyncResult;

    #@68d
    const/16 v23, 0x0

    #@68f
    const/16 v24, 0x0

    #@691
    move-object/from16 v0, v22

    #@693
    move-object/from16 v1, v23

    #@695
    move-object/from16 v2, v17

    #@697
    move-object/from16 v3, v24

    #@699
    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    #@69c
    .line 3163
    invoke-virtual/range {v21 .. v22}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    #@69f
    goto/16 :goto_1

    #@6a1
    .line 3169
    :pswitch_4d
    move-object/from16 v0, p0

    #@6a3
    move-object/from16 v1, v17

    #@6a5
    invoke-direct {v0, v15, v1}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    #@6a8
    .line 3171
    move-object/from16 v0, p0

    #@6aa
    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mVoiceRadioTechChangedRegistrants:Landroid/os/RegistrantList;

    #@6ac
    move-object/from16 v21, v0

    #@6ae
    if-eqz v21, :cond_0

    #@6b0
    .line 3172
    move-object/from16 v0, p0

    #@6b2
    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mVoiceRadioTechChangedRegistrants:Landroid/os/RegistrantList;

    #@6b4
    move-object/from16 v21, v0

    #@6b6
    .line 3173
    new-instance v22, Landroid/os/AsyncResult;

    #@6b8
    const/16 v23, 0x0

    #@6ba
    const/16 v24, 0x0

    #@6bc
    move-object/from16 v0, v22

    #@6be
    move-object/from16 v1, v23

    #@6c0
    move-object/from16 v2, v17

    #@6c2
    move-object/from16 v3, v24

    #@6c4
    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    #@6c7
    .line 3172
    invoke-virtual/range {v21 .. v22}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    #@6ca
    goto/16 :goto_1

    #@6cc
    .line 3178
    :pswitch_4e
    move-object/from16 v0, p0

    #@6ce
    move-object/from16 v1, v17

    #@6d0
    invoke-direct {v0, v15, v1}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    #@6d3
    .line 3180
    move-object/from16 v0, p0

    #@6d5
    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mCdmaSubscriptionChangedRegistrants:Landroid/os/RegistrantList;

    #@6d7
    move-object/from16 v21, v0

    #@6d9
    if-eqz v21, :cond_0

    #@6db
    .line 3181
    move-object/from16 v0, p0

    #@6dd
    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mCdmaSubscriptionChangedRegistrants:Landroid/os/RegistrantList;

    #@6df
    move-object/from16 v21, v0

    #@6e1
    .line 3182
    new-instance v22, Landroid/os/AsyncResult;

    #@6e3
    const/16 v23, 0x0

    #@6e5
    const/16 v24, 0x0

    #@6e7
    move-object/from16 v0, v22

    #@6e9
    move-object/from16 v1, v23

    #@6eb
    move-object/from16 v2, v17

    #@6ed
    move-object/from16 v3, v24

    #@6ef
    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    #@6f2
    .line 3181
    invoke-virtual/range {v21 .. v22}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    #@6f5
    goto/16 :goto_1

    #@6f7
    .line 3187
    :pswitch_4f
    move-object/from16 v0, p0

    #@6f9
    move-object/from16 v1, v17

    #@6fb
    invoke-direct {v0, v15, v1}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    #@6fe
    .line 3189
    move-object/from16 v0, p0

    #@700
    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mCdmaPrlChangedRegistrants:Landroid/os/RegistrantList;

    #@702
    move-object/from16 v21, v0

    #@704
    if-eqz v21, :cond_0

    #@706
    .line 3190
    move-object/from16 v0, p0

    #@708
    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mCdmaPrlChangedRegistrants:Landroid/os/RegistrantList;

    #@70a
    move-object/from16 v21, v0

    #@70c
    .line 3191
    new-instance v22, Landroid/os/AsyncResult;

    #@70e
    const/16 v23, 0x0

    #@710
    const/16 v24, 0x0

    #@712
    move-object/from16 v0, v22

    #@714
    move-object/from16 v1, v23

    #@716
    move-object/from16 v2, v17

    #@718
    move-object/from16 v3, v24

    #@71a
    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    #@71d
    .line 3190
    invoke-virtual/range {v21 .. v22}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    #@720
    goto/16 :goto_1

    #@722
    .line 3196
    :pswitch_50
    move-object/from16 v0, p0

    #@724
    move-object/from16 v1, v17

    #@726
    invoke-direct {v0, v15, v1}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    #@729
    .line 3198
    move-object/from16 v0, p0

    #@72b
    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mExitEmergencyCallbackModeRegistrants:Landroid/os/RegistrantList;

    #@72d
    move-object/from16 v21, v0

    #@72f
    if-eqz v21, :cond_0

    #@731
    .line 3199
    move-object/from16 v0, p0

    #@733
    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mExitEmergencyCallbackModeRegistrants:Landroid/os/RegistrantList;

    #@735
    move-object/from16 v21, v0

    #@737
    .line 3200
    new-instance v22, Landroid/os/AsyncResult;

    #@739
    const/16 v23, 0x0

    #@73b
    const/16 v24, 0x0

    #@73d
    const/16 v25, 0x0

    #@73f
    invoke-direct/range {v22 .. v25}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    #@742
    .line 3199
    invoke-virtual/range {v21 .. v22}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    #@745
    goto/16 :goto_1

    #@747
    .line 3205
    :pswitch_51
    move-object/from16 v0, p0

    #@749
    move-object/from16 v1, v17

    #@74b
    invoke-direct {v0, v15, v1}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    #@74e
    .line 3208
    const/16 v21, 0x0

    #@750
    const/16 v22, 0x0

    #@752
    move-object/from16 v0, p0

    #@754
    move/from16 v1, v21

    #@756
    move-object/from16 v2, v22

    #@758
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/RIL;->setRadioPower(ZLandroid/os/Message;)V

    #@75b
    .line 3209
    move-object/from16 v0, p0

    #@75d
    iget v0, v0, Lcom/android/internal/telephony/RIL;->mCdmaSubscription:I

    #@75f
    move/from16 v21, v0

    #@761
    const/16 v22, 0x0

    #@763
    move-object/from16 v0, p0

    #@765
    move/from16 v1, v21

    #@767
    move-object/from16 v2, v22

    #@769
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/RIL;->setCdmaSubscriptionSource(ILandroid/os/Message;)V

    #@76c
    .line 3210
    const v21, 0x7fffffff

    #@76f
    const/16 v22, 0x0

    #@771
    move-object/from16 v0, p0

    #@773
    move/from16 v1, v21

    #@775
    move-object/from16 v2, v22

    #@777
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/RIL;->setCellInfoListRate(ILandroid/os/Message;)V

    #@77a
    .line 3211
    check-cast v17, [I

    #@77c
    .end local v17    # "ret":Ljava/lang/Object;
    const/16 v21, 0x0

    #@77e
    aget v21, v17, v21

    #@780
    move-object/from16 v0, p0

    #@782
    move/from16 v1, v21

    #@784
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/RIL;->notifyRegistrantsRilConnectionChanged(I)V

    #@787
    goto/16 :goto_1

    #@789
    .line 3215
    .restart local v17    # "ret":Ljava/lang/Object;
    :pswitch_52
    move-object/from16 v0, p0

    #@78b
    move-object/from16 v1, v17

    #@78d
    invoke-direct {v0, v15, v1}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    #@790
    .line 3217
    move-object/from16 v0, p0

    #@792
    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mRilCellInfoListRegistrants:Landroid/os/RegistrantList;

    #@794
    move-object/from16 v21, v0

    #@796
    if-eqz v21, :cond_0

    #@798
    .line 3218
    move-object/from16 v0, p0

    #@79a
    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mRilCellInfoListRegistrants:Landroid/os/RegistrantList;

    #@79c
    move-object/from16 v21, v0

    #@79e
    .line 3219
    new-instance v22, Landroid/os/AsyncResult;

    #@7a0
    const/16 v23, 0x0

    #@7a2
    const/16 v24, 0x0

    #@7a4
    move-object/from16 v0, v22

    #@7a6
    move-object/from16 v1, v23

    #@7a8
    move-object/from16 v2, v17

    #@7aa
    move-object/from16 v3, v24

    #@7ac
    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    #@7af
    .line 3218
    invoke-virtual/range {v21 .. v22}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    #@7b2
    goto/16 :goto_1

    #@7b4
    .line 3224
    :pswitch_53
    move-object/from16 v0, p0

    #@7b6
    move-object/from16 v1, v17

    #@7b8
    invoke-direct {v0, v15, v1}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    #@7bb
    .line 3226
    move-object/from16 v0, p0

    #@7bd
    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mSubscriptionStatusRegistrants:Landroid/os/RegistrantList;

    #@7bf
    move-object/from16 v21, v0

    #@7c1
    if-eqz v21, :cond_0

    #@7c3
    .line 3227
    move-object/from16 v0, p0

    #@7c5
    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mSubscriptionStatusRegistrants:Landroid/os/RegistrantList;

    #@7c7
    move-object/from16 v21, v0

    #@7c9
    .line 3228
    new-instance v22, Landroid/os/AsyncResult;

    #@7cb
    const/16 v23, 0x0

    #@7cd
    const/16 v24, 0x0

    #@7cf
    move-object/from16 v0, v22

    #@7d1
    move-object/from16 v1, v23

    #@7d3
    move-object/from16 v2, v17

    #@7d5
    move-object/from16 v3, v24

    #@7d7
    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    #@7da
    .line 3227
    invoke-virtual/range {v21 .. v22}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    #@7dd
    goto/16 :goto_1

    #@7df
    .line 3233
    :pswitch_54
    move-object/from16 v0, p0

    #@7e1
    move-object/from16 v1, v17

    #@7e3
    invoke-direct {v0, v15, v1}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    #@7e6
    .line 3235
    move-object/from16 v0, p0

    #@7e8
    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mSrvccStateRegistrants:Landroid/os/RegistrantList;

    #@7ea
    move-object/from16 v21, v0

    #@7ec
    if-eqz v21, :cond_0

    #@7ee
    .line 3236
    move-object/from16 v0, p0

    #@7f0
    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mSrvccStateRegistrants:Landroid/os/RegistrantList;

    #@7f2
    move-object/from16 v21, v0

    #@7f4
    .line 3237
    new-instance v22, Landroid/os/AsyncResult;

    #@7f6
    const/16 v23, 0x0

    #@7f8
    const/16 v24, 0x0

    #@7fa
    move-object/from16 v0, v22

    #@7fc
    move-object/from16 v1, v23

    #@7fe
    move-object/from16 v2, v17

    #@800
    move-object/from16 v3, v24

    #@802
    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    #@805
    .line 3236
    invoke-virtual/range {v21 .. v22}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    #@808
    goto/16 :goto_1

    #@80a
    .line 3242
    :pswitch_55
    move-object/from16 v0, p0

    #@80c
    move-object/from16 v1, v17

    #@80e
    invoke-direct {v0, v15, v1}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    #@811
    .line 3244
    move-object/from16 v0, p0

    #@813
    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mHardwareConfigChangeRegistrants:Landroid/os/RegistrantList;

    #@815
    move-object/from16 v21, v0

    #@817
    if-eqz v21, :cond_0

    #@819
    .line 3245
    move-object/from16 v0, p0

    #@81b
    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mHardwareConfigChangeRegistrants:Landroid/os/RegistrantList;

    #@81d
    move-object/from16 v21, v0

    #@81f
    .line 3246
    new-instance v22, Landroid/os/AsyncResult;

    #@821
    const/16 v23, 0x0

    #@823
    const/16 v24, 0x0

    #@825
    move-object/from16 v0, v22

    #@827
    move-object/from16 v1, v23

    #@829
    move-object/from16 v2, v17

    #@82b
    move-object/from16 v3, v24

    #@82d
    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    #@830
    .line 3245
    invoke-virtual/range {v21 .. v22}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    #@833
    goto/16 :goto_1

    #@835
    .line 3250
    :pswitch_56
    move-object/from16 v0, p0

    #@837
    move-object/from16 v1, v17

    #@839
    invoke-direct {v0, v15, v1}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    #@83c
    .line 3252
    move-object/from16 v0, p0

    #@83e
    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mPhoneRadioCapabilityChangedRegistrants:Landroid/os/RegistrantList;

    #@840
    move-object/from16 v21, v0

    #@842
    if-eqz v21, :cond_0

    #@844
    .line 3253
    move-object/from16 v0, p0

    #@846
    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mPhoneRadioCapabilityChangedRegistrants:Landroid/os/RegistrantList;

    #@848
    move-object/from16 v21, v0

    #@84a
    .line 3254
    new-instance v22, Landroid/os/AsyncResult;

    #@84c
    const/16 v23, 0x0

    #@84e
    const/16 v24, 0x0

    #@850
    move-object/from16 v0, v22

    #@852
    move-object/from16 v1, v23

    #@854
    move-object/from16 v2, v17

    #@856
    move-object/from16 v3, v24

    #@858
    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    #@85b
    .line 3253
    invoke-virtual/range {v21 .. v22}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    #@85e
    goto/16 :goto_1

    #@860
    .line 3258
    :pswitch_57
    move-object/from16 v0, p0

    #@862
    move-object/from16 v1, v17

    #@864
    invoke-direct {v0, v15, v1}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    #@867
    .line 3260
    move-object/from16 v0, p0

    #@869
    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mSsRegistrant:Landroid/os/Registrant;

    #@86b
    move-object/from16 v21, v0

    #@86d
    if-eqz v21, :cond_0

    #@86f
    .line 3261
    move-object/from16 v0, p0

    #@871
    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mSsRegistrant:Landroid/os/Registrant;

    #@873
    move-object/from16 v21, v0

    #@875
    .line 3262
    new-instance v22, Landroid/os/AsyncResult;

    #@877
    const/16 v23, 0x0

    #@879
    const/16 v24, 0x0

    #@87b
    move-object/from16 v0, v22

    #@87d
    move-object/from16 v1, v23

    #@87f
    move-object/from16 v2, v17

    #@881
    move-object/from16 v3, v24

    #@883
    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    #@886
    .line 3261
    invoke-virtual/range {v21 .. v22}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    #@889
    goto/16 :goto_1

    #@88b
    .line 3266
    :pswitch_58
    move-object/from16 v0, p0

    #@88d
    move-object/from16 v1, v17

    #@88f
    invoke-direct {v0, v15, v1}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    #@892
    .line 3268
    move-object/from16 v0, p0

    #@894
    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mCatCcAlphaRegistrant:Landroid/os/Registrant;

    #@896
    move-object/from16 v21, v0

    #@898
    if-eqz v21, :cond_0

    #@89a
    .line 3269
    move-object/from16 v0, p0

    #@89c
    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mCatCcAlphaRegistrant:Landroid/os/Registrant;

    #@89e
    move-object/from16 v21, v0

    #@8a0
    .line 3270
    new-instance v22, Landroid/os/AsyncResult;

    #@8a2
    const/16 v23, 0x0

    #@8a4
    const/16 v24, 0x0

    #@8a6
    move-object/from16 v0, v22

    #@8a8
    move-object/from16 v1, v23

    #@8aa
    move-object/from16 v2, v17

    #@8ac
    move-object/from16 v3, v24

    #@8ae
    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    #@8b1
    .line 3269
    invoke-virtual/range {v21 .. v22}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    #@8b4
    goto/16 :goto_1

    #@8b6
    .line 3274
    :pswitch_59
    move-object/from16 v0, p0

    #@8b8
    move-object/from16 v1, v17

    #@8ba
    invoke-direct {v0, v15, v1}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    #@8bd
    .line 3276
    move-object/from16 v0, p0

    #@8bf
    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mLceInfoRegistrant:Landroid/os/Registrant;

    #@8c1
    move-object/from16 v21, v0

    #@8c3
    if-eqz v21, :cond_0

    #@8c5
    .line 3277
    move-object/from16 v0, p0

    #@8c7
    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mLceInfoRegistrant:Landroid/os/Registrant;

    #@8c9
    move-object/from16 v21, v0

    #@8cb
    new-instance v22, Landroid/os/AsyncResult;

    #@8cd
    const/16 v23, 0x0

    #@8cf
    const/16 v24, 0x0

    #@8d1
    move-object/from16 v0, v22

    #@8d3
    move-object/from16 v1, v23

    #@8d5
    move-object/from16 v2, v17

    #@8d7
    move-object/from16 v3, v24

    #@8d9
    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    #@8dc
    invoke-virtual/range {v21 .. v22}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    #@8df
    goto/16 :goto_1

    #@8e1
    .line 2799
    nop

    #@8e2
    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_0
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_14
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_22
        :pswitch_23
        :pswitch_24
        :pswitch_25
        :pswitch_26
        :pswitch_27
        :pswitch_28
        :pswitch_29
        :pswitch_0
        :pswitch_2a
        :pswitch_2b
        :pswitch_2c
        :pswitch_2d
    .end packed-switch

    #@942
    .line 2861
    :pswitch_data_1
    .packed-switch 0x3e8
        :pswitch_2e
        :pswitch_30
        :pswitch_31
        :pswitch_32
        :pswitch_33
        :pswitch_34
        :pswitch_35
        :pswitch_2
        :pswitch_36
        :pswitch_37
        :pswitch_38
        :pswitch_39
        :pswitch_3a
        :pswitch_3b
        :pswitch_3c
        :pswitch_3d
        :pswitch_3e
        :pswitch_3f
        :pswitch_40
        :pswitch_42
        :pswitch_43
        :pswitch_44
        :pswitch_45
        :pswitch_41
        :pswitch_46
        :pswitch_47
        :pswitch_48
        :pswitch_49
        :pswitch_4a
        :pswitch_4b
        :pswitch_4c
        :pswitch_4e
        :pswitch_4f
        :pswitch_50
        :pswitch_51
        :pswitch_4d
        :pswitch_52
        :pswitch_2f
        :pswitch_53
        :pswitch_54
        :pswitch_55
        :pswitch_2
        :pswitch_56
        :pswitch_57
        :pswitch_58
        :pswitch_59
    .end packed-switch
.end method

.method private static readRilMessage(Ljava/io/InputStream;[B)I
    .locals 8
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "buffer"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v7, -0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 463
    const/4 v2, 0x0

    #@3
    .line 464
    .local v2, "offset":I
    const/4 v3, 0x4

    #@4
    .line 466
    .local v3, "remaining":I
    :cond_0
    invoke-virtual {p0, p1, v2, v3}, Ljava/io/InputStream;->read([BII)I

    #@7
    move-result v0

    #@8
    .line 468
    .local v0, "countRead":I
    if-gez v0, :cond_1

    #@a
    .line 469
    const-string/jumbo v4, "RILJ"

    #@d
    const-string/jumbo v5, "Hit EOS reading message length"

    #@10
    invoke-static {v4, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@13
    .line 470
    return v7

    #@14
    .line 473
    :cond_1
    add-int/2addr v2, v0

    #@15
    .line 474
    sub-int/2addr v3, v0

    #@16
    .line 475
    if-gtz v3, :cond_0

    #@18
    .line 477
    aget-byte v4, p1, v4

    #@1a
    and-int/lit16 v4, v4, 0xff

    #@1c
    shl-int/lit8 v4, v4, 0x18

    #@1e
    .line 478
    const/4 v5, 0x1

    #@1f
    aget-byte v5, p1, v5

    #@21
    and-int/lit16 v5, v5, 0xff

    #@23
    shl-int/lit8 v5, v5, 0x10

    #@25
    .line 477
    or-int/2addr v4, v5

    #@26
    .line 479
    const/4 v5, 0x2

    #@27
    aget-byte v5, p1, v5

    #@29
    and-int/lit16 v5, v5, 0xff

    #@2b
    shl-int/lit8 v5, v5, 0x8

    #@2d
    .line 477
    or-int/2addr v4, v5

    #@2e
    .line 480
    const/4 v5, 0x3

    #@2f
    aget-byte v5, p1, v5

    #@31
    and-int/lit16 v5, v5, 0xff

    #@33
    .line 477
    or-int v1, v4, v5

    #@35
    .line 483
    .local v1, "messageLength":I
    const/4 v2, 0x0

    #@36
    .line 484
    move v3, v1

    #@37
    .line 486
    :cond_2
    invoke-virtual {p0, p1, v2, v3}, Ljava/io/InputStream;->read([BII)I

    #@3a
    move-result v0

    #@3b
    .line 488
    if-gez v0, :cond_3

    #@3d
    .line 489
    const-string/jumbo v4, "RILJ"

    #@40
    new-instance v5, Ljava/lang/StringBuilder;

    #@42
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@45
    const-string/jumbo v6, "Hit EOS reading message.  messageLength="

    #@48
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v5

    #@4c
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v5

    #@50
    .line 490
    const-string/jumbo v6, " remaining="

    #@53
    .line 489
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@56
    move-result-object v5

    #@57
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v5

    #@5b
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5e
    move-result-object v5

    #@5f
    invoke-static {v4, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@62
    .line 491
    return v7

    #@63
    .line 494
    :cond_3
    add-int/2addr v2, v0

    #@64
    .line 495
    sub-int/2addr v3, v0

    #@65
    .line 496
    if-gtz v3, :cond_2

    #@67
    .line 498
    return v1
.end method

.method static requestToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "request"    # I

    #@0
    .prologue
    .line 4056
    packed-switch p0, :pswitch_data_0

    #@3
    .line 4192
    :pswitch_0
    const-string/jumbo v0, "<unknown request>"

    #@6
    return-object v0

    #@7
    .line 4057
    :pswitch_1
    const-string/jumbo v0, "GET_SIM_STATUS"

    #@a
    return-object v0

    #@b
    .line 4058
    :pswitch_2
    const-string/jumbo v0, "ENTER_SIM_PIN"

    #@e
    return-object v0

    #@f
    .line 4059
    :pswitch_3
    const-string/jumbo v0, "ENTER_SIM_PUK"

    #@12
    return-object v0

    #@13
    .line 4060
    :pswitch_4
    const-string/jumbo v0, "ENTER_SIM_PIN2"

    #@16
    return-object v0

    #@17
    .line 4061
    :pswitch_5
    const-string/jumbo v0, "ENTER_SIM_PUK2"

    #@1a
    return-object v0

    #@1b
    .line 4062
    :pswitch_6
    const-string/jumbo v0, "CHANGE_SIM_PIN"

    #@1e
    return-object v0

    #@1f
    .line 4063
    :pswitch_7
    const-string/jumbo v0, "CHANGE_SIM_PIN2"

    #@22
    return-object v0

    #@23
    .line 4064
    :pswitch_8
    const-string/jumbo v0, "ENTER_NETWORK_DEPERSONALIZATION"

    #@26
    return-object v0

    #@27
    .line 4065
    :pswitch_9
    const-string/jumbo v0, "GET_CURRENT_CALLS"

    #@2a
    return-object v0

    #@2b
    .line 4066
    :pswitch_a
    const-string/jumbo v0, "DIAL"

    #@2e
    return-object v0

    #@2f
    .line 4067
    :pswitch_b
    const-string/jumbo v0, "GET_IMSI"

    #@32
    return-object v0

    #@33
    .line 4068
    :pswitch_c
    const-string/jumbo v0, "HANGUP"

    #@36
    return-object v0

    #@37
    .line 4069
    :pswitch_d
    const-string/jumbo v0, "HANGUP_WAITING_OR_BACKGROUND"

    #@3a
    return-object v0

    #@3b
    .line 4070
    :pswitch_e
    const-string/jumbo v0, "HANGUP_FOREGROUND_RESUME_BACKGROUND"

    #@3e
    return-object v0

    #@3f
    .line 4071
    :pswitch_f
    const-string/jumbo v0, "REQUEST_SWITCH_WAITING_OR_HOLDING_AND_ACTIVE"

    #@42
    return-object v0

    #@43
    .line 4072
    :pswitch_10
    const-string/jumbo v0, "CONFERENCE"

    #@46
    return-object v0

    #@47
    .line 4073
    :pswitch_11
    const-string/jumbo v0, "UDUB"

    #@4a
    return-object v0

    #@4b
    .line 4074
    :pswitch_12
    const-string/jumbo v0, "LAST_CALL_FAIL_CAUSE"

    #@4e
    return-object v0

    #@4f
    .line 4075
    :pswitch_13
    const-string/jumbo v0, "SIGNAL_STRENGTH"

    #@52
    return-object v0

    #@53
    .line 4076
    :pswitch_14
    const-string/jumbo v0, "VOICE_REGISTRATION_STATE"

    #@56
    return-object v0

    #@57
    .line 4077
    :pswitch_15
    const-string/jumbo v0, "DATA_REGISTRATION_STATE"

    #@5a
    return-object v0

    #@5b
    .line 4078
    :pswitch_16
    const-string/jumbo v0, "OPERATOR"

    #@5e
    return-object v0

    #@5f
    .line 4079
    :pswitch_17
    const-string/jumbo v0, "RADIO_POWER"

    #@62
    return-object v0

    #@63
    .line 4080
    :pswitch_18
    const-string/jumbo v0, "DTMF"

    #@66
    return-object v0

    #@67
    .line 4081
    :pswitch_19
    const-string/jumbo v0, "SEND_SMS"

    #@6a
    return-object v0

    #@6b
    .line 4082
    :pswitch_1a
    const-string/jumbo v0, "SEND_SMS_EXPECT_MORE"

    #@6e
    return-object v0

    #@6f
    .line 4083
    :pswitch_1b
    const-string/jumbo v0, "SETUP_DATA_CALL"

    #@72
    return-object v0

    #@73
    .line 4084
    :pswitch_1c
    const-string/jumbo v0, "SIM_IO"

    #@76
    return-object v0

    #@77
    .line 4085
    :pswitch_1d
    const-string/jumbo v0, "SEND_USSD"

    #@7a
    return-object v0

    #@7b
    .line 4086
    :pswitch_1e
    const-string/jumbo v0, "CANCEL_USSD"

    #@7e
    return-object v0

    #@7f
    .line 4087
    :pswitch_1f
    const-string/jumbo v0, "GET_CLIR"

    #@82
    return-object v0

    #@83
    .line 4088
    :pswitch_20
    const-string/jumbo v0, "SET_CLIR"

    #@86
    return-object v0

    #@87
    .line 4089
    :pswitch_21
    const-string/jumbo v0, "QUERY_CALL_FORWARD_STATUS"

    #@8a
    return-object v0

    #@8b
    .line 4090
    :pswitch_22
    const-string/jumbo v0, "SET_CALL_FORWARD"

    #@8e
    return-object v0

    #@8f
    .line 4091
    :pswitch_23
    const-string/jumbo v0, "QUERY_CALL_WAITING"

    #@92
    return-object v0

    #@93
    .line 4092
    :pswitch_24
    const-string/jumbo v0, "SET_CALL_WAITING"

    #@96
    return-object v0

    #@97
    .line 4093
    :pswitch_25
    const-string/jumbo v0, "SMS_ACKNOWLEDGE"

    #@9a
    return-object v0

    #@9b
    .line 4094
    :pswitch_26
    const-string/jumbo v0, "GET_IMEI"

    #@9e
    return-object v0

    #@9f
    .line 4095
    :pswitch_27
    const-string/jumbo v0, "GET_IMEISV"

    #@a2
    return-object v0

    #@a3
    .line 4096
    :pswitch_28
    const-string/jumbo v0, "ANSWER"

    #@a6
    return-object v0

    #@a7
    .line 4097
    :pswitch_29
    const-string/jumbo v0, "DEACTIVATE_DATA_CALL"

    #@aa
    return-object v0

    #@ab
    .line 4098
    :pswitch_2a
    const-string/jumbo v0, "QUERY_FACILITY_LOCK"

    #@ae
    return-object v0

    #@af
    .line 4099
    :pswitch_2b
    const-string/jumbo v0, "SET_FACILITY_LOCK"

    #@b2
    return-object v0

    #@b3
    .line 4100
    :pswitch_2c
    const-string/jumbo v0, "CHANGE_BARRING_PASSWORD"

    #@b6
    return-object v0

    #@b7
    .line 4101
    :pswitch_2d
    const-string/jumbo v0, "QUERY_NETWORK_SELECTION_MODE"

    #@ba
    return-object v0

    #@bb
    .line 4102
    :pswitch_2e
    const-string/jumbo v0, "SET_NETWORK_SELECTION_AUTOMATIC"

    #@be
    return-object v0

    #@bf
    .line 4103
    :pswitch_2f
    const-string/jumbo v0, "SET_NETWORK_SELECTION_MANUAL"

    #@c2
    return-object v0

    #@c3
    .line 4104
    :pswitch_30
    const-string/jumbo v0, "QUERY_AVAILABLE_NETWORKS "

    #@c6
    return-object v0

    #@c7
    .line 4105
    :pswitch_31
    const-string/jumbo v0, "DTMF_START"

    #@ca
    return-object v0

    #@cb
    .line 4106
    :pswitch_32
    const-string/jumbo v0, "DTMF_STOP"

    #@ce
    return-object v0

    #@cf
    .line 4107
    :pswitch_33
    const-string/jumbo v0, "BASEBAND_VERSION"

    #@d2
    return-object v0

    #@d3
    .line 4108
    :pswitch_34
    const-string/jumbo v0, "SEPARATE_CONNECTION"

    #@d6
    return-object v0

    #@d7
    .line 4109
    :pswitch_35
    const-string/jumbo v0, "SET_MUTE"

    #@da
    return-object v0

    #@db
    .line 4110
    :pswitch_36
    const-string/jumbo v0, "GET_MUTE"

    #@de
    return-object v0

    #@df
    .line 4111
    :pswitch_37
    const-string/jumbo v0, "QUERY_CLIP"

    #@e2
    return-object v0

    #@e3
    .line 4112
    :pswitch_38
    const-string/jumbo v0, "LAST_DATA_CALL_FAIL_CAUSE"

    #@e6
    return-object v0

    #@e7
    .line 4113
    :pswitch_39
    const-string/jumbo v0, "DATA_CALL_LIST"

    #@ea
    return-object v0

    #@eb
    .line 4114
    :pswitch_3a
    const-string/jumbo v0, "RESET_RADIO"

    #@ee
    return-object v0

    #@ef
    .line 4115
    :pswitch_3b
    const-string/jumbo v0, "OEM_HOOK_RAW"

    #@f2
    return-object v0

    #@f3
    .line 4116
    :pswitch_3c
    const-string/jumbo v0, "OEM_HOOK_STRINGS"

    #@f6
    return-object v0

    #@f7
    .line 4117
    :pswitch_3d
    const-string/jumbo v0, "SCREEN_STATE"

    #@fa
    return-object v0

    #@fb
    .line 4118
    :pswitch_3e
    const-string/jumbo v0, "SET_SUPP_SVC_NOTIFICATION"

    #@fe
    return-object v0

    #@ff
    .line 4119
    :pswitch_3f
    const-string/jumbo v0, "WRITE_SMS_TO_SIM"

    #@102
    return-object v0

    #@103
    .line 4120
    :pswitch_40
    const-string/jumbo v0, "DELETE_SMS_ON_SIM"

    #@106
    return-object v0

    #@107
    .line 4121
    :pswitch_41
    const-string/jumbo v0, "SET_BAND_MODE"

    #@10a
    return-object v0

    #@10b
    .line 4122
    :pswitch_42
    const-string/jumbo v0, "QUERY_AVAILABLE_BAND_MODE"

    #@10e
    return-object v0

    #@10f
    .line 4123
    :pswitch_43
    const-string/jumbo v0, "REQUEST_STK_GET_PROFILE"

    #@112
    return-object v0

    #@113
    .line 4124
    :pswitch_44
    const-string/jumbo v0, "REQUEST_STK_SET_PROFILE"

    #@116
    return-object v0

    #@117
    .line 4125
    :pswitch_45
    const-string/jumbo v0, "REQUEST_STK_SEND_ENVELOPE_COMMAND"

    #@11a
    return-object v0

    #@11b
    .line 4126
    :pswitch_46
    const-string/jumbo v0, "REQUEST_STK_SEND_TERMINAL_RESPONSE"

    #@11e
    return-object v0

    #@11f
    .line 4127
    :pswitch_47
    const-string/jumbo v0, "REQUEST_STK_HANDLE_CALL_SETUP_REQUESTED_FROM_SIM"

    #@122
    return-object v0

    #@123
    .line 4128
    :pswitch_48
    const-string/jumbo v0, "REQUEST_EXPLICIT_CALL_TRANSFER"

    #@126
    return-object v0

    #@127
    .line 4129
    :pswitch_49
    const-string/jumbo v0, "REQUEST_SET_PREFERRED_NETWORK_TYPE"

    #@12a
    return-object v0

    #@12b
    .line 4130
    :pswitch_4a
    const-string/jumbo v0, "REQUEST_GET_PREFERRED_NETWORK_TYPE"

    #@12e
    return-object v0

    #@12f
    .line 4131
    :pswitch_4b
    const-string/jumbo v0, "REQUEST_GET_NEIGHBORING_CELL_IDS"

    #@132
    return-object v0

    #@133
    .line 4132
    :pswitch_4c
    const-string/jumbo v0, "REQUEST_SET_LOCATION_UPDATES"

    #@136
    return-object v0

    #@137
    .line 4133
    :pswitch_4d
    const-string/jumbo v0, "RIL_REQUEST_CDMA_SET_SUBSCRIPTION_SOURCE"

    #@13a
    return-object v0

    #@13b
    .line 4134
    :pswitch_4e
    const-string/jumbo v0, "RIL_REQUEST_CDMA_SET_ROAMING_PREFERENCE"

    #@13e
    return-object v0

    #@13f
    .line 4135
    :pswitch_4f
    const-string/jumbo v0, "RIL_REQUEST_CDMA_QUERY_ROAMING_PREFERENCE"

    #@142
    return-object v0

    #@143
    .line 4136
    :pswitch_50
    const-string/jumbo v0, "RIL_REQUEST_SET_TTY_MODE"

    #@146
    return-object v0

    #@147
    .line 4137
    :pswitch_51
    const-string/jumbo v0, "RIL_REQUEST_QUERY_TTY_MODE"

    #@14a
    return-object v0

    #@14b
    .line 4138
    :pswitch_52
    const-string/jumbo v0, "RIL_REQUEST_CDMA_SET_PREFERRED_VOICE_PRIVACY_MODE"

    #@14e
    return-object v0

    #@14f
    .line 4139
    :pswitch_53
    const-string/jumbo v0, "RIL_REQUEST_CDMA_QUERY_PREFERRED_VOICE_PRIVACY_MODE"

    #@152
    return-object v0

    #@153
    .line 4140
    :pswitch_54
    const-string/jumbo v0, "RIL_REQUEST_CDMA_FLASH"

    #@156
    return-object v0

    #@157
    .line 4141
    :pswitch_55
    const-string/jumbo v0, "RIL_REQUEST_CDMA_BURST_DTMF"

    #@15a
    return-object v0

    #@15b
    .line 4142
    :pswitch_56
    const-string/jumbo v0, "RIL_REQUEST_CDMA_SEND_SMS"

    #@15e
    return-object v0

    #@15f
    .line 4143
    :pswitch_57
    const-string/jumbo v0, "RIL_REQUEST_CDMA_SMS_ACKNOWLEDGE"

    #@162
    return-object v0

    #@163
    .line 4144
    :pswitch_58
    const-string/jumbo v0, "RIL_REQUEST_GSM_GET_BROADCAST_CONFIG"

    #@166
    return-object v0

    #@167
    .line 4145
    :pswitch_59
    const-string/jumbo v0, "RIL_REQUEST_GSM_SET_BROADCAST_CONFIG"

    #@16a
    return-object v0

    #@16b
    .line 4146
    :pswitch_5a
    const-string/jumbo v0, "RIL_REQUEST_CDMA_GET_BROADCAST_CONFIG"

    #@16e
    return-object v0

    #@16f
    .line 4147
    :pswitch_5b
    const-string/jumbo v0, "RIL_REQUEST_CDMA_SET_BROADCAST_CONFIG"

    #@172
    return-object v0

    #@173
    .line 4148
    :pswitch_5c
    const-string/jumbo v0, "RIL_REQUEST_GSM_BROADCAST_ACTIVATION"

    #@176
    return-object v0

    #@177
    .line 4149
    :pswitch_5d
    const-string/jumbo v0, "RIL_REQUEST_CDMA_VALIDATE_AND_WRITE_AKEY"

    #@17a
    return-object v0

    #@17b
    .line 4150
    :pswitch_5e
    const-string/jumbo v0, "RIL_REQUEST_CDMA_BROADCAST_ACTIVATION"

    #@17e
    return-object v0

    #@17f
    .line 4151
    :pswitch_5f
    const-string/jumbo v0, "RIL_REQUEST_CDMA_SUBSCRIPTION"

    #@182
    return-object v0

    #@183
    .line 4152
    :pswitch_60
    const-string/jumbo v0, "RIL_REQUEST_CDMA_WRITE_SMS_TO_RUIM"

    #@186
    return-object v0

    #@187
    .line 4153
    :pswitch_61
    const-string/jumbo v0, "RIL_REQUEST_CDMA_DELETE_SMS_ON_RUIM"

    #@18a
    return-object v0

    #@18b
    .line 4154
    :pswitch_62
    const-string/jumbo v0, "RIL_REQUEST_DEVICE_IDENTITY"

    #@18e
    return-object v0

    #@18f
    .line 4155
    :pswitch_63
    const-string/jumbo v0, "RIL_REQUEST_GET_SMSC_ADDRESS"

    #@192
    return-object v0

    #@193
    .line 4156
    :pswitch_64
    const-string/jumbo v0, "RIL_REQUEST_SET_SMSC_ADDRESS"

    #@196
    return-object v0

    #@197
    .line 4157
    :pswitch_65
    const-string/jumbo v0, "REQUEST_EXIT_EMERGENCY_CALLBACK_MODE"

    #@19a
    return-object v0

    #@19b
    .line 4158
    :pswitch_66
    const-string/jumbo v0, "RIL_REQUEST_REPORT_SMS_MEMORY_STATUS"

    #@19e
    return-object v0

    #@19f
    .line 4159
    :pswitch_67
    const-string/jumbo v0, "RIL_REQUEST_REPORT_STK_SERVICE_IS_RUNNING"

    #@1a2
    return-object v0

    #@1a3
    .line 4160
    :pswitch_68
    const-string/jumbo v0, "RIL_REQUEST_CDMA_GET_SUBSCRIPTION_SOURCE"

    #@1a6
    return-object v0

    #@1a7
    .line 4161
    :pswitch_69
    const-string/jumbo v0, "RIL_REQUEST_ISIM_AUTHENTICATION"

    #@1aa
    return-object v0

    #@1ab
    .line 4162
    :pswitch_6a
    const-string/jumbo v0, "RIL_REQUEST_ACKNOWLEDGE_INCOMING_GSM_SMS_WITH_PDU"

    #@1ae
    return-object v0

    #@1af
    .line 4163
    :pswitch_6b
    const-string/jumbo v0, "RIL_REQUEST_STK_SEND_ENVELOPE_WITH_STATUS"

    #@1b2
    return-object v0

    #@1b3
    .line 4164
    :pswitch_6c
    const-string/jumbo v0, "RIL_REQUEST_VOICE_RADIO_TECH"

    #@1b6
    return-object v0

    #@1b7
    .line 4165
    :pswitch_6d
    const-string/jumbo v0, "RIL_REQUEST_GET_CELL_INFO_LIST"

    #@1ba
    return-object v0

    #@1bb
    .line 4166
    :pswitch_6e
    const-string/jumbo v0, "RIL_REQUEST_SET_CELL_INFO_LIST_RATE"

    #@1be
    return-object v0

    #@1bf
    .line 4167
    :pswitch_6f
    const-string/jumbo v0, "RIL_REQUEST_SET_INITIAL_ATTACH_APN"

    #@1c2
    return-object v0

    #@1c3
    .line 4168
    :pswitch_70
    const-string/jumbo v0, "RIL_REQUEST_SET_DATA_PROFILE"

    #@1c6
    return-object v0

    #@1c7
    .line 4169
    :pswitch_71
    const-string/jumbo v0, "RIL_REQUEST_IMS_REGISTRATION_STATE"

    #@1ca
    return-object v0

    #@1cb
    .line 4170
    :pswitch_72
    const-string/jumbo v0, "RIL_REQUEST_IMS_SEND_SMS"

    #@1ce
    return-object v0

    #@1cf
    .line 4171
    :pswitch_73
    const-string/jumbo v0, "RIL_REQUEST_SIM_TRANSMIT_APDU_BASIC"

    #@1d2
    return-object v0

    #@1d3
    .line 4172
    :pswitch_74
    const-string/jumbo v0, "RIL_REQUEST_SIM_OPEN_CHANNEL"

    #@1d6
    return-object v0

    #@1d7
    .line 4173
    :pswitch_75
    const-string/jumbo v0, "RIL_REQUEST_SIM_CLOSE_CHANNEL"

    #@1da
    return-object v0

    #@1db
    .line 4174
    :pswitch_76
    const-string/jumbo v0, "RIL_REQUEST_SIM_TRANSMIT_APDU_CHANNEL"

    #@1de
    return-object v0

    #@1df
    .line 4175
    :pswitch_77
    const-string/jumbo v0, "RIL_REQUEST_NV_READ_ITEM"

    #@1e2
    return-object v0

    #@1e3
    .line 4176
    :pswitch_78
    const-string/jumbo v0, "RIL_REQUEST_NV_WRITE_ITEM"

    #@1e6
    return-object v0

    #@1e7
    .line 4177
    :pswitch_79
    const-string/jumbo v0, "RIL_REQUEST_NV_WRITE_CDMA_PRL"

    #@1ea
    return-object v0

    #@1eb
    .line 4178
    :pswitch_7a
    const-string/jumbo v0, "RIL_REQUEST_NV_RESET_CONFIG"

    #@1ee
    return-object v0

    #@1ef
    .line 4179
    :pswitch_7b
    const-string/jumbo v0, "RIL_REQUEST_SET_UICC_SUBSCRIPTION"

    #@1f2
    return-object v0

    #@1f3
    .line 4180
    :pswitch_7c
    const-string/jumbo v0, "RIL_REQUEST_ALLOW_DATA"

    #@1f6
    return-object v0

    #@1f7
    .line 4181
    :pswitch_7d
    const-string/jumbo v0, "GET_HARDWARE_CONFIG"

    #@1fa
    return-object v0

    #@1fb
    .line 4182
    :pswitch_7e
    const-string/jumbo v0, "RIL_REQUEST_SIM_AUTHENTICATION"

    #@1fe
    return-object v0

    #@1ff
    .line 4183
    :pswitch_7f
    const-string/jumbo v0, "RIL_REQUEST_SHUTDOWN"

    #@202
    return-object v0

    #@203
    .line 4185
    :pswitch_80
    const-string/jumbo v0, "RIL_REQUEST_SET_RADIO_CAPABILITY"

    #@206
    return-object v0

    #@207
    .line 4187
    :pswitch_81
    const-string/jumbo v0, "RIL_REQUEST_GET_RADIO_CAPABILITY"

    #@20a
    return-object v0

    #@20b
    .line 4188
    :pswitch_82
    const-string/jumbo v0, "RIL_REQUEST_START_LCE"

    #@20e
    return-object v0

    #@20f
    .line 4189
    :pswitch_83
    const-string/jumbo v0, "RIL_REQUEST_STOP_LCE"

    #@212
    return-object v0

    #@213
    .line 4190
    :pswitch_84
    const-string/jumbo v0, "RIL_REQUEST_PULL_LCEDATA"

    #@216
    return-object v0

    #@217
    .line 4191
    :pswitch_85
    const-string/jumbo v0, "RIL_REQUEST_GET_ACTIVITY_INFO"

    #@21a
    return-object v0

    #@21b
    .line 4056
    nop

    #@21c
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_22
        :pswitch_23
        :pswitch_24
        :pswitch_25
        :pswitch_26
        :pswitch_27
        :pswitch_28
        :pswitch_29
        :pswitch_2a
        :pswitch_2b
        :pswitch_2c
        :pswitch_2d
        :pswitch_2e
        :pswitch_2f
        :pswitch_30
        :pswitch_31
        :pswitch_32
        :pswitch_33
        :pswitch_34
        :pswitch_35
        :pswitch_36
        :pswitch_37
        :pswitch_38
        :pswitch_39
        :pswitch_3a
        :pswitch_3b
        :pswitch_3c
        :pswitch_3d
        :pswitch_3e
        :pswitch_3f
        :pswitch_40
        :pswitch_41
        :pswitch_42
        :pswitch_43
        :pswitch_44
        :pswitch_45
        :pswitch_46
        :pswitch_47
        :pswitch_48
        :pswitch_49
        :pswitch_4a
        :pswitch_4b
        :pswitch_4c
        :pswitch_4d
        :pswitch_4e
        :pswitch_4f
        :pswitch_50
        :pswitch_51
        :pswitch_52
        :pswitch_53
        :pswitch_54
        :pswitch_55
        :pswitch_5d
        :pswitch_56
        :pswitch_57
        :pswitch_58
        :pswitch_59
        :pswitch_5c
        :pswitch_5a
        :pswitch_5b
        :pswitch_5e
        :pswitch_5f
        :pswitch_60
        :pswitch_61
        :pswitch_62
        :pswitch_65
        :pswitch_63
        :pswitch_64
        :pswitch_66
        :pswitch_67
        :pswitch_68
        :pswitch_69
        :pswitch_6a
        :pswitch_6b
        :pswitch_6c
        :pswitch_6d
        :pswitch_6e
        :pswitch_6f
        :pswitch_71
        :pswitch_72
        :pswitch_73
        :pswitch_74
        :pswitch_75
        :pswitch_76
        :pswitch_77
        :pswitch_78
        :pswitch_79
        :pswitch_7a
        :pswitch_7b
        :pswitch_7c
        :pswitch_7d
        :pswitch_7e
        :pswitch_0
        :pswitch_0
        :pswitch_70
        :pswitch_7f
        :pswitch_81
        :pswitch_80
        :pswitch_82
        :pswitch_83
        :pswitch_84
        :pswitch_85
    .end packed-switch
.end method

.method private responseActivityData(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 9
    .param p1, "p"    # Landroid/os/Parcel;

    #@0
    .prologue
    const/4 v2, 0x5

    #@1
    .line 4031
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@4
    move-result v4

    #@5
    .line 4032
    .local v4, "sleepModeTimeMs":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@8
    move-result v5

    #@9
    .line 4033
    .local v5, "idleModeTimeMs":I
    new-array v6, v2, [I

    #@b
    .line 4034
    .local v6, "txModeTimeMs":[I
    const/4 v0, 0x0

    #@c
    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    #@e
    .line 4035
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@11
    move-result v1

    #@12
    aput v1, v6, v0

    #@14
    .line 4034
    add-int/lit8 v0, v0, 0x1

    #@16
    goto :goto_0

    #@17
    .line 4037
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@1a
    move-result v7

    #@1b
    .line 4039
    .local v7, "rxModeTimeMs":I
    new-instance v1, Ljava/lang/StringBuilder;

    #@1d
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@20
    const-string/jumbo v2, "Modem activity info received: sleepModeTimeMs="

    #@23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v1

    #@27
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v1

    #@2b
    .line 4041
    const-string/jumbo v2, " idleModeTimeMs="

    #@2e
    .line 4039
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v1

    #@32
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@35
    move-result-object v1

    #@36
    .line 4042
    const-string/jumbo v2, " txModeTimeMs[]="

    #@39
    .line 4039
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v1

    #@3d
    .line 4042
    invoke-static {v6}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    #@40
    move-result-object v2

    #@41
    .line 4039
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v1

    #@45
    .line 4043
    const-string/jumbo v2, " rxModeTimeMs="

    #@48
    .line 4039
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v1

    #@4c
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v1

    #@50
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@53
    move-result-object v1

    #@54
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    #@57
    .line 4045
    new-instance v1, Landroid/telephony/ModemActivityInfo;

    #@59
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@5c
    move-result-wide v2

    #@5d
    .line 4046
    const/4 v8, 0x0

    #@5e
    .line 4045
    invoke-direct/range {v1 .. v8}, Landroid/telephony/ModemActivityInfo;-><init>(JII[III)V

    #@61
    return-object v1
.end method

.method private responseCallForward(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 5
    .param p1, "p"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 3332
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@3
    move-result v2

    #@4
    .line 3334
    .local v2, "numInfos":I
    new-array v1, v2, [Lcom/android/internal/telephony/CallForwardInfo;

    #@6
    .line 3336
    .local v1, "infos":[Lcom/android/internal/telephony/CallForwardInfo;
    const/4 v0, 0x0

    #@7
    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    #@9
    .line 3337
    new-instance v3, Lcom/android/internal/telephony/CallForwardInfo;

    #@b
    invoke-direct {v3}, Lcom/android/internal/telephony/CallForwardInfo;-><init>()V

    #@e
    aput-object v3, v1, v0

    #@10
    .line 3339
    aget-object v3, v1, v0

    #@12
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@15
    move-result v4

    #@16
    iput v4, v3, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    #@18
    .line 3340
    aget-object v3, v1, v0

    #@1a
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@1d
    move-result v4

    #@1e
    iput v4, v3, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    #@20
    .line 3341
    aget-object v3, v1, v0

    #@22
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@25
    move-result v4

    #@26
    iput v4, v3, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    #@28
    .line 3342
    aget-object v3, v1, v0

    #@2a
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@2d
    move-result v4

    #@2e
    iput v4, v3, Lcom/android/internal/telephony/CallForwardInfo;->toa:I

    #@30
    .line 3343
    aget-object v3, v1, v0

    #@32
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@35
    move-result-object v4

    #@36
    iput-object v4, v3, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    #@38
    .line 3344
    aget-object v3, v1, v0

    #@3a
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@3d
    move-result v4

    #@3e
    iput v4, v3, Lcom/android/internal/telephony/CallForwardInfo;->timeSeconds:I

    #@40
    .line 3336
    add-int/lit8 v0, v0, 0x1

    #@42
    goto :goto_0

    #@43
    .line 3347
    :cond_0
    return-object v1
.end method

.method private responseCallList(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 14
    .param p1, "p"    # Landroid/os/Parcel;

    #@0
    .prologue
    const/4 v9, 0x1

    #@1
    const/4 v10, 0x0

    #@2
    .line 3501
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@5
    move-result v3

    #@6
    .line 3502
    .local v3, "num":I
    new-instance v4, Ljava/util/ArrayList;

    #@8
    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(I)V

    #@b
    .line 3509
    .local v4, "response":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/DriverCall;>;"
    const/4 v1, 0x0

    #@c
    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_6

    #@e
    .line 3510
    new-instance v0, Lcom/android/internal/telephony/DriverCall;

    #@10
    invoke-direct {v0}, Lcom/android/internal/telephony/DriverCall;-><init>()V

    #@13
    .line 3512
    .local v0, "dc":Lcom/android/internal/telephony/DriverCall;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@16
    move-result v8

    #@17
    invoke-static {v8}, Lcom/android/internal/telephony/DriverCall;->stateFromCLCC(I)Lcom/android/internal/telephony/DriverCall$State;

    #@1a
    move-result-object v8

    #@1b
    iput-object v8, v0, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    #@1d
    .line 3513
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@20
    move-result v8

    #@21
    iput v8, v0, Lcom/android/internal/telephony/DriverCall;->index:I

    #@23
    .line 3514
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@26
    move-result v8

    #@27
    iput v8, v0, Lcom/android/internal/telephony/DriverCall;->TOA:I

    #@29
    .line 3515
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@2c
    move-result v8

    #@2d
    if-eqz v8, :cond_0

    #@2f
    move v8, v9

    #@30
    :goto_1
    iput-boolean v8, v0, Lcom/android/internal/telephony/DriverCall;->isMpty:Z

    #@32
    .line 3516
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@35
    move-result v8

    #@36
    if-eqz v8, :cond_1

    #@38
    move v8, v9

    #@39
    :goto_2
    iput-boolean v8, v0, Lcom/android/internal/telephony/DriverCall;->isMT:Z

    #@3b
    .line 3517
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@3e
    move-result v8

    #@3f
    iput v8, v0, Lcom/android/internal/telephony/DriverCall;->als:I

    #@41
    .line 3518
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@44
    move-result v7

    #@45
    .line 3519
    .local v7, "voiceSettings":I
    if-nez v7, :cond_2

    #@47
    move v8, v10

    #@48
    :goto_3
    iput-boolean v8, v0, Lcom/android/internal/telephony/DriverCall;->isVoice:Z

    #@4a
    .line 3520
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@4d
    move-result v8

    #@4e
    if-eqz v8, :cond_3

    #@50
    move v8, v9

    #@51
    :goto_4
    iput-boolean v8, v0, Lcom/android/internal/telephony/DriverCall;->isVoicePrivacy:Z

    #@53
    .line 3521
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@56
    move-result-object v8

    #@57
    iput-object v8, v0, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    #@59
    .line 3522
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@5c
    move-result v2

    #@5d
    .line 3523
    .local v2, "np":I
    invoke-static {v2}, Lcom/android/internal/telephony/DriverCall;->presentationFromCLIP(I)I

    #@60
    move-result v8

    #@61
    iput v8, v0, Lcom/android/internal/telephony/DriverCall;->numberPresentation:I

    #@63
    .line 3524
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@66
    move-result-object v8

    #@67
    iput-object v8, v0, Lcom/android/internal/telephony/DriverCall;->name:Ljava/lang/String;

    #@69
    .line 3526
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@6c
    move-result v8

    #@6d
    invoke-static {v8}, Lcom/android/internal/telephony/DriverCall;->presentationFromCLIP(I)I

    #@70
    move-result v8

    #@71
    iput v8, v0, Lcom/android/internal/telephony/DriverCall;->namePresentation:I

    #@73
    .line 3527
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@76
    move-result v6

    #@77
    .line 3528
    .local v6, "uusInfoPresent":I
    if-ne v6, v9, :cond_4

    #@79
    .line 3529
    new-instance v8, Lcom/android/internal/telephony/UUSInfo;

    #@7b
    invoke-direct {v8}, Lcom/android/internal/telephony/UUSInfo;-><init>()V

    #@7e
    iput-object v8, v0, Lcom/android/internal/telephony/DriverCall;->uusInfo:Lcom/android/internal/telephony/UUSInfo;

    #@80
    .line 3530
    iget-object v8, v0, Lcom/android/internal/telephony/DriverCall;->uusInfo:Lcom/android/internal/telephony/UUSInfo;

    #@82
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@85
    move-result v11

    #@86
    invoke-virtual {v8, v11}, Lcom/android/internal/telephony/UUSInfo;->setType(I)V

    #@89
    .line 3531
    iget-object v8, v0, Lcom/android/internal/telephony/DriverCall;->uusInfo:Lcom/android/internal/telephony/UUSInfo;

    #@8b
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@8e
    move-result v11

    #@8f
    invoke-virtual {v8, v11}, Lcom/android/internal/telephony/UUSInfo;->setDcs(I)V

    #@92
    .line 3532
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    #@95
    move-result-object v5

    #@96
    .line 3533
    .local v5, "userData":[B
    iget-object v8, v0, Lcom/android/internal/telephony/DriverCall;->uusInfo:Lcom/android/internal/telephony/UUSInfo;

    #@98
    invoke-virtual {v8, v5}, Lcom/android/internal/telephony/UUSInfo;->setUserData([B)V

    #@9b
    .line 3534
    const-string/jumbo v8, "Incoming UUS : type=%d, dcs=%d, length=%d"

    #@9e
    const/4 v11, 0x3

    #@9f
    new-array v11, v11, [Ljava/lang/Object;

    #@a1
    .line 3535
    iget-object v12, v0, Lcom/android/internal/telephony/DriverCall;->uusInfo:Lcom/android/internal/telephony/UUSInfo;

    #@a3
    invoke-virtual {v12}, Lcom/android/internal/telephony/UUSInfo;->getType()I

    #@a6
    move-result v12

    #@a7
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@aa
    move-result-object v12

    #@ab
    aput-object v12, v11, v10

    #@ad
    iget-object v12, v0, Lcom/android/internal/telephony/DriverCall;->uusInfo:Lcom/android/internal/telephony/UUSInfo;

    #@af
    invoke-virtual {v12}, Lcom/android/internal/telephony/UUSInfo;->getDcs()I

    #@b2
    move-result v12

    #@b3
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@b6
    move-result-object v12

    #@b7
    aput-object v12, v11, v9

    #@b9
    .line 3536
    iget-object v12, v0, Lcom/android/internal/telephony/DriverCall;->uusInfo:Lcom/android/internal/telephony/UUSInfo;

    #@bb
    invoke-virtual {v12}, Lcom/android/internal/telephony/UUSInfo;->getUserData()[B

    #@be
    move-result-object v12

    #@bf
    array-length v12, v12

    #@c0
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@c3
    move-result-object v12

    #@c4
    const/4 v13, 0x2

    #@c5
    aput-object v12, v11, v13

    #@c7
    .line 3534
    invoke-static {v8, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@ca
    move-result-object v8

    #@cb
    invoke-direct {p0, v8}, Lcom/android/internal/telephony/RIL;->riljLogv(Ljava/lang/String;)V

    #@ce
    .line 3537
    new-instance v8, Ljava/lang/StringBuilder;

    #@d0
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@d3
    const-string/jumbo v11, "Incoming UUS : data (string)="

    #@d6
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d9
    move-result-object v8

    #@da
    .line 3538
    new-instance v11, Ljava/lang/String;

    #@dc
    iget-object v12, v0, Lcom/android/internal/telephony/DriverCall;->uusInfo:Lcom/android/internal/telephony/UUSInfo;

    #@de
    invoke-virtual {v12}, Lcom/android/internal/telephony/UUSInfo;->getUserData()[B

    #@e1
    move-result-object v12

    #@e2
    invoke-direct {v11, v12}, Ljava/lang/String;-><init>([B)V

    #@e5
    .line 3537
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e8
    move-result-object v8

    #@e9
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ec
    move-result-object v8

    #@ed
    invoke-direct {p0, v8}, Lcom/android/internal/telephony/RIL;->riljLogv(Ljava/lang/String;)V

    #@f0
    .line 3539
    new-instance v8, Ljava/lang/StringBuilder;

    #@f2
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@f5
    const-string/jumbo v11, "Incoming UUS : data (hex): "

    #@f8
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@fb
    move-result-object v8

    #@fc
    .line 3540
    iget-object v11, v0, Lcom/android/internal/telephony/DriverCall;->uusInfo:Lcom/android/internal/telephony/UUSInfo;

    #@fe
    invoke-virtual {v11}, Lcom/android/internal/telephony/UUSInfo;->getUserData()[B

    #@101
    move-result-object v11

    #@102
    invoke-static {v11}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    #@105
    move-result-object v11

    #@106
    .line 3539
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@109
    move-result-object v8

    #@10a
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@10d
    move-result-object v8

    #@10e
    invoke-direct {p0, v8}, Lcom/android/internal/telephony/RIL;->riljLogv(Ljava/lang/String;)V

    #@111
    .line 3546
    .end local v5    # "userData":[B
    :goto_5
    iget-object v8, v0, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    #@113
    iget v11, v0, Lcom/android/internal/telephony/DriverCall;->TOA:I

    #@115
    invoke-static {v8, v11}, Landroid/telephony/PhoneNumberUtils;->stringFromStringAndTOA(Ljava/lang/String;I)Ljava/lang/String;

    #@118
    move-result-object v8

    #@119
    iput-object v8, v0, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    #@11b
    .line 3548
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@11e
    .line 3550
    iget-boolean v8, v0, Lcom/android/internal/telephony/DriverCall;->isVoicePrivacy:Z

    #@120
    if-eqz v8, :cond_5

    #@122
    .line 3551
    iget-object v8, p0, Lcom/android/internal/telephony/RIL;->mVoicePrivacyOnRegistrants:Landroid/os/RegistrantList;

    #@124
    invoke-virtual {v8}, Landroid/os/RegistrantList;->notifyRegistrants()V

    #@127
    .line 3552
    const-string/jumbo v8, "InCall VoicePrivacy is enabled"

    #@12a
    invoke-direct {p0, v8}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    #@12d
    .line 3509
    :goto_6
    add-int/lit8 v1, v1, 0x1

    #@12f
    goto/16 :goto_0

    #@131
    .end local v2    # "np":I
    .end local v6    # "uusInfoPresent":I
    .end local v7    # "voiceSettings":I
    :cond_0
    move v8, v10

    #@132
    .line 3515
    goto/16 :goto_1

    #@134
    :cond_1
    move v8, v10

    #@135
    .line 3516
    goto/16 :goto_2

    #@137
    .restart local v7    # "voiceSettings":I
    :cond_2
    move v8, v9

    #@138
    .line 3519
    goto/16 :goto_3

    #@13a
    :cond_3
    move v8, v10

    #@13b
    .line 3520
    goto/16 :goto_4

    #@13d
    .line 3542
    .restart local v2    # "np":I
    .restart local v6    # "uusInfoPresent":I
    :cond_4
    const-string/jumbo v8, "Incoming UUS : NOT present!"

    #@140
    invoke-direct {p0, v8}, Lcom/android/internal/telephony/RIL;->riljLogv(Ljava/lang/String;)V

    #@143
    goto :goto_5

    #@144
    .line 3554
    :cond_5
    iget-object v8, p0, Lcom/android/internal/telephony/RIL;->mVoicePrivacyOffRegistrants:Landroid/os/RegistrantList;

    #@146
    invoke-virtual {v8}, Landroid/os/RegistrantList;->notifyRegistrants()V

    #@149
    .line 3555
    const-string/jumbo v8, "InCall VoicePrivacy is disabled"

    #@14c
    invoke-direct {p0, v8}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    #@14f
    goto :goto_6

    #@150
    .line 3559
    .end local v0    # "dc":Lcom/android/internal/telephony/DriverCall;
    .end local v2    # "np":I
    .end local v6    # "uusInfoPresent":I
    .end local v7    # "voiceSettings":I
    :cond_6
    invoke-static {v4}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    #@153
    .line 3561
    if-nez v3, :cond_7

    #@155
    iget-object v8, p0, Lcom/android/internal/telephony/RIL;->mTestingEmergencyCall:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@157
    invoke-virtual {v8, v10}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    #@15a
    move-result v8

    #@15b
    if-eqz v8, :cond_7

    #@15d
    .line 3562
    iget-object v8, p0, Lcom/android/internal/telephony/RIL;->mEmergencyCallbackModeRegistrant:Landroid/os/Registrant;

    #@15f
    if-eqz v8, :cond_7

    #@161
    .line 3563
    const-string/jumbo v8, "responseCallList: call ended, testing emergency call, notify ECM Registrants"

    #@164
    invoke-direct {p0, v8}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    #@167
    .line 3565
    iget-object v8, p0, Lcom/android/internal/telephony/RIL;->mEmergencyCallbackModeRegistrant:Landroid/os/Registrant;

    #@169
    invoke-virtual {v8}, Landroid/os/Registrant;->notifyRegistrant()V

    #@16c
    .line 3569
    :cond_7
    return-object v4
.end method

.method private responseCallRing(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 3
    .param p1, "p"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 3865
    const/4 v1, 0x4

    #@1
    new-array v0, v1, [C

    #@3
    .line 3867
    .local v0, "response":[C
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@6
    move-result v1

    #@7
    int-to-char v1, v1

    #@8
    const/4 v2, 0x0

    #@9
    aput-char v1, v0, v2

    #@b
    .line 3868
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@e
    move-result v1

    #@f
    int-to-char v1, v1

    #@10
    const/4 v2, 0x1

    #@11
    aput-char v1, v0, v2

    #@13
    .line 3869
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@16
    move-result v1

    #@17
    int-to-char v1, v1

    #@18
    const/4 v2, 0x2

    #@19
    aput-char v1, v0, v2

    #@1b
    .line 3870
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@1e
    move-result v1

    #@1f
    int-to-char v1, v1

    #@20
    const/4 v2, 0x3

    #@21
    aput-char v1, v0, v2

    #@23
    .line 3872
    return-object v0
.end method

.method private responseCdmaBroadcastConfig(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 7
    .param p1, "p"    # Landroid/os/Parcel;

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 3782
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@4
    move-result v2

    #@5
    .line 3784
    .local v2, "numServiceCategories":I
    if-nez v2, :cond_0

    #@7
    .line 3789
    const/16 v1, 0x5e

    #@9
    .line 3790
    .local v1, "numInts":I
    new-array v3, v1, [I

    #@b
    .line 3793
    .local v3, "response":[I
    const/16 v4, 0x1f

    #@d
    aput v4, v3, v6

    #@f
    .line 3797
    const/4 v0, 0x1

    #@10
    .line 3789
    .local v0, "i":I
    :goto_0
    const/16 v4, 0x5e

    #@12
    .line 3797
    if-ge v0, v4, :cond_1

    #@14
    .line 3798
    add-int/lit8 v4, v0, 0x0

    #@16
    div-int/lit8 v5, v0, 0x3

    #@18
    aput v5, v3, v4

    #@1a
    .line 3799
    add-int/lit8 v4, v0, 0x1

    #@1c
    const/4 v5, 0x1

    #@1d
    aput v5, v3, v4

    #@1f
    .line 3800
    add-int/lit8 v4, v0, 0x2

    #@21
    aput v6, v3, v4

    #@23
    .line 3797
    add-int/lit8 v0, v0, 0x3

    #@25
    goto :goto_0

    #@26
    .line 3804
    .end local v0    # "i":I
    .end local v1    # "numInts":I
    .end local v3    # "response":[I
    :cond_0
    mul-int/lit8 v4, v2, 0x3

    #@28
    add-int/lit8 v1, v4, 0x1

    #@2a
    .line 3805
    .restart local v1    # "numInts":I
    new-array v3, v1, [I

    #@2c
    .line 3807
    .restart local v3    # "response":[I
    aput v2, v3, v6

    #@2e
    .line 3808
    const/4 v0, 0x1

    #@2f
    .restart local v0    # "i":I
    :goto_1
    if-ge v0, v1, :cond_1

    #@31
    .line 3809
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@34
    move-result v4

    #@35
    aput v4, v3, v0

    #@37
    .line 3808
    add-int/lit8 v0, v0, 0x1

    #@39
    goto :goto_1

    #@3a
    .line 3813
    :cond_1
    return-object v3
.end method

.method private responseCdmaCallWaiting(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 2
    .param p1, "p"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 3846
    new-instance v0, Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;

    #@2
    invoke-direct {v0}, Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;-><init>()V

    #@5
    .line 3848
    .local v0, "notification":Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@8
    move-result-object v1

    #@9
    iput-object v1, v0, Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;->number:Ljava/lang/String;

    #@b
    .line 3850
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@e
    move-result v1

    #@f
    invoke-static {v1}, Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;->presentationFromCLIP(I)I

    #@12
    move-result v1

    #@13
    .line 3849
    iput v1, v0, Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;->numberPresentation:I

    #@15
    .line 3851
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@18
    move-result-object v1

    #@19
    iput-object v1, v0, Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;->name:Ljava/lang/String;

    #@1b
    .line 3852
    iget v1, v0, Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;->numberPresentation:I

    #@1d
    iput v1, v0, Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;->namePresentation:I

    #@1f
    .line 3853
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@22
    move-result v1

    #@23
    iput v1, v0, Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;->isPresent:I

    #@25
    .line 3854
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@28
    move-result v1

    #@29
    iput v1, v0, Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;->signalType:I

    #@2b
    .line 3855
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@2e
    move-result v1

    #@2f
    iput v1, v0, Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;->alertPitch:I

    #@31
    .line 3856
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@34
    move-result v1

    #@35
    iput v1, v0, Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;->signal:I

    #@37
    .line 3857
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@3a
    move-result v1

    #@3b
    iput v1, v0, Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;->numberType:I

    #@3d
    .line 3858
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@40
    move-result v1

    #@41
    iput v1, v0, Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;->numberPlan:I

    #@43
    .line 3860
    return-object v0
.end method

.method private responseCdmaInformationRecord(Landroid/os/Parcel;)Ljava/util/ArrayList;
    .locals 4
    .param p1, "p"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/cdma/CdmaInformationRecords;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 3833
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@3
    move-result v2

    #@4
    .line 3834
    .local v2, "numberOfInfoRecs":I
    new-instance v3, Ljava/util/ArrayList;

    #@6
    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    #@9
    .line 3836
    .local v3, "response":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/cdma/CdmaInformationRecords;>;"
    const/4 v1, 0x0

    #@a
    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    #@c
    .line 3837
    new-instance v0, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;

    #@e
    invoke-direct {v0, p1}, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;-><init>(Landroid/os/Parcel;)V

    #@11
    .line 3838
    .local v0, "InfoRec":Lcom/android/internal/telephony/cdma/CdmaInformationRecords;
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@14
    .line 3836
    add-int/lit8 v1, v1, 0x1

    #@16
    goto :goto_0

    #@17
    .line 3841
    .end local v0    # "InfoRec":Lcom/android/internal/telephony/cdma/CdmaInformationRecords;
    :cond_0
    return-object v3
.end method

.method private responseCdmaSms(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "p"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 3366
    invoke-static {p1}, Landroid/telephony/SmsMessage;->newFromParcel(Landroid/os/Parcel;)Landroid/telephony/SmsMessage;

    #@3
    move-result-object v0

    #@4
    .line 3368
    .local v0, "sms":Landroid/telephony/SmsMessage;
    return-object v0
.end method

.method private responseCellInfoList(Landroid/os/Parcel;)Ljava/util/ArrayList;
    .locals 5
    .param p1, "p"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/telephony/CellInfo;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 3931
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@3
    move-result v2

    #@4
    .line 3932
    .local v2, "numberOfInfoRecs":I
    new-instance v3, Ljava/util/ArrayList;

    #@6
    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    #@9
    .line 3934
    .local v3, "response":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/CellInfo;>;"
    const/4 v1, 0x0

    #@a
    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    #@c
    .line 3935
    sget-object v4, Landroid/telephony/CellInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@e
    invoke-interface {v4, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@11
    move-result-object v0

    #@12
    check-cast v0, Landroid/telephony/CellInfo;

    #@14
    .line 3936
    .local v0, "InfoRec":Landroid/telephony/CellInfo;
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@17
    .line 3934
    add-int/lit8 v1, v1, 0x1

    #@19
    goto :goto_0

    #@1a
    .line 3939
    .end local v0    # "InfoRec":Landroid/telephony/CellInfo;
    :cond_0
    return-object v3
.end method

.method private responseCellList(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 11
    .param p1, "p"    # Landroid/os/Parcel;

    #@0
    .prologue
    const/4 v10, 0x0

    #@1
    .line 3722
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@4
    move-result v3

    #@5
    .line 3723
    .local v3, "num":I
    new-instance v5, Ljava/util/ArrayList;

    #@7
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    #@a
    .line 3726
    .local v5, "response":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/NeighboringCellInfo;>;"
    iget-object v8, p0, Lcom/android/internal/telephony/RIL;->mInstanceId:Ljava/lang/Integer;

    #@c
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    #@f
    move-result v8

    #@10
    invoke-static {v8}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    #@13
    move-result-object v7

    #@14
    .line 3728
    .local v7, "subId":[I
    iget-object v8, p0, Lcom/android/internal/telephony/RIL;->mContext:Landroid/content/Context;

    #@16
    const-string/jumbo v9, "phone"

    #@19
    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@1c
    move-result-object v8

    #@1d
    check-cast v8, Landroid/telephony/TelephonyManager;

    #@1f
    .line 3729
    aget v9, v7, v10

    #@21
    .line 3728
    invoke-virtual {v8, v9}, Landroid/telephony/TelephonyManager;->getDataNetworkType(I)I

    #@24
    move-result v4

    #@25
    .line 3732
    .local v4, "radioType":I
    if-eqz v4, :cond_0

    #@27
    .line 3733
    const/4 v1, 0x0

    #@28
    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_0

    #@2a
    .line 3734
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@2d
    move-result v6

    #@2e
    .line 3735
    .local v6, "rssi":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@31
    move-result-object v2

    #@32
    .line 3736
    .local v2, "location":Ljava/lang/String;
    new-instance v0, Landroid/telephony/NeighboringCellInfo;

    #@34
    invoke-direct {v0, v6, v2, v4}, Landroid/telephony/NeighboringCellInfo;-><init>(ILjava/lang/String;I)V

    #@37
    .line 3737
    .local v0, "cell":Landroid/telephony/NeighboringCellInfo;
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@3a
    .line 3733
    add-int/lit8 v1, v1, 0x1

    #@3c
    goto :goto_0

    #@3d
    .line 3740
    .end local v0    # "cell":Landroid/telephony/NeighboringCellInfo;
    .end local v1    # "i":I
    .end local v2    # "location":Ljava/lang/String;
    .end local v6    # "rssi":I
    :cond_0
    return-object v5
.end method

.method private responseDataCallList(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 6
    .param p1, "p"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 3624
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@3
    move-result v3

    #@4
    .line 3625
    .local v3, "ver":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@7
    move-result v1

    #@8
    .line 3626
    .local v1, "num":I
    new-instance v4, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v5, "responseDataCallList ver="

    #@10
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v4

    #@14
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@17
    move-result-object v4

    #@18
    const-string/jumbo v5, " num="

    #@1b
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v4

    #@1f
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@22
    move-result-object v4

    #@23
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26
    move-result-object v4

    #@27
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    #@2a
    .line 3628
    new-instance v2, Ljava/util/ArrayList;

    #@2c
    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    #@2f
    .line 3629
    .local v2, "response":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/dataconnection/DataCallResponse;>;"
    const/4 v0, 0x0

    #@30
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    #@32
    .line 3630
    invoke-direct {p0, p1, v3}, Lcom/android/internal/telephony/RIL;->getDataCallResponse(Landroid/os/Parcel;I)Lcom/android/internal/telephony/dataconnection/DataCallResponse;

    #@35
    move-result-object v4

    #@36
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@39
    .line 3629
    add-int/lit8 v0, v0, 0x1

    #@3b
    goto :goto_0

    #@3c
    .line 3633
    :cond_0
    return-object v2
.end method

.method private responseFailCause(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 2
    .param p1, "p"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 3314
    new-instance v0, Lcom/android/internal/telephony/LastCallFailCause;

    #@2
    invoke-direct {v0}, Lcom/android/internal/telephony/LastCallFailCause;-><init>()V

    #@5
    .line 3315
    .local v0, "failCause":Lcom/android/internal/telephony/LastCallFailCause;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@8
    move-result v1

    #@9
    iput v1, v0, Lcom/android/internal/telephony/LastCallFailCause;->causeCode:I

    #@b
    .line 3316
    invoke-virtual {p1}, Landroid/os/Parcel;->dataAvail()I

    #@e
    move-result v1

    #@f
    if-lez v1, :cond_0

    #@11
    .line 3317
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@14
    move-result-object v1

    #@15
    iput-object v1, v0, Lcom/android/internal/telephony/LastCallFailCause;->vendorCause:Ljava/lang/String;

    #@17
    .line 3319
    :cond_0
    return-object v0
.end method

.method private responseGetPreferredNetworkType(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 3
    .param p1, "p"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 3744
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    check-cast v0, [I

    #@6
    .line 3746
    .local v0, "response":[I
    array-length v1, v0

    #@7
    const/4 v2, 0x1

    #@8
    if-lt v1, v2, :cond_0

    #@a
    .line 3750
    const/4 v1, 0x0

    #@b
    aget v1, v0, v1

    #@d
    iput v1, p0, Lcom/android/internal/telephony/RIL;->mPreferredNetworkType:I

    #@f
    .line 3752
    :cond_0
    return-object v0
.end method

.method private responseGmsBroadcastConfig(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 11
    .param p1, "p"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 3760
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@3
    move-result v7

    #@4
    .line 3761
    .local v7, "num":I
    new-instance v8, Ljava/util/ArrayList;

    #@6
    invoke-direct {v8, v7}, Ljava/util/ArrayList;-><init>(I)V

    #@9
    .line 3763
    .local v8, "response":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;>;"
    const/4 v6, 0x0

    #@a
    .local v6, "i":I
    :goto_0
    if-ge v6, v7, :cond_1

    #@c
    .line 3764
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@f
    move-result v1

    #@10
    .line 3765
    .local v1, "fromId":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@13
    move-result v2

    #@14
    .line 3766
    .local v2, "toId":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@17
    move-result v3

    #@18
    .line 3767
    .local v3, "fromScheme":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@1b
    move-result v4

    #@1c
    .line 3768
    .local v4, "toScheme":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@1f
    move-result v9

    #@20
    const/4 v10, 0x1

    #@21
    if-ne v9, v10, :cond_0

    #@23
    const/4 v5, 0x1

    #@24
    .line 3770
    .local v5, "selected":Z
    :goto_1
    new-instance v0, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;

    #@26
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;-><init>(IIIIZ)V

    #@29
    .line 3772
    .local v0, "info":Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@2c
    .line 3763
    add-int/lit8 v6, v6, 0x1

    #@2e
    goto :goto_0

    #@2f
    .line 3768
    .end local v0    # "info":Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;
    .end local v5    # "selected":Z
    :cond_0
    const/4 v5, 0x0

    #@30
    .restart local v5    # "selected":Z
    goto :goto_1

    #@31
    .line 3774
    .end local v1    # "fromId":I
    .end local v2    # "toId":I
    .end local v3    # "fromScheme":I
    .end local v4    # "toScheme":I
    .end local v5    # "selected":Z
    :cond_1
    return-object v8
.end method

.method private responseHardwareConfig(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 12
    .param p1, "p"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 3948
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@3
    move-result v9

    #@4
    .line 3949
    .local v9, "num":I
    new-instance v10, Ljava/util/ArrayList;

    #@6
    invoke-direct {v10, v9}, Ljava/util/ArrayList;-><init>(I)V

    #@9
    .line 3954
    .local v10, "response":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/HardwareConfig;>;"
    const/4 v8, 0x0

    #@a
    .local v8, "i":I
    :goto_0
    if-ge v8, v9, :cond_0

    #@c
    .line 3955
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@f
    move-result v11

    #@10
    .line 3956
    .local v11, "type":I
    packed-switch v11, :pswitch_data_0

    #@13
    .line 3969
    new-instance v1, Ljava/lang/RuntimeException;

    #@15
    .line 3970
    new-instance v2, Ljava/lang/StringBuilder;

    #@17
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@1a
    const-string/jumbo v3, "RIL_REQUEST_GET_HARDWARE_CONFIG invalid hardward type:"

    #@1d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v2

    #@21
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@24
    move-result-object v2

    #@25
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@28
    move-result-object v2

    #@29
    .line 3969
    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@2c
    throw v1

    #@2d
    .line 3958
    :pswitch_0
    new-instance v0, Lcom/android/internal/telephony/HardwareConfig;

    #@2f
    invoke-direct {v0, v11}, Lcom/android/internal/telephony/HardwareConfig;-><init>(I)V

    #@32
    .line 3959
    .local v0, "hw":Lcom/android/internal/telephony/HardwareConfig;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@35
    move-result-object v1

    #@36
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@39
    move-result v2

    #@3a
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@3d
    move-result v3

    #@3e
    .line 3960
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@41
    move-result v4

    #@42
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@45
    move-result v5

    #@46
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@49
    move-result v6

    #@4a
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@4d
    move-result v7

    #@4e
    .line 3959
    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/telephony/HardwareConfig;->assignModem(Ljava/lang/String;IIIIII)V

    #@51
    .line 3974
    :goto_1
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@54
    .line 3954
    add-int/lit8 v8, v8, 0x1

    #@56
    goto :goto_0

    #@57
    .line 3964
    .end local v0    # "hw":Lcom/android/internal/telephony/HardwareConfig;
    :pswitch_1
    new-instance v0, Lcom/android/internal/telephony/HardwareConfig;

    #@59
    invoke-direct {v0, v11}, Lcom/android/internal/telephony/HardwareConfig;-><init>(I)V

    #@5c
    .line 3965
    .restart local v0    # "hw":Lcom/android/internal/telephony/HardwareConfig;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@5f
    move-result-object v1

    #@60
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@63
    move-result v2

    #@64
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@67
    move-result-object v3

    #@68
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/HardwareConfig;->assignSim(Ljava/lang/String;ILjava/lang/String;)V

    #@6b
    goto :goto_1

    #@6c
    .line 3977
    .end local v0    # "hw":Lcom/android/internal/telephony/HardwareConfig;
    .end local v11    # "type":I
    :cond_0
    return-object v10

    #@6d
    .line 3956
    nop

    #@6e
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private responseICC_IO(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 4
    .param p1, "p"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 3420
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@3
    move-result v1

    #@4
    .line 3421
    .local v1, "sw1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@7
    move-result v2

    #@8
    .line 3423
    .local v2, "sw2":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@b
    move-result-object v0

    #@c
    .line 3430
    .local v0, "s":Ljava/lang/String;
    new-instance v3, Lcom/android/internal/telephony/uicc/IccIoResult;

    #@e
    invoke-direct {v3, v1, v2, v0}, Lcom/android/internal/telephony/uicc/IccIoResult;-><init>(IILjava/lang/String;)V

    #@11
    return-object v3
.end method

.method private responseICC_IOBase64(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 5
    .param p1, "p"    # Landroid/os/Parcel;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 3438
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@4
    move-result v1

    #@5
    .line 3439
    .local v1, "sw1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@8
    move-result v2

    #@9
    .line 3441
    .local v2, "sw2":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@c
    move-result-object v0

    #@d
    .line 3448
    .local v0, "s":Ljava/lang/String;
    new-instance v4, Lcom/android/internal/telephony/uicc/IccIoResult;

    #@f
    if-eqz v0, :cond_0

    #@11
    .line 3449
    const/4 v3, 0x0

    #@12
    invoke-static {v0, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    #@15
    move-result-object v3

    #@16
    .line 3448
    :goto_0
    invoke-direct {v4, v1, v2, v3}, Lcom/android/internal/telephony/uicc/IccIoResult;-><init>(II[B)V

    #@19
    return-object v4

    #@1a
    .line 3449
    :cond_0
    check-cast v3, [B

    #@1c
    goto :goto_0
.end method

.method private responseIccCardStatus(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 5
    .param p1, "p"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 3456
    new-instance v1, Lcom/android/internal/telephony/uicc/IccCardStatus;

    #@2
    invoke-direct {v1}, Lcom/android/internal/telephony/uicc/IccCardStatus;-><init>()V

    #@5
    .line 3457
    .local v1, "cardStatus":Lcom/android/internal/telephony/uicc/IccCardStatus;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@8
    move-result v4

    #@9
    invoke-virtual {v1, v4}, Lcom/android/internal/telephony/uicc/IccCardStatus;->setCardState(I)V

    #@c
    .line 3458
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@f
    move-result v4

    #@10
    invoke-virtual {v1, v4}, Lcom/android/internal/telephony/uicc/IccCardStatus;->setUniversalPinState(I)V

    #@13
    .line 3459
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@16
    move-result v4

    #@17
    iput v4, v1, Lcom/android/internal/telephony/uicc/IccCardStatus;->mGsmUmtsSubscriptionAppIndex:I

    #@19
    .line 3460
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@1c
    move-result v4

    #@1d
    iput v4, v1, Lcom/android/internal/telephony/uicc/IccCardStatus;->mCdmaSubscriptionAppIndex:I

    #@1f
    .line 3461
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@22
    move-result v4

    #@23
    iput v4, v1, Lcom/android/internal/telephony/uicc/IccCardStatus;->mImsSubscriptionAppIndex:I

    #@25
    .line 3462
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@28
    move-result v3

    #@29
    .line 3465
    .local v3, "numApplications":I
    const/16 v4, 0x8

    #@2b
    if-le v3, v4, :cond_0

    #@2d
    .line 3466
    const/16 v3, 0x8

    #@2f
    .line 3468
    :cond_0
    new-array v4, v3, [Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;

    #@31
    iput-object v4, v1, Lcom/android/internal/telephony/uicc/IccCardStatus;->mApplications:[Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;

    #@33
    .line 3469
    const/4 v2, 0x0

    #@34
    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_1

    #@36
    .line 3470
    new-instance v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;

    #@38
    invoke-direct {v0}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;-><init>()V

    #@3b
    .line 3471
    .local v0, "appStatus":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@3e
    move-result v4

    #@3f
    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->AppTypeFromRILInt(I)Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    #@42
    move-result-object v4

    #@43
    iput-object v4, v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->app_type:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    #@45
    .line 3472
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@48
    move-result v4

    #@49
    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->AppStateFromRILInt(I)Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    #@4c
    move-result-object v4

    #@4d
    iput-object v4, v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->app_state:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    #@4f
    .line 3473
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@52
    move-result v4

    #@53
    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->PersoSubstateFromRILInt(I)Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    #@56
    move-result-object v4

    #@57
    iput-object v4, v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->perso_substate:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    #@59
    .line 3474
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@5c
    move-result-object v4

    #@5d
    iput-object v4, v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->aid:Ljava/lang/String;

    #@5f
    .line 3475
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@62
    move-result-object v4

    #@63
    iput-object v4, v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->app_label:Ljava/lang/String;

    #@65
    .line 3476
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@68
    move-result v4

    #@69
    iput v4, v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->pin1_replaced:I

    #@6b
    .line 3477
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@6e
    move-result v4

    #@6f
    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->PinStateFromRILInt(I)Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    #@72
    move-result-object v4

    #@73
    iput-object v4, v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->pin1:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    #@75
    .line 3478
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@78
    move-result v4

    #@79
    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->PinStateFromRILInt(I)Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    #@7c
    move-result-object v4

    #@7d
    iput-object v4, v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->pin2:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    #@7f
    .line 3479
    iget-object v4, v1, Lcom/android/internal/telephony/uicc/IccCardStatus;->mApplications:[Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;

    #@81
    aput-object v0, v4, v2

    #@83
    .line 3469
    add-int/lit8 v2, v2, 0x1

    #@85
    goto :goto_0

    #@86
    .line 3481
    .end local v0    # "appStatus":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;
    :cond_1
    return-object v1
.end method

.method private responseInts(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 4
    .param p1, "p"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 3301
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@3
    move-result v1

    #@4
    .line 3303
    .local v1, "numInts":I
    new-array v2, v1, [I

    #@6
    .line 3305
    .local v2, "response":[I
    const/4 v0, 0x0

    #@7
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    #@9
    .line 3306
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@c
    move-result v3

    #@d
    aput v3, v2, v0

    #@f
    .line 3305
    add-int/lit8 v0, v0, 0x1

    #@11
    goto :goto_0

    #@12
    .line 3309
    :cond_0
    return-object v2
.end method

.method private responseLceData(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 6
    .param p1, "p"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 4001
    new-instance v1, Ljava/util/ArrayList;

    #@2
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 4002
    .local v1, "capacityResponse":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@8
    move-result v0

    #@9
    .line 4003
    .local v0, "capacityDownKbps":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    #@c
    move-result v2

    #@d
    .line 4004
    .local v2, "confidenceLevel":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    #@10
    move-result v3

    #@11
    .line 4006
    .local v3, "lceSuspended":I
    new-instance v4, Ljava/lang/StringBuilder;

    #@13
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@16
    const-string/jumbo v5, "LCE capacity information received: capacity="

    #@19
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v4

    #@1d
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@20
    move-result-object v4

    #@21
    .line 4008
    const-string/jumbo v5, " confidence="

    #@24
    .line 4006
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v4

    #@28
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v4

    #@2c
    .line 4009
    const-string/jumbo v5, " lceSuspended="

    #@2f
    .line 4006
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v4

    #@33
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@36
    move-result-object v4

    #@37
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3a
    move-result-object v4

    #@3b
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    #@3e
    .line 4011
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@41
    move-result-object v4

    #@42
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@45
    .line 4012
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@48
    move-result-object v4

    #@49
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@4c
    .line 4013
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@4f
    move-result-object v4

    #@50
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@53
    .line 4014
    return-object v1
.end method

.method private responseLceStatus(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 5
    .param p1, "p"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 4018
    new-instance v2, Ljava/util/ArrayList;

    #@2
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 4019
    .local v2, "statusResponse":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    #@8
    move-result v1

    #@9
    .line 4020
    .local v1, "lceStatus":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@c
    move-result v0

    #@d
    .line 4022
    .local v0, "actualInterval":I
    new-instance v3, Ljava/lang/StringBuilder;

    #@f
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@12
    const-string/jumbo v4, "LCE status information received: lceStatus="

    #@15
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v3

    #@19
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v3

    #@1d
    .line 4024
    const-string/jumbo v4, " actualInterval="

    #@20
    .line 4022
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v3

    #@24
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@27
    move-result-object v3

    #@28
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2b
    move-result-object v3

    #@2c
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    #@2f
    .line 4025
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@32
    move-result-object v3

    #@33
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@36
    .line 4026
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@39
    move-result-object v3

    #@3a
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@3d
    .line 4027
    return-object v2
.end method

.method private responseOperatorInfos(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 8
    .param p1, "p"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 3692
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseStrings(Landroid/os/Parcel;)Ljava/lang/Object;

    #@3
    move-result-object v2

    #@4
    check-cast v2, [Ljava/lang/String;

    #@6
    .line 3695
    .local v2, "strings":[Ljava/lang/String;
    array-length v3, v2

    #@7
    rem-int/lit8 v3, v3, 0x4

    #@9
    if-eqz v3, :cond_0

    #@b
    .line 3696
    new-instance v3, Ljava/lang/RuntimeException;

    #@d
    .line 3697
    new-instance v4, Ljava/lang/StringBuilder;

    #@f
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@12
    const-string/jumbo v5, "RIL_REQUEST_QUERY_AVAILABLE_NETWORKS: invalid response. Got "

    #@15
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v4

    #@19
    .line 3698
    array-length v5, v2

    #@1a
    .line 3697
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v4

    #@1e
    .line 3698
    const-string/jumbo v5, " strings, expected multible of 4"

    #@21
    .line 3697
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v4

    #@25
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@28
    move-result-object v4

    #@29
    .line 3696
    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@2c
    throw v3

    #@2d
    .line 3701
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    #@2f
    array-length v3, v2

    #@30
    div-int/lit8 v3, v3, 0x4

    #@32
    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    #@35
    .line 3703
    .local v1, "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/OperatorInfo;>;"
    const/4 v0, 0x0

    #@36
    .local v0, "i":I
    :goto_0
    array-length v3, v2

    #@37
    if-ge v0, v3, :cond_1

    #@39
    .line 3705
    new-instance v3, Lcom/android/internal/telephony/OperatorInfo;

    #@3b
    .line 3706
    add-int/lit8 v4, v0, 0x0

    #@3d
    aget-object v4, v2, v4

    #@3f
    .line 3707
    add-int/lit8 v5, v0, 0x1

    #@41
    aget-object v5, v2, v5

    #@43
    .line 3708
    add-int/lit8 v6, v0, 0x2

    #@45
    aget-object v6, v2, v6

    #@47
    .line 3709
    add-int/lit8 v7, v0, 0x3

    #@49
    aget-object v7, v2, v7

    #@4b
    .line 3705
    invoke-direct {v3, v4, v5, v6, v7}, Lcom/android/internal/telephony/OperatorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@4e
    .line 3704
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@51
    .line 3703
    add-int/lit8 v0, v0, 0x4

    #@53
    goto :goto_0

    #@54
    .line 3712
    :cond_1
    return-object v1
.end method

.method private responseRadioCapability(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 9
    .param p1, "p"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 3982
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@3
    move-result v7

    #@4
    .line 3983
    .local v7, "version":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@7
    move-result v2

    #@8
    .line 3984
    .local v2, "session":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@b
    move-result v3

    #@c
    .line 3985
    .local v3, "phase":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@f
    move-result v4

    #@10
    .line 3986
    .local v4, "rat":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@13
    move-result-object v5

    #@14
    .line 3987
    .local v5, "logicModemUuid":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@17
    move-result v6

    #@18
    .line 3989
    .local v6, "status":I
    new-instance v1, Ljava/lang/StringBuilder;

    #@1a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1d
    const-string/jumbo v8, "responseRadioCapability: version= "

    #@20
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v1

    #@24
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@27
    move-result-object v1

    #@28
    .line 3990
    const-string/jumbo v8, ", session="

    #@2b
    .line 3989
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v1

    #@2f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@32
    move-result-object v1

    #@33
    .line 3991
    const-string/jumbo v8, ", phase="

    #@36
    .line 3989
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v1

    #@3a
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v1

    #@3e
    .line 3992
    const-string/jumbo v8, ", rat="

    #@41
    .line 3989
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v1

    #@45
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@48
    move-result-object v1

    #@49
    .line 3993
    const-string/jumbo v8, ", logicModemUuid="

    #@4c
    .line 3989
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v1

    #@50
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@53
    move-result-object v1

    #@54
    .line 3994
    const-string/jumbo v8, ", status="

    #@57
    .line 3989
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v1

    #@5b
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@5e
    move-result-object v1

    #@5f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@62
    move-result-object v1

    #@63
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    #@66
    .line 3995
    new-instance v0, Lcom/android/internal/telephony/RadioCapability;

    #@68
    .line 3996
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mInstanceId:Ljava/lang/Integer;

    #@6a
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    #@6d
    move-result v1

    #@6e
    .line 3995
    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/RadioCapability;-><init>(IIIILjava/lang/String;I)V

    #@71
    .line 3997
    .local v0, "rc":Lcom/android/internal/telephony/RadioCapability;
    return-object v0
.end method

.method private responseRaw(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "p"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 3395
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    #@3
    move-result-object v0

    #@4
    .line 3397
    .local v0, "response":[B
    return-object v0
.end method

.method private responseSMS(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 4
    .param p1, "p"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 3405
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@3
    move-result v2

    #@4
    .line 3406
    .local v2, "messageRef":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    .line 3407
    .local v0, "ackPDU":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@b
    move-result v1

    #@c
    .line 3409
    .local v1, "errorCode":I
    new-instance v3, Lcom/android/internal/telephony/SmsResponse;

    #@e
    invoke-direct {v3, v2, v0, v1}, Lcom/android/internal/telephony/SmsResponse;-><init>(ILjava/lang/String;I)V

    #@11
    .line 3411
    .local v3, "response":Lcom/android/internal/telephony/SmsResponse;
    return-object v3
.end method

.method private responseSetupDataCall(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 10
    .param p1, "p"    # Landroid/os/Parcel;

    #@0
    .prologue
    const/4 v9, 0x5

    #@1
    .line 3638
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@4
    move-result v6

    #@5
    .line 3639
    .local v6, "ver":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@8
    move-result v4

    #@9
    .line 3644
    .local v4, "num":I
    if-ge v6, v9, :cond_5

    #@b
    .line 3645
    new-instance v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse;

    #@d
    invoke-direct {v1}, Lcom/android/internal/telephony/dataconnection/DataCallResponse;-><init>()V

    #@10
    .line 3646
    .local v1, "dataCall":Lcom/android/internal/telephony/dataconnection/DataCallResponse;
    iput v6, v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->version:I

    #@12
    .line 3647
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@15
    move-result-object v7

    #@16
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@19
    move-result v7

    #@1a
    iput v7, v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->cid:I

    #@1c
    .line 3648
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1f
    move-result-object v7

    #@20
    iput-object v7, v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->ifname:Ljava/lang/String;

    #@22
    .line 3649
    iget-object v7, v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->ifname:Ljava/lang/String;

    #@24
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@27
    move-result v7

    #@28
    if-eqz v7, :cond_0

    #@2a
    .line 3650
    new-instance v7, Ljava/lang/RuntimeException;

    #@2c
    .line 3651
    const-string/jumbo v8, "RIL_REQUEST_SETUP_DATA_CALL response, no ifname"

    #@2f
    .line 3650
    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@32
    throw v7

    #@33
    .line 3653
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@36
    move-result-object v0

    #@37
    .line 3654
    .local v0, "addresses":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@3a
    move-result v7

    #@3b
    if-nez v7, :cond_1

    #@3d
    .line 3655
    const-string/jumbo v7, " "

    #@40
    invoke-virtual {v0, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@43
    move-result-object v7

    #@44
    iput-object v7, v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->addresses:[Ljava/lang/String;

    #@46
    .line 3657
    :cond_1
    const/4 v7, 0x4

    #@47
    if-lt v4, v7, :cond_2

    #@49
    .line 3658
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@4c
    move-result-object v2

    #@4d
    .line 3659
    .local v2, "dnses":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    #@4f
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@52
    const-string/jumbo v8, "responseSetupDataCall got dnses="

    #@55
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@58
    move-result-object v7

    #@59
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5c
    move-result-object v7

    #@5d
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@60
    move-result-object v7

    #@61
    invoke-direct {p0, v7}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    #@64
    .line 3660
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@67
    move-result v7

    #@68
    if-nez v7, :cond_2

    #@6a
    .line 3661
    const-string/jumbo v7, " "

    #@6d
    invoke-virtual {v2, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@70
    move-result-object v7

    #@71
    iput-object v7, v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->dnses:[Ljava/lang/String;

    #@73
    .line 3664
    .end local v2    # "dnses":Ljava/lang/String;
    :cond_2
    if-lt v4, v9, :cond_3

    #@75
    .line 3665
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@78
    move-result-object v3

    #@79
    .line 3666
    .local v3, "gateways":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    #@7b
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@7e
    const-string/jumbo v8, "responseSetupDataCall got gateways="

    #@81
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@84
    move-result-object v7

    #@85
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@88
    move-result-object v7

    #@89
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8c
    move-result-object v7

    #@8d
    invoke-direct {p0, v7}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    #@90
    .line 3667
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@93
    move-result v7

    #@94
    if-nez v7, :cond_3

    #@96
    .line 3668
    const-string/jumbo v7, " "

    #@99
    invoke-virtual {v3, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@9c
    move-result-object v7

    #@9d
    iput-object v7, v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->gateways:[Ljava/lang/String;

    #@9f
    .line 3671
    .end local v3    # "gateways":Ljava/lang/String;
    :cond_3
    const/4 v7, 0x6

    #@a0
    if-lt v4, v7, :cond_4

    #@a2
    .line 3672
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@a5
    move-result-object v5

    #@a6
    .line 3673
    .local v5, "pcscf":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    #@a8
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@ab
    const-string/jumbo v8, "responseSetupDataCall got pcscf="

    #@ae
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b1
    move-result-object v7

    #@b2
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b5
    move-result-object v7

    #@b6
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b9
    move-result-object v7

    #@ba
    invoke-direct {p0, v7}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    #@bd
    .line 3674
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@c0
    move-result v7

    #@c1
    if-nez v7, :cond_4

    #@c3
    .line 3675
    const-string/jumbo v7, " "

    #@c6
    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@c9
    move-result-object v7

    #@ca
    iput-object v7, v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->pcscf:[Ljava/lang/String;

    #@cc
    .line 3687
    .end local v0    # "addresses":Ljava/lang/String;
    .end local v5    # "pcscf":Ljava/lang/String;
    :cond_4
    :goto_0
    return-object v1

    #@cd
    .line 3679
    .end local v1    # "dataCall":Lcom/android/internal/telephony/dataconnection/DataCallResponse;
    :cond_5
    const/4 v7, 0x1

    #@ce
    if-eq v4, v7, :cond_6

    #@d0
    .line 3680
    new-instance v7, Ljava/lang/RuntimeException;

    #@d2
    .line 3681
    new-instance v8, Ljava/lang/StringBuilder;

    #@d4
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@d7
    const-string/jumbo v9, "RIL_REQUEST_SETUP_DATA_CALL response expecting 1 RIL_Data_Call_response_v5 got "

    #@da
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@dd
    move-result-object v8

    #@de
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@e1
    move-result-object v8

    #@e2
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@e5
    move-result-object v8

    #@e6
    .line 3680
    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@e9
    throw v7

    #@ea
    .line 3684
    :cond_6
    invoke-direct {p0, p1, v6}, Lcom/android/internal/telephony/RIL;->getDataCallResponse(Landroid/os/Parcel;I)Lcom/android/internal/telephony/dataconnection/DataCallResponse;

    #@ed
    move-result-object v1

    #@ee
    .restart local v1    # "dataCall":Lcom/android/internal/telephony/dataconnection/DataCallResponse;
    goto :goto_0
.end method

.method private responseSignalStrength(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "p"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 3820
    invoke-static {p1}, Landroid/telephony/SignalStrength;->makeSignalStrengthFromRilParcel(Landroid/os/Parcel;)Landroid/telephony/SignalStrength;

    #@3
    move-result-object v0

    #@4
    .line 3821
    .local v0, "signalStrength":Landroid/telephony/SignalStrength;
    return-object v0
.end method

.method private responseSimRefresh(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 2
    .param p1, "p"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 3486
    new-instance v0, Lcom/android/internal/telephony/uicc/IccRefreshResponse;

    #@2
    invoke-direct {v0}, Lcom/android/internal/telephony/uicc/IccRefreshResponse;-><init>()V

    #@5
    .line 3488
    .local v0, "response":Lcom/android/internal/telephony/uicc/IccRefreshResponse;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@8
    move-result v1

    #@9
    iput v1, v0, Lcom/android/internal/telephony/uicc/IccRefreshResponse;->refreshResult:I

    #@b
    .line 3489
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@e
    move-result v1

    #@f
    iput v1, v0, Lcom/android/internal/telephony/uicc/IccRefreshResponse;->efId:I

    #@11
    .line 3490
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@14
    move-result-object v1

    #@15
    iput-object v1, v0, Lcom/android/internal/telephony/uicc/IccRefreshResponse;->aid:Ljava/lang/String;

    #@17
    .line 3491
    return-object v0
.end method

.method private responseSsData(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 5
    .param p1, "p"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 4287
    new-instance v2, Lcom/android/internal/telephony/gsm/SsData;

    #@2
    invoke-direct {v2}, Lcom/android/internal/telephony/gsm/SsData;-><init>()V

    #@5
    .line 4289
    .local v2, "ssData":Lcom/android/internal/telephony/gsm/SsData;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@8
    move-result v3

    #@9
    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/gsm/SsData;->ServiceTypeFromRILInt(I)Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    #@c
    move-result-object v3

    #@d
    iput-object v3, v2, Lcom/android/internal/telephony/gsm/SsData;->serviceType:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    #@f
    .line 4290
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@12
    move-result v3

    #@13
    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/gsm/SsData;->RequestTypeFromRILInt(I)Lcom/android/internal/telephony/gsm/SsData$RequestType;

    #@16
    move-result-object v3

    #@17
    iput-object v3, v2, Lcom/android/internal/telephony/gsm/SsData;->requestType:Lcom/android/internal/telephony/gsm/SsData$RequestType;

    #@19
    .line 4291
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@1c
    move-result v3

    #@1d
    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/gsm/SsData;->TeleserviceTypeFromRILInt(I)Lcom/android/internal/telephony/gsm/SsData$TeleserviceType;

    #@20
    move-result-object v3

    #@21
    iput-object v3, v2, Lcom/android/internal/telephony/gsm/SsData;->teleserviceType:Lcom/android/internal/telephony/gsm/SsData$TeleserviceType;

    #@23
    .line 4292
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@26
    move-result v3

    #@27
    iput v3, v2, Lcom/android/internal/telephony/gsm/SsData;->serviceClass:I

    #@29
    .line 4293
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@2c
    move-result v3

    #@2d
    iput v3, v2, Lcom/android/internal/telephony/gsm/SsData;->result:I

    #@2f
    .line 4294
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@32
    move-result v1

    #@33
    .line 4296
    .local v1, "num":I
    iget-object v3, v2, Lcom/android/internal/telephony/gsm/SsData;->serviceType:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    #@35
    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->isTypeCF()Z

    #@38
    move-result v3

    #@39
    if-eqz v3, :cond_0

    #@3b
    .line 4297
    iget-object v3, v2, Lcom/android/internal/telephony/gsm/SsData;->requestType:Lcom/android/internal/telephony/gsm/SsData$RequestType;

    #@3d
    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/SsData$RequestType;->isTypeInterrogation()Z

    #@40
    move-result v3

    #@41
    .line 4296
    if-eqz v3, :cond_0

    #@43
    .line 4298
    new-array v3, v1, [Lcom/android/internal/telephony/CallForwardInfo;

    #@45
    iput-object v3, v2, Lcom/android/internal/telephony/gsm/SsData;->cfInfo:[Lcom/android/internal/telephony/CallForwardInfo;

    #@47
    .line 4300
    const/4 v0, 0x0

    #@48
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    #@4a
    .line 4301
    iget-object v3, v2, Lcom/android/internal/telephony/gsm/SsData;->cfInfo:[Lcom/android/internal/telephony/CallForwardInfo;

    #@4c
    new-instance v4, Lcom/android/internal/telephony/CallForwardInfo;

    #@4e
    invoke-direct {v4}, Lcom/android/internal/telephony/CallForwardInfo;-><init>()V

    #@51
    aput-object v4, v3, v0

    #@53
    .line 4303
    iget-object v3, v2, Lcom/android/internal/telephony/gsm/SsData;->cfInfo:[Lcom/android/internal/telephony/CallForwardInfo;

    #@55
    aget-object v3, v3, v0

    #@57
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@5a
    move-result v4

    #@5b
    iput v4, v3, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    #@5d
    .line 4304
    iget-object v3, v2, Lcom/android/internal/telephony/gsm/SsData;->cfInfo:[Lcom/android/internal/telephony/CallForwardInfo;

    #@5f
    aget-object v3, v3, v0

    #@61
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@64
    move-result v4

    #@65
    iput v4, v3, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    #@67
    .line 4305
    iget-object v3, v2, Lcom/android/internal/telephony/gsm/SsData;->cfInfo:[Lcom/android/internal/telephony/CallForwardInfo;

    #@69
    aget-object v3, v3, v0

    #@6b
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@6e
    move-result v4

    #@6f
    iput v4, v3, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    #@71
    .line 4306
    iget-object v3, v2, Lcom/android/internal/telephony/gsm/SsData;->cfInfo:[Lcom/android/internal/telephony/CallForwardInfo;

    #@73
    aget-object v3, v3, v0

    #@75
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@78
    move-result v4

    #@79
    iput v4, v3, Lcom/android/internal/telephony/CallForwardInfo;->toa:I

    #@7b
    .line 4307
    iget-object v3, v2, Lcom/android/internal/telephony/gsm/SsData;->cfInfo:[Lcom/android/internal/telephony/CallForwardInfo;

    #@7d
    aget-object v3, v3, v0

    #@7f
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@82
    move-result-object v4

    #@83
    iput-object v4, v3, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    #@85
    .line 4308
    iget-object v3, v2, Lcom/android/internal/telephony/gsm/SsData;->cfInfo:[Lcom/android/internal/telephony/CallForwardInfo;

    #@87
    aget-object v3, v3, v0

    #@89
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@8c
    move-result v4

    #@8d
    iput v4, v3, Lcom/android/internal/telephony/CallForwardInfo;->timeSeconds:I

    #@8f
    .line 4310
    new-instance v3, Ljava/lang/StringBuilder;

    #@91
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@94
    const-string/jumbo v4, "[SS Data] CF Info "

    #@97
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9a
    move-result-object v3

    #@9b
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@9e
    move-result-object v3

    #@9f
    const-string/jumbo v4, " : "

    #@a2
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a5
    move-result-object v3

    #@a6
    iget-object v4, v2, Lcom/android/internal/telephony/gsm/SsData;->cfInfo:[Lcom/android/internal/telephony/CallForwardInfo;

    #@a8
    aget-object v4, v4, v0

    #@aa
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@ad
    move-result-object v3

    #@ae
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b1
    move-result-object v3

    #@b2
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    #@b5
    .line 4300
    add-int/lit8 v0, v0, 0x1

    #@b7
    goto :goto_0

    #@b8
    .line 4313
    .end local v0    # "i":I
    :cond_0
    new-array v3, v1, [I

    #@ba
    iput-object v3, v2, Lcom/android/internal/telephony/gsm/SsData;->ssInfo:[I

    #@bc
    .line 4314
    const/4 v0, 0x0

    #@bd
    .restart local v0    # "i":I
    :goto_1
    if-ge v0, v1, :cond_1

    #@bf
    .line 4315
    iget-object v3, v2, Lcom/android/internal/telephony/gsm/SsData;->ssInfo:[I

    #@c1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@c4
    move-result v4

    #@c5
    aput v4, v3, v0

    #@c7
    .line 4316
    new-instance v3, Ljava/lang/StringBuilder;

    #@c9
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@cc
    const-string/jumbo v4, "[SS Data] SS Info "

    #@cf
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d2
    move-result-object v3

    #@d3
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@d6
    move-result-object v3

    #@d7
    const-string/jumbo v4, " : "

    #@da
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@dd
    move-result-object v3

    #@de
    iget-object v4, v2, Lcom/android/internal/telephony/gsm/SsData;->ssInfo:[I

    #@e0
    aget v4, v4, v0

    #@e2
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@e5
    move-result-object v3

    #@e6
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@e9
    move-result-object v3

    #@ea
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    #@ed
    .line 4314
    add-int/lit8 v0, v0, 0x1

    #@ef
    goto :goto_1

    #@f0
    .line 4320
    :cond_1
    return-object v2
.end method

.method private responseString(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "p"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 3375
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 3377
    .local v0, "response":Ljava/lang/String;
    return-object v0
.end method

.method private responseStrings(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "p"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 3385
    invoke-virtual {p1}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 3387
    .local v0, "response":[Ljava/lang/String;
    return-object v0
.end method

.method private responseSuppServiceNotification(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 2
    .param p1, "p"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 3352
    new-instance v0, Lcom/android/internal/telephony/gsm/SuppServiceNotification;

    #@2
    invoke-direct {v0}, Lcom/android/internal/telephony/gsm/SuppServiceNotification;-><init>()V

    #@5
    .line 3354
    .local v0, "notification":Lcom/android/internal/telephony/gsm/SuppServiceNotification;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@8
    move-result v1

    #@9
    iput v1, v0, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->notificationType:I

    #@b
    .line 3355
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@e
    move-result v1

    #@f
    iput v1, v0, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->code:I

    #@11
    .line 3356
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@14
    move-result v1

    #@15
    iput v1, v0, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->index:I

    #@17
    .line 3357
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@1a
    move-result v1

    #@1b
    iput v1, v0, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->type:I

    #@1d
    .line 3358
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@20
    move-result-object v1

    #@21
    iput-object v1, v0, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->number:Ljava/lang/String;

    #@23
    .line 3360
    return-object v0
.end method

.method static responseToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "request"    # I

    #@0
    .prologue
    .line 4204
    packed-switch p0, :pswitch_data_0

    #@3
    .line 4254
    :pswitch_0
    const-string/jumbo v0, "<unknown response>"

    #@6
    return-object v0

    #@7
    .line 4205
    :pswitch_1
    const-string/jumbo v0, "UNSOL_RESPONSE_RADIO_STATE_CHANGED"

    #@a
    return-object v0

    #@b
    .line 4206
    :pswitch_2
    const-string/jumbo v0, "UNSOL_RESPONSE_CALL_STATE_CHANGED"

    #@e
    return-object v0

    #@f
    .line 4207
    :pswitch_3
    const-string/jumbo v0, "UNSOL_RESPONSE_VOICE_NETWORK_STATE_CHANGED"

    #@12
    return-object v0

    #@13
    .line 4208
    :pswitch_4
    const-string/jumbo v0, "UNSOL_RESPONSE_NEW_SMS"

    #@16
    return-object v0

    #@17
    .line 4209
    :pswitch_5
    const-string/jumbo v0, "UNSOL_RESPONSE_NEW_SMS_STATUS_REPORT"

    #@1a
    return-object v0

    #@1b
    .line 4210
    :pswitch_6
    const-string/jumbo v0, "UNSOL_RESPONSE_NEW_SMS_ON_SIM"

    #@1e
    return-object v0

    #@1f
    .line 4211
    :pswitch_7
    const-string/jumbo v0, "UNSOL_ON_USSD"

    #@22
    return-object v0

    #@23
    .line 4212
    :pswitch_8
    const-string/jumbo v0, "UNSOL_ON_USSD_REQUEST"

    #@26
    return-object v0

    #@27
    .line 4213
    :pswitch_9
    const-string/jumbo v0, "UNSOL_NITZ_TIME_RECEIVED"

    #@2a
    return-object v0

    #@2b
    .line 4214
    :pswitch_a
    const-string/jumbo v0, "UNSOL_SIGNAL_STRENGTH"

    #@2e
    return-object v0

    #@2f
    .line 4215
    :pswitch_b
    const-string/jumbo v0, "UNSOL_DATA_CALL_LIST_CHANGED"

    #@32
    return-object v0

    #@33
    .line 4216
    :pswitch_c
    const-string/jumbo v0, "UNSOL_SUPP_SVC_NOTIFICATION"

    #@36
    return-object v0

    #@37
    .line 4217
    :pswitch_d
    const-string/jumbo v0, "UNSOL_STK_SESSION_END"

    #@3a
    return-object v0

    #@3b
    .line 4218
    :pswitch_e
    const-string/jumbo v0, "UNSOL_STK_PROACTIVE_COMMAND"

    #@3e
    return-object v0

    #@3f
    .line 4219
    :pswitch_f
    const-string/jumbo v0, "UNSOL_STK_EVENT_NOTIFY"

    #@42
    return-object v0

    #@43
    .line 4220
    :pswitch_10
    const-string/jumbo v0, "UNSOL_STK_CALL_SETUP"

    #@46
    return-object v0

    #@47
    .line 4221
    :pswitch_11
    const-string/jumbo v0, "UNSOL_SIM_SMS_STORAGE_FULL"

    #@4a
    return-object v0

    #@4b
    .line 4222
    :pswitch_12
    const-string/jumbo v0, "UNSOL_SIM_REFRESH"

    #@4e
    return-object v0

    #@4f
    .line 4223
    :pswitch_13
    const-string/jumbo v0, "UNSOL_CALL_RING"

    #@52
    return-object v0

    #@53
    .line 4224
    :pswitch_14
    const-string/jumbo v0, "UNSOL_RESPONSE_SIM_STATUS_CHANGED"

    #@56
    return-object v0

    #@57
    .line 4225
    :pswitch_15
    const-string/jumbo v0, "UNSOL_RESPONSE_CDMA_NEW_SMS"

    #@5a
    return-object v0

    #@5b
    .line 4226
    :pswitch_16
    const-string/jumbo v0, "UNSOL_RESPONSE_NEW_BROADCAST_SMS"

    #@5e
    return-object v0

    #@5f
    .line 4227
    :pswitch_17
    const-string/jumbo v0, "UNSOL_CDMA_RUIM_SMS_STORAGE_FULL"

    #@62
    return-object v0

    #@63
    .line 4228
    :pswitch_18
    const-string/jumbo v0, "UNSOL_RESTRICTED_STATE_CHANGED"

    #@66
    return-object v0

    #@67
    .line 4229
    :pswitch_19
    const-string/jumbo v0, "UNSOL_ENTER_EMERGENCY_CALLBACK_MODE"

    #@6a
    return-object v0

    #@6b
    .line 4230
    :pswitch_1a
    const-string/jumbo v0, "UNSOL_CDMA_CALL_WAITING"

    #@6e
    return-object v0

    #@6f
    .line 4231
    :pswitch_1b
    const-string/jumbo v0, "UNSOL_CDMA_OTA_PROVISION_STATUS"

    #@72
    return-object v0

    #@73
    .line 4232
    :pswitch_1c
    const-string/jumbo v0, "UNSOL_CDMA_INFO_REC"

    #@76
    return-object v0

    #@77
    .line 4233
    :pswitch_1d
    const-string/jumbo v0, "UNSOL_OEM_HOOK_RAW"

    #@7a
    return-object v0

    #@7b
    .line 4234
    :pswitch_1e
    const-string/jumbo v0, "UNSOL_RINGBACK_TONE"

    #@7e
    return-object v0

    #@7f
    .line 4235
    :pswitch_1f
    const-string/jumbo v0, "UNSOL_RESEND_INCALL_MUTE"

    #@82
    return-object v0

    #@83
    .line 4236
    :pswitch_20
    const-string/jumbo v0, "CDMA_SUBSCRIPTION_SOURCE_CHANGED"

    #@86
    return-object v0

    #@87
    .line 4237
    :pswitch_21
    const-string/jumbo v0, "UNSOL_CDMA_PRL_CHANGED"

    #@8a
    return-object v0

    #@8b
    .line 4238
    :pswitch_22
    const-string/jumbo v0, "UNSOL_EXIT_EMERGENCY_CALLBACK_MODE"

    #@8e
    return-object v0

    #@8f
    .line 4239
    :pswitch_23
    const-string/jumbo v0, "UNSOL_RIL_CONNECTED"

    #@92
    return-object v0

    #@93
    .line 4240
    :pswitch_24
    const-string/jumbo v0, "UNSOL_VOICE_RADIO_TECH_CHANGED"

    #@96
    return-object v0

    #@97
    .line 4241
    :pswitch_25
    const-string/jumbo v0, "UNSOL_CELL_INFO_LIST"

    #@9a
    return-object v0

    #@9b
    .line 4243
    :pswitch_26
    const-string/jumbo v0, "UNSOL_RESPONSE_IMS_NETWORK_STATE_CHANGED"

    #@9e
    return-object v0

    #@9f
    .line 4245
    :pswitch_27
    const-string/jumbo v0, "RIL_UNSOL_UICC_SUBSCRIPTION_STATUS_CHANGED"

    #@a2
    return-object v0

    #@a3
    .line 4247
    :pswitch_28
    const-string/jumbo v0, "UNSOL_SRVCC_STATE_NOTIFY"

    #@a6
    return-object v0

    #@a7
    .line 4248
    :pswitch_29
    const-string/jumbo v0, "RIL_UNSOL_HARDWARE_CONFIG_CHANGED"

    #@aa
    return-object v0

    #@ab
    .line 4250
    :pswitch_2a
    const-string/jumbo v0, "RIL_UNSOL_RADIO_CAPABILITY"

    #@ae
    return-object v0

    #@af
    .line 4251
    :pswitch_2b
    const-string/jumbo v0, "UNSOL_ON_SS"

    #@b2
    return-object v0

    #@b3
    .line 4252
    :pswitch_2c
    const-string/jumbo v0, "UNSOL_STK_CC_ALPHA_NOTIFY"

    #@b6
    return-object v0

    #@b7
    .line 4253
    :pswitch_2d
    const-string/jumbo v0, "UNSOL_LCE_INFO_RECV"

    #@ba
    return-object v0

    #@bb
    .line 4204
    nop

    #@bc
    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_22
        :pswitch_23
        :pswitch_24
        :pswitch_25
        :pswitch_26
        :pswitch_27
        :pswitch_28
        :pswitch_29
        :pswitch_0
        :pswitch_2a
        :pswitch_2b
        :pswitch_2c
        :pswitch_2d
    .end packed-switch
.end method

.method private responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "p"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 3324
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method static retToString(ILjava/lang/Object;)Ljava/lang/String;
    .locals 21
    .param p0, "req"    # I
    .param p1, "ret"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 2710
    if-nez p1, :cond_0

    #@2
    const-string/jumbo v19, ""

    #@5
    return-object v19

    #@6
    .line 2711
    :cond_0
    sparse-switch p0, :sswitch_data_0

    #@9
    .line 2728
    move-object/from16 v0, p1

    #@b
    instance-of v0, v0, [I

    #@d
    move/from16 v19, v0

    #@f
    if-eqz v19, :cond_2

    #@11
    move-object/from16 v14, p1

    #@13
    .line 2729
    check-cast v14, [I

    #@15
    .line 2730
    .local v14, "intArray":[I
    array-length v15, v14

    #@16
    .line 2731
    .local v15, "length":I
    new-instance v17, Ljava/lang/StringBuilder;

    #@18
    const-string/jumbo v19, "{"

    #@1b
    move-object/from16 v0, v17

    #@1d
    move-object/from16 v1, v19

    #@1f
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@22
    .line 2732
    .local v17, "sb":Ljava/lang/StringBuilder;
    if-lez v15, :cond_1

    #@24
    .line 2733
    const/16 v19, 0x0

    #@26
    .line 2734
    const/4 v12, 0x1

    #@27
    .local v12, "i":I
    aget v19, v14, v19

    #@29
    move-object/from16 v0, v17

    #@2b
    move/from16 v1, v19

    #@2d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@30
    move v13, v12

    #@31
    .line 2735
    .end local v12    # "i":I
    .local v13, "i":I
    :goto_0
    if-ge v13, v15, :cond_1

    #@33
    .line 2736
    const-string/jumbo v19, ", "

    #@36
    move-object/from16 v0, v17

    #@38
    move-object/from16 v1, v19

    #@3a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v19

    #@3e
    add-int/lit8 v12, v13, 0x1

    #@40
    .end local v13    # "i":I
    .restart local v12    # "i":I
    aget v20, v14, v13

    #@42
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@45
    move v13, v12

    #@46
    .end local v12    # "i":I
    .restart local v13    # "i":I
    goto :goto_0

    #@47
    .line 2721
    .end local v13    # "i":I
    .end local v14    # "intArray":[I
    .end local v15    # "length":I
    .end local v17    # "sb":Ljava/lang/StringBuilder;
    :sswitch_0
    const-string/jumbo v19, ""

    #@4a
    return-object v19

    #@4b
    .line 2739
    .restart local v14    # "intArray":[I
    .restart local v15    # "length":I
    .restart local v17    # "sb":Ljava/lang/StringBuilder;
    :cond_1
    const-string/jumbo v19, "}"

    #@4e
    move-object/from16 v0, v17

    #@50
    move-object/from16 v1, v19

    #@52
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@55
    .line 2740
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@58
    move-result-object v16

    #@59
    .line 2789
    .end local v14    # "intArray":[I
    .end local v15    # "length":I
    .end local v17    # "sb":Ljava/lang/StringBuilder;
    .local v16, "s":Ljava/lang/String;
    :goto_1
    return-object v16

    #@5a
    .line 2741
    .end local v16    # "s":Ljava/lang/String;
    :cond_2
    move-object/from16 v0, p1

    #@5c
    instance-of v0, v0, [Ljava/lang/String;

    #@5e
    move/from16 v19, v0

    #@60
    if-eqz v19, :cond_4

    #@62
    move-object/from16 v18, p1

    #@64
    .line 2742
    check-cast v18, [Ljava/lang/String;

    #@66
    .line 2743
    .local v18, "strings":[Ljava/lang/String;
    move-object/from16 v0, v18

    #@68
    array-length v15, v0

    #@69
    .line 2744
    .restart local v15    # "length":I
    new-instance v17, Ljava/lang/StringBuilder;

    #@6b
    const-string/jumbo v19, "{"

    #@6e
    move-object/from16 v0, v17

    #@70
    move-object/from16 v1, v19

    #@72
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@75
    .line 2745
    .restart local v17    # "sb":Ljava/lang/StringBuilder;
    if-lez v15, :cond_3

    #@77
    .line 2746
    const/16 v19, 0x0

    #@79
    .line 2747
    const/4 v12, 0x1

    #@7a
    .restart local v12    # "i":I
    aget-object v19, v18, v19

    #@7c
    move-object/from16 v0, v17

    #@7e
    move-object/from16 v1, v19

    #@80
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@83
    move v13, v12

    #@84
    .line 2748
    .end local v12    # "i":I
    .restart local v13    # "i":I
    :goto_2
    if-ge v13, v15, :cond_3

    #@86
    .line 2749
    const-string/jumbo v19, ", "

    #@89
    move-object/from16 v0, v17

    #@8b
    move-object/from16 v1, v19

    #@8d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@90
    move-result-object v19

    #@91
    add-int/lit8 v12, v13, 0x1

    #@93
    .end local v13    # "i":I
    .restart local v12    # "i":I
    aget-object v20, v18, v13

    #@95
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@98
    move v13, v12

    #@99
    .end local v12    # "i":I
    .restart local v13    # "i":I
    goto :goto_2

    #@9a
    .line 2752
    .end local v13    # "i":I
    :cond_3
    const-string/jumbo v19, "}"

    #@9d
    move-object/from16 v0, v17

    #@9f
    move-object/from16 v1, v19

    #@a1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a4
    .line 2753
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a7
    move-result-object v16

    #@a8
    .restart local v16    # "s":Ljava/lang/String;
    goto :goto_1

    #@a9
    .line 2754
    .end local v15    # "length":I
    .end local v16    # "s":Ljava/lang/String;
    .end local v17    # "sb":Ljava/lang/StringBuilder;
    .end local v18    # "strings":[Ljava/lang/String;
    :cond_4
    const/16 v19, 0x9

    #@ab
    move/from16 v0, p0

    #@ad
    move/from16 v1, v19

    #@af
    if-ne v0, v1, :cond_6

    #@b1
    move-object/from16 v2, p1

    #@b3
    .line 2755
    check-cast v2, Ljava/util/ArrayList;

    #@b5
    .line 2756
    .local v2, "calls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/DriverCall;>;"
    new-instance v17, Ljava/lang/StringBuilder;

    #@b7
    const-string/jumbo v19, "{"

    #@ba
    move-object/from16 v0, v17

    #@bc
    move-object/from16 v1, v19

    #@be
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@c1
    .line 2757
    .restart local v17    # "sb":Ljava/lang/StringBuilder;
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@c4
    move-result-object v8

    #@c5
    .local v8, "dc$iterator":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    #@c8
    move-result v19

    #@c9
    if-eqz v19, :cond_5

    #@cb
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@ce
    move-result-object v7

    #@cf
    check-cast v7, Lcom/android/internal/telephony/DriverCall;

    #@d1
    .line 2758
    .local v7, "dc":Lcom/android/internal/telephony/DriverCall;
    const-string/jumbo v19, "["

    #@d4
    move-object/from16 v0, v17

    #@d6
    move-object/from16 v1, v19

    #@d8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@db
    move-result-object v19

    #@dc
    move-object/from16 v0, v19

    #@de
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@e1
    move-result-object v19

    #@e2
    const-string/jumbo v20, "] "

    #@e5
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e8
    goto :goto_3

    #@e9
    .line 2760
    .end local v7    # "dc":Lcom/android/internal/telephony/DriverCall;
    :cond_5
    const-string/jumbo v19, "}"

    #@ec
    move-object/from16 v0, v17

    #@ee
    move-object/from16 v1, v19

    #@f0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f3
    .line 2761
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@f6
    move-result-object v16

    #@f7
    .restart local v16    # "s":Ljava/lang/String;
    goto/16 :goto_1

    #@f9
    .line 2762
    .end local v2    # "calls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/DriverCall;>;"
    .end local v8    # "dc$iterator":Ljava/util/Iterator;
    .end local v16    # "s":Ljava/lang/String;
    .end local v17    # "sb":Ljava/lang/StringBuilder;
    :cond_6
    const/16 v19, 0x4b

    #@fb
    move/from16 v0, p0

    #@fd
    move/from16 v1, v19

    #@ff
    if-ne v0, v1, :cond_8

    #@101
    move-object/from16 v5, p1

    #@103
    .line 2763
    check-cast v5, Ljava/util/ArrayList;

    #@105
    .line 2764
    .local v5, "cells":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/NeighboringCellInfo;>;"
    new-instance v17, Ljava/lang/StringBuilder;

    #@107
    const-string/jumbo v19, "{"

    #@10a
    move-object/from16 v0, v17

    #@10c
    move-object/from16 v1, v19

    #@10e
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@111
    .line 2765
    .restart local v17    # "sb":Ljava/lang/StringBuilder;
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@114
    move-result-object v4

    #@115
    .local v4, "cell$iterator":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    #@118
    move-result v19

    #@119
    if-eqz v19, :cond_7

    #@11b
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@11e
    move-result-object v3

    #@11f
    check-cast v3, Landroid/telephony/NeighboringCellInfo;

    #@121
    .line 2766
    .local v3, "cell":Landroid/telephony/NeighboringCellInfo;
    const-string/jumbo v19, "["

    #@124
    move-object/from16 v0, v17

    #@126
    move-object/from16 v1, v19

    #@128
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12b
    move-result-object v19

    #@12c
    move-object/from16 v0, v19

    #@12e
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@131
    move-result-object v19

    #@132
    const-string/jumbo v20, "] "

    #@135
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@138
    goto :goto_4

    #@139
    .line 2768
    .end local v3    # "cell":Landroid/telephony/NeighboringCellInfo;
    :cond_7
    const-string/jumbo v19, "}"

    #@13c
    move-object/from16 v0, v17

    #@13e
    move-object/from16 v1, v19

    #@140
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@143
    .line 2769
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@146
    move-result-object v16

    #@147
    .restart local v16    # "s":Ljava/lang/String;
    goto/16 :goto_1

    #@149
    .line 2770
    .end local v4    # "cell$iterator":Ljava/util/Iterator;
    .end local v5    # "cells":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/NeighboringCellInfo;>;"
    .end local v16    # "s":Ljava/lang/String;
    .end local v17    # "sb":Ljava/lang/StringBuilder;
    :cond_8
    const/16 v19, 0x21

    #@14b
    move/from16 v0, p0

    #@14d
    move/from16 v1, v19

    #@14f
    if-ne v0, v1, :cond_a

    #@151
    move-object/from16 v6, p1

    #@153
    .line 2771
    check-cast v6, [Lcom/android/internal/telephony/CallForwardInfo;

    #@155
    .line 2772
    .local v6, "cinfo":[Lcom/android/internal/telephony/CallForwardInfo;
    array-length v15, v6

    #@156
    .line 2773
    .restart local v15    # "length":I
    new-instance v17, Ljava/lang/StringBuilder;

    #@158
    const-string/jumbo v19, "{"

    #@15b
    move-object/from16 v0, v17

    #@15d
    move-object/from16 v1, v19

    #@15f
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@162
    .line 2774
    .restart local v17    # "sb":Ljava/lang/StringBuilder;
    const/4 v12, 0x0

    #@163
    .restart local v12    # "i":I
    :goto_5
    if-ge v12, v15, :cond_9

    #@165
    .line 2775
    const-string/jumbo v19, "["

    #@168
    move-object/from16 v0, v17

    #@16a
    move-object/from16 v1, v19

    #@16c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16f
    move-result-object v19

    #@170
    aget-object v20, v6, v12

    #@172
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@175
    move-result-object v19

    #@176
    const-string/jumbo v20, "] "

    #@179
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17c
    .line 2774
    add-int/lit8 v12, v12, 0x1

    #@17e
    goto :goto_5

    #@17f
    .line 2777
    :cond_9
    const-string/jumbo v19, "}"

    #@182
    move-object/from16 v0, v17

    #@184
    move-object/from16 v1, v19

    #@186
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@189
    .line 2778
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@18c
    move-result-object v16

    #@18d
    .restart local v16    # "s":Ljava/lang/String;
    goto/16 :goto_1

    #@18f
    .line 2779
    .end local v6    # "cinfo":[Lcom/android/internal/telephony/CallForwardInfo;
    .end local v12    # "i":I
    .end local v15    # "length":I
    .end local v16    # "s":Ljava/lang/String;
    .end local v17    # "sb":Ljava/lang/StringBuilder;
    :cond_a
    const/16 v19, 0x7c

    #@191
    move/from16 v0, p0

    #@193
    move/from16 v1, v19

    #@195
    if-ne v0, v1, :cond_c

    #@197
    move-object/from16 v11, p1

    #@199
    .line 2780
    check-cast v11, Ljava/util/ArrayList;

    #@19b
    .line 2781
    .local v11, "hwcfgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/HardwareConfig;>;"
    new-instance v17, Ljava/lang/StringBuilder;

    #@19d
    const-string/jumbo v19, " "

    #@1a0
    move-object/from16 v0, v17

    #@1a2
    move-object/from16 v1, v19

    #@1a4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@1a7
    .line 2782
    .restart local v17    # "sb":Ljava/lang/StringBuilder;
    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@1aa
    move-result-object v10

    #@1ab
    .local v10, "hwcfg$iterator":Ljava/util/Iterator;
    :goto_6
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    #@1ae
    move-result v19

    #@1af
    if-eqz v19, :cond_b

    #@1b1
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1b4
    move-result-object v9

    #@1b5
    check-cast v9, Lcom/android/internal/telephony/HardwareConfig;

    #@1b7
    .line 2783
    .local v9, "hwcfg":Lcom/android/internal/telephony/HardwareConfig;
    const-string/jumbo v19, "["

    #@1ba
    move-object/from16 v0, v17

    #@1bc
    move-object/from16 v1, v19

    #@1be
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c1
    move-result-object v19

    #@1c2
    move-object/from16 v0, v19

    #@1c4
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1c7
    move-result-object v19

    #@1c8
    const-string/jumbo v20, "] "

    #@1cb
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1ce
    goto :goto_6

    #@1cf
    .line 2785
    .end local v9    # "hwcfg":Lcom/android/internal/telephony/HardwareConfig;
    :cond_b
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d2
    move-result-object v16

    #@1d3
    .restart local v16    # "s":Ljava/lang/String;
    goto/16 :goto_1

    #@1d5
    .line 2787
    .end local v10    # "hwcfg$iterator":Ljava/util/Iterator;
    .end local v11    # "hwcfgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/HardwareConfig;>;"
    .end local v16    # "s":Ljava/lang/String;
    .end local v17    # "sb":Ljava/lang/StringBuilder;
    :cond_c
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@1d8
    move-result-object v16

    #@1d9
    .restart local v16    # "s":Ljava/lang/String;
    goto/16 :goto_1

    #@1db
    .line 2711
    nop

    #@1dc
    :sswitch_data_0
    .sparse-switch
        0xb -> :sswitch_0
        0x26 -> :sswitch_0
        0x27 -> :sswitch_0
        0x73 -> :sswitch_0
        0x75 -> :sswitch_0
    .end sparse-switch
.end method

.method private riljLog(Ljava/lang/String;)V
    .locals 4
    .param p1, "msg"    # Ljava/lang/String;

    #@0
    .prologue
    .line 4259
    const-string/jumbo v1, "RILJ"

    #@3
    new-instance v0, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v2

    #@c
    .line 4260
    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mInstanceId:Ljava/lang/Integer;

    #@e
    if-eqz v0, :cond_0

    #@10
    new-instance v0, Ljava/lang/StringBuilder;

    #@12
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@15
    const-string/jumbo v3, " [SUB"

    #@18
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v0

    #@1c
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mInstanceId:Ljava/lang/Integer;

    #@1e
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v0

    #@22
    const-string/jumbo v3, "]"

    #@25
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v0

    #@29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2c
    move-result-object v0

    #@2d
    .line 4259
    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v0

    #@31
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@34
    move-result-object v0

    #@35
    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@38
    .line 4258
    return-void

    #@39
    .line 4260
    :cond_0
    const-string/jumbo v0, ""

    #@3c
    goto :goto_0
.end method

.method private riljLogv(Ljava/lang/String;)V
    .locals 4
    .param p1, "msg"    # Ljava/lang/String;

    #@0
    .prologue
    .line 4264
    const-string/jumbo v1, "RILJ"

    #@3
    new-instance v0, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v2

    #@c
    .line 4265
    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mInstanceId:Ljava/lang/Integer;

    #@e
    if-eqz v0, :cond_0

    #@10
    new-instance v0, Ljava/lang/StringBuilder;

    #@12
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@15
    const-string/jumbo v3, " [SUB"

    #@18
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v0

    #@1c
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mInstanceId:Ljava/lang/Integer;

    #@1e
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v0

    #@22
    const-string/jumbo v3, "]"

    #@25
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v0

    #@29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2c
    move-result-object v0

    #@2d
    .line 4264
    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v0

    #@31
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@34
    move-result-object v0

    #@35
    invoke-static {v1, v0}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@38
    .line 4263
    return-void

    #@39
    .line 4265
    :cond_0
    const-string/jumbo v0, ""

    #@3c
    goto :goto_0
.end method

.method private send(Lcom/android/internal/telephony/RILRequest;)V
    .locals 4
    .param p1, "rr"    # Lcom/android/internal/telephony/RILRequest;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    const/4 v2, 0x1

    #@2
    .line 2360
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mSocket:Landroid/net/LocalSocket;

    #@4
    if-nez v1, :cond_0

    #@6
    .line 2361
    invoke-virtual {p1, v2, v3}, Lcom/android/internal/telephony/RILRequest;->onError(ILjava/lang/Object;)V

    #@9
    .line 2362
    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->release()V

    #@c
    .line 2363
    return-void

    #@d
    .line 2366
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mSender:Lcom/android/internal/telephony/RIL$RILSender;

    #@f
    invoke-virtual {v1, v2, p1}, Lcom/android/internal/telephony/RIL$RILSender;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@12
    move-result-object v0

    #@13
    .line 2368
    .local v0, "msg":Landroid/os/Message;
    invoke-direct {p0}, Lcom/android/internal/telephony/RIL;->acquireWakeLock()V

    #@16
    .line 2370
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    #@19
    .line 2357
    return-void
.end method

.method private sendScreenState(Z)V
    .locals 4
    .param p1, "on"    # Z

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 2271
    const/16 v2, 0x3d

    #@3
    const/4 v3, 0x0

    #@4
    invoke-static {v2, v3}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    #@7
    move-result-object v0

    #@8
    .line 2272
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    iget-object v2, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@a
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@d
    .line 2273
    iget-object v2, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@f
    if-eqz p1, :cond_0

    #@11
    :goto_0
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 2275
    new-instance v1, Ljava/lang/StringBuilder;

    #@16
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@19
    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    #@1c
    move-result-object v2

    #@1d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v1

    #@21
    .line 2276
    const-string/jumbo v2, "> "

    #@24
    .line 2275
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v1

    #@28
    .line 2276
    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    #@2a
    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    #@2d
    move-result-object v2

    #@2e
    .line 2275
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v1

    #@32
    .line 2276
    const-string/jumbo v2, ": "

    #@35
    .line 2275
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v1

    #@39
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v1

    #@3d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@40
    move-result-object v1

    #@41
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    #@44
    .line 2278
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    #@47
    .line 2270
    return-void

    #@48
    .line 2273
    :cond_0
    const/4 v1, 0x0

    #@49
    goto :goto_0
.end method

.method private switchToRadioState(Lcom/android/internal/telephony/CommandsInterface$RadioState;)V
    .locals 0
    .param p1, "newState"    # Lcom/android/internal/telephony/CommandsInterface$RadioState;

    #@0
    .prologue
    .line 2306
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->setRadioState(Lcom/android/internal/telephony/CommandsInterface$RadioState;)V

    #@3
    .line 2305
    return-void
.end method

.method private translateStatus(I)I
    .locals 2
    .param p1, "status"    # I

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 1489
    and-int/lit8 v0, p1, 0x7

    #@3
    packed-switch v0, :pswitch_data_0

    #@6
    .line 1501
    :pswitch_0
    return v1

    #@7
    .line 1491
    :pswitch_1
    return v1

    #@8
    .line 1493
    :pswitch_2
    const/4 v0, 0x0

    #@9
    return v0

    #@a
    .line 1495
    :pswitch_3
    const/4 v0, 0x3

    #@b
    return v0

    #@c
    .line 1497
    :pswitch_4
    const/4 v0, 0x2

    #@d
    return v0

    #@e
    .line 1489
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private unsljLog(I)V
    .locals 2
    .param p1, "response"    # I

    #@0
    .prologue
    .line 4269
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "[UNSL]< "

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    invoke-static {p1}, Lcom/android/internal/telephony/RIL;->responseToString(I)Ljava/lang/String;

    #@f
    move-result-object v1

    #@10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v0

    #@14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@17
    move-result-object v0

    #@18
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    #@1b
    .line 4268
    return-void
.end method

.method private unsljLogMore(ILjava/lang/String;)V
    .locals 2
    .param p1, "response"    # I
    .param p2, "more"    # Ljava/lang/String;

    #@0
    .prologue
    .line 4273
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "[UNSL]< "

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    invoke-static {p1}, Lcom/android/internal/telephony/RIL;->responseToString(I)Ljava/lang/String;

    #@f
    move-result-object v1

    #@10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v0

    #@14
    const-string/jumbo v1, " "

    #@17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v0

    #@1b
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object v0

    #@23
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    #@26
    .line 4272
    return-void
.end method

.method private unsljLogRet(ILjava/lang/Object;)V
    .locals 2
    .param p1, "response"    # I
    .param p2, "ret"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 4277
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "[UNSL]< "

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    invoke-static {p1}, Lcom/android/internal/telephony/RIL;->responseToString(I)Ljava/lang/String;

    #@f
    move-result-object v1

    #@10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v0

    #@14
    const-string/jumbo v1, " "

    #@17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v0

    #@1b
    invoke-static {p1, p2}, Lcom/android/internal/telephony/RIL;->retToString(ILjava/lang/Object;)Ljava/lang/String;

    #@1e
    move-result-object v1

    #@1f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v0

    #@23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26
    move-result-object v0

    #@27
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    #@2a
    .line 4276
    return-void
.end method

.method private unsljLogvRet(ILjava/lang/Object;)V
    .locals 2
    .param p1, "response"    # I
    .param p2, "ret"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 4281
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "[UNSL]< "

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    invoke-static {p1}, Lcom/android/internal/telephony/RIL;->responseToString(I)Ljava/lang/String;

    #@f
    move-result-object v1

    #@10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v0

    #@14
    const-string/jumbo v1, " "

    #@17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v0

    #@1b
    invoke-static {p1, p2}, Lcom/android/internal/telephony/RIL;->retToString(ILjava/lang/Object;)Ljava/lang/String;

    #@1e
    move-result-object v1

    #@1f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v0

    #@23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26
    move-result-object v0

    #@27
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->riljLogv(Ljava/lang/String;)V

    #@2a
    .line 4280
    return-void
.end method

.method private updateScreenState()V
    .locals 5

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v3, 0x1

    #@2
    .line 2258
    iget v0, p0, Lcom/android/internal/telephony/RIL;->mRadioScreenState:I

    #@4
    .line 2259
    .local v0, "oldState":I
    iget v1, p0, Lcom/android/internal/telephony/RIL;->mDefaultDisplayState:I

    #@6
    const/4 v4, 0x2

    #@7
    if-eq v1, v4, :cond_0

    #@9
    iget-boolean v1, p0, Lcom/android/internal/telephony/RIL;->mIsDevicePlugged:Z

    #@b
    if-eqz v1, :cond_2

    #@d
    :cond_0
    move v1, v3

    #@e
    :goto_0
    iput v1, p0, Lcom/android/internal/telephony/RIL;->mRadioScreenState:I

    #@10
    .line 2261
    iget v1, p0, Lcom/android/internal/telephony/RIL;->mRadioScreenState:I

    #@12
    if-eq v1, v0, :cond_1

    #@14
    .line 2266
    iget v1, p0, Lcom/android/internal/telephony/RIL;->mRadioScreenState:I

    #@16
    if-ne v1, v3, :cond_3

    #@18
    :goto_1
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/RIL;->sendScreenState(Z)V

    #@1b
    .line 2257
    :cond_1
    return-void

    #@1c
    :cond_2
    move v1, v2

    #@1d
    .line 2260
    goto :goto_0

    #@1e
    :cond_3
    move v3, v2

    #@1f
    .line 2266
    goto :goto_1
.end method


# virtual methods
.method public acceptCall(Landroid/os/Message;)V
    .locals 3
    .param p1, "result"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1107
    const/16 v1, 0x28

    #@2
    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    #@5
    move-result-object v0

    #@6
    .line 1109
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    #@e
    move-result-object v2

    #@f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    const-string/jumbo v2, "> "

    #@16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    #@1c
    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    #@1f
    move-result-object v2

    #@20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v1

    #@24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@27
    move-result-object v1

    #@28
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    #@2b
    .line 1111
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    #@2e
    .line 1105
    return-void
.end method

.method public acknowledgeIncomingGsmSmsWithPdu(ZLjava/lang/String;Landroid/os/Message;)V
    .locals 3
    .param p1, "success"    # Z
    .param p2, "ackPdu"    # Ljava/lang/String;
    .param p3, "result"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1623
    const/16 v1, 0x6a

    #@2
    invoke-static {v1, p3}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    #@5
    move-result-object v0

    #@6
    .line 1625
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@8
    const/4 v2, 0x2

    #@9
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@c
    .line 1626
    iget-object v2, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@e
    if-eqz p1, :cond_0

    #@10
    const-string/jumbo v1, "1"

    #@13
    :goto_0
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@16
    .line 1627
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@18
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1b
    .line 1629
    new-instance v1, Ljava/lang/StringBuilder;

    #@1d
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@20
    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    #@23
    move-result-object v2

    #@24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v1

    #@28
    const-string/jumbo v2, "> "

    #@2b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v1

    #@2f
    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    #@31
    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    #@34
    move-result-object v2

    #@35
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v1

    #@39
    .line 1630
    const/16 v2, 0x20

    #@3b
    .line 1629
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v1

    #@3f
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@42
    move-result-object v1

    #@43
    .line 1630
    const-string/jumbo v2, " ["

    #@46
    .line 1629
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@49
    move-result-object v1

    #@4a
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v1

    #@4e
    .line 1630
    const/16 v2, 0x5d

    #@50
    .line 1629
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@53
    move-result-object v1

    #@54
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@57
    move-result-object v1

    #@58
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    #@5b
    .line 1632
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    #@5e
    .line 1621
    return-void

    #@5f
    .line 1626
    :cond_0
    const-string/jumbo v1, "0"

    #@62
    goto :goto_0
.end method

.method public acknowledgeLastIncomingCdmaSms(ZILandroid/os/Message;)V
    .locals 3
    .param p1, "success"    # Z
    .param p2, "cause"    # I
    .param p3, "result"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1607
    const/16 v1, 0x58

    #@2
    invoke-static {v1, p3}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    #@5
    move-result-object v0

    #@6
    .line 1609
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    iget-object v2, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@8
    if-eqz p1, :cond_0

    #@a
    const/4 v1, 0x0

    #@b
    :goto_0
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@e
    .line 1611
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@10
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@13
    .line 1613
    new-instance v1, Ljava/lang/StringBuilder;

    #@15
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@18
    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    #@1b
    move-result-object v2

    #@1c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v1

    #@20
    const-string/jumbo v2, "> "

    #@23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v1

    #@27
    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    #@29
    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    #@2c
    move-result-object v2

    #@2d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v1

    #@31
    .line 1614
    const-string/jumbo v2, " "

    #@34
    .line 1613
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v1

    #@38
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v1

    #@3c
    .line 1614
    const-string/jumbo v2, " "

    #@3f
    .line 1613
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v1

    #@43
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@46
    move-result-object v1

    #@47
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4a
    move-result-object v1

    #@4b
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    #@4e
    .line 1616
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    #@51
    .line 1605
    return-void

    #@52
    .line 1609
    :cond_0
    const/4 v1, 0x1

    #@53
    goto :goto_0
.end method

.method public acknowledgeLastIncomingGsmSms(ZILandroid/os/Message;)V
    .locals 3
    .param p1, "success"    # Z
    .param p2, "cause"    # I
    .param p3, "result"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1591
    const/16 v1, 0x25

    #@2
    invoke-static {v1, p3}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    #@5
    move-result-object v0

    #@6
    .line 1593
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@8
    const/4 v2, 0x2

    #@9
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@c
    .line 1594
    iget-object v2, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@e
    if-eqz p1, :cond_0

    #@10
    const/4 v1, 0x1

    #@11
    :goto_0
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 1595
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@16
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@19
    .line 1597
    new-instance v1, Ljava/lang/StringBuilder;

    #@1b
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1e
    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    #@21
    move-result-object v2

    #@22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v1

    #@26
    const-string/jumbo v2, "> "

    #@29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v1

    #@2d
    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    #@2f
    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    #@32
    move-result-object v2

    #@33
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v1

    #@37
    .line 1598
    const-string/jumbo v2, " "

    #@3a
    .line 1597
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v1

    #@3e
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@41
    move-result-object v1

    #@42
    .line 1598
    const-string/jumbo v2, " "

    #@45
    .line 1597
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v1

    #@49
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v1

    #@4d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@50
    move-result-object v1

    #@51
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    #@54
    .line 1600
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    #@57
    .line 1589
    return-void

    #@58
    .line 1594
    :cond_0
    const/4 v1, 0x0

    #@59
    goto :goto_0
.end method

.method public cancelPendingUssd(Landroid/os/Message;)V
    .locals 3
    .param p1, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1929
    const/16 v1, 0x1e

    #@2
    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    #@5
    move-result-object v0

    #@6
    .line 1931
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    #@e
    move-result-object v2

    #@f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    .line 1932
    const-string/jumbo v2, "> "

    #@16
    .line 1931
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    .line 1932
    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    #@1c
    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    #@1f
    move-result-object v2

    #@20
    .line 1931
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v1

    #@24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@27
    move-result-object v1

    #@28
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    #@2b
    .line 1934
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    #@2e
    .line 1927
    return-void
.end method

.method public changeBarringPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .param p1, "facility"    # Ljava/lang/String;
    .param p2, "oldPwd"    # Ljava/lang/String;
    .param p3, "newPwd"    # Ljava/lang/String;
    .param p4, "result"    # Landroid/os/Message;

    #@0
    .prologue
    .line 886
    const/16 v1, 0x2c

    #@2
    invoke-static {v1, p4}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    #@5
    move-result-object v0

    #@6
    .line 888
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    #@e
    move-result-object v2

    #@f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    const-string/jumbo v2, "> "

    #@16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    #@1c
    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    #@1f
    move-result-object v2

    #@20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v1

    #@24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@27
    move-result-object v1

    #@28
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    #@2b
    .line 890
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@2d
    const/4 v2, 0x3

    #@2e
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@31
    .line 891
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@33
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@36
    .line 892
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@38
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@3b
    .line 893
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@3d
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@40
    .line 895
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    #@43
    .line 885
    return-void
.end method

.method public changeIccPin(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .param p1, "oldPin"    # Ljava/lang/String;
    .param p2, "newPin"    # Ljava/lang/String;
    .param p3, "result"    # Landroid/os/Message;

    #@0
    .prologue
    .line 843
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/internal/telephony/RIL;->changeIccPinForApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    #@4
    .line 842
    return-void
.end method

.method public changeIccPin2(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .param p1, "oldPin2"    # Ljava/lang/String;
    .param p2, "newPin2"    # Ljava/lang/String;
    .param p3, "result"    # Landroid/os/Message;

    #@0
    .prologue
    .line 864
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/internal/telephony/RIL;->changeIccPin2ForApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    #@4
    .line 863
    return-void
.end method

.method public changeIccPin2ForApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .param p1, "oldPin2"    # Ljava/lang/String;
    .param p2, "newPin2"    # Ljava/lang/String;
    .param p3, "aid"    # Ljava/lang/String;
    .param p4, "result"    # Landroid/os/Message;

    #@0
    .prologue
    .line 871
    const/4 v1, 0x7

    #@1
    invoke-static {v1, p4}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    #@4
    move-result-object v0

    #@5
    .line 873
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    #@7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@a
    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    #@d
    move-result-object v2

    #@e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v1

    #@12
    const-string/jumbo v2, "> "

    #@15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v1

    #@19
    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    #@1b
    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    #@1e
    move-result-object v2

    #@1f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v1

    #@23
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26
    move-result-object v1

    #@27
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    #@2a
    .line 875
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@2c
    const/4 v2, 0x3

    #@2d
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@30
    .line 876
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@32
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@35
    .line 877
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@37
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@3a
    .line 878
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@3c
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@3f
    .line 880
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    #@42
    .line 868
    return-void
.end method

.method public changeIccPinForApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .param p1, "oldPin"    # Ljava/lang/String;
    .param p2, "newPin"    # Ljava/lang/String;
    .param p3, "aid"    # Ljava/lang/String;
    .param p4, "result"    # Landroid/os/Message;

    #@0
    .prologue
    .line 850
    const/4 v1, 0x6

    #@1
    invoke-static {v1, p4}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    #@4
    move-result-object v0

    #@5
    .line 852
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    #@7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@a
    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    #@d
    move-result-object v2

    #@e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v1

    #@12
    const-string/jumbo v2, "> "

    #@15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v1

    #@19
    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    #@1b
    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    #@1e
    move-result-object v2

    #@1f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v1

    #@23
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26
    move-result-object v1

    #@27
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    #@2a
    .line 854
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@2c
    const/4 v2, 0x3

    #@2d
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@30
    .line 855
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@32
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@35
    .line 856
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@37
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@3a
    .line 857
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@3c
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@3f
    .line 859
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    #@42
    .line 847
    return-void
.end method

.method public conference(Landroid/os/Message;)V
    .locals 3
    .param p1, "result"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1062
    const/16 v1, 0x10

    #@2
    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    #@5
    move-result-object v0

    #@6
    .line 1064
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    #@e
    move-result-object v2

    #@f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    const-string/jumbo v2, "> "

    #@16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    #@1c
    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    #@1f
    move-result-object v2

    #@20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v1

    #@24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@27
    move-result-object v1

    #@28
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    #@2b
    .line 1066
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    #@2e
    .line 1060
    return-void
.end method

.method public deactivateDataCall(IILandroid/os/Message;)V
    .locals 3
    .param p1, "cid"    # I
    .param p2, "reason"    # I
    .param p3, "result"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1534
    const/16 v1, 0x29

    #@2
    invoke-static {v1, p3}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    #@5
    move-result-object v0

    #@6
    .line 1536
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@8
    const/4 v2, 0x2

    #@9
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@c
    .line 1537
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@e
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@11
    move-result-object v2

    #@12
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@15
    .line 1538
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@17
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@1a
    move-result-object v2

    #@1b
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1e
    .line 1540
    new-instance v1, Ljava/lang/StringBuilder;

    #@20
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@23
    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    #@26
    move-result-object v2

    #@27
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v1

    #@2b
    const-string/jumbo v2, "> "

    #@2e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v1

    #@32
    .line 1541
    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    #@34
    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    #@37
    move-result-object v2

    #@38
    .line 1540
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v1

    #@3c
    .line 1541
    const-string/jumbo v2, " "

    #@3f
    .line 1540
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v1

    #@43
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@46
    move-result-object v1

    #@47
    .line 1541
    const-string/jumbo v2, " "

    #@4a
    .line 1540
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v1

    #@4e
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@51
    move-result-object v1

    #@52
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@55
    move-result-object v1

    #@56
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    #@59
    .line 1543
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    #@5c
    .line 1532
    return-void
.end method

.method public deleteSmsOnRuim(ILandroid/os/Message;)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1436
    const/16 v1, 0x61

    #@2
    invoke-static {v1, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    #@5
    move-result-object v0

    #@6
    .line 1439
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@8
    const/4 v2, 0x1

    #@9
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@c
    .line 1440
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@e
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 1446
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    #@14
    .line 1435
    return-void
.end method

.method public deleteSmsOnSim(ILandroid/os/Message;)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1421
    const/16 v1, 0x40

    #@2
    invoke-static {v1, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    #@5
    move-result-object v0

    #@6
    .line 1424
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@8
    const/4 v2, 0x1

    #@9
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@c
    .line 1425
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@e
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 1431
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    #@14
    .line 1420
    return-void
.end method

.method public dial(Ljava/lang/String;ILandroid/os/Message;)V
    .locals 1
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "clirMode"    # I
    .param p3, "result"    # Landroid/os/Message;

    #@0
    .prologue
    .line 940
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/internal/telephony/RIL;->dial(Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;Landroid/os/Message;)V

    #@4
    .line 939
    return-void
.end method

.method public dial(Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;Landroid/os/Message;)V
    .locals 3
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "clirMode"    # I
    .param p3, "uusInfo"    # Lcom/android/internal/telephony/UUSInfo;
    .param p4, "result"    # Landroid/os/Message;

    #@0
    .prologue
    .line 946
    const/16 v1, 0xa

    #@2
    invoke-static {v1, p4}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    #@5
    move-result-object v0

    #@6
    .line 948
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@8
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@b
    .line 949
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@d
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@10
    .line 951
    if-nez p3, :cond_0

    #@12
    .line 952
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@14
    const/4 v2, 0x0

    #@15
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@18
    .line 960
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    #@1a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1d
    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    #@20
    move-result-object v2

    #@21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v1

    #@25
    const-string/jumbo v2, "> "

    #@28
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v1

    #@2c
    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    #@2e
    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    #@31
    move-result-object v2

    #@32
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v1

    #@36
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@39
    move-result-object v1

    #@3a
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    #@3d
    .line 962
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    #@40
    .line 945
    return-void

    #@41
    .line 954
    :cond_0
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@43
    const/4 v2, 0x1

    #@44
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@47
    .line 955
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@49
    invoke-virtual {p3}, Lcom/android/internal/telephony/UUSInfo;->getType()I

    #@4c
    move-result v2

    #@4d
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@50
    .line 956
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@52
    invoke-virtual {p3}, Lcom/android/internal/telephony/UUSInfo;->getDcs()I

    #@55
    move-result v2

    #@56
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@59
    .line 957
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@5b
    invoke-virtual {p3}, Lcom/android/internal/telephony/UUSInfo;->getUserData()[B

    #@5e
    move-result-object v2

    #@5f
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    #@62
    goto :goto_0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 7
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 4622
    new-instance v3, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v4, "RIL: "

    #@8
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v3

    #@c
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v3

    #@10
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13
    move-result-object v3

    #@14
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@17
    .line 4623
    new-instance v3, Ljava/lang/StringBuilder;

    #@19
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@1c
    const-string/jumbo v4, " mSocket="

    #@1f
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v3

    #@23
    iget-object v4, p0, Lcom/android/internal/telephony/RIL;->mSocket:Landroid/net/LocalSocket;

    #@25
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v3

    #@29
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2c
    move-result-object v3

    #@2d
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@30
    .line 4624
    new-instance v3, Ljava/lang/StringBuilder;

    #@32
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@35
    const-string/jumbo v4, " mSenderThread="

    #@38
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v3

    #@3c
    iget-object v4, p0, Lcom/android/internal/telephony/RIL;->mSenderThread:Landroid/os/HandlerThread;

    #@3e
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v3

    #@42
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@45
    move-result-object v3

    #@46
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@49
    .line 4625
    new-instance v3, Ljava/lang/StringBuilder;

    #@4b
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@4e
    const-string/jumbo v4, " mSender="

    #@51
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@54
    move-result-object v3

    #@55
    iget-object v4, p0, Lcom/android/internal/telephony/RIL;->mSender:Lcom/android/internal/telephony/RIL$RILSender;

    #@57
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v3

    #@5b
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5e
    move-result-object v3

    #@5f
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@62
    .line 4626
    new-instance v3, Ljava/lang/StringBuilder;

    #@64
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@67
    const-string/jumbo v4, " mReceiverThread="

    #@6a
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6d
    move-result-object v3

    #@6e
    iget-object v4, p0, Lcom/android/internal/telephony/RIL;->mReceiverThread:Ljava/lang/Thread;

    #@70
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@73
    move-result-object v3

    #@74
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@77
    move-result-object v3

    #@78
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@7b
    .line 4627
    new-instance v3, Ljava/lang/StringBuilder;

    #@7d
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@80
    const-string/jumbo v4, " mReceiver="

    #@83
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@86
    move-result-object v3

    #@87
    iget-object v4, p0, Lcom/android/internal/telephony/RIL;->mReceiver:Lcom/android/internal/telephony/RIL$RILReceiver;

    #@89
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@8c
    move-result-object v3

    #@8d
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@90
    move-result-object v3

    #@91
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@94
    .line 4628
    new-instance v3, Ljava/lang/StringBuilder;

    #@96
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@99
    const-string/jumbo v4, " mWakeLock="

    #@9c
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9f
    move-result-object v3

    #@a0
    iget-object v4, p0, Lcom/android/internal/telephony/RIL;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    #@a2
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@a5
    move-result-object v3

    #@a6
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a9
    move-result-object v3

    #@aa
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@ad
    .line 4629
    new-instance v3, Ljava/lang/StringBuilder;

    #@af
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@b2
    const-string/jumbo v4, " mWakeLockTimeout="

    #@b5
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b8
    move-result-object v3

    #@b9
    iget v4, p0, Lcom/android/internal/telephony/RIL;->mWakeLockTimeout:I

    #@bb
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@be
    move-result-object v3

    #@bf
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c2
    move-result-object v3

    #@c3
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@c6
    .line 4630
    iget-object v4, p0, Lcom/android/internal/telephony/RIL;->mRequestList:Landroid/util/SparseArray;

    #@c8
    monitor-enter v4

    #@c9
    .line 4631
    :try_start_0
    iget-object v5, p0, Lcom/android/internal/telephony/RIL;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    #@cb
    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@cc
    .line 4632
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    #@ce
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@d1
    const-string/jumbo v6, " mWakeLockCount="

    #@d4
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d7
    move-result-object v3

    #@d8
    iget v6, p0, Lcom/android/internal/telephony/RIL;->mWakeLockCount:I

    #@da
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@dd
    move-result-object v3

    #@de
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@e1
    move-result-object v3

    #@e2
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@e5
    :try_start_2
    monitor-exit v5

    #@e6
    .line 4634
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRequestList:Landroid/util/SparseArray;

    #@e8
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    #@eb
    move-result v0

    #@ec
    .line 4635
    .local v0, "count":I
    new-instance v3, Ljava/lang/StringBuilder;

    #@ee
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@f1
    const-string/jumbo v5, " mRequestList count="

    #@f4
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f7
    move-result-object v3

    #@f8
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@fb
    move-result-object v3

    #@fc
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ff
    move-result-object v3

    #@100
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@103
    .line 4636
    const/4 v1, 0x0

    #@104
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    #@106
    .line 4637
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRequestList:Landroid/util/SparseArray;

    #@108
    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@10b
    move-result-object v2

    #@10c
    check-cast v2, Lcom/android/internal/telephony/RILRequest;

    #@10e
    .line 4638
    .local v2, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v3, Ljava/lang/StringBuilder;

    #@110
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@113
    const-string/jumbo v5, "  ["

    #@116
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@119
    move-result-object v3

    #@11a
    iget v5, v2, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    #@11c
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@11f
    move-result-object v3

    #@120
    const-string/jumbo v5, "] "

    #@123
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@126
    move-result-object v3

    #@127
    iget v5, v2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    #@129
    invoke-static {v5}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    #@12c
    move-result-object v5

    #@12d
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@130
    move-result-object v3

    #@131
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@134
    move-result-object v3

    #@135
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@138
    .line 4636
    add-int/lit8 v1, v1, 0x1

    #@13a
    goto :goto_0

    #@13b
    .line 4631
    .end local v0    # "count":I
    .end local v1    # "i":I
    .end local v2    # "rr":Lcom/android/internal/telephony/RILRequest;
    :catchall_0
    move-exception v3

    #@13c
    monitor-exit v5

    #@13d
    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@13e
    .line 4630
    :catchall_1
    move-exception v3

    #@13f
    monitor-exit v4

    #@140
    throw v3

    #@141
    .restart local v0    # "count":I
    .restart local v1    # "i":I
    :cond_0
    monitor-exit v4

    #@142
    .line 4641
    new-instance v3, Ljava/lang/StringBuilder;

    #@144
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@147
    const-string/jumbo v4, " mLastNITZTimeInfo="

    #@14a
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14d
    move-result-object v3

    #@14e
    iget-object v4, p0, Lcom/android/internal/telephony/RIL;->mLastNITZTimeInfo:Ljava/lang/Object;

    #@150
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@153
    move-result-object v3

    #@154
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@157
    move-result-object v3

    #@158
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@15b
    .line 4642
    new-instance v3, Ljava/lang/StringBuilder;

    #@15d
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@160
    const-string/jumbo v4, " mTestingEmergencyCall="

    #@163
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@166
    move-result-object v3

    #@167
    iget-object v4, p0, Lcom/android/internal/telephony/RIL;->mTestingEmergencyCall:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@169
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    #@16c
    move-result v4

    #@16d
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@170
    move-result-object v3

    #@171
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@174
    move-result-object v3

    #@175
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@178
    .line 4621
    return-void
.end method

.method public exitEmergencyCallbackMode(Landroid/os/Message;)V
    .locals 3
    .param p1, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 4516
    const/16 v1, 0x63

    #@2
    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    #@5
    move-result-object v0

    #@6
    .line 4518
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    #@e
    move-result-object v2

    #@f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    const-string/jumbo v2, "> "

    #@16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    #@1c
    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    #@1f
    move-result-object v2

    #@20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v1

    #@24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@27
    move-result-object v1

    #@28
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    #@2b
    .line 4520
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    #@2e
    .line 4515
    return-void
.end method

.method public explicitCallTransfer(Landroid/os/Message;)V
    .locals 3
    .param p1, "result"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1129
    const/16 v1, 0x48

    #@2
    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    #@5
    move-result-object v0

    #@6
    .line 1131
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    #@e
    move-result-object v2

    #@f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    const-string/jumbo v2, "> "

    #@16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    #@1c
    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    #@1f
    move-result-object v2

    #@20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v1

    #@24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@27
    move-result-object v1

    #@28
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    #@2b
    .line 1133
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    #@2e
    .line 1127
    return-void
.end method

.method public getAvailableNetworks(Landroid/os/Message;)V
    .locals 3
    .param p1, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1773
    const/16 v1, 0x30

    #@2
    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    #@5
    move-result-object v0

    #@6
    .line 1776
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    #@e
    move-result-object v2

    #@f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    const-string/jumbo v2, "> "

    #@16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    #@1c
    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    #@1f
    move-result-object v2

    #@20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v1

    #@24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@27
    move-result-object v1

    #@28
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    #@2b
    .line 1778
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    #@2e
    .line 1771
    return-void
.end method

.method public getBasebandVersion(Landroid/os/Message;)V
    .locals 3
    .param p1, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1838
    const/16 v1, 0x33

    #@2
    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    #@5
    move-result-object v0

    #@6
    .line 1840
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    #@e
    move-result-object v2

    #@f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    const-string/jumbo v2, "> "

    #@16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    #@1c
    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    #@1f
    move-result-object v2

    #@20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v1

    #@24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@27
    move-result-object v1

    #@28
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    #@2b
    .line 1842
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    #@2e
    .line 1836
    return-void
.end method

.method public getCDMASubscription(Landroid/os/Message;)V
    .locals 3
    .param p1, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 4338
    const/16 v1, 0x5f

    #@2
    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    #@5
    move-result-object v0

    #@6
    .line 4340
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    #@e
    move-result-object v2

    #@f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    const-string/jumbo v2, "> "

    #@16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    #@1c
    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    #@1f
    move-result-object v2

    #@20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v1

    #@24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@27
    move-result-object v1

    #@28
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    #@2b
    .line 4342
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    #@2e
    .line 4337
    return-void
.end method

.method public getCLIR(Landroid/os/Message;)V
    .locals 3
    .param p1, "result"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1675
    const/16 v1, 0x1f

    #@2
    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    #@5
    move-result-object v0

    #@6
    .line 1677
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    #@e
    move-result-object v2

    #@f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    const-string/jumbo v2, "> "

    #@16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    #@1c
    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    #@1f
    move-result-object v2

    #@20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v1

    #@24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@27
    move-result-object v1

    #@28
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    #@2b
    .line 1679
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    #@2e
    .line 1673
    return-void
.end method

.method public getCdmaBroadcastConfig(Landroid/os/Message;)V
    .locals 2
    .param p1, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 4459
    const/16 v1, 0x5c

    #@2
    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    #@5
    move-result-object v0

    #@6
    .line 4461
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    #@9
    .line 4458
    return-void
.end method

.method public getCdmaSubscriptionSource(Landroid/os/Message;)V
    .locals 3
    .param p1, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 4404
    const/16 v1, 0x68

    #@2
    .line 4403
    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    #@5
    move-result-object v0

    #@6
    .line 4406
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    #@e
    move-result-object v2

    #@f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    const-string/jumbo v2, "> "

    #@16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    #@1c
    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    #@1f
    move-result-object v2

    #@20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v1

    #@24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@27
    move-result-object v1

    #@28
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    #@2b
    .line 4408
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    #@2e
    .line 4402
    return-void
.end method

.method public getCellInfoList(Landroid/os/Message;)V
    .locals 3
    .param p1, "result"    # Landroid/os/Message;

    #@0
    .prologue
    .line 4553
    const/16 v1, 0x6d

    #@2
    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    #@5
    move-result-object v0

    #@6
    .line 4555
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    #@e
    move-result-object v2

    #@f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    const-string/jumbo v2, "> "

    #@16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    #@1c
    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    #@1f
    move-result-object v2

    #@20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v1

    #@24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@27
    move-result-object v1

    #@28
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    #@2b
    .line 4557
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    #@2e
    .line 4552
    return-void
.end method

.method public getCurrentCalls(Landroid/os/Message;)V
    .locals 3
    .param p1, "result"    # Landroid/os/Message;

    #@0
    .prologue
    .line 914
    const/16 v1, 0x9

    #@2
    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    #@5
    move-result-object v0

    #@6
    .line 916
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    #@e
    move-result-object v2

    #@f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    const-string/jumbo v2, "> "

    #@16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    #@1c
    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    #@1f
    move-result-object v2

    #@20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v1

    #@24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@27
    move-result-object v1

    #@28
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    #@2b
    .line 918
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    #@2e
    .line 913
    return-void
.end method

.method public getDataCallList(Landroid/os/Message;)V
    .locals 3
    .param p1, "result"    # Landroid/os/Message;

    #@0
    .prologue
    .line 930
    const/16 v1, 0x39

    #@2
    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    #@5
    move-result-object v0

    #@6
    .line 932
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    #@e
    move-result-object v2

    #@f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    const-string/jumbo v2, "> "

    #@16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    #@1c
    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    #@1f
    move-result-object v2

    #@20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v1

    #@24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@27
    move-result-object v1

    #@28
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    #@2b
    .line 934
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    #@2e
    .line 929
    return-void
.end method

.method public getDataRegistrationState(Landroid/os/Message;)V
    .locals 3
    .param p1, "result"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1223
    const/16 v1, 0x15

    #@2
    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    #@5
    move-result-object v0

    #@6
    .line 1225
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    #@e
    move-result-object v2

    #@f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    const-string/jumbo v2, "> "

    #@16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    #@1c
    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    #@1f
    move-result-object v2

    #@20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v1

    #@24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@27
    move-result-object v1

    #@28
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    #@2b
    .line 1227
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    #@2e
    .line 1221
    return-void
.end method

.method public getDeviceIdentity(Landroid/os/Message;)V
    .locals 3
    .param p1, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 4328
    const/16 v1, 0x62

    #@2
    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    #@5
    move-result-object v0

    #@6
    .line 4330
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    #@e
    move-result-object v2

    #@f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    const-string/jumbo v2, "> "

    #@16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    #@1c
    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    #@1f
    move-result-object v2

    #@20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v1

    #@24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@27
    move-result-object v1

    #@28
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    #@2b
    .line 4332
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    #@2e
    .line 4327
    return-void
.end method

.method public getGsmBroadcastConfig(Landroid/os/Message;)V
    .locals 3
    .param p1, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 2194
    const/16 v1, 0x59

    #@2
    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    #@5
    move-result-object v0

    #@6
    .line 2196
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    #@e
    move-result-object v2

    #@f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    const-string/jumbo v2, "> "

    #@16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    #@1c
    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    #@1f
    move-result-object v2

    #@20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v1

    #@24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@27
    move-result-object v1

    #@28
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    #@2b
    .line 2198
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    #@2e
    .line 2193
    return-void
.end method

.method public getHardwareConfig(Landroid/os/Message;)V
    .locals 3
    .param p1, "result"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1244
    const/16 v1, 0x7c

    #@2
    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    #@5
    move-result-object v0

    #@6
    .line 1246
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    #@e
    move-result-object v2

    #@f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    const-string/jumbo v2, "> "

    #@16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    #@1c
    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    #@1f
    move-result-object v2

    #@20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v1

    #@24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@27
    move-result-object v1

    #@28
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    #@2b
    .line 1248
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    #@2e
    .line 1243
    return-void
.end method

.method public getIMEI(Landroid/os/Message;)V
    .locals 3
    .param p1, "result"    # Landroid/os/Message;

    #@0
    .prologue
    .line 989
    const/16 v1, 0x26

    #@2
    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    #@5
    move-result-object v0

    #@6
    .line 991
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    #@e
    move-result-object v2

    #@f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    const-string/jumbo v2, "> "

    #@16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    #@1c
    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    #@1f
    move-result-object v2

    #@20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v1

    #@24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@27
    move-result-object v1

    #@28
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    #@2b
    .line 993
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    #@2e
    .line 988
    return-void
.end method

.method public getIMEISV(Landroid/os/Message;)V
    .locals 3
    .param p1, "result"    # Landroid/os/Message;

    #@0
    .prologue
    .line 999
    const/16 v1, 0x27

    #@2
    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    #@5
    move-result-object v0

    #@6
    .line 1001
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    #@e
    move-result-object v2

    #@f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    const-string/jumbo v2, "> "

    #@16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    #@1c
    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    #@1f
    move-result-object v2

    #@20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v1

    #@24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@27
    move-result-object v1

    #@28
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    #@2b
    .line 1003
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    #@2e
    .line 998
    return-void
.end method

.method public getIMSI(Landroid/os/Message;)V
    .locals 1
    .param p1, "result"    # Landroid/os/Message;

    #@0
    .prologue
    .line 968
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/RIL;->getIMSIForApp(Ljava/lang/String;Landroid/os/Message;)V

    #@4
    .line 967
    return-void
.end method

.method public getIMSIForApp(Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .param p1, "aid"    # Ljava/lang/String;
    .param p2, "result"    # Landroid/os/Message;

    #@0
    .prologue
    .line 974
    const/16 v1, 0xb

    #@2
    invoke-static {v1, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    #@5
    move-result-object v0

    #@6
    .line 976
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@8
    const/4 v2, 0x1

    #@9
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@c
    .line 977
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@e
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@11
    .line 979
    new-instance v1, Ljava/lang/StringBuilder;

    #@13
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@16
    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    #@19
    move-result-object v2

    #@1a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v1

    #@1e
    .line 980
    const-string/jumbo v2, "> getIMSI: "

    #@21
    .line 979
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v1

    #@25
    .line 980
    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    #@27
    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    #@2a
    move-result-object v2

    #@2b
    .line 979
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v1

    #@2f
    .line 981
    const-string/jumbo v2, " aid: "

    #@32
    .line 979
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v1

    #@36
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v1

    #@3a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3d
    move-result-object v1

    #@3e
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    #@41
    .line 983
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    #@44
    .line 973
    return-void
.end method

.method public getIccCardStatus(Landroid/os/Message;)V
    .locals 3
    .param p1, "result"    # Landroid/os/Message;

    #@0
    .prologue
    .line 722
    const/4 v1, 0x1

    #@1
    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    #@4
    move-result-object v0

    #@5
    .line 724
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    #@7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@a
    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    #@d
    move-result-object v2

    #@e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v1

    #@12
    const-string/jumbo v2, "> "

    #@15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v1

    #@19
    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    #@1b
    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    #@1e
    move-result-object v2

    #@1f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v1

    #@23
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26
    move-result-object v1

    #@27
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    #@2a
    .line 726
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    #@2d
    .line 719
    return-void
.end method

.method public getImsRegistrationState(Landroid/os/Message;)V
    .locals 3
    .param p1, "result"    # Landroid/os/Message;

    #@0
    .prologue
    .line 697
    const/16 v1, 0x70

    #@2
    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    #@5
    move-result-object v0

    #@6
    .line 700
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    #@e
    move-result-object v2

    #@f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    const-string/jumbo v2, "> "

    #@16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    #@1c
    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    #@1f
    move-result-object v2

    #@20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v1

    #@24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@27
    move-result-object v1

    #@28
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    #@2b
    .line 702
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    #@2e
    .line 696
    return-void
.end method

.method public getLastCallFailCause(Landroid/os/Message;)V
    .locals 3
    .param p1, "result"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1140
    const/16 v1, 0x12

    #@2
    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    #@5
    move-result-object v0

    #@6
    .line 1142
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    #@e
    move-result-object v2

    #@f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    const-string/jumbo v2, "> "

    #@16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    #@1c
    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    #@1f
    move-result-object v2

    #@20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v1

    #@24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@27
    move-result-object v1

    #@28
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    #@2b
    .line 1144
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    #@2e
    .line 1138
    return-void
.end method

.method public getLastDataCallFailCause(Landroid/os/Message;)V
    .locals 3
    .param p1, "result"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1164
    const/16 v1, 0x38

    #@2
    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    #@5
    move-result-object v0

    #@6
    .line 1166
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    #@e
    move-result-object v2

    #@f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    const-string/jumbo v2, "> "

    #@16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    #@1c
    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    #@1f
    move-result-object v2

    #@20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v1

    #@24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@27
    move-result-object v1

    #@28
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    #@2b
    .line 1168
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    #@2e
    .line 1162
    return-void
.end method

.method public getLastPdpFailCause(Landroid/os/Message;)V
    .locals 0
    .param p1, "result"    # Landroid/os/Message;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 1154
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->getLastDataCallFailCause(Landroid/os/Message;)V

    #@3
    .line 1153
    return-void
.end method

.method public getModemActivityInfo(Landroid/os/Message;)V
    .locals 3
    .param p1, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 4836
    const/16 v1, 0x87

    #@2
    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    #@5
    move-result-object v0

    #@6
    .line 4838
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    #@e
    move-result-object v2

    #@f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    const-string/jumbo v2, "> "

    #@16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    #@1c
    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    #@1f
    move-result-object v2

    #@20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v1

    #@24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@27
    move-result-object v1

    #@28
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    #@2b
    .line 4840
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    #@2e
    .line 4835
    return-void
.end method

.method public getMute(Landroid/os/Message;)V
    .locals 3
    .param p1, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1190
    const/16 v1, 0x36

    #@2
    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    #@5
    move-result-object v0

    #@6
    .line 1192
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    #@e
    move-result-object v2

    #@f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    const-string/jumbo v2, "> "

    #@16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    #@1c
    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    #@1f
    move-result-object v2

    #@20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v1

    #@24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@27
    move-result-object v1

    #@28
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    #@2b
    .line 1194
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    #@2e
    .line 1188
    return-void
.end method

.method public getNeighboringCids(Landroid/os/Message;)V
    .locals 3
    .param p1, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 2113
    const/16 v1, 0x4b

    #@2
    .line 2112
    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    #@5
    move-result-object v0

    #@6
    .line 2115
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    #@e
    move-result-object v2

    #@f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    const-string/jumbo v2, "> "

    #@16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    #@1c
    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    #@1f
    move-result-object v2

    #@20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v1

    #@24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@27
    move-result-object v1

    #@28
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    #@2b
    .line 2117
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    #@2e
    .line 2111
    return-void
.end method

.method public getNetworkSelectionMode(Landroid/os/Message;)V
    .locals 3
    .param p1, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1761
    const/16 v1, 0x2d

    #@2
    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    #@5
    move-result-object v0

    #@6
    .line 1764
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    #@e
    move-result-object v2

    #@f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    const-string/jumbo v2, "> "

    #@16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    #@1c
    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    #@1f
    move-result-object v2

    #@20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v1

    #@24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@27
    move-result-object v1

    #@28
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    #@2b
    .line 1766
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    #@2e
    .line 1759
    return-void
.end method

.method public getOperator(Landroid/os/Message;)V
    .locals 3
    .param p1, "result"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1234
    const/16 v1, 0x16

    #@2
    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    #@5
    move-result-object v0

    #@6
    .line 1236
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    #@e
    move-result-object v2

    #@f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    const-string/jumbo v2, "> "

    #@16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    #@1c
    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    #@1f
    move-result-object v2

    #@20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v1

    #@24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@27
    move-result-object v1

    #@28
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    #@2b
    .line 1238
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    #@2e
    .line 1232
    return-void
.end method

.method public getPDPContextList(Landroid/os/Message;)V
    .locals 0
    .param p1, "result"    # Landroid/os/Message;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 924
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->getDataCallList(Landroid/os/Message;)V

    #@3
    .line 923
    return-void
.end method

.method public getPreferredNetworkType(Landroid/os/Message;)V
    .locals 3
    .param p1, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 2100
    const/16 v1, 0x4a

    #@2
    .line 2099
    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    #@5
    move-result-object v0

    #@6
    .line 2102
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    #@e
    move-result-object v2

    #@f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    const-string/jumbo v2, "> "

    #@16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    #@1c
    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    #@1f
    move-result-object v2

    #@20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v1

    #@24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@27
    move-result-object v1

    #@28
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    #@2b
    .line 2104
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    #@2e
    .line 2098
    return-void
.end method

.method public getPreferredVoicePrivacy(Landroid/os/Message;)V
    .locals 2
    .param p1, "result"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1083
    const/16 v1, 0x53

    #@2
    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    #@5
    move-result-object v0

    #@6
    .line 1085
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    #@9
    .line 1082
    return-void
.end method

.method public getRadioCapability(Landroid/os/Message;)V
    .locals 3
    .param p1, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 4792
    const/16 v1, 0x82

    #@2
    .line 4791
    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    #@5
    move-result-object v0

    #@6
    .line 4794
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    #@e
    move-result-object v2

    #@f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    const-string/jumbo v2, "> "

    #@16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    #@1c
    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    #@1f
    move-result-object v2

    #@20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v1

    #@24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@27
    move-result-object v1

    #@28
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    #@2b
    .line 4796
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    #@2e
    .line 4790
    return-void
.end method

.method public getSignalStrength(Landroid/os/Message;)V
    .locals 3
    .param p1, "result"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1201
    const/16 v1, 0x13

    #@2
    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    #@5
    move-result-object v0

    #@6
    .line 1203
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    #@e
    move-result-object v2

    #@f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    const-string/jumbo v2, "> "

    #@16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    #@1c
    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    #@1f
    move-result-object v2

    #@20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v1

    #@24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@27
    move-result-object v1

    #@28
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    #@2b
    .line 1205
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    #@2e
    .line 1199
    return-void
.end method

.method public getSmscAddress(Landroid/os/Message;)V
    .locals 3
    .param p1, "result"    # Landroid/os/Message;

    #@0
    .prologue
    .line 2140
    const/16 v1, 0x64

    #@2
    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    #@5
    move-result-object v0

    #@6
    .line 2142
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    #@e
    move-result-object v2

    #@f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    const-string/jumbo v2, "> "

    #@16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    #@1c
    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    #@1f
    move-result-object v2

    #@20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v1

    #@24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@27
    move-result-object v1

    #@28
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    #@2b
    .line 2144
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    #@2e
    .line 2139
    return-void
.end method

.method public getVoiceRadioTechnology(Landroid/os/Message;)V
    .locals 3
    .param p1, "result"    # Landroid/os/Message;

    #@0
    .prologue
    .line 688
    const/16 v1, 0x6c

    #@2
    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    #@5
    move-result-object v0

    #@6
    .line 690
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    #@e
    move-result-object v2

    #@f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    const-string/jumbo v2, "> "

    #@16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    #@1c
    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    #@1f
    move-result-object v2

    #@20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v1

    #@24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@27
    move-result-object v1

    #@28
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    #@2b
    .line 692
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    #@2e
    .line 687
    return-void
.end method

.method public getVoiceRegistrationState(Landroid/os/Message;)V
    .locals 3
    .param p1, "result"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1212
    const/16 v1, 0x14

    #@2
    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    #@5
    move-result-object v0

    #@6
    .line 1214
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    #@e
    move-result-object v2

    #@f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    const-string/jumbo v2, "> "

    #@16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    #@1c
    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    #@1f
    move-result-object v2

    #@20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v1

    #@24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@27
    move-result-object v1

    #@28
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    #@2b
    .line 1216
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    #@2e
    .line 1210
    return-void
.end method

.method public handleCallSetupRequestFromSim(ZLandroid/os/Message;)V
    .locals 6
    .param p1, "accept"    # Z
    .param p2, "response"    # Landroid/os/Message;

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 2064
    const/16 v4, 0x47

    #@4
    .line 2063
    invoke-static {v4, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    #@7
    move-result-object v1

    #@8
    .line 2067
    .local v1, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v4, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    #@10
    move-result-object v5

    #@11
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v4

    #@15
    const-string/jumbo v5, "> "

    #@18
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v4

    #@1c
    iget v5, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    #@1e
    invoke-static {v5}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    #@21
    move-result-object v5

    #@22
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v4

    #@26
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@29
    move-result-object v4

    #@2a
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    #@2d
    .line 2069
    new-array v0, v2, [I

    #@2f
    .line 2070
    .local v0, "param":[I
    if-eqz p1, :cond_0

    #@31
    :goto_0
    aput v2, v0, v3

    #@33
    .line 2071
    iget-object v2, v1, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@35
    invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    #@38
    .line 2072
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    #@3b
    .line 2061
    return-void

    #@3c
    :cond_0
    move v2, v3

    #@3d
    .line 2070
    goto :goto_0
.end method

.method public hangupConnection(ILandroid/os/Message;)V
    .locals 3
    .param p1, "gsmIndex"    # I
    .param p2, "result"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1010
    new-instance v1, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v2, "hangupConnection: gsmIndex="

    #@8
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v1

    #@c
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@f
    move-result-object v1

    #@10
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13
    move-result-object v1

    #@14
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    #@17
    .line 1012
    const/16 v1, 0xc

    #@19
    invoke-static {v1, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    #@1c
    move-result-object v0

    #@1d
    .line 1014
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    #@1f
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@22
    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    #@25
    move-result-object v2

    #@26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v1

    #@2a
    const-string/jumbo v2, "> "

    #@2d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v1

    #@31
    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    #@33
    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    #@36
    move-result-object v2

    #@37
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v1

    #@3b
    const-string/jumbo v2, " "

    #@3e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v1

    #@42
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@45
    move-result-object v1

    #@46
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@49
    move-result-object v1

    #@4a
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    #@4d
    .line 1017
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@4f
    const/4 v2, 0x1

    #@50
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@53
    .line 1018
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@55
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@58
    .line 1020
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    #@5b
    .line 1009
    return-void
.end method

.method public hangupForegroundResumeBackground(Landroid/os/Message;)V
    .locals 3
    .param p1, "result"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1039
    const/16 v1, 0xe

    #@2
    .line 1038
    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    #@5
    move-result-object v0

    #@6
    .line 1041
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    #@e
    move-result-object v2

    #@f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    const-string/jumbo v2, "> "

    #@16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    #@1c
    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    #@1f
    move-result-object v2

    #@20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v1

    #@24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@27
    move-result-object v1

    #@28
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    #@2b
    .line 1043
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    #@2e
    .line 1036
    return-void
.end method

.method public hangupWaitingOrBackground(Landroid/os/Message;)V
    .locals 3
    .param p1, "result"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1026
    const/16 v1, 0xd

    #@2
    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    #@5
    move-result-object v0

    #@6
    .line 1029
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    #@e
    move-result-object v2

    #@f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    const-string/jumbo v2, "> "

    #@16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    #@1c
    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    #@1f
    move-result-object v2

    #@20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v1

    #@24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@27
    move-result-object v1

    #@28
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    #@2b
    .line 1031
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    #@2e
    .line 1025
    return-void
.end method

.method public iccCloseLogicalChannel(ILandroid/os/Message;)V
    .locals 3
    .param p1, "channel"    # I
    .param p2, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 4664
    const/16 v1, 0x74

    #@2
    invoke-static {v1, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    #@5
    move-result-object v0

    #@6
    .line 4665
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@8
    const/4 v2, 0x1

    #@9
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@c
    .line 4666
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@e
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 4669
    new-instance v1, Ljava/lang/StringBuilder;

    #@13
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@16
    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    #@19
    move-result-object v2

    #@1a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v1

    #@1e
    const-string/jumbo v2, "> "

    #@21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v1

    #@25
    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    #@27
    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    #@2a
    move-result-object v2

    #@2b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v1

    #@2f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@32
    move-result-object v1

    #@33
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    #@36
    .line 4671
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    #@39
    .line 4663
    return-void
.end method

.method public iccIO(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 11
    .param p1, "command"    # I
    .param p2, "fileid"    # I
    .param p3, "path"    # Ljava/lang/String;
    .param p4, "p1"    # I
    .param p5, "p2"    # I
    .param p6, "p3"    # I
    .param p7, "data"    # Ljava/lang/String;
    .param p8, "pin2"    # Ljava/lang/String;
    .param p9, "result"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1639
    const/4 v9, 0x0

    #@1
    move-object v0, p0

    #@2
    move v1, p1

    #@3
    move v2, p2

    #@4
    move-object v3, p3

    #@5
    move v4, p4

    #@6
    move/from16 v5, p5

    #@8
    move/from16 v6, p6

    #@a
    move-object/from16 v7, p7

    #@c
    move-object/from16 v8, p8

    #@e
    move-object/from16 v10, p9

    #@10
    invoke-virtual/range {v0 .. v10}, Lcom/android/internal/telephony/RIL;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    #@13
    .line 1638
    return-void
.end method

.method public iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .param p1, "command"    # I
    .param p2, "fileid"    # I
    .param p3, "path"    # Ljava/lang/String;
    .param p4, "p1"    # I
    .param p5, "p2"    # I
    .param p6, "p3"    # I
    .param p7, "data"    # Ljava/lang/String;
    .param p8, "pin2"    # Ljava/lang/String;
    .param p9, "aid"    # Ljava/lang/String;
    .param p10, "result"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1648
    const/16 v1, 0x1c

    #@2
    invoke-static {v1, p10}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    #@5
    move-result-object v0

    #@6
    .line 1650
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@8
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@b
    .line 1651
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@d
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@10
    .line 1652
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@12
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@15
    .line 1653
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@17
    invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeInt(I)V

    #@1a
    .line 1654
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@1c
    invoke-virtual {v1, p5}, Landroid/os/Parcel;->writeInt(I)V

    #@1f
    .line 1655
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@21
    invoke-virtual {v1, p6}, Landroid/os/Parcel;->writeInt(I)V

    #@24
    .line 1656
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@26
    invoke-virtual {v1, p7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@29
    .line 1657
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@2b
    invoke-virtual {v1, p8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@2e
    .line 1658
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@30
    invoke-virtual {v1, p9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@33
    .line 1660
    new-instance v1, Ljava/lang/StringBuilder;

    #@35
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@38
    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    #@3b
    move-result-object v2

    #@3c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v1

    #@40
    const-string/jumbo v2, "> iccIO: "

    #@43
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@46
    move-result-object v1

    #@47
    .line 1661
    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    #@49
    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    #@4c
    move-result-object v2

    #@4d
    .line 1660
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@50
    move-result-object v1

    #@51
    .line 1662
    const-string/jumbo v2, " 0x"

    #@54
    .line 1660
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@57
    move-result-object v1

    #@58
    .line 1662
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@5b
    move-result-object v2

    #@5c
    .line 1660
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5f
    move-result-object v1

    #@60
    .line 1663
    const-string/jumbo v2, " 0x"

    #@63
    .line 1660
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@66
    move-result-object v1

    #@67
    .line 1663
    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@6a
    move-result-object v2

    #@6b
    .line 1660
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6e
    move-result-object v1

    #@6f
    .line 1663
    const-string/jumbo v2, " "

    #@72
    .line 1660
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@75
    move-result-object v1

    #@76
    .line 1664
    const-string/jumbo v2, " path: "

    #@79
    .line 1660
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7c
    move-result-object v1

    #@7d
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@80
    move-result-object v1

    #@81
    .line 1664
    const-string/jumbo v2, ","

    #@84
    .line 1660
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@87
    move-result-object v1

    #@88
    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@8b
    move-result-object v1

    #@8c
    .line 1665
    const-string/jumbo v2, ","

    #@8f
    .line 1660
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@92
    move-result-object v1

    #@93
    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@96
    move-result-object v1

    #@97
    .line 1665
    const-string/jumbo v2, ","

    #@9a
    .line 1660
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9d
    move-result-object v1

    #@9e
    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@a1
    move-result-object v1

    #@a2
    .line 1666
    const-string/jumbo v2, " aid: "

    #@a5
    .line 1660
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a8
    move-result-object v1

    #@a9
    invoke-virtual {v1, p9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ac
    move-result-object v1

    #@ad
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b0
    move-result-object v1

    #@b1
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    #@b4
    .line 1668
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    #@b7
    .line 1644
    return-void
.end method

.method public iccOpenLogicalChannel(Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .param p1, "AID"    # Ljava/lang/String;
    .param p2, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 4650
    const/16 v1, 0x73

    #@2
    invoke-static {v1, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    #@5
    move-result-object v0

    #@6
    .line 4651
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@8
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@b
    .line 4654
    new-instance v1, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    #@13
    move-result-object v2

    #@14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    const-string/jumbo v2, "> "

    #@1b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v1

    #@1f
    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    #@21
    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    #@24
    move-result-object v2

    #@25
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v1

    #@29
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2c
    move-result-object v1

    #@2d
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    #@30
    .line 4656
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    #@33
    .line 4649
    return-void
.end method

.method public iccTransmitApduBasicChannel(IIIIILjava/lang/String;Landroid/os/Message;)V
    .locals 10
    .param p1, "cla"    # I
    .param p2, "instruction"    # I
    .param p3, "p1"    # I
    .param p4, "p2"    # I
    .param p5, "p3"    # I
    .param p6, "data"    # Ljava/lang/String;
    .param p7, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 4695
    const/16 v1, 0x72

    #@2
    const/4 v2, 0x0

    #@3
    move-object v0, p0

    #@4
    move v3, p1

    #@5
    move v4, p2

    #@6
    move v5, p3

    #@7
    move v6, p4

    #@8
    move v7, p5

    #@9
    move-object/from16 v8, p6

    #@b
    move-object/from16 v9, p7

    #@d
    invoke-direct/range {v0 .. v9}, Lcom/android/internal/telephony/RIL;->iccTransmitApduHelper(IIIIIIILjava/lang/String;Landroid/os/Message;)V

    #@10
    .line 4694
    return-void
.end method

.method public iccTransmitApduLogicalChannel(IIIIIILjava/lang/String;Landroid/os/Message;)V
    .locals 10
    .param p1, "channel"    # I
    .param p2, "cla"    # I
    .param p3, "instruction"    # I
    .param p4, "p1"    # I
    .param p5, "p2"    # I
    .param p6, "p3"    # I
    .param p7, "data"    # Ljava/lang/String;
    .param p8, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 4680
    if-gtz p1, :cond_0

    #@2
    .line 4681
    new-instance v0, Ljava/lang/RuntimeException;

    #@4
    .line 4682
    new-instance v1, Ljava/lang/StringBuilder;

    #@6
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@9
    const-string/jumbo v2, "Invalid channel in iccTransmitApduLogicalChannel: "

    #@c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v1

    #@10
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@17
    move-result-object v1

    #@18
    .line 4681
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@1b
    throw v0

    #@1c
    .line 4685
    :cond_0
    const/16 v1, 0x75

    #@1e
    move-object v0, p0

    #@1f
    move v2, p1

    #@20
    move v3, p2

    #@21
    move v4, p3

    #@22
    move v5, p4

    #@23
    move v6, p5

    #@24
    move/from16 v7, p6

    #@26
    move-object/from16 v8, p7

    #@28
    move-object/from16 v9, p8

    #@2a
    invoke-direct/range {v0 .. v9}, Lcom/android/internal/telephony/RIL;->iccTransmitApduHelper(IIIIIIILjava/lang/String;Landroid/os/Message;)V

    #@2d
    .line 4679
    return-void
.end method

.method public invokeOemRilRequestRaw([BLandroid/os/Message;)V
    .locals 3
    .param p1, "data"    # [B
    .param p2, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1951
    const/16 v1, 0x3b

    #@2
    invoke-static {v1, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    #@5
    move-result-object v0

    #@6
    .line 1953
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    #@e
    move-result-object v2

    #@f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    const-string/jumbo v2, "> "

    #@16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    #@1c
    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    #@1f
    move-result-object v2

    #@20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v1

    #@24
    .line 1954
    const-string/jumbo v2, "["

    #@27
    .line 1953
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v1

    #@2b
    .line 1954
    invoke-static {p1}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    #@2e
    move-result-object v2

    #@2f
    .line 1953
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v1

    #@33
    .line 1954
    const-string/jumbo v2, "]"

    #@36
    .line 1953
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v1

    #@3a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3d
    move-result-object v1

    #@3e
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    #@41
    .line 1956
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@43
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    #@46
    .line 1958
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    #@49
    .line 1949
    return-void
.end method

.method public invokeOemRilRequestStrings([Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .param p1, "strings"    # [Ljava/lang/String;
    .param p2, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1965
    const/16 v1, 0x3c

    #@2
    invoke-static {v1, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    #@5
    move-result-object v0

    #@6
    .line 1967
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    #@e
    move-result-object v2

    #@f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    const-string/jumbo v2, "> "

    #@16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    #@1c
    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    #@1f
    move-result-object v2

    #@20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v1

    #@24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@27
    move-result-object v1

    #@28
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    #@2b
    .line 1969
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@2d
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    #@30
    .line 1971
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    #@33
    .line 1963
    return-void
.end method

.method public nvReadItem(ILandroid/os/Message;)V
    .locals 3
    .param p1, "itemID"    # I
    .param p2, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 4721
    const/16 v1, 0x76

    #@2
    invoke-static {v1, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    #@5
    move-result-object v0

    #@6
    .line 4723
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@8
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@b
    .line 4725
    new-instance v1, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    #@13
    move-result-object v2

    #@14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    const-string/jumbo v2, "> "

    #@1b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v1

    #@1f
    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    #@21
    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    #@24
    move-result-object v2

    #@25
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v1

    #@29
    .line 4726
    const/16 v2, 0x20

    #@2b
    .line 4725
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

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
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    #@3a
    .line 4728
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    #@3d
    .line 4720
    return-void
.end method

.method public nvResetConfig(ILandroid/os/Message;)V
    .locals 3
    .param p1, "resetType"    # I
    .param p2, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 4758
    const/16 v1, 0x79

    #@2
    invoke-static {v1, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    #@5
    move-result-object v0

    #@6
    .line 4760
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@8
    const/4 v2, 0x1

    #@9
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@c
    .line 4761
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@e
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 4763
    new-instance v1, Ljava/lang/StringBuilder;

    #@13
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@16
    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    #@19
    move-result-object v2

    #@1a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v1

    #@1e
    const-string/jumbo v2, "> "

    #@21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v1

    #@25
    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    #@27
    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    #@2a
    move-result-object v2

    #@2b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v1

    #@2f
    .line 4764
    const/16 v2, 0x20

    #@31
    .line 4763
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@34
    move-result-object v1

    #@35
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@38
    move-result-object v1

    #@39
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3c
    move-result-object v1

    #@3d
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    #@40
    .line 4766
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    #@43
    .line 4757
    return-void
.end method

.method public nvWriteCdmaPrl([BLandroid/os/Message;)V
    .locals 3
    .param p1, "preferredRoamingList"    # [B
    .param p2, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 4746
    const/16 v1, 0x78

    #@2
    invoke-static {v1, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    #@5
    move-result-object v0

    #@6
    .line 4748
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@8
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    #@b
    .line 4750
    new-instance v1, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    #@13
    move-result-object v2

    #@14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    const-string/jumbo v2, "> "

    #@1b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v1

    #@1f
    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    #@21
    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    #@24
    move-result-object v2

    #@25
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v1

    #@29
    .line 4751
    const-string/jumbo v2, " ("

    #@2c
    .line 4750
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v1

    #@30
    .line 4751
    array-length v2, p1

    #@31
    .line 4750
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@34
    move-result-object v1

    #@35
    .line 4751
    const-string/jumbo v2, " bytes)"

    #@38
    .line 4750
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v1

    #@3c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3f
    move-result-object v1

    #@40
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    #@43
    .line 4753
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    #@46
    .line 4745
    return-void
.end method

.method public nvWriteItem(ILjava/lang/String;Landroid/os/Message;)V
    .locals 3
    .param p1, "itemID"    # I
    .param p2, "itemValue"    # Ljava/lang/String;
    .param p3, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 4733
    const/16 v1, 0x77

    #@2
    invoke-static {v1, p3}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    #@5
    move-result-object v0

    #@6
    .line 4735
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@8
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@b
    .line 4736
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@d
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@10
    .line 4738
    new-instance v1, Ljava/lang/StringBuilder;

    #@12
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@15
    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    #@18
    move-result-object v2

    #@19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v1

    #@1d
    const-string/jumbo v2, "> "

    #@20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v1

    #@24
    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    #@26
    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    #@29
    move-result-object v2

    #@2a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v1

    #@2e
    .line 4739
    const/16 v2, 0x20

    #@30
    .line 4738
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@33
    move-result-object v1

    #@34
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@37
    move-result-object v1

    #@38
    .line 4739
    const-string/jumbo v2, ": "

    #@3b
    .line 4738
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v1

    #@3f
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v1

    #@43
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@46
    move-result-object v1

    #@47
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    #@4a
    .line 4741
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    #@4d
    .line 4732
    return-void
.end method

.method protected onRadioAvailable()V
    .locals 0

    #@0
    .prologue
    .line 2286
    invoke-direct {p0}, Lcom/android/internal/telephony/RIL;->updateScreenState()V

    #@3
    .line 2283
    return-void
.end method

.method public pullLceData(Landroid/os/Message;)V
    .locals 3
    .param p1, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 4825
    const/16 v1, 0x86

    #@2
    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    #@5
    move-result-object v0

    #@6
    .line 4827
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    #@e
    move-result-object v2

    #@f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    const-string/jumbo v2, "> "

    #@16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    #@1c
    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    #@1f
    move-result-object v2

    #@20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v1

    #@24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@27
    move-result-object v1

    #@28
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    #@2b
    .line 4829
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    #@2e
    .line 4824
    return-void
.end method

.method public queryAvailableBandMode(Landroid/os/Message;)V
    .locals 3
    .param p1, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 2005
    const/16 v1, 0x42

    #@2
    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    #@5
    move-result-object v0

    #@6
    .line 2008
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    #@e
    move-result-object v2

    #@f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    const-string/jumbo v2, "> "

    #@16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    #@1c
    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    #@1f
    move-result-object v2

    #@20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v1

    #@24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@27
    move-result-object v1

    #@28
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    #@2b
    .line 2010
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    #@2e
    .line 2003
    return-void
.end method

.method public queryCLIP(Landroid/os/Message;)V
    .locals 3
    .param p1, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1826
    const/16 v1, 0x37

    #@2
    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    #@5
    move-result-object v0

    #@6
    .line 1828
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    #@e
    move-result-object v2

    #@f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    const-string/jumbo v2, "> "

    #@16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    #@1c
    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    #@1f
    move-result-object v2

    #@20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v1

    #@24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@27
    move-result-object v1

    #@28
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    #@2b
    .line 1830
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    #@2e
    .line 1824
    return-void
.end method

.method public queryCallForwardStatus(IILjava/lang/String;Landroid/os/Message;)V
    .locals 3
    .param p1, "cfReason"    # I
    .param p2, "serviceClass"    # I
    .param p3, "number"    # Ljava/lang/String;
    .param p4, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1807
    const/16 v1, 0x21

    #@2
    invoke-static {v1, p4}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    #@5
    move-result-object v0

    #@6
    .line 1809
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@8
    const/4 v2, 0x2

    #@9
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@c
    .line 1810
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@e
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 1811
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@13
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@16
    .line 1812
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@18
    invoke-static {p3}, Landroid/telephony/PhoneNumberUtils;->toaFromString(Ljava/lang/String;)I

    #@1b
    move-result v2

    #@1c
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@1f
    .line 1813
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@21
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@24
    .line 1814
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@26
    const/4 v2, 0x0

    #@27
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@2a
    .line 1816
    new-instance v1, Ljava/lang/StringBuilder;

    #@2c
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@2f
    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    #@32
    move-result-object v2

    #@33
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v1

    #@37
    const-string/jumbo v2, "> "

    #@3a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v1

    #@3e
    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    #@40
    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    #@43
    move-result-object v2

    #@44
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v1

    #@48
    .line 1817
    const-string/jumbo v2, " "

    #@4b
    .line 1816
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v1

    #@4f
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@52
    move-result-object v1

    #@53
    .line 1817
    const-string/jumbo v2, " "

    #@56
    .line 1816
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@59
    move-result-object v1

    #@5a
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@5d
    move-result-object v1

    #@5e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@61
    move-result-object v1

    #@62
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    #@65
    .line 1819
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    #@68
    .line 1805
    return-void
.end method

.method public queryCallWaiting(ILandroid/os/Message;)V
    .locals 3
    .param p1, "serviceClass"    # I
    .param p2, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1703
    const/16 v1, 0x23

    #@2
    invoke-static {v1, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    #@5
    move-result-object v0

    #@6
    .line 1705
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@8
    const/4 v2, 0x1

    #@9
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@c
    .line 1706
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@e
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 1708
    new-instance v1, Ljava/lang/StringBuilder;

    #@13
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@16
    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    #@19
    move-result-object v2

    #@1a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v1

    #@1e
    const-string/jumbo v2, "> "

    #@21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v1

    #@25
    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    #@27
    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    #@2a
    move-result-object v2

    #@2b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v1

    #@2f
    .line 1709
    const-string/jumbo v2, " "

    #@32
    .line 1708
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v1

    #@36
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@39
    move-result-object v1

    #@3a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3d
    move-result-object v1

    #@3e
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    #@41
    .line 1711
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    #@44
    .line 1701
    return-void
.end method

.method public queryCdmaRoamingPreference(Landroid/os/Message;)V
    .locals 3
    .param p1, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 4357
    const/16 v1, 0x4f

    #@2
    .line 4356
    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    #@5
    move-result-object v0

    #@6
    .line 4359
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    #@e
    move-result-object v2

    #@f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    const-string/jumbo v2, "> "

    #@16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    #@1c
    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    #@1f
    move-result-object v2

    #@20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v1

    #@24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@27
    move-result-object v1

    #@28
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    #@2b
    .line 4361
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    #@2e
    .line 4355
    return-void
.end method

.method public queryFacilityLock(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;)V
    .locals 6
    .param p1, "facility"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "serviceClass"    # I
    .param p4, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1849
    const/4 v4, 0x0

    #@1
    move-object v0, p0

    #@2
    move-object v1, p1

    #@3
    move-object v2, p2

    #@4
    move v3, p3

    #@5
    move-object v5, p4

    #@6
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/RIL;->queryFacilityLockForApp(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroid/os/Message;)V

    #@9
    .line 1848
    return-void
.end method

.method public queryFacilityLockForApp(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroid/os/Message;)V
    .locals 3
    .param p1, "facility"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "serviceClass"    # I
    .param p4, "appId"    # Ljava/lang/String;
    .param p5, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1856
    const/16 v1, 0x2a

    #@2
    invoke-static {v1, p5}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    #@5
    move-result-object v0

    #@6
    .line 1858
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    #@e
    move-result-object v2

    #@f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    const-string/jumbo v2, "> "

    #@16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    #@1c
    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    #@1f
    move-result-object v2

    #@20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v1

    #@24
    .line 1859
    const-string/jumbo v2, " ["

    #@27
    .line 1858
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v1

    #@2b
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v1

    #@2f
    .line 1859
    const-string/jumbo v2, " "

    #@32
    .line 1858
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v1

    #@36
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@39
    move-result-object v1

    #@3a
    .line 1860
    const-string/jumbo v2, " "

    #@3d
    .line 1858
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v1

    #@41
    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v1

    #@45
    .line 1860
    const-string/jumbo v2, "]"

    #@48
    .line 1858
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v1

    #@4c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4f
    move-result-object v1

    #@50
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    #@53
    .line 1863
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@55
    const/4 v2, 0x4

    #@56
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@59
    .line 1865
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@5b
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@5e
    .line 1866
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@60
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@63
    .line 1868
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@65
    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@68
    move-result-object v2

    #@69
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@6c
    .line 1869
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@6e
    invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@71
    .line 1871
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    #@74
    .line 1855
    return-void
.end method

.method public queryTTYMode(Landroid/os/Message;)V
    .locals 3
    .param p1, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 4417
    const/16 v1, 0x51

    #@2
    .line 4416
    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    #@5
    move-result-object v0

    #@6
    .line 4419
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    #@e
    move-result-object v2

    #@f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    const-string/jumbo v2, "> "

    #@16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    #@1c
    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    #@1f
    move-result-object v2

    #@20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v1

    #@24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@27
    move-result-object v1

    #@28
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    #@2b
    .line 4421
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    #@2e
    .line 4415
    return-void
.end method

.method public rejectCall(Landroid/os/Message;)V
    .locals 3
    .param p1, "result"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1118
    const/16 v1, 0x11

    #@2
    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    #@5
    move-result-object v0

    #@6
    .line 1120
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    #@e
    move-result-object v2

    #@f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    const-string/jumbo v2, "> "

    #@16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    #@1c
    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    #@1f
    move-result-object v2

    #@20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v1

    #@24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@27
    move-result-object v1

    #@28
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    #@2b
    .line 1122
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    #@2e
    .line 1116
    return-void
.end method

.method public reportSmsMemoryStatus(ZLandroid/os/Message;)V
    .locals 3
    .param p1, "available"    # Z
    .param p2, "result"    # Landroid/os/Message;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 2167
    const/16 v2, 0x66

    #@3
    invoke-static {v2, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    #@6
    move-result-object v0

    #@7
    .line 2168
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    iget-object v2, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@9
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@c
    .line 2169
    iget-object v2, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@e
    if-eqz p1, :cond_0

    #@10
    :goto_0
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@13
    .line 2171
    new-instance v1, Ljava/lang/StringBuilder;

    #@15
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@18
    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    #@1b
    move-result-object v2

    #@1c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v1

    #@20
    const-string/jumbo v2, "> "

    #@23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v1

    #@27
    .line 2172
    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    #@29
    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    #@2c
    move-result-object v2

    #@2d
    .line 2171
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v1

    #@31
    .line 2172
    const-string/jumbo v2, ": "

    #@34
    .line 2171
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v1

    #@38
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v1

    #@3c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3f
    move-result-object v1

    #@40
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    #@43
    .line 2174
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    #@46
    .line 2166
    return-void

    #@47
    .line 2169
    :cond_0
    const/4 v1, 0x0

    #@48
    goto :goto_0
.end method

.method public reportStkServiceIsRunning(Landroid/os/Message;)V
    .locals 3
    .param p1, "result"    # Landroid/os/Message;

    #@0
    .prologue
    .line 2182
    const/16 v1, 0x67

    #@2
    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    #@5
    move-result-object v0

    #@6
    .line 2184
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    #@e
    move-result-object v2

    #@f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    const-string/jumbo v2, "> "

    #@16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    #@1c
    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    #@1f
    move-result-object v2

    #@20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v1

    #@24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@27
    move-result-object v1

    #@28
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    #@2b
    .line 2186
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    #@2e
    .line 2181
    return-void
.end method

.method public requestIccSimAuthentication(ILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .param p1, "authContext"    # I
    .param p2, "data"    # Ljava/lang/String;
    .param p3, "aid"    # Ljava/lang/String;
    .param p4, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 4537
    const/16 v1, 0x7d

    #@2
    invoke-static {v1, p4}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    #@5
    move-result-object v0

    #@6
    .line 4539
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@8
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@b
    .line 4540
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@d
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@10
    .line 4541
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@12
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@15
    .line 4543
    new-instance v1, Ljava/lang/StringBuilder;

    #@17
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1a
    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    #@1d
    move-result-object v2

    #@1e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v1

    #@22
    const-string/jumbo v2, "> "

    #@25
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v1

    #@29
    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    #@2b
    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    #@2e
    move-result-object v2

    #@2f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v1

    #@33
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@36
    move-result-object v1

    #@37
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    #@3a
    .line 4545
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    #@3d
    .line 4536
    return-void
.end method

.method public requestIsimAuthentication(Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .param p1, "nonce"    # Ljava/lang/String;
    .param p2, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 4525
    const/16 v1, 0x69

    #@2
    invoke-static {v1, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    #@5
    move-result-object v0

    #@6
    .line 4527
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@8
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@b
    .line 4529
    new-instance v1, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    #@13
    move-result-object v2

    #@14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    const-string/jumbo v2, "> "

    #@1b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v1

    #@1f
    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    #@21
    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    #@24
    move-result-object v2

    #@25
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v1

    #@29
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2c
    move-result-object v1

    #@2d
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    #@30
    .line 4531
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    #@33
    .line 4524
    return-void
.end method

.method public requestShutdown(Landroid/os/Message;)V
    .locals 3
    .param p1, "result"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1564
    const/16 v1, 0x81

    #@2
    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    #@5
    move-result-object v0

    #@6
    .line 1567
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    #@e
    move-result-object v2

    #@f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    const-string/jumbo v2, "> "

    #@16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    #@1c
    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    #@1f
    move-result-object v2

    #@20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v1

    #@24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@27
    move-result-object v1

    #@28
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    #@2b
    .line 1569
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    #@2e
    .line 1563
    return-void
.end method

.method public resetRadio(Landroid/os/Message;)V
    .locals 3
    .param p1, "result"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1941
    const/16 v1, 0x3a

    #@2
    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    #@5
    move-result-object v0

    #@6
    .line 1943
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    #@e
    move-result-object v2

    #@f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    const-string/jumbo v2, "> "

    #@16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    #@1c
    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    #@1f
    move-result-object v2

    #@20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v1

    #@24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@27
    move-result-object v1

    #@28
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    #@2b
    .line 1945
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    #@2e
    .line 1939
    return-void
.end method

.method public sendBurstDtmf(Ljava/lang/String;IILandroid/os/Message;)V
    .locals 3
    .param p1, "dtmfString"    # Ljava/lang/String;
    .param p2, "on"    # I
    .param p3, "off"    # I
    .param p4, "result"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1291
    const/16 v1, 0x55

    #@2
    invoke-static {v1, p4}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    #@5
    move-result-object v0

    #@6
    .line 1293
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@8
    const/4 v2, 0x3

    #@9
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@c
    .line 1294
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@e
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@11
    .line 1295
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@13
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@16
    move-result-object v2

    #@17
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1a
    .line 1296
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@1c
    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@1f
    move-result-object v2

    #@20
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@23
    .line 1298
    new-instance v1, Ljava/lang/StringBuilder;

    #@25
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@28
    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    #@2b
    move-result-object v2

    #@2c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v1

    #@30
    const-string/jumbo v2, "> "

    #@33
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v1

    #@37
    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    #@39
    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    #@3c
    move-result-object v2

    #@3d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v1

    #@41
    .line 1299
    const-string/jumbo v2, " : "

    #@44
    .line 1298
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v1

    #@48
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v1

    #@4c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4f
    move-result-object v1

    #@50
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    #@53
    .line 1301
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    #@56
    .line 1290
    return-void
.end method

.method public sendCDMAFeatureCode(Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .param p1, "FeatureCode"    # Ljava/lang/String;
    .param p2, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 4447
    const/16 v1, 0x54

    #@2
    invoke-static {v1, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    #@5
    move-result-object v0

    #@6
    .line 4449
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@8
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@b
    .line 4451
    new-instance v1, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    #@13
    move-result-object v2

    #@14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    const-string/jumbo v2, "> "

    #@1b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v1

    #@1f
    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    #@21
    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    #@24
    move-result-object v2

    #@25
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v1

    #@29
    .line 4452
    const-string/jumbo v2, " : "

    #@2c
    .line 4451
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v1

    #@30
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v1

    #@34
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@37
    move-result-object v1

    #@38
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    #@3b
    .line 4454
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    #@3e
    .line 4446
    return-void
.end method

.method public sendCdmaSms([BLandroid/os/Message;)V
    .locals 3
    .param p1, "pdu"    # [B
    .param p2, "result"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1379
    const/16 v1, 0x57

    #@2
    invoke-static {v1, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    #@5
    move-result-object v0

    #@6
    .line 1381
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/RIL;->constructCdmaSendSmsRilRequest(Lcom/android/internal/telephony/RILRequest;[B)V

    #@9
    .line 1383
    new-instance v1, Ljava/lang/StringBuilder;

    #@b
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    #@11
    move-result-object v2

    #@12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v1

    #@16
    const-string/jumbo v2, "> "

    #@19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v1

    #@1d
    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    #@1f
    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    #@22
    move-result-object v2

    #@23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v1

    #@27
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2a
    move-result-object v1

    #@2b
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    #@2e
    .line 1385
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    #@31
    .line 1377
    return-void
.end method

.method public sendDtmf(CLandroid/os/Message;)V
    .locals 3
    .param p1, "c"    # C
    .param p2, "result"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1255
    const/16 v1, 0x18

    #@2
    invoke-static {v1, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    #@5
    move-result-object v0

    #@6
    .line 1257
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    #@e
    move-result-object v2

    #@f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    const-string/jumbo v2, "> "

    #@16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    #@1c
    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    #@1f
    move-result-object v2

    #@20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v1

    #@24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@27
    move-result-object v1

    #@28
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    #@2b
    .line 1259
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@2d
    invoke-static {p1}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    #@30
    move-result-object v2

    #@31
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@34
    .line 1261
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    #@37
    .line 1253
    return-void
.end method

.method public sendEnvelope(Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .param p1, "contents"    # Ljava/lang/String;
    .param p2, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 2033
    const/16 v1, 0x45

    #@2
    .line 2032
    invoke-static {v1, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    #@5
    move-result-object v0

    #@6
    .line 2035
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    #@e
    move-result-object v2

    #@f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    const-string/jumbo v2, "> "

    #@16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    #@1c
    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    #@1f
    move-result-object v2

    #@20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v1

    #@24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@27
    move-result-object v1

    #@28
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    #@2b
    .line 2037
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@2d
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@30
    .line 2038
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    #@33
    .line 2031
    return-void
.end method

.method public sendEnvelopeWithStatus(Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .param p1, "contents"    # Ljava/lang/String;
    .param p2, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 2047
    const/16 v1, 0x6b

    #@2
    .line 2046
    invoke-static {v1, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    #@5
    move-result-object v0

    #@6
    .line 2049
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    #@e
    move-result-object v2

    #@f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    const-string/jumbo v2, "> "

    #@16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    #@1c
    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    #@1f
    move-result-object v2

    #@20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v1

    #@24
    .line 2050
    const/16 v2, 0x5b

    #@26
    .line 2049
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@29
    move-result-object v1

    #@2a
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v1

    #@2e
    .line 2050
    const/16 v2, 0x5d

    #@30
    .line 2049
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@33
    move-result-object v1

    #@34
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@37
    move-result-object v1

    #@38
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    #@3b
    .line 2052
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@3d
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@40
    .line 2053
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    #@43
    .line 2045
    return-void
.end method

.method public sendImsCdmaSms([BIILandroid/os/Message;)V
    .locals 3
    .param p1, "pdu"    # [B
    .param p2, "retry"    # I
    .param p3, "messageRef"    # I
    .param p4, "result"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1406
    const/16 v1, 0x71

    #@2
    invoke-static {v1, p4}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    #@5
    move-result-object v0

    #@6
    .line 1408
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@8
    const/4 v2, 0x2

    #@9
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@c
    .line 1409
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@e
    int-to-byte v2, p2

    #@f
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeByte(B)V

    #@12
    .line 1410
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@14
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeInt(I)V

    #@17
    .line 1412
    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/RIL;->constructCdmaSendSmsRilRequest(Lcom/android/internal/telephony/RILRequest;[B)V

    #@1a
    .line 1414
    new-instance v1, Ljava/lang/StringBuilder;

    #@1c
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1f
    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    #@22
    move-result-object v2

    #@23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v1

    #@27
    const-string/jumbo v2, "> "

    #@2a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v1

    #@2e
    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    #@30
    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    #@33
    move-result-object v2

    #@34
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v1

    #@38
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3b
    move-result-object v1

    #@3c
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    #@3f
    .line 1416
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    #@42
    .line 1405
    return-void
.end method

.method public sendImsGsmSms(Ljava/lang/String;Ljava/lang/String;IILandroid/os/Message;)V
    .locals 3
    .param p1, "smscPDU"    # Ljava/lang/String;
    .param p2, "pdu"    # Ljava/lang/String;
    .param p3, "retry"    # I
    .param p4, "messageRef"    # I
    .param p5, "result"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1391
    const/16 v1, 0x71

    #@2
    invoke-static {v1, p5}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    #@5
    move-result-object v0

    #@6
    .line 1393
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@8
    const/4 v2, 0x1

    #@9
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@c
    .line 1394
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@e
    int-to-byte v2, p3

    #@f
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeByte(B)V

    #@12
    .line 1395
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@14
    invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeInt(I)V

    #@17
    .line 1397
    invoke-direct {p0, v0, p1, p2}, Lcom/android/internal/telephony/RIL;->constructGsmSendSmsRilRequest(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/String;)V

    #@1a
    .line 1399
    new-instance v1, Ljava/lang/StringBuilder;

    #@1c
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1f
    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    #@22
    move-result-object v2

    #@23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v1

    #@27
    const-string/jumbo v2, "> "

    #@2a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v1

    #@2e
    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    #@30
    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    #@33
    move-result-object v2

    #@34
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v1

    #@38
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3b
    move-result-object v1

    #@3c
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    #@3f
    .line 1401
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    #@42
    .line 1390
    return-void
.end method

.method public sendSMS(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .param p1, "smscPDU"    # Ljava/lang/String;
    .param p2, "pdu"    # Ljava/lang/String;
    .param p3, "result"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1314
    const/16 v1, 0x19

    #@2
    invoke-static {v1, p3}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    #@5
    move-result-object v0

    #@6
    .line 1316
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    invoke-direct {p0, v0, p1, p2}, Lcom/android/internal/telephony/RIL;->constructGsmSendSmsRilRequest(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/String;)V

    #@9
    .line 1318
    new-instance v1, Ljava/lang/StringBuilder;

    #@b
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    #@11
    move-result-object v2

    #@12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v1

    #@16
    const-string/jumbo v2, "> "

    #@19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v1

    #@1d
    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    #@1f
    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    #@22
    move-result-object v2

    #@23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v1

    #@27
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2a
    move-result-object v1

    #@2b
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    #@2e
    .line 1320
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    #@31
    .line 1312
    return-void
.end method

.method public sendSMSExpectMore(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .param p1, "smscPDU"    # Ljava/lang/String;
    .param p2, "pdu"    # Ljava/lang/String;
    .param p3, "result"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1327
    const/16 v1, 0x1a

    #@2
    invoke-static {v1, p3}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    #@5
    move-result-object v0

    #@6
    .line 1329
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    invoke-direct {p0, v0, p1, p2}, Lcom/android/internal/telephony/RIL;->constructGsmSendSmsRilRequest(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/String;)V

    #@9
    .line 1331
    new-instance v1, Ljava/lang/StringBuilder;

    #@b
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    #@11
    move-result-object v2

    #@12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v1

    #@16
    const-string/jumbo v2, "> "

    #@19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v1

    #@1d
    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    #@1f
    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    #@22
    move-result-object v2

    #@23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v1

    #@27
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2a
    move-result-object v1

    #@2b
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    #@2e
    .line 1333
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    #@31
    .line 1325
    return-void
.end method

.method public sendTerminalResponse(Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .param p1, "contents"    # Ljava/lang/String;
    .param p2, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 2019
    const/16 v1, 0x46

    #@2
    .line 2018
    invoke-static {v1, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    #@5
    move-result-object v0

    #@6
    .line 2021
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    #@e
    move-result-object v2

    #@f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    const-string/jumbo v2, "> "

    #@16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    #@1c
    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    #@1f
    move-result-object v2

    #@20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v1

    #@24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@27
    move-result-object v1

    #@28
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    #@2b
    .line 2023
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@2d
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@30
    .line 2024
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    #@33
    .line 2017
    return-void
.end method

.method public sendUSSD(Ljava/lang/String;Landroid/os/Message;)V
    .locals 4
    .param p1, "ussdString"    # Ljava/lang/String;
    .param p2, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1911
    const/16 v2, 0x1d

    #@2
    invoke-static {v2, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    #@5
    move-result-object v1

    #@6
    .line 1914
    .local v1, "rr":Lcom/android/internal/telephony/RILRequest;
    const-string/jumbo v0, "*******"

    #@9
    .line 1916
    .local v0, "logUssdString":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    #@b
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    #@11
    move-result-object v3

    #@12
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v2

    #@16
    const-string/jumbo v3, "> "

    #@19
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v2

    #@1d
    iget v3, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    #@1f
    invoke-static {v3}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    #@22
    move-result-object v3

    #@23
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v2

    #@27
    .line 1917
    const-string/jumbo v3, " "

    #@2a
    .line 1916
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v2

    #@2e
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v2

    #@32
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@35
    move-result-object v2

    #@36
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    #@39
    .line 1920
    iget-object v2, v1, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@3b
    invoke-virtual {v2, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@3e
    .line 1922
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    #@41
    .line 1909
    return-void
.end method

.method public separateConnection(ILandroid/os/Message;)V
    .locals 3
    .param p1, "gsmIndex"    # I
    .param p2, "result"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1092
    const/16 v1, 0x34

    #@2
    invoke-static {v1, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    #@5
    move-result-object v0

    #@6
    .line 1094
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    #@e
    move-result-object v2

    #@f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    const-string/jumbo v2, "> "

    #@16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    #@1c
    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    #@1f
    move-result-object v2

    #@20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v1

    #@24
    .line 1095
    const-string/jumbo v2, " "

    #@27
    .line 1094
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v1

    #@2b
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v1

    #@2f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@32
    move-result-object v1

    #@33
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    #@36
    .line 1097
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@38
    const/4 v2, 0x1

    #@39
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@3c
    .line 1098
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@3e
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@41
    .line 1100
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    #@44
    .line 1090
    return-void
.end method

.method public setBandMode(ILandroid/os/Message;)V
    .locals 3
    .param p1, "bandMode"    # I
    .param p2, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1983
    const/16 v1, 0x41

    #@2
    invoke-static {v1, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    #@5
    move-result-object v0

    #@6
    .line 1985
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@8
    const/4 v2, 0x1

    #@9
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@c
    .line 1986
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@e
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 1988
    new-instance v1, Ljava/lang/StringBuilder;

    #@13
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@16
    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    #@19
    move-result-object v2

    #@1a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v1

    #@1e
    const-string/jumbo v2, "> "

    #@21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v1

    #@25
    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    #@27
    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    #@2a
    move-result-object v2

    #@2b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v1

    #@2f
    .line 1989
    const-string/jumbo v2, " "

    #@32
    .line 1988
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v1

    #@36
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@39
    move-result-object v1

    #@3a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3d
    move-result-object v1

    #@3e
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    #@41
    .line 1991
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    #@44
    .line 1981
    return-void
.end method

.method public setCLIR(ILandroid/os/Message;)V
    .locals 3
    .param p1, "clirMode"    # I
    .param p2, "result"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1686
    const/16 v1, 0x20

    #@2
    invoke-static {v1, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    #@5
    move-result-object v0

    #@6
    .line 1689
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@8
    const/4 v2, 0x1

    #@9
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@c
    .line 1691
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@e
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 1693
    new-instance v1, Ljava/lang/StringBuilder;

    #@13
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@16
    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    #@19
    move-result-object v2

    #@1a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v1

    #@1e
    const-string/jumbo v2, "> "

    #@21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v1

    #@25
    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    #@27
    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    #@2a
    move-result-object v2

    #@2b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v1

    #@2f
    .line 1694
    const-string/jumbo v2, " "

    #@32
    .line 1693
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v1

    #@36
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@39
    move-result-object v1

    #@3a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3d
    move-result-object v1

    #@3e
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    #@41
    .line 1696
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    #@44
    .line 1684
    return-void
.end method

.method public setCallForward(IIILjava/lang/String;ILandroid/os/Message;)V
    .locals 3
    .param p1, "action"    # I
    .param p2, "cfReason"    # I
    .param p3, "serviceClass"    # I
    .param p4, "number"    # Ljava/lang/String;
    .param p5, "timeSeconds"    # I
    .param p6, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1786
    const/16 v1, 0x22

    #@2
    invoke-static {v1, p6}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    #@5
    move-result-object v0

    #@6
    .line 1788
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@8
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@b
    .line 1789
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@d
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@10
    .line 1790
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@12
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeInt(I)V

    #@15
    .line 1791
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@17
    invoke-static {p4}, Landroid/telephony/PhoneNumberUtils;->toaFromString(Ljava/lang/String;)I

    #@1a
    move-result v2

    #@1b
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@1e
    .line 1792
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@20
    invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@23
    .line 1793
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@25
    invoke-virtual {v1, p5}, Landroid/os/Parcel;->writeInt(I)V

    #@28
    .line 1795
    new-instance v1, Ljava/lang/StringBuilder;

    #@2a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@2d
    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    #@30
    move-result-object v2

    #@31
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v1

    #@35
    const-string/jumbo v2, "> "

    #@38
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v1

    #@3c
    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    #@3e
    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    #@41
    move-result-object v2

    #@42
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v1

    #@46
    .line 1796
    const-string/jumbo v2, " "

    #@49
    .line 1795
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v1

    #@4d
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@50
    move-result-object v1

    #@51
    .line 1796
    const-string/jumbo v2, " "

    #@54
    .line 1795
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@57
    move-result-object v1

    #@58
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@5b
    move-result-object v1

    #@5c
    .line 1796
    const-string/jumbo v2, " "

    #@5f
    .line 1795
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@62
    move-result-object v1

    #@63
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@66
    move-result-object v1

    #@67
    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@6a
    move-result-object v1

    #@6b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6e
    move-result-object v1

    #@6f
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    #@72
    .line 1799
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    #@75
    .line 1784
    return-void
.end method

.method public setCallWaiting(ZILandroid/os/Message;)V
    .locals 3
    .param p1, "enable"    # Z
    .param p2, "serviceClass"    # I
    .param p3, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1718
    const/16 v1, 0x24

    #@2
    invoke-static {v1, p3}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    #@5
    move-result-object v0

    #@6
    .line 1720
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@8
    const/4 v2, 0x2

    #@9
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@c
    .line 1721
    iget-object v2, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@e
    if-eqz p1, :cond_0

    #@10
    const/4 v1, 0x1

    #@11
    :goto_0
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 1722
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@16
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@19
    .line 1724
    new-instance v1, Ljava/lang/StringBuilder;

    #@1b
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1e
    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    #@21
    move-result-object v2

    #@22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v1

    #@26
    const-string/jumbo v2, "> "

    #@29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v1

    #@2d
    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    #@2f
    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    #@32
    move-result-object v2

    #@33
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v1

    #@37
    .line 1725
    const-string/jumbo v2, " "

    #@3a
    .line 1724
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v1

    #@3e
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@41
    move-result-object v1

    #@42
    .line 1725
    const-string/jumbo v2, ", "

    #@45
    .line 1724
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v1

    #@49
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v1

    #@4d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@50
    move-result-object v1

    #@51
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    #@54
    .line 1727
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    #@57
    .line 1716
    return-void

    #@58
    .line 1721
    :cond_0
    const/4 v1, 0x0

    #@59
    goto :goto_0
.end method

.method public setCdmaBroadcastActivation(ZLandroid/os/Message;)V
    .locals 3
    .param p1, "activate"    # Z
    .param p2, "response"    # Landroid/os/Message;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 4501
    const/16 v2, 0x5e

    #@3
    invoke-static {v2, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    #@6
    move-result-object v0

    #@7
    .line 4503
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    iget-object v2, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@9
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@c
    .line 4504
    iget-object v2, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@e
    if-eqz p1, :cond_0

    #@10
    const/4 v1, 0x0

    #@11
    :cond_0
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 4506
    new-instance v1, Ljava/lang/StringBuilder;

    #@16
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@19
    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    #@1c
    move-result-object v2

    #@1d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v1

    #@21
    const-string/jumbo v2, "> "

    #@24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v1

    #@28
    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    #@2a
    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    #@2d
    move-result-object v2

    #@2e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v1

    #@32
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@35
    move-result-object v1

    #@36
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    #@39
    .line 4508
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    #@3c
    .line 4500
    return-void
.end method

.method public setCdmaBroadcastConfig([Lcom/android/internal/telephony/cdma/CdmaSmsBroadcastConfigInfo;Landroid/os/Message;)V
    .locals 11
    .param p1, "configs"    # [Lcom/android/internal/telephony/cdma/CdmaSmsBroadcastConfigInfo;
    .param p2, "response"    # Landroid/os/Message;

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 4466
    const/16 v5, 0x5d

    #@3
    invoke-static {v5, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    #@6
    move-result-object v4

    #@7
    .line 4470
    .local v4, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v2, Ljava/util/ArrayList;

    #@9
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@c
    .line 4471
    .local v2, "processedConfigs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/cdma/CdmaSmsBroadcastConfigInfo;>;"
    array-length v7, p1

    #@d
    move v5, v6

    #@e
    :goto_0
    if-ge v5, v7, :cond_1

    #@10
    aget-object v0, p1, v5

    #@12
    .line 4472
    .local v0, "config":Lcom/android/internal/telephony/cdma/CdmaSmsBroadcastConfigInfo;
    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaSmsBroadcastConfigInfo;->getFromServiceCategory()I

    #@15
    move-result v1

    #@16
    .local v1, "i":I
    :goto_1
    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaSmsBroadcastConfigInfo;->getToServiceCategory()I

    #@19
    move-result v8

    #@1a
    if-gt v1, v8, :cond_0

    #@1c
    .line 4473
    new-instance v8, Lcom/android/internal/telephony/cdma/CdmaSmsBroadcastConfigInfo;

    #@1e
    .line 4475
    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaSmsBroadcastConfigInfo;->getLanguage()I

    #@21
    move-result v9

    #@22
    .line 4476
    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaSmsBroadcastConfigInfo;->isSelected()Z

    #@25
    move-result v10

    #@26
    .line 4473
    invoke-direct {v8, v1, v1, v9, v10}, Lcom/android/internal/telephony/cdma/CdmaSmsBroadcastConfigInfo;-><init>(IIIZ)V

    #@29
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@2c
    .line 4472
    add-int/lit8 v1, v1, 0x1

    #@2e
    goto :goto_1

    #@2f
    .line 4471
    :cond_0
    add-int/lit8 v5, v5, 0x1

    #@31
    goto :goto_0

    #@32
    .line 4480
    .end local v0    # "config":Lcom/android/internal/telephony/cdma/CdmaSmsBroadcastConfigInfo;
    .end local v1    # "i":I
    :cond_1
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@35
    move-result-object v3

    #@36
    check-cast v3, [Lcom/android/internal/telephony/cdma/CdmaSmsBroadcastConfigInfo;

    #@38
    .line 4481
    .local v3, "rilConfigs":[Lcom/android/internal/telephony/cdma/CdmaSmsBroadcastConfigInfo;
    iget-object v5, v4, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@3a
    array-length v7, v3

    #@3b
    invoke-virtual {v5, v7}, Landroid/os/Parcel;->writeInt(I)V

    #@3e
    .line 4482
    const/4 v1, 0x0

    #@3f
    .restart local v1    # "i":I
    :goto_2
    array-length v5, v3

    #@40
    if-ge v1, v5, :cond_3

    #@42
    .line 4483
    iget-object v5, v4, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@44
    aget-object v7, v3, v1

    #@46
    invoke-virtual {v7}, Lcom/android/internal/telephony/cdma/CdmaSmsBroadcastConfigInfo;->getFromServiceCategory()I

    #@49
    move-result v7

    #@4a
    invoke-virtual {v5, v7}, Landroid/os/Parcel;->writeInt(I)V

    #@4d
    .line 4484
    iget-object v5, v4, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@4f
    aget-object v7, v3, v1

    #@51
    invoke-virtual {v7}, Lcom/android/internal/telephony/cdma/CdmaSmsBroadcastConfigInfo;->getLanguage()I

    #@54
    move-result v7

    #@55
    invoke-virtual {v5, v7}, Landroid/os/Parcel;->writeInt(I)V

    #@58
    .line 4485
    iget-object v7, v4, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@5a
    aget-object v5, v3, v1

    #@5c
    invoke-virtual {v5}, Lcom/android/internal/telephony/cdma/CdmaSmsBroadcastConfigInfo;->isSelected()Z

    #@5f
    move-result v5

    #@60
    if-eqz v5, :cond_2

    #@62
    const/4 v5, 0x1

    #@63
    :goto_3
    invoke-virtual {v7, v5}, Landroid/os/Parcel;->writeInt(I)V

    #@66
    .line 4482
    add-int/lit8 v1, v1, 0x1

    #@68
    goto :goto_2

    #@69
    :cond_2
    move v5, v6

    #@6a
    .line 4485
    goto :goto_3

    #@6b
    .line 4489
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    #@6d
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@70
    invoke-virtual {v4}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    #@73
    move-result-object v6

    #@74
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@77
    move-result-object v5

    #@78
    const-string/jumbo v6, "> "

    #@7b
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7e
    move-result-object v5

    #@7f
    iget v6, v4, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    #@81
    invoke-static {v6}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    #@84
    move-result-object v6

    #@85
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@88
    move-result-object v5

    #@89
    .line 4490
    const-string/jumbo v6, " with "

    #@8c
    .line 4489
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8f
    move-result-object v5

    #@90
    .line 4490
    array-length v6, v3

    #@91
    .line 4489
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@94
    move-result-object v5

    #@95
    .line 4490
    const-string/jumbo v6, " configs : "

    #@98
    .line 4489
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9b
    move-result-object v5

    #@9c
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9f
    move-result-object v5

    #@a0
    invoke-direct {p0, v5}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    #@a3
    .line 4491
    const/4 v1, 0x0

    #@a4
    :goto_4
    array-length v5, v3

    #@a5
    if-ge v1, v5, :cond_4

    #@a7
    .line 4492
    aget-object v5, v3, v1

    #@a9
    invoke-virtual {v5}, Lcom/android/internal/telephony/cdma/CdmaSmsBroadcastConfigInfo;->toString()Ljava/lang/String;

    #@ac
    move-result-object v5

    #@ad
    invoke-direct {p0, v5}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    #@b0
    .line 4491
    add-int/lit8 v1, v1, 0x1

    #@b2
    goto :goto_4

    #@b3
    .line 4496
    :cond_4
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    #@b6
    .line 4465
    return-void
.end method

.method public setCdmaRoamingPreference(ILandroid/os/Message;)V
    .locals 3
    .param p1, "cdmaRoamingType"    # I
    .param p2, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 4370
    const/16 v1, 0x4e

    #@2
    .line 4369
    invoke-static {v1, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    #@5
    move-result-object v0

    #@6
    .line 4372
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@8
    const/4 v2, 0x1

    #@9
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@c
    .line 4373
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@e
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 4375
    new-instance v1, Ljava/lang/StringBuilder;

    #@13
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@16
    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    #@19
    move-result-object v2

    #@1a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v1

    #@1e
    const-string/jumbo v2, "> "

    #@21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v1

    #@25
    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    #@27
    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    #@2a
    move-result-object v2

    #@2b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v1

    #@2f
    .line 4376
    const-string/jumbo v2, " : "

    #@32
    .line 4375
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v1

    #@36
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@39
    move-result-object v1

    #@3a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3d
    move-result-object v1

    #@3e
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    #@41
    .line 4378
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    #@44
    .line 4368
    return-void
.end method

.method public setCdmaSubscriptionSource(ILandroid/os/Message;)V
    .locals 3
    .param p1, "cdmaSubscription"    # I
    .param p2, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 4387
    const/16 v1, 0x4d

    #@2
    .line 4386
    invoke-static {v1, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    #@5
    move-result-object v0

    #@6
    .line 4389
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@8
    const/4 v2, 0x1

    #@9
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@c
    .line 4390
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@e
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 4392
    new-instance v1, Ljava/lang/StringBuilder;

    #@13
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@16
    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    #@19
    move-result-object v2

    #@1a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v1

    #@1e
    const-string/jumbo v2, "> "

    #@21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v1

    #@25
    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    #@27
    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    #@2a
    move-result-object v2

    #@2b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v1

    #@2f
    .line 4393
    const-string/jumbo v2, " : "

    #@32
    .line 4392
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v1

    #@36
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@39
    move-result-object v1

    #@3a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3d
    move-result-object v1

    #@3e
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    #@41
    .line 4395
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    #@44
    .line 4385
    return-void
.end method

.method public setCellInfoListRate(ILandroid/os/Message;)V
    .locals 3
    .param p1, "rateInMillis"    # I
    .param p2, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 4565
    new-instance v1, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v2, "setCellInfoListRate: "

    #@8
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v1

    #@c
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@f
    move-result-object v1

    #@10
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13
    move-result-object v1

    #@14
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    #@17
    .line 4566
    const/16 v1, 0x6e

    #@19
    invoke-static {v1, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    #@1c
    move-result-object v0

    #@1d
    .line 4568
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@1f
    const/4 v2, 0x1

    #@20
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@23
    .line 4569
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@25
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@28
    .line 4571
    new-instance v1, Ljava/lang/StringBuilder;

    #@2a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@2d
    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    #@30
    move-result-object v2

    #@31
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v1

    #@35
    const-string/jumbo v2, "> "

    #@38
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v1

    #@3c
    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    #@3e
    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    #@41
    move-result-object v2

    #@42
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v1

    #@46
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@49
    move-result-object v1

    #@4a
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    #@4d
    .line 4573
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    #@50
    .line 4564
    return-void
.end method

.method public setDataAllowed(ZLandroid/os/Message;)V
    .locals 4
    .param p1, "allowed"    # Z
    .param p2, "result"    # Landroid/os/Message;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 748
    const/16 v2, 0x7b

    #@3
    invoke-static {v2, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    #@6
    move-result-object v0

    #@7
    .line 750
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    #@f
    move-result-object v3

    #@10
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v2

    #@14
    const-string/jumbo v3, "> "

    #@17
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v2

    #@1b
    iget v3, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    #@1d
    invoke-static {v3}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    #@20
    move-result-object v3

    #@21
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v2

    #@25
    .line 751
    const-string/jumbo v3, " allowed: "

    #@28
    .line 750
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v2

    #@2c
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v2

    #@30
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@33
    move-result-object v2

    #@34
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    #@37
    .line 754
    iget-object v2, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@39
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@3c
    .line 755
    iget-object v2, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@3e
    if-eqz p1, :cond_0

    #@40
    :goto_0
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@43
    .line 756
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    #@46
    .line 747
    return-void

    #@47
    .line 755
    :cond_0
    const/4 v1, 0x0

    #@48
    goto :goto_0
.end method

.method public setDataProfile([Lcom/android/internal/telephony/dataconnection/DataProfile;Landroid/os/Message;)V
    .locals 4
    .param p1, "dps"    # [Lcom/android/internal/telephony/dataconnection/DataProfile;
    .param p2, "result"    # Landroid/os/Message;

    #@0
    .prologue
    .line 4596
    const-string/jumbo v2, "Set RIL_REQUEST_SET_DATA_PROFILE"

    #@3
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    #@6
    .line 4598
    const/16 v2, 0x80

    #@8
    const/4 v3, 0x0

    #@9
    invoke-static {v2, v3}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    #@c
    move-result-object v1

    #@d
    .line 4599
    .local v1, "rr":Lcom/android/internal/telephony/RILRequest;
    iget-object v2, v1, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@f
    invoke-static {v2, p1}, Lcom/android/internal/telephony/dataconnection/DataProfile;->toParcel(Landroid/os/Parcel;[Lcom/android/internal/telephony/dataconnection/DataProfile;)Landroid/os/Parcel;

    #@12
    .line 4602
    new-instance v2, Ljava/lang/StringBuilder;

    #@14
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@17
    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    #@1a
    move-result-object v3

    #@1b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v2

    #@1f
    const-string/jumbo v3, "> "

    #@22
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v2

    #@26
    iget v3, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    #@28
    invoke-static {v3}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    #@2b
    move-result-object v3

    #@2c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v2

    #@30
    .line 4603
    const-string/jumbo v3, " with "

    #@33
    .line 4602
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v2

    #@37
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v2

    #@3b
    .line 4603
    const-string/jumbo v3, " Data Profiles : "

    #@3e
    .line 4602
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v2

    #@42
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@45
    move-result-object v2

    #@46
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    #@49
    .line 4604
    const/4 v0, 0x0

    #@4a
    .local v0, "i":I
    :goto_0
    array-length v2, p1

    #@4b
    if-ge v0, v2, :cond_0

    #@4d
    .line 4605
    aget-object v2, p1, v0

    #@4f
    invoke-virtual {v2}, Lcom/android/internal/telephony/dataconnection/DataProfile;->toString()Ljava/lang/String;

    #@52
    move-result-object v2

    #@53
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    #@56
    .line 4604
    add-int/lit8 v0, v0, 0x1

    #@58
    goto :goto_0

    #@59
    .line 4609
    :cond_0
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    #@5c
    .line 4595
    return-void
.end method

.method public setFacilityLock(Ljava/lang/String;ZLjava/lang/String;ILandroid/os/Message;)V
    .locals 7
    .param p1, "facility"    # Ljava/lang/String;
    .param p2, "lockState"    # Z
    .param p3, "password"    # Ljava/lang/String;
    .param p4, "serviceClass"    # I
    .param p5, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1878
    const/4 v5, 0x0

    #@1
    move-object v0, p0

    #@2
    move-object v1, p1

    #@3
    move v2, p2

    #@4
    move-object v3, p3

    #@5
    move v4, p4

    #@6
    move-object v6, p5

    #@7
    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/RIL;->setFacilityLockForApp(Ljava/lang/String;ZLjava/lang/String;ILjava/lang/String;Landroid/os/Message;)V

    #@a
    .line 1877
    return-void
.end method

.method public setFacilityLockForApp(Ljava/lang/String;ZLjava/lang/String;ILjava/lang/String;Landroid/os/Message;)V
    .locals 4
    .param p1, "facility"    # Ljava/lang/String;
    .param p2, "lockState"    # Z
    .param p3, "password"    # Ljava/lang/String;
    .param p4, "serviceClass"    # I
    .param p5, "appId"    # Ljava/lang/String;
    .param p6, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1887
    const/16 v2, 0x2b

    #@2
    invoke-static {v2, p6}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    #@5
    move-result-object v1

    #@6
    .line 1889
    .local v1, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    #@e
    move-result-object v3

    #@f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v2

    #@13
    const-string/jumbo v3, "> "

    #@16
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v2

    #@1a
    iget v3, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    #@1c
    invoke-static {v3}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    #@1f
    move-result-object v3

    #@20
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v2

    #@24
    .line 1890
    const-string/jumbo v3, " ["

    #@27
    .line 1889
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v2

    #@2b
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v2

    #@2f
    .line 1890
    const-string/jumbo v3, " "

    #@32
    .line 1889
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v2

    #@36
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@39
    move-result-object v2

    #@3a
    .line 1891
    const-string/jumbo v3, " "

    #@3d
    .line 1889
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v2

    #@41
    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@44
    move-result-object v2

    #@45
    .line 1891
    const-string/jumbo v3, " "

    #@48
    .line 1889
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v2

    #@4c
    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v2

    #@50
    .line 1891
    const-string/jumbo v3, "]"

    #@53
    .line 1889
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@56
    move-result-object v2

    #@57
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5a
    move-result-object v2

    #@5b
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    #@5e
    .line 1894
    iget-object v2, v1, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@60
    const/4 v3, 0x5

    #@61
    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@64
    .line 1896
    iget-object v2, v1, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@66
    invoke-virtual {v2, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@69
    .line 1897
    if-eqz p2, :cond_0

    #@6b
    const-string/jumbo v0, "1"

    #@6e
    .line 1898
    .local v0, "lockString":Ljava/lang/String;
    :goto_0
    iget-object v2, v1, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@70
    invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@73
    .line 1899
    iget-object v2, v1, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@75
    invoke-virtual {v2, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@78
    .line 1900
    iget-object v2, v1, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@7a
    invoke-static {p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@7d
    move-result-object v3

    #@7e
    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@81
    .line 1901
    iget-object v2, v1, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@83
    invoke-virtual {v2, p5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@86
    .line 1903
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    #@89
    .line 1884
    return-void

    #@8a
    .line 1897
    .end local v0    # "lockString":Ljava/lang/String;
    :cond_0
    const-string/jumbo v0, "0"

    #@8d
    .restart local v0    # "lockString":Ljava/lang/String;
    goto :goto_0
.end method

.method public setGsmBroadcastActivation(ZLandroid/os/Message;)V
    .locals 3
    .param p1, "activate"    # Z
    .param p2, "response"    # Landroid/os/Message;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 2235
    const/16 v2, 0x5b

    #@3
    invoke-static {v2, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    #@6
    move-result-object v0

    #@7
    .line 2237
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    iget-object v2, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@9
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@c
    .line 2238
    iget-object v2, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@e
    if-eqz p1, :cond_0

    #@10
    const/4 v1, 0x0

    #@11
    :cond_0
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 2240
    new-instance v1, Ljava/lang/StringBuilder;

    #@16
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@19
    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    #@1c
    move-result-object v2

    #@1d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v1

    #@21
    const-string/jumbo v2, "> "

    #@24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v1

    #@28
    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    #@2a
    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    #@2d
    move-result-object v2

    #@2e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v1

    #@32
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@35
    move-result-object v1

    #@36
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    #@39
    .line 2242
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    #@3c
    .line 2234
    return-void
.end method

.method public setGsmBroadcastConfig([Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;Landroid/os/Message;)V
    .locals 5
    .param p1, "config"    # [Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;
    .param p2, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 2206
    const/16 v3, 0x5a

    #@2
    invoke-static {v3, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    #@5
    move-result-object v2

    #@6
    .line 2208
    .local v2, "rr":Lcom/android/internal/telephony/RILRequest;
    array-length v1, p1

    #@7
    .line 2209
    .local v1, "numOfConfig":I
    iget-object v3, v2, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@9
    invoke-virtual {v3, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@c
    .line 2211
    const/4 v0, 0x0

    #@d
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    #@f
    .line 2212
    iget-object v3, v2, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@11
    aget-object v4, p1, v0

    #@13
    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->getFromServiceId()I

    #@16
    move-result v4

    #@17
    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@1a
    .line 2213
    iget-object v3, v2, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@1c
    aget-object v4, p1, v0

    #@1e
    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->getToServiceId()I

    #@21
    move-result v4

    #@22
    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@25
    .line 2214
    iget-object v3, v2, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@27
    aget-object v4, p1, v0

    #@29
    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->getFromCodeScheme()I

    #@2c
    move-result v4

    #@2d
    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@30
    .line 2215
    iget-object v3, v2, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@32
    aget-object v4, p1, v0

    #@34
    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->getToCodeScheme()I

    #@37
    move-result v4

    #@38
    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@3b
    .line 2216
    iget-object v4, v2, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@3d
    aget-object v3, p1, v0

    #@3f
    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->isSelected()Z

    #@42
    move-result v3

    #@43
    if-eqz v3, :cond_0

    #@45
    const/4 v3, 0x1

    #@46
    :goto_1
    invoke-virtual {v4, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@49
    .line 2211
    add-int/lit8 v0, v0, 0x1

    #@4b
    goto :goto_0

    #@4c
    .line 2216
    :cond_0
    const/4 v3, 0x0

    #@4d
    goto :goto_1

    #@4e
    .line 2220
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    #@50
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@53
    invoke-virtual {v2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    #@56
    move-result-object v4

    #@57
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v3

    #@5b
    const-string/jumbo v4, "> "

    #@5e
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@61
    move-result-object v3

    #@62
    iget v4, v2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    #@64
    invoke-static {v4}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    #@67
    move-result-object v4

    #@68
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6b
    move-result-object v3

    #@6c
    .line 2221
    const-string/jumbo v4, " with "

    #@6f
    .line 2220
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@72
    move-result-object v3

    #@73
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@76
    move-result-object v3

    #@77
    .line 2221
    const-string/jumbo v4, " configs : "

    #@7a
    .line 2220
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7d
    move-result-object v3

    #@7e
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@81
    move-result-object v3

    #@82
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    #@85
    .line 2222
    const/4 v0, 0x0

    #@86
    :goto_2
    if-ge v0, v1, :cond_2

    #@88
    .line 2223
    aget-object v3, p1, v0

    #@8a
    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->toString()Ljava/lang/String;

    #@8d
    move-result-object v3

    #@8e
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    #@91
    .line 2222
    add-int/lit8 v0, v0, 0x1

    #@93
    goto :goto_2

    #@94
    .line 2227
    :cond_2
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    #@97
    .line 2205
    return-void
.end method

.method public setInitialAttachApn(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .param p1, "apn"    # Ljava/lang/String;
    .param p2, "protocol"    # Ljava/lang/String;
    .param p3, "authType"    # I
    .param p4, "username"    # Ljava/lang/String;
    .param p5, "password"    # Ljava/lang/String;
    .param p6, "result"    # Landroid/os/Message;

    #@0
    .prologue
    .line 4578
    const/16 v1, 0x6f

    #@2
    const/4 v2, 0x0

    #@3
    invoke-static {v1, v2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    #@6
    move-result-object v0

    #@7
    .line 4580
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    const-string/jumbo v1, "Set RIL_REQUEST_SET_INITIAL_ATTACH_APN"

    #@a
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    #@d
    .line 4582
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@f
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@12
    .line 4583
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@14
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@17
    .line 4584
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@19
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeInt(I)V

    #@1c
    .line 4585
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@1e
    invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@21
    .line 4586
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@23
    invoke-virtual {v1, p5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@26
    .line 4588
    new-instance v1, Ljava/lang/StringBuilder;

    #@28
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@2b
    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    #@2e
    move-result-object v2

    #@2f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v1

    #@33
    const-string/jumbo v2, "> "

    #@36
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v1

    #@3a
    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    #@3c
    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    #@3f
    move-result-object v2

    #@40
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v1

    #@44
    .line 4589
    const-string/jumbo v2, ", apn:"

    #@47
    .line 4588
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v1

    #@4b
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v1

    #@4f
    .line 4589
    const-string/jumbo v2, ", protocol:"

    #@52
    .line 4588
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@55
    move-result-object v1

    #@56
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@59
    move-result-object v1

    #@5a
    .line 4589
    const-string/jumbo v2, ", authType:"

    #@5d
    .line 4588
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@60
    move-result-object v1

    #@61
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@64
    move-result-object v1

    #@65
    .line 4590
    const-string/jumbo v2, ", username:"

    #@68
    .line 4588
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6b
    move-result-object v1

    #@6c
    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6f
    move-result-object v1

    #@70
    .line 4590
    const-string/jumbo v2, ", password:"

    #@73
    .line 4588
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@76
    move-result-object v1

    #@77
    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7a
    move-result-object v1

    #@7b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7e
    move-result-object v1

    #@7f
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    #@82
    .line 4592
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    #@85
    .line 4577
    return-void
.end method

.method public setLocationUpdates(ZLandroid/os/Message;)V
    .locals 3
    .param p1, "enable"    # Z
    .param p2, "response"    # Landroid/os/Message;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 2125
    const/16 v2, 0x4c

    #@3
    invoke-static {v2, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    #@6
    move-result-object v0

    #@7
    .line 2126
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    iget-object v2, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@9
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@c
    .line 2127
    iget-object v2, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@e
    if-eqz p1, :cond_0

    #@10
    :goto_0
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@13
    .line 2129
    new-instance v1, Ljava/lang/StringBuilder;

    #@15
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@18
    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    #@1b
    move-result-object v2

    #@1c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v1

    #@20
    const-string/jumbo v2, "> "

    #@23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v1

    #@27
    .line 2130
    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    #@29
    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    #@2c
    move-result-object v2

    #@2d
    .line 2129
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v1

    #@31
    .line 2130
    const-string/jumbo v2, ": "

    #@34
    .line 2129
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v1

    #@38
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v1

    #@3c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3f
    move-result-object v1

    #@40
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    #@43
    .line 2132
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    #@46
    .line 2124
    return-void

    #@47
    .line 2127
    :cond_0
    const/4 v1, 0x0

    #@48
    goto :goto_0
.end method

.method public setMute(ZLandroid/os/Message;)V
    .locals 4
    .param p1, "enableMute"    # Z
    .param p2, "response"    # Landroid/os/Message;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 1175
    const/16 v2, 0x35

    #@3
    invoke-static {v2, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    #@6
    move-result-object v0

    #@7
    .line 1177
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    #@f
    move-result-object v3

    #@10
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v2

    #@14
    const-string/jumbo v3, "> "

    #@17
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v2

    #@1b
    iget v3, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    #@1d
    invoke-static {v3}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    #@20
    move-result-object v3

    #@21
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v2

    #@25
    .line 1178
    const-string/jumbo v3, " "

    #@28
    .line 1177
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v2

    #@2c
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v2

    #@30
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@33
    move-result-object v2

    #@34
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    #@37
    .line 1180
    iget-object v2, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@39
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@3c
    .line 1181
    iget-object v2, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@3e
    if-eqz p1, :cond_0

    #@40
    :goto_0
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@43
    .line 1183
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    #@46
    .line 1173
    return-void

    #@47
    .line 1181
    :cond_0
    const/4 v1, 0x0

    #@48
    goto :goto_0
.end method

.method public setNetworkSelectionModeAutomatic(Landroid/os/Message;)V
    .locals 3
    .param p1, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1734
    const/16 v1, 0x2e

    #@2
    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    #@5
    move-result-object v0

    #@6
    .line 1737
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    #@e
    move-result-object v2

    #@f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    const-string/jumbo v2, "> "

    #@16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    #@1c
    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    #@1f
    move-result-object v2

    #@20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v1

    #@24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@27
    move-result-object v1

    #@28
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    #@2b
    .line 1739
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    #@2e
    .line 1732
    return-void
.end method

.method public setNetworkSelectionModeManual(Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .param p1, "operatorNumeric"    # Ljava/lang/String;
    .param p2, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1746
    const/16 v1, 0x2f

    #@2
    invoke-static {v1, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    #@5
    move-result-object v0

    #@6
    .line 1749
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    #@e
    move-result-object v2

    #@f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    const-string/jumbo v2, "> "

    #@16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    #@1c
    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    #@1f
    move-result-object v2

    #@20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v1

    #@24
    .line 1750
    const-string/jumbo v2, " "

    #@27
    .line 1749
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v1

    #@2b
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v1

    #@2f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@32
    move-result-object v1

    #@33
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    #@36
    .line 1752
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@38
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@3b
    .line 1754
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    #@3e
    .line 1744
    return-void
.end method

.method public setOnNITZTime(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 4
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 707
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/telephony/BaseCommands;->setOnNITZTime(Landroid/os/Handler;ILjava/lang/Object;)V

    #@4
    .line 710
    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mLastNITZTimeInfo:Ljava/lang/Object;

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 711
    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mNITZTimeRegistrant:Landroid/os/Registrant;

    #@a
    .line 713
    new-instance v1, Landroid/os/AsyncResult;

    #@c
    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mLastNITZTimeInfo:Ljava/lang/Object;

    #@e
    invoke-direct {v1, v3, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    #@11
    .line 711
    invoke-virtual {v0, v1}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    #@14
    .line 706
    :cond_0
    return-void
.end method

.method public setPhoneType(I)V
    .locals 2
    .param p1, "phoneType"    # I

    #@0
    .prologue
    .line 4347
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "setPhoneType="

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@f
    move-result-object v0

    #@10
    const-string/jumbo v1, " old value="

    #@13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v0

    #@17
    iget v1, p0, Lcom/android/internal/telephony/RIL;->mPhoneType:I

    #@19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v0

    #@1d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@20
    move-result-object v0

    #@21
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    #@24
    .line 4348
    iput p1, p0, Lcom/android/internal/telephony/RIL;->mPhoneType:I

    #@26
    .line 4346
    return-void
.end method

.method public setPreferredNetworkType(ILandroid/os/Message;)V
    .locals 3
    .param p1, "networkType"    # I
    .param p2, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 2081
    const/16 v1, 0x49

    #@2
    .line 2080
    invoke-static {v1, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    #@5
    move-result-object v0

    #@6
    .line 2083
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@8
    const/4 v2, 0x1

    #@9
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@c
    .line 2084
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@e
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 2086
    iput p1, p0, Lcom/android/internal/telephony/RIL;->mPreferredNetworkType:I

    #@13
    .line 2088
    new-instance v1, Ljava/lang/StringBuilder;

    #@15
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@18
    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    #@1b
    move-result-object v2

    #@1c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v1

    #@20
    const-string/jumbo v2, "> "

    #@23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v1

    #@27
    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    #@29
    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    #@2c
    move-result-object v2

    #@2d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v1

    #@31
    .line 2089
    const-string/jumbo v2, " : "

    #@34
    .line 2088
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v1

    #@38
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v1

    #@3c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3f
    move-result-object v1

    #@40
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    #@43
    .line 2091
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    #@46
    .line 2079
    return-void
.end method

.method public setPreferredVoicePrivacy(ZLandroid/os/Message;)V
    .locals 3
    .param p1, "enable"    # Z
    .param p2, "result"    # Landroid/os/Message;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 1072
    const/16 v2, 0x52

    #@3
    invoke-static {v2, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    #@6
    move-result-object v0

    #@7
    .line 1075
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    iget-object v2, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@9
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@c
    .line 1076
    iget-object v2, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@e
    if-eqz p1, :cond_0

    #@10
    :goto_0
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@13
    .line 1078
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    #@16
    .line 1071
    return-void

    #@17
    .line 1076
    :cond_0
    const/4 v1, 0x0

    #@18
    goto :goto_0
.end method

.method public setRadioCapability(Lcom/android/internal/telephony/RadioCapability;Landroid/os/Message;)V
    .locals 3
    .param p1, "rc"    # Lcom/android/internal/telephony/RadioCapability;
    .param p2, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 4772
    const/16 v1, 0x83

    #@2
    .line 4771
    invoke-static {v1, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    #@5
    move-result-object v0

    #@6
    .line 4774
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@8
    invoke-virtual {p1}, Lcom/android/internal/telephony/RadioCapability;->getVersion()I

    #@b
    move-result v2

    #@c
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@f
    .line 4775
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@11
    invoke-virtual {p1}, Lcom/android/internal/telephony/RadioCapability;->getSession()I

    #@14
    move-result v2

    #@15
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@18
    .line 4776
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@1a
    invoke-virtual {p1}, Lcom/android/internal/telephony/RadioCapability;->getPhase()I

    #@1d
    move-result v2

    #@1e
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@21
    .line 4777
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@23
    invoke-virtual {p1}, Lcom/android/internal/telephony/RadioCapability;->getRadioAccessFamily()I

    #@26
    move-result v2

    #@27
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@2a
    .line 4778
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@2c
    invoke-virtual {p1}, Lcom/android/internal/telephony/RadioCapability;->getLogicalModemUuid()Ljava/lang/String;

    #@2f
    move-result-object v2

    #@30
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@33
    .line 4779
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@35
    invoke-virtual {p1}, Lcom/android/internal/telephony/RadioCapability;->getStatus()I

    #@38
    move-result v2

    #@39
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@3c
    .line 4782
    new-instance v1, Ljava/lang/StringBuilder;

    #@3e
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@41
    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    #@44
    move-result-object v2

    #@45
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v1

    #@49
    const-string/jumbo v2, "> "

    #@4c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v1

    #@50
    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    #@52
    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    #@55
    move-result-object v2

    #@56
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@59
    move-result-object v1

    #@5a
    .line 4783
    const-string/jumbo v2, " "

    #@5d
    .line 4782
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@60
    move-result-object v1

    #@61
    .line 4783
    invoke-virtual {p1}, Lcom/android/internal/telephony/RadioCapability;->toString()Ljava/lang/String;

    #@64
    move-result-object v2

    #@65
    .line 4782
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@68
    move-result-object v1

    #@69
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6c
    move-result-object v1

    #@6d
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    #@70
    .line 4786
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    #@73
    .line 4770
    return-void
.end method

.method public setRadioPower(ZLandroid/os/Message;)V
    .locals 3
    .param p1, "on"    # Z
    .param p2, "result"    # Landroid/os/Message;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 1549
    const/16 v2, 0x17

    #@3
    invoke-static {v2, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    #@6
    move-result-object v0

    #@7
    .line 1551
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    iget-object v2, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@9
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@c
    .line 1552
    iget-object v2, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@e
    if-eqz p1, :cond_0

    #@10
    :goto_0
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@13
    .line 1555
    new-instance v1, Ljava/lang/StringBuilder;

    #@15
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@18
    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    #@1b
    move-result-object v2

    #@1c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v1

    #@20
    const-string/jumbo v2, "> "

    #@23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v1

    #@27
    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    #@29
    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    #@2c
    move-result-object v2

    #@2d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v2

    #@31
    .line 1556
    if-eqz p1, :cond_1

    #@33
    const-string/jumbo v1, " on"

    #@36
    .line 1555
    :goto_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v1

    #@3a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3d
    move-result-object v1

    #@3e
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    #@41
    .line 1559
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    #@44
    .line 1548
    return-void

    #@45
    .line 1552
    :cond_0
    const/4 v1, 0x0

    #@46
    goto :goto_0

    #@47
    .line 1556
    :cond_1
    const-string/jumbo v1, " off"

    #@4a
    goto :goto_1
.end method

.method public setSmscAddress(Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "result"    # Landroid/os/Message;

    #@0
    .prologue
    .line 2152
    const/16 v1, 0x65

    #@2
    invoke-static {v1, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    #@5
    move-result-object v0

    #@6
    .line 2154
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@8
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@b
    .line 2156
    new-instance v1, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    #@13
    move-result-object v2

    #@14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    const-string/jumbo v2, "> "

    #@1b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v1

    #@1f
    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    #@21
    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    #@24
    move-result-object v2

    #@25
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v1

    #@29
    .line 2157
    const-string/jumbo v2, " : "

    #@2c
    .line 2156
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v1

    #@30
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v1

    #@34
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@37
    move-result-object v1

    #@38
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    #@3b
    .line 2159
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    #@3e
    .line 2151
    return-void
.end method

.method public setSuppServiceNotifications(ZLandroid/os/Message;)V
    .locals 3
    .param p1, "enable"    # Z
    .param p2, "result"    # Landroid/os/Message;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 1576
    const/16 v2, 0x3e

    #@3
    invoke-static {v2, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    #@6
    move-result-object v0

    #@7
    .line 1578
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    iget-object v2, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@9
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@c
    .line 1579
    iget-object v2, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@e
    if-eqz p1, :cond_0

    #@10
    :goto_0
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@13
    .line 1581
    new-instance v1, Ljava/lang/StringBuilder;

    #@15
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@18
    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    #@1b
    move-result-object v2

    #@1c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v1

    #@20
    const-string/jumbo v2, "> "

    #@23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v1

    #@27
    .line 1582
    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    #@29
    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    #@2c
    move-result-object v2

    #@2d
    .line 1581
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v1

    #@31
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@34
    move-result-object v1

    #@35
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    #@38
    .line 1584
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    #@3b
    .line 1574
    return-void

    #@3c
    .line 1579
    :cond_0
    const/4 v1, 0x0

    #@3d
    goto :goto_0
.end method

.method public setTTYMode(ILandroid/os/Message;)V
    .locals 3
    .param p1, "ttyMode"    # I
    .param p2, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 4430
    const/16 v1, 0x50

    #@2
    .line 4429
    invoke-static {v1, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    #@5
    move-result-object v0

    #@6
    .line 4432
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@8
    const/4 v2, 0x1

    #@9
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@c
    .line 4433
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@e
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 4435
    new-instance v1, Ljava/lang/StringBuilder;

    #@13
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@16
    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    #@19
    move-result-object v2

    #@1a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v1

    #@1e
    const-string/jumbo v2, "> "

    #@21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v1

    #@25
    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    #@27
    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    #@2a
    move-result-object v2

    #@2b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v1

    #@2f
    .line 4436
    const-string/jumbo v2, " : "

    #@32
    .line 4435
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v1

    #@36
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@39
    move-result-object v1

    #@3a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3d
    move-result-object v1

    #@3e
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    #@41
    .line 4438
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    #@44
    .line 4428
    return-void
.end method

.method public setUiccSubscription(IIIILandroid/os/Message;)V
    .locals 3
    .param p1, "slotId"    # I
    .param p2, "appIndex"    # I
    .param p3, "subId"    # I
    .param p4, "subStatus"    # I
    .param p5, "result"    # Landroid/os/Message;

    #@0
    .prologue
    .line 732
    const/16 v1, 0x7a

    #@2
    invoke-static {v1, p5}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    #@5
    move-result-object v0

    #@6
    .line 734
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    #@e
    move-result-object v2

    #@f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    const-string/jumbo v2, "> "

    #@16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    #@1c
    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    #@1f
    move-result-object v2

    #@20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v1

    #@24
    .line 735
    const-string/jumbo v2, " slot: "

    #@27
    .line 734
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v1

    #@2b
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v1

    #@2f
    .line 735
    const-string/jumbo v2, " appIndex: "

    #@32
    .line 734
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v1

    #@36
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@39
    move-result-object v1

    #@3a
    .line 736
    const-string/jumbo v2, " subId: "

    #@3d
    .line 734
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v1

    #@41
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@44
    move-result-object v1

    #@45
    .line 736
    const-string/jumbo v2, " subStatus: "

    #@48
    .line 734
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v1

    #@4c
    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v1

    #@50
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@53
    move-result-object v1

    #@54
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    #@57
    .line 738
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@59
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@5c
    .line 739
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@5e
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@61
    .line 740
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@63
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeInt(I)V

    #@66
    .line 741
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@68
    invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeInt(I)V

    #@6b
    .line 743
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    #@6e
    .line 730
    return-void
.end method

.method public setupDataCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .param p1, "radioTechnology"    # Ljava/lang/String;
    .param p2, "profile"    # Ljava/lang/String;
    .param p3, "apn"    # Ljava/lang/String;
    .param p4, "user"    # Ljava/lang/String;
    .param p5, "password"    # Ljava/lang/String;
    .param p6, "authType"    # Ljava/lang/String;
    .param p7, "protocol"    # Ljava/lang/String;
    .param p8, "result"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1510
    const/16 v1, 0x1b

    #@2
    invoke-static {v1, p8}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    #@5
    move-result-object v0

    #@6
    .line 1512
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@8
    const/4 v2, 0x7

    #@9
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@c
    .line 1514
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@e
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@11
    .line 1515
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@13
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@16
    .line 1516
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@18
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1b
    .line 1517
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@1d
    invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@20
    .line 1518
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@22
    invoke-virtual {v1, p5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@25
    .line 1519
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@27
    invoke-virtual {v1, p6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@2a
    .line 1520
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@2c
    invoke-virtual {v1, p7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@2f
    .line 1522
    new-instance v1, Ljava/lang/StringBuilder;

    #@31
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@34
    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    #@37
    move-result-object v2

    #@38
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v1

    #@3c
    const-string/jumbo v2, "> "

    #@3f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v1

    #@43
    .line 1523
    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    #@45
    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    #@48
    move-result-object v2

    #@49
    .line 1522
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v1

    #@4d
    .line 1523
    const-string/jumbo v2, " "

    #@50
    .line 1522
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@53
    move-result-object v1

    #@54
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@57
    move-result-object v1

    #@58
    .line 1523
    const-string/jumbo v2, " "

    #@5b
    .line 1522
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5e
    move-result-object v1

    #@5f
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@62
    move-result-object v1

    #@63
    .line 1524
    const-string/jumbo v2, " "

    #@66
    .line 1522
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@69
    move-result-object v1

    #@6a
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6d
    move-result-object v1

    #@6e
    .line 1524
    const-string/jumbo v2, " "

    #@71
    .line 1522
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@74
    move-result-object v1

    #@75
    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@78
    move-result-object v1

    #@79
    .line 1524
    const-string/jumbo v2, " "

    #@7c
    .line 1522
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7f
    move-result-object v1

    #@80
    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@83
    move-result-object v1

    #@84
    .line 1525
    const-string/jumbo v2, " "

    #@87
    .line 1522
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8a
    move-result-object v1

    #@8b
    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8e
    move-result-object v1

    #@8f
    .line 1525
    const-string/jumbo v2, " "

    #@92
    .line 1522
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@95
    move-result-object v1

    #@96
    invoke-virtual {v1, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@99
    move-result-object v1

    #@9a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9d
    move-result-object v1

    #@9e
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    #@a1
    .line 1527
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    #@a4
    .line 1508
    return-void
.end method

.method public startDtmf(CLandroid/os/Message;)V
    .locals 3
    .param p1, "c"    # C
    .param p2, "result"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1268
    const/16 v1, 0x31

    #@2
    invoke-static {v1, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    #@5
    move-result-object v0

    #@6
    .line 1270
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    #@e
    move-result-object v2

    #@f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    const-string/jumbo v2, "> "

    #@16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    #@1c
    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    #@1f
    move-result-object v2

    #@20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v1

    #@24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@27
    move-result-object v1

    #@28
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    #@2b
    .line 1272
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@2d
    invoke-static {p1}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    #@30
    move-result-object v2

    #@31
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@34
    .line 1274
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    #@37
    .line 1266
    return-void
.end method

.method public startLceService(IZLandroid/os/Message;)V
    .locals 3
    .param p1, "reportIntervalMs"    # I
    .param p2, "pullMode"    # Z
    .param p3, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 4801
    const/16 v1, 0x84

    #@2
    invoke-static {v1, p3}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    #@5
    move-result-object v0

    #@6
    .line 4803
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@8
    const/4 v2, 0x2

    #@9
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@c
    .line 4804
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@e
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 4805
    iget-object v2, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@13
    if-eqz p2, :cond_0

    #@15
    const/4 v1, 0x1

    #@16
    :goto_0
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@19
    .line 4808
    new-instance v1, Ljava/lang/StringBuilder;

    #@1b
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1e
    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    #@21
    move-result-object v2

    #@22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v1

    #@26
    const-string/jumbo v2, "> "

    #@29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v1

    #@2d
    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    #@2f
    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    #@32
    move-result-object v2

    #@33
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v1

    #@37
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3a
    move-result-object v1

    #@3b
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    #@3e
    .line 4811
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    #@41
    .line 4800
    return-void

    #@42
    .line 4805
    :cond_0
    const/4 v1, 0x0

    #@43
    goto :goto_0
.end method

.method public stopDtmf(Landroid/os/Message;)V
    .locals 3
    .param p1, "result"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1281
    const/16 v1, 0x32

    #@2
    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    #@5
    move-result-object v0

    #@6
    .line 1283
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    #@e
    move-result-object v2

    #@f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    const-string/jumbo v2, "> "

    #@16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    #@1c
    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    #@1f
    move-result-object v2

    #@20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v1

    #@24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@27
    move-result-object v1

    #@28
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    #@2b
    .line 1285
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    #@2e
    .line 1279
    return-void
.end method

.method public stopLceService(Landroid/os/Message;)V
    .locals 3
    .param p1, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 4816
    const/16 v1, 0x85

    #@2
    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    #@5
    move-result-object v0

    #@6
    .line 4818
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    #@e
    move-result-object v2

    #@f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    const-string/jumbo v2, "> "

    #@16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    #@1c
    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    #@1f
    move-result-object v2

    #@20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v1

    #@24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@27
    move-result-object v1

    #@28
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    #@2b
    .line 4820
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    #@2e
    .line 4815
    return-void
.end method

.method public supplyIccPin(Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .param p1, "pin"    # Ljava/lang/String;
    .param p2, "result"    # Landroid/os/Message;

    #@0
    .prologue
    .line 761
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, v0, p2}, Lcom/android/internal/telephony/RIL;->supplyIccPinForApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    #@4
    .line 760
    return-void
.end method

.method public supplyIccPin2(Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .param p1, "pin"    # Ljava/lang/String;
    .param p2, "result"    # Landroid/os/Message;

    #@0
    .prologue
    .line 802
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, v0, p2}, Lcom/android/internal/telephony/RIL;->supplyIccPin2ForApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    #@4
    .line 801
    return-void
.end method

.method public supplyIccPin2ForApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .param p1, "pin"    # Ljava/lang/String;
    .param p2, "aid"    # Ljava/lang/String;
    .param p3, "result"    # Landroid/os/Message;

    #@0
    .prologue
    .line 809
    const/4 v1, 0x4

    #@1
    invoke-static {v1, p3}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    #@4
    move-result-object v0

    #@5
    .line 811
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    #@7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@a
    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    #@d
    move-result-object v2

    #@e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v1

    #@12
    const-string/jumbo v2, "> "

    #@15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v1

    #@19
    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    #@1b
    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    #@1e
    move-result-object v2

    #@1f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v1

    #@23
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26
    move-result-object v1

    #@27
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    #@2a
    .line 813
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@2c
    const/4 v2, 0x2

    #@2d
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@30
    .line 814
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@32
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@35
    .line 815
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@37
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@3a
    .line 817
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    #@3d
    .line 806
    return-void
.end method

.method public supplyIccPinForApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 4
    .param p1, "pin"    # Ljava/lang/String;
    .param p2, "aid"    # Ljava/lang/String;
    .param p3, "result"    # Landroid/os/Message;

    #@0
    .prologue
    const/4 v3, 0x2

    #@1
    .line 768
    invoke-static {v3, p3}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    #@4
    move-result-object v0

    #@5
    .line 770
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    #@7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@a
    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    #@d
    move-result-object v2

    #@e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v1

    #@12
    const-string/jumbo v2, "> "

    #@15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v1

    #@19
    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    #@1b
    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    #@1e
    move-result-object v2

    #@1f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v1

    #@23
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26
    move-result-object v1

    #@27
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    #@2a
    .line 772
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@2c
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@2f
    .line 773
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@31
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@34
    .line 774
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@36
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@39
    .line 776
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    #@3c
    .line 765
    return-void
.end method

.method public supplyIccPuk(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .param p1, "puk"    # Ljava/lang/String;
    .param p2, "newPin"    # Ljava/lang/String;
    .param p3, "result"    # Landroid/os/Message;

    #@0
    .prologue
    .line 781
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/internal/telephony/RIL;->supplyIccPukForApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    #@4
    .line 780
    return-void
.end method

.method public supplyIccPuk2(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .param p1, "puk2"    # Ljava/lang/String;
    .param p2, "newPin2"    # Ljava/lang/String;
    .param p3, "result"    # Landroid/os/Message;

    #@0
    .prologue
    .line 822
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/internal/telephony/RIL;->supplyIccPuk2ForApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    #@4
    .line 821
    return-void
.end method

.method public supplyIccPuk2ForApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .param p1, "puk"    # Ljava/lang/String;
    .param p2, "newPin2"    # Ljava/lang/String;
    .param p3, "aid"    # Ljava/lang/String;
    .param p4, "result"    # Landroid/os/Message;

    #@0
    .prologue
    .line 829
    const/4 v1, 0x5

    #@1
    invoke-static {v1, p4}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    #@4
    move-result-object v0

    #@5
    .line 831
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    #@7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@a
    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    #@d
    move-result-object v2

    #@e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v1

    #@12
    const-string/jumbo v2, "> "

    #@15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v1

    #@19
    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    #@1b
    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    #@1e
    move-result-object v2

    #@1f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v1

    #@23
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26
    move-result-object v1

    #@27
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    #@2a
    .line 833
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@2c
    const/4 v2, 0x3

    #@2d
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@30
    .line 834
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@32
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@35
    .line 835
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@37
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@3a
    .line 836
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@3c
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@3f
    .line 838
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    #@42
    .line 826
    return-void
.end method

.method public supplyIccPukForApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 4
    .param p1, "puk"    # Ljava/lang/String;
    .param p2, "newPin"    # Ljava/lang/String;
    .param p3, "aid"    # Ljava/lang/String;
    .param p4, "result"    # Landroid/os/Message;

    #@0
    .prologue
    const/4 v3, 0x3

    #@1
    .line 788
    invoke-static {v3, p4}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    #@4
    move-result-object v0

    #@5
    .line 790
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    #@7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@a
    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    #@d
    move-result-object v2

    #@e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v1

    #@12
    const-string/jumbo v2, "> "

    #@15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v1

    #@19
    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    #@1b
    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    #@1e
    move-result-object v2

    #@1f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v1

    #@23
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26
    move-result-object v1

    #@27
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    #@2a
    .line 792
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@2c
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@2f
    .line 793
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@31
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@34
    .line 794
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@36
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@39
    .line 795
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@3b
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@3e
    .line 797
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    #@41
    .line 785
    return-void
.end method

.method public supplyNetworkDepersonalization(Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .param p1, "netpin"    # Ljava/lang/String;
    .param p2, "result"    # Landroid/os/Message;

    #@0
    .prologue
    .line 901
    const/16 v1, 0x8

    #@2
    invoke-static {v1, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    #@5
    move-result-object v0

    #@6
    .line 903
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    #@e
    move-result-object v2

    #@f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    const-string/jumbo v2, "> "

    #@16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    #@1c
    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    #@1f
    move-result-object v2

    #@20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v1

    #@24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@27
    move-result-object v1

    #@28
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    #@2b
    .line 905
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@2d
    const/4 v2, 0x1

    #@2e
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@31
    .line 906
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@33
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@36
    .line 908
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    #@39
    .line 900
    return-void
.end method

.method public switchWaitingOrHoldingAndActive(Landroid/os/Message;)V
    .locals 3
    .param p1, "result"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1051
    const/16 v1, 0xf

    #@2
    .line 1050
    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    #@5
    move-result-object v0

    #@6
    .line 1053
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    #@e
    move-result-object v2

    #@f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    const-string/jumbo v2, "> "

    #@16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    #@1c
    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    #@1f
    move-result-object v2

    #@20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v1

    #@24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@27
    move-result-object v1

    #@28
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    #@2b
    .line 1055
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    #@2e
    .line 1048
    return-void
.end method

.method public testingEmergencyCall()V
    .locals 2

    #@0
    .prologue
    .line 4617
    const-string/jumbo v0, "testingEmergencyCall"

    #@3
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    #@6
    .line 4618
    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mTestingEmergencyCall:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@8
    const/4 v1, 0x1

    #@9
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    #@c
    .line 4616
    return-void
.end method

.method public writeSmsToRuim(ILjava/lang/String;Landroid/os/Message;)V
    .locals 2
    .param p1, "status"    # I
    .param p2, "pdu"    # Ljava/lang/String;
    .param p3, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1469
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->translateStatus(I)I

    #@3
    move-result p1

    #@4
    .line 1471
    const/16 v1, 0x60

    #@6
    invoke-static {v1, p3}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    #@9
    move-result-object v0

    #@a
    .line 1474
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@c
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@f
    .line 1475
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@11
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@14
    .line 1481
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    #@17
    .line 1468
    return-void
.end method

.method public writeSmsToSim(ILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 2
    .param p1, "status"    # I
    .param p2, "smsc"    # Ljava/lang/String;
    .param p3, "pdu"    # Ljava/lang/String;
    .param p4, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1451
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->translateStatus(I)I

    #@3
    move-result p1

    #@4
    .line 1453
    const/16 v1, 0x3f

    #@6
    invoke-static {v1, p4}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    #@9
    move-result-object v0

    #@a
    .line 1456
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@c
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@f
    .line 1457
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@11
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@14
    .line 1458
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@16
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@19
    .line 1464
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    #@1c
    .line 1450
    return-void
.end method

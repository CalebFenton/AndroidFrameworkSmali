.class public final Lcom/android/internal/telephony/RIL;
.super Lcom/android/internal/telephony/BaseCommands;
.source "RIL.java"

# interfaces
.implements Lcom/android/internal/telephony/CommandsInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/RIL$1;,
        Lcom/android/internal/telephony/RIL$2;,
        Lcom/android/internal/telephony/RIL$RILReceiver;,
        Lcom/android/internal/telephony/RIL$RILSender;
    }
.end annotation


# static fields
.field private static final CDMA_BROADCAST_SMS_NO_OF_SERVICE_CATEGORIES:I = 0x1f

.field private static final CDMA_BSI_NO_OF_INTS_STRUCT:I = 0x3

.field private static final DEFAULT_ACK_WAKE_LOCK_TIMEOUT_MS:I = 0xc8

.field private static final DEFAULT_BLOCKING_MESSAGE_RESPONSE_TIMEOUT_MS:I = 0x7d0

.field private static final DEFAULT_WAKE_LOCK_TIMEOUT_MS:I = 0xea60

.field static final EVENT_ACK_WAKE_LOCK_TIMEOUT:I = 0x4

.field static final EVENT_BLOCKING_RESPONSE_TIMEOUT:I = 0x5

.field static final EVENT_SEND:I = 0x1

.field static final EVENT_SEND_ACK:I = 0x3

.field static final EVENT_WAKE_LOCK_TIMEOUT:I = 0x2

.field public static final FOR_ACK_WAKELOCK:I = 0x1

.field public static final FOR_WAKELOCK:I = 0x0

.field public static final INVALID_WAKELOCK:I = -0x1

.field static final RADIO_SCREEN_OFF:I = 0x0

.field static final RADIO_SCREEN_ON:I = 0x1

.field static final RADIO_SCREEN_UNSET:I = -0x1

.field static final RESPONSE_SOLICITED:I = 0x0

.field static final RESPONSE_SOLICITED_ACK:I = 0x2

.field static final RESPONSE_SOLICITED_ACK_EXP:I = 0x3

.field static final RESPONSE_UNSOLICITED:I = 0x1

.field static final RESPONSE_UNSOLICITED_ACK_EXP:I = 0x4

.field static final RILJ_ACK_WAKELOCK_NAME:Ljava/lang/String; = "RILJ_ACK_WL"

.field static final RILJ_LOGD:Z = true

.field static final RILJ_LOGV:Z = false

.field static final RILJ_LOG_TAG:Ljava/lang/String; = "RILJ"

.field static final RIL_HISTOGRAM_BUCKET_COUNT:I = 0x5

.field static final RIL_MAX_COMMAND_BYTES:I = 0x2000

.field static final SOCKET_NAME_RIL:[Ljava/lang/String;

.field static final SOCKET_OPEN_RETRY_MILLIS:I = 0xfa0

.field static mRilTimeHistograms:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/telephony/TelephonyHistogram;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final mAckWakeLock:Landroid/os/PowerManager$WakeLock;

.field final mAckWakeLockTimeout:I

.field volatile mAckWlSequenceNum:I

.field private final mBatteryStateListener:Landroid/content/BroadcastReceiver;

.field mDefaultDisplay:Landroid/view/Display;

.field mDefaultDisplayState:I

.field private final mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

.field private mInstanceId:Ljava/lang/Integer;

.field mIsDevicePlugged:Z

.field mLastNITZTimeInfo:[Ljava/lang/Object;

.field private mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

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

.field final mWakeLock:Landroid/os/PowerManager$WakeLock;

.field mWakeLockCount:I

.field final mWakeLockTimeout:I

.field volatile mWlSequenceNum:I


# direct methods
.method static synthetic -get0(Lcom/android/internal/telephony/RIL;)Ljava/lang/Integer;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mInstanceId:Ljava/lang/Integer;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Lcom/android/internal/telephony/RIL;)Lcom/android/internal/telephony/metrics/TelephonyMetrics;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    #@2
    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/internal/telephony/RIL;I)Z
    .locals 1
    .param p1, "wakeLockType"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->clearWakeLock(I)Z

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

.method static synthetic -wrap3(Lcom/android/internal/telephony/RILRequest;)Ljava/lang/Object;
    .locals 1
    .param p0, "rr"    # Lcom/android/internal/telephony/RILRequest;

    #@0
    .prologue
    invoke-static {p0}, Lcom/android/internal/telephony/RIL;->getResponseForTimedOutRILRequest(Lcom/android/internal/telephony/RILRequest;)Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap4(Lcom/android/internal/telephony/RIL;IZ)V
    .locals 0
    .param p1, "error"    # I
    .param p2, "loggable"    # Z

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RIL;->clearRequestList(IZ)V

    #@3
    return-void
.end method

.method static synthetic -wrap5(Lcom/android/internal/telephony/RIL;Lcom/android/internal/telephony/RILRequest;)V
    .locals 0
    .param p1, "rr"    # Lcom/android/internal/telephony/RILRequest;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->decrementWakeLock(Lcom/android/internal/telephony/RILRequest;)V

    #@3
    return-void
.end method

.method static synthetic -wrap6(Lcom/android/internal/telephony/RIL;I)V
    .locals 0
    .param p1, "rilVer"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->notifyRegistrantsRilConnectionChanged(I)V

    #@3
    return-void
.end method

.method static synthetic -wrap7(Lcom/android/internal/telephony/RIL;Landroid/os/Parcel;)V
    .locals 0
    .param p1, "p"    # Landroid/os/Parcel;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->processResponse(Landroid/os/Parcel;)V

    #@3
    return-void
.end method

.method static synthetic -wrap8(Lcom/android/internal/telephony/RIL;)V
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
    .line 292
    new-instance v0, Landroid/util/SparseArray;

    #@2
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    #@5
    sput-object v0, Lcom/android/internal/telephony/RIL;->mRilTimeHistograms:Landroid/util/SparseArray;

    #@7
    .line 322
    const/4 v0, 0x3

    #@8
    new-array v0, v0, [Ljava/lang/String;

    #@a
    const-string/jumbo v1, "rild"

    #@d
    const/4 v2, 0x0

    #@e
    aput-object v1, v0, v2

    #@10
    const-string/jumbo v1, "rild2"

    #@13
    const/4 v2, 0x1

    #@14
    aput-object v1, v0, v2

    #@16
    const-string/jumbo v1, "rild3"

    #@19
    const/4 v2, 0x2

    #@1a
    aput-object v1, v0, v2

    #@1c
    sput-object v0, Lcom/android/internal/telephony/RIL;->SOCKET_NAME_RIL:[Ljava/lang/String;

    #@1e
    .line 241
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "preferredNetworkType"    # I
    .param p3, "cdmaSubscription"    # I

    #@0
    .prologue
    .line 739
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/internal/telephony/RIL;-><init>(Landroid/content/Context;IILjava/lang/Integer;)V

    #@4
    .line 738
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
    .line 744
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/BaseCommands;-><init>(Landroid/content/Context;)V

    #@3
    .line 276
    const/4 v7, 0x0

    #@4
    iput v7, p0, Lcom/android/internal/telephony/RIL;->mDefaultDisplayState:I

    #@6
    .line 277
    const/4 v7, -0x1

    #@7
    iput v7, p0, Lcom/android/internal/telephony/RIL;->mRadioScreenState:I

    #@9
    .line 278
    const/4 v7, 0x0

    #@a
    iput-boolean v7, p0, Lcom/android/internal/telephony/RIL;->mIsDevicePlugged:Z

    #@c
    .line 288
    const/4 v7, 0x0

    #@d
    iput v7, p0, Lcom/android/internal/telephony/RIL;->mWlSequenceNum:I

    #@f
    .line 289
    const/4 v7, 0x0

    #@10
    iput v7, p0, Lcom/android/internal/telephony/RIL;->mAckWlSequenceNum:I

    #@12
    .line 291
    new-instance v7, Landroid/util/SparseArray;

    #@14
    invoke-direct {v7}, Landroid/util/SparseArray;-><init>()V

    #@17
    iput-object v7, p0, Lcom/android/internal/telephony/RIL;->mRequestList:Landroid/util/SparseArray;

    #@19
    .line 298
    new-instance v7, Ljava/util/concurrent/atomic/AtomicBoolean;

    #@1b
    const/4 v8, 0x0

    #@1c
    invoke-direct {v7, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    #@1f
    iput-object v7, p0, Lcom/android/internal/telephony/RIL;->mTestingEmergencyCall:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@21
    .line 302
    invoke-static {}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->getInstance()Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    #@24
    move-result-object v7

    #@25
    iput-object v7, p0, Lcom/android/internal/telephony/RIL;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    #@27
    .line 333
    new-instance v7, Lcom/android/internal/telephony/RIL$1;

    #@29
    invoke-direct {v7, p0}, Lcom/android/internal/telephony/RIL$1;-><init>(Lcom/android/internal/telephony/RIL;)V

    #@2c
    .line 332
    iput-object v7, p0, Lcom/android/internal/telephony/RIL;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    #@2e
    .line 352
    new-instance v7, Lcom/android/internal/telephony/RIL$2;

    #@30
    invoke-direct {v7, p0}, Lcom/android/internal/telephony/RIL$2;-><init>(Lcom/android/internal/telephony/RIL;)V

    #@33
    iput-object v7, p0, Lcom/android/internal/telephony/RIL;->mBatteryStateListener:Landroid/content/BroadcastReceiver;

    #@35
    .line 746
    new-instance v7, Ljava/lang/StringBuilder;

    #@37
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@3a
    const-string/jumbo v8, "RIL(context, preferredNetworkType="

    #@3d
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v7

    #@41
    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@44
    move-result-object v7

    #@45
    .line 747
    const-string/jumbo v8, " cdmaSubscription="

    #@48
    .line 746
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v7

    #@4c
    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v7

    #@50
    .line 747
    const-string/jumbo v8, ")"

    #@53
    .line 746
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@56
    move-result-object v7

    #@57
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5a
    move-result-object v7

    #@5b
    invoke-direct {p0, v7}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    #@5e
    .line 750
    iput-object p1, p0, Lcom/android/internal/telephony/RIL;->mContext:Landroid/content/Context;

    #@60
    .line 751
    iput p3, p0, Lcom/android/internal/telephony/RIL;->mCdmaSubscription:I

    #@62
    .line 752
    iput p2, p0, Lcom/android/internal/telephony/RIL;->mPreferredNetworkType:I

    #@64
    .line 753
    const/4 v7, 0x0

    #@65
    iput v7, p0, Lcom/android/internal/telephony/RIL;->mPhoneType:I

    #@67
    .line 754
    iput-object p4, p0, Lcom/android/internal/telephony/RIL;->mInstanceId:Ljava/lang/Integer;

    #@69
    .line 756
    const-string/jumbo v7, "power"

    #@6c
    invoke-virtual {p1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@6f
    move-result-object v5

    #@70
    check-cast v5, Landroid/os/PowerManager;

    #@72
    .line 757
    .local v5, "pm":Landroid/os/PowerManager;
    const-string/jumbo v7, "RILJ"

    #@75
    const/4 v8, 0x1

    #@76
    invoke-virtual {v5, v8, v7}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    #@79
    move-result-object v7

    #@7a
    iput-object v7, p0, Lcom/android/internal/telephony/RIL;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    #@7c
    .line 758
    iget-object v7, p0, Lcom/android/internal/telephony/RIL;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    #@7e
    const/4 v8, 0x0

    #@7f
    invoke-virtual {v7, v8}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    #@82
    .line 759
    const-string/jumbo v7, "RILJ_ACK_WL"

    #@85
    const/4 v8, 0x1

    #@86
    invoke-virtual {v5, v8, v7}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    #@89
    move-result-object v7

    #@8a
    iput-object v7, p0, Lcom/android/internal/telephony/RIL;->mAckWakeLock:Landroid/os/PowerManager$WakeLock;

    #@8c
    .line 760
    iget-object v7, p0, Lcom/android/internal/telephony/RIL;->mAckWakeLock:Landroid/os/PowerManager$WakeLock;

    #@8e
    const/4 v8, 0x0

    #@8f
    invoke-virtual {v7, v8}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    #@92
    .line 761
    const-string/jumbo v7, "ro.ril.wake_lock_timeout"

    #@95
    .line 762
    const v8, 0xea60

    #@98
    .line 761
    invoke-static {v7, v8}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    #@9b
    move-result v7

    #@9c
    iput v7, p0, Lcom/android/internal/telephony/RIL;->mWakeLockTimeout:I

    #@9e
    .line 764
    const-string/jumbo v7, "ro.ril.wake_lock_timeout"

    #@a1
    const/16 v8, 0xc8

    #@a3
    .line 763
    invoke-static {v7, v8}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    #@a6
    move-result v7

    #@a7
    iput v7, p0, Lcom/android/internal/telephony/RIL;->mAckWakeLockTimeout:I

    #@a9
    .line 765
    const/4 v7, 0x0

    #@aa
    iput v7, p0, Lcom/android/internal/telephony/RIL;->mWakeLockCount:I

    #@ac
    .line 767
    new-instance v7, Landroid/os/HandlerThread;

    #@ae
    new-instance v8, Ljava/lang/StringBuilder;

    #@b0
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@b3
    const-string/jumbo v9, "RILSender"

    #@b6
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b9
    move-result-object v8

    #@ba
    iget-object v9, p0, Lcom/android/internal/telephony/RIL;->mInstanceId:Ljava/lang/Integer;

    #@bc
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@bf
    move-result-object v8

    #@c0
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c3
    move-result-object v8

    #@c4
    invoke-direct {v7, v8}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    #@c7
    iput-object v7, p0, Lcom/android/internal/telephony/RIL;->mSenderThread:Landroid/os/HandlerThread;

    #@c9
    .line 768
    iget-object v7, p0, Lcom/android/internal/telephony/RIL;->mSenderThread:Landroid/os/HandlerThread;

    #@cb
    invoke-virtual {v7}, Landroid/os/HandlerThread;->start()V

    #@ce
    .line 770
    iget-object v7, p0, Lcom/android/internal/telephony/RIL;->mSenderThread:Landroid/os/HandlerThread;

    #@d0
    invoke-virtual {v7}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    #@d3
    move-result-object v4

    #@d4
    .line 771
    .local v4, "looper":Landroid/os/Looper;
    new-instance v7, Lcom/android/internal/telephony/RIL$RILSender;

    #@d6
    invoke-direct {v7, p0, v4}, Lcom/android/internal/telephony/RIL$RILSender;-><init>(Lcom/android/internal/telephony/RIL;Landroid/os/Looper;)V

    #@d9
    iput-object v7, p0, Lcom/android/internal/telephony/RIL;->mSender:Lcom/android/internal/telephony/RIL$RILSender;

    #@db
    .line 774
    const-string/jumbo v7, "connectivity"

    #@de
    .line 773
    invoke-virtual {p1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@e1
    move-result-object v1

    #@e2
    check-cast v1, Landroid/net/ConnectivityManager;

    #@e4
    .line 775
    .local v1, "cm":Landroid/net/ConnectivityManager;
    const/4 v7, 0x0

    #@e5
    invoke-virtual {v1, v7}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    #@e8
    move-result v7

    #@e9
    if-nez v7, :cond_1

    #@eb
    .line 776
    const-string/jumbo v7, "Not starting RILReceiver: wifi-only"

    #@ee
    invoke-direct {p0, v7}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    #@f1
    .line 797
    :cond_0
    :goto_0
    invoke-static {}, Lcom/android/internal/telephony/TelephonyDevController;->getInstance()Lcom/android/internal/telephony/TelephonyDevController;

    #@f4
    move-result-object v6

    #@f5
    .line 798
    .local v6, "tdc":Lcom/android/internal/telephony/TelephonyDevController;
    invoke-static {p0}, Lcom/android/internal/telephony/TelephonyDevController;->registerRIL(Lcom/android/internal/telephony/CommandsInterface;)V

    #@f8
    .line 743
    return-void

    #@f9
    .line 778
    .end local v6    # "tdc":Lcom/android/internal/telephony/TelephonyDevController;
    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    #@fb
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@fe
    const-string/jumbo v8, "Starting RILReceiver"

    #@101
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@104
    move-result-object v7

    #@105
    iget-object v8, p0, Lcom/android/internal/telephony/RIL;->mInstanceId:Ljava/lang/Integer;

    #@107
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@10a
    move-result-object v7

    #@10b
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@10e
    move-result-object v7

    #@10f
    invoke-direct {p0, v7}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    #@112
    .line 779
    new-instance v7, Lcom/android/internal/telephony/RIL$RILReceiver;

    #@114
    invoke-direct {v7, p0}, Lcom/android/internal/telephony/RIL$RILReceiver;-><init>(Lcom/android/internal/telephony/RIL;)V

    #@117
    iput-object v7, p0, Lcom/android/internal/telephony/RIL;->mReceiver:Lcom/android/internal/telephony/RIL$RILReceiver;

    #@119
    .line 780
    new-instance v7, Ljava/lang/Thread;

    #@11b
    iget-object v8, p0, Lcom/android/internal/telephony/RIL;->mReceiver:Lcom/android/internal/telephony/RIL$RILReceiver;

    #@11d
    new-instance v9, Ljava/lang/StringBuilder;

    #@11f
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@122
    const-string/jumbo v10, "RILReceiver"

    #@125
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@128
    move-result-object v9

    #@129
    iget-object v10, p0, Lcom/android/internal/telephony/RIL;->mInstanceId:Ljava/lang/Integer;

    #@12b
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@12e
    move-result-object v9

    #@12f
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@132
    move-result-object v9

    #@133
    invoke-direct {v7, v8, v9}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    #@136
    iput-object v7, p0, Lcom/android/internal/telephony/RIL;->mReceiverThread:Ljava/lang/Thread;

    #@138
    .line 781
    iget-object v7, p0, Lcom/android/internal/telephony/RIL;->mReceiverThread:Ljava/lang/Thread;

    #@13a
    invoke-virtual {v7}, Ljava/lang/Thread;->start()V

    #@13d
    .line 784
    const-string/jumbo v7, "display"

    #@140
    .line 783
    invoke-virtual {p1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@143
    move-result-object v2

    #@144
    check-cast v2, Landroid/hardware/display/DisplayManager;

    #@146
    .line 785
    .local v2, "dm":Landroid/hardware/display/DisplayManager;
    const/4 v7, 0x0

    #@147
    invoke-virtual {v2, v7}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    #@14a
    move-result-object v7

    #@14b
    iput-object v7, p0, Lcom/android/internal/telephony/RIL;->mDefaultDisplay:Landroid/view/Display;

    #@14d
    .line 786
    iget-object v7, p0, Lcom/android/internal/telephony/RIL;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    #@14f
    const/4 v8, 0x0

    #@150
    invoke-virtual {v2, v7, v8}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    #@153
    .line 787
    iget-object v7, p0, Lcom/android/internal/telephony/RIL;->mDefaultDisplay:Landroid/view/Display;

    #@155
    invoke-virtual {v7}, Landroid/view/Display;->getState()I

    #@158
    move-result v7

    #@159
    iput v7, p0, Lcom/android/internal/telephony/RIL;->mDefaultDisplayState:I

    #@15b
    .line 789
    new-instance v3, Landroid/content/IntentFilter;

    #@15d
    const-string/jumbo v7, "android.intent.action.BATTERY_CHANGED"

    #@160
    invoke-direct {v3, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    #@163
    .line 790
    .local v3, "filter":Landroid/content/IntentFilter;
    iget-object v7, p0, Lcom/android/internal/telephony/RIL;->mBatteryStateListener:Landroid/content/BroadcastReceiver;

    #@165
    invoke-virtual {p1, v7, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    #@168
    move-result-object v0

    #@169
    .line 791
    .local v0, "batteryStatus":Landroid/content/Intent;
    if-eqz v0, :cond_0

    #@16b
    .line 793
    const-string/jumbo v7, "plugged"

    #@16e
    const/4 v8, 0x0

    #@16f
    invoke-virtual {v0, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    #@172
    move-result v7

    #@173
    if-eqz v7, :cond_2

    #@175
    const/4 v7, 0x1

    #@176
    :goto_1
    iput-boolean v7, p0, Lcom/android/internal/telephony/RIL;->mIsDevicePlugged:Z

    #@178
    goto/16 :goto_0

    #@17a
    :cond_2
    const/4 v7, 0x0

    #@17b
    goto :goto_1
.end method

.method private acquireWakeLock(Lcom/android/internal/telephony/RILRequest;I)V
    .locals 6
    .param p1, "rr"    # Lcom/android/internal/telephony/RILRequest;
    .param p2, "wakeLockType"    # I

    #@0
    .prologue
    .line 2470
    monitor-enter p1

    #@1
    .line 2471
    :try_start_0
    iget v1, p1, Lcom/android/internal/telephony/RILRequest;->mWakeLockType:I

    #@3
    const/4 v2, -0x1

    #@4
    if-eq v1, v2, :cond_0

    #@6
    .line 2472
    const-string/jumbo v1, "RILJ"

    #@9
    new-instance v2, Ljava/lang/StringBuilder;

    #@b
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    const-string/jumbo v3, "Failed to aquire wakelock for "

    #@11
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v2

    #@15
    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    #@18
    move-result-object v3

    #@19
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v2

    #@1d
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@20
    move-result-object v2

    #@21
    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@24
    monitor-exit p1

    #@25
    .line 2473
    return-void

    #@26
    .line 2476
    :cond_0
    packed-switch p2, :pswitch_data_0

    #@29
    .line 2499
    :try_start_1
    const-string/jumbo v1, "RILJ"

    #@2c
    new-instance v2, Ljava/lang/StringBuilder;

    #@2e
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@31
    const-string/jumbo v3, "Acquiring Invalid Wakelock type "

    #@34
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v2

    #@38
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v2

    #@3c
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3f
    move-result-object v2

    #@40
    invoke-static {v1, v2}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@43
    monitor-exit p1

    #@44
    .line 2500
    return-void

    #@45
    .line 2478
    :pswitch_0
    :try_start_2
    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    #@47
    monitor-enter v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@48
    .line 2479
    :try_start_3
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    #@4a
    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    #@4d
    .line 2480
    iget v1, p0, Lcom/android/internal/telephony/RIL;->mWakeLockCount:I

    #@4f
    add-int/lit8 v1, v1, 0x1

    #@51
    iput v1, p0, Lcom/android/internal/telephony/RIL;->mWakeLockCount:I

    #@53
    .line 2481
    iget v1, p0, Lcom/android/internal/telephony/RIL;->mWlSequenceNum:I

    #@55
    add-int/lit8 v1, v1, 0x1

    #@57
    iput v1, p0, Lcom/android/internal/telephony/RIL;->mWlSequenceNum:I

    #@59
    .line 2483
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mSender:Lcom/android/internal/telephony/RIL$RILSender;

    #@5b
    const/4 v3, 0x2

    #@5c
    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/RIL$RILSender;->obtainMessage(I)Landroid/os/Message;

    #@5f
    move-result-object v0

    #@60
    .line 2484
    .local v0, "msg":Landroid/os/Message;
    iget v1, p0, Lcom/android/internal/telephony/RIL;->mWlSequenceNum:I

    #@62
    iput v1, v0, Landroid/os/Message;->arg1:I

    #@64
    .line 2485
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mSender:Lcom/android/internal/telephony/RIL$RILSender;

    #@66
    iget v3, p0, Lcom/android/internal/telephony/RIL;->mWakeLockTimeout:I

    #@68
    int-to-long v4, v3

    #@69
    invoke-virtual {v1, v0, v4, v5}, Lcom/android/internal/telephony/RIL$RILSender;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@6c
    :try_start_4
    monitor-exit v2

    #@6d
    .line 2502
    :goto_0
    iput p2, p1, Lcom/android/internal/telephony/RILRequest;->mWakeLockType:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@6f
    monitor-exit p1

    #@70
    .line 2469
    return-void

    #@71
    .line 2478
    .end local v0    # "msg":Landroid/os/Message;
    :catchall_0
    move-exception v1

    #@72
    :try_start_5
    monitor-exit v2

    #@73
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    #@74
    .line 2470
    :catchall_1
    move-exception v1

    #@75
    monitor-exit p1

    #@76
    throw v1

    #@77
    .line 2489
    :pswitch_1
    :try_start_6
    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mAckWakeLock:Landroid/os/PowerManager$WakeLock;

    #@79
    monitor-enter v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    #@7a
    .line 2490
    :try_start_7
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mAckWakeLock:Landroid/os/PowerManager$WakeLock;

    #@7c
    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    #@7f
    .line 2491
    iget v1, p0, Lcom/android/internal/telephony/RIL;->mAckWlSequenceNum:I

    #@81
    add-int/lit8 v1, v1, 0x1

    #@83
    iput v1, p0, Lcom/android/internal/telephony/RIL;->mAckWlSequenceNum:I

    #@85
    .line 2493
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mSender:Lcom/android/internal/telephony/RIL$RILSender;

    #@87
    const/4 v3, 0x4

    #@88
    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/RIL$RILSender;->obtainMessage(I)Landroid/os/Message;

    #@8b
    move-result-object v0

    #@8c
    .line 2494
    .restart local v0    # "msg":Landroid/os/Message;
    iget v1, p0, Lcom/android/internal/telephony/RIL;->mAckWlSequenceNum:I

    #@8e
    iput v1, v0, Landroid/os/Message;->arg1:I

    #@90
    .line 2495
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mSender:Lcom/android/internal/telephony/RIL$RILSender;

    #@92
    iget v3, p0, Lcom/android/internal/telephony/RIL;->mAckWakeLockTimeout:I

    #@94
    int-to-long v4, v3

    #@95
    invoke-virtual {v1, v0, v4, v5}, Lcom/android/internal/telephony/RIL$RILSender;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    #@98
    :try_start_8
    monitor-exit v2

    #@99
    goto :goto_0

    #@9a
    .line 2489
    .end local v0    # "msg":Landroid/os/Message;
    :catchall_2
    move-exception v1

    #@9b
    monitor-exit v2

    #@9c
    throw v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    #@9d
    .line 2476
    nop

    #@9e
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private addToRilHistogram(Lcom/android/internal/telephony/RILRequest;)V
    .locals 8
    .param p1, "rr"    # Lcom/android/internal/telephony/RILRequest;

    #@0
    .prologue
    .line 2645
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@3
    move-result-wide v0

    #@4
    .line 2646
    .local v0, "endTime":J
    iget-wide v4, p1, Lcom/android/internal/telephony/RILRequest;->mStartTimeMs:J

    #@6
    sub-long v4, v0, v4

    #@8
    long-to-int v3, v4

    #@9
    .line 2648
    .local v3, "totalTime":I
    sget-object v5, Lcom/android/internal/telephony/RIL;->mRilTimeHistograms:Landroid/util/SparseArray;

    #@b
    monitor-enter v5

    #@c
    .line 2649
    :try_start_0
    sget-object v4, Lcom/android/internal/telephony/RIL;->mRilTimeHistograms:Landroid/util/SparseArray;

    #@e
    iget v6, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    #@10
    invoke-virtual {v4, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@13
    move-result-object v2

    #@14
    check-cast v2, Landroid/telephony/TelephonyHistogram;

    #@16
    .line 2650
    .local v2, "entry":Landroid/telephony/TelephonyHistogram;
    if-nez v2, :cond_0

    #@18
    .line 2652
    new-instance v2, Landroid/telephony/TelephonyHistogram;

    #@1a
    .line 2653
    .end local v2    # "entry":Landroid/telephony/TelephonyHistogram;
    iget v4, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    #@1c
    .line 2652
    const/4 v6, 0x1

    #@1d
    .line 2653
    const/4 v7, 0x5

    #@1e
    .line 2652
    invoke-direct {v2, v6, v4, v7}, Landroid/telephony/TelephonyHistogram;-><init>(III)V

    #@21
    .line 2654
    .restart local v2    # "entry":Landroid/telephony/TelephonyHistogram;
    sget-object v4, Lcom/android/internal/telephony/RIL;->mRilTimeHistograms:Landroid/util/SparseArray;

    #@23
    iget v6, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    #@25
    invoke-virtual {v4, v6, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@28
    .line 2656
    :cond_0
    invoke-virtual {v2, v3}, Landroid/telephony/TelephonyHistogram;->addTimeTaken(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2b
    monitor-exit v5

    #@2c
    .line 2644
    return-void

    #@2d
    .line 2648
    .end local v2    # "entry":Landroid/telephony/TelephonyHistogram;
    :catchall_0
    move-exception v4

    #@2e
    monitor-exit v5

    #@2f
    throw v4
.end method

.method private clearRequestList(IZ)V
    .locals 7
    .param p1, "error"    # I
    .param p2, "loggable"    # Z

    #@0
    .prologue
    .line 2610
    iget-object v4, p0, Lcom/android/internal/telephony/RIL;->mRequestList:Landroid/util/SparseArray;

    #@2
    monitor-enter v4

    #@3
    .line 2611
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRequestList:Landroid/util/SparseArray;

    #@5
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    #@8
    move-result v0

    #@9
    .line 2612
    .local v0, "count":I
    if-eqz p2, :cond_0

    #@b
    .line 2613
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
    .line 2614
    iget v6, p0, Lcom/android/internal/telephony/RIL;->mWakeLockCount:I

    #@1c
    .line 2613
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v5

    #@20
    .line 2615
    const-string/jumbo v6, " mRequestList="

    #@23
    .line 2613
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
    .line 2618
    :cond_0
    const/4 v1, 0x0

    #@33
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    #@35
    .line 2619
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRequestList:Landroid/util/SparseArray;

    #@37
    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@3a
    move-result-object v2

    #@3b
    check-cast v2, Lcom/android/internal/telephony/RILRequest;

    #@3d
    .line 2620
    .local v2, "rr":Lcom/android/internal/telephony/RILRequest;
    if-eqz p2, :cond_1

    #@3f
    .line 2621
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
    .line 2622
    iget v6, v2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    #@61
    invoke-static {v6}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    #@64
    move-result-object v6

    #@65
    .line 2621
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
    .line 2624
    :cond_1
    const/4 v3, 0x0

    #@71
    invoke-virtual {v2, p1, v3}, Lcom/android/internal/telephony/RILRequest;->onError(ILjava/lang/Object;)V

    #@74
    .line 2625
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/RIL;->decrementWakeLock(Lcom/android/internal/telephony/RILRequest;)V

    #@77
    .line 2626
    invoke-virtual {v2}, Lcom/android/internal/telephony/RILRequest;->release()V

    #@7a
    .line 2618
    add-int/lit8 v1, v1, 0x1

    #@7c
    goto :goto_0

    #@7d
    .line 2628
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
    .line 2608
    return-void

    #@84
    .line 2610
    .end local v0    # "count":I
    .end local v1    # "i":I
    :catchall_0
    move-exception v3

    #@85
    monitor-exit v4

    #@86
    throw v3
.end method

.method private clearWakeLock(I)Z
    .locals 5
    .param p1, "wakeLockType"    # I

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 2534
    if-nez p1, :cond_1

    #@4
    .line 2535
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    #@6
    monitor-enter v1

    #@7
    .line 2536
    :try_start_0
    iget v0, p0, Lcom/android/internal/telephony/RIL;->mWakeLockCount:I

    #@9
    if-nez v0, :cond_0

    #@b
    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    #@d
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    move-result v0

    #@11
    if-nez v0, :cond_0

    #@13
    monitor-exit v1

    #@14
    return v2

    #@15
    .line 2537
    :cond_0
    :try_start_1
    const-string/jumbo v0, "RILJ"

    #@18
    new-instance v2, Ljava/lang/StringBuilder;

    #@1a
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@1d
    const-string/jumbo v3, "NOTE: mWakeLockCount is "

    #@20
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v2

    #@24
    iget v3, p0, Lcom/android/internal/telephony/RIL;->mWakeLockCount:I

    #@26
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@29
    move-result-object v2

    #@2a
    .line 2538
    const-string/jumbo v3, "at time of clearing"

    #@2d
    .line 2537
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v2

    #@31
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@34
    move-result-object v2

    #@35
    invoke-static {v0, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@38
    .line 2539
    const/4 v0, 0x0

    #@39
    iput v0, p0, Lcom/android/internal/telephony/RIL;->mWakeLockCount:I

    #@3b
    .line 2540
    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    #@3d
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@40
    monitor-exit v1

    #@41
    .line 2541
    return v4

    #@42
    .line 2535
    :catchall_0
    move-exception v0

    #@43
    monitor-exit v1

    #@44
    throw v0

    #@45
    .line 2544
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mAckWakeLock:Landroid/os/PowerManager$WakeLock;

    #@47
    monitor-enter v1

    #@48
    .line 2545
    :try_start_2
    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mAckWakeLock:Landroid/os/PowerManager$WakeLock;

    #@4a
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@4d
    move-result v0

    #@4e
    if-nez v0, :cond_2

    #@50
    monitor-exit v1

    #@51
    return v2

    #@52
    .line 2546
    :cond_2
    :try_start_3
    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mAckWakeLock:Landroid/os/PowerManager$WakeLock;

    #@54
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@57
    monitor-exit v1

    #@58
    .line 2547
    return v4

    #@59
    .line 2544
    :catchall_1
    move-exception v0

    #@5a
    monitor-exit v1

    #@5b
    throw v0
.end method

.method private constructCdmaSendSmsRilRequest(Lcom/android/internal/telephony/RILRequest;[B)V
    .locals 9
    .param p1, "rr"    # Lcom/android/internal/telephony/RILRequest;
    .param p2, "pdu"    # [B

    #@0
    .prologue
    .line 1474
    new-instance v1, Ljava/io/ByteArrayInputStream;

    #@2
    invoke-direct {v1, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    #@5
    .line 1475
    .local v1, "bais":Ljava/io/ByteArrayInputStream;
    new-instance v3, Ljava/io/DataInputStream;

    #@7
    invoke-direct {v3, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    #@a
    .line 1478
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
    .line 1479
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
    .line 1480
    iget-object v7, p1, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@1f
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    #@22
    move-result v8

    #@23
    invoke-virtual {v7, v8}, Landroid/os/Parcel;->writeInt(I)V

    #@26
    .line 1481
    iget-object v7, p1, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@28
    invoke-virtual {v3}, Ljava/io/DataInputStream;->read()I

    #@2b
    move-result v8

    #@2c
    invoke-virtual {v7, v8}, Landroid/os/Parcel;->writeInt(I)V

    #@2f
    .line 1482
    iget-object v7, p1, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@31
    invoke-virtual {v3}, Ljava/io/DataInputStream;->read()I

    #@34
    move-result v8

    #@35
    invoke-virtual {v7, v8}, Landroid/os/Parcel;->writeInt(I)V

    #@38
    .line 1483
    iget-object v7, p1, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@3a
    invoke-virtual {v3}, Ljava/io/DataInputStream;->read()I

    #@3d
    move-result v8

    #@3e
    invoke-virtual {v7, v8}, Landroid/os/Parcel;->writeInt(I)V

    #@41
    .line 1484
    iget-object v7, p1, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@43
    invoke-virtual {v3}, Ljava/io/DataInputStream;->read()I

    #@46
    move-result v8

    #@47
    invoke-virtual {v7, v8}, Landroid/os/Parcel;->writeInt(I)V

    #@4a
    .line 1485
    invoke-virtual {v3}, Ljava/io/DataInputStream;->read()I

    #@4d
    move-result v7

    #@4e
    int-to-byte v0, v7

    #@4f
    .line 1486
    .local v0, "address_nbr_of_digits":I
    iget-object v7, p1, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@51
    int-to-byte v8, v0

    #@52
    invoke-virtual {v7, v8}, Landroid/os/Parcel;->writeByte(B)V

    #@55
    .line 1487
    const/4 v5, 0x0

    #@56
    .local v5, "i":I
    :goto_0
    if-ge v5, v0, :cond_0

    #@58
    .line 1488
    iget-object v7, p1, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@5a
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readByte()B

    #@5d
    move-result v8

    #@5e
    invoke-virtual {v7, v8}, Landroid/os/Parcel;->writeByte(B)V

    #@61
    .line 1487
    add-int/lit8 v5, v5, 0x1

    #@63
    goto :goto_0

    #@64
    .line 1490
    :cond_0
    iget-object v7, p1, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@66
    invoke-virtual {v3}, Ljava/io/DataInputStream;->read()I

    #@69
    move-result v8

    #@6a
    invoke-virtual {v7, v8}, Landroid/os/Parcel;->writeInt(I)V

    #@6d
    .line 1491
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
    .line 1492
    invoke-virtual {v3}, Ljava/io/DataInputStream;->read()I

    #@7a
    move-result v7

    #@7b
    int-to-byte v6, v7

    #@7c
    .line 1493
    .local v6, "subaddr_nbr_of_digits":I
    iget-object v7, p1, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@7e
    int-to-byte v8, v6

    #@7f
    invoke-virtual {v7, v8}, Landroid/os/Parcel;->writeByte(B)V

    #@82
    .line 1494
    const/4 v5, 0x0

    #@83
    :goto_1
    if-ge v5, v6, :cond_1

    #@85
    .line 1495
    iget-object v7, p1, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@87
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readByte()B

    #@8a
    move-result v8

    #@8b
    invoke-virtual {v7, v8}, Landroid/os/Parcel;->writeByte(B)V

    #@8e
    .line 1494
    add-int/lit8 v5, v5, 0x1

    #@90
    goto :goto_1

    #@91
    .line 1498
    :cond_1
    invoke-virtual {v3}, Ljava/io/DataInputStream;->read()I

    #@94
    move-result v2

    #@95
    .line 1499
    .local v2, "bearerDataLength":I
    iget-object v7, p1, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@97
    invoke-virtual {v7, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@9a
    .line 1500
    const/4 v5, 0x0

    #@9b
    :goto_2
    if-ge v5, v2, :cond_2

    #@9d
    .line 1501
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
    .line 1500
    add-int/lit8 v5, v5, 0x1

    #@a8
    goto :goto_2

    #@a9
    .line 1503
    .end local v0    # "address_nbr_of_digits":I
    .end local v2    # "bearerDataLength":I
    .end local v5    # "i":I
    .end local v6    # "subaddr_nbr_of_digits":I
    :catch_0
    move-exception v4

    #@aa
    .line 1504
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
    .line 1470
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
    .line 1433
    iget-object v0, p1, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@2
    const/4 v1, 0x2

    #@3
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@6
    .line 1434
    iget-object v0, p1, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@8
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@b
    .line 1435
    iget-object v0, p1, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@d
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@10
    .line 1432
    return-void
.end method

.method private decrementWakeLock(Lcom/android/internal/telephony/RILRequest;)V
    .locals 3
    .param p1, "rr"    # Lcom/android/internal/telephony/RILRequest;

    #@0
    .prologue
    .line 2508
    monitor-enter p1

    #@1
    .line 2509
    :try_start_0
    iget v0, p1, Lcom/android/internal/telephony/RILRequest;->mWakeLockType:I

    #@3
    packed-switch v0, :pswitch_data_0

    #@6
    .line 2526
    const-string/jumbo v0, "RILJ"

    #@9
    new-instance v1, Ljava/lang/StringBuilder;

    #@b
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    const-string/jumbo v2, "Decrementing Invalid Wakelock type "

    #@11
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v1

    #@15
    iget v2, p1, Lcom/android/internal/telephony/RILRequest;->mWakeLockType:I

    #@17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v1

    #@1b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v1

    #@1f
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@22
    .line 2528
    :goto_0
    :pswitch_0
    const/4 v0, -0x1

    #@23
    iput v0, p1, Lcom/android/internal/telephony/RILRequest;->mWakeLockType:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@25
    monitor-exit p1

    #@26
    .line 2507
    return-void

    #@27
    .line 2511
    :pswitch_1
    :try_start_1
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    #@29
    monitor-enter v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2a
    .line 2512
    :try_start_2
    iget v0, p0, Lcom/android/internal/telephony/RIL;->mWakeLockCount:I

    #@2c
    const/4 v2, 0x1

    #@2d
    if-le v0, v2, :cond_0

    #@2f
    .line 2513
    iget v0, p0, Lcom/android/internal/telephony/RIL;->mWakeLockCount:I

    #@31
    add-int/lit8 v0, v0, -0x1

    #@33
    iput v0, p0, Lcom/android/internal/telephony/RIL;->mWakeLockCount:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@35
    :goto_1
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@36
    goto :goto_0

    #@37
    .line 2508
    :catchall_0
    move-exception v0

    #@38
    monitor-exit p1

    #@39
    throw v0

    #@3a
    .line 2515
    :cond_0
    const/4 v0, 0x0

    #@3b
    :try_start_4
    iput v0, p0, Lcom/android/internal/telephony/RIL;->mWakeLockCount:I

    #@3d
    .line 2516
    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    #@3f
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@42
    goto :goto_1

    #@43
    .line 2511
    :catchall_1
    move-exception v0

    #@44
    :try_start_5
    monitor-exit v1

    #@45
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@46
    .line 2509
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private findAndRemoveRequestFromList(I)Lcom/android/internal/telephony/RILRequest;
    .locals 4
    .param p1, "serial"    # I

    #@0
    .prologue
    .line 2633
    const/4 v1, 0x0

    #@1
    .line 2634
    .local v1, "rr":Lcom/android/internal/telephony/RILRequest;
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRequestList:Landroid/util/SparseArray;

    #@3
    monitor-enter v3

    #@4
    .line 2635
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
    .line 2636
    .local v1, "rr":Lcom/android/internal/telephony/RILRequest;
    if-eqz v1, :cond_0

    #@10
    .line 2637
    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mRequestList:Landroid/util/SparseArray;

    #@12
    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@15
    :cond_0
    monitor-exit v3

    #@16
    .line 2641
    return-object v1

    #@17
    .line 2634
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
    .line 3851
    new-instance v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse;

    #@2
    invoke-direct {v1}, Lcom/android/internal/telephony/dataconnection/DataCallResponse;-><init>()V

    #@5
    .line 3853
    .local v1, "dataCall":Lcom/android/internal/telephony/dataconnection/DataCallResponse;
    iput p2, v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->version:I

    #@7
    .line 3854
    const/4 v5, 0x5

    #@8
    if-ge p2, v5, :cond_1

    #@a
    .line 3855
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@d
    move-result v5

    #@e
    iput v5, v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->cid:I

    #@10
    .line 3856
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@13
    move-result v5

    #@14
    iput v5, v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->active:I

    #@16
    .line 3857
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@19
    move-result-object v5

    #@1a
    iput-object v5, v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->type:Ljava/lang/String;

    #@1c
    .line 3858
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1f
    move-result-object v0

    #@20
    .line 3859
    .local v0, "addresses":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@23
    move-result v5

    #@24
    if-nez v5, :cond_0

    #@26
    .line 3860
    const-string/jumbo v5, " "

    #@29
    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@2c
    move-result-object v5

    #@2d
    iput-object v5, v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->addresses:[Ljava/lang/String;

    #@2f
    .line 3895
    :cond_0
    :goto_0
    return-object v1

    #@30
    .line 3863
    .end local v0    # "addresses":Ljava/lang/String;
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@33
    move-result v5

    #@34
    iput v5, v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->status:I

    #@36
    .line 3864
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@39
    move-result v5

    #@3a
    iput v5, v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->suggestedRetryTime:I

    #@3c
    .line 3865
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@3f
    move-result v5

    #@40
    iput v5, v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->cid:I

    #@42
    .line 3866
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@45
    move-result v5

    #@46
    iput v5, v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->active:I

    #@48
    .line 3867
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@4b
    move-result-object v5

    #@4c
    iput-object v5, v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->type:Ljava/lang/String;

    #@4e
    .line 3868
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@51
    move-result-object v5

    #@52
    iput-object v5, v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->ifname:Ljava/lang/String;

    #@54
    .line 3869
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
    .line 3870
    iget-object v5, v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->ifname:Ljava/lang/String;

    #@60
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@63
    move-result v5

    #@64
    .line 3869
    if-eqz v5, :cond_2

    #@66
    .line 3871
    new-instance v5, Ljava/lang/RuntimeException;

    #@68
    const-string/jumbo v6, "getDataCallResponse, no ifname"

    #@6b
    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@6e
    throw v5

    #@6f
    .line 3873
    :cond_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@72
    move-result-object v0

    #@73
    .line 3874
    .restart local v0    # "addresses":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@76
    move-result v5

    #@77
    if-nez v5, :cond_3

    #@79
    .line 3875
    const-string/jumbo v5, " "

    #@7c
    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@7f
    move-result-object v5

    #@80
    iput-object v5, v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->addresses:[Ljava/lang/String;

    #@82
    .line 3877
    :cond_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@85
    move-result-object v2

    #@86
    .line 3878
    .local v2, "dnses":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@89
    move-result v5

    #@8a
    if-nez v5, :cond_4

    #@8c
    .line 3879
    const-string/jumbo v5, " "

    #@8f
    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@92
    move-result-object v5

    #@93
    iput-object v5, v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->dnses:[Ljava/lang/String;

    #@95
    .line 3881
    :cond_4
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@98
    move-result-object v3

    #@99
    .line 3882
    .local v3, "gateways":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@9c
    move-result v5

    #@9d
    if-nez v5, :cond_5

    #@9f
    .line 3883
    const-string/jumbo v5, " "

    #@a2
    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@a5
    move-result-object v5

    #@a6
    iput-object v5, v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->gateways:[Ljava/lang/String;

    #@a8
    .line 3885
    :cond_5
    const/16 v5, 0xa

    #@aa
    if-lt p2, v5, :cond_6

    #@ac
    .line 3886
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@af
    move-result-object v4

    #@b0
    .line 3887
    .local v4, "pcscf":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@b3
    move-result v5

    #@b4
    if-nez v5, :cond_6

    #@b6
    .line 3888
    const-string/jumbo v5, " "

    #@b9
    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@bc
    move-result-object v5

    #@bd
    iput-object v5, v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->pcscf:[Ljava/lang/String;

    #@bf
    .line 3891
    .end local v4    # "pcscf":Ljava/lang/String;
    :cond_6
    const/16 v5, 0xb

    #@c1
    if-lt p2, v5, :cond_0

    #@c3
    .line 3892
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
    .line 2443
    sparse-switch p1, :sswitch_data_0

    #@3
    .line 2449
    new-instance v1, Ljava/lang/RuntimeException;

    #@5
    .line 2450
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
    .line 2449
    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@1c
    throw v1

    #@1d
    .line 2444
    :sswitch_0
    sget-object v0, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_OFF:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    #@1f
    .line 2452
    .local v0, "state":Lcom/android/internal/telephony/CommandsInterface$RadioState;
    :goto_0
    return-object v0

    #@20
    .line 2445
    .end local v0    # "state":Lcom/android/internal/telephony/CommandsInterface$RadioState;
    :sswitch_1
    sget-object v0, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_UNAVAILABLE:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    #@22
    .restart local v0    # "state":Lcom/android/internal/telephony/CommandsInterface$RadioState;
    goto :goto_0

    #@23
    .line 2446
    .end local v0    # "state":Lcom/android/internal/telephony/CommandsInterface$RadioState;
    :sswitch_2
    sget-object v0, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_ON:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    #@25
    .restart local v0    # "state":Lcom/android/internal/telephony/CommandsInterface$RadioState;
    goto :goto_0

    #@26
    .line 2443
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0xa -> :sswitch_2
    .end sparse-switch
.end method

.method private static getResponseForTimedOutRILRequest(Lcom/android/internal/telephony/RILRequest;)Ljava/lang/Object;
    .locals 9
    .param p0, "rr"    # Lcom/android/internal/telephony/RILRequest;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    const/4 v4, 0x0

    #@2
    .line 542
    if-nez p0, :cond_0

    #@4
    return-object v0

    #@5
    .line 544
    :cond_0
    const/4 v1, 0x0

    #@6
    .line 545
    .local v1, "timeoutResponse":Ljava/lang/Object;
    iget v0, p0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    #@8
    packed-switch v0, :pswitch_data_0

    #@b
    .line 551
    .end local v1    # "timeoutResponse":Ljava/lang/Object;
    :goto_0
    return-object v1

    #@c
    .line 547
    .restart local v1    # "timeoutResponse":Ljava/lang/Object;
    :pswitch_0
    new-instance v1, Landroid/telephony/ModemActivityInfo;

    #@e
    .line 548
    .end local v1    # "timeoutResponse":Ljava/lang/Object;
    const-wide/16 v2, 0x0

    #@10
    const/4 v0, 0x5

    #@11
    new-array v6, v0, [I

    #@13
    move v5, v4

    #@14
    move v7, v4

    #@15
    move v8, v4

    #@16
    .line 547
    invoke-direct/range {v1 .. v8}, Landroid/telephony/ModemActivityInfo;-><init>(JII[III)V

    #@19
    .line 549
    .restart local v1    # "timeoutResponse":Ljava/lang/Object;
    goto :goto_0

    #@1a
    .line 545
    :pswitch_data_0
    .packed-switch 0x87
        :pswitch_0
    .end packed-switch
.end method

.method public static getTelephonyRILTimingHistograms()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/TelephonyHistogram;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 366
    sget-object v4, Lcom/android/internal/telephony/RIL;->mRilTimeHistograms:Landroid/util/SparseArray;

    #@2
    monitor-enter v4

    #@3
    .line 367
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    #@5
    sget-object v3, Lcom/android/internal/telephony/RIL;->mRilTimeHistograms:Landroid/util/SparseArray;

    #@7
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    #@a
    move-result v3

    #@b
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    #@e
    .line 368
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/TelephonyHistogram;>;"
    const/4 v1, 0x0

    #@f
    .local v1, "i":I
    :goto_0
    sget-object v3, Lcom/android/internal/telephony/RIL;->mRilTimeHistograms:Landroid/util/SparseArray;

    #@11
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    #@14
    move-result v3

    #@15
    if-ge v1, v3, :cond_0

    #@17
    .line 369
    new-instance v0, Landroid/telephony/TelephonyHistogram;

    #@19
    sget-object v3, Lcom/android/internal/telephony/RIL;->mRilTimeHistograms:Landroid/util/SparseArray;

    #@1b
    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@1e
    move-result-object v3

    #@1f
    check-cast v3, Landroid/telephony/TelephonyHistogram;

    #@21
    invoke-direct {v0, v3}, Landroid/telephony/TelephonyHistogram;-><init>(Landroid/telephony/TelephonyHistogram;)V

    #@24
    .line 370
    .local v0, "entry":Landroid/telephony/TelephonyHistogram;
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@27
    .line 368
    add-int/lit8 v1, v1, 0x1

    #@29
    goto :goto_0

    #@2a
    .end local v0    # "entry":Landroid/telephony/TelephonyHistogram;
    :cond_0
    monitor-exit v4

    #@2b
    .line 373
    return-object v2

    #@2c
    .line 366
    :catchall_0
    move-exception v3

    #@2d
    monitor-exit v4

    #@2e
    throw v3
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
    .line 5019
    invoke-static {p1, p9}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    #@3
    move-result-object v0

    #@4
    .line 5020
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@6
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@9
    .line 5021
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@b
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeInt(I)V

    #@e
    .line 5022
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@10
    invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeInt(I)V

    #@13
    .line 5023
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@15
    invoke-virtual {v1, p5}, Landroid/os/Parcel;->writeInt(I)V

    #@18
    .line 5024
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@1a
    invoke-virtual {v1, p6}, Landroid/os/Parcel;->writeInt(I)V

    #@1d
    .line 5025
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@1f
    invoke-virtual {v1, p7}, Landroid/os/Parcel;->writeInt(I)V

    #@22
    .line 5026
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@24
    invoke-virtual {v1, p8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@27
    .line 5029
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
    .line 5031
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    #@4f
    .line 5018
    return-void
.end method

.method private makeStaticRadioCapability()Lcom/android/internal/telephony/RadioCapability;
    .locals 8

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 2946
    const/4 v4, 0x1

    #@2
    .line 2948
    .local v4, "raf":I
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mContext:Landroid/content/Context;

    #@4
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@7
    move-result-object v1

    #@8
    .line 2949
    const v3, 0x1040069

    #@b
    .line 2948
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    #@e
    move-result-object v7

    #@f
    .line 2950
    .local v7, "rafString":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@12
    move-result v1

    #@13
    if-nez v1, :cond_0

    #@15
    .line 2951
    invoke-static {v7}, Landroid/telephony/RadioAccessFamily;->rafTypeFromString(Ljava/lang/String;)I

    #@18
    move-result v4

    #@19
    .line 2953
    :cond_0
    new-instance v0, Lcom/android/internal/telephony/RadioCapability;

    #@1b
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mInstanceId:Ljava/lang/Integer;

    #@1d
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    #@20
    move-result v1

    #@21
    .line 2954
    const-string/jumbo v5, ""

    #@24
    const/4 v6, 0x1

    #@25
    move v3, v2

    #@26
    .line 2953
    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/RadioCapability;-><init>(IIIILjava/lang/String;I)V

    #@29
    .line 2955
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
    .line 2956
    return-object v0
.end method

.method private notifyRegistrantsCdmaInfoRec(Lcom/android/internal/telephony/cdma/CdmaInformationRecords;)V
    .locals 5
    .param p1, "infoRec"    # Lcom/android/internal/telephony/cdma/CdmaInformationRecords;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 4158
    const/16 v0, 0x403

    #@3
    .line 4159
    .local v0, "response":I
    iget-object v1, p1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;->record:Ljava/lang/Object;

    #@5
    instance-of v1, v1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaDisplayInfoRec;

    #@7
    if-eqz v1, :cond_1

    #@9
    .line 4160
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mDisplayInfoRegistrants:Landroid/os/RegistrantList;

    #@b
    if-eqz v1, :cond_0

    #@d
    .line 4161
    iget-object v1, p1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;->record:Ljava/lang/Object;

    #@f
    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    #@12
    .line 4162
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mDisplayInfoRegistrants:Landroid/os/RegistrantList;

    #@14
    .line 4163
    new-instance v2, Landroid/os/AsyncResult;

    #@16
    iget-object v3, p1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;->record:Ljava/lang/Object;

    #@18
    invoke-direct {v2, v4, v3, v4}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    #@1b
    .line 4162
    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    #@1e
    .line 4157
    :cond_0
    :goto_0
    return-void

    #@1f
    .line 4165
    :cond_1
    iget-object v1, p1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;->record:Ljava/lang/Object;

    #@21
    instance-of v1, v1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaSignalInfoRec;

    #@23
    if-eqz v1, :cond_2

    #@25
    .line 4166
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mSignalInfoRegistrants:Landroid/os/RegistrantList;

    #@27
    if-eqz v1, :cond_0

    #@29
    .line 4167
    iget-object v1, p1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;->record:Ljava/lang/Object;

    #@2b
    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    #@2e
    .line 4168
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mSignalInfoRegistrants:Landroid/os/RegistrantList;

    #@30
    .line 4169
    new-instance v2, Landroid/os/AsyncResult;

    #@32
    iget-object v3, p1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;->record:Ljava/lang/Object;

    #@34
    invoke-direct {v2, v4, v3, v4}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    #@37
    .line 4168
    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    #@3a
    goto :goto_0

    #@3b
    .line 4171
    :cond_2
    iget-object v1, p1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;->record:Ljava/lang/Object;

    #@3d
    instance-of v1, v1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaNumberInfoRec;

    #@3f
    if-eqz v1, :cond_3

    #@41
    .line 4172
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mNumberInfoRegistrants:Landroid/os/RegistrantList;

    #@43
    if-eqz v1, :cond_0

    #@45
    .line 4173
    iget-object v1, p1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;->record:Ljava/lang/Object;

    #@47
    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    #@4a
    .line 4174
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mNumberInfoRegistrants:Landroid/os/RegistrantList;

    #@4c
    .line 4175
    new-instance v2, Landroid/os/AsyncResult;

    #@4e
    iget-object v3, p1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;->record:Ljava/lang/Object;

    #@50
    invoke-direct {v2, v4, v3, v4}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    #@53
    .line 4174
    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    #@56
    goto :goto_0

    #@57
    .line 4177
    :cond_3
    iget-object v1, p1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;->record:Ljava/lang/Object;

    #@59
    instance-of v1, v1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaRedirectingNumberInfoRec;

    #@5b
    if-eqz v1, :cond_4

    #@5d
    .line 4178
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mRedirNumInfoRegistrants:Landroid/os/RegistrantList;

    #@5f
    if-eqz v1, :cond_0

    #@61
    .line 4179
    iget-object v1, p1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;->record:Ljava/lang/Object;

    #@63
    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    #@66
    .line 4180
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mRedirNumInfoRegistrants:Landroid/os/RegistrantList;

    #@68
    .line 4181
    new-instance v2, Landroid/os/AsyncResult;

    #@6a
    iget-object v3, p1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;->record:Ljava/lang/Object;

    #@6c
    invoke-direct {v2, v4, v3, v4}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    #@6f
    .line 4180
    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    #@72
    goto :goto_0

    #@73
    .line 4183
    :cond_4
    iget-object v1, p1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;->record:Ljava/lang/Object;

    #@75
    instance-of v1, v1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaLineControlInfoRec;

    #@77
    if-eqz v1, :cond_5

    #@79
    .line 4184
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mLineControlInfoRegistrants:Landroid/os/RegistrantList;

    #@7b
    if-eqz v1, :cond_0

    #@7d
    .line 4185
    iget-object v1, p1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;->record:Ljava/lang/Object;

    #@7f
    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    #@82
    .line 4186
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mLineControlInfoRegistrants:Landroid/os/RegistrantList;

    #@84
    .line 4187
    new-instance v2, Landroid/os/AsyncResult;

    #@86
    iget-object v3, p1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;->record:Ljava/lang/Object;

    #@88
    invoke-direct {v2, v4, v3, v4}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    #@8b
    .line 4186
    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    #@8e
    goto :goto_0

    #@8f
    .line 4189
    :cond_5
    iget-object v1, p1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;->record:Ljava/lang/Object;

    #@91
    instance-of v1, v1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaT53ClirInfoRec;

    #@93
    if-eqz v1, :cond_6

    #@95
    .line 4190
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mT53ClirInfoRegistrants:Landroid/os/RegistrantList;

    #@97
    if-eqz v1, :cond_0

    #@99
    .line 4191
    iget-object v1, p1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;->record:Ljava/lang/Object;

    #@9b
    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    #@9e
    .line 4192
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mT53ClirInfoRegistrants:Landroid/os/RegistrantList;

    #@a0
    .line 4193
    new-instance v2, Landroid/os/AsyncResult;

    #@a2
    iget-object v3, p1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;->record:Ljava/lang/Object;

    #@a4
    invoke-direct {v2, v4, v3, v4}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    #@a7
    .line 4192
    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    #@aa
    goto/16 :goto_0

    #@ac
    .line 4195
    :cond_6
    iget-object v1, p1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;->record:Ljava/lang/Object;

    #@ae
    instance-of v1, v1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaT53AudioControlInfoRec;

    #@b0
    if-eqz v1, :cond_0

    #@b2
    .line 4196
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mT53AudCntrlInfoRegistrants:Landroid/os/RegistrantList;

    #@b4
    if-eqz v1, :cond_0

    #@b6
    .line 4197
    iget-object v1, p1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;->record:Ljava/lang/Object;

    #@b8
    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    #@bb
    .line 4198
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mT53AudCntrlInfoRegistrants:Landroid/os/RegistrantList;

    #@bd
    .line 4199
    new-instance v2, Landroid/os/AsyncResult;

    #@bf
    iget-object v3, p1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;->record:Ljava/lang/Object;

    #@c1
    invoke-direct {v2, v4, v3, v4}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    #@c4
    .line 4198
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
    .line 3567
    iput p1, p0, Lcom/android/internal/telephony/RIL;->mRilVersion:I

    #@3
    .line 3568
    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mRilConnectedRegistrants:Landroid/os/RegistrantList;

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 3569
    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mRilConnectedRegistrants:Landroid/os/RegistrantList;

    #@9
    .line 3570
    new-instance v1, Landroid/os/AsyncResult;

    #@b
    new-instance v2, Ljava/lang/Integer;

    #@d
    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    #@10
    invoke-direct {v1, v3, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    #@13
    .line 3569
    invoke-virtual {v0, v1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    #@16
    .line 3566
    :cond_0
    return-void
.end method

.method private processResponse(Landroid/os/Parcel;)V
    .locals 6
    .param p1, "p"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 2571
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@3
    move-result v2

    #@4
    .line 2573
    .local v2, "type":I
    const/4 v3, 0x1

    #@5
    if-eq v2, v3, :cond_0

    #@7
    const/4 v3, 0x4

    #@8
    if-ne v2, v3, :cond_2

    #@a
    .line 2574
    :cond_0
    invoke-direct {p0, p1, v2}, Lcom/android/internal/telephony/RIL;->processUnsolicited(Landroid/os/Parcel;I)V

    #@d
    .line 2568
    :cond_1
    :goto_0
    return-void

    #@e
    .line 2575
    :cond_2
    if-eqz v2, :cond_3

    #@10
    const/4 v3, 0x3

    #@11
    if-ne v2, v3, :cond_5

    #@13
    .line 2576
    :cond_3
    invoke-direct {p0, p1, v2}, Lcom/android/internal/telephony/RIL;->processSolicited(Landroid/os/Parcel;I)Lcom/android/internal/telephony/RILRequest;

    #@16
    move-result-object v0

    #@17
    .line 2577
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    if-eqz v0, :cond_1

    #@19
    .line 2578
    if-nez v2, :cond_4

    #@1b
    .line 2579
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->decrementWakeLock(Lcom/android/internal/telephony/RILRequest;)V

    #@1e
    .line 2581
    :cond_4
    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->release()V

    #@21
    .line 2582
    return-void

    #@22
    .line 2584
    .end local v0    # "rr":Lcom/android/internal/telephony/RILRequest;
    :cond_5
    const/4 v3, 0x2

    #@23
    if-ne v2, v3, :cond_1

    #@25
    .line 2586
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@28
    move-result v1

    #@29
    .line 2589
    .local v1, "serial":I
    iget-object v4, p0, Lcom/android/internal/telephony/RIL;->mRequestList:Landroid/util/SparseArray;

    #@2b
    monitor-enter v4

    #@2c
    .line 2590
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRequestList:Landroid/util/SparseArray;

    #@2e
    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@31
    move-result-object v0

    #@32
    check-cast v0, Lcom/android/internal/telephony/RILRequest;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@34
    .restart local v0    # "rr":Lcom/android/internal/telephony/RILRequest;
    monitor-exit v4

    #@35
    .line 2592
    if-nez v0, :cond_6

    #@37
    .line 2593
    const-string/jumbo v3, "RILJ"

    #@3a
    new-instance v4, Ljava/lang/StringBuilder;

    #@3c
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@3f
    const-string/jumbo v5, "Unexpected solicited ack response! sn: "

    #@42
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v4

    #@46
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@49
    move-result-object v4

    #@4a
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4d
    move-result-object v4

    #@4e
    invoke-static {v3, v4}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@51
    goto :goto_0

    #@52
    .line 2589
    .end local v0    # "rr":Lcom/android/internal/telephony/RILRequest;
    :catchall_0
    move-exception v3

    #@53
    monitor-exit v4

    #@54
    throw v3

    #@55
    .line 2595
    .restart local v0    # "rr":Lcom/android/internal/telephony/RILRequest;
    :cond_6
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->decrementWakeLock(Lcom/android/internal/telephony/RILRequest;)V

    #@58
    .line 2597
    new-instance v3, Ljava/lang/StringBuilder;

    #@5a
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@5d
    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    #@60
    move-result-object v4

    #@61
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@64
    move-result-object v3

    #@65
    const-string/jumbo v4, " Ack < "

    #@68
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6b
    move-result-object v3

    #@6c
    iget v4, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    #@6e
    invoke-static {v4}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    #@71
    move-result-object v4

    #@72
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@75
    move-result-object v3

    #@76
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@79
    move-result-object v3

    #@7a
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    #@7d
    goto :goto_0
.end method

.method private processSolicited(Landroid/os/Parcel;I)Lcom/android/internal/telephony/RILRequest;
    .locals 16
    .param p1, "p"    # Landroid/os/Parcel;
    .param p2, "type"    # I

    #@0
    .prologue
    .line 2663
    const/4 v2, 0x0

    #@1
    .line 2665
    .local v2, "found":Z
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    #@4
    move-result v14

    #@5
    .line 2666
    .local v14, "serial":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    #@8
    move-result v7

    #@9
    .line 2670
    .local v7, "error":I
    move-object/from16 v0, p0

    #@b
    invoke-direct {v0, v14}, Lcom/android/internal/telephony/RIL;->findAndRemoveRequestFromList(I)Lcom/android/internal/telephony/RILRequest;

    #@e
    move-result-object v13

    #@f
    .line 2672
    .local v13, "rr":Lcom/android/internal/telephony/RILRequest;
    if-nez v13, :cond_0

    #@11
    .line 2673
    const-string/jumbo v4, "RILJ"

    #@14
    new-instance v5, Ljava/lang/StringBuilder;

    #@16
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@19
    const-string/jumbo v6, "Unexpected solicited response! sn: "

    #@1c
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v5

    #@20
    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@23
    move-result-object v5

    #@24
    .line 2674
    const-string/jumbo v6, " error: "

    #@27
    .line 2673
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v5

    #@2b
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v5

    #@2f
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@32
    move-result-object v5

    #@33
    invoke-static {v4, v5}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@36
    .line 2675
    const/4 v4, 0x0

    #@37
    return-object v4

    #@38
    .line 2679
    :cond_0
    move-object/from16 v0, p0

    #@3a
    invoke-direct {v0, v13}, Lcom/android/internal/telephony/RIL;->addToRilHistogram(Lcom/android/internal/telephony/RILRequest;)V

    #@3d
    .line 2681
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/RIL;->getRilVersion()I

    #@40
    move-result v4

    #@41
    const/16 v5, 0xd

    #@43
    if-lt v4, v5, :cond_1

    #@45
    const/4 v4, 0x3

    #@46
    move/from16 v0, p2

    #@48
    if-ne v0, v4, :cond_1

    #@4a
    .line 2683
    const/16 v4, 0x320

    #@4c
    const/4 v5, 0x0

    #@4d
    invoke-static {v4, v5}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    #@50
    move-result-object v12

    #@51
    .line 2684
    .local v12, "response":Lcom/android/internal/telephony/RILRequest;
    move-object/from16 v0, p0

    #@53
    iget-object v4, v0, Lcom/android/internal/telephony/RIL;->mSender:Lcom/android/internal/telephony/RIL$RILSender;

    #@55
    const/4 v5, 0x3

    #@56
    invoke-virtual {v4, v5, v12}, Lcom/android/internal/telephony/RIL$RILSender;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@59
    move-result-object v11

    #@5a
    .line 2685
    .local v11, "msg":Landroid/os/Message;
    const/4 v4, 0x1

    #@5b
    move-object/from16 v0, p0

    #@5d
    invoke-direct {v0, v13, v4}, Lcom/android/internal/telephony/RIL;->acquireWakeLock(Lcom/android/internal/telephony/RILRequest;I)V

    #@60
    .line 2686
    invoke-virtual {v11}, Landroid/os/Message;->sendToTarget()V

    #@63
    .line 2688
    new-instance v4, Ljava/lang/StringBuilder;

    #@65
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@68
    const-string/jumbo v5, "Response received for "

    #@6b
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6e
    move-result-object v4

    #@6f
    invoke-virtual {v13}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    #@72
    move-result-object v5

    #@73
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@76
    move-result-object v4

    #@77
    const-string/jumbo v5, " "

    #@7a
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7d
    move-result-object v4

    #@7e
    .line 2689
    iget v5, v13, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    #@80
    invoke-static {v5}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    #@83
    move-result-object v5

    #@84
    .line 2688
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@87
    move-result-object v4

    #@88
    .line 2689
    const-string/jumbo v5, " Sending ack to ril.cpp"

    #@8b
    .line 2688
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8e
    move-result-object v4

    #@8f
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@92
    move-result-object v4

    #@93
    move-object/from16 v0, p0

    #@95
    invoke-direct {v0, v4}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    #@98
    .line 2694
    .end local v11    # "msg":Landroid/os/Message;
    .end local v12    # "response":Lcom/android/internal/telephony/RILRequest;
    :cond_1
    const/4 v3, 0x0

    #@99
    .line 2696
    .local v3, "ret":Ljava/lang/Object;
    if-eqz v7, :cond_2

    #@9b
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataAvail()I

    #@9e
    move-result v4

    #@9f
    if-lez v4, :cond_4

    #@a1
    .line 2698
    :cond_2
    :try_start_0
    iget v4, v13, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    #@a3
    packed-switch v4, :pswitch_data_0

    #@a6
    .line 2849
    :pswitch_0
    new-instance v4, Ljava/lang/RuntimeException;

    #@a8
    new-instance v5, Ljava/lang/StringBuilder;

    #@aa
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@ad
    const-string/jumbo v6, "Unrecognized solicited response: "

    #@b0
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b3
    move-result-object v5

    #@b4
    iget v6, v13, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    #@b6
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@b9
    move-result-object v5

    #@ba
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@bd
    move-result-object v5

    #@be
    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@c1
    throw v4
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    #@c2
    .line 2851
    :catch_0
    move-exception v15

    #@c3
    .line 2854
    .local v15, "tr":Ljava/lang/Throwable;
    const-string/jumbo v4, "RILJ"

    #@c6
    new-instance v5, Ljava/lang/StringBuilder;

    #@c8
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@cb
    invoke-virtual {v13}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    #@ce
    move-result-object v6

    #@cf
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d2
    move-result-object v5

    #@d3
    const-string/jumbo v6, "< "

    #@d6
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d9
    move-result-object v5

    #@da
    .line 2855
    iget v6, v13, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    #@dc
    invoke-static {v6}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    #@df
    move-result-object v6

    #@e0
    .line 2854
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e3
    move-result-object v5

    #@e4
    .line 2856
    const-string/jumbo v6, " exception, possible invalid RIL response"

    #@e7
    .line 2854
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ea
    move-result-object v5

    #@eb
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ee
    move-result-object v5

    #@ef
    invoke-static {v4, v5, v15}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@f2
    .line 2858
    iget-object v4, v13, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    #@f4
    if-eqz v4, :cond_3

    #@f6
    .line 2859
    iget-object v4, v13, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    #@f8
    const/4 v5, 0x0

    #@f9
    invoke-static {v4, v5, v15}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    #@fc
    .line 2860
    iget-object v4, v13, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    #@fe
    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    #@101
    .line 2862
    :cond_3
    return-object v13

    #@102
    .line 2704
    .end local v15    # "tr":Ljava/lang/Throwable;
    :pswitch_1
    :try_start_1
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseIccCardStatus(Landroid/os/Parcel;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    #@105
    move-result-object v3

    #@106
    .line 2866
    .end local v3    # "ret":Ljava/lang/Object;
    :cond_4
    :goto_0
    iget v4, v13, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    #@108
    const/16 v5, 0x81

    #@10a
    if-ne v4, v5, :cond_5

    #@10c
    .line 2869
    new-instance v4, Ljava/lang/StringBuilder;

    #@10e
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@111
    const-string/jumbo v5, "Response to RIL_REQUEST_SHUTDOWN received. Error is "

    #@114
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@117
    move-result-object v4

    #@118
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@11b
    move-result-object v4

    #@11c
    .line 2870
    const-string/jumbo v5, " Setting Radio State to Unavailable regardless of error."

    #@11f
    .line 2869
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@122
    move-result-object v4

    #@123
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@126
    move-result-object v4

    #@127
    move-object/from16 v0, p0

    #@129
    invoke-direct {v0, v4}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    #@12c
    .line 2871
    sget-object v4, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_UNAVAILABLE:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    #@12e
    move-object/from16 v0, p0

    #@130
    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/RIL;->setRadioState(Lcom/android/internal/telephony/CommandsInterface$RadioState;)V

    #@133
    .line 2877
    :cond_5
    iget v4, v13, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    #@135
    packed-switch v4, :pswitch_data_1

    #@138
    .line 2890
    :cond_6
    :goto_1
    :pswitch_2
    if-eqz v7, :cond_8

    #@13a
    .line 2891
    iget v4, v13, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    #@13c
    sparse-switch v4, :sswitch_data_0

    #@13f
    .line 2925
    :cond_7
    :goto_2
    if-eqz v7, :cond_8

    #@141
    invoke-virtual {v13, v7, v3}, Lcom/android/internal/telephony/RILRequest;->onError(ILjava/lang/Object;)V

    #@144
    .line 2927
    :cond_8
    if-nez v7, :cond_9

    #@146
    .line 2929
    new-instance v4, Ljava/lang/StringBuilder;

    #@148
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@14b
    invoke-virtual {v13}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    #@14e
    move-result-object v5

    #@14f
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@152
    move-result-object v4

    #@153
    const-string/jumbo v5, "< "

    #@156
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@159
    move-result-object v4

    #@15a
    iget v5, v13, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    #@15c
    invoke-static {v5}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    #@15f
    move-result-object v5

    #@160
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@163
    move-result-object v4

    #@164
    .line 2930
    const-string/jumbo v5, " "

    #@167
    .line 2929
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16a
    move-result-object v4

    #@16b
    .line 2930
    iget v5, v13, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    #@16d
    invoke-static {v5, v3}, Lcom/android/internal/telephony/RIL;->retToString(ILjava/lang/Object;)Ljava/lang/String;

    #@170
    move-result-object v5

    #@171
    .line 2929
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@174
    move-result-object v4

    #@175
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@178
    move-result-object v4

    #@179
    move-object/from16 v0, p0

    #@17b
    invoke-direct {v0, v4}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    #@17e
    .line 2932
    iget-object v4, v13, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    #@180
    if-eqz v4, :cond_9

    #@182
    .line 2933
    iget-object v4, v13, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    #@184
    const/4 v5, 0x0

    #@185
    invoke-static {v4, v3, v5}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    #@188
    .line 2934
    iget-object v4, v13, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    #@18a
    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    #@18d
    .line 2938
    :cond_9
    move-object/from16 v0, p0

    #@18f
    iget-object v4, v0, Lcom/android/internal/telephony/RIL;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    #@191
    move-object/from16 v0, p0

    #@193
    iget-object v5, v0, Lcom/android/internal/telephony/RIL;->mInstanceId:Ljava/lang/Integer;

    #@195
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    #@198
    move-result v5

    #@199
    iget v6, v13, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    #@19b
    .line 2939
    iget v8, v13, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    #@19d
    move-object v9, v3

    #@19e
    .line 2938
    invoke-virtual/range {v4 .. v9}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeOnRilSolicitedResponse(IIIILjava/lang/Object;)V

    #@1a1
    .line 2941
    return-object v13

    #@1a2
    .line 2705
    .restart local v3    # "ret":Ljava/lang/Object;
    :pswitch_3
    :try_start_2
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1a5
    move-result-object v3

    #@1a6
    goto/16 :goto_0

    #@1a8
    .line 2706
    :pswitch_4
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1ab
    move-result-object v3

    #@1ac
    goto/16 :goto_0

    #@1ae
    .line 2707
    :pswitch_5
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1b1
    move-result-object v3

    #@1b2
    goto/16 :goto_0

    #@1b4
    .line 2708
    :pswitch_6
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1b7
    move-result-object v3

    #@1b8
    goto/16 :goto_0

    #@1ba
    .line 2709
    :pswitch_7
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1bd
    move-result-object v3

    #@1be
    goto/16 :goto_0

    #@1c0
    .line 2710
    :pswitch_8
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1c3
    move-result-object v3

    #@1c4
    goto/16 :goto_0

    #@1c6
    .line 2711
    :pswitch_9
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1c9
    move-result-object v3

    #@1ca
    goto/16 :goto_0

    #@1cc
    .line 2712
    :pswitch_a
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseCallList(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1cf
    move-result-object v3

    #@1d0
    goto/16 :goto_0

    #@1d2
    .line 2713
    :pswitch_b
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1d5
    move-result-object v3

    #@1d6
    goto/16 :goto_0

    #@1d8
    .line 2714
    :pswitch_c
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1db
    move-result-object v3

    #@1dc
    goto/16 :goto_0

    #@1de
    .line 2715
    :pswitch_d
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1e1
    move-result-object v3

    #@1e2
    goto/16 :goto_0

    #@1e4
    .line 2716
    :pswitch_e
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1e7
    move-result-object v3

    #@1e8
    goto/16 :goto_0

    #@1ea
    .line 2718
    :pswitch_f
    move-object/from16 v0, p0

    #@1ec
    iget-object v4, v0, Lcom/android/internal/telephony/RIL;->mTestingEmergencyCall:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@1ee
    const/4 v5, 0x0

    #@1ef
    invoke-virtual {v4, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    #@1f2
    move-result v4

    #@1f3
    if-eqz v4, :cond_a

    #@1f5
    .line 2719
    move-object/from16 v0, p0

    #@1f7
    iget-object v4, v0, Lcom/android/internal/telephony/RIL;->mEmergencyCallbackModeRegistrant:Landroid/os/Registrant;

    #@1f9
    if-eqz v4, :cond_a

    #@1fb
    .line 2720
    const-string/jumbo v4, "testing emergency call, notify ECM Registrants"

    #@1fe
    move-object/from16 v0, p0

    #@200
    invoke-direct {v0, v4}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    #@203
    .line 2721
    move-object/from16 v0, p0

    #@205
    iget-object v4, v0, Lcom/android/internal/telephony/RIL;->mEmergencyCallbackModeRegistrant:Landroid/os/Registrant;

    #@207
    invoke-virtual {v4}, Landroid/os/Registrant;->notifyRegistrant()V

    #@20a
    .line 2724
    :cond_a
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    #@20d
    move-result-object v3

    #@20e
    goto/16 :goto_0

    #@210
    .line 2727
    :pswitch_10
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    #@213
    move-result-object v3

    #@214
    goto/16 :goto_0

    #@216
    .line 2728
    :pswitch_11
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    #@219
    move-result-object v3

    #@21a
    goto/16 :goto_0

    #@21c
    .line 2729
    :pswitch_12
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    #@21f
    move-result-object v3

    #@220
    goto/16 :goto_0

    #@222
    .line 2730
    :pswitch_13
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseFailCause(Landroid/os/Parcel;)Ljava/lang/Object;

    #@225
    move-result-object v3

    #@226
    goto/16 :goto_0

    #@228
    .line 2731
    :pswitch_14
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseSignalStrength(Landroid/os/Parcel;)Ljava/lang/Object;

    #@22b
    move-result-object v3

    #@22c
    goto/16 :goto_0

    #@22e
    .line 2732
    :pswitch_15
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseStrings(Landroid/os/Parcel;)Ljava/lang/Object;

    #@231
    move-result-object v3

    #@232
    goto/16 :goto_0

    #@234
    .line 2733
    :pswitch_16
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseStrings(Landroid/os/Parcel;)Ljava/lang/Object;

    #@237
    move-result-object v3

    #@238
    goto/16 :goto_0

    #@23a
    .line 2734
    :pswitch_17
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseStrings(Landroid/os/Parcel;)Ljava/lang/Object;

    #@23d
    move-result-object v3

    #@23e
    goto/16 :goto_0

    #@240
    .line 2735
    :pswitch_18
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    #@243
    move-result-object v3

    #@244
    goto/16 :goto_0

    #@246
    .line 2736
    :pswitch_19
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    #@249
    move-result-object v3

    #@24a
    goto/16 :goto_0

    #@24c
    .line 2737
    :pswitch_1a
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseSMS(Landroid/os/Parcel;)Ljava/lang/Object;

    #@24f
    move-result-object v3

    #@250
    goto/16 :goto_0

    #@252
    .line 2738
    :pswitch_1b
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseSMS(Landroid/os/Parcel;)Ljava/lang/Object;

    #@255
    move-result-object v3

    #@256
    goto/16 :goto_0

    #@258
    .line 2739
    :pswitch_1c
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseSetupDataCall(Landroid/os/Parcel;)Ljava/lang/Object;

    #@25b
    move-result-object v3

    #@25c
    goto/16 :goto_0

    #@25e
    .line 2740
    :pswitch_1d
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseICC_IO(Landroid/os/Parcel;)Ljava/lang/Object;

    #@261
    move-result-object v3

    #@262
    goto/16 :goto_0

    #@264
    .line 2741
    :pswitch_1e
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    #@267
    move-result-object v3

    #@268
    goto/16 :goto_0

    #@26a
    .line 2742
    :pswitch_1f
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    #@26d
    move-result-object v3

    #@26e
    goto/16 :goto_0

    #@270
    .line 2743
    :pswitch_20
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    #@273
    move-result-object v3

    #@274
    goto/16 :goto_0

    #@276
    .line 2744
    :pswitch_21
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    #@279
    move-result-object v3

    #@27a
    goto/16 :goto_0

    #@27c
    .line 2745
    :pswitch_22
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseCallForward(Landroid/os/Parcel;)Ljava/lang/Object;

    #@27f
    move-result-object v3

    #@280
    goto/16 :goto_0

    #@282
    .line 2746
    :pswitch_23
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    #@285
    move-result-object v3

    #@286
    goto/16 :goto_0

    #@288
    .line 2747
    :pswitch_24
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    #@28b
    move-result-object v3

    #@28c
    goto/16 :goto_0

    #@28e
    .line 2748
    :pswitch_25
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    #@291
    move-result-object v3

    #@292
    goto/16 :goto_0

    #@294
    .line 2749
    :pswitch_26
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    #@297
    move-result-object v3

    #@298
    goto/16 :goto_0

    #@29a
    .line 2750
    :pswitch_27
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    #@29d
    move-result-object v3

    #@29e
    goto/16 :goto_0

    #@2a0
    .line 2751
    :pswitch_28
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    #@2a3
    move-result-object v3

    #@2a4
    goto/16 :goto_0

    #@2a6
    .line 2752
    :pswitch_29
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    #@2a9
    move-result-object v3

    #@2aa
    goto/16 :goto_0

    #@2ac
    .line 2753
    :pswitch_2a
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    #@2af
    move-result-object v3

    #@2b0
    goto/16 :goto_0

    #@2b2
    .line 2754
    :pswitch_2b
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    #@2b5
    move-result-object v3

    #@2b6
    goto/16 :goto_0

    #@2b8
    .line 2755
    :pswitch_2c
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    #@2bb
    move-result-object v3

    #@2bc
    goto/16 :goto_0

    #@2be
    .line 2756
    :pswitch_2d
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    #@2c1
    move-result-object v3

    #@2c2
    goto/16 :goto_0

    #@2c4
    .line 2757
    :pswitch_2e
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    #@2c7
    move-result-object v3

    #@2c8
    goto/16 :goto_0

    #@2ca
    .line 2758
    :pswitch_2f
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    #@2cd
    move-result-object v3

    #@2ce
    goto/16 :goto_0

    #@2d0
    .line 2759
    :pswitch_30
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    #@2d3
    move-result-object v3

    #@2d4
    goto/16 :goto_0

    #@2d6
    .line 2760
    :pswitch_31
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseOperatorInfos(Landroid/os/Parcel;)Ljava/lang/Object;

    #@2d9
    move-result-object v3

    #@2da
    goto/16 :goto_0

    #@2dc
    .line 2761
    :pswitch_32
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    #@2df
    move-result-object v3

    #@2e0
    goto/16 :goto_0

    #@2e2
    .line 2762
    :pswitch_33
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    #@2e5
    move-result-object v3

    #@2e6
    goto/16 :goto_0

    #@2e8
    .line 2763
    :pswitch_34
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    #@2eb
    move-result-object v3

    #@2ec
    goto/16 :goto_0

    #@2ee
    .line 2764
    :pswitch_35
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    #@2f1
    move-result-object v3

    #@2f2
    goto/16 :goto_0

    #@2f4
    .line 2765
    :pswitch_36
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    #@2f7
    move-result-object v3

    #@2f8
    goto/16 :goto_0

    #@2fa
    .line 2766
    :pswitch_37
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    #@2fd
    move-result-object v3

    #@2fe
    goto/16 :goto_0

    #@300
    .line 2767
    :pswitch_38
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    #@303
    move-result-object v3

    #@304
    goto/16 :goto_0

    #@306
    .line 2768
    :pswitch_39
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    #@309
    move-result-object v3

    #@30a
    goto/16 :goto_0

    #@30c
    .line 2769
    :pswitch_3a
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseDataCallList(Landroid/os/Parcel;)Ljava/lang/Object;

    #@30f
    move-result-object v3

    #@310
    goto/16 :goto_0

    #@312
    .line 2770
    :pswitch_3b
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    #@315
    move-result-object v3

    #@316
    goto/16 :goto_0

    #@318
    .line 2771
    :pswitch_3c
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseRaw(Landroid/os/Parcel;)Ljava/lang/Object;

    #@31b
    move-result-object v3

    #@31c
    goto/16 :goto_0

    #@31e
    .line 2772
    :pswitch_3d
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseStrings(Landroid/os/Parcel;)Ljava/lang/Object;

    #@321
    move-result-object v3

    #@322
    goto/16 :goto_0

    #@324
    .line 2773
    :pswitch_3e
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    #@327
    move-result-object v3

    #@328
    goto/16 :goto_0

    #@32a
    .line 2774
    :pswitch_3f
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    #@32d
    move-result-object v3

    #@32e
    goto/16 :goto_0

    #@330
    .line 2775
    :pswitch_40
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    #@333
    move-result-object v3

    #@334
    goto/16 :goto_0

    #@336
    .line 2776
    :pswitch_41
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    #@339
    move-result-object v3

    #@33a
    goto/16 :goto_0

    #@33c
    .line 2777
    :pswitch_42
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    #@33f
    move-result-object v3

    #@340
    goto/16 :goto_0

    #@342
    .line 2778
    :pswitch_43
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    #@345
    move-result-object v3

    #@346
    goto/16 :goto_0

    #@348
    .line 2779
    :pswitch_44
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    #@34b
    move-result-object v3

    #@34c
    goto/16 :goto_0

    #@34e
    .line 2780
    :pswitch_45
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    #@351
    move-result-object v3

    #@352
    goto/16 :goto_0

    #@354
    .line 2781
    :pswitch_46
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    #@357
    move-result-object v3

    #@358
    goto/16 :goto_0

    #@35a
    .line 2782
    :pswitch_47
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    #@35d
    move-result-object v3

    #@35e
    goto/16 :goto_0

    #@360
    .line 2783
    :pswitch_48
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    #@363
    move-result-object v3

    #@364
    goto/16 :goto_0

    #@366
    .line 2784
    :pswitch_49
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    #@369
    move-result-object v3

    #@36a
    goto/16 :goto_0

    #@36c
    .line 2785
    :pswitch_4a
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    #@36f
    move-result-object v3

    #@370
    goto/16 :goto_0

    #@372
    .line 2786
    :pswitch_4b
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseGetPreferredNetworkType(Landroid/os/Parcel;)Ljava/lang/Object;

    #@375
    move-result-object v3

    #@376
    goto/16 :goto_0

    #@378
    .line 2787
    :pswitch_4c
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseCellList(Landroid/os/Parcel;)Ljava/lang/Object;

    #@37b
    move-result-object v3

    #@37c
    goto/16 :goto_0

    #@37e
    .line 2788
    :pswitch_4d
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    #@381
    move-result-object v3

    #@382
    goto/16 :goto_0

    #@384
    .line 2789
    :pswitch_4e
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    #@387
    move-result-object v3

    #@388
    goto/16 :goto_0

    #@38a
    .line 2790
    :pswitch_4f
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    #@38d
    move-result-object v3

    #@38e
    goto/16 :goto_0

    #@390
    .line 2791
    :pswitch_50
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    #@393
    move-result-object v3

    #@394
    goto/16 :goto_0

    #@396
    .line 2792
    :pswitch_51
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    #@399
    move-result-object v3

    #@39a
    goto/16 :goto_0

    #@39c
    .line 2793
    :pswitch_52
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    #@39f
    move-result-object v3

    #@3a0
    goto/16 :goto_0

    #@3a2
    .line 2794
    :pswitch_53
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    #@3a5
    move-result-object v3

    #@3a6
    goto/16 :goto_0

    #@3a8
    .line 2795
    :pswitch_54
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    #@3ab
    move-result-object v3

    #@3ac
    goto/16 :goto_0

    #@3ae
    .line 2796
    :pswitch_55
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    #@3b1
    move-result-object v3

    #@3b2
    goto/16 :goto_0

    #@3b4
    .line 2797
    :pswitch_56
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    #@3b7
    move-result-object v3

    #@3b8
    goto/16 :goto_0

    #@3ba
    .line 2798
    :pswitch_57
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseSMS(Landroid/os/Parcel;)Ljava/lang/Object;

    #@3bd
    move-result-object v3

    #@3be
    goto/16 :goto_0

    #@3c0
    .line 2799
    :pswitch_58
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    #@3c3
    move-result-object v3

    #@3c4
    goto/16 :goto_0

    #@3c6
    .line 2800
    :pswitch_59
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseGmsBroadcastConfig(Landroid/os/Parcel;)Ljava/lang/Object;

    #@3c9
    move-result-object v3

    #@3ca
    goto/16 :goto_0

    #@3cc
    .line 2801
    :pswitch_5a
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    #@3cf
    move-result-object v3

    #@3d0
    goto/16 :goto_0

    #@3d2
    .line 2802
    :pswitch_5b
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    #@3d5
    move-result-object v3

    #@3d6
    goto/16 :goto_0

    #@3d8
    .line 2803
    :pswitch_5c
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseCdmaBroadcastConfig(Landroid/os/Parcel;)Ljava/lang/Object;

    #@3db
    move-result-object v3

    #@3dc
    goto/16 :goto_0

    #@3de
    .line 2804
    :pswitch_5d
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    #@3e1
    move-result-object v3

    #@3e2
    goto/16 :goto_0

    #@3e4
    .line 2805
    :pswitch_5e
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    #@3e7
    move-result-object v3

    #@3e8
    goto/16 :goto_0

    #@3ea
    .line 2806
    :pswitch_5f
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    #@3ed
    move-result-object v3

    #@3ee
    goto/16 :goto_0

    #@3f0
    .line 2807
    :pswitch_60
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseStrings(Landroid/os/Parcel;)Ljava/lang/Object;

    #@3f3
    move-result-object v3

    #@3f4
    goto/16 :goto_0

    #@3f6
    .line 2808
    :pswitch_61
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    #@3f9
    move-result-object v3

    #@3fa
    goto/16 :goto_0

    #@3fc
    .line 2809
    :pswitch_62
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    #@3ff
    move-result-object v3

    #@400
    goto/16 :goto_0

    #@402
    .line 2810
    :pswitch_63
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseStrings(Landroid/os/Parcel;)Ljava/lang/Object;

    #@405
    move-result-object v3

    #@406
    goto/16 :goto_0

    #@408
    .line 2811
    :pswitch_64
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    #@40b
    move-result-object v3

    #@40c
    goto/16 :goto_0

    #@40e
    .line 2812
    :pswitch_65
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    #@411
    move-result-object v3

    #@412
    goto/16 :goto_0

    #@414
    .line 2813
    :pswitch_66
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    #@417
    move-result-object v3

    #@418
    goto/16 :goto_0

    #@41a
    .line 2814
    :pswitch_67
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    #@41d
    move-result-object v3

    #@41e
    goto/16 :goto_0

    #@420
    .line 2815
    :pswitch_68
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    #@423
    move-result-object v3

    #@424
    goto/16 :goto_0

    #@426
    .line 2816
    :pswitch_69
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    #@429
    move-result-object v3

    #@42a
    goto/16 :goto_0

    #@42c
    .line 2817
    :pswitch_6a
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    #@42f
    move-result-object v3

    #@430
    goto/16 :goto_0

    #@432
    .line 2818
    :pswitch_6b
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    #@435
    move-result-object v3

    #@436
    goto/16 :goto_0

    #@438
    .line 2819
    :pswitch_6c
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseICC_IO(Landroid/os/Parcel;)Ljava/lang/Object;

    #@43b
    move-result-object v3

    #@43c
    goto/16 :goto_0

    #@43e
    .line 2820
    :pswitch_6d
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    #@441
    move-result-object v3

    #@442
    goto/16 :goto_0

    #@444
    .line 2821
    :pswitch_6e
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseCellInfoList(Landroid/os/Parcel;)Ljava/util/ArrayList;

    #@447
    move-result-object v3

    #@448
    goto/16 :goto_0

    #@44a
    .line 2822
    :pswitch_6f
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    #@44d
    move-result-object v3

    #@44e
    goto/16 :goto_0

    #@450
    .line 2823
    :pswitch_70
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    #@453
    move-result-object v3

    #@454
    goto/16 :goto_0

    #@456
    .line 2824
    :pswitch_71
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    #@459
    move-result-object v3

    #@45a
    goto/16 :goto_0

    #@45c
    .line 2825
    :pswitch_72
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    #@45f
    move-result-object v3

    #@460
    goto/16 :goto_0

    #@462
    .line 2826
    :pswitch_73
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseSMS(Landroid/os/Parcel;)Ljava/lang/Object;

    #@465
    move-result-object v3

    #@466
    goto/16 :goto_0

    #@468
    .line 2827
    :pswitch_74
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseICC_IO(Landroid/os/Parcel;)Ljava/lang/Object;

    #@46b
    move-result-object v3

    #@46c
    goto/16 :goto_0

    #@46e
    .line 2828
    :pswitch_75
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    #@471
    move-result-object v3

    #@472
    goto/16 :goto_0

    #@474
    .line 2829
    :pswitch_76
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    #@477
    move-result-object v3

    #@478
    goto/16 :goto_0

    #@47a
    .line 2830
    :pswitch_77
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseICC_IO(Landroid/os/Parcel;)Ljava/lang/Object;

    #@47d
    move-result-object v3

    #@47e
    goto/16 :goto_0

    #@480
    .line 2831
    :pswitch_78
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    #@483
    move-result-object v3

    #@484
    goto/16 :goto_0

    #@486
    .line 2832
    :pswitch_79
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    #@489
    move-result-object v3

    #@48a
    goto/16 :goto_0

    #@48c
    .line 2833
    :pswitch_7a
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    #@48f
    move-result-object v3

    #@490
    goto/16 :goto_0

    #@492
    .line 2834
    :pswitch_7b
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    #@495
    move-result-object v3

    #@496
    goto/16 :goto_0

    #@498
    .line 2835
    :pswitch_7c
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    #@49b
    move-result-object v3

    #@49c
    goto/16 :goto_0

    #@49e
    .line 2836
    :pswitch_7d
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    #@4a1
    move-result-object v3

    #@4a2
    goto/16 :goto_0

    #@4a4
    .line 2837
    :pswitch_7e
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseHardwareConfig(Landroid/os/Parcel;)Ljava/lang/Object;

    #@4a7
    move-result-object v3

    #@4a8
    goto/16 :goto_0

    #@4aa
    .line 2838
    :pswitch_7f
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseICC_IOBase64(Landroid/os/Parcel;)Ljava/lang/Object;

    #@4ad
    move-result-object v3

    #@4ae
    goto/16 :goto_0

    #@4b0
    .line 2839
    :pswitch_80
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    #@4b3
    move-result-object v3

    #@4b4
    goto/16 :goto_0

    #@4b6
    .line 2840
    :pswitch_81
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseRadioCapability(Landroid/os/Parcel;)Ljava/lang/Object;

    #@4b9
    move-result-object v3

    #@4ba
    goto/16 :goto_0

    #@4bc
    .line 2841
    :pswitch_82
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseRadioCapability(Landroid/os/Parcel;)Ljava/lang/Object;

    #@4bf
    move-result-object v3

    #@4c0
    goto/16 :goto_0

    #@4c2
    .line 2842
    :pswitch_83
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseLceStatus(Landroid/os/Parcel;)Ljava/lang/Object;

    #@4c5
    move-result-object v3

    #@4c6
    goto/16 :goto_0

    #@4c8
    .line 2843
    :pswitch_84
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseLceStatus(Landroid/os/Parcel;)Ljava/lang/Object;

    #@4cb
    move-result-object v3

    #@4cc
    goto/16 :goto_0

    #@4ce
    .line 2844
    :pswitch_85
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseLceData(Landroid/os/Parcel;)Ljava/lang/Object;

    #@4d1
    move-result-object v3

    #@4d2
    goto/16 :goto_0

    #@4d4
    .line 2845
    :pswitch_86
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseActivityData(Landroid/os/Parcel;)Ljava/lang/Object;

    #@4d7
    move-result-object v3

    #@4d8
    goto/16 :goto_0

    #@4da
    .line 2846
    :pswitch_87
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    #@4dd
    move-result-object v3

    #@4de
    goto/16 :goto_0

    #@4e0
    .line 2847
    :pswitch_88
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseCarrierIdentifiers(Landroid/os/Parcel;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    #@4e3
    move-result-object v3

    #@4e4
    goto/16 :goto_0

    #@4e6
    .line 2880
    .end local v3    # "ret":Ljava/lang/Object;
    :pswitch_89
    move-object/from16 v0, p0

    #@4e8
    iget-object v4, v0, Lcom/android/internal/telephony/RIL;->mIccStatusChangedRegistrants:Landroid/os/RegistrantList;

    #@4ea
    if-eqz v4, :cond_6

    #@4ec
    .line 2882
    new-instance v4, Ljava/lang/StringBuilder;

    #@4ee
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@4f1
    const-string/jumbo v5, "ON enter sim puk fakeSimStatusChanged: reg count="

    #@4f4
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f7
    move-result-object v4

    #@4f8
    .line 2883
    move-object/from16 v0, p0

    #@4fa
    iget-object v5, v0, Lcom/android/internal/telephony/RIL;->mIccStatusChangedRegistrants:Landroid/os/RegistrantList;

    #@4fc
    invoke-virtual {v5}, Landroid/os/RegistrantList;->size()I

    #@4ff
    move-result v5

    #@500
    .line 2882
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@503
    move-result-object v4

    #@504
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@507
    move-result-object v4

    #@508
    move-object/from16 v0, p0

    #@50a
    invoke-direct {v0, v4}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    #@50d
    .line 2885
    move-object/from16 v0, p0

    #@50f
    iget-object v4, v0, Lcom/android/internal/telephony/RIL;->mIccStatusChangedRegistrants:Landroid/os/RegistrantList;

    #@511
    invoke-virtual {v4}, Landroid/os/RegistrantList;->notifyRegistrants()V

    #@514
    goto/16 :goto_1

    #@516
    .line 2897
    :sswitch_0
    move-object/from16 v0, p0

    #@518
    iget-object v4, v0, Lcom/android/internal/telephony/RIL;->mIccStatusChangedRegistrants:Landroid/os/RegistrantList;

    #@51a
    if-eqz v4, :cond_7

    #@51c
    .line 2899
    new-instance v4, Ljava/lang/StringBuilder;

    #@51e
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@521
    const-string/jumbo v5, "ON some errors fakeSimStatusChanged: reg count="

    #@524
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@527
    move-result-object v4

    #@528
    .line 2900
    move-object/from16 v0, p0

    #@52a
    iget-object v5, v0, Lcom/android/internal/telephony/RIL;->mIccStatusChangedRegistrants:Landroid/os/RegistrantList;

    #@52c
    invoke-virtual {v5}, Landroid/os/RegistrantList;->size()I

    #@52f
    move-result v5

    #@530
    .line 2899
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@533
    move-result-object v4

    #@534
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@537
    move-result-object v4

    #@538
    move-object/from16 v0, p0

    #@53a
    invoke-direct {v0, v4}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    #@53d
    .line 2902
    move-object/from16 v0, p0

    #@53f
    iget-object v4, v0, Lcom/android/internal/telephony/RIL;->mIccStatusChangedRegistrants:Landroid/os/RegistrantList;

    #@541
    invoke-virtual {v4}, Landroid/os/RegistrantList;->notifyRegistrants()V

    #@544
    goto/16 :goto_2

    #@546
    .line 2909
    :sswitch_1
    const/4 v4, 0x6

    #@547
    if-eq v4, v7, :cond_b

    #@549
    .line 2910
    const/4 v4, 0x2

    #@54a
    if-ne v4, v7, :cond_7

    #@54c
    .line 2913
    :cond_b
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/RIL;->makeStaticRadioCapability()Lcom/android/internal/telephony/RadioCapability;

    #@54f
    move-result-object v3

    #@550
    .line 2914
    .restart local v3    # "ret":Ljava/lang/Object;
    const/4 v7, 0x0

    #@551
    goto/16 :goto_2

    #@553
    .line 2919
    .end local v3    # "ret":Ljava/lang/Object;
    :sswitch_2
    new-instance v3, Landroid/telephony/ModemActivityInfo;

    #@555
    const-wide/16 v4, 0x0

    #@557
    .line 2920
    const/4 v6, 0x5

    #@558
    new-array v8, v6, [I

    #@55a
    .line 2919
    const/4 v6, 0x0

    #@55b
    const/4 v7, 0x0

    #@55c
    .line 2920
    const/4 v9, 0x0

    #@55d
    const/4 v10, 0x0

    #@55e
    .line 2919
    invoke-direct/range {v3 .. v10}, Landroid/telephony/ModemActivityInfo;-><init>(JII[III)V

    #@561
    .line 2921
    .end local v7    # "error":I
    .restart local v3    # "ret":Ljava/lang/Object;
    const/4 v7, 0x0

    #@562
    .line 2922
    .restart local v7    # "error":I
    goto/16 :goto_2

    #@564
    .line 2698
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
        :pswitch_87
        :pswitch_88
    .end packed-switch

    #@67a
    .line 2877
    :pswitch_data_1
    .packed-switch 0x3
        :pswitch_89
        :pswitch_2
        :pswitch_89
    .end packed-switch

    #@684
    .line 2891
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

.method private processUnsolicited(Landroid/os/Parcel;I)V
    .locals 28
    .param p1, "p"    # Landroid/os/Parcel;
    .param p2, "type"    # I

    #@0
    .prologue
    .line 3048
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    #@3
    move-result v16

    #@4
    .line 3051
    .local v16, "response":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/RIL;->getRilVersion()I

    #@7
    move-result v23

    #@8
    const/16 v24, 0xd

    #@a
    move/from16 v0, v23

    #@c
    move/from16 v1, v24

    #@e
    if-lt v0, v1, :cond_0

    #@10
    const/16 v23, 0x4

    #@12
    move/from16 v0, p2

    #@14
    move/from16 v1, v23

    #@16
    if-ne v0, v1, :cond_0

    #@18
    .line 3053
    const/16 v23, 0x320

    #@1a
    const/16 v24, 0x0

    #@1c
    invoke-static/range {v23 .. v24}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    #@1f
    move-result-object v19

    #@20
    .line 3054
    .local v19, "rr":Lcom/android/internal/telephony/RILRequest;
    move-object/from16 v0, p0

    #@22
    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mSender:Lcom/android/internal/telephony/RIL$RILSender;

    #@24
    move-object/from16 v23, v0

    #@26
    const/16 v24, 0x3

    #@28
    move-object/from16 v0, v23

    #@2a
    move/from16 v1, v24

    #@2c
    move-object/from16 v2, v19

    #@2e
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/RIL$RILSender;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@31
    move-result-object v8

    #@32
    .line 3055
    .local v8, "msg":Landroid/os/Message;
    const/16 v23, 0x1

    #@34
    move-object/from16 v0, p0

    #@36
    move-object/from16 v1, v19

    #@38
    move/from16 v2, v23

    #@3a
    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/RIL;->acquireWakeLock(Lcom/android/internal/telephony/RILRequest;I)V

    #@3d
    .line 3056
    invoke-virtual {v8}, Landroid/os/Message;->sendToTarget()V

    #@40
    .line 3058
    new-instance v23, Ljava/lang/StringBuilder;

    #@42
    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    #@45
    const-string/jumbo v24, "Unsol response received for "

    #@48
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v23

    #@4c
    invoke-static/range {v16 .. v16}, Lcom/android/internal/telephony/RIL;->responseToString(I)Ljava/lang/String;

    #@4f
    move-result-object v24

    #@50
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@53
    move-result-object v23

    #@54
    .line 3059
    const-string/jumbo v24, " Sending ack to ril.cpp"

    #@57
    .line 3058
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v23

    #@5b
    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5e
    move-result-object v23

    #@5f
    move-object/from16 v0, p0

    #@61
    move-object/from16 v1, v23

    #@63
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    #@66
    .line 3063
    .end local v8    # "msg":Landroid/os/Message;
    .end local v19    # "rr":Lcom/android/internal/telephony/RILRequest;
    :cond_0
    packed-switch v16, :pswitch_data_0

    #@69
    .line 3118
    :pswitch_0
    :try_start_0
    new-instance v23, Ljava/lang/RuntimeException;

    #@6b
    new-instance v24, Ljava/lang/StringBuilder;

    #@6d
    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    #@70
    const-string/jumbo v25, "Unrecognized unsol response: "

    #@73
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@76
    move-result-object v24

    #@77
    move-object/from16 v0, v24

    #@79
    move/from16 v1, v16

    #@7b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@7e
    move-result-object v24

    #@7f
    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@82
    move-result-object v24

    #@83
    invoke-direct/range {v23 .. v24}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@86
    throw v23
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    #@87
    .line 3120
    :catch_0
    move-exception v22

    #@88
    .line 3121
    .local v22, "tr":Ljava/lang/Throwable;
    const-string/jumbo v23, "RILJ"

    #@8b
    new-instance v24, Ljava/lang/StringBuilder;

    #@8d
    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    #@90
    const-string/jumbo v25, "Exception processing unsol response: "

    #@93
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@96
    move-result-object v24

    #@97
    move-object/from16 v0, v24

    #@99
    move/from16 v1, v16

    #@9b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@9e
    move-result-object v24

    #@9f
    .line 3122
    const-string/jumbo v25, "Exception:"

    #@a2
    .line 3121
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a5
    move-result-object v24

    #@a6
    .line 3122
    invoke-virtual/range {v22 .. v22}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    #@a9
    move-result-object v25

    #@aa
    .line 3121
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ad
    move-result-object v24

    #@ae
    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b1
    move-result-object v24

    #@b2
    invoke-static/range {v23 .. v24}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@b5
    .line 3123
    return-void

    #@b6
    .line 3070
    .end local v22    # "tr":Ljava/lang/Throwable;
    :pswitch_1
    :try_start_1
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    #@b9
    move-result-object v18

    #@ba
    .line 3126
    .local v18, "ret":Ljava/lang/Object;
    :goto_0
    packed-switch v16, :pswitch_data_1

    #@bd
    .line 3044
    .end local v18    # "ret":Ljava/lang/Object;
    :cond_1
    :goto_1
    :pswitch_2
    return-void

    #@be
    .line 3071
    :pswitch_3
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    #@c1
    move-result-object v18

    #@c2
    .restart local v18    # "ret":Ljava/lang/Object;
    goto :goto_0

    #@c3
    .line 3072
    .end local v18    # "ret":Ljava/lang/Object;
    :pswitch_4
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    #@c6
    move-result-object v18

    #@c7
    .restart local v18    # "ret":Ljava/lang/Object;
    goto :goto_0

    #@c8
    .line 3073
    .end local v18    # "ret":Ljava/lang/Object;
    :pswitch_5
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    #@cb
    move-result-object v18

    #@cc
    .restart local v18    # "ret":Ljava/lang/Object;
    goto :goto_0

    #@cd
    .line 3074
    .end local v18    # "ret":Ljava/lang/Object;
    :pswitch_6
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    #@d0
    move-result-object v18

    #@d1
    .restart local v18    # "ret":Ljava/lang/Object;
    goto :goto_0

    #@d2
    .line 3075
    .end local v18    # "ret":Ljava/lang/Object;
    :pswitch_7
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    #@d5
    move-result-object v18

    #@d6
    .restart local v18    # "ret":Ljava/lang/Object;
    goto :goto_0

    #@d7
    .line 3076
    .end local v18    # "ret":Ljava/lang/Object;
    :pswitch_8
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseStrings(Landroid/os/Parcel;)Ljava/lang/Object;

    #@da
    move-result-object v18

    #@db
    .restart local v18    # "ret":Ljava/lang/Object;
    goto :goto_0

    #@dc
    .line 3077
    .end local v18    # "ret":Ljava/lang/Object;
    :pswitch_9
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    #@df
    move-result-object v18

    #@e0
    .restart local v18    # "ret":Ljava/lang/Object;
    goto :goto_0

    #@e1
    .line 3078
    .end local v18    # "ret":Ljava/lang/Object;
    :pswitch_a
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseSignalStrength(Landroid/os/Parcel;)Ljava/lang/Object;

    #@e4
    move-result-object v18

    #@e5
    .restart local v18    # "ret":Ljava/lang/Object;
    goto :goto_0

    #@e6
    .line 3079
    .end local v18    # "ret":Ljava/lang/Object;
    :pswitch_b
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseDataCallList(Landroid/os/Parcel;)Ljava/lang/Object;

    #@e9
    move-result-object v18

    #@ea
    .restart local v18    # "ret":Ljava/lang/Object;
    goto :goto_0

    #@eb
    .line 3080
    .end local v18    # "ret":Ljava/lang/Object;
    :pswitch_c
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseSuppServiceNotification(Landroid/os/Parcel;)Ljava/lang/Object;

    #@ee
    move-result-object v18

    #@ef
    .restart local v18    # "ret":Ljava/lang/Object;
    goto :goto_0

    #@f0
    .line 3081
    .end local v18    # "ret":Ljava/lang/Object;
    :pswitch_d
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    #@f3
    move-result-object v18

    #@f4
    .restart local v18    # "ret":Ljava/lang/Object;
    goto :goto_0

    #@f5
    .line 3082
    .end local v18    # "ret":Ljava/lang/Object;
    :pswitch_e
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    #@f8
    move-result-object v18

    #@f9
    .restart local v18    # "ret":Ljava/lang/Object;
    goto :goto_0

    #@fa
    .line 3083
    .end local v18    # "ret":Ljava/lang/Object;
    :pswitch_f
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    #@fd
    move-result-object v18

    #@fe
    .restart local v18    # "ret":Ljava/lang/Object;
    goto :goto_0

    #@ff
    .line 3084
    .end local v18    # "ret":Ljava/lang/Object;
    :pswitch_10
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    #@102
    move-result-object v18

    #@103
    .restart local v18    # "ret":Ljava/lang/Object;
    goto :goto_0

    #@104
    .line 3085
    .end local v18    # "ret":Ljava/lang/Object;
    :pswitch_11
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    #@107
    move-result-object v18

    #@108
    .restart local v18    # "ret":Ljava/lang/Object;
    goto :goto_0

    #@109
    .line 3086
    .end local v18    # "ret":Ljava/lang/Object;
    :pswitch_12
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseSimRefresh(Landroid/os/Parcel;)Ljava/lang/Object;

    #@10c
    move-result-object v18

    #@10d
    .restart local v18    # "ret":Ljava/lang/Object;
    goto :goto_0

    #@10e
    .line 3087
    .end local v18    # "ret":Ljava/lang/Object;
    :pswitch_13
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseCallRing(Landroid/os/Parcel;)Ljava/lang/Object;

    #@111
    move-result-object v18

    #@112
    .restart local v18    # "ret":Ljava/lang/Object;
    goto :goto_0

    #@113
    .line 3088
    .end local v18    # "ret":Ljava/lang/Object;
    :pswitch_14
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    #@116
    move-result-object v18

    #@117
    .restart local v18    # "ret":Ljava/lang/Object;
    goto :goto_0

    #@118
    .line 3089
    .end local v18    # "ret":Ljava/lang/Object;
    :pswitch_15
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    #@11b
    move-result-object v18

    #@11c
    .restart local v18    # "ret":Ljava/lang/Object;
    goto :goto_0

    #@11d
    .line 3090
    .end local v18    # "ret":Ljava/lang/Object;
    :pswitch_16
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseCdmaSms(Landroid/os/Parcel;)Ljava/lang/Object;

    #@120
    move-result-object v18

    #@121
    .restart local v18    # "ret":Ljava/lang/Object;
    goto :goto_0

    #@122
    .line 3091
    .end local v18    # "ret":Ljava/lang/Object;
    :pswitch_17
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseRaw(Landroid/os/Parcel;)Ljava/lang/Object;

    #@125
    move-result-object v18

    #@126
    .restart local v18    # "ret":Ljava/lang/Object;
    goto :goto_0

    #@127
    .line 3092
    .end local v18    # "ret":Ljava/lang/Object;
    :pswitch_18
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    #@12a
    move-result-object v18

    #@12b
    .restart local v18    # "ret":Ljava/lang/Object;
    goto :goto_0

    #@12c
    .line 3093
    .end local v18    # "ret":Ljava/lang/Object;
    :pswitch_19
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    #@12f
    move-result-object v18

    #@130
    .restart local v18    # "ret":Ljava/lang/Object;
    goto :goto_0

    #@131
    .line 3094
    .end local v18    # "ret":Ljava/lang/Object;
    :pswitch_1a
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseCdmaCallWaiting(Landroid/os/Parcel;)Ljava/lang/Object;

    #@134
    move-result-object v18

    #@135
    .restart local v18    # "ret":Ljava/lang/Object;
    goto :goto_0

    #@136
    .line 3095
    .end local v18    # "ret":Ljava/lang/Object;
    :pswitch_1b
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    #@139
    move-result-object v18

    #@13a
    .restart local v18    # "ret":Ljava/lang/Object;
    goto :goto_0

    #@13b
    .line 3096
    .end local v18    # "ret":Ljava/lang/Object;
    :pswitch_1c
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseCdmaInformationRecord(Landroid/os/Parcel;)Ljava/util/ArrayList;

    #@13e
    move-result-object v18

    #@13f
    .restart local v18    # "ret":Ljava/lang/Object;
    goto/16 :goto_0

    #@141
    .line 3097
    .end local v18    # "ret":Ljava/lang/Object;
    :pswitch_1d
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseRaw(Landroid/os/Parcel;)Ljava/lang/Object;

    #@144
    move-result-object v18

    #@145
    .restart local v18    # "ret":Ljava/lang/Object;
    goto/16 :goto_0

    #@147
    .line 3098
    .end local v18    # "ret":Ljava/lang/Object;
    :pswitch_1e
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    #@14a
    move-result-object v18

    #@14b
    .restart local v18    # "ret":Ljava/lang/Object;
    goto/16 :goto_0

    #@14d
    .line 3099
    .end local v18    # "ret":Ljava/lang/Object;
    :pswitch_1f
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    #@150
    move-result-object v18

    #@151
    .restart local v18    # "ret":Ljava/lang/Object;
    goto/16 :goto_0

    #@153
    .line 3100
    .end local v18    # "ret":Ljava/lang/Object;
    :pswitch_20
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    #@156
    move-result-object v18

    #@157
    .restart local v18    # "ret":Ljava/lang/Object;
    goto/16 :goto_0

    #@159
    .line 3101
    .end local v18    # "ret":Ljava/lang/Object;
    :pswitch_21
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    #@15c
    move-result-object v18

    #@15d
    .restart local v18    # "ret":Ljava/lang/Object;
    goto/16 :goto_0

    #@15f
    .line 3102
    .end local v18    # "ret":Ljava/lang/Object;
    :pswitch_22
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    #@162
    move-result-object v18

    #@163
    .restart local v18    # "ret":Ljava/lang/Object;
    goto/16 :goto_0

    #@165
    .line 3103
    .end local v18    # "ret":Ljava/lang/Object;
    :pswitch_23
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    #@168
    move-result-object v18

    #@169
    .restart local v18    # "ret":Ljava/lang/Object;
    goto/16 :goto_0

    #@16b
    .line 3104
    .end local v18    # "ret":Ljava/lang/Object;
    :pswitch_24
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    #@16e
    move-result-object v18

    #@16f
    .restart local v18    # "ret":Ljava/lang/Object;
    goto/16 :goto_0

    #@171
    .line 3105
    .end local v18    # "ret":Ljava/lang/Object;
    :pswitch_25
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseCellInfoList(Landroid/os/Parcel;)Ljava/util/ArrayList;

    #@174
    move-result-object v18

    #@175
    .restart local v18    # "ret":Ljava/lang/Object;
    goto/16 :goto_0

    #@177
    .line 3106
    .end local v18    # "ret":Ljava/lang/Object;
    :pswitch_26
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    #@17a
    move-result-object v18

    #@17b
    .restart local v18    # "ret":Ljava/lang/Object;
    goto/16 :goto_0

    #@17d
    .line 3107
    .end local v18    # "ret":Ljava/lang/Object;
    :pswitch_27
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    #@180
    move-result-object v18

    #@181
    .restart local v18    # "ret":Ljava/lang/Object;
    goto/16 :goto_0

    #@183
    .line 3108
    .end local v18    # "ret":Ljava/lang/Object;
    :pswitch_28
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    #@186
    move-result-object v18

    #@187
    .restart local v18    # "ret":Ljava/lang/Object;
    goto/16 :goto_0

    #@189
    .line 3109
    .end local v18    # "ret":Ljava/lang/Object;
    :pswitch_29
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseHardwareConfig(Landroid/os/Parcel;)Ljava/lang/Object;

    #@18c
    move-result-object v18

    #@18d
    .restart local v18    # "ret":Ljava/lang/Object;
    goto/16 :goto_0

    #@18f
    .line 3111
    .end local v18    # "ret":Ljava/lang/Object;
    :pswitch_2a
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseRadioCapability(Landroid/os/Parcel;)Ljava/lang/Object;

    #@192
    move-result-object v18

    #@193
    .restart local v18    # "ret":Ljava/lang/Object;
    goto/16 :goto_0

    #@195
    .line 3112
    .end local v18    # "ret":Ljava/lang/Object;
    :pswitch_2b
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseSsData(Landroid/os/Parcel;)Ljava/lang/Object;

    #@198
    move-result-object v18

    #@199
    .restart local v18    # "ret":Ljava/lang/Object;
    goto/16 :goto_0

    #@19b
    .line 3113
    .end local v18    # "ret":Ljava/lang/Object;
    :pswitch_2c
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    #@19e
    move-result-object v18

    #@19f
    .restart local v18    # "ret":Ljava/lang/Object;
    goto/16 :goto_0

    #@1a1
    .line 3114
    .end local v18    # "ret":Ljava/lang/Object;
    :pswitch_2d
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseLceData(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1a4
    move-result-object v18

    #@1a5
    .restart local v18    # "ret":Ljava/lang/Object;
    goto/16 :goto_0

    #@1a7
    .line 3115
    .end local v18    # "ret":Ljava/lang/Object;
    :pswitch_2e
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responsePcoData(Landroid/os/Parcel;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    #@1aa
    move-result-object v18

    #@1ab
    .restart local v18    # "ret":Ljava/lang/Object;
    goto/16 :goto_0

    #@1ad
    .line 3129
    :pswitch_2f
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    #@1b0
    move-result v23

    #@1b1
    move-object/from16 v0, p0

    #@1b3
    move/from16 v1, v23

    #@1b5
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/RIL;->getRadioStateFromInt(I)Lcom/android/internal/telephony/CommandsInterface$RadioState;

    #@1b8
    move-result-object v9

    #@1b9
    .line 3130
    .local v9, "newState":Lcom/android/internal/telephony/CommandsInterface$RadioState;
    invoke-virtual {v9}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->toString()Ljava/lang/String;

    #@1bc
    move-result-object v23

    #@1bd
    move-object/from16 v0, p0

    #@1bf
    move/from16 v1, v16

    #@1c1
    move-object/from16 v2, v23

    #@1c3
    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/RIL;->unsljLogMore(ILjava/lang/String;)V

    #@1c6
    .line 3132
    move-object/from16 v0, p0

    #@1c8
    invoke-direct {v0, v9}, Lcom/android/internal/telephony/RIL;->switchToRadioState(Lcom/android/internal/telephony/CommandsInterface$RadioState;)V

    #@1cb
    goto/16 :goto_1

    #@1cd
    .line 3135
    .end local v9    # "newState":Lcom/android/internal/telephony/CommandsInterface$RadioState;
    :pswitch_30
    move-object/from16 v0, p0

    #@1cf
    move/from16 v1, v16

    #@1d1
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/RIL;->unsljLog(I)V

    #@1d4
    .line 3137
    move-object/from16 v0, p0

    #@1d6
    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mImsNetworkStateChangedRegistrants:Landroid/os/RegistrantList;

    #@1d8
    move-object/from16 v23, v0

    #@1da
    .line 3138
    new-instance v24, Landroid/os/AsyncResult;

    #@1dc
    const/16 v25, 0x0

    #@1de
    const/16 v26, 0x0

    #@1e0
    const/16 v27, 0x0

    #@1e2
    invoke-direct/range {v24 .. v27}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    #@1e5
    .line 3137
    invoke-virtual/range {v23 .. v24}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    #@1e8
    goto/16 :goto_1

    #@1ea
    .line 3141
    :pswitch_31
    move-object/from16 v0, p0

    #@1ec
    move/from16 v1, v16

    #@1ee
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/RIL;->unsljLog(I)V

    #@1f1
    .line 3143
    move-object/from16 v0, p0

    #@1f3
    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mCallStateRegistrants:Landroid/os/RegistrantList;

    #@1f5
    move-object/from16 v23, v0

    #@1f7
    .line 3144
    new-instance v24, Landroid/os/AsyncResult;

    #@1f9
    const/16 v25, 0x0

    #@1fb
    const/16 v26, 0x0

    #@1fd
    const/16 v27, 0x0

    #@1ff
    invoke-direct/range {v24 .. v27}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    #@202
    .line 3143
    invoke-virtual/range {v23 .. v24}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    #@205
    goto/16 :goto_1

    #@207
    .line 3147
    :pswitch_32
    move-object/from16 v0, p0

    #@209
    move/from16 v1, v16

    #@20b
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/RIL;->unsljLog(I)V

    #@20e
    .line 3149
    move-object/from16 v0, p0

    #@210
    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mVoiceNetworkStateRegistrants:Landroid/os/RegistrantList;

    #@212
    move-object/from16 v23, v0

    #@214
    .line 3150
    new-instance v24, Landroid/os/AsyncResult;

    #@216
    const/16 v25, 0x0

    #@218
    const/16 v26, 0x0

    #@21a
    const/16 v27, 0x0

    #@21c
    invoke-direct/range {v24 .. v27}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    #@21f
    .line 3149
    invoke-virtual/range {v23 .. v24}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    #@222
    goto/16 :goto_1

    #@224
    .line 3153
    :pswitch_33
    move-object/from16 v0, p0

    #@226
    move/from16 v1, v16

    #@228
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/RIL;->unsljLog(I)V

    #@22b
    .line 3155
    move-object/from16 v0, p0

    #@22d
    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    #@22f
    move-object/from16 v23, v0

    #@231
    move-object/from16 v0, p0

    #@233
    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mInstanceId:Ljava/lang/Integer;

    #@235
    move-object/from16 v24, v0

    #@237
    invoke-virtual/range {v24 .. v24}, Ljava/lang/Integer;->intValue()I

    #@23a
    move-result v24

    #@23b
    const/16 v25, 0x1

    #@23d
    .line 3156
    const/16 v26, 0x1

    #@23f
    .line 3155
    invoke-virtual/range {v23 .. v26}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeRilNewSms(III)V

    #@242
    .line 3159
    const/16 v23, 0x2

    #@244
    move/from16 v0, v23

    #@246
    new-array v4, v0, [Ljava/lang/String;

    #@248
    .line 3161
    .local v4, "a":[Ljava/lang/String;
    check-cast v18, Ljava/lang/String;

    #@24a
    .end local v18    # "ret":Ljava/lang/Object;
    const/16 v23, 0x1

    #@24c
    aput-object v18, v4, v23

    #@24e
    .line 3165
    invoke-static {v4}, Landroid/telephony/SmsMessage;->newFromCMT([Ljava/lang/String;)Landroid/telephony/SmsMessage;

    #@251
    move-result-object v20

    #@252
    .line 3166
    .local v20, "sms":Landroid/telephony/SmsMessage;
    move-object/from16 v0, p0

    #@254
    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mGsmSmsRegistrant:Landroid/os/Registrant;

    #@256
    move-object/from16 v23, v0

    #@258
    if-eqz v23, :cond_1

    #@25a
    .line 3167
    move-object/from16 v0, p0

    #@25c
    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mGsmSmsRegistrant:Landroid/os/Registrant;

    #@25e
    move-object/from16 v23, v0

    #@260
    .line 3168
    new-instance v24, Landroid/os/AsyncResult;

    #@262
    const/16 v25, 0x0

    #@264
    const/16 v26, 0x0

    #@266
    move-object/from16 v0, v24

    #@268
    move-object/from16 v1, v25

    #@26a
    move-object/from16 v2, v20

    #@26c
    move-object/from16 v3, v26

    #@26e
    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    #@271
    .line 3167
    invoke-virtual/range {v23 .. v24}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    #@274
    goto/16 :goto_1

    #@276
    .line 3173
    .end local v4    # "a":[Ljava/lang/String;
    .end local v20    # "sms":Landroid/telephony/SmsMessage;
    .restart local v18    # "ret":Ljava/lang/Object;
    :pswitch_34
    move-object/from16 v0, p0

    #@278
    move/from16 v1, v16

    #@27a
    move-object/from16 v2, v18

    #@27c
    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    #@27f
    .line 3175
    move-object/from16 v0, p0

    #@281
    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mSmsStatusRegistrant:Landroid/os/Registrant;

    #@283
    move-object/from16 v23, v0

    #@285
    if-eqz v23, :cond_1

    #@287
    .line 3176
    move-object/from16 v0, p0

    #@289
    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mSmsStatusRegistrant:Landroid/os/Registrant;

    #@28b
    move-object/from16 v23, v0

    #@28d
    .line 3177
    new-instance v24, Landroid/os/AsyncResult;

    #@28f
    const/16 v25, 0x0

    #@291
    const/16 v26, 0x0

    #@293
    move-object/from16 v0, v24

    #@295
    move-object/from16 v1, v25

    #@297
    move-object/from16 v2, v18

    #@299
    move-object/from16 v3, v26

    #@29b
    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    #@29e
    .line 3176
    invoke-virtual/range {v23 .. v24}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    #@2a1
    goto/16 :goto_1

    #@2a3
    .line 3181
    :pswitch_35
    move-object/from16 v0, p0

    #@2a5
    move/from16 v1, v16

    #@2a7
    move-object/from16 v2, v18

    #@2a9
    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    #@2ac
    move-object/from16 v21, v18

    #@2ae
    .line 3183
    check-cast v21, [I

    #@2b0
    .line 3185
    .local v21, "smsIndex":[I
    move-object/from16 v0, v21

    #@2b2
    array-length v0, v0

    #@2b3
    move/from16 v23, v0

    #@2b5
    const/16 v24, 0x1

    #@2b7
    move/from16 v0, v23

    #@2b9
    move/from16 v1, v24

    #@2bb
    if-ne v0, v1, :cond_2

    #@2bd
    .line 3186
    move-object/from16 v0, p0

    #@2bf
    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mSmsOnSimRegistrant:Landroid/os/Registrant;

    #@2c1
    move-object/from16 v23, v0

    #@2c3
    if-eqz v23, :cond_1

    #@2c5
    .line 3187
    move-object/from16 v0, p0

    #@2c7
    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mSmsOnSimRegistrant:Landroid/os/Registrant;

    #@2c9
    move-object/from16 v23, v0

    #@2cb
    .line 3188
    new-instance v24, Landroid/os/AsyncResult;

    #@2cd
    const/16 v25, 0x0

    #@2cf
    const/16 v26, 0x0

    #@2d1
    move-object/from16 v0, v24

    #@2d3
    move-object/from16 v1, v25

    #@2d5
    move-object/from16 v2, v21

    #@2d7
    move-object/from16 v3, v26

    #@2d9
    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    #@2dc
    .line 3187
    invoke-virtual/range {v23 .. v24}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    #@2df
    goto/16 :goto_1

    #@2e1
    .line 3191
    :cond_2
    new-instance v23, Ljava/lang/StringBuilder;

    #@2e3
    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    #@2e6
    const-string/jumbo v24, " NEW_SMS_ON_SIM ERROR with wrong length "

    #@2e9
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2ec
    move-result-object v23

    #@2ed
    .line 3192
    move-object/from16 v0, v21

    #@2ef
    array-length v0, v0

    #@2f0
    move/from16 v24, v0

    #@2f2
    .line 3191
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2f5
    move-result-object v23

    #@2f6
    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2f9
    move-result-object v23

    #@2fa
    move-object/from16 v0, p0

    #@2fc
    move-object/from16 v1, v23

    #@2fe
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    #@301
    goto/16 :goto_1

    #@303
    .end local v21    # "smsIndex":[I
    :pswitch_36
    move-object/from16 v15, v18

    #@305
    .line 3196
    check-cast v15, [Ljava/lang/String;

    #@307
    .line 3198
    .local v15, "resp":[Ljava/lang/String;
    array-length v0, v15

    #@308
    move/from16 v23, v0

    #@30a
    const/16 v24, 0x2

    #@30c
    move/from16 v0, v23

    #@30e
    move/from16 v1, v24

    #@310
    if-ge v0, v1, :cond_3

    #@312
    .line 3199
    const/16 v23, 0x2

    #@314
    move/from16 v0, v23

    #@316
    new-array v15, v0, [Ljava/lang/String;

    #@318
    .line 3200
    check-cast v18, [Ljava/lang/String;

    #@31a
    .end local v18    # "ret":Ljava/lang/Object;
    const/16 v23, 0x0

    #@31c
    aget-object v23, v18, v23

    #@31e
    const/16 v24, 0x0

    #@320
    aput-object v23, v15, v24

    #@322
    .line 3201
    const/16 v23, 0x0

    #@324
    const/16 v24, 0x1

    #@326
    aput-object v23, v15, v24

    #@328
    .line 3203
    :cond_3
    const/16 v23, 0x0

    #@32a
    aget-object v23, v15, v23

    #@32c
    move-object/from16 v0, p0

    #@32e
    move/from16 v1, v16

    #@330
    move-object/from16 v2, v23

    #@332
    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/RIL;->unsljLogMore(ILjava/lang/String;)V

    #@335
    .line 3204
    move-object/from16 v0, p0

    #@337
    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mUSSDRegistrant:Landroid/os/Registrant;

    #@339
    move-object/from16 v23, v0

    #@33b
    if-eqz v23, :cond_1

    #@33d
    .line 3205
    move-object/from16 v0, p0

    #@33f
    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mUSSDRegistrant:Landroid/os/Registrant;

    #@341
    move-object/from16 v23, v0

    #@343
    .line 3206
    new-instance v24, Landroid/os/AsyncResult;

    #@345
    const/16 v25, 0x0

    #@347
    const/16 v26, 0x0

    #@349
    move-object/from16 v0, v24

    #@34b
    move-object/from16 v1, v25

    #@34d
    move-object/from16 v2, v26

    #@34f
    invoke-direct {v0, v1, v15, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    #@352
    .line 3205
    invoke-virtual/range {v23 .. v24}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    #@355
    goto/16 :goto_1

    #@357
    .line 3210
    .end local v15    # "resp":[Ljava/lang/String;
    .restart local v18    # "ret":Ljava/lang/Object;
    :pswitch_37
    move-object/from16 v0, p0

    #@359
    move/from16 v1, v16

    #@35b
    move-object/from16 v2, v18

    #@35d
    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    #@360
    .line 3214
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    #@363
    move-result-wide v10

    #@364
    .line 3216
    .local v10, "nitzReceiveTime":J
    const/16 v23, 0x2

    #@366
    move/from16 v0, v23

    #@368
    new-array v0, v0, [Ljava/lang/Object;

    #@36a
    move-object/from16 v17, v0

    #@36c
    .line 3218
    .local v17, "result":[Ljava/lang/Object;
    const/16 v23, 0x0

    #@36e
    aput-object v18, v17, v23

    #@370
    .line 3219
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@373
    move-result-object v23

    #@374
    const/16 v24, 0x1

    #@376
    aput-object v23, v17, v24

    #@378
    .line 3222
    const-string/jumbo v23, "telephony.test.ignore.nitz"

    #@37b
    const/16 v24, 0x0

    #@37d
    .line 3221
    invoke-static/range {v23 .. v24}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    #@380
    move-result v6

    #@381
    .line 3224
    .local v6, "ignoreNitz":Z
    if-eqz v6, :cond_4

    #@383
    .line 3225
    const-string/jumbo v23, "ignoring UNSOL_NITZ_TIME_RECEIVED"

    #@386
    move-object/from16 v0, p0

    #@388
    move-object/from16 v1, v23

    #@38a
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    #@38d
    goto/16 :goto_1

    #@38f
    .line 3227
    :cond_4
    move-object/from16 v0, p0

    #@391
    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mNITZTimeRegistrant:Landroid/os/Registrant;

    #@393
    move-object/from16 v23, v0

    #@395
    if-eqz v23, :cond_5

    #@397
    .line 3229
    move-object/from16 v0, p0

    #@399
    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mNITZTimeRegistrant:Landroid/os/Registrant;

    #@39b
    move-object/from16 v23, v0

    #@39d
    .line 3230
    new-instance v24, Landroid/os/AsyncResult;

    #@39f
    const/16 v25, 0x0

    #@3a1
    const/16 v26, 0x0

    #@3a3
    move-object/from16 v0, v24

    #@3a5
    move-object/from16 v1, v25

    #@3a7
    move-object/from16 v2, v17

    #@3a9
    move-object/from16 v3, v26

    #@3ab
    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    #@3ae
    .line 3229
    invoke-virtual/range {v23 .. v24}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    #@3b1
    .line 3234
    :cond_5
    move-object/from16 v0, v17

    #@3b3
    move-object/from16 v1, p0

    #@3b5
    iput-object v0, v1, Lcom/android/internal/telephony/RIL;->mLastNITZTimeInfo:[Ljava/lang/Object;

    #@3b7
    goto/16 :goto_1

    #@3b9
    .line 3243
    .end local v6    # "ignoreNitz":Z
    .end local v10    # "nitzReceiveTime":J
    .end local v17    # "result":[Ljava/lang/Object;
    :pswitch_38
    move-object/from16 v0, p0

    #@3bb
    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mSignalStrengthRegistrant:Landroid/os/Registrant;

    #@3bd
    move-object/from16 v23, v0

    #@3bf
    if-eqz v23, :cond_1

    #@3c1
    .line 3244
    move-object/from16 v0, p0

    #@3c3
    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mSignalStrengthRegistrant:Landroid/os/Registrant;

    #@3c5
    move-object/from16 v23, v0

    #@3c7
    .line 3245
    new-instance v24, Landroid/os/AsyncResult;

    #@3c9
    const/16 v25, 0x0

    #@3cb
    const/16 v26, 0x0

    #@3cd
    move-object/from16 v0, v24

    #@3cf
    move-object/from16 v1, v25

    #@3d1
    move-object/from16 v2, v18

    #@3d3
    move-object/from16 v3, v26

    #@3d5
    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    #@3d8
    .line 3244
    invoke-virtual/range {v23 .. v24}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    #@3db
    goto/16 :goto_1

    #@3dd
    .line 3249
    :pswitch_39
    move-object/from16 v0, p0

    #@3df
    move/from16 v1, v16

    #@3e1
    move-object/from16 v2, v18

    #@3e3
    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    #@3e6
    .line 3251
    move-object/from16 v0, p0

    #@3e8
    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mDataNetworkStateRegistrants:Landroid/os/RegistrantList;

    #@3ea
    move-object/from16 v23, v0

    #@3ec
    new-instance v24, Landroid/os/AsyncResult;

    #@3ee
    const/16 v25, 0x0

    #@3f0
    const/16 v26, 0x0

    #@3f2
    move-object/from16 v0, v24

    #@3f4
    move-object/from16 v1, v25

    #@3f6
    move-object/from16 v2, v18

    #@3f8
    move-object/from16 v3, v26

    #@3fa
    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    #@3fd
    invoke-virtual/range {v23 .. v24}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    #@400
    goto/16 :goto_1

    #@402
    .line 3255
    :pswitch_3a
    move-object/from16 v0, p0

    #@404
    move/from16 v1, v16

    #@406
    move-object/from16 v2, v18

    #@408
    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    #@40b
    .line 3257
    move-object/from16 v0, p0

    #@40d
    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mSsnRegistrant:Landroid/os/Registrant;

    #@40f
    move-object/from16 v23, v0

    #@411
    if-eqz v23, :cond_1

    #@413
    .line 3258
    move-object/from16 v0, p0

    #@415
    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mSsnRegistrant:Landroid/os/Registrant;

    #@417
    move-object/from16 v23, v0

    #@419
    .line 3259
    new-instance v24, Landroid/os/AsyncResult;

    #@41b
    const/16 v25, 0x0

    #@41d
    const/16 v26, 0x0

    #@41f
    move-object/from16 v0, v24

    #@421
    move-object/from16 v1, v25

    #@423
    move-object/from16 v2, v18

    #@425
    move-object/from16 v3, v26

    #@427
    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    #@42a
    .line 3258
    invoke-virtual/range {v23 .. v24}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    #@42d
    goto/16 :goto_1

    #@42f
    .line 3264
    :pswitch_3b
    move-object/from16 v0, p0

    #@431
    move/from16 v1, v16

    #@433
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/RIL;->unsljLog(I)V

    #@436
    .line 3266
    move-object/from16 v0, p0

    #@438
    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mCatSessionEndRegistrant:Landroid/os/Registrant;

    #@43a
    move-object/from16 v23, v0

    #@43c
    if-eqz v23, :cond_1

    #@43e
    .line 3267
    move-object/from16 v0, p0

    #@440
    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mCatSessionEndRegistrant:Landroid/os/Registrant;

    #@442
    move-object/from16 v23, v0

    #@444
    .line 3268
    new-instance v24, Landroid/os/AsyncResult;

    #@446
    const/16 v25, 0x0

    #@448
    const/16 v26, 0x0

    #@44a
    move-object/from16 v0, v24

    #@44c
    move-object/from16 v1, v25

    #@44e
    move-object/from16 v2, v18

    #@450
    move-object/from16 v3, v26

    #@452
    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    #@455
    .line 3267
    invoke-virtual/range {v23 .. v24}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    #@458
    goto/16 :goto_1

    #@45a
    .line 3273
    :pswitch_3c
    move-object/from16 v0, p0

    #@45c
    move/from16 v1, v16

    #@45e
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/RIL;->unsljLog(I)V

    #@461
    .line 3275
    move-object/from16 v0, p0

    #@463
    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mCatProCmdRegistrant:Landroid/os/Registrant;

    #@465
    move-object/from16 v23, v0

    #@467
    if-eqz v23, :cond_1

    #@469
    .line 3276
    move-object/from16 v0, p0

    #@46b
    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mCatProCmdRegistrant:Landroid/os/Registrant;

    #@46d
    move-object/from16 v23, v0

    #@46f
    .line 3277
    new-instance v24, Landroid/os/AsyncResult;

    #@471
    const/16 v25, 0x0

    #@473
    const/16 v26, 0x0

    #@475
    move-object/from16 v0, v24

    #@477
    move-object/from16 v1, v25

    #@479
    move-object/from16 v2, v18

    #@47b
    move-object/from16 v3, v26

    #@47d
    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    #@480
    .line 3276
    invoke-virtual/range {v23 .. v24}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    #@483
    goto/16 :goto_1

    #@485
    .line 3282
    :pswitch_3d
    move-object/from16 v0, p0

    #@487
    move/from16 v1, v16

    #@489
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/RIL;->unsljLog(I)V

    #@48c
    .line 3284
    move-object/from16 v0, p0

    #@48e
    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mCatEventRegistrant:Landroid/os/Registrant;

    #@490
    move-object/from16 v23, v0

    #@492
    if-eqz v23, :cond_1

    #@494
    .line 3285
    move-object/from16 v0, p0

    #@496
    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mCatEventRegistrant:Landroid/os/Registrant;

    #@498
    move-object/from16 v23, v0

    #@49a
    .line 3286
    new-instance v24, Landroid/os/AsyncResult;

    #@49c
    const/16 v25, 0x0

    #@49e
    const/16 v26, 0x0

    #@4a0
    move-object/from16 v0, v24

    #@4a2
    move-object/from16 v1, v25

    #@4a4
    move-object/from16 v2, v18

    #@4a6
    move-object/from16 v3, v26

    #@4a8
    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    #@4ab
    .line 3285
    invoke-virtual/range {v23 .. v24}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    #@4ae
    goto/16 :goto_1

    #@4b0
    .line 3291
    :pswitch_3e
    move-object/from16 v0, p0

    #@4b2
    move/from16 v1, v16

    #@4b4
    move-object/from16 v2, v18

    #@4b6
    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    #@4b9
    .line 3293
    move-object/from16 v0, p0

    #@4bb
    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mCatCallSetUpRegistrant:Landroid/os/Registrant;

    #@4bd
    move-object/from16 v23, v0

    #@4bf
    if-eqz v23, :cond_1

    #@4c1
    .line 3294
    move-object/from16 v0, p0

    #@4c3
    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mCatCallSetUpRegistrant:Landroid/os/Registrant;

    #@4c5
    move-object/from16 v23, v0

    #@4c7
    .line 3295
    new-instance v24, Landroid/os/AsyncResult;

    #@4c9
    const/16 v25, 0x0

    #@4cb
    const/16 v26, 0x0

    #@4cd
    move-object/from16 v0, v24

    #@4cf
    move-object/from16 v1, v25

    #@4d1
    move-object/from16 v2, v18

    #@4d3
    move-object/from16 v3, v26

    #@4d5
    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    #@4d8
    .line 3294
    invoke-virtual/range {v23 .. v24}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    #@4db
    goto/16 :goto_1

    #@4dd
    .line 3300
    :pswitch_3f
    move-object/from16 v0, p0

    #@4df
    move/from16 v1, v16

    #@4e1
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/RIL;->unsljLog(I)V

    #@4e4
    .line 3302
    move-object/from16 v0, p0

    #@4e6
    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mIccSmsFullRegistrant:Landroid/os/Registrant;

    #@4e8
    move-object/from16 v23, v0

    #@4ea
    if-eqz v23, :cond_1

    #@4ec
    .line 3303
    move-object/from16 v0, p0

    #@4ee
    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mIccSmsFullRegistrant:Landroid/os/Registrant;

    #@4f0
    move-object/from16 v23, v0

    #@4f2
    invoke-virtual/range {v23 .. v23}, Landroid/os/Registrant;->notifyRegistrant()V

    #@4f5
    goto/16 :goto_1

    #@4f7
    .line 3308
    :pswitch_40
    move-object/from16 v0, p0

    #@4f9
    move/from16 v1, v16

    #@4fb
    move-object/from16 v2, v18

    #@4fd
    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    #@500
    .line 3310
    move-object/from16 v0, p0

    #@502
    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mIccRefreshRegistrants:Landroid/os/RegistrantList;

    #@504
    move-object/from16 v23, v0

    #@506
    if-eqz v23, :cond_1

    #@508
    .line 3311
    move-object/from16 v0, p0

    #@50a
    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mIccRefreshRegistrants:Landroid/os/RegistrantList;

    #@50c
    move-object/from16 v23, v0

    #@50e
    .line 3312
    new-instance v24, Landroid/os/AsyncResult;

    #@510
    const/16 v25, 0x0

    #@512
    const/16 v26, 0x0

    #@514
    move-object/from16 v0, v24

    #@516
    move-object/from16 v1, v25

    #@518
    move-object/from16 v2, v18

    #@51a
    move-object/from16 v3, v26

    #@51c
    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    #@51f
    .line 3311
    invoke-virtual/range {v23 .. v24}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    #@522
    goto/16 :goto_1

    #@524
    .line 3317
    :pswitch_41
    move-object/from16 v0, p0

    #@526
    move/from16 v1, v16

    #@528
    move-object/from16 v2, v18

    #@52a
    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    #@52d
    .line 3319
    move-object/from16 v0, p0

    #@52f
    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mRingRegistrant:Landroid/os/Registrant;

    #@531
    move-object/from16 v23, v0

    #@533
    if-eqz v23, :cond_1

    #@535
    .line 3320
    move-object/from16 v0, p0

    #@537
    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mRingRegistrant:Landroid/os/Registrant;

    #@539
    move-object/from16 v23, v0

    #@53b
    .line 3321
    new-instance v24, Landroid/os/AsyncResult;

    #@53d
    const/16 v25, 0x0

    #@53f
    const/16 v26, 0x0

    #@541
    move-object/from16 v0, v24

    #@543
    move-object/from16 v1, v25

    #@545
    move-object/from16 v2, v18

    #@547
    move-object/from16 v3, v26

    #@549
    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    #@54c
    .line 3320
    invoke-virtual/range {v23 .. v24}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    #@54f
    goto/16 :goto_1

    #@551
    .line 3326
    :pswitch_42
    move-object/from16 v0, p0

    #@553
    move/from16 v1, v16

    #@555
    move-object/from16 v2, v18

    #@557
    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/RIL;->unsljLogvRet(ILjava/lang/Object;)V

    #@55a
    .line 3327
    move-object/from16 v0, p0

    #@55c
    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mRestrictedStateRegistrant:Landroid/os/Registrant;

    #@55e
    move-object/from16 v23, v0

    #@560
    if-eqz v23, :cond_1

    #@562
    .line 3328
    move-object/from16 v0, p0

    #@564
    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mRestrictedStateRegistrant:Landroid/os/Registrant;

    #@566
    move-object/from16 v23, v0

    #@568
    .line 3329
    new-instance v24, Landroid/os/AsyncResult;

    #@56a
    const/16 v25, 0x0

    #@56c
    const/16 v26, 0x0

    #@56e
    move-object/from16 v0, v24

    #@570
    move-object/from16 v1, v25

    #@572
    move-object/from16 v2, v18

    #@574
    move-object/from16 v3, v26

    #@576
    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    #@579
    .line 3328
    invoke-virtual/range {v23 .. v24}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    #@57c
    goto/16 :goto_1

    #@57e
    .line 3334
    :pswitch_43
    move-object/from16 v0, p0

    #@580
    move/from16 v1, v16

    #@582
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/RIL;->unsljLog(I)V

    #@585
    .line 3336
    move-object/from16 v0, p0

    #@587
    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mIccStatusChangedRegistrants:Landroid/os/RegistrantList;

    #@589
    move-object/from16 v23, v0

    #@58b
    if-eqz v23, :cond_1

    #@58d
    .line 3337
    move-object/from16 v0, p0

    #@58f
    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mIccStatusChangedRegistrants:Landroid/os/RegistrantList;

    #@591
    move-object/from16 v23, v0

    #@593
    invoke-virtual/range {v23 .. v23}, Landroid/os/RegistrantList;->notifyRegistrants()V

    #@596
    goto/16 :goto_1

    #@598
    .line 3342
    :pswitch_44
    move-object/from16 v0, p0

    #@59a
    move/from16 v1, v16

    #@59c
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/RIL;->unsljLog(I)V

    #@59f
    .line 3344
    move-object/from16 v0, p0

    #@5a1
    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    #@5a3
    move-object/from16 v23, v0

    #@5a5
    move-object/from16 v0, p0

    #@5a7
    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mInstanceId:Ljava/lang/Integer;

    #@5a9
    move-object/from16 v24, v0

    #@5ab
    invoke-virtual/range {v24 .. v24}, Ljava/lang/Integer;->intValue()I

    #@5ae
    move-result v24

    #@5af
    const/16 v25, 0x2

    #@5b1
    .line 3345
    const/16 v26, 0x2

    #@5b3
    .line 3344
    invoke-virtual/range {v23 .. v26}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeRilNewSms(III)V

    #@5b6
    move-object/from16 v20, v18

    #@5b8
    .line 3347
    check-cast v20, Landroid/telephony/SmsMessage;

    #@5ba
    .line 3349
    .restart local v20    # "sms":Landroid/telephony/SmsMessage;
    move-object/from16 v0, p0

    #@5bc
    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mCdmaSmsRegistrant:Landroid/os/Registrant;

    #@5be
    move-object/from16 v23, v0

    #@5c0
    if-eqz v23, :cond_1

    #@5c2
    .line 3350
    move-object/from16 v0, p0

    #@5c4
    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mCdmaSmsRegistrant:Landroid/os/Registrant;

    #@5c6
    move-object/from16 v23, v0

    #@5c8
    .line 3351
    new-instance v24, Landroid/os/AsyncResult;

    #@5ca
    const/16 v25, 0x0

    #@5cc
    const/16 v26, 0x0

    #@5ce
    move-object/from16 v0, v24

    #@5d0
    move-object/from16 v1, v25

    #@5d2
    move-object/from16 v2, v20

    #@5d4
    move-object/from16 v3, v26

    #@5d6
    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    #@5d9
    .line 3350
    invoke-virtual/range {v23 .. v24}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    #@5dc
    goto/16 :goto_1

    #@5de
    .end local v20    # "sms":Landroid/telephony/SmsMessage;
    :pswitch_45
    move-object/from16 v23, v18

    #@5e0
    .line 3356
    check-cast v23, [B

    #@5e2
    invoke-static/range {v23 .. v23}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    #@5e5
    move-result-object v23

    #@5e6
    move-object/from16 v0, p0

    #@5e8
    move/from16 v1, v16

    #@5ea
    move-object/from16 v2, v23

    #@5ec
    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/RIL;->unsljLogvRet(ILjava/lang/Object;)V

    #@5ef
    .line 3358
    move-object/from16 v0, p0

    #@5f1
    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mGsmBroadcastSmsRegistrant:Landroid/os/Registrant;

    #@5f3
    move-object/from16 v23, v0

    #@5f5
    if-eqz v23, :cond_1

    #@5f7
    .line 3359
    move-object/from16 v0, p0

    #@5f9
    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mGsmBroadcastSmsRegistrant:Landroid/os/Registrant;

    #@5fb
    move-object/from16 v23, v0

    #@5fd
    .line 3360
    new-instance v24, Landroid/os/AsyncResult;

    #@5ff
    const/16 v25, 0x0

    #@601
    const/16 v26, 0x0

    #@603
    move-object/from16 v0, v24

    #@605
    move-object/from16 v1, v25

    #@607
    move-object/from16 v2, v18

    #@609
    move-object/from16 v3, v26

    #@60b
    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    #@60e
    .line 3359
    invoke-virtual/range {v23 .. v24}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    #@611
    goto/16 :goto_1

    #@613
    .line 3365
    :pswitch_46
    move-object/from16 v0, p0

    #@615
    move/from16 v1, v16

    #@617
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/RIL;->unsljLog(I)V

    #@61a
    .line 3367
    move-object/from16 v0, p0

    #@61c
    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mIccSmsFullRegistrant:Landroid/os/Registrant;

    #@61e
    move-object/from16 v23, v0

    #@620
    if-eqz v23, :cond_1

    #@622
    .line 3368
    move-object/from16 v0, p0

    #@624
    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mIccSmsFullRegistrant:Landroid/os/Registrant;

    #@626
    move-object/from16 v23, v0

    #@628
    invoke-virtual/range {v23 .. v23}, Landroid/os/Registrant;->notifyRegistrant()V

    #@62b
    goto/16 :goto_1

    #@62d
    .line 3373
    :pswitch_47
    move-object/from16 v0, p0

    #@62f
    move/from16 v1, v16

    #@631
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/RIL;->unsljLog(I)V

    #@634
    .line 3375
    move-object/from16 v0, p0

    #@636
    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mEmergencyCallbackModeRegistrant:Landroid/os/Registrant;

    #@638
    move-object/from16 v23, v0

    #@63a
    if-eqz v23, :cond_1

    #@63c
    .line 3376
    move-object/from16 v0, p0

    #@63e
    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mEmergencyCallbackModeRegistrant:Landroid/os/Registrant;

    #@640
    move-object/from16 v23, v0

    #@642
    invoke-virtual/range {v23 .. v23}, Landroid/os/Registrant;->notifyRegistrant()V

    #@645
    goto/16 :goto_1

    #@647
    .line 3381
    :pswitch_48
    move-object/from16 v0, p0

    #@649
    move/from16 v1, v16

    #@64b
    move-object/from16 v2, v18

    #@64d
    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    #@650
    .line 3383
    move-object/from16 v0, p0

    #@652
    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mCallWaitingInfoRegistrants:Landroid/os/RegistrantList;

    #@654
    move-object/from16 v23, v0

    #@656
    if-eqz v23, :cond_1

    #@658
    .line 3384
    move-object/from16 v0, p0

    #@65a
    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mCallWaitingInfoRegistrants:Landroid/os/RegistrantList;

    #@65c
    move-object/from16 v23, v0

    #@65e
    .line 3385
    new-instance v24, Landroid/os/AsyncResult;

    #@660
    const/16 v25, 0x0

    #@662
    const/16 v26, 0x0

    #@664
    move-object/from16 v0, v24

    #@666
    move-object/from16 v1, v25

    #@668
    move-object/from16 v2, v18

    #@66a
    move-object/from16 v3, v26

    #@66c
    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    #@66f
    .line 3384
    invoke-virtual/range {v23 .. v24}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    #@672
    goto/16 :goto_1

    #@674
    .line 3390
    :pswitch_49
    move-object/from16 v0, p0

    #@676
    move/from16 v1, v16

    #@678
    move-object/from16 v2, v18

    #@67a
    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    #@67d
    .line 3392
    move-object/from16 v0, p0

    #@67f
    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mOtaProvisionRegistrants:Landroid/os/RegistrantList;

    #@681
    move-object/from16 v23, v0

    #@683
    if-eqz v23, :cond_1

    #@685
    .line 3393
    move-object/from16 v0, p0

    #@687
    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mOtaProvisionRegistrants:Landroid/os/RegistrantList;

    #@689
    move-object/from16 v23, v0

    #@68b
    .line 3394
    new-instance v24, Landroid/os/AsyncResult;

    #@68d
    const/16 v25, 0x0

    #@68f
    const/16 v26, 0x0

    #@691
    move-object/from16 v0, v24

    #@693
    move-object/from16 v1, v25

    #@695
    move-object/from16 v2, v18

    #@697
    move-object/from16 v3, v26

    #@699
    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    #@69c
    .line 3393
    invoke-virtual/range {v23 .. v24}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    #@69f
    goto/16 :goto_1

    #@6a1
    .line 3402
    :pswitch_4a
    :try_start_2
    move-object/from16 v0, v18

    #@6a3
    check-cast v0, Ljava/util/ArrayList;

    #@6a5
    move-object v7, v0
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_1

    #@6a6
    .line 3408
    .local v7, "listInfoRecs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/cdma/CdmaInformationRecords;>;"
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@6a9
    move-result-object v14

    #@6aa
    .local v14, "rec$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    #@6ad
    move-result v23

    #@6ae
    if-eqz v23, :cond_1

    #@6b0
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@6b3
    move-result-object v13

    #@6b4
    check-cast v13, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;

    #@6b6
    .line 3409
    .local v13, "rec":Lcom/android/internal/telephony/cdma/CdmaInformationRecords;
    move-object/from16 v0, p0

    #@6b8
    move/from16 v1, v16

    #@6ba
    invoke-direct {v0, v1, v13}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    #@6bd
    .line 3410
    move-object/from16 v0, p0

    #@6bf
    invoke-direct {v0, v13}, Lcom/android/internal/telephony/RIL;->notifyRegistrantsCdmaInfoRec(Lcom/android/internal/telephony/cdma/CdmaInformationRecords;)V

    #@6c2
    goto :goto_2

    #@6c3
    .line 3403
    .end local v7    # "listInfoRecs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/cdma/CdmaInformationRecords;>;"
    .end local v13    # "rec":Lcom/android/internal/telephony/cdma/CdmaInformationRecords;
    .end local v14    # "rec$iterator":Ljava/util/Iterator;
    :catch_1
    move-exception v5

    #@6c4
    .line 3404
    .local v5, "e":Ljava/lang/ClassCastException;
    const-string/jumbo v23, "RILJ"

    #@6c7
    const-string/jumbo v24, "Unexpected exception casting to listInfoRecs"

    #@6ca
    move-object/from16 v0, v23

    #@6cc
    move-object/from16 v1, v24

    #@6ce
    invoke-static {v0, v1, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@6d1
    goto/16 :goto_1

    #@6d3
    .end local v5    # "e":Ljava/lang/ClassCastException;
    :pswitch_4b
    move-object/from16 v23, v18

    #@6d5
    .line 3415
    check-cast v23, [B

    #@6d7
    invoke-static/range {v23 .. v23}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    #@6da
    move-result-object v23

    #@6db
    move-object/from16 v0, p0

    #@6dd
    move/from16 v1, v16

    #@6df
    move-object/from16 v2, v23

    #@6e1
    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/RIL;->unsljLogvRet(ILjava/lang/Object;)V

    #@6e4
    .line 3416
    move-object/from16 v0, p0

    #@6e6
    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mUnsolOemHookRawRegistrant:Landroid/os/Registrant;

    #@6e8
    move-object/from16 v23, v0

    #@6ea
    if-eqz v23, :cond_1

    #@6ec
    .line 3417
    move-object/from16 v0, p0

    #@6ee
    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mUnsolOemHookRawRegistrant:Landroid/os/Registrant;

    #@6f0
    move-object/from16 v23, v0

    #@6f2
    new-instance v24, Landroid/os/AsyncResult;

    #@6f4
    const/16 v25, 0x0

    #@6f6
    const/16 v26, 0x0

    #@6f8
    move-object/from16 v0, v24

    #@6fa
    move-object/from16 v1, v25

    #@6fc
    move-object/from16 v2, v18

    #@6fe
    move-object/from16 v3, v26

    #@700
    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    #@703
    invoke-virtual/range {v23 .. v24}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    #@706
    goto/16 :goto_1

    #@708
    .line 3422
    :pswitch_4c
    move-object/from16 v0, p0

    #@70a
    move/from16 v1, v16

    #@70c
    move-object/from16 v2, v18

    #@70e
    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/RIL;->unsljLogvRet(ILjava/lang/Object;)V

    #@711
    .line 3423
    move-object/from16 v0, p0

    #@713
    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mRingbackToneRegistrants:Landroid/os/RegistrantList;

    #@715
    move-object/from16 v23, v0

    #@717
    if-eqz v23, :cond_1

    #@719
    .line 3424
    check-cast v18, [I

    #@71b
    .end local v18    # "ret":Ljava/lang/Object;
    const/16 v23, 0x0

    #@71d
    aget v23, v18, v23

    #@71f
    const/16 v24, 0x1

    #@721
    move/from16 v0, v23

    #@723
    move/from16 v1, v24

    #@725
    if-ne v0, v1, :cond_6

    #@727
    const/4 v12, 0x1

    #@728
    .line 3425
    .local v12, "playtone":Z
    :goto_3
    move-object/from16 v0, p0

    #@72a
    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mRingbackToneRegistrants:Landroid/os/RegistrantList;

    #@72c
    move-object/from16 v23, v0

    #@72e
    .line 3426
    new-instance v24, Landroid/os/AsyncResult;

    #@730
    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@733
    move-result-object v25

    #@734
    const/16 v26, 0x0

    #@736
    const/16 v27, 0x0

    #@738
    move-object/from16 v0, v24

    #@73a
    move-object/from16 v1, v26

    #@73c
    move-object/from16 v2, v25

    #@73e
    move-object/from16 v3, v27

    #@740
    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    #@743
    .line 3425
    invoke-virtual/range {v23 .. v24}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    #@746
    goto/16 :goto_1

    #@748
    .line 3424
    .end local v12    # "playtone":Z
    :cond_6
    const/4 v12, 0x0

    #@749
    .restart local v12    # "playtone":Z
    goto :goto_3

    #@74a
    .line 3431
    .end local v12    # "playtone":Z
    .restart local v18    # "ret":Ljava/lang/Object;
    :pswitch_4d
    move-object/from16 v0, p0

    #@74c
    move/from16 v1, v16

    #@74e
    move-object/from16 v2, v18

    #@750
    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    #@753
    .line 3433
    move-object/from16 v0, p0

    #@755
    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mResendIncallMuteRegistrants:Landroid/os/RegistrantList;

    #@757
    move-object/from16 v23, v0

    #@759
    if-eqz v23, :cond_1

    #@75b
    .line 3434
    move-object/from16 v0, p0

    #@75d
    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mResendIncallMuteRegistrants:Landroid/os/RegistrantList;

    #@75f
    move-object/from16 v23, v0

    #@761
    .line 3435
    new-instance v24, Landroid/os/AsyncResult;

    #@763
    const/16 v25, 0x0

    #@765
    const/16 v26, 0x0

    #@767
    move-object/from16 v0, v24

    #@769
    move-object/from16 v1, v25

    #@76b
    move-object/from16 v2, v18

    #@76d
    move-object/from16 v3, v26

    #@76f
    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    #@772
    .line 3434
    invoke-virtual/range {v23 .. v24}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    #@775
    goto/16 :goto_1

    #@777
    .line 3440
    :pswitch_4e
    move-object/from16 v0, p0

    #@779
    move/from16 v1, v16

    #@77b
    move-object/from16 v2, v18

    #@77d
    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    #@780
    .line 3442
    move-object/from16 v0, p0

    #@782
    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mVoiceRadioTechChangedRegistrants:Landroid/os/RegistrantList;

    #@784
    move-object/from16 v23, v0

    #@786
    if-eqz v23, :cond_1

    #@788
    .line 3443
    move-object/from16 v0, p0

    #@78a
    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mVoiceRadioTechChangedRegistrants:Landroid/os/RegistrantList;

    #@78c
    move-object/from16 v23, v0

    #@78e
    .line 3444
    new-instance v24, Landroid/os/AsyncResult;

    #@790
    const/16 v25, 0x0

    #@792
    const/16 v26, 0x0

    #@794
    move-object/from16 v0, v24

    #@796
    move-object/from16 v1, v25

    #@798
    move-object/from16 v2, v18

    #@79a
    move-object/from16 v3, v26

    #@79c
    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    #@79f
    .line 3443
    invoke-virtual/range {v23 .. v24}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    #@7a2
    goto/16 :goto_1

    #@7a4
    .line 3449
    :pswitch_4f
    move-object/from16 v0, p0

    #@7a6
    move/from16 v1, v16

    #@7a8
    move-object/from16 v2, v18

    #@7aa
    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    #@7ad
    .line 3451
    move-object/from16 v0, p0

    #@7af
    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mCdmaSubscriptionChangedRegistrants:Landroid/os/RegistrantList;

    #@7b1
    move-object/from16 v23, v0

    #@7b3
    if-eqz v23, :cond_1

    #@7b5
    .line 3452
    move-object/from16 v0, p0

    #@7b7
    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mCdmaSubscriptionChangedRegistrants:Landroid/os/RegistrantList;

    #@7b9
    move-object/from16 v23, v0

    #@7bb
    .line 3453
    new-instance v24, Landroid/os/AsyncResult;

    #@7bd
    const/16 v25, 0x0

    #@7bf
    const/16 v26, 0x0

    #@7c1
    move-object/from16 v0, v24

    #@7c3
    move-object/from16 v1, v25

    #@7c5
    move-object/from16 v2, v18

    #@7c7
    move-object/from16 v3, v26

    #@7c9
    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    #@7cc
    .line 3452
    invoke-virtual/range {v23 .. v24}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    #@7cf
    goto/16 :goto_1

    #@7d1
    .line 3458
    :pswitch_50
    move-object/from16 v0, p0

    #@7d3
    move/from16 v1, v16

    #@7d5
    move-object/from16 v2, v18

    #@7d7
    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    #@7da
    .line 3460
    move-object/from16 v0, p0

    #@7dc
    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mCdmaPrlChangedRegistrants:Landroid/os/RegistrantList;

    #@7de
    move-object/from16 v23, v0

    #@7e0
    if-eqz v23, :cond_1

    #@7e2
    .line 3461
    move-object/from16 v0, p0

    #@7e4
    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mCdmaPrlChangedRegistrants:Landroid/os/RegistrantList;

    #@7e6
    move-object/from16 v23, v0

    #@7e8
    .line 3462
    new-instance v24, Landroid/os/AsyncResult;

    #@7ea
    const/16 v25, 0x0

    #@7ec
    const/16 v26, 0x0

    #@7ee
    move-object/from16 v0, v24

    #@7f0
    move-object/from16 v1, v25

    #@7f2
    move-object/from16 v2, v18

    #@7f4
    move-object/from16 v3, v26

    #@7f6
    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    #@7f9
    .line 3461
    invoke-virtual/range {v23 .. v24}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    #@7fc
    goto/16 :goto_1

    #@7fe
    .line 3467
    :pswitch_51
    move-object/from16 v0, p0

    #@800
    move/from16 v1, v16

    #@802
    move-object/from16 v2, v18

    #@804
    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    #@807
    .line 3469
    move-object/from16 v0, p0

    #@809
    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mExitEmergencyCallbackModeRegistrants:Landroid/os/RegistrantList;

    #@80b
    move-object/from16 v23, v0

    #@80d
    if-eqz v23, :cond_1

    #@80f
    .line 3470
    move-object/from16 v0, p0

    #@811
    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mExitEmergencyCallbackModeRegistrants:Landroid/os/RegistrantList;

    #@813
    move-object/from16 v23, v0

    #@815
    .line 3471
    new-instance v24, Landroid/os/AsyncResult;

    #@817
    const/16 v25, 0x0

    #@819
    const/16 v26, 0x0

    #@81b
    const/16 v27, 0x0

    #@81d
    invoke-direct/range {v24 .. v27}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    #@820
    .line 3470
    invoke-virtual/range {v23 .. v24}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    #@823
    goto/16 :goto_1

    #@825
    .line 3476
    :pswitch_52
    move-object/from16 v0, p0

    #@827
    move/from16 v1, v16

    #@829
    move-object/from16 v2, v18

    #@82b
    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    #@82e
    .line 3479
    const/16 v23, 0x0

    #@830
    const/16 v24, 0x0

    #@832
    move-object/from16 v0, p0

    #@834
    move/from16 v1, v23

    #@836
    move-object/from16 v2, v24

    #@838
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/RIL;->setRadioPower(ZLandroid/os/Message;)V

    #@83b
    .line 3480
    move-object/from16 v0, p0

    #@83d
    iget v0, v0, Lcom/android/internal/telephony/RIL;->mCdmaSubscription:I

    #@83f
    move/from16 v23, v0

    #@841
    const/16 v24, 0x0

    #@843
    move-object/from16 v0, p0

    #@845
    move/from16 v1, v23

    #@847
    move-object/from16 v2, v24

    #@849
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/RIL;->setCdmaSubscriptionSource(ILandroid/os/Message;)V

    #@84c
    .line 3481
    const v23, 0x7fffffff

    #@84f
    const/16 v24, 0x0

    #@851
    move-object/from16 v0, p0

    #@853
    move/from16 v1, v23

    #@855
    move-object/from16 v2, v24

    #@857
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/RIL;->setCellInfoListRate(ILandroid/os/Message;)V

    #@85a
    .line 3482
    check-cast v18, [I

    #@85c
    .end local v18    # "ret":Ljava/lang/Object;
    const/16 v23, 0x0

    #@85e
    aget v23, v18, v23

    #@860
    move-object/from16 v0, p0

    #@862
    move/from16 v1, v23

    #@864
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/RIL;->notifyRegistrantsRilConnectionChanged(I)V

    #@867
    goto/16 :goto_1

    #@869
    .line 3486
    .restart local v18    # "ret":Ljava/lang/Object;
    :pswitch_53
    move-object/from16 v0, p0

    #@86b
    move/from16 v1, v16

    #@86d
    move-object/from16 v2, v18

    #@86f
    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    #@872
    .line 3488
    move-object/from16 v0, p0

    #@874
    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mRilCellInfoListRegistrants:Landroid/os/RegistrantList;

    #@876
    move-object/from16 v23, v0

    #@878
    if-eqz v23, :cond_1

    #@87a
    .line 3489
    move-object/from16 v0, p0

    #@87c
    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mRilCellInfoListRegistrants:Landroid/os/RegistrantList;

    #@87e
    move-object/from16 v23, v0

    #@880
    .line 3490
    new-instance v24, Landroid/os/AsyncResult;

    #@882
    const/16 v25, 0x0

    #@884
    const/16 v26, 0x0

    #@886
    move-object/from16 v0, v24

    #@888
    move-object/from16 v1, v25

    #@88a
    move-object/from16 v2, v18

    #@88c
    move-object/from16 v3, v26

    #@88e
    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    #@891
    .line 3489
    invoke-virtual/range {v23 .. v24}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    #@894
    goto/16 :goto_1

    #@896
    .line 3495
    :pswitch_54
    move-object/from16 v0, p0

    #@898
    move/from16 v1, v16

    #@89a
    move-object/from16 v2, v18

    #@89c
    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    #@89f
    .line 3497
    move-object/from16 v0, p0

    #@8a1
    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mSubscriptionStatusRegistrants:Landroid/os/RegistrantList;

    #@8a3
    move-object/from16 v23, v0

    #@8a5
    if-eqz v23, :cond_1

    #@8a7
    .line 3498
    move-object/from16 v0, p0

    #@8a9
    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mSubscriptionStatusRegistrants:Landroid/os/RegistrantList;

    #@8ab
    move-object/from16 v23, v0

    #@8ad
    .line 3499
    new-instance v24, Landroid/os/AsyncResult;

    #@8af
    const/16 v25, 0x0

    #@8b1
    const/16 v26, 0x0

    #@8b3
    move-object/from16 v0, v24

    #@8b5
    move-object/from16 v1, v25

    #@8b7
    move-object/from16 v2, v18

    #@8b9
    move-object/from16 v3, v26

    #@8bb
    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    #@8be
    .line 3498
    invoke-virtual/range {v23 .. v24}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    #@8c1
    goto/16 :goto_1

    #@8c3
    .line 3504
    :pswitch_55
    move-object/from16 v0, p0

    #@8c5
    move/from16 v1, v16

    #@8c7
    move-object/from16 v2, v18

    #@8c9
    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    #@8cc
    .line 3506
    move-object/from16 v0, p0

    #@8ce
    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    #@8d0
    move-object/from16 v24, v0

    #@8d2
    move-object/from16 v0, p0

    #@8d4
    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mInstanceId:Ljava/lang/Integer;

    #@8d6
    move-object/from16 v23, v0

    #@8d8
    invoke-virtual/range {v23 .. v23}, Ljava/lang/Integer;->intValue()I

    #@8db
    move-result v25

    #@8dc
    move-object/from16 v23, v18

    #@8de
    check-cast v23, [I

    #@8e0
    const/16 v26, 0x0

    #@8e2
    aget v23, v23, v26

    #@8e4
    move-object/from16 v0, v24

    #@8e6
    move/from16 v1, v25

    #@8e8
    move/from16 v2, v23

    #@8ea
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeRilSrvcc(II)V

    #@8ed
    .line 3508
    move-object/from16 v0, p0

    #@8ef
    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mSrvccStateRegistrants:Landroid/os/RegistrantList;

    #@8f1
    move-object/from16 v23, v0

    #@8f3
    if-eqz v23, :cond_1

    #@8f5
    .line 3509
    move-object/from16 v0, p0

    #@8f7
    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mSrvccStateRegistrants:Landroid/os/RegistrantList;

    #@8f9
    move-object/from16 v23, v0

    #@8fb
    .line 3510
    new-instance v24, Landroid/os/AsyncResult;

    #@8fd
    const/16 v25, 0x0

    #@8ff
    const/16 v26, 0x0

    #@901
    move-object/from16 v0, v24

    #@903
    move-object/from16 v1, v25

    #@905
    move-object/from16 v2, v18

    #@907
    move-object/from16 v3, v26

    #@909
    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    #@90c
    .line 3509
    invoke-virtual/range {v23 .. v24}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    #@90f
    goto/16 :goto_1

    #@911
    .line 3515
    :pswitch_56
    move-object/from16 v0, p0

    #@913
    move/from16 v1, v16

    #@915
    move-object/from16 v2, v18

    #@917
    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    #@91a
    .line 3517
    move-object/from16 v0, p0

    #@91c
    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mHardwareConfigChangeRegistrants:Landroid/os/RegistrantList;

    #@91e
    move-object/from16 v23, v0

    #@920
    if-eqz v23, :cond_1

    #@922
    .line 3518
    move-object/from16 v0, p0

    #@924
    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mHardwareConfigChangeRegistrants:Landroid/os/RegistrantList;

    #@926
    move-object/from16 v23, v0

    #@928
    .line 3519
    new-instance v24, Landroid/os/AsyncResult;

    #@92a
    const/16 v25, 0x0

    #@92c
    const/16 v26, 0x0

    #@92e
    move-object/from16 v0, v24

    #@930
    move-object/from16 v1, v25

    #@932
    move-object/from16 v2, v18

    #@934
    move-object/from16 v3, v26

    #@936
    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    #@939
    .line 3518
    invoke-virtual/range {v23 .. v24}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    #@93c
    goto/16 :goto_1

    #@93e
    .line 3523
    :pswitch_57
    move-object/from16 v0, p0

    #@940
    move/from16 v1, v16

    #@942
    move-object/from16 v2, v18

    #@944
    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    #@947
    .line 3525
    move-object/from16 v0, p0

    #@949
    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mPhoneRadioCapabilityChangedRegistrants:Landroid/os/RegistrantList;

    #@94b
    move-object/from16 v23, v0

    #@94d
    if-eqz v23, :cond_1

    #@94f
    .line 3526
    move-object/from16 v0, p0

    #@951
    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mPhoneRadioCapabilityChangedRegistrants:Landroid/os/RegistrantList;

    #@953
    move-object/from16 v23, v0

    #@955
    .line 3527
    new-instance v24, Landroid/os/AsyncResult;

    #@957
    const/16 v25, 0x0

    #@959
    const/16 v26, 0x0

    #@95b
    move-object/from16 v0, v24

    #@95d
    move-object/from16 v1, v25

    #@95f
    move-object/from16 v2, v18

    #@961
    move-object/from16 v3, v26

    #@963
    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    #@966
    .line 3526
    invoke-virtual/range {v23 .. v24}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    #@969
    goto/16 :goto_1

    #@96b
    .line 3531
    :pswitch_58
    move-object/from16 v0, p0

    #@96d
    move/from16 v1, v16

    #@96f
    move-object/from16 v2, v18

    #@971
    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    #@974
    .line 3533
    move-object/from16 v0, p0

    #@976
    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mSsRegistrant:Landroid/os/Registrant;

    #@978
    move-object/from16 v23, v0

    #@97a
    if-eqz v23, :cond_1

    #@97c
    .line 3534
    move-object/from16 v0, p0

    #@97e
    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mSsRegistrant:Landroid/os/Registrant;

    #@980
    move-object/from16 v23, v0

    #@982
    .line 3535
    new-instance v24, Landroid/os/AsyncResult;

    #@984
    const/16 v25, 0x0

    #@986
    const/16 v26, 0x0

    #@988
    move-object/from16 v0, v24

    #@98a
    move-object/from16 v1, v25

    #@98c
    move-object/from16 v2, v18

    #@98e
    move-object/from16 v3, v26

    #@990
    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    #@993
    .line 3534
    invoke-virtual/range {v23 .. v24}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    #@996
    goto/16 :goto_1

    #@998
    .line 3539
    :pswitch_59
    move-object/from16 v0, p0

    #@99a
    move/from16 v1, v16

    #@99c
    move-object/from16 v2, v18

    #@99e
    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    #@9a1
    .line 3541
    move-object/from16 v0, p0

    #@9a3
    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mCatCcAlphaRegistrant:Landroid/os/Registrant;

    #@9a5
    move-object/from16 v23, v0

    #@9a7
    if-eqz v23, :cond_1

    #@9a9
    .line 3542
    move-object/from16 v0, p0

    #@9ab
    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mCatCcAlphaRegistrant:Landroid/os/Registrant;

    #@9ad
    move-object/from16 v23, v0

    #@9af
    .line 3543
    new-instance v24, Landroid/os/AsyncResult;

    #@9b1
    const/16 v25, 0x0

    #@9b3
    const/16 v26, 0x0

    #@9b5
    move-object/from16 v0, v24

    #@9b7
    move-object/from16 v1, v25

    #@9b9
    move-object/from16 v2, v18

    #@9bb
    move-object/from16 v3, v26

    #@9bd
    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    #@9c0
    .line 3542
    invoke-virtual/range {v23 .. v24}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    #@9c3
    goto/16 :goto_1

    #@9c5
    .line 3547
    :pswitch_5a
    move-object/from16 v0, p0

    #@9c7
    move/from16 v1, v16

    #@9c9
    move-object/from16 v2, v18

    #@9cb
    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    #@9ce
    .line 3549
    move-object/from16 v0, p0

    #@9d0
    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mLceInfoRegistrant:Landroid/os/Registrant;

    #@9d2
    move-object/from16 v23, v0

    #@9d4
    if-eqz v23, :cond_1

    #@9d6
    .line 3550
    move-object/from16 v0, p0

    #@9d8
    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mLceInfoRegistrant:Landroid/os/Registrant;

    #@9da
    move-object/from16 v23, v0

    #@9dc
    new-instance v24, Landroid/os/AsyncResult;

    #@9de
    const/16 v25, 0x0

    #@9e0
    const/16 v26, 0x0

    #@9e2
    move-object/from16 v0, v24

    #@9e4
    move-object/from16 v1, v25

    #@9e6
    move-object/from16 v2, v18

    #@9e8
    move-object/from16 v3, v26

    #@9ea
    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    #@9ed
    invoke-virtual/range {v23 .. v24}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    #@9f0
    goto/16 :goto_1

    #@9f2
    .line 3554
    :pswitch_5b
    move-object/from16 v0, p0

    #@9f4
    move/from16 v1, v16

    #@9f6
    move-object/from16 v2, v18

    #@9f8
    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    #@9fb
    .line 3556
    move-object/from16 v0, p0

    #@9fd
    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mPcoDataRegistrants:Landroid/os/RegistrantList;

    #@9ff
    move-object/from16 v23, v0

    #@a01
    new-instance v24, Landroid/os/AsyncResult;

    #@a03
    const/16 v25, 0x0

    #@a05
    const/16 v26, 0x0

    #@a07
    move-object/from16 v0, v24

    #@a09
    move-object/from16 v1, v25

    #@a0b
    move-object/from16 v2, v18

    #@a0d
    move-object/from16 v3, v26

    #@a0f
    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    #@a12
    invoke-virtual/range {v23 .. v24}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    #@a15
    goto/16 :goto_1

    #@a17
    .line 3063
    nop

    #@a18
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
        :pswitch_2e
    .end packed-switch

    #@a7a
    .line 3126
    :pswitch_data_1
    .packed-switch 0x3e8
        :pswitch_2f
        :pswitch_31
        :pswitch_32
        :pswitch_33
        :pswitch_34
        :pswitch_35
        :pswitch_36
        :pswitch_2
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
        :pswitch_43
        :pswitch_44
        :pswitch_45
        :pswitch_46
        :pswitch_42
        :pswitch_47
        :pswitch_48
        :pswitch_49
        :pswitch_4a
        :pswitch_4b
        :pswitch_4c
        :pswitch_4d
        :pswitch_4f
        :pswitch_50
        :pswitch_51
        :pswitch_52
        :pswitch_4e
        :pswitch_53
        :pswitch_30
        :pswitch_54
        :pswitch_55
        :pswitch_56
        :pswitch_2
        :pswitch_57
        :pswitch_58
        :pswitch_59
        :pswitch_5a
        :pswitch_5b
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
    .line 575
    const/4 v2, 0x0

    #@3
    .line 576
    .local v2, "offset":I
    const/4 v3, 0x4

    #@4
    .line 578
    .local v3, "remaining":I
    :cond_0
    invoke-virtual {p0, p1, v2, v3}, Ljava/io/InputStream;->read([BII)I

    #@7
    move-result v0

    #@8
    .line 580
    .local v0, "countRead":I
    if-gez v0, :cond_1

    #@a
    .line 581
    const-string/jumbo v4, "RILJ"

    #@d
    const-string/jumbo v5, "Hit EOS reading message length"

    #@10
    invoke-static {v4, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@13
    .line 582
    return v7

    #@14
    .line 585
    :cond_1
    add-int/2addr v2, v0

    #@15
    .line 586
    sub-int/2addr v3, v0

    #@16
    .line 587
    if-gtz v3, :cond_0

    #@18
    .line 589
    aget-byte v4, p1, v4

    #@1a
    and-int/lit16 v4, v4, 0xff

    #@1c
    shl-int/lit8 v4, v4, 0x18

    #@1e
    .line 590
    const/4 v5, 0x1

    #@1f
    aget-byte v5, p1, v5

    #@21
    and-int/lit16 v5, v5, 0xff

    #@23
    shl-int/lit8 v5, v5, 0x10

    #@25
    .line 589
    or-int/2addr v4, v5

    #@26
    .line 591
    const/4 v5, 0x2

    #@27
    aget-byte v5, p1, v5

    #@29
    and-int/lit16 v5, v5, 0xff

    #@2b
    shl-int/lit8 v5, v5, 0x8

    #@2d
    .line 589
    or-int/2addr v4, v5

    #@2e
    .line 592
    const/4 v5, 0x3

    #@2f
    aget-byte v5, p1, v5

    #@31
    and-int/lit16 v5, v5, 0xff

    #@33
    .line 589
    or-int v1, v4, v5

    #@35
    .line 595
    .local v1, "messageLength":I
    const/4 v2, 0x0

    #@36
    .line 596
    move v3, v1

    #@37
    .line 598
    :cond_2
    invoke-virtual {p0, p1, v2, v3}, Ljava/io/InputStream;->read([BII)I

    #@3a
    move-result v0

    #@3b
    .line 600
    if-gez v0, :cond_3

    #@3d
    .line 601
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
    .line 602
    const-string/jumbo v6, " remaining="

    #@53
    .line 601
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
    .line 603
    return v7

    #@63
    .line 606
    :cond_3
    add-int/2addr v2, v0

    #@64
    .line 607
    sub-int/2addr v3, v0

    #@65
    .line 608
    if-gtz v3, :cond_2

    #@67
    .line 610
    return v1
.end method

.method static requestToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "request"    # I

    #@0
    .prologue
    .line 4367
    sparse-switch p0, :sswitch_data_0

    #@3
    .line 4506
    const-string/jumbo v0, "<unknown request>"

    #@6
    return-object v0

    #@7
    .line 4368
    :sswitch_0
    const-string/jumbo v0, "GET_SIM_STATUS"

    #@a
    return-object v0

    #@b
    .line 4369
    :sswitch_1
    const-string/jumbo v0, "ENTER_SIM_PIN"

    #@e
    return-object v0

    #@f
    .line 4370
    :sswitch_2
    const-string/jumbo v0, "ENTER_SIM_PUK"

    #@12
    return-object v0

    #@13
    .line 4371
    :sswitch_3
    const-string/jumbo v0, "ENTER_SIM_PIN2"

    #@16
    return-object v0

    #@17
    .line 4372
    :sswitch_4
    const-string/jumbo v0, "ENTER_SIM_PUK2"

    #@1a
    return-object v0

    #@1b
    .line 4373
    :sswitch_5
    const-string/jumbo v0, "CHANGE_SIM_PIN"

    #@1e
    return-object v0

    #@1f
    .line 4374
    :sswitch_6
    const-string/jumbo v0, "CHANGE_SIM_PIN2"

    #@22
    return-object v0

    #@23
    .line 4375
    :sswitch_7
    const-string/jumbo v0, "ENTER_NETWORK_DEPERSONALIZATION"

    #@26
    return-object v0

    #@27
    .line 4376
    :sswitch_8
    const-string/jumbo v0, "GET_CURRENT_CALLS"

    #@2a
    return-object v0

    #@2b
    .line 4377
    :sswitch_9
    const-string/jumbo v0, "DIAL"

    #@2e
    return-object v0

    #@2f
    .line 4378
    :sswitch_a
    const-string/jumbo v0, "GET_IMSI"

    #@32
    return-object v0

    #@33
    .line 4379
    :sswitch_b
    const-string/jumbo v0, "HANGUP"

    #@36
    return-object v0

    #@37
    .line 4380
    :sswitch_c
    const-string/jumbo v0, "HANGUP_WAITING_OR_BACKGROUND"

    #@3a
    return-object v0

    #@3b
    .line 4381
    :sswitch_d
    const-string/jumbo v0, "HANGUP_FOREGROUND_RESUME_BACKGROUND"

    #@3e
    return-object v0

    #@3f
    .line 4382
    :sswitch_e
    const-string/jumbo v0, "REQUEST_SWITCH_WAITING_OR_HOLDING_AND_ACTIVE"

    #@42
    return-object v0

    #@43
    .line 4383
    :sswitch_f
    const-string/jumbo v0, "CONFERENCE"

    #@46
    return-object v0

    #@47
    .line 4384
    :sswitch_10
    const-string/jumbo v0, "UDUB"

    #@4a
    return-object v0

    #@4b
    .line 4385
    :sswitch_11
    const-string/jumbo v0, "LAST_CALL_FAIL_CAUSE"

    #@4e
    return-object v0

    #@4f
    .line 4386
    :sswitch_12
    const-string/jumbo v0, "SIGNAL_STRENGTH"

    #@52
    return-object v0

    #@53
    .line 4387
    :sswitch_13
    const-string/jumbo v0, "VOICE_REGISTRATION_STATE"

    #@56
    return-object v0

    #@57
    .line 4388
    :sswitch_14
    const-string/jumbo v0, "DATA_REGISTRATION_STATE"

    #@5a
    return-object v0

    #@5b
    .line 4389
    :sswitch_15
    const-string/jumbo v0, "OPERATOR"

    #@5e
    return-object v0

    #@5f
    .line 4390
    :sswitch_16
    const-string/jumbo v0, "RADIO_POWER"

    #@62
    return-object v0

    #@63
    .line 4391
    :sswitch_17
    const-string/jumbo v0, "DTMF"

    #@66
    return-object v0

    #@67
    .line 4392
    :sswitch_18
    const-string/jumbo v0, "SEND_SMS"

    #@6a
    return-object v0

    #@6b
    .line 4393
    :sswitch_19
    const-string/jumbo v0, "SEND_SMS_EXPECT_MORE"

    #@6e
    return-object v0

    #@6f
    .line 4394
    :sswitch_1a
    const-string/jumbo v0, "SETUP_DATA_CALL"

    #@72
    return-object v0

    #@73
    .line 4395
    :sswitch_1b
    const-string/jumbo v0, "SIM_IO"

    #@76
    return-object v0

    #@77
    .line 4396
    :sswitch_1c
    const-string/jumbo v0, "SEND_USSD"

    #@7a
    return-object v0

    #@7b
    .line 4397
    :sswitch_1d
    const-string/jumbo v0, "CANCEL_USSD"

    #@7e
    return-object v0

    #@7f
    .line 4398
    :sswitch_1e
    const-string/jumbo v0, "GET_CLIR"

    #@82
    return-object v0

    #@83
    .line 4399
    :sswitch_1f
    const-string/jumbo v0, "SET_CLIR"

    #@86
    return-object v0

    #@87
    .line 4400
    :sswitch_20
    const-string/jumbo v0, "QUERY_CALL_FORWARD_STATUS"

    #@8a
    return-object v0

    #@8b
    .line 4401
    :sswitch_21
    const-string/jumbo v0, "SET_CALL_FORWARD"

    #@8e
    return-object v0

    #@8f
    .line 4402
    :sswitch_22
    const-string/jumbo v0, "QUERY_CALL_WAITING"

    #@92
    return-object v0

    #@93
    .line 4403
    :sswitch_23
    const-string/jumbo v0, "SET_CALL_WAITING"

    #@96
    return-object v0

    #@97
    .line 4404
    :sswitch_24
    const-string/jumbo v0, "SMS_ACKNOWLEDGE"

    #@9a
    return-object v0

    #@9b
    .line 4405
    :sswitch_25
    const-string/jumbo v0, "GET_IMEI"

    #@9e
    return-object v0

    #@9f
    .line 4406
    :sswitch_26
    const-string/jumbo v0, "GET_IMEISV"

    #@a2
    return-object v0

    #@a3
    .line 4407
    :sswitch_27
    const-string/jumbo v0, "ANSWER"

    #@a6
    return-object v0

    #@a7
    .line 4408
    :sswitch_28
    const-string/jumbo v0, "DEACTIVATE_DATA_CALL"

    #@aa
    return-object v0

    #@ab
    .line 4409
    :sswitch_29
    const-string/jumbo v0, "QUERY_FACILITY_LOCK"

    #@ae
    return-object v0

    #@af
    .line 4410
    :sswitch_2a
    const-string/jumbo v0, "SET_FACILITY_LOCK"

    #@b2
    return-object v0

    #@b3
    .line 4411
    :sswitch_2b
    const-string/jumbo v0, "CHANGE_BARRING_PASSWORD"

    #@b6
    return-object v0

    #@b7
    .line 4412
    :sswitch_2c
    const-string/jumbo v0, "QUERY_NETWORK_SELECTION_MODE"

    #@ba
    return-object v0

    #@bb
    .line 4413
    :sswitch_2d
    const-string/jumbo v0, "SET_NETWORK_SELECTION_AUTOMATIC"

    #@be
    return-object v0

    #@bf
    .line 4414
    :sswitch_2e
    const-string/jumbo v0, "SET_NETWORK_SELECTION_MANUAL"

    #@c2
    return-object v0

    #@c3
    .line 4415
    :sswitch_2f
    const-string/jumbo v0, "QUERY_AVAILABLE_NETWORKS "

    #@c6
    return-object v0

    #@c7
    .line 4416
    :sswitch_30
    const-string/jumbo v0, "DTMF_START"

    #@ca
    return-object v0

    #@cb
    .line 4417
    :sswitch_31
    const-string/jumbo v0, "DTMF_STOP"

    #@ce
    return-object v0

    #@cf
    .line 4418
    :sswitch_32
    const-string/jumbo v0, "BASEBAND_VERSION"

    #@d2
    return-object v0

    #@d3
    .line 4419
    :sswitch_33
    const-string/jumbo v0, "SEPARATE_CONNECTION"

    #@d6
    return-object v0

    #@d7
    .line 4420
    :sswitch_34
    const-string/jumbo v0, "SET_MUTE"

    #@da
    return-object v0

    #@db
    .line 4421
    :sswitch_35
    const-string/jumbo v0, "GET_MUTE"

    #@de
    return-object v0

    #@df
    .line 4422
    :sswitch_36
    const-string/jumbo v0, "QUERY_CLIP"

    #@e2
    return-object v0

    #@e3
    .line 4423
    :sswitch_37
    const-string/jumbo v0, "LAST_DATA_CALL_FAIL_CAUSE"

    #@e6
    return-object v0

    #@e7
    .line 4424
    :sswitch_38
    const-string/jumbo v0, "DATA_CALL_LIST"

    #@ea
    return-object v0

    #@eb
    .line 4425
    :sswitch_39
    const-string/jumbo v0, "RESET_RADIO"

    #@ee
    return-object v0

    #@ef
    .line 4426
    :sswitch_3a
    const-string/jumbo v0, "OEM_HOOK_RAW"

    #@f2
    return-object v0

    #@f3
    .line 4427
    :sswitch_3b
    const-string/jumbo v0, "OEM_HOOK_STRINGS"

    #@f6
    return-object v0

    #@f7
    .line 4428
    :sswitch_3c
    const-string/jumbo v0, "SCREEN_STATE"

    #@fa
    return-object v0

    #@fb
    .line 4429
    :sswitch_3d
    const-string/jumbo v0, "SET_SUPP_SVC_NOTIFICATION"

    #@fe
    return-object v0

    #@ff
    .line 4430
    :sswitch_3e
    const-string/jumbo v0, "WRITE_SMS_TO_SIM"

    #@102
    return-object v0

    #@103
    .line 4431
    :sswitch_3f
    const-string/jumbo v0, "DELETE_SMS_ON_SIM"

    #@106
    return-object v0

    #@107
    .line 4432
    :sswitch_40
    const-string/jumbo v0, "SET_BAND_MODE"

    #@10a
    return-object v0

    #@10b
    .line 4433
    :sswitch_41
    const-string/jumbo v0, "QUERY_AVAILABLE_BAND_MODE"

    #@10e
    return-object v0

    #@10f
    .line 4434
    :sswitch_42
    const-string/jumbo v0, "REQUEST_STK_GET_PROFILE"

    #@112
    return-object v0

    #@113
    .line 4435
    :sswitch_43
    const-string/jumbo v0, "REQUEST_STK_SET_PROFILE"

    #@116
    return-object v0

    #@117
    .line 4436
    :sswitch_44
    const-string/jumbo v0, "REQUEST_STK_SEND_ENVELOPE_COMMAND"

    #@11a
    return-object v0

    #@11b
    .line 4437
    :sswitch_45
    const-string/jumbo v0, "REQUEST_STK_SEND_TERMINAL_RESPONSE"

    #@11e
    return-object v0

    #@11f
    .line 4438
    :sswitch_46
    const-string/jumbo v0, "REQUEST_STK_HANDLE_CALL_SETUP_REQUESTED_FROM_SIM"

    #@122
    return-object v0

    #@123
    .line 4439
    :sswitch_47
    const-string/jumbo v0, "REQUEST_EXPLICIT_CALL_TRANSFER"

    #@126
    return-object v0

    #@127
    .line 4440
    :sswitch_48
    const-string/jumbo v0, "REQUEST_SET_PREFERRED_NETWORK_TYPE"

    #@12a
    return-object v0

    #@12b
    .line 4441
    :sswitch_49
    const-string/jumbo v0, "REQUEST_GET_PREFERRED_NETWORK_TYPE"

    #@12e
    return-object v0

    #@12f
    .line 4442
    :sswitch_4a
    const-string/jumbo v0, "REQUEST_GET_NEIGHBORING_CELL_IDS"

    #@132
    return-object v0

    #@133
    .line 4443
    :sswitch_4b
    const-string/jumbo v0, "REQUEST_SET_LOCATION_UPDATES"

    #@136
    return-object v0

    #@137
    .line 4444
    :sswitch_4c
    const-string/jumbo v0, "RIL_REQUEST_CDMA_SET_SUBSCRIPTION_SOURCE"

    #@13a
    return-object v0

    #@13b
    .line 4445
    :sswitch_4d
    const-string/jumbo v0, "RIL_REQUEST_CDMA_SET_ROAMING_PREFERENCE"

    #@13e
    return-object v0

    #@13f
    .line 4446
    :sswitch_4e
    const-string/jumbo v0, "RIL_REQUEST_CDMA_QUERY_ROAMING_PREFERENCE"

    #@142
    return-object v0

    #@143
    .line 4447
    :sswitch_4f
    const-string/jumbo v0, "RIL_REQUEST_SET_TTY_MODE"

    #@146
    return-object v0

    #@147
    .line 4448
    :sswitch_50
    const-string/jumbo v0, "RIL_REQUEST_QUERY_TTY_MODE"

    #@14a
    return-object v0

    #@14b
    .line 4449
    :sswitch_51
    const-string/jumbo v0, "RIL_REQUEST_CDMA_SET_PREFERRED_VOICE_PRIVACY_MODE"

    #@14e
    return-object v0

    #@14f
    .line 4450
    :sswitch_52
    const-string/jumbo v0, "RIL_REQUEST_CDMA_QUERY_PREFERRED_VOICE_PRIVACY_MODE"

    #@152
    return-object v0

    #@153
    .line 4451
    :sswitch_53
    const-string/jumbo v0, "RIL_REQUEST_CDMA_FLASH"

    #@156
    return-object v0

    #@157
    .line 4452
    :sswitch_54
    const-string/jumbo v0, "RIL_REQUEST_CDMA_BURST_DTMF"

    #@15a
    return-object v0

    #@15b
    .line 4453
    :sswitch_55
    const-string/jumbo v0, "RIL_REQUEST_CDMA_SEND_SMS"

    #@15e
    return-object v0

    #@15f
    .line 4454
    :sswitch_56
    const-string/jumbo v0, "RIL_REQUEST_CDMA_SMS_ACKNOWLEDGE"

    #@162
    return-object v0

    #@163
    .line 4455
    :sswitch_57
    const-string/jumbo v0, "RIL_REQUEST_GSM_GET_BROADCAST_CONFIG"

    #@166
    return-object v0

    #@167
    .line 4456
    :sswitch_58
    const-string/jumbo v0, "RIL_REQUEST_GSM_SET_BROADCAST_CONFIG"

    #@16a
    return-object v0

    #@16b
    .line 4457
    :sswitch_59
    const-string/jumbo v0, "RIL_REQUEST_CDMA_GET_BROADCAST_CONFIG"

    #@16e
    return-object v0

    #@16f
    .line 4458
    :sswitch_5a
    const-string/jumbo v0, "RIL_REQUEST_CDMA_SET_BROADCAST_CONFIG"

    #@172
    return-object v0

    #@173
    .line 4459
    :sswitch_5b
    const-string/jumbo v0, "RIL_REQUEST_GSM_BROADCAST_ACTIVATION"

    #@176
    return-object v0

    #@177
    .line 4460
    :sswitch_5c
    const-string/jumbo v0, "RIL_REQUEST_CDMA_VALIDATE_AND_WRITE_AKEY"

    #@17a
    return-object v0

    #@17b
    .line 4461
    :sswitch_5d
    const-string/jumbo v0, "RIL_REQUEST_CDMA_BROADCAST_ACTIVATION"

    #@17e
    return-object v0

    #@17f
    .line 4462
    :sswitch_5e
    const-string/jumbo v0, "RIL_REQUEST_CDMA_SUBSCRIPTION"

    #@182
    return-object v0

    #@183
    .line 4463
    :sswitch_5f
    const-string/jumbo v0, "RIL_REQUEST_CDMA_WRITE_SMS_TO_RUIM"

    #@186
    return-object v0

    #@187
    .line 4464
    :sswitch_60
    const-string/jumbo v0, "RIL_REQUEST_CDMA_DELETE_SMS_ON_RUIM"

    #@18a
    return-object v0

    #@18b
    .line 4465
    :sswitch_61
    const-string/jumbo v0, "RIL_REQUEST_DEVICE_IDENTITY"

    #@18e
    return-object v0

    #@18f
    .line 4466
    :sswitch_62
    const-string/jumbo v0, "RIL_REQUEST_GET_SMSC_ADDRESS"

    #@192
    return-object v0

    #@193
    .line 4467
    :sswitch_63
    const-string/jumbo v0, "RIL_REQUEST_SET_SMSC_ADDRESS"

    #@196
    return-object v0

    #@197
    .line 4468
    :sswitch_64
    const-string/jumbo v0, "REQUEST_EXIT_EMERGENCY_CALLBACK_MODE"

    #@19a
    return-object v0

    #@19b
    .line 4469
    :sswitch_65
    const-string/jumbo v0, "RIL_REQUEST_REPORT_SMS_MEMORY_STATUS"

    #@19e
    return-object v0

    #@19f
    .line 4470
    :sswitch_66
    const-string/jumbo v0, "RIL_REQUEST_REPORT_STK_SERVICE_IS_RUNNING"

    #@1a2
    return-object v0

    #@1a3
    .line 4471
    :sswitch_67
    const-string/jumbo v0, "RIL_REQUEST_CDMA_GET_SUBSCRIPTION_SOURCE"

    #@1a6
    return-object v0

    #@1a7
    .line 4472
    :sswitch_68
    const-string/jumbo v0, "RIL_REQUEST_ISIM_AUTHENTICATION"

    #@1aa
    return-object v0

    #@1ab
    .line 4473
    :sswitch_69
    const-string/jumbo v0, "RIL_REQUEST_ACKNOWLEDGE_INCOMING_GSM_SMS_WITH_PDU"

    #@1ae
    return-object v0

    #@1af
    .line 4474
    :sswitch_6a
    const-string/jumbo v0, "RIL_REQUEST_STK_SEND_ENVELOPE_WITH_STATUS"

    #@1b2
    return-object v0

    #@1b3
    .line 4475
    :sswitch_6b
    const-string/jumbo v0, "RIL_REQUEST_VOICE_RADIO_TECH"

    #@1b6
    return-object v0

    #@1b7
    .line 4476
    :sswitch_6c
    const-string/jumbo v0, "RIL_REQUEST_GET_CELL_INFO_LIST"

    #@1ba
    return-object v0

    #@1bb
    .line 4477
    :sswitch_6d
    const-string/jumbo v0, "RIL_REQUEST_SET_CELL_INFO_LIST_RATE"

    #@1be
    return-object v0

    #@1bf
    .line 4478
    :sswitch_6e
    const-string/jumbo v0, "RIL_REQUEST_SET_INITIAL_ATTACH_APN"

    #@1c2
    return-object v0

    #@1c3
    .line 4479
    :sswitch_6f
    const-string/jumbo v0, "RIL_REQUEST_SET_DATA_PROFILE"

    #@1c6
    return-object v0

    #@1c7
    .line 4480
    :sswitch_70
    const-string/jumbo v0, "RIL_REQUEST_IMS_REGISTRATION_STATE"

    #@1ca
    return-object v0

    #@1cb
    .line 4481
    :sswitch_71
    const-string/jumbo v0, "RIL_REQUEST_IMS_SEND_SMS"

    #@1ce
    return-object v0

    #@1cf
    .line 4482
    :sswitch_72
    const-string/jumbo v0, "RIL_REQUEST_SIM_TRANSMIT_APDU_BASIC"

    #@1d2
    return-object v0

    #@1d3
    .line 4483
    :sswitch_73
    const-string/jumbo v0, "RIL_REQUEST_SIM_OPEN_CHANNEL"

    #@1d6
    return-object v0

    #@1d7
    .line 4484
    :sswitch_74
    const-string/jumbo v0, "RIL_REQUEST_SIM_CLOSE_CHANNEL"

    #@1da
    return-object v0

    #@1db
    .line 4485
    :sswitch_75
    const-string/jumbo v0, "RIL_REQUEST_SIM_TRANSMIT_APDU_CHANNEL"

    #@1de
    return-object v0

    #@1df
    .line 4486
    :sswitch_76
    const-string/jumbo v0, "RIL_REQUEST_NV_READ_ITEM"

    #@1e2
    return-object v0

    #@1e3
    .line 4487
    :sswitch_77
    const-string/jumbo v0, "RIL_REQUEST_NV_WRITE_ITEM"

    #@1e6
    return-object v0

    #@1e7
    .line 4488
    :sswitch_78
    const-string/jumbo v0, "RIL_REQUEST_NV_WRITE_CDMA_PRL"

    #@1ea
    return-object v0

    #@1eb
    .line 4489
    :sswitch_79
    const-string/jumbo v0, "RIL_REQUEST_NV_RESET_CONFIG"

    #@1ee
    return-object v0

    #@1ef
    .line 4490
    :sswitch_7a
    const-string/jumbo v0, "RIL_REQUEST_SET_UICC_SUBSCRIPTION"

    #@1f2
    return-object v0

    #@1f3
    .line 4491
    :sswitch_7b
    const-string/jumbo v0, "RIL_REQUEST_ALLOW_DATA"

    #@1f6
    return-object v0

    #@1f7
    .line 4492
    :sswitch_7c
    const-string/jumbo v0, "GET_HARDWARE_CONFIG"

    #@1fa
    return-object v0

    #@1fb
    .line 4493
    :sswitch_7d
    const-string/jumbo v0, "RIL_REQUEST_SIM_AUTHENTICATION"

    #@1fe
    return-object v0

    #@1ff
    .line 4494
    :sswitch_7e
    const-string/jumbo v0, "RIL_REQUEST_SHUTDOWN"

    #@202
    return-object v0

    #@203
    .line 4496
    :sswitch_7f
    const-string/jumbo v0, "RIL_REQUEST_SET_RADIO_CAPABILITY"

    #@206
    return-object v0

    #@207
    .line 4498
    :sswitch_80
    const-string/jumbo v0, "RIL_REQUEST_GET_RADIO_CAPABILITY"

    #@20a
    return-object v0

    #@20b
    .line 4499
    :sswitch_81
    const-string/jumbo v0, "RIL_REQUEST_START_LCE"

    #@20e
    return-object v0

    #@20f
    .line 4500
    :sswitch_82
    const-string/jumbo v0, "RIL_REQUEST_STOP_LCE"

    #@212
    return-object v0

    #@213
    .line 4501
    :sswitch_83
    const-string/jumbo v0, "RIL_REQUEST_PULL_LCEDATA"

    #@216
    return-object v0

    #@217
    .line 4502
    :sswitch_84
    const-string/jumbo v0, "RIL_REQUEST_GET_ACTIVITY_INFO"

    #@21a
    return-object v0

    #@21b
    .line 4503
    :sswitch_85
    const-string/jumbo v0, "RIL_REQUEST_SET_ALLOWED_CARRIERS"

    #@21e
    return-object v0

    #@21f
    .line 4504
    :sswitch_86
    const-string/jumbo v0, "RIL_REQUEST_GET_ALLOWED_CARRIERS"

    #@222
    return-object v0

    #@223
    .line 4505
    :sswitch_87
    const-string/jumbo v0, "RIL_RESPONSE_ACKNOWLEDGEMENT"

    #@226
    return-object v0

    #@227
    .line 4367
    nop

    #@228
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x5 -> :sswitch_4
        0x6 -> :sswitch_5
        0x7 -> :sswitch_6
        0x8 -> :sswitch_7
        0x9 -> :sswitch_8
        0xa -> :sswitch_9
        0xb -> :sswitch_a
        0xc -> :sswitch_b
        0xd -> :sswitch_c
        0xe -> :sswitch_d
        0xf -> :sswitch_e
        0x10 -> :sswitch_f
        0x11 -> :sswitch_10
        0x12 -> :sswitch_11
        0x13 -> :sswitch_12
        0x14 -> :sswitch_13
        0x15 -> :sswitch_14
        0x16 -> :sswitch_15
        0x17 -> :sswitch_16
        0x18 -> :sswitch_17
        0x19 -> :sswitch_18
        0x1a -> :sswitch_19
        0x1b -> :sswitch_1a
        0x1c -> :sswitch_1b
        0x1d -> :sswitch_1c
        0x1e -> :sswitch_1d
        0x1f -> :sswitch_1e
        0x20 -> :sswitch_1f
        0x21 -> :sswitch_20
        0x22 -> :sswitch_21
        0x23 -> :sswitch_22
        0x24 -> :sswitch_23
        0x25 -> :sswitch_24
        0x26 -> :sswitch_25
        0x27 -> :sswitch_26
        0x28 -> :sswitch_27
        0x29 -> :sswitch_28
        0x2a -> :sswitch_29
        0x2b -> :sswitch_2a
        0x2c -> :sswitch_2b
        0x2d -> :sswitch_2c
        0x2e -> :sswitch_2d
        0x2f -> :sswitch_2e
        0x30 -> :sswitch_2f
        0x31 -> :sswitch_30
        0x32 -> :sswitch_31
        0x33 -> :sswitch_32
        0x34 -> :sswitch_33
        0x35 -> :sswitch_34
        0x36 -> :sswitch_35
        0x37 -> :sswitch_36
        0x38 -> :sswitch_37
        0x39 -> :sswitch_38
        0x3a -> :sswitch_39
        0x3b -> :sswitch_3a
        0x3c -> :sswitch_3b
        0x3d -> :sswitch_3c
        0x3e -> :sswitch_3d
        0x3f -> :sswitch_3e
        0x40 -> :sswitch_3f
        0x41 -> :sswitch_40
        0x42 -> :sswitch_41
        0x43 -> :sswitch_42
        0x44 -> :sswitch_43
        0x45 -> :sswitch_44
        0x46 -> :sswitch_45
        0x47 -> :sswitch_46
        0x48 -> :sswitch_47
        0x49 -> :sswitch_48
        0x4a -> :sswitch_49
        0x4b -> :sswitch_4a
        0x4c -> :sswitch_4b
        0x4d -> :sswitch_4c
        0x4e -> :sswitch_4d
        0x4f -> :sswitch_4e
        0x50 -> :sswitch_4f
        0x51 -> :sswitch_50
        0x52 -> :sswitch_51
        0x53 -> :sswitch_52
        0x54 -> :sswitch_53
        0x55 -> :sswitch_54
        0x56 -> :sswitch_5c
        0x57 -> :sswitch_55
        0x58 -> :sswitch_56
        0x59 -> :sswitch_57
        0x5a -> :sswitch_58
        0x5b -> :sswitch_5b
        0x5c -> :sswitch_59
        0x5d -> :sswitch_5a
        0x5e -> :sswitch_5d
        0x5f -> :sswitch_5e
        0x60 -> :sswitch_5f
        0x61 -> :sswitch_60
        0x62 -> :sswitch_61
        0x63 -> :sswitch_64
        0x64 -> :sswitch_62
        0x65 -> :sswitch_63
        0x66 -> :sswitch_65
        0x67 -> :sswitch_66
        0x68 -> :sswitch_67
        0x69 -> :sswitch_68
        0x6a -> :sswitch_69
        0x6b -> :sswitch_6a
        0x6c -> :sswitch_6b
        0x6d -> :sswitch_6c
        0x6e -> :sswitch_6d
        0x6f -> :sswitch_6e
        0x70 -> :sswitch_70
        0x71 -> :sswitch_71
        0x72 -> :sswitch_72
        0x73 -> :sswitch_73
        0x74 -> :sswitch_74
        0x75 -> :sswitch_75
        0x76 -> :sswitch_76
        0x77 -> :sswitch_77
        0x78 -> :sswitch_78
        0x79 -> :sswitch_79
        0x7a -> :sswitch_7a
        0x7b -> :sswitch_7b
        0x7c -> :sswitch_7c
        0x7d -> :sswitch_7d
        0x80 -> :sswitch_6f
        0x81 -> :sswitch_7e
        0x82 -> :sswitch_80
        0x83 -> :sswitch_7f
        0x84 -> :sswitch_81
        0x85 -> :sswitch_82
        0x86 -> :sswitch_83
        0x87 -> :sswitch_84
        0x88 -> :sswitch_85
        0x89 -> :sswitch_86
        0x320 -> :sswitch_87
    .end sparse-switch
.end method

.method private responseActivityData(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 9
    .param p1, "p"    # Landroid/os/Parcel;

    #@0
    .prologue
    const/4 v2, 0x5

    #@1
    .line 4312
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@4
    move-result v4

    #@5
    .line 4313
    .local v4, "sleepModeTimeMs":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@8
    move-result v5

    #@9
    .line 4314
    .local v5, "idleModeTimeMs":I
    new-array v6, v2, [I

    #@b
    .line 4315
    .local v6, "txModeTimeMs":[I
    const/4 v0, 0x0

    #@c
    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    #@e
    .line 4316
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@11
    move-result v1

    #@12
    aput v1, v6, v0

    #@14
    .line 4315
    add-int/lit8 v0, v0, 0x1

    #@16
    goto :goto_0

    #@17
    .line 4318
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@1a
    move-result v7

    #@1b
    .line 4320
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
    .line 4322
    const-string/jumbo v2, " idleModeTimeMs="

    #@2e
    .line 4320
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v1

    #@32
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@35
    move-result-object v1

    #@36
    .line 4323
    const-string/jumbo v2, " txModeTimeMs[]="

    #@39
    .line 4320
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v1

    #@3d
    .line 4323
    invoke-static {v6}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    #@40
    move-result-object v2

    #@41
    .line 4320
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v1

    #@45
    .line 4324
    const-string/jumbo v2, " rxModeTimeMs="

    #@48
    .line 4320
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
    .line 4326
    new-instance v1, Landroid/telephony/ModemActivityInfo;

    #@59
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@5c
    move-result-wide v2

    #@5d
    .line 4327
    const/4 v8, 0x0

    #@5e
    .line 4326
    invoke-direct/range {v1 .. v8}, Landroid/telephony/ModemActivityInfo;-><init>(JII[III)V

    #@61
    return-object v1
.end method

.method private responseCallForward(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 5
    .param p1, "p"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 3610
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@3
    move-result v2

    #@4
    .line 3612
    .local v2, "numInfos":I
    new-array v1, v2, [Lcom/android/internal/telephony/CallForwardInfo;

    #@6
    .line 3614
    .local v1, "infos":[Lcom/android/internal/telephony/CallForwardInfo;
    const/4 v0, 0x0

    #@7
    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    #@9
    .line 3615
    new-instance v3, Lcom/android/internal/telephony/CallForwardInfo;

    #@b
    invoke-direct {v3}, Lcom/android/internal/telephony/CallForwardInfo;-><init>()V

    #@e
    aput-object v3, v1, v0

    #@10
    .line 3617
    aget-object v3, v1, v0

    #@12
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@15
    move-result v4

    #@16
    iput v4, v3, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    #@18
    .line 3618
    aget-object v3, v1, v0

    #@1a
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@1d
    move-result v4

    #@1e
    iput v4, v3, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    #@20
    .line 3619
    aget-object v3, v1, v0

    #@22
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@25
    move-result v4

    #@26
    iput v4, v3, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    #@28
    .line 3620
    aget-object v3, v1, v0

    #@2a
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@2d
    move-result v4

    #@2e
    iput v4, v3, Lcom/android/internal/telephony/CallForwardInfo;->toa:I

    #@30
    .line 3621
    aget-object v3, v1, v0

    #@32
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@35
    move-result-object v4

    #@36
    iput-object v4, v3, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    #@38
    .line 3622
    aget-object v3, v1, v0

    #@3a
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@3d
    move-result v4

    #@3e
    iput v4, v3, Lcom/android/internal/telephony/CallForwardInfo;->timeSeconds:I

    #@40
    .line 3614
    add-int/lit8 v0, v0, 0x1

    #@42
    goto :goto_0

    #@43
    .line 3625
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
    .line 3779
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@5
    move-result v3

    #@6
    .line 3780
    .local v3, "num":I
    new-instance v4, Ljava/util/ArrayList;

    #@8
    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(I)V

    #@b
    .line 3787
    .local v4, "response":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/DriverCall;>;"
    const/4 v1, 0x0

    #@c
    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_6

    #@e
    .line 3788
    new-instance v0, Lcom/android/internal/telephony/DriverCall;

    #@10
    invoke-direct {v0}, Lcom/android/internal/telephony/DriverCall;-><init>()V

    #@13
    .line 3790
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
    .line 3791
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@20
    move-result v8

    #@21
    iput v8, v0, Lcom/android/internal/telephony/DriverCall;->index:I

    #@23
    .line 3792
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@26
    move-result v8

    #@27
    iput v8, v0, Lcom/android/internal/telephony/DriverCall;->TOA:I

    #@29
    .line 3793
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
    .line 3794
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
    .line 3795
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@3e
    move-result v8

    #@3f
    iput v8, v0, Lcom/android/internal/telephony/DriverCall;->als:I

    #@41
    .line 3796
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@44
    move-result v7

    #@45
    .line 3797
    .local v7, "voiceSettings":I
    if-nez v7, :cond_2

    #@47
    move v8, v10

    #@48
    :goto_3
    iput-boolean v8, v0, Lcom/android/internal/telephony/DriverCall;->isVoice:Z

    #@4a
    .line 3798
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
    .line 3799
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@56
    move-result-object v8

    #@57
    iput-object v8, v0, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    #@59
    .line 3800
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@5c
    move-result v2

    #@5d
    .line 3801
    .local v2, "np":I
    invoke-static {v2}, Lcom/android/internal/telephony/DriverCall;->presentationFromCLIP(I)I

    #@60
    move-result v8

    #@61
    iput v8, v0, Lcom/android/internal/telephony/DriverCall;->numberPresentation:I

    #@63
    .line 3802
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@66
    move-result-object v8

    #@67
    iput-object v8, v0, Lcom/android/internal/telephony/DriverCall;->name:Ljava/lang/String;

    #@69
    .line 3804
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
    .line 3805
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@76
    move-result v6

    #@77
    .line 3806
    .local v6, "uusInfoPresent":I
    if-ne v6, v9, :cond_4

    #@79
    .line 3807
    new-instance v8, Lcom/android/internal/telephony/UUSInfo;

    #@7b
    invoke-direct {v8}, Lcom/android/internal/telephony/UUSInfo;-><init>()V

    #@7e
    iput-object v8, v0, Lcom/android/internal/telephony/DriverCall;->uusInfo:Lcom/android/internal/telephony/UUSInfo;

    #@80
    .line 3808
    iget-object v8, v0, Lcom/android/internal/telephony/DriverCall;->uusInfo:Lcom/android/internal/telephony/UUSInfo;

    #@82
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@85
    move-result v11

    #@86
    invoke-virtual {v8, v11}, Lcom/android/internal/telephony/UUSInfo;->setType(I)V

    #@89
    .line 3809
    iget-object v8, v0, Lcom/android/internal/telephony/DriverCall;->uusInfo:Lcom/android/internal/telephony/UUSInfo;

    #@8b
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@8e
    move-result v11

    #@8f
    invoke-virtual {v8, v11}, Lcom/android/internal/telephony/UUSInfo;->setDcs(I)V

    #@92
    .line 3810
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    #@95
    move-result-object v5

    #@96
    .line 3811
    .local v5, "userData":[B
    iget-object v8, v0, Lcom/android/internal/telephony/DriverCall;->uusInfo:Lcom/android/internal/telephony/UUSInfo;

    #@98
    invoke-virtual {v8, v5}, Lcom/android/internal/telephony/UUSInfo;->setUserData([B)V

    #@9b
    .line 3812
    const-string/jumbo v8, "Incoming UUS : type=%d, dcs=%d, length=%d"

    #@9e
    const/4 v11, 0x3

    #@9f
    new-array v11, v11, [Ljava/lang/Object;

    #@a1
    .line 3813
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
    .line 3814
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
    .line 3812
    invoke-static {v8, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@ca
    move-result-object v8

    #@cb
    invoke-direct {p0, v8}, Lcom/android/internal/telephony/RIL;->riljLogv(Ljava/lang/String;)V

    #@ce
    .line 3815
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
    .line 3816
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
    .line 3815
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
    .line 3817
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
    .line 3818
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
    .line 3817
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
    .line 3824
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
    .line 3826
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@11e
    .line 3828
    iget-boolean v8, v0, Lcom/android/internal/telephony/DriverCall;->isVoicePrivacy:Z

    #@120
    if-eqz v8, :cond_5

    #@122
    .line 3829
    iget-object v8, p0, Lcom/android/internal/telephony/RIL;->mVoicePrivacyOnRegistrants:Landroid/os/RegistrantList;

    #@124
    invoke-virtual {v8}, Landroid/os/RegistrantList;->notifyRegistrants()V

    #@127
    .line 3830
    const-string/jumbo v8, "InCall VoicePrivacy is enabled"

    #@12a
    invoke-direct {p0, v8}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    #@12d
    .line 3787
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
    .line 3793
    goto/16 :goto_1

    #@134
    :cond_1
    move v8, v10

    #@135
    .line 3794
    goto/16 :goto_2

    #@137
    .restart local v7    # "voiceSettings":I
    :cond_2
    move v8, v9

    #@138
    .line 3797
    goto/16 :goto_3

    #@13a
    :cond_3
    move v8, v10

    #@13b
    .line 3798
    goto/16 :goto_4

    #@13d
    .line 3820
    .restart local v2    # "np":I
    .restart local v6    # "uusInfoPresent":I
    :cond_4
    const-string/jumbo v8, "Incoming UUS : NOT present!"

    #@140
    invoke-direct {p0, v8}, Lcom/android/internal/telephony/RIL;->riljLogv(Ljava/lang/String;)V

    #@143
    goto :goto_5

    #@144
    .line 3832
    :cond_5
    iget-object v8, p0, Lcom/android/internal/telephony/RIL;->mVoicePrivacyOffRegistrants:Landroid/os/RegistrantList;

    #@146
    invoke-virtual {v8}, Landroid/os/RegistrantList;->notifyRegistrants()V

    #@149
    .line 3833
    const-string/jumbo v8, "InCall VoicePrivacy is disabled"

    #@14c
    invoke-direct {p0, v8}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    #@14f
    goto :goto_6

    #@150
    .line 3837
    .end local v0    # "dc":Lcom/android/internal/telephony/DriverCall;
    .end local v2    # "np":I
    .end local v6    # "uusInfoPresent":I
    .end local v7    # "voiceSettings":I
    :cond_6
    invoke-static {v4}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    #@153
    .line 3839
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
    .line 3840
    iget-object v8, p0, Lcom/android/internal/telephony/RIL;->mEmergencyCallbackModeRegistrant:Landroid/os/Registrant;

    #@15f
    if-eqz v8, :cond_7

    #@161
    .line 3841
    const-string/jumbo v8, "responseCallList: call ended, testing emergency call, notify ECM Registrants"

    #@164
    invoke-direct {p0, v8}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    #@167
    .line 3843
    iget-object v8, p0, Lcom/android/internal/telephony/RIL;->mEmergencyCallbackModeRegistrant:Landroid/os/Registrant;

    #@169
    invoke-virtual {v8}, Landroid/os/Registrant;->notifyRegistrant()V

    #@16c
    .line 3847
    :cond_7
    return-object v4
.end method

.method private responseCallRing(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 3
    .param p1, "p"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 4144
    const/4 v1, 0x4

    #@1
    new-array v0, v1, [C

    #@3
    .line 4146
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
    .line 4147
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
    .line 4148
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
    .line 4149
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
    .line 4151
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    #@25
    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mInstanceId:Ljava/lang/Integer;

    #@27
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    #@2a
    move-result v2

    #@2b
    invoke-virtual {v1, v2, v0}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeRilCallRing(I[C)V

    #@2e
    .line 4153
    return-object v0
.end method

.method private responseCarrierIdentifiers(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 13
    .param p1, "p"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 4331
    new-instance v12, Ljava/util/ArrayList;

    #@2
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 4332
    .local v12, "retVal":Ljava/util/List;, "Ljava/util/List<Landroid/service/carrier/CarrierIdentifier;>;"
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@8
    move-result v8

    #@9
    .line 4333
    .local v8, "len_allowed_carriers":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@c
    move-result v9

    #@d
    .line 4334
    .local v9, "len_excluded_carriers":I
    const/4 v7, 0x0

    #@e
    .local v7, "i":I
    :goto_0
    if-ge v7, v8, :cond_4

    #@10
    .line 4335
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@13
    move-result-object v1

    #@14
    .line 4336
    .local v1, "mcc":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@17
    move-result-object v2

    #@18
    .line 4337
    .local v2, "mnc":Ljava/lang/String;
    const/4 v3, 0x0

    #@19
    .local v3, "spn":Ljava/lang/String;
    const/4 v4, 0x0

    #@1a
    .local v4, "imsi":Ljava/lang/String;
    const/4 v5, 0x0

    #@1b
    .local v5, "gid1":Ljava/lang/String;
    const/4 v6, 0x0

    #@1c
    .line 4338
    .local v6, "gid2":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@1f
    move-result v11

    #@20
    .line 4339
    .local v11, "matchType":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@23
    move-result-object v10

    #@24
    .line 4340
    .local v10, "matchData":Ljava/lang/String;
    const/4 v0, 0x1

    #@25
    if-ne v11, v0, :cond_1

    #@27
    .line 4341
    move-object v3, v10

    #@28
    .line 4349
    .end local v3    # "spn":Ljava/lang/String;
    .end local v4    # "imsi":Ljava/lang/String;
    .end local v5    # "gid1":Ljava/lang/String;
    .end local v6    # "gid2":Ljava/lang/String;
    :cond_0
    :goto_1
    new-instance v0, Landroid/service/carrier/CarrierIdentifier;

    #@2a
    invoke-direct/range {v0 .. v6}, Landroid/service/carrier/CarrierIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@2d
    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@30
    .line 4334
    add-int/lit8 v7, v7, 0x1

    #@32
    goto :goto_0

    #@33
    .line 4342
    .restart local v3    # "spn":Ljava/lang/String;
    .restart local v4    # "imsi":Ljava/lang/String;
    .restart local v5    # "gid1":Ljava/lang/String;
    .restart local v6    # "gid2":Ljava/lang/String;
    :cond_1
    const/4 v0, 0x2

    #@34
    if-ne v11, v0, :cond_2

    #@36
    .line 4343
    move-object v4, v10

    #@37
    .local v4, "imsi":Ljava/lang/String;
    goto :goto_1

    #@38
    .line 4344
    .local v4, "imsi":Ljava/lang/String;
    :cond_2
    const/4 v0, 0x3

    #@39
    if-ne v11, v0, :cond_3

    #@3b
    .line 4345
    move-object v5, v10

    #@3c
    .local v5, "gid1":Ljava/lang/String;
    goto :goto_1

    #@3d
    .line 4346
    .local v5, "gid1":Ljava/lang/String;
    :cond_3
    const/4 v0, 0x4

    #@3e
    if-ne v11, v0, :cond_0

    #@40
    .line 4347
    move-object v6, v10

    #@41
    .local v6, "gid2":Ljava/lang/String;
    goto :goto_1

    #@42
    .line 4352
    .end local v1    # "mcc":Ljava/lang/String;
    .end local v2    # "mnc":Ljava/lang/String;
    .end local v3    # "spn":Ljava/lang/String;
    .end local v4    # "imsi":Ljava/lang/String;
    .end local v5    # "gid1":Ljava/lang/String;
    .end local v6    # "gid2":Ljava/lang/String;
    .end local v10    # "matchData":Ljava/lang/String;
    .end local v11    # "matchType":I
    :cond_4
    return-object v12
.end method

.method private responseCdmaBroadcastConfig(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 7
    .param p1, "p"    # Landroid/os/Parcel;

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 4061
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@4
    move-result v2

    #@5
    .line 4063
    .local v2, "numServiceCategories":I
    if-nez v2, :cond_0

    #@7
    .line 4068
    const/16 v1, 0x5e

    #@9
    .line 4069
    .local v1, "numInts":I
    new-array v3, v1, [I

    #@b
    .line 4072
    .local v3, "response":[I
    const/16 v4, 0x1f

    #@d
    aput v4, v3, v6

    #@f
    .line 4076
    const/4 v0, 0x1

    #@10
    .line 4068
    .local v0, "i":I
    :goto_0
    const/16 v4, 0x5e

    #@12
    .line 4076
    if-ge v0, v4, :cond_1

    #@14
    .line 4077
    add-int/lit8 v4, v0, 0x0

    #@16
    div-int/lit8 v5, v0, 0x3

    #@18
    aput v5, v3, v4

    #@1a
    .line 4078
    add-int/lit8 v4, v0, 0x1

    #@1c
    const/4 v5, 0x1

    #@1d
    aput v5, v3, v4

    #@1f
    .line 4079
    add-int/lit8 v4, v0, 0x2

    #@21
    aput v6, v3, v4

    #@23
    .line 4076
    add-int/lit8 v0, v0, 0x3

    #@25
    goto :goto_0

    #@26
    .line 4083
    .end local v0    # "i":I
    .end local v1    # "numInts":I
    .end local v3    # "response":[I
    :cond_0
    mul-int/lit8 v4, v2, 0x3

    #@28
    add-int/lit8 v1, v4, 0x1

    #@2a
    .line 4084
    .restart local v1    # "numInts":I
    new-array v3, v1, [I

    #@2c
    .line 4086
    .restart local v3    # "response":[I
    aput v2, v3, v6

    #@2e
    .line 4087
    const/4 v0, 0x1

    #@2f
    .restart local v0    # "i":I
    :goto_1
    if-ge v0, v1, :cond_1

    #@31
    .line 4088
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@34
    move-result v4

    #@35
    aput v4, v3, v0

    #@37
    .line 4087
    add-int/lit8 v0, v0, 0x1

    #@39
    goto :goto_1

    #@3a
    .line 4092
    :cond_1
    return-object v3
.end method

.method private responseCdmaCallWaiting(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 2
    .param p1, "p"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 4125
    new-instance v0, Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;

    #@2
    invoke-direct {v0}, Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;-><init>()V

    #@5
    .line 4127
    .local v0, "notification":Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@8
    move-result-object v1

    #@9
    iput-object v1, v0, Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;->number:Ljava/lang/String;

    #@b
    .line 4129
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@e
    move-result v1

    #@f
    invoke-static {v1}, Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;->presentationFromCLIP(I)I

    #@12
    move-result v1

    #@13
    .line 4128
    iput v1, v0, Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;->numberPresentation:I

    #@15
    .line 4130
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@18
    move-result-object v1

    #@19
    iput-object v1, v0, Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;->name:Ljava/lang/String;

    #@1b
    .line 4131
    iget v1, v0, Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;->numberPresentation:I

    #@1d
    iput v1, v0, Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;->namePresentation:I

    #@1f
    .line 4132
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@22
    move-result v1

    #@23
    iput v1, v0, Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;->isPresent:I

    #@25
    .line 4133
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@28
    move-result v1

    #@29
    iput v1, v0, Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;->signalType:I

    #@2b
    .line 4134
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@2e
    move-result v1

    #@2f
    iput v1, v0, Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;->alertPitch:I

    #@31
    .line 4135
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@34
    move-result v1

    #@35
    iput v1, v0, Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;->signal:I

    #@37
    .line 4136
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@3a
    move-result v1

    #@3b
    iput v1, v0, Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;->numberType:I

    #@3d
    .line 4137
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@40
    move-result v1

    #@41
    iput v1, v0, Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;->numberPlan:I

    #@43
    .line 4139
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
    .line 4112
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@3
    move-result v2

    #@4
    .line 4113
    .local v2, "numberOfInfoRecs":I
    new-instance v3, Ljava/util/ArrayList;

    #@6
    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    #@9
    .line 4115
    .local v3, "response":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/cdma/CdmaInformationRecords;>;"
    const/4 v1, 0x0

    #@a
    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    #@c
    .line 4116
    new-instance v0, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;

    #@e
    invoke-direct {v0, p1}, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;-><init>(Landroid/os/Parcel;)V

    #@11
    .line 4117
    .local v0, "InfoRec":Lcom/android/internal/telephony/cdma/CdmaInformationRecords;
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@14
    .line 4115
    add-int/lit8 v1, v1, 0x1

    #@16
    goto :goto_0

    #@17
    .line 4120
    .end local v0    # "InfoRec":Lcom/android/internal/telephony/cdma/CdmaInformationRecords;
    :cond_0
    return-object v3
.end method

.method private responseCdmaSms(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "p"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 3644
    invoke-static {p1}, Landroid/telephony/SmsMessage;->newFromParcel(Landroid/os/Parcel;)Landroid/telephony/SmsMessage;

    #@3
    move-result-object v0

    #@4
    .line 3646
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
    .line 4212
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@3
    move-result v2

    #@4
    .line 4213
    .local v2, "numberOfInfoRecs":I
    new-instance v3, Ljava/util/ArrayList;

    #@6
    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    #@9
    .line 4215
    .local v3, "response":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/CellInfo;>;"
    const/4 v1, 0x0

    #@a
    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    #@c
    .line 4216
    sget-object v4, Landroid/telephony/CellInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@e
    invoke-interface {v4, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@11
    move-result-object v0

    #@12
    check-cast v0, Landroid/telephony/CellInfo;

    #@14
    .line 4217
    .local v0, "InfoRec":Landroid/telephony/CellInfo;
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@17
    .line 4215
    add-int/lit8 v1, v1, 0x1

    #@19
    goto :goto_0

    #@1a
    .line 4220
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
    .line 4001
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@4
    move-result v3

    #@5
    .line 4002
    .local v3, "num":I
    new-instance v5, Ljava/util/ArrayList;

    #@7
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    #@a
    .line 4005
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
    .line 4007
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
    .line 4008
    aget v9, v7, v10

    #@21
    .line 4007
    invoke-virtual {v8, v9}, Landroid/telephony/TelephonyManager;->getDataNetworkType(I)I

    #@24
    move-result v4

    #@25
    .line 4011
    .local v4, "radioType":I
    if-eqz v4, :cond_0

    #@27
    .line 4012
    const/4 v1, 0x0

    #@28
    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_0

    #@2a
    .line 4013
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@2d
    move-result v6

    #@2e
    .line 4014
    .local v6, "rssi":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@31
    move-result-object v2

    #@32
    .line 4015
    .local v2, "location":Ljava/lang/String;
    new-instance v0, Landroid/telephony/NeighboringCellInfo;

    #@34
    invoke-direct {v0, v6, v2, v4}, Landroid/telephony/NeighboringCellInfo;-><init>(ILjava/lang/String;I)V

    #@37
    .line 4016
    .local v0, "cell":Landroid/telephony/NeighboringCellInfo;
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@3a
    .line 4012
    add-int/lit8 v1, v1, 0x1

    #@3c
    goto :goto_0

    #@3d
    .line 4019
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
    .line 3902
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@3
    move-result v3

    #@4
    .line 3903
    .local v3, "ver":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@7
    move-result v1

    #@8
    .line 3904
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
    .line 3906
    new-instance v2, Ljava/util/ArrayList;

    #@2c
    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    #@2f
    .line 3907
    .local v2, "response":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/dataconnection/DataCallResponse;>;"
    const/4 v0, 0x0

    #@30
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    #@32
    .line 3908
    invoke-direct {p0, p1, v3}, Lcom/android/internal/telephony/RIL;->getDataCallResponse(Landroid/os/Parcel;I)Lcom/android/internal/telephony/dataconnection/DataCallResponse;

    #@35
    move-result-object v4

    #@36
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@39
    .line 3907
    add-int/lit8 v0, v0, 0x1

    #@3b
    goto :goto_0

    #@3c
    .line 3912
    :cond_0
    return-object v2
.end method

.method private responseFailCause(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 2
    .param p1, "p"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 3592
    new-instance v0, Lcom/android/internal/telephony/LastCallFailCause;

    #@2
    invoke-direct {v0}, Lcom/android/internal/telephony/LastCallFailCause;-><init>()V

    #@5
    .line 3593
    .local v0, "failCause":Lcom/android/internal/telephony/LastCallFailCause;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@8
    move-result v1

    #@9
    iput v1, v0, Lcom/android/internal/telephony/LastCallFailCause;->causeCode:I

    #@b
    .line 3594
    invoke-virtual {p1}, Landroid/os/Parcel;->dataAvail()I

    #@e
    move-result v1

    #@f
    if-lez v1, :cond_0

    #@11
    .line 3595
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@14
    move-result-object v1

    #@15
    iput-object v1, v0, Lcom/android/internal/telephony/LastCallFailCause;->vendorCause:Ljava/lang/String;

    #@17
    .line 3597
    :cond_0
    return-object v0
.end method

.method private responseGetPreferredNetworkType(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 3
    .param p1, "p"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 4023
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    check-cast v0, [I

    #@6
    .line 4025
    .local v0, "response":[I
    array-length v1, v0

    #@7
    const/4 v2, 0x1

    #@8
    if-lt v1, v2, :cond_0

    #@a
    .line 4029
    const/4 v1, 0x0

    #@b
    aget v1, v0, v1

    #@d
    iput v1, p0, Lcom/android/internal/telephony/RIL;->mPreferredNetworkType:I

    #@f
    .line 4031
    :cond_0
    return-object v0
.end method

.method private responseGmsBroadcastConfig(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 11
    .param p1, "p"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 4039
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@3
    move-result v7

    #@4
    .line 4040
    .local v7, "num":I
    new-instance v8, Ljava/util/ArrayList;

    #@6
    invoke-direct {v8, v7}, Ljava/util/ArrayList;-><init>(I)V

    #@9
    .line 4042
    .local v8, "response":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;>;"
    const/4 v6, 0x0

    #@a
    .local v6, "i":I
    :goto_0
    if-ge v6, v7, :cond_1

    #@c
    .line 4043
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@f
    move-result v1

    #@10
    .line 4044
    .local v1, "fromId":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@13
    move-result v2

    #@14
    .line 4045
    .local v2, "toId":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@17
    move-result v3

    #@18
    .line 4046
    .local v3, "fromScheme":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@1b
    move-result v4

    #@1c
    .line 4047
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
    .line 4049
    .local v5, "selected":Z
    :goto_1
    new-instance v0, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;

    #@26
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;-><init>(IIIIZ)V

    #@29
    .line 4051
    .local v0, "info":Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@2c
    .line 4042
    add-int/lit8 v6, v6, 0x1

    #@2e
    goto :goto_0

    #@2f
    .line 4047
    .end local v0    # "info":Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;
    .end local v5    # "selected":Z
    :cond_0
    const/4 v5, 0x0

    #@30
    .restart local v5    # "selected":Z
    goto :goto_1

    #@31
    .line 4053
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
    .line 4229
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@3
    move-result v9

    #@4
    .line 4230
    .local v9, "num":I
    new-instance v10, Ljava/util/ArrayList;

    #@6
    invoke-direct {v10, v9}, Ljava/util/ArrayList;-><init>(I)V

    #@9
    .line 4235
    .local v10, "response":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/HardwareConfig;>;"
    const/4 v8, 0x0

    #@a
    .local v8, "i":I
    :goto_0
    if-ge v8, v9, :cond_0

    #@c
    .line 4236
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@f
    move-result v11

    #@10
    .line 4237
    .local v11, "type":I
    packed-switch v11, :pswitch_data_0

    #@13
    .line 4250
    new-instance v1, Ljava/lang/RuntimeException;

    #@15
    .line 4251
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
    .line 4250
    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@2c
    throw v1

    #@2d
    .line 4239
    :pswitch_0
    new-instance v0, Lcom/android/internal/telephony/HardwareConfig;

    #@2f
    invoke-direct {v0, v11}, Lcom/android/internal/telephony/HardwareConfig;-><init>(I)V

    #@32
    .line 4240
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
    .line 4241
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
    .line 4240
    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/telephony/HardwareConfig;->assignModem(Ljava/lang/String;IIIIII)V

    #@51
    .line 4255
    :goto_1
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@54
    .line 4235
    add-int/lit8 v8, v8, 0x1

    #@56
    goto :goto_0

    #@57
    .line 4245
    .end local v0    # "hw":Lcom/android/internal/telephony/HardwareConfig;
    :pswitch_1
    new-instance v0, Lcom/android/internal/telephony/HardwareConfig;

    #@59
    invoke-direct {v0, v11}, Lcom/android/internal/telephony/HardwareConfig;-><init>(I)V

    #@5c
    .line 4246
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
    .line 4258
    .end local v0    # "hw":Lcom/android/internal/telephony/HardwareConfig;
    .end local v11    # "type":I
    :cond_0
    return-object v10

    #@6d
    .line 4237
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
    .line 3698
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@3
    move-result v1

    #@4
    .line 3699
    .local v1, "sw1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@7
    move-result v2

    #@8
    .line 3701
    .local v2, "sw2":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@b
    move-result-object v0

    #@c
    .line 3708
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
    .line 3716
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@4
    move-result v1

    #@5
    .line 3717
    .local v1, "sw1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@8
    move-result v2

    #@9
    .line 3719
    .local v2, "sw2":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@c
    move-result-object v0

    #@d
    .line 3726
    .local v0, "s":Ljava/lang/String;
    new-instance v4, Lcom/android/internal/telephony/uicc/IccIoResult;

    #@f
    if-eqz v0, :cond_0

    #@11
    .line 3727
    const/4 v3, 0x0

    #@12
    invoke-static {v0, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    #@15
    move-result-object v3

    #@16
    .line 3726
    :goto_0
    invoke-direct {v4, v1, v2, v3}, Lcom/android/internal/telephony/uicc/IccIoResult;-><init>(II[B)V

    #@19
    return-object v4

    #@1a
    .line 3727
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
    .line 3734
    new-instance v1, Lcom/android/internal/telephony/uicc/IccCardStatus;

    #@2
    invoke-direct {v1}, Lcom/android/internal/telephony/uicc/IccCardStatus;-><init>()V

    #@5
    .line 3735
    .local v1, "cardStatus":Lcom/android/internal/telephony/uicc/IccCardStatus;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@8
    move-result v4

    #@9
    invoke-virtual {v1, v4}, Lcom/android/internal/telephony/uicc/IccCardStatus;->setCardState(I)V

    #@c
    .line 3736
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@f
    move-result v4

    #@10
    invoke-virtual {v1, v4}, Lcom/android/internal/telephony/uicc/IccCardStatus;->setUniversalPinState(I)V

    #@13
    .line 3737
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@16
    move-result v4

    #@17
    iput v4, v1, Lcom/android/internal/telephony/uicc/IccCardStatus;->mGsmUmtsSubscriptionAppIndex:I

    #@19
    .line 3738
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@1c
    move-result v4

    #@1d
    iput v4, v1, Lcom/android/internal/telephony/uicc/IccCardStatus;->mCdmaSubscriptionAppIndex:I

    #@1f
    .line 3739
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@22
    move-result v4

    #@23
    iput v4, v1, Lcom/android/internal/telephony/uicc/IccCardStatus;->mImsSubscriptionAppIndex:I

    #@25
    .line 3740
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@28
    move-result v3

    #@29
    .line 3743
    .local v3, "numApplications":I
    const/16 v4, 0x8

    #@2b
    if-le v3, v4, :cond_0

    #@2d
    .line 3744
    const/16 v3, 0x8

    #@2f
    .line 3746
    :cond_0
    new-array v4, v3, [Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;

    #@31
    iput-object v4, v1, Lcom/android/internal/telephony/uicc/IccCardStatus;->mApplications:[Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;

    #@33
    .line 3747
    const/4 v2, 0x0

    #@34
    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_1

    #@36
    .line 3748
    new-instance v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;

    #@38
    invoke-direct {v0}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;-><init>()V

    #@3b
    .line 3749
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
    .line 3750
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
    .line 3751
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
    .line 3752
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@5c
    move-result-object v4

    #@5d
    iput-object v4, v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->aid:Ljava/lang/String;

    #@5f
    .line 3753
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@62
    move-result-object v4

    #@63
    iput-object v4, v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->app_label:Ljava/lang/String;

    #@65
    .line 3754
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@68
    move-result v4

    #@69
    iput v4, v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->pin1_replaced:I

    #@6b
    .line 3755
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
    .line 3756
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
    .line 3757
    iget-object v4, v1, Lcom/android/internal/telephony/uicc/IccCardStatus;->mApplications:[Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;

    #@81
    aput-object v0, v4, v2

    #@83
    .line 3747
    add-int/lit8 v2, v2, 0x1

    #@85
    goto :goto_0

    #@86
    .line 3759
    .end local v0    # "appStatus":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;
    :cond_1
    return-object v1
.end method

.method private responseInts(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 4
    .param p1, "p"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 3579
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@3
    move-result v1

    #@4
    .line 3581
    .local v1, "numInts":I
    new-array v2, v1, [I

    #@6
    .line 3583
    .local v2, "response":[I
    const/4 v0, 0x0

    #@7
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    #@9
    .line 3584
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@c
    move-result v3

    #@d
    aput v3, v2, v0

    #@f
    .line 3583
    add-int/lit8 v0, v0, 0x1

    #@11
    goto :goto_0

    #@12
    .line 3587
    :cond_0
    return-object v2
.end method

.method private responseLceData(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 6
    .param p1, "p"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 4282
    new-instance v1, Ljava/util/ArrayList;

    #@2
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 4283
    .local v1, "capacityResponse":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@8
    move-result v0

    #@9
    .line 4284
    .local v0, "capacityDownKbps":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    #@c
    move-result v2

    #@d
    .line 4285
    .local v2, "confidenceLevel":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    #@10
    move-result v3

    #@11
    .line 4287
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
    .line 4289
    const-string/jumbo v5, " confidence="

    #@24
    .line 4287
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v4

    #@28
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v4

    #@2c
    .line 4290
    const-string/jumbo v5, " lceSuspended="

    #@2f
    .line 4287
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
    .line 4292
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@41
    move-result-object v4

    #@42
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@45
    .line 4293
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@48
    move-result-object v4

    #@49
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@4c
    .line 4294
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@4f
    move-result-object v4

    #@50
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@53
    .line 4295
    return-object v1
.end method

.method private responseLceStatus(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 5
    .param p1, "p"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 4299
    new-instance v2, Ljava/util/ArrayList;

    #@2
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 4300
    .local v2, "statusResponse":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    #@8
    move-result v1

    #@9
    .line 4301
    .local v1, "lceStatus":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@c
    move-result v0

    #@d
    .line 4303
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
    .line 4305
    const-string/jumbo v4, " actualInterval="

    #@20
    .line 4303
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
    .line 4306
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@32
    move-result-object v3

    #@33
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@36
    .line 4307
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@39
    move-result-object v3

    #@3a
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@3d
    .line 4308
    return-object v2
.end method

.method private responseOperatorInfos(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 8
    .param p1, "p"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 3971
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseStrings(Landroid/os/Parcel;)Ljava/lang/Object;

    #@3
    move-result-object v2

    #@4
    check-cast v2, [Ljava/lang/String;

    #@6
    .line 3974
    .local v2, "strings":[Ljava/lang/String;
    array-length v3, v2

    #@7
    rem-int/lit8 v3, v3, 0x4

    #@9
    if-eqz v3, :cond_0

    #@b
    .line 3975
    new-instance v3, Ljava/lang/RuntimeException;

    #@d
    .line 3976
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
    .line 3977
    array-length v5, v2

    #@1a
    .line 3976
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v4

    #@1e
    .line 3977
    const-string/jumbo v5, " strings, expected multible of 4"

    #@21
    .line 3976
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v4

    #@25
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@28
    move-result-object v4

    #@29
    .line 3975
    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@2c
    throw v3

    #@2d
    .line 3980
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    #@2f
    array-length v3, v2

    #@30
    div-int/lit8 v3, v3, 0x4

    #@32
    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    #@35
    .line 3982
    .local v1, "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/OperatorInfo;>;"
    const/4 v0, 0x0

    #@36
    .local v0, "i":I
    :goto_0
    array-length v3, v2

    #@37
    if-ge v0, v3, :cond_1

    #@39
    .line 3984
    new-instance v3, Lcom/android/internal/telephony/OperatorInfo;

    #@3b
    .line 3985
    add-int/lit8 v4, v0, 0x0

    #@3d
    aget-object v4, v2, v4

    #@3f
    .line 3986
    add-int/lit8 v5, v0, 0x1

    #@41
    aget-object v5, v2, v5

    #@43
    .line 3987
    add-int/lit8 v6, v0, 0x2

    #@45
    aget-object v6, v2, v6

    #@47
    .line 3988
    add-int/lit8 v7, v0, 0x3

    #@49
    aget-object v7, v2, v7

    #@4b
    .line 3984
    invoke-direct {v3, v4, v5, v6, v7}, Lcom/android/internal/telephony/OperatorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@4e
    .line 3983
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@51
    .line 3982
    add-int/lit8 v0, v0, 0x4

    #@53
    goto :goto_0

    #@54
    .line 3991
    :cond_1
    return-object v1
.end method

.method private responsePcoData(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "p"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 4356
    new-instance v0, Landroid/telephony/PcoData;

    #@2
    invoke-direct {v0, p1}, Landroid/telephony/PcoData;-><init>(Landroid/os/Parcel;)V

    #@5
    return-object v0
.end method

.method private responseRadioCapability(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 9
    .param p1, "p"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 4263
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@3
    move-result v7

    #@4
    .line 4264
    .local v7, "version":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@7
    move-result v2

    #@8
    .line 4265
    .local v2, "session":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@b
    move-result v3

    #@c
    .line 4266
    .local v3, "phase":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@f
    move-result v4

    #@10
    .line 4267
    .local v4, "rat":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@13
    move-result-object v5

    #@14
    .line 4268
    .local v5, "logicModemUuid":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@17
    move-result v6

    #@18
    .line 4270
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
    .line 4271
    const-string/jumbo v8, ", session="

    #@2b
    .line 4270
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v1

    #@2f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@32
    move-result-object v1

    #@33
    .line 4272
    const-string/jumbo v8, ", phase="

    #@36
    .line 4270
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v1

    #@3a
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v1

    #@3e
    .line 4273
    const-string/jumbo v8, ", rat="

    #@41
    .line 4270
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v1

    #@45
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@48
    move-result-object v1

    #@49
    .line 4274
    const-string/jumbo v8, ", logicModemUuid="

    #@4c
    .line 4270
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v1

    #@50
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@53
    move-result-object v1

    #@54
    .line 4275
    const-string/jumbo v8, ", status="

    #@57
    .line 4270
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
    .line 4276
    new-instance v0, Lcom/android/internal/telephony/RadioCapability;

    #@68
    .line 4277
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mInstanceId:Ljava/lang/Integer;

    #@6a
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    #@6d
    move-result v1

    #@6e
    .line 4276
    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/RadioCapability;-><init>(IIIILjava/lang/String;I)V

    #@71
    .line 4278
    .local v0, "rc":Lcom/android/internal/telephony/RadioCapability;
    return-object v0
.end method

.method private responseRaw(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "p"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 3673
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    #@3
    move-result-object v0

    #@4
    .line 3675
    .local v0, "response":[B
    return-object v0
.end method

.method private responseSMS(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 4
    .param p1, "p"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 3683
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@3
    move-result v2

    #@4
    .line 3684
    .local v2, "messageRef":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    .line 3685
    .local v0, "ackPDU":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@b
    move-result v1

    #@c
    .line 3687
    .local v1, "errorCode":I
    new-instance v3, Lcom/android/internal/telephony/SmsResponse;

    #@e
    invoke-direct {v3, v2, v0, v1}, Lcom/android/internal/telephony/SmsResponse;-><init>(ILjava/lang/String;I)V

    #@11
    .line 3689
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
    .line 3917
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@4
    move-result v6

    #@5
    .line 3918
    .local v6, "ver":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@8
    move-result v4

    #@9
    .line 3923
    .local v4, "num":I
    if-ge v6, v9, :cond_5

    #@b
    .line 3924
    new-instance v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse;

    #@d
    invoke-direct {v1}, Lcom/android/internal/telephony/dataconnection/DataCallResponse;-><init>()V

    #@10
    .line 3925
    .local v1, "dataCall":Lcom/android/internal/telephony/dataconnection/DataCallResponse;
    iput v6, v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->version:I

    #@12
    .line 3926
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
    .line 3927
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1f
    move-result-object v7

    #@20
    iput-object v7, v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->ifname:Ljava/lang/String;

    #@22
    .line 3928
    iget-object v7, v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->ifname:Ljava/lang/String;

    #@24
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@27
    move-result v7

    #@28
    if-eqz v7, :cond_0

    #@2a
    .line 3929
    new-instance v7, Ljava/lang/RuntimeException;

    #@2c
    .line 3930
    const-string/jumbo v8, "RIL_REQUEST_SETUP_DATA_CALL response, no ifname"

    #@2f
    .line 3929
    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@32
    throw v7

    #@33
    .line 3932
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@36
    move-result-object v0

    #@37
    .line 3933
    .local v0, "addresses":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@3a
    move-result v7

    #@3b
    if-nez v7, :cond_1

    #@3d
    .line 3934
    const-string/jumbo v7, " "

    #@40
    invoke-virtual {v0, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@43
    move-result-object v7

    #@44
    iput-object v7, v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->addresses:[Ljava/lang/String;

    #@46
    .line 3936
    :cond_1
    const/4 v7, 0x4

    #@47
    if-lt v4, v7, :cond_2

    #@49
    .line 3937
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@4c
    move-result-object v2

    #@4d
    .line 3938
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
    .line 3939
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@67
    move-result v7

    #@68
    if-nez v7, :cond_2

    #@6a
    .line 3940
    const-string/jumbo v7, " "

    #@6d
    invoke-virtual {v2, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@70
    move-result-object v7

    #@71
    iput-object v7, v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->dnses:[Ljava/lang/String;

    #@73
    .line 3943
    .end local v2    # "dnses":Ljava/lang/String;
    :cond_2
    if-lt v4, v9, :cond_3

    #@75
    .line 3944
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@78
    move-result-object v3

    #@79
    .line 3945
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
    .line 3946
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@93
    move-result v7

    #@94
    if-nez v7, :cond_3

    #@96
    .line 3947
    const-string/jumbo v7, " "

    #@99
    invoke-virtual {v3, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@9c
    move-result-object v7

    #@9d
    iput-object v7, v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->gateways:[Ljava/lang/String;

    #@9f
    .line 3950
    .end local v3    # "gateways":Ljava/lang/String;
    :cond_3
    const/4 v7, 0x6

    #@a0
    if-lt v4, v7, :cond_4

    #@a2
    .line 3951
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@a5
    move-result-object v5

    #@a6
    .line 3952
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
    .line 3953
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@c0
    move-result v7

    #@c1
    if-nez v7, :cond_4

    #@c3
    .line 3954
    const-string/jumbo v7, " "

    #@c6
    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@c9
    move-result-object v7

    #@ca
    iput-object v7, v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->pcscf:[Ljava/lang/String;

    #@cc
    .line 3966
    .end local v0    # "addresses":Ljava/lang/String;
    .end local v5    # "pcscf":Ljava/lang/String;
    :cond_4
    :goto_0
    return-object v1

    #@cd
    .line 3958
    .end local v1    # "dataCall":Lcom/android/internal/telephony/dataconnection/DataCallResponse;
    :cond_5
    const/4 v7, 0x1

    #@ce
    if-eq v4, v7, :cond_6

    #@d0
    .line 3959
    new-instance v7, Ljava/lang/RuntimeException;

    #@d2
    .line 3960
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
    .line 3959
    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@e9
    throw v7

    #@ea
    .line 3963
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
    .line 4099
    invoke-static {p1}, Landroid/telephony/SignalStrength;->makeSignalStrengthFromRilParcel(Landroid/os/Parcel;)Landroid/telephony/SignalStrength;

    #@3
    move-result-object v0

    #@4
    .line 4100
    .local v0, "signalStrength":Landroid/telephony/SignalStrength;
    return-object v0
.end method

.method private responseSimRefresh(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 2
    .param p1, "p"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 3764
    new-instance v0, Lcom/android/internal/telephony/uicc/IccRefreshResponse;

    #@2
    invoke-direct {v0}, Lcom/android/internal/telephony/uicc/IccRefreshResponse;-><init>()V

    #@5
    .line 3766
    .local v0, "response":Lcom/android/internal/telephony/uicc/IccRefreshResponse;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@8
    move-result v1

    #@9
    iput v1, v0, Lcom/android/internal/telephony/uicc/IccRefreshResponse;->refreshResult:I

    #@b
    .line 3767
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@e
    move-result v1

    #@f
    iput v1, v0, Lcom/android/internal/telephony/uicc/IccRefreshResponse;->efId:I

    #@11
    .line 3768
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@14
    move-result-object v1

    #@15
    iput-object v1, v0, Lcom/android/internal/telephony/uicc/IccRefreshResponse;->aid:Ljava/lang/String;

    #@17
    .line 3769
    return-object v0
.end method

.method private responseSsData(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 5
    .param p1, "p"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 4602
    new-instance v2, Lcom/android/internal/telephony/gsm/SsData;

    #@2
    invoke-direct {v2}, Lcom/android/internal/telephony/gsm/SsData;-><init>()V

    #@5
    .line 4604
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
    .line 4605
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
    .line 4606
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
    .line 4607
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@26
    move-result v3

    #@27
    iput v3, v2, Lcom/android/internal/telephony/gsm/SsData;->serviceClass:I

    #@29
    .line 4608
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@2c
    move-result v3

    #@2d
    iput v3, v2, Lcom/android/internal/telephony/gsm/SsData;->result:I

    #@2f
    .line 4609
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@32
    move-result v1

    #@33
    .line 4611
    .local v1, "num":I
    iget-object v3, v2, Lcom/android/internal/telephony/gsm/SsData;->serviceType:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    #@35
    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->isTypeCF()Z

    #@38
    move-result v3

    #@39
    if-eqz v3, :cond_0

    #@3b
    .line 4612
    iget-object v3, v2, Lcom/android/internal/telephony/gsm/SsData;->requestType:Lcom/android/internal/telephony/gsm/SsData$RequestType;

    #@3d
    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/SsData$RequestType;->isTypeInterrogation()Z

    #@40
    move-result v3

    #@41
    .line 4611
    if-eqz v3, :cond_0

    #@43
    .line 4613
    new-array v3, v1, [Lcom/android/internal/telephony/CallForwardInfo;

    #@45
    iput-object v3, v2, Lcom/android/internal/telephony/gsm/SsData;->cfInfo:[Lcom/android/internal/telephony/CallForwardInfo;

    #@47
    .line 4615
    const/4 v0, 0x0

    #@48
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    #@4a
    .line 4616
    iget-object v3, v2, Lcom/android/internal/telephony/gsm/SsData;->cfInfo:[Lcom/android/internal/telephony/CallForwardInfo;

    #@4c
    new-instance v4, Lcom/android/internal/telephony/CallForwardInfo;

    #@4e
    invoke-direct {v4}, Lcom/android/internal/telephony/CallForwardInfo;-><init>()V

    #@51
    aput-object v4, v3, v0

    #@53
    .line 4618
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
    .line 4619
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
    .line 4620
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
    .line 4621
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
    .line 4622
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
    .line 4623
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
    .line 4625
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
    .line 4615
    add-int/lit8 v0, v0, 0x1

    #@b7
    goto :goto_0

    #@b8
    .line 4628
    .end local v0    # "i":I
    :cond_0
    new-array v3, v1, [I

    #@ba
    iput-object v3, v2, Lcom/android/internal/telephony/gsm/SsData;->ssInfo:[I

    #@bc
    .line 4629
    const/4 v0, 0x0

    #@bd
    .restart local v0    # "i":I
    :goto_1
    if-ge v0, v1, :cond_1

    #@bf
    .line 4630
    iget-object v3, v2, Lcom/android/internal/telephony/gsm/SsData;->ssInfo:[I

    #@c1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@c4
    move-result v4

    #@c5
    aput v4, v3, v0

    #@c7
    .line 4631
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
    .line 4629
    add-int/lit8 v0, v0, 0x1

    #@ef
    goto :goto_1

    #@f0
    .line 4635
    :cond_1
    return-object v2
.end method

.method private responseString(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "p"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 3653
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 3655
    .local v0, "response":Ljava/lang/String;
    return-object v0
.end method

.method private responseStrings(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "p"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 3663
    invoke-virtual {p1}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 3665
    .local v0, "response":[Ljava/lang/String;
    return-object v0
.end method

.method private responseSuppServiceNotification(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 2
    .param p1, "p"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 3630
    new-instance v0, Lcom/android/internal/telephony/gsm/SuppServiceNotification;

    #@2
    invoke-direct {v0}, Lcom/android/internal/telephony/gsm/SuppServiceNotification;-><init>()V

    #@5
    .line 3632
    .local v0, "notification":Lcom/android/internal/telephony/gsm/SuppServiceNotification;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@8
    move-result v1

    #@9
    iput v1, v0, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->notificationType:I

    #@b
    .line 3633
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@e
    move-result v1

    #@f
    iput v1, v0, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->code:I

    #@11
    .line 3634
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@14
    move-result v1

    #@15
    iput v1, v0, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->index:I

    #@17
    .line 3635
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@1a
    move-result v1

    #@1b
    iput v1, v0, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->type:I

    #@1d
    .line 3636
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@20
    move-result-object v1

    #@21
    iput-object v1, v0, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->number:Ljava/lang/String;

    #@23
    .line 3638
    return-object v0
.end method

.method static responseToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "request"    # I

    #@0
    .prologue
    .line 4518
    packed-switch p0, :pswitch_data_0

    #@3
    .line 4569
    :pswitch_0
    const-string/jumbo v0, "<unknown response>"

    #@6
    return-object v0

    #@7
    .line 4519
    :pswitch_1
    const-string/jumbo v0, "UNSOL_RESPONSE_RADIO_STATE_CHANGED"

    #@a
    return-object v0

    #@b
    .line 4520
    :pswitch_2
    const-string/jumbo v0, "UNSOL_RESPONSE_CALL_STATE_CHANGED"

    #@e
    return-object v0

    #@f
    .line 4521
    :pswitch_3
    const-string/jumbo v0, "UNSOL_RESPONSE_VOICE_NETWORK_STATE_CHANGED"

    #@12
    return-object v0

    #@13
    .line 4522
    :pswitch_4
    const-string/jumbo v0, "UNSOL_RESPONSE_NEW_SMS"

    #@16
    return-object v0

    #@17
    .line 4523
    :pswitch_5
    const-string/jumbo v0, "UNSOL_RESPONSE_NEW_SMS_STATUS_REPORT"

    #@1a
    return-object v0

    #@1b
    .line 4524
    :pswitch_6
    const-string/jumbo v0, "UNSOL_RESPONSE_NEW_SMS_ON_SIM"

    #@1e
    return-object v0

    #@1f
    .line 4525
    :pswitch_7
    const-string/jumbo v0, "UNSOL_ON_USSD"

    #@22
    return-object v0

    #@23
    .line 4526
    :pswitch_8
    const-string/jumbo v0, "UNSOL_ON_USSD_REQUEST"

    #@26
    return-object v0

    #@27
    .line 4527
    :pswitch_9
    const-string/jumbo v0, "UNSOL_NITZ_TIME_RECEIVED"

    #@2a
    return-object v0

    #@2b
    .line 4528
    :pswitch_a
    const-string/jumbo v0, "UNSOL_SIGNAL_STRENGTH"

    #@2e
    return-object v0

    #@2f
    .line 4529
    :pswitch_b
    const-string/jumbo v0, "UNSOL_DATA_CALL_LIST_CHANGED"

    #@32
    return-object v0

    #@33
    .line 4530
    :pswitch_c
    const-string/jumbo v0, "UNSOL_SUPP_SVC_NOTIFICATION"

    #@36
    return-object v0

    #@37
    .line 4531
    :pswitch_d
    const-string/jumbo v0, "UNSOL_STK_SESSION_END"

    #@3a
    return-object v0

    #@3b
    .line 4532
    :pswitch_e
    const-string/jumbo v0, "UNSOL_STK_PROACTIVE_COMMAND"

    #@3e
    return-object v0

    #@3f
    .line 4533
    :pswitch_f
    const-string/jumbo v0, "UNSOL_STK_EVENT_NOTIFY"

    #@42
    return-object v0

    #@43
    .line 4534
    :pswitch_10
    const-string/jumbo v0, "UNSOL_STK_CALL_SETUP"

    #@46
    return-object v0

    #@47
    .line 4535
    :pswitch_11
    const-string/jumbo v0, "UNSOL_SIM_SMS_STORAGE_FULL"

    #@4a
    return-object v0

    #@4b
    .line 4536
    :pswitch_12
    const-string/jumbo v0, "UNSOL_SIM_REFRESH"

    #@4e
    return-object v0

    #@4f
    .line 4537
    :pswitch_13
    const-string/jumbo v0, "UNSOL_CALL_RING"

    #@52
    return-object v0

    #@53
    .line 4538
    :pswitch_14
    const-string/jumbo v0, "UNSOL_RESPONSE_SIM_STATUS_CHANGED"

    #@56
    return-object v0

    #@57
    .line 4539
    :pswitch_15
    const-string/jumbo v0, "UNSOL_RESPONSE_CDMA_NEW_SMS"

    #@5a
    return-object v0

    #@5b
    .line 4540
    :pswitch_16
    const-string/jumbo v0, "UNSOL_RESPONSE_NEW_BROADCAST_SMS"

    #@5e
    return-object v0

    #@5f
    .line 4541
    :pswitch_17
    const-string/jumbo v0, "UNSOL_CDMA_RUIM_SMS_STORAGE_FULL"

    #@62
    return-object v0

    #@63
    .line 4542
    :pswitch_18
    const-string/jumbo v0, "UNSOL_RESTRICTED_STATE_CHANGED"

    #@66
    return-object v0

    #@67
    .line 4543
    :pswitch_19
    const-string/jumbo v0, "UNSOL_ENTER_EMERGENCY_CALLBACK_MODE"

    #@6a
    return-object v0

    #@6b
    .line 4544
    :pswitch_1a
    const-string/jumbo v0, "UNSOL_CDMA_CALL_WAITING"

    #@6e
    return-object v0

    #@6f
    .line 4545
    :pswitch_1b
    const-string/jumbo v0, "UNSOL_CDMA_OTA_PROVISION_STATUS"

    #@72
    return-object v0

    #@73
    .line 4546
    :pswitch_1c
    const-string/jumbo v0, "UNSOL_CDMA_INFO_REC"

    #@76
    return-object v0

    #@77
    .line 4547
    :pswitch_1d
    const-string/jumbo v0, "UNSOL_OEM_HOOK_RAW"

    #@7a
    return-object v0

    #@7b
    .line 4548
    :pswitch_1e
    const-string/jumbo v0, "UNSOL_RINGBACK_TONE"

    #@7e
    return-object v0

    #@7f
    .line 4549
    :pswitch_1f
    const-string/jumbo v0, "UNSOL_RESEND_INCALL_MUTE"

    #@82
    return-object v0

    #@83
    .line 4550
    :pswitch_20
    const-string/jumbo v0, "CDMA_SUBSCRIPTION_SOURCE_CHANGED"

    #@86
    return-object v0

    #@87
    .line 4551
    :pswitch_21
    const-string/jumbo v0, "UNSOL_CDMA_PRL_CHANGED"

    #@8a
    return-object v0

    #@8b
    .line 4552
    :pswitch_22
    const-string/jumbo v0, "UNSOL_EXIT_EMERGENCY_CALLBACK_MODE"

    #@8e
    return-object v0

    #@8f
    .line 4553
    :pswitch_23
    const-string/jumbo v0, "UNSOL_RIL_CONNECTED"

    #@92
    return-object v0

    #@93
    .line 4554
    :pswitch_24
    const-string/jumbo v0, "UNSOL_VOICE_RADIO_TECH_CHANGED"

    #@96
    return-object v0

    #@97
    .line 4555
    :pswitch_25
    const-string/jumbo v0, "UNSOL_CELL_INFO_LIST"

    #@9a
    return-object v0

    #@9b
    .line 4557
    :pswitch_26
    const-string/jumbo v0, "UNSOL_RESPONSE_IMS_NETWORK_STATE_CHANGED"

    #@9e
    return-object v0

    #@9f
    .line 4559
    :pswitch_27
    const-string/jumbo v0, "RIL_UNSOL_UICC_SUBSCRIPTION_STATUS_CHANGED"

    #@a2
    return-object v0

    #@a3
    .line 4561
    :pswitch_28
    const-string/jumbo v0, "UNSOL_SRVCC_STATE_NOTIFY"

    #@a6
    return-object v0

    #@a7
    .line 4562
    :pswitch_29
    const-string/jumbo v0, "RIL_UNSOL_HARDWARE_CONFIG_CHANGED"

    #@aa
    return-object v0

    #@ab
    .line 4564
    :pswitch_2a
    const-string/jumbo v0, "RIL_UNSOL_RADIO_CAPABILITY"

    #@ae
    return-object v0

    #@af
    .line 4565
    :pswitch_2b
    const-string/jumbo v0, "UNSOL_ON_SS"

    #@b2
    return-object v0

    #@b3
    .line 4566
    :pswitch_2c
    const-string/jumbo v0, "UNSOL_STK_CC_ALPHA_NOTIFY"

    #@b6
    return-object v0

    #@b7
    .line 4567
    :pswitch_2d
    const-string/jumbo v0, "UNSOL_LCE_INFO_RECV"

    #@ba
    return-object v0

    #@bb
    .line 4568
    :pswitch_2e
    const-string/jumbo v0, "UNSOL_PCO_DATA"

    #@be
    return-object v0

    #@bf
    .line 4518
    nop

    #@c0
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
        :pswitch_2e
    .end packed-switch
.end method

.method private responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "p"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 3602
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
    .line 2961
    if-nez p1, :cond_0

    #@2
    const-string/jumbo v19, ""

    #@5
    return-object v19

    #@6
    .line 2962
    :cond_0
    sparse-switch p0, :sswitch_data_0

    #@9
    .line 2979
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
    .line 2980
    check-cast v14, [I

    #@15
    .line 2981
    .local v14, "intArray":[I
    array-length v15, v14

    #@16
    .line 2982
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
    .line 2983
    .local v17, "sb":Ljava/lang/StringBuilder;
    if-lez v15, :cond_1

    #@24
    .line 2984
    const/16 v19, 0x0

    #@26
    .line 2985
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
    .line 2986
    .end local v12    # "i":I
    .local v13, "i":I
    :goto_0
    if-ge v13, v15, :cond_1

    #@33
    .line 2987
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
    .line 2972
    .end local v13    # "i":I
    .end local v14    # "intArray":[I
    .end local v15    # "length":I
    .end local v17    # "sb":Ljava/lang/StringBuilder;
    :sswitch_0
    const-string/jumbo v19, ""

    #@4a
    return-object v19

    #@4b
    .line 2990
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
    .line 2991
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@58
    move-result-object v16

    #@59
    .line 3040
    .end local v14    # "intArray":[I
    .end local v15    # "length":I
    .end local v17    # "sb":Ljava/lang/StringBuilder;
    .local v16, "s":Ljava/lang/String;
    :goto_1
    return-object v16

    #@5a
    .line 2992
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
    .line 2993
    check-cast v18, [Ljava/lang/String;

    #@66
    .line 2994
    .local v18, "strings":[Ljava/lang/String;
    move-object/from16 v0, v18

    #@68
    array-length v15, v0

    #@69
    .line 2995
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
    .line 2996
    .restart local v17    # "sb":Ljava/lang/StringBuilder;
    if-lez v15, :cond_3

    #@77
    .line 2997
    const/16 v19, 0x0

    #@79
    .line 2998
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
    .line 2999
    .end local v12    # "i":I
    .restart local v13    # "i":I
    :goto_2
    if-ge v13, v15, :cond_3

    #@86
    .line 3000
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
    .line 3003
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
    .line 3004
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a7
    move-result-object v16

    #@a8
    .restart local v16    # "s":Ljava/lang/String;
    goto :goto_1

    #@a9
    .line 3005
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
    .line 3006
    check-cast v2, Ljava/util/ArrayList;

    #@b5
    .line 3007
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
    .line 3008
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
    .line 3009
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
    .line 3011
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
    .line 3012
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@f6
    move-result-object v16

    #@f7
    .restart local v16    # "s":Ljava/lang/String;
    goto/16 :goto_1

    #@f9
    .line 3013
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
    .line 3014
    check-cast v5, Ljava/util/ArrayList;

    #@105
    .line 3015
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
    .line 3016
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
    .line 3017
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
    .line 3019
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
    .line 3020
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@146
    move-result-object v16

    #@147
    .restart local v16    # "s":Ljava/lang/String;
    goto/16 :goto_1

    #@149
    .line 3021
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
    .line 3022
    check-cast v6, [Lcom/android/internal/telephony/CallForwardInfo;

    #@155
    .line 3023
    .local v6, "cinfo":[Lcom/android/internal/telephony/CallForwardInfo;
    array-length v15, v6

    #@156
    .line 3024
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
    .line 3025
    .restart local v17    # "sb":Ljava/lang/StringBuilder;
    const/4 v12, 0x0

    #@163
    .restart local v12    # "i":I
    :goto_5
    if-ge v12, v15, :cond_9

    #@165
    .line 3026
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
    .line 3025
    add-int/lit8 v12, v12, 0x1

    #@17e
    goto :goto_5

    #@17f
    .line 3028
    :cond_9
    const-string/jumbo v19, "}"

    #@182
    move-object/from16 v0, v17

    #@184
    move-object/from16 v1, v19

    #@186
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@189
    .line 3029
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@18c
    move-result-object v16

    #@18d
    .restart local v16    # "s":Ljava/lang/String;
    goto/16 :goto_1

    #@18f
    .line 3030
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
    .line 3031
    check-cast v11, Ljava/util/ArrayList;

    #@19b
    .line 3032
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
    .line 3033
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
    .line 3034
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
    .line 3036
    .end local v9    # "hwcfg":Lcom/android/internal/telephony/HardwareConfig;
    :cond_b
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d2
    move-result-object v16

    #@1d3
    .restart local v16    # "s":Ljava/lang/String;
    goto/16 :goto_1

    #@1d5
    .line 3038
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
    .line 2962
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
    .line 4574
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
    .line 4575
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
    .line 4574
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
    .line 4573
    return-void

    #@39
    .line 4575
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
    .line 4579
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
    .line 4580
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
    .line 4579
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
    .line 4578
    return-void

    #@39
    .line 4580
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
    .line 2556
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mSocket:Landroid/net/LocalSocket;

    #@4
    if-nez v1, :cond_0

    #@6
    .line 2557
    invoke-virtual {p1, v2, v3}, Lcom/android/internal/telephony/RILRequest;->onError(ILjava/lang/Object;)V

    #@9
    .line 2558
    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->release()V

    #@c
    .line 2559
    return-void

    #@d
    .line 2562
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mSender:Lcom/android/internal/telephony/RIL$RILSender;

    #@f
    invoke-virtual {v1, v2, p1}, Lcom/android/internal/telephony/RIL$RILSender;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@12
    move-result-object v0

    #@13
    .line 2563
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x0

    #@14
    invoke-direct {p0, p1, v1}, Lcom/android/internal/telephony/RIL;->acquireWakeLock(Lcom/android/internal/telephony/RILRequest;I)V

    #@17
    .line 2564
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    #@1a
    .line 2553
    return-void
.end method

.method private sendScreenState(Z)V
    .locals 4
    .param p1, "on"    # Z

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 2421
    const/16 v2, 0x3d

    #@3
    const/4 v3, 0x0

    #@4
    invoke-static {v2, v3}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    #@7
    move-result-object v0

    #@8
    .line 2422
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    iget-object v2, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@a
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@d
    .line 2423
    iget-object v2, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@f
    if-eqz p1, :cond_0

    #@11
    :goto_0
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 2425
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
    .line 2426
    const-string/jumbo v2, "> "

    #@24
    .line 2425
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v1

    #@28
    .line 2426
    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    #@2a
    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    #@2d
    move-result-object v2

    #@2e
    .line 2425
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v1

    #@32
    .line 2426
    const-string/jumbo v2, ": "

    #@35
    .line 2425
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
    .line 2428
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    #@47
    .line 2420
    return-void

    #@48
    .line 2423
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
    .line 2456
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->setRadioState(Lcom/android/internal/telephony/CommandsInterface$RadioState;)V

    #@3
    .line 2455
    return-void
.end method

.method private translateStatus(I)I
    .locals 2
    .param p1, "status"    # I

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 1631
    and-int/lit8 v0, p1, 0x7

    #@3
    packed-switch v0, :pswitch_data_0

    #@6
    .line 1643
    :pswitch_0
    return v1

    #@7
    .line 1633
    :pswitch_1
    return v1

    #@8
    .line 1635
    :pswitch_2
    const/4 v0, 0x0

    #@9
    return v0

    #@a
    .line 1637
    :pswitch_3
    const/4 v0, 0x3

    #@b
    return v0

    #@c
    .line 1639
    :pswitch_4
    const/4 v0, 0x2

    #@d
    return v0

    #@e
    .line 1631
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
    .line 4584
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
    .line 4583
    return-void
.end method

.method private unsljLogMore(ILjava/lang/String;)V
    .locals 2
    .param p1, "response"    # I
    .param p2, "more"    # Ljava/lang/String;

    #@0
    .prologue
    .line 4588
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
    .line 4587
    return-void
.end method

.method private unsljLogRet(ILjava/lang/Object;)V
    .locals 2
    .param p1, "response"    # I
    .param p2, "ret"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 4592
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
    .line 4591
    return-void
.end method

.method private unsljLogvRet(ILjava/lang/Object;)V
    .locals 2
    .param p1, "response"    # I
    .param p2, "ret"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 4596
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
    .line 4595
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
    .line 2408
    iget v0, p0, Lcom/android/internal/telephony/RIL;->mRadioScreenState:I

    #@4
    .line 2409
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
    .line 2411
    iget v1, p0, Lcom/android/internal/telephony/RIL;->mRadioScreenState:I

    #@12
    if-eq v1, v0, :cond_1

    #@14
    .line 2416
    iget v1, p0, Lcom/android/internal/telephony/RIL;->mRadioScreenState:I

    #@16
    if-ne v1, v3, :cond_3

    #@18
    :goto_1
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/RIL;->sendScreenState(Z)V

    #@1b
    .line 2407
    :cond_1
    return-void

    #@1c
    :cond_2
    move v1, v2

    #@1d
    .line 2410
    goto :goto_0

    #@1e
    :cond_3
    move v3, v2

    #@1f
    .line 2416
    goto :goto_1
.end method


# virtual methods
.method public acceptCall(Landroid/os/Message;)V
    .locals 4
    .param p1, "result"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1232
    const/16 v1, 0x28

    #@2
    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    #@5
    move-result-object v0

    #@6
    .line 1234
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
    .line 1236
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    #@2d
    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mInstanceId:Ljava/lang/Integer;

    #@2f
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    #@32
    move-result v2

    #@33
    iget v3, v0, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    #@35
    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeRilAnswer(II)V

    #@38
    .line 1238
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    #@3b
    .line 1230
    return-void
.end method

.method public acknowledgeIncomingGsmSmsWithPdu(ZLjava/lang/String;Landroid/os/Message;)V
    .locals 3
    .param p1, "success"    # Z
    .param p2, "ackPdu"    # Ljava/lang/String;
    .param p3, "result"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1771
    const/16 v1, 0x6a

    #@2
    invoke-static {v1, p3}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    #@5
    move-result-object v0

    #@6
    .line 1773
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@8
    const/4 v2, 0x2

    #@9
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@c
    .line 1774
    iget-object v2, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@e
    if-eqz p1, :cond_0

    #@10
    const-string/jumbo v1, "1"

    #@13
    :goto_0
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@16
    .line 1775
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@18
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1b
    .line 1777
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
    .line 1778
    const/16 v2, 0x20

    #@3b
    .line 1777
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v1

    #@3f
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@42
    move-result-object v1

    #@43
    .line 1778
    const-string/jumbo v2, " ["

    #@46
    .line 1777
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@49
    move-result-object v1

    #@4a
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v1

    #@4e
    .line 1778
    const/16 v2, 0x5d

    #@50
    .line 1777
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
    .line 1780
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    #@5e
    .line 1769
    return-void

    #@5f
    .line 1774
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
    .line 1755
    const/16 v1, 0x58

    #@2
    invoke-static {v1, p3}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    #@5
    move-result-object v0

    #@6
    .line 1757
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
    .line 1759
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@10
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@13
    .line 1761
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
    .line 1762
    const-string/jumbo v2, " "

    #@34
    .line 1761
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v1

    #@38
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v1

    #@3c
    .line 1762
    const-string/jumbo v2, " "

    #@3f
    .line 1761
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
    .line 1764
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    #@51
    .line 1753
    return-void

    #@52
    .line 1757
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
    .line 1739
    const/16 v1, 0x25

    #@2
    invoke-static {v1, p3}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    #@5
    move-result-object v0

    #@6
    .line 1741
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@8
    const/4 v2, 0x2

    #@9
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@c
    .line 1742
    iget-object v2, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@e
    if-eqz p1, :cond_0

    #@10
    const/4 v1, 0x1

    #@11
    :goto_0
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 1743
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@16
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@19
    .line 1745
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
    .line 1746
    const-string/jumbo v2, " "

    #@3a
    .line 1745
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v1

    #@3e
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@41
    move-result-object v1

    #@42
    .line 1746
    const-string/jumbo v2, " "

    #@45
    .line 1745
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
    .line 1748
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    #@57
    .line 1737
    return-void

    #@58
    .line 1742
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
    .line 2077
    const/16 v1, 0x1e

    #@2
    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    #@5
    move-result-object v0

    #@6
    .line 2079
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
    .line 2080
    const-string/jumbo v2, "> "

    #@16
    .line 2079
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    .line 2080
    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    #@1c
    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    #@1f
    move-result-object v2

    #@20
    .line 2079
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
    .line 2082
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    #@2e
    .line 2075
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
    .line 1003
    const/16 v1, 0x2c

    #@2
    invoke-static {v1, p4}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    #@5
    move-result-object v0

    #@6
    .line 1005
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
    .line 1007
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@2d
    const/4 v2, 0x3

    #@2e
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@31
    .line 1008
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@33
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@36
    .line 1009
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@38
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@3b
    .line 1010
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@3d
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@40
    .line 1012
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    #@43
    .line 1002
    return-void
.end method

.method public changeIccPin(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .param p1, "oldPin"    # Ljava/lang/String;
    .param p2, "newPin"    # Ljava/lang/String;
    .param p3, "result"    # Landroid/os/Message;

    #@0
    .prologue
    .line 960
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/internal/telephony/RIL;->changeIccPinForApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    #@4
    .line 959
    return-void
.end method

.method public changeIccPin2(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .param p1, "oldPin2"    # Ljava/lang/String;
    .param p2, "newPin2"    # Ljava/lang/String;
    .param p3, "result"    # Landroid/os/Message;

    #@0
    .prologue
    .line 981
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/internal/telephony/RIL;->changeIccPin2ForApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    #@4
    .line 980
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
    .line 988
    const/4 v1, 0x7

    #@1
    invoke-static {v1, p4}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    #@4
    move-result-object v0

    #@5
    .line 990
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
    .line 992
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@2c
    const/4 v2, 0x3

    #@2d
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@30
    .line 993
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@32
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@35
    .line 994
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@37
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@3a
    .line 995
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@3c
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@3f
    .line 997
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    #@42
    .line 985
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
    .line 967
    const/4 v1, 0x6

    #@1
    invoke-static {v1, p4}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    #@4
    move-result-object v0

    #@5
    .line 969
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
    .line 971
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@2c
    const/4 v2, 0x3

    #@2d
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@30
    .line 972
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@32
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@35
    .line 973
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@37
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@3a
    .line 974
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@3c
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@3f
    .line 976
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    #@42
    .line 964
    return-void
.end method

.method public conference(Landroid/os/Message;)V
    .locals 3
    .param p1, "result"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1187
    const/16 v1, 0x10

    #@2
    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    #@5
    move-result-object v0

    #@6
    .line 1189
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
    .line 1191
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    #@2e
    .line 1185
    return-void
.end method

.method public deactivateDataCall(IILandroid/os/Message;)V
    .locals 4
    .param p1, "cid"    # I
    .param p2, "reason"    # I
    .param p3, "result"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1679
    const/16 v1, 0x29

    #@2
    invoke-static {v1, p3}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    #@5
    move-result-object v0

    #@6
    .line 1681
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@8
    const/4 v2, 0x2

    #@9
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@c
    .line 1682
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@e
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@11
    move-result-object v2

    #@12
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@15
    .line 1683
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@17
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@1a
    move-result-object v2

    #@1b
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1e
    .line 1685
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
    .line 1686
    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    #@34
    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    #@37
    move-result-object v2

    #@38
    .line 1685
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v1

    #@3c
    .line 1686
    const-string/jumbo v2, " "

    #@3f
    .line 1685
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v1

    #@43
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@46
    move-result-object v1

    #@47
    .line 1686
    const-string/jumbo v2, " "

    #@4a
    .line 1685
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
    .line 1688
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    #@5b
    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mInstanceId:Ljava/lang/Integer;

    #@5d
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    #@60
    move-result v2

    #@61
    iget v3, v0, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    #@63
    invoke-virtual {v1, v2, v3, p1, p2}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeRilDeactivateDataCall(IIII)V

    #@66
    .line 1691
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    #@69
    .line 1677
    return-void
.end method

.method public deleteSmsOnRuim(ILandroid/os/Message;)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1578
    const/16 v1, 0x61

    #@2
    invoke-static {v1, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    #@5
    move-result-object v0

    #@6
    .line 1581
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@8
    const/4 v2, 0x1

    #@9
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@c
    .line 1582
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@e
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 1588
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    #@14
    .line 1577
    return-void
.end method

.method public deleteSmsOnSim(ILandroid/os/Message;)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1563
    const/16 v1, 0x40

    #@2
    invoke-static {v1, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    #@5
    move-result-object v0

    #@6
    .line 1566
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@8
    const/4 v2, 0x1

    #@9
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@c
    .line 1567
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@e
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 1573
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    #@14
    .line 1562
    return-void
.end method

.method public dial(Ljava/lang/String;ILandroid/os/Message;)V
    .locals 1
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "clirMode"    # I
    .param p3, "result"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1057
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/internal/telephony/RIL;->dial(Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;Landroid/os/Message;)V

    #@4
    .line 1056
    return-void
.end method

.method public dial(Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;Landroid/os/Message;)V
    .locals 4
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "clirMode"    # I
    .param p3, "uusInfo"    # Lcom/android/internal/telephony/UUSInfo;
    .param p4, "result"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1063
    const/16 v1, 0xa

    #@2
    invoke-static {v1, p4}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    #@5
    move-result-object v0

    #@6
    .line 1065
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@8
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@b
    .line 1066
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@d
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@10
    .line 1068
    if-nez p3, :cond_0

    #@12
    .line 1069
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@14
    const/4 v2, 0x0

    #@15
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@18
    .line 1077
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
    .line 1079
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    #@3f
    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mInstanceId:Ljava/lang/Integer;

    #@41
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    #@44
    move-result v2

    #@45
    iget v3, v0, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    #@47
    invoke-virtual {v1, v2, v3, p2, p3}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeRilDial(IIILcom/android/internal/telephony/UUSInfo;)V

    #@4a
    .line 1081
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    #@4d
    .line 1062
    return-void

    #@4e
    .line 1071
    :cond_0
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@50
    const/4 v2, 0x1

    #@51
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@54
    .line 1072
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@56
    invoke-virtual {p3}, Lcom/android/internal/telephony/UUSInfo;->getType()I

    #@59
    move-result v2

    #@5a
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@5d
    .line 1073
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@5f
    invoke-virtual {p3}, Lcom/android/internal/telephony/UUSInfo;->getDcs()I

    #@62
    move-result v2

    #@63
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@66
    .line 1074
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@68
    invoke-virtual {p3}, Lcom/android/internal/telephony/UUSInfo;->getUserData()[B

    #@6b
    move-result-object v2

    #@6c
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    #@6f
    goto :goto_0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 7
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 4937
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
    .line 4938
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
    .line 4939
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
    .line 4940
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
    .line 4941
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
    .line 4942
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
    .line 4943
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
    .line 4944
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
    .line 4945
    iget-object v4, p0, Lcom/android/internal/telephony/RIL;->mRequestList:Landroid/util/SparseArray;

    #@c8
    monitor-enter v4

    #@c9
    .line 4946
    :try_start_0
    iget-object v5, p0, Lcom/android/internal/telephony/RIL;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    #@cb
    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@cc
    .line 4947
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
    .line 4949
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRequestList:Landroid/util/SparseArray;

    #@e8
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    #@eb
    move-result v0

    #@ec
    .line 4950
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
    .line 4951
    const/4 v1, 0x0

    #@104
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    #@106
    .line 4952
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRequestList:Landroid/util/SparseArray;

    #@108
    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@10b
    move-result-object v2

    #@10c
    check-cast v2, Lcom/android/internal/telephony/RILRequest;

    #@10e
    .line 4953
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
    .line 4951
    add-int/lit8 v1, v1, 0x1

    #@13a
    goto :goto_0

    #@13b
    .line 4946
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
    .line 4945
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
    .line 4956
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
    iget-object v4, p0, Lcom/android/internal/telephony/RIL;->mLastNITZTimeInfo:[Ljava/lang/Object;

    #@150
    invoke-static {v4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    #@153
    move-result-object v4

    #@154
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@157
    move-result-object v3

    #@158
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@15b
    move-result-object v3

    #@15c
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@15f
    .line 4957
    new-instance v3, Ljava/lang/StringBuilder;

    #@161
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@164
    const-string/jumbo v4, " mTestingEmergencyCall="

    #@167
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16a
    move-result-object v3

    #@16b
    iget-object v4, p0, Lcom/android/internal/telephony/RIL;->mTestingEmergencyCall:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@16d
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    #@170
    move-result v4

    #@171
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@174
    move-result-object v3

    #@175
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@178
    move-result-object v3

    #@179
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@17c
    .line 4936
    return-void
.end method

.method public exitEmergencyCallbackMode(Landroid/os/Message;)V
    .locals 3
    .param p1, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 4831
    const/16 v1, 0x63

    #@2
    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    #@5
    move-result-object v0

    #@6
    .line 4833
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
    .line 4835
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    #@2e
    .line 4830
    return-void
.end method

.method public explicitCallTransfer(Landroid/os/Message;)V
    .locals 3
    .param p1, "result"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1256
    const/16 v1, 0x48

    #@2
    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    #@5
    move-result-object v0

    #@6
    .line 1258
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
    .line 1260
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    #@2e
    .line 1254
    return-void
.end method

.method public getAllowedCarriers(Landroid/os/Message;)V
    .locals 3
    .param p1, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 5199
    const/16 v1, 0x89

    #@2
    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    #@5
    move-result-object v0

    #@6
    .line 5201
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
    .line 5203
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    #@2e
    .line 5198
    return-void
.end method

.method public getAvailableNetworks(Landroid/os/Message;)V
    .locals 3
    .param p1, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1921
    const/16 v1, 0x30

    #@2
    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    #@5
    move-result-object v0

    #@6
    .line 1924
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
    .line 1926
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    #@2e
    .line 1919
    return-void
.end method

.method public getBasebandVersion(Landroid/os/Message;)V
    .locals 3
    .param p1, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1986
    const/16 v1, 0x33

    #@2
    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    #@5
    move-result-object v0

    #@6
    .line 1988
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
    .line 1990
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    #@2e
    .line 1984
    return-void
.end method

.method public getCDMASubscription(Landroid/os/Message;)V
    .locals 3
    .param p1, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 4653
    const/16 v1, 0x5f

    #@2
    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    #@5
    move-result-object v0

    #@6
    .line 4655
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
    .line 4657
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    #@2e
    .line 4652
    return-void
.end method

.method public getCLIR(Landroid/os/Message;)V
    .locals 3
    .param p1, "result"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1823
    const/16 v1, 0x1f

    #@2
    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    #@5
    move-result-object v0

    #@6
    .line 1825
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
    .line 1827
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    #@2e
    .line 1821
    return-void
.end method

.method public getCdmaBroadcastConfig(Landroid/os/Message;)V
    .locals 2
    .param p1, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 4774
    const/16 v1, 0x5c

    #@2
    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    #@5
    move-result-object v0

    #@6
    .line 4776
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    #@9
    .line 4773
    return-void
.end method

.method public getCdmaSubscriptionSource(Landroid/os/Message;)V
    .locals 3
    .param p1, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 4719
    const/16 v1, 0x68

    #@2
    .line 4718
    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    #@5
    move-result-object v0

    #@6
    .line 4721
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
    .line 4723
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    #@2e
    .line 4717
    return-void
.end method

.method public getCellInfoList(Landroid/os/Message;)V
    .locals 3
    .param p1, "result"    # Landroid/os/Message;

    #@0
    .prologue
    .line 4868
    const/16 v1, 0x6d

    #@2
    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    #@5
    move-result-object v0

    #@6
    .line 4870
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
    .line 4872
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    #@2e
    .line 4867
    return-void
.end method

.method public getCurrentCalls(Landroid/os/Message;)V
    .locals 3
    .param p1, "result"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1031
    const/16 v1, 0x9

    #@2
    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    #@5
    move-result-object v0

    #@6
    .line 1033
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
    .line 1035
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    #@2e
    .line 1030
    return-void
.end method

.method public getDataCallList(Landroid/os/Message;)V
    .locals 3
    .param p1, "result"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1047
    const/16 v1, 0x39

    #@2
    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    #@5
    move-result-object v0

    #@6
    .line 1049
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
    .line 1051
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    #@2e
    .line 1046
    return-void
.end method

.method public getDataRegistrationState(Landroid/os/Message;)V
    .locals 3
    .param p1, "result"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1350
    const/16 v1, 0x15

    #@2
    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    #@5
    move-result-object v0

    #@6
    .line 1352
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
    .line 1354
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    #@2e
    .line 1348
    return-void
.end method

.method public getDeviceIdentity(Landroid/os/Message;)V
    .locals 3
    .param p1, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 4643
    const/16 v1, 0x62

    #@2
    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    #@5
    move-result-object v0

    #@6
    .line 4645
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
    .line 4647
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    #@2e
    .line 4642
    return-void
.end method

.method public getGsmBroadcastConfig(Landroid/os/Message;)V
    .locals 3
    .param p1, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 2344
    const/16 v1, 0x59

    #@2
    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    #@5
    move-result-object v0

    #@6
    .line 2346
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
    .line 2348
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    #@2e
    .line 2343
    return-void
.end method

.method public getHardwareConfig(Landroid/os/Message;)V
    .locals 3
    .param p1, "result"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1371
    const/16 v1, 0x7c

    #@2
    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    #@5
    move-result-object v0

    #@6
    .line 1373
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
    .line 1375
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    #@2e
    .line 1370
    return-void
.end method

.method public getIMEI(Landroid/os/Message;)V
    .locals 3
    .param p1, "result"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1108
    const/16 v1, 0x26

    #@2
    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    #@5
    move-result-object v0

    #@6
    .line 1110
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
    .line 1112
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    #@2e
    .line 1107
    return-void
.end method

.method public getIMEISV(Landroid/os/Message;)V
    .locals 3
    .param p1, "result"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1118
    const/16 v1, 0x27

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
    .line 1117
    return-void
.end method

.method public getIMSI(Landroid/os/Message;)V
    .locals 1
    .param p1, "result"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1087
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/RIL;->getIMSIForApp(Ljava/lang/String;Landroid/os/Message;)V

    #@4
    .line 1086
    return-void
.end method

.method public getIMSIForApp(Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .param p1, "aid"    # Ljava/lang/String;
    .param p2, "result"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1093
    const/16 v1, 0xb

    #@2
    invoke-static {v1, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    #@5
    move-result-object v0

    #@6
    .line 1095
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@8
    const/4 v2, 0x1

    #@9
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@c
    .line 1096
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@e
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@11
    .line 1098
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
    .line 1099
    const-string/jumbo v2, "> getIMSI: "

    #@21
    .line 1098
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v1

    #@25
    .line 1099
    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    #@27
    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    #@2a
    move-result-object v2

    #@2b
    .line 1098
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v1

    #@2f
    .line 1100
    const-string/jumbo v2, " aid: "

    #@32
    .line 1098
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
    .line 1102
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    #@44
    .line 1092
    return-void
.end method

.method public getIccCardStatus(Landroid/os/Message;)V
    .locals 3
    .param p1, "result"    # Landroid/os/Message;

    #@0
    .prologue
    .line 839
    const/4 v1, 0x1

    #@1
    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    #@4
    move-result-object v0

    #@5
    .line 841
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
    .line 843
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    #@2d
    .line 836
    return-void
.end method

.method public getImsRegistrationState(Landroid/os/Message;)V
    .locals 3
    .param p1, "result"    # Landroid/os/Message;

    #@0
    .prologue
    .line 814
    const/16 v1, 0x70

    #@2
    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    #@5
    move-result-object v0

    #@6
    .line 817
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
    .line 819
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    #@2e
    .line 813
    return-void
.end method

.method public getLastCallFailCause(Landroid/os/Message;)V
    .locals 3
    .param p1, "result"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1267
    const/16 v1, 0x12

    #@2
    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    #@5
    move-result-object v0

    #@6
    .line 1269
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
    .line 1271
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    #@2e
    .line 1265
    return-void
.end method

.method public getLastDataCallFailCause(Landroid/os/Message;)V
    .locals 3
    .param p1, "result"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1291
    const/16 v1, 0x38

    #@2
    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    #@5
    move-result-object v0

    #@6
    .line 1293
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
    .line 1295
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    #@2e
    .line 1289
    return-void
.end method

.method public getLastPdpFailCause(Landroid/os/Message;)V
    .locals 0
    .param p1, "result"    # Landroid/os/Message;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 1281
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->getLastDataCallFailCause(Landroid/os/Message;)V

    #@3
    .line 1280
    return-void
.end method

.method public getModemActivityInfo(Landroid/os/Message;)V
    .locals 6
    .param p1, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 5151
    const/16 v2, 0x87

    #@2
    invoke-static {v2, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    #@5
    move-result-object v1

    #@6
    .line 5153
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
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@27
    move-result-object v2

    #@28
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    #@2b
    .line 5155
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    #@2e
    .line 5157
    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mSender:Lcom/android/internal/telephony/RIL$RILSender;

    #@30
    const/4 v3, 0x5

    #@31
    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/RIL$RILSender;->obtainMessage(I)Landroid/os/Message;

    #@34
    move-result-object v0

    #@35
    .line 5158
    .local v0, "msg":Landroid/os/Message;
    const/4 v2, 0x0

    #@36
    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@38
    .line 5159
    iget v2, v1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    #@3a
    iput v2, v0, Landroid/os/Message;->arg1:I

    #@3c
    .line 5160
    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mSender:Lcom/android/internal/telephony/RIL$RILSender;

    #@3e
    const-wide/16 v4, 0x7d0

    #@40
    invoke-virtual {v2, v0, v4, v5}, Lcom/android/internal/telephony/RIL$RILSender;->sendMessageDelayed(Landroid/os/Message;J)Z

    #@43
    .line 5150
    return-void
.end method

.method public getMute(Landroid/os/Message;)V
    .locals 3
    .param p1, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1317
    const/16 v1, 0x36

    #@2
    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    #@5
    move-result-object v0

    #@6
    .line 1319
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
    .line 1321
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    #@2e
    .line 1315
    return-void
.end method

.method public getNeighboringCids(Landroid/os/Message;)V
    .locals 3
    .param p1, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 2263
    const/16 v1, 0x4b

    #@2
    .line 2262
    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    #@5
    move-result-object v0

    #@6
    .line 2265
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
    .line 2267
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    #@2e
    .line 2261
    return-void
.end method

.method public getNetworkSelectionMode(Landroid/os/Message;)V
    .locals 3
    .param p1, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1909
    const/16 v1, 0x2d

    #@2
    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    #@5
    move-result-object v0

    #@6
    .line 1912
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
    .line 1914
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    #@2e
    .line 1907
    return-void
.end method

.method public getOperator(Landroid/os/Message;)V
    .locals 3
    .param p1, "result"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1361
    const/16 v1, 0x16

    #@2
    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    #@5
    move-result-object v0

    #@6
    .line 1363
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
    .line 1365
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    #@2e
    .line 1359
    return-void
.end method

.method public getPDPContextList(Landroid/os/Message;)V
    .locals 0
    .param p1, "result"    # Landroid/os/Message;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 1041
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->getDataCallList(Landroid/os/Message;)V

    #@3
    .line 1040
    return-void
.end method

.method public getPreferredNetworkType(Landroid/os/Message;)V
    .locals 3
    .param p1, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 2250
    const/16 v1, 0x4a

    #@2
    .line 2249
    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    #@5
    move-result-object v0

    #@6
    .line 2252
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
    .line 2254
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    #@2e
    .line 2248
    return-void
.end method

.method public getPreferredVoicePrivacy(Landroid/os/Message;)V
    .locals 2
    .param p1, "result"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1208
    const/16 v1, 0x53

    #@2
    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    #@5
    move-result-object v0

    #@6
    .line 1210
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    #@9
    .line 1207
    return-void
.end method

.method public getRadioCapability(Landroid/os/Message;)V
    .locals 3
    .param p1, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 5107
    const/16 v1, 0x82

    #@2
    .line 5106
    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    #@5
    move-result-object v0

    #@6
    .line 5109
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
    .line 5111
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    #@2e
    .line 5105
    return-void
.end method

.method public getSignalStrength(Landroid/os/Message;)V
    .locals 3
    .param p1, "result"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1328
    const/16 v1, 0x13

    #@2
    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    #@5
    move-result-object v0

    #@6
    .line 1330
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
    .line 1332
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    #@2e
    .line 1326
    return-void
.end method

.method public getSmscAddress(Landroid/os/Message;)V
    .locals 3
    .param p1, "result"    # Landroid/os/Message;

    #@0
    .prologue
    .line 2290
    const/16 v1, 0x64

    #@2
    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    #@5
    move-result-object v0

    #@6
    .line 2292
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
    .line 2294
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    #@2e
    .line 2289
    return-void
.end method

.method public getVoiceRadioTechnology(Landroid/os/Message;)V
    .locals 3
    .param p1, "result"    # Landroid/os/Message;

    #@0
    .prologue
    .line 805
    const/16 v1, 0x6c

    #@2
    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    #@5
    move-result-object v0

    #@6
    .line 807
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
    .line 809
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    #@2e
    .line 804
    return-void
.end method

.method public getVoiceRegistrationState(Landroid/os/Message;)V
    .locals 3
    .param p1, "result"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1339
    const/16 v1, 0x14

    #@2
    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    #@5
    move-result-object v0

    #@6
    .line 1341
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
    .line 1343
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    #@2e
    .line 1337
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
    .line 2212
    const/16 v4, 0x47

    #@4
    .line 2211
    invoke-static {v4, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    #@7
    move-result-object v1

    #@8
    .line 2215
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
    .line 2217
    new-array v0, v2, [I

    #@2f
    .line 2218
    .local v0, "param":[I
    if-eqz p1, :cond_0

    #@31
    :goto_0
    aput v2, v0, v3

    #@33
    .line 2219
    iget-object v2, v1, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@35
    invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    #@38
    .line 2220
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    #@3b
    .line 2209
    return-void

    #@3c
    :cond_0
    move v2, v3

    #@3d
    .line 2218
    goto :goto_0
.end method

.method public hangupConnection(ILandroid/os/Message;)V
    .locals 4
    .param p1, "gsmIndex"    # I
    .param p2, "result"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1129
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
    .line 1131
    const/16 v1, 0xc

    #@19
    invoke-static {v1, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    #@1c
    move-result-object v0

    #@1d
    .line 1133
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
    .line 1136
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    #@4f
    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mInstanceId:Ljava/lang/Integer;

    #@51
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    #@54
    move-result v2

    #@55
    iget v3, v0, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    #@57
    invoke-virtual {v1, v2, v3, p1}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeRilHangup(III)V

    #@5a
    .line 1138
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@5c
    const/4 v2, 0x1

    #@5d
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@60
    .line 1139
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@62
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@65
    .line 1141
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    #@68
    .line 1128
    return-void
.end method

.method public hangupForegroundResumeBackground(Landroid/os/Message;)V
    .locals 5
    .param p1, "result"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1162
    const/16 v1, 0xe

    #@2
    .line 1161
    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    #@5
    move-result-object v0

    #@6
    .line 1164
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
    .line 1166
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    #@2d
    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mInstanceId:Ljava/lang/Integer;

    #@2f
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    #@32
    move-result v2

    #@33
    iget v3, v0, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    #@35
    const/4 v4, -0x1

    #@36
    invoke-virtual {v1, v2, v3, v4}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeRilHangup(III)V

    #@39
    .line 1168
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    #@3c
    .line 1159
    return-void
.end method

.method public hangupWaitingOrBackground(Landroid/os/Message;)V
    .locals 5
    .param p1, "result"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1147
    const/16 v1, 0xd

    #@2
    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    #@5
    move-result-object v0

    #@6
    .line 1150
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
    .line 1152
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    #@2d
    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mInstanceId:Ljava/lang/Integer;

    #@2f
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    #@32
    move-result v2

    #@33
    iget v3, v0, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    #@35
    const/4 v4, -0x1

    #@36
    invoke-virtual {v1, v2, v3, v4}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeRilHangup(III)V

    #@39
    .line 1154
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    #@3c
    .line 1146
    return-void
.end method

.method public iccCloseLogicalChannel(ILandroid/os/Message;)V
    .locals 3
    .param p1, "channel"    # I
    .param p2, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 4979
    const/16 v1, 0x74

    #@2
    invoke-static {v1, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    #@5
    move-result-object v0

    #@6
    .line 4980
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@8
    const/4 v2, 0x1

    #@9
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@c
    .line 4981
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@e
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 4984
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
    .line 4986
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    #@39
    .line 4978
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
    .line 1787
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
    .line 1786
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
    .line 1796
    const/16 v1, 0x1c

    #@2
    invoke-static {v1, p10}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    #@5
    move-result-object v0

    #@6
    .line 1798
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@8
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@b
    .line 1799
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@d
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@10
    .line 1800
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@12
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@15
    .line 1801
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@17
    invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeInt(I)V

    #@1a
    .line 1802
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@1c
    invoke-virtual {v1, p5}, Landroid/os/Parcel;->writeInt(I)V

    #@1f
    .line 1803
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@21
    invoke-virtual {v1, p6}, Landroid/os/Parcel;->writeInt(I)V

    #@24
    .line 1804
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@26
    invoke-virtual {v1, p7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@29
    .line 1805
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@2b
    invoke-virtual {v1, p8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@2e
    .line 1806
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@30
    invoke-virtual {v1, p9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@33
    .line 1808
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
    .line 1809
    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    #@49
    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    #@4c
    move-result-object v2

    #@4d
    .line 1808
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@50
    move-result-object v1

    #@51
    .line 1810
    const-string/jumbo v2, " 0x"

    #@54
    .line 1808
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@57
    move-result-object v1

    #@58
    .line 1810
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@5b
    move-result-object v2

    #@5c
    .line 1808
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5f
    move-result-object v1

    #@60
    .line 1811
    const-string/jumbo v2, " 0x"

    #@63
    .line 1808
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@66
    move-result-object v1

    #@67
    .line 1811
    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@6a
    move-result-object v2

    #@6b
    .line 1808
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6e
    move-result-object v1

    #@6f
    .line 1811
    const-string/jumbo v2, " "

    #@72
    .line 1808
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@75
    move-result-object v1

    #@76
    .line 1812
    const-string/jumbo v2, " path: "

    #@79
    .line 1808
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7c
    move-result-object v1

    #@7d
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@80
    move-result-object v1

    #@81
    .line 1812
    const-string/jumbo v2, ","

    #@84
    .line 1808
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@87
    move-result-object v1

    #@88
    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@8b
    move-result-object v1

    #@8c
    .line 1813
    const-string/jumbo v2, ","

    #@8f
    .line 1808
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@92
    move-result-object v1

    #@93
    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@96
    move-result-object v1

    #@97
    .line 1813
    const-string/jumbo v2, ","

    #@9a
    .line 1808
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9d
    move-result-object v1

    #@9e
    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@a1
    move-result-object v1

    #@a2
    .line 1814
    const-string/jumbo v2, " aid: "

    #@a5
    .line 1808
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
    .line 1816
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    #@b7
    .line 1792
    return-void
.end method

.method public iccOpenLogicalChannel(Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .param p1, "AID"    # Ljava/lang/String;
    .param p2, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 4965
    const/16 v1, 0x73

    #@2
    invoke-static {v1, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    #@5
    move-result-object v0

    #@6
    .line 4966
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@8
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@b
    .line 4969
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
    .line 4971
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    #@33
    .line 4964
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
    .line 5010
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
    .line 5009
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
    .line 4995
    if-gtz p1, :cond_0

    #@2
    .line 4996
    new-instance v0, Ljava/lang/RuntimeException;

    #@4
    .line 4997
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
    .line 4996
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@1b
    throw v0

    #@1c
    .line 5000
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
    .line 4994
    return-void
.end method

.method public invokeOemRilRequestRaw([BLandroid/os/Message;)V
    .locals 3
    .param p1, "data"    # [B
    .param p2, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 2099
    const/16 v1, 0x3b

    #@2
    invoke-static {v1, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    #@5
    move-result-object v0

    #@6
    .line 2101
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
    .line 2102
    const-string/jumbo v2, "["

    #@27
    .line 2101
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v1

    #@2b
    .line 2102
    invoke-static {p1}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    #@2e
    move-result-object v2

    #@2f
    .line 2101
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v1

    #@33
    .line 2102
    const-string/jumbo v2, "]"

    #@36
    .line 2101
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
    .line 2104
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@43
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    #@46
    .line 2106
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    #@49
    .line 2097
    return-void
.end method

.method public invokeOemRilRequestStrings([Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .param p1, "strings"    # [Ljava/lang/String;
    .param p2, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 2113
    const/16 v1, 0x3c

    #@2
    invoke-static {v1, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

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
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@2d
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    #@30
    .line 2119
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    #@33
    .line 2111
    return-void
.end method

.method public nvReadItem(ILandroid/os/Message;)V
    .locals 3
    .param p1, "itemID"    # I
    .param p2, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 5036
    const/16 v1, 0x76

    #@2
    invoke-static {v1, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    #@5
    move-result-object v0

    #@6
    .line 5038
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@8
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@b
    .line 5040
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
    .line 5041
    const/16 v2, 0x20

    #@2b
    .line 5040
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
    .line 5043
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    #@3d
    .line 5035
    return-void
.end method

.method public nvResetConfig(ILandroid/os/Message;)V
    .locals 3
    .param p1, "resetType"    # I
    .param p2, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 5073
    const/16 v1, 0x79

    #@2
    invoke-static {v1, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    #@5
    move-result-object v0

    #@6
    .line 5075
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@8
    const/4 v2, 0x1

    #@9
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@c
    .line 5076
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@e
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 5078
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
    .line 5079
    const/16 v2, 0x20

    #@31
    .line 5078
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
    .line 5081
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    #@43
    .line 5072
    return-void
.end method

.method public nvWriteCdmaPrl([BLandroid/os/Message;)V
    .locals 3
    .param p1, "preferredRoamingList"    # [B
    .param p2, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 5061
    const/16 v1, 0x78

    #@2
    invoke-static {v1, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    #@5
    move-result-object v0

    #@6
    .line 5063
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@8
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    #@b
    .line 5065
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
    .line 5066
    const-string/jumbo v2, " ("

    #@2c
    .line 5065
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v1

    #@30
    .line 5066
    array-length v2, p1

    #@31
    .line 5065
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@34
    move-result-object v1

    #@35
    .line 5066
    const-string/jumbo v2, " bytes)"

    #@38
    .line 5065
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
    .line 5068
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    #@46
    .line 5060
    return-void
.end method

.method public nvWriteItem(ILjava/lang/String;Landroid/os/Message;)V
    .locals 3
    .param p1, "itemID"    # I
    .param p2, "itemValue"    # Ljava/lang/String;
    .param p3, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 5048
    const/16 v1, 0x77

    #@2
    invoke-static {v1, p3}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    #@5
    move-result-object v0

    #@6
    .line 5050
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@8
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@b
    .line 5051
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@d
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@10
    .line 5053
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
    .line 5054
    const/16 v2, 0x20

    #@30
    .line 5053
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@33
    move-result-object v1

    #@34
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@37
    move-result-object v1

    #@38
    .line 5054
    const-string/jumbo v2, ": "

    #@3b
    .line 5053
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
    .line 5056
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    #@4d
    .line 5047
    return-void
.end method

.method protected onRadioAvailable()V
    .locals 0

    #@0
    .prologue
    .line 2436
    invoke-direct {p0}, Lcom/android/internal/telephony/RIL;->updateScreenState()V

    #@3
    .line 2433
    return-void
.end method

.method public pullLceData(Landroid/os/Message;)V
    .locals 3
    .param p1, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 5140
    const/16 v1, 0x86

    #@2
    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    #@5
    move-result-object v0

    #@6
    .line 5142
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
    .line 5144
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    #@2e
    .line 5139
    return-void
.end method

.method public queryAvailableBandMode(Landroid/os/Message;)V
    .locals 3
    .param p1, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 2153
    const/16 v1, 0x42

    #@2
    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    #@5
    move-result-object v0

    #@6
    .line 2156
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
    .line 2158
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    #@2e
    .line 2151
    return-void
.end method

.method public queryCLIP(Landroid/os/Message;)V
    .locals 3
    .param p1, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1974
    const/16 v1, 0x37

    #@2
    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    #@5
    move-result-object v0

    #@6
    .line 1976
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
    .line 1978
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    #@2e
    .line 1972
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
    .line 1955
    const/16 v1, 0x21

    #@2
    invoke-static {v1, p4}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    #@5
    move-result-object v0

    #@6
    .line 1957
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@8
    const/4 v2, 0x2

    #@9
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@c
    .line 1958
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@e
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 1959
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@13
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@16
    .line 1960
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@18
    invoke-static {p3}, Landroid/telephony/PhoneNumberUtils;->toaFromString(Ljava/lang/String;)I

    #@1b
    move-result v2

    #@1c
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@1f
    .line 1961
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@21
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@24
    .line 1962
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@26
    const/4 v2, 0x0

    #@27
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@2a
    .line 1964
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
    .line 1965
    const-string/jumbo v2, " "

    #@4b
    .line 1964
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v1

    #@4f
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@52
    move-result-object v1

    #@53
    .line 1965
    const-string/jumbo v2, " "

    #@56
    .line 1964
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
    .line 1967
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    #@68
    .line 1953
    return-void
.end method

.method public queryCallWaiting(ILandroid/os/Message;)V
    .locals 3
    .param p1, "serviceClass"    # I
    .param p2, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1851
    const/16 v1, 0x23

    #@2
    invoke-static {v1, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    #@5
    move-result-object v0

    #@6
    .line 1853
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@8
    const/4 v2, 0x1

    #@9
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@c
    .line 1854
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@e
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 1856
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
    .line 1857
    const-string/jumbo v2, " "

    #@32
    .line 1856
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
    .line 1859
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    #@44
    .line 1849
    return-void
.end method

.method public queryCdmaRoamingPreference(Landroid/os/Message;)V
    .locals 3
    .param p1, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 4672
    const/16 v1, 0x4f

    #@2
    .line 4671
    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    #@5
    move-result-object v0

    #@6
    .line 4674
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
    .line 4676
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    #@2e
    .line 4670
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
    .line 1997
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
    .line 1996
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
    .line 2004
    const/16 v1, 0x2a

    #@2
    invoke-static {v1, p5}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    #@5
    move-result-object v0

    #@6
    .line 2006
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
    .line 2007
    const-string/jumbo v2, " ["

    #@27
    .line 2006
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v1

    #@2b
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v1

    #@2f
    .line 2007
    const-string/jumbo v2, " "

    #@32
    .line 2006
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v1

    #@36
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@39
    move-result-object v1

    #@3a
    .line 2008
    const-string/jumbo v2, " "

    #@3d
    .line 2006
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v1

    #@41
    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v1

    #@45
    .line 2008
    const-string/jumbo v2, "]"

    #@48
    .line 2006
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
    .line 2011
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@55
    const/4 v2, 0x4

    #@56
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@59
    .line 2013
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@5b
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@5e
    .line 2014
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@60
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@63
    .line 2016
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@65
    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@68
    move-result-object v2

    #@69
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@6c
    .line 2017
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@6e
    invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@71
    .line 2019
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    #@74
    .line 2003
    return-void
.end method

.method public queryTTYMode(Landroid/os/Message;)V
    .locals 3
    .param p1, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 4732
    const/16 v1, 0x51

    #@2
    .line 4731
    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    #@5
    move-result-object v0

    #@6
    .line 4734
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
    .line 4736
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    #@2e
    .line 4730
    return-void
.end method

.method public rejectCall(Landroid/os/Message;)V
    .locals 3
    .param p1, "result"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1245
    const/16 v1, 0x11

    #@2
    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    #@5
    move-result-object v0

    #@6
    .line 1247
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
    .line 1249
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    #@2e
    .line 1243
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
    .line 2317
    const/16 v2, 0x66

    #@3
    invoke-static {v2, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    #@6
    move-result-object v0

    #@7
    .line 2318
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    iget-object v2, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@9
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@c
    .line 2319
    iget-object v2, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@e
    if-eqz p1, :cond_0

    #@10
    :goto_0
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@13
    .line 2321
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
    .line 2322
    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    #@29
    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    #@2c
    move-result-object v2

    #@2d
    .line 2321
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v1

    #@31
    .line 2322
    const-string/jumbo v2, ": "

    #@34
    .line 2321
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
    .line 2324
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    #@46
    .line 2316
    return-void

    #@47
    .line 2319
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
    .line 2332
    const/16 v1, 0x67

    #@2
    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    #@5
    move-result-object v0

    #@6
    .line 2334
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
    .line 2336
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    #@2e
    .line 2331
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
    .line 4852
    const/16 v1, 0x7d

    #@2
    invoke-static {v1, p4}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    #@5
    move-result-object v0

    #@6
    .line 4854
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@8
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@b
    .line 4855
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@d
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@10
    .line 4856
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@12
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@15
    .line 4858
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
    .line 4860
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    #@3d
    .line 4851
    return-void
.end method

.method public requestIsimAuthentication(Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .param p1, "nonce"    # Ljava/lang/String;
    .param p2, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 4840
    const/16 v1, 0x69

    #@2
    invoke-static {v1, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    #@5
    move-result-object v0

    #@6
    .line 4842
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@8
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@b
    .line 4844
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
    .line 4846
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    #@33
    .line 4839
    return-void
.end method

.method public requestShutdown(Landroid/os/Message;)V
    .locals 3
    .param p1, "result"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1712
    const/16 v1, 0x81

    #@2
    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    #@5
    move-result-object v0

    #@6
    .line 1715
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
    .line 1717
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    #@2e
    .line 1711
    return-void
.end method

.method public resetRadio(Landroid/os/Message;)V
    .locals 3
    .param p1, "result"    # Landroid/os/Message;

    #@0
    .prologue
    .line 2089
    const/16 v1, 0x3a

    #@2
    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    #@5
    move-result-object v0

    #@6
    .line 2091
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
    .line 2093
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    #@2e
    .line 2087
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
    .line 1418
    const/16 v1, 0x55

    #@2
    invoke-static {v1, p4}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    #@5
    move-result-object v0

    #@6
    .line 1420
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@8
    const/4 v2, 0x3

    #@9
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@c
    .line 1421
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@e
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@11
    .line 1422
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@13
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@16
    move-result-object v2

    #@17
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1a
    .line 1423
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@1c
    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@1f
    move-result-object v2

    #@20
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@23
    .line 1425
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
    .line 1426
    const-string/jumbo v2, " : "

    #@44
    .line 1425
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
    .line 1428
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    #@56
    .line 1417
    return-void
.end method

.method public sendCDMAFeatureCode(Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .param p1, "FeatureCode"    # Ljava/lang/String;
    .param p2, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 4762
    const/16 v1, 0x54

    #@2
    invoke-static {v1, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    #@5
    move-result-object v0

    #@6
    .line 4764
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@8
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@b
    .line 4766
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
    .line 4767
    const-string/jumbo v2, " : "

    #@2c
    .line 4766
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
    .line 4769
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    #@3e
    .line 4761
    return-void
.end method

.method public sendCdmaSms([BLandroid/os/Message;)V
    .locals 5
    .param p1, "pdu"    # [B
    .param p2, "result"    # Landroid/os/Message;

    #@0
    .prologue
    const/4 v4, 0x2

    #@1
    .line 1512
    const/16 v1, 0x57

    #@3
    invoke-static {v1, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    #@6
    move-result-object v0

    #@7
    .line 1514
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/RIL;->constructCdmaSendSmsRilRequest(Lcom/android/internal/telephony/RILRequest;[B)V

    #@a
    .line 1516
    new-instance v1, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    #@12
    move-result-object v2

    #@13
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v1

    #@17
    const-string/jumbo v2, "> "

    #@1a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v1

    #@1e
    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    #@20
    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    #@23
    move-result-object v2

    #@24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v1

    #@28
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2b
    move-result-object v1

    #@2c
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    #@2f
    .line 1518
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    #@31
    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mInstanceId:Ljava/lang/Integer;

    #@33
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    #@36
    move-result v2

    #@37
    iget v3, v0, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    #@39
    invoke-virtual {v1, v2, v3, v4, v4}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeRilSendSms(IIII)V

    #@3c
    .line 1521
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    #@3f
    .line 1510
    return-void
.end method

.method public sendDtmf(CLandroid/os/Message;)V
    .locals 3
    .param p1, "c"    # C
    .param p2, "result"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1382
    const/16 v1, 0x18

    #@2
    invoke-static {v1, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    #@5
    move-result-object v0

    #@6
    .line 1384
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
    .line 1386
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@2d
    invoke-static {p1}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    #@30
    move-result-object v2

    #@31
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@34
    .line 1388
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    #@37
    .line 1380
    return-void
.end method

.method public sendEnvelope(Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .param p1, "contents"    # Ljava/lang/String;
    .param p2, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 2181
    const/16 v1, 0x45

    #@2
    .line 2180
    invoke-static {v1, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    #@5
    move-result-object v0

    #@6
    .line 2183
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
    .line 2185
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@2d
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@30
    .line 2186
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    #@33
    .line 2179
    return-void
.end method

.method public sendEnvelopeWithStatus(Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .param p1, "contents"    # Ljava/lang/String;
    .param p2, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 2195
    const/16 v1, 0x6b

    #@2
    .line 2194
    invoke-static {v1, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    #@5
    move-result-object v0

    #@6
    .line 2197
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
    .line 2198
    const/16 v2, 0x5b

    #@26
    .line 2197
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@29
    move-result-object v1

    #@2a
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v1

    #@2e
    .line 2198
    const/16 v2, 0x5d

    #@30
    .line 2197
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
    .line 2200
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@3d
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@40
    .line 2201
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    #@43
    .line 2193
    return-void
.end method

.method public sendImsCdmaSms([BIILandroid/os/Message;)V
    .locals 6
    .param p1, "pdu"    # [B
    .param p2, "retry"    # I
    .param p3, "messageRef"    # I
    .param p4, "result"    # Landroid/os/Message;

    #@0
    .prologue
    const/4 v5, 0x2

    #@1
    .line 1545
    const/16 v1, 0x71

    #@3
    invoke-static {v1, p4}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    #@6
    move-result-object v0

    #@7
    .line 1547
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@9
    invoke-virtual {v1, v5}, Landroid/os/Parcel;->writeInt(I)V

    #@c
    .line 1548
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@e
    int-to-byte v2, p2

    #@f
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeByte(B)V

    #@12
    .line 1549
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@14
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeInt(I)V

    #@17
    .line 1551
    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/RIL;->constructCdmaSendSmsRilRequest(Lcom/android/internal/telephony/RILRequest;[B)V

    #@1a
    .line 1553
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
    .line 1555
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    #@41
    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mInstanceId:Ljava/lang/Integer;

    #@43
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    #@46
    move-result v2

    #@47
    iget v3, v0, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    #@49
    const/4 v4, 0x3

    #@4a
    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeRilSendSms(IIII)V

    #@4d
    .line 1558
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    #@50
    .line 1544
    return-void
.end method

.method public sendImsGsmSms(Ljava/lang/String;Ljava/lang/String;IILandroid/os/Message;)V
    .locals 6
    .param p1, "smscPDU"    # Ljava/lang/String;
    .param p2, "pdu"    # Ljava/lang/String;
    .param p3, "retry"    # I
    .param p4, "messageRef"    # I
    .param p5, "result"    # Landroid/os/Message;

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    .line 1527
    const/16 v1, 0x71

    #@3
    invoke-static {v1, p5}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    #@6
    move-result-object v0

    #@7
    .line 1529
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@9
    invoke-virtual {v1, v5}, Landroid/os/Parcel;->writeInt(I)V

    #@c
    .line 1530
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@e
    int-to-byte v2, p3

    #@f
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeByte(B)V

    #@12
    .line 1531
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@14
    invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeInt(I)V

    #@17
    .line 1533
    invoke-direct {p0, v0, p1, p2}, Lcom/android/internal/telephony/RIL;->constructGsmSendSmsRilRequest(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/String;)V

    #@1a
    .line 1535
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
    .line 1537
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    #@41
    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mInstanceId:Ljava/lang/Integer;

    #@43
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    #@46
    move-result v2

    #@47
    iget v3, v0, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    #@49
    const/4 v4, 0x3

    #@4a
    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeRilSendSms(IIII)V

    #@4d
    .line 1540
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    #@50
    .line 1526
    return-void
.end method

.method public sendSMS(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 5
    .param p1, "smscPDU"    # Ljava/lang/String;
    .param p2, "pdu"    # Ljava/lang/String;
    .param p3, "result"    # Landroid/os/Message;

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    .line 1441
    const/16 v1, 0x19

    #@3
    invoke-static {v1, p3}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    #@6
    move-result-object v0

    #@7
    .line 1443
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    invoke-direct {p0, v0, p1, p2}, Lcom/android/internal/telephony/RIL;->constructGsmSendSmsRilRequest(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/String;)V

    #@a
    .line 1445
    new-instance v1, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    #@12
    move-result-object v2

    #@13
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v1

    #@17
    const-string/jumbo v2, "> "

    #@1a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v1

    #@1e
    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    #@20
    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    #@23
    move-result-object v2

    #@24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v1

    #@28
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2b
    move-result-object v1

    #@2c
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    #@2f
    .line 1447
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    #@31
    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mInstanceId:Ljava/lang/Integer;

    #@33
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    #@36
    move-result v2

    #@37
    iget v3, v0, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    #@39
    invoke-virtual {v1, v2, v3, v4, v4}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeRilSendSms(IIII)V

    #@3c
    .line 1450
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    #@3f
    .line 1439
    return-void
.end method

.method public sendSMSExpectMore(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 5
    .param p1, "smscPDU"    # Ljava/lang/String;
    .param p2, "pdu"    # Ljava/lang/String;
    .param p3, "result"    # Landroid/os/Message;

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    .line 1457
    const/16 v1, 0x1a

    #@3
    invoke-static {v1, p3}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    #@6
    move-result-object v0

    #@7
    .line 1459
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    invoke-direct {p0, v0, p1, p2}, Lcom/android/internal/telephony/RIL;->constructGsmSendSmsRilRequest(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/String;)V

    #@a
    .line 1461
    new-instance v1, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    #@12
    move-result-object v2

    #@13
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v1

    #@17
    const-string/jumbo v2, "> "

    #@1a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v1

    #@1e
    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    #@20
    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    #@23
    move-result-object v2

    #@24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v1

    #@28
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2b
    move-result-object v1

    #@2c
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    #@2f
    .line 1463
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    #@31
    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mInstanceId:Ljava/lang/Integer;

    #@33
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    #@36
    move-result v2

    #@37
    iget v3, v0, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    #@39
    invoke-virtual {v1, v2, v3, v4, v4}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeRilSendSms(IIII)V

    #@3c
    .line 1466
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    #@3f
    .line 1455
    return-void
.end method

.method public sendTerminalResponse(Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .param p1, "contents"    # Ljava/lang/String;
    .param p2, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 2167
    const/16 v1, 0x46

    #@2
    .line 2166
    invoke-static {v1, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    #@5
    move-result-object v0

    #@6
    .line 2169
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
    .line 2171
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@2d
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@30
    .line 2172
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    #@33
    .line 2165
    return-void
.end method

.method public sendUSSD(Ljava/lang/String;Landroid/os/Message;)V
    .locals 4
    .param p1, "ussdString"    # Ljava/lang/String;
    .param p2, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 2059
    const/16 v2, 0x1d

    #@2
    invoke-static {v2, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    #@5
    move-result-object v1

    #@6
    .line 2062
    .local v1, "rr":Lcom/android/internal/telephony/RILRequest;
    const-string/jumbo v0, "*******"

    #@9
    .line 2064
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
    .line 2065
    const-string/jumbo v3, " "

    #@2a
    .line 2064
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
    .line 2068
    iget-object v2, v1, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@3b
    invoke-virtual {v2, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@3e
    .line 2070
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    #@41
    .line 2057
    return-void
.end method

.method public separateConnection(ILandroid/os/Message;)V
    .locals 3
    .param p1, "gsmIndex"    # I
    .param p2, "result"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1217
    const/16 v1, 0x34

    #@2
    invoke-static {v1, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    #@5
    move-result-object v0

    #@6
    .line 1219
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
    .line 1220
    const-string/jumbo v2, " "

    #@27
    .line 1219
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
    .line 1222
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@38
    const/4 v2, 0x1

    #@39
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@3c
    .line 1223
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@3e
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@41
    .line 1225
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    #@44
    .line 1215
    return-void
.end method

.method public setAllowedCarriers(Ljava/util/List;Landroid/os/Message;)V
    .locals 7
    .param p2, "response"    # Landroid/os/Message;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/service/carrier/CarrierIdentifier;",
            ">;",
            "Landroid/os/Message;",
            ")V"
        }
    .end annotation

    #@0
    .prologue
    .line 5165
    .local p1, "carriers":Ljava/util/List;, "Ljava/util/List<Landroid/service/carrier/CarrierIdentifier;>;"
    const/16 v5, 0x88

    #@2
    invoke-static {v5, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    #@5
    move-result-object v4

    #@6
    .line 5166
    .local v4, "rr":Lcom/android/internal/telephony/RILRequest;
    iget-object v5, v4, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@8
    invoke-interface {p1}, Ljava/util/List;->size()I

    #@b
    move-result v6

    #@c
    invoke-virtual {v5, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@f
    .line 5167
    iget-object v5, v4, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@11
    const/4 v6, 0x0

    #@12
    invoke-virtual {v5, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@15
    .line 5168
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@18
    move-result-object v1

    #@19
    .local v1, "ci$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@1c
    move-result v5

    #@1d
    if-eqz v5, :cond_4

    #@1f
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@22
    move-result-object v0

    #@23
    check-cast v0, Landroid/service/carrier/CarrierIdentifier;

    #@25
    .line 5169
    .local v0, "ci":Landroid/service/carrier/CarrierIdentifier;
    iget-object v5, v4, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@27
    invoke-virtual {v0}, Landroid/service/carrier/CarrierIdentifier;->getMcc()Ljava/lang/String;

    #@2a
    move-result-object v6

    #@2b
    invoke-virtual {v5, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@2e
    .line 5170
    iget-object v5, v4, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@30
    invoke-virtual {v0}, Landroid/service/carrier/CarrierIdentifier;->getMnc()Ljava/lang/String;

    #@33
    move-result-object v6

    #@34
    invoke-virtual {v5, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@37
    .line 5171
    const/4 v3, 0x0

    #@38
    .line 5172
    .local v3, "matchType":I
    const/4 v2, 0x0

    #@39
    .line 5173
    .local v2, "matchData":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/service/carrier/CarrierIdentifier;->getSpn()Ljava/lang/String;

    #@3c
    move-result-object v5

    #@3d
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@40
    move-result v5

    #@41
    if-nez v5, :cond_1

    #@43
    .line 5174
    const/4 v3, 0x1

    #@44
    .line 5175
    invoke-virtual {v0}, Landroid/service/carrier/CarrierIdentifier;->getSpn()Ljava/lang/String;

    #@47
    move-result-object v2

    #@48
    .line 5186
    .end local v2    # "matchData":Ljava/lang/String;
    :cond_0
    :goto_1
    iget-object v5, v4, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@4a
    invoke-virtual {v5, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@4d
    .line 5187
    iget-object v5, v4, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@4f
    invoke-virtual {v5, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@52
    goto :goto_0

    #@53
    .line 5176
    .restart local v2    # "matchData":Ljava/lang/String;
    :cond_1
    invoke-virtual {v0}, Landroid/service/carrier/CarrierIdentifier;->getImsi()Ljava/lang/String;

    #@56
    move-result-object v5

    #@57
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@5a
    move-result v5

    #@5b
    if-nez v5, :cond_2

    #@5d
    .line 5177
    const/4 v3, 0x2

    #@5e
    .line 5178
    invoke-virtual {v0}, Landroid/service/carrier/CarrierIdentifier;->getImsi()Ljava/lang/String;

    #@61
    move-result-object v2

    #@62
    .local v2, "matchData":Ljava/lang/String;
    goto :goto_1

    #@63
    .line 5179
    .local v2, "matchData":Ljava/lang/String;
    :cond_2
    invoke-virtual {v0}, Landroid/service/carrier/CarrierIdentifier;->getGid1()Ljava/lang/String;

    #@66
    move-result-object v5

    #@67
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@6a
    move-result v5

    #@6b
    if-nez v5, :cond_3

    #@6d
    .line 5180
    const/4 v3, 0x3

    #@6e
    .line 5181
    invoke-virtual {v0}, Landroid/service/carrier/CarrierIdentifier;->getGid1()Ljava/lang/String;

    #@71
    move-result-object v2

    #@72
    .local v2, "matchData":Ljava/lang/String;
    goto :goto_1

    #@73
    .line 5182
    .local v2, "matchData":Ljava/lang/String;
    :cond_3
    invoke-virtual {v0}, Landroid/service/carrier/CarrierIdentifier;->getGid2()Ljava/lang/String;

    #@76
    move-result-object v5

    #@77
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@7a
    move-result v5

    #@7b
    if-nez v5, :cond_0

    #@7d
    .line 5183
    const/4 v3, 0x4

    #@7e
    .line 5184
    invoke-virtual {v0}, Landroid/service/carrier/CarrierIdentifier;->getGid2()Ljava/lang/String;

    #@81
    move-result-object v2

    #@82
    .local v2, "matchData":Ljava/lang/String;
    goto :goto_1

    #@83
    .line 5192
    .end local v0    # "ci":Landroid/service/carrier/CarrierIdentifier;
    .end local v2    # "matchData":Ljava/lang/String;
    .end local v3    # "matchType":I
    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    #@85
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@88
    invoke-virtual {v4}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    #@8b
    move-result-object v6

    #@8c
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8f
    move-result-object v5

    #@90
    const-string/jumbo v6, "> "

    #@93
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@96
    move-result-object v5

    #@97
    iget v6, v4, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    #@99
    invoke-static {v6}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    #@9c
    move-result-object v6

    #@9d
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a0
    move-result-object v5

    #@a1
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a4
    move-result-object v5

    #@a5
    invoke-direct {p0, v5}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    #@a8
    .line 5194
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    #@ab
    .line 5164
    return-void
.end method

.method public setBandMode(ILandroid/os/Message;)V
    .locals 3
    .param p1, "bandMode"    # I
    .param p2, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 2131
    const/16 v1, 0x41

    #@2
    invoke-static {v1, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    #@5
    move-result-object v0

    #@6
    .line 2133
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@8
    const/4 v2, 0x1

    #@9
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@c
    .line 2134
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@e
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 2136
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
    .line 2137
    const-string/jumbo v2, " "

    #@32
    .line 2136
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
    .line 2139
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    #@44
    .line 2129
    return-void
.end method

.method public setCLIR(ILandroid/os/Message;)V
    .locals 3
    .param p1, "clirMode"    # I
    .param p2, "result"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1834
    const/16 v1, 0x20

    #@2
    invoke-static {v1, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    #@5
    move-result-object v0

    #@6
    .line 1837
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@8
    const/4 v2, 0x1

    #@9
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@c
    .line 1839
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@e
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 1841
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
    .line 1842
    const-string/jumbo v2, " "

    #@32
    .line 1841
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
    .line 1844
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    #@44
    .line 1832
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
    .line 1934
    const/16 v1, 0x22

    #@2
    invoke-static {v1, p6}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    #@5
    move-result-object v0

    #@6
    .line 1936
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@8
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@b
    .line 1937
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@d
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@10
    .line 1938
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@12
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeInt(I)V

    #@15
    .line 1939
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@17
    invoke-static {p4}, Landroid/telephony/PhoneNumberUtils;->toaFromString(Ljava/lang/String;)I

    #@1a
    move-result v2

    #@1b
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@1e
    .line 1940
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@20
    invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@23
    .line 1941
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@25
    invoke-virtual {v1, p5}, Landroid/os/Parcel;->writeInt(I)V

    #@28
    .line 1943
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
    .line 1944
    const-string/jumbo v2, " "

    #@49
    .line 1943
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v1

    #@4d
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@50
    move-result-object v1

    #@51
    .line 1944
    const-string/jumbo v2, " "

    #@54
    .line 1943
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@57
    move-result-object v1

    #@58
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@5b
    move-result-object v1

    #@5c
    .line 1944
    const-string/jumbo v2, " "

    #@5f
    .line 1943
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
    .line 1947
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    #@75
    .line 1932
    return-void
.end method

.method public setCallWaiting(ZILandroid/os/Message;)V
    .locals 3
    .param p1, "enable"    # Z
    .param p2, "serviceClass"    # I
    .param p3, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1866
    const/16 v1, 0x24

    #@2
    invoke-static {v1, p3}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    #@5
    move-result-object v0

    #@6
    .line 1868
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@8
    const/4 v2, 0x2

    #@9
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@c
    .line 1869
    iget-object v2, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@e
    if-eqz p1, :cond_0

    #@10
    const/4 v1, 0x1

    #@11
    :goto_0
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 1870
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@16
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@19
    .line 1872
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
    .line 1873
    const-string/jumbo v2, " "

    #@3a
    .line 1872
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v1

    #@3e
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@41
    move-result-object v1

    #@42
    .line 1873
    const-string/jumbo v2, ", "

    #@45
    .line 1872
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
    .line 1875
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    #@57
    .line 1864
    return-void

    #@58
    .line 1869
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
    .line 4816
    const/16 v2, 0x5e

    #@3
    invoke-static {v2, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    #@6
    move-result-object v0

    #@7
    .line 4818
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    iget-object v2, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@9
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@c
    .line 4819
    iget-object v2, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@e
    if-eqz p1, :cond_0

    #@10
    const/4 v1, 0x0

    #@11
    :cond_0
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 4821
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
    .line 4823
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    #@3c
    .line 4815
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
    .line 4781
    const/16 v5, 0x5d

    #@3
    invoke-static {v5, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    #@6
    move-result-object v4

    #@7
    .line 4785
    .local v4, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v2, Ljava/util/ArrayList;

    #@9
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@c
    .line 4786
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
    .line 4787
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
    .line 4788
    new-instance v8, Lcom/android/internal/telephony/cdma/CdmaSmsBroadcastConfigInfo;

    #@1e
    .line 4790
    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaSmsBroadcastConfigInfo;->getLanguage()I

    #@21
    move-result v9

    #@22
    .line 4791
    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaSmsBroadcastConfigInfo;->isSelected()Z

    #@25
    move-result v10

    #@26
    .line 4788
    invoke-direct {v8, v1, v1, v9, v10}, Lcom/android/internal/telephony/cdma/CdmaSmsBroadcastConfigInfo;-><init>(IIIZ)V

    #@29
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@2c
    .line 4787
    add-int/lit8 v1, v1, 0x1

    #@2e
    goto :goto_1

    #@2f
    .line 4786
    :cond_0
    add-int/lit8 v5, v5, 0x1

    #@31
    goto :goto_0

    #@32
    .line 4795
    .end local v0    # "config":Lcom/android/internal/telephony/cdma/CdmaSmsBroadcastConfigInfo;
    .end local v1    # "i":I
    :cond_1
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@35
    move-result-object v3

    #@36
    check-cast v3, [Lcom/android/internal/telephony/cdma/CdmaSmsBroadcastConfigInfo;

    #@38
    .line 4796
    .local v3, "rilConfigs":[Lcom/android/internal/telephony/cdma/CdmaSmsBroadcastConfigInfo;
    iget-object v5, v4, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@3a
    array-length v7, v3

    #@3b
    invoke-virtual {v5, v7}, Landroid/os/Parcel;->writeInt(I)V

    #@3e
    .line 4797
    const/4 v1, 0x0

    #@3f
    .restart local v1    # "i":I
    :goto_2
    array-length v5, v3

    #@40
    if-ge v1, v5, :cond_3

    #@42
    .line 4798
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
    .line 4799
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
    .line 4800
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
    .line 4797
    add-int/lit8 v1, v1, 0x1

    #@68
    goto :goto_2

    #@69
    :cond_2
    move v5, v6

    #@6a
    .line 4800
    goto :goto_3

    #@6b
    .line 4804
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
    .line 4805
    const-string/jumbo v6, " with "

    #@8c
    .line 4804
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8f
    move-result-object v5

    #@90
    .line 4805
    array-length v6, v3

    #@91
    .line 4804
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@94
    move-result-object v5

    #@95
    .line 4805
    const-string/jumbo v6, " configs : "

    #@98
    .line 4804
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
    .line 4806
    const/4 v1, 0x0

    #@a4
    :goto_4
    array-length v5, v3

    #@a5
    if-ge v1, v5, :cond_4

    #@a7
    .line 4807
    aget-object v5, v3, v1

    #@a9
    invoke-virtual {v5}, Lcom/android/internal/telephony/cdma/CdmaSmsBroadcastConfigInfo;->toString()Ljava/lang/String;

    #@ac
    move-result-object v5

    #@ad
    invoke-direct {p0, v5}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    #@b0
    .line 4806
    add-int/lit8 v1, v1, 0x1

    #@b2
    goto :goto_4

    #@b3
    .line 4811
    :cond_4
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    #@b6
    .line 4780
    return-void
.end method

.method public setCdmaRoamingPreference(ILandroid/os/Message;)V
    .locals 3
    .param p1, "cdmaRoamingType"    # I
    .param p2, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 4685
    const/16 v1, 0x4e

    #@2
    .line 4684
    invoke-static {v1, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    #@5
    move-result-object v0

    #@6
    .line 4687
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@8
    const/4 v2, 0x1

    #@9
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@c
    .line 4688
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@e
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 4690
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
    .line 4691
    const-string/jumbo v2, " : "

    #@32
    .line 4690
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
    .line 4693
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    #@44
    .line 4683
    return-void
.end method

.method public setCdmaSubscriptionSource(ILandroid/os/Message;)V
    .locals 3
    .param p1, "cdmaSubscription"    # I
    .param p2, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 4702
    const/16 v1, 0x4d

    #@2
    .line 4701
    invoke-static {v1, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    #@5
    move-result-object v0

    #@6
    .line 4704
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@8
    const/4 v2, 0x1

    #@9
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@c
    .line 4705
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@e
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 4707
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
    .line 4708
    const-string/jumbo v2, " : "

    #@32
    .line 4707
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
    .line 4710
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    #@44
    .line 4700
    return-void
.end method

.method public setCellInfoListRate(ILandroid/os/Message;)V
    .locals 3
    .param p1, "rateInMillis"    # I
    .param p2, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 4880
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
    .line 4881
    const/16 v1, 0x6e

    #@19
    invoke-static {v1, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    #@1c
    move-result-object v0

    #@1d
    .line 4883
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@1f
    const/4 v2, 0x1

    #@20
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@23
    .line 4884
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@25
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@28
    .line 4886
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
    .line 4888
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    #@50
    .line 4879
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
    .line 865
    const/16 v2, 0x7b

    #@3
    invoke-static {v2, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    #@6
    move-result-object v0

    #@7
    .line 867
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
    .line 868
    const-string/jumbo v3, " allowed: "

    #@28
    .line 867
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
    .line 871
    iget-object v2, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@39
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@3c
    .line 872
    iget-object v2, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@3e
    if-eqz p1, :cond_0

    #@40
    :goto_0
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@43
    .line 873
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    #@46
    .line 864
    return-void

    #@47
    .line 872
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
    .line 4911
    const-string/jumbo v2, "Set RIL_REQUEST_SET_DATA_PROFILE"

    #@3
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    #@6
    .line 4913
    const/16 v2, 0x80

    #@8
    const/4 v3, 0x0

    #@9
    invoke-static {v2, v3}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    #@c
    move-result-object v1

    #@d
    .line 4914
    .local v1, "rr":Lcom/android/internal/telephony/RILRequest;
    iget-object v2, v1, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@f
    invoke-static {v2, p1}, Lcom/android/internal/telephony/dataconnection/DataProfile;->toParcel(Landroid/os/Parcel;[Lcom/android/internal/telephony/dataconnection/DataProfile;)Landroid/os/Parcel;

    #@12
    .line 4917
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
    .line 4918
    const-string/jumbo v3, " with "

    #@33
    .line 4917
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v2

    #@37
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v2

    #@3b
    .line 4918
    const-string/jumbo v3, " Data Profiles : "

    #@3e
    .line 4917
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
    .line 4919
    const/4 v0, 0x0

    #@4a
    .local v0, "i":I
    :goto_0
    array-length v2, p1

    #@4b
    if-ge v0, v2, :cond_0

    #@4d
    .line 4920
    aget-object v2, p1, v0

    #@4f
    invoke-virtual {v2}, Lcom/android/internal/telephony/dataconnection/DataProfile;->toString()Ljava/lang/String;

    #@52
    move-result-object v2

    #@53
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    #@56
    .line 4919
    add-int/lit8 v0, v0, 0x1

    #@58
    goto :goto_0

    #@59
    .line 4924
    :cond_0
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    #@5c
    .line 4910
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
    .line 2026
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
    .line 2025
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
    .line 2035
    const/16 v2, 0x2b

    #@2
    invoke-static {v2, p6}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    #@5
    move-result-object v1

    #@6
    .line 2037
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
    .line 2038
    const-string/jumbo v3, " ["

    #@27
    .line 2037
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v2

    #@2b
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v2

    #@2f
    .line 2038
    const-string/jumbo v3, " "

    #@32
    .line 2037
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v2

    #@36
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@39
    move-result-object v2

    #@3a
    .line 2039
    const-string/jumbo v3, " "

    #@3d
    .line 2037
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v2

    #@41
    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@44
    move-result-object v2

    #@45
    .line 2039
    const-string/jumbo v3, " "

    #@48
    .line 2037
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v2

    #@4c
    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v2

    #@50
    .line 2039
    const-string/jumbo v3, "]"

    #@53
    .line 2037
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
    .line 2042
    iget-object v2, v1, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@60
    const/4 v3, 0x5

    #@61
    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@64
    .line 2044
    iget-object v2, v1, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@66
    invoke-virtual {v2, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@69
    .line 2045
    if-eqz p2, :cond_0

    #@6b
    const-string/jumbo v0, "1"

    #@6e
    .line 2046
    .local v0, "lockString":Ljava/lang/String;
    :goto_0
    iget-object v2, v1, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@70
    invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@73
    .line 2047
    iget-object v2, v1, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@75
    invoke-virtual {v2, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@78
    .line 2048
    iget-object v2, v1, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@7a
    invoke-static {p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@7d
    move-result-object v3

    #@7e
    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@81
    .line 2049
    iget-object v2, v1, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@83
    invoke-virtual {v2, p5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@86
    .line 2051
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    #@89
    .line 2032
    return-void

    #@8a
    .line 2045
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
    .line 2385
    const/16 v2, 0x5b

    #@3
    invoke-static {v2, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    #@6
    move-result-object v0

    #@7
    .line 2387
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    iget-object v2, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@9
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@c
    .line 2388
    iget-object v2, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@e
    if-eqz p1, :cond_0

    #@10
    const/4 v1, 0x0

    #@11
    :cond_0
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 2390
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
    .line 2392
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    #@3c
    .line 2384
    return-void
.end method

.method public setGsmBroadcastConfig([Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;Landroid/os/Message;)V
    .locals 5
    .param p1, "config"    # [Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;
    .param p2, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 2356
    const/16 v3, 0x5a

    #@2
    invoke-static {v3, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    #@5
    move-result-object v2

    #@6
    .line 2358
    .local v2, "rr":Lcom/android/internal/telephony/RILRequest;
    array-length v1, p1

    #@7
    .line 2359
    .local v1, "numOfConfig":I
    iget-object v3, v2, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@9
    invoke-virtual {v3, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@c
    .line 2361
    const/4 v0, 0x0

    #@d
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    #@f
    .line 2362
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
    .line 2363
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
    .line 2364
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
    .line 2365
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
    .line 2366
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
    .line 2361
    add-int/lit8 v0, v0, 0x1

    #@4b
    goto :goto_0

    #@4c
    .line 2366
    :cond_0
    const/4 v3, 0x0

    #@4d
    goto :goto_1

    #@4e
    .line 2370
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
    .line 2371
    const-string/jumbo v4, " with "

    #@6f
    .line 2370
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@72
    move-result-object v3

    #@73
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@76
    move-result-object v3

    #@77
    .line 2371
    const-string/jumbo v4, " configs : "

    #@7a
    .line 2370
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
    .line 2372
    const/4 v0, 0x0

    #@86
    :goto_2
    if-ge v0, v1, :cond_2

    #@88
    .line 2373
    aget-object v3, p1, v0

    #@8a
    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->toString()Ljava/lang/String;

    #@8d
    move-result-object v3

    #@8e
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    #@91
    .line 2372
    add-int/lit8 v0, v0, 0x1

    #@93
    goto :goto_2

    #@94
    .line 2377
    :cond_2
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    #@97
    .line 2355
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
    .line 4893
    const/16 v1, 0x6f

    #@2
    invoke-static {v1, p6}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    #@5
    move-result-object v0

    #@6
    .line 4895
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    const-string/jumbo v1, "Set RIL_REQUEST_SET_INITIAL_ATTACH_APN"

    #@9
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    #@c
    .line 4897
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@e
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@11
    .line 4898
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@13
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@16
    .line 4899
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@18
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeInt(I)V

    #@1b
    .line 4900
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@1d
    invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@20
    .line 4901
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@22
    invoke-virtual {v1, p5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@25
    .line 4903
    new-instance v1, Ljava/lang/StringBuilder;

    #@27
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@2a
    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    #@2d
    move-result-object v2

    #@2e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v1

    #@32
    const-string/jumbo v2, "> "

    #@35
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v1

    #@39
    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    #@3b
    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    #@3e
    move-result-object v2

    #@3f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v1

    #@43
    .line 4904
    const-string/jumbo v2, ", apn:"

    #@46
    .line 4903
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@49
    move-result-object v1

    #@4a
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v1

    #@4e
    .line 4904
    const-string/jumbo v2, ", protocol:"

    #@51
    .line 4903
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@54
    move-result-object v1

    #@55
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@58
    move-result-object v1

    #@59
    .line 4904
    const-string/jumbo v2, ", authType:"

    #@5c
    .line 4903
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5f
    move-result-object v1

    #@60
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@63
    move-result-object v1

    #@64
    .line 4905
    const-string/jumbo v2, ", username:"

    #@67
    .line 4903
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6a
    move-result-object v1

    #@6b
    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6e
    move-result-object v1

    #@6f
    .line 4905
    const-string/jumbo v2, ", password:"

    #@72
    .line 4903
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@75
    move-result-object v1

    #@76
    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@79
    move-result-object v1

    #@7a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7d
    move-result-object v1

    #@7e
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    #@81
    .line 4907
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    #@84
    .line 4892
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
    .line 2275
    const/16 v2, 0x4c

    #@3
    invoke-static {v2, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    #@6
    move-result-object v0

    #@7
    .line 2276
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    iget-object v2, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@9
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@c
    .line 2277
    iget-object v2, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@e
    if-eqz p1, :cond_0

    #@10
    :goto_0
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@13
    .line 2279
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
    .line 2280
    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    #@29
    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    #@2c
    move-result-object v2

    #@2d
    .line 2279
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v1

    #@31
    .line 2280
    const-string/jumbo v2, ": "

    #@34
    .line 2279
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
    .line 2282
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    #@46
    .line 2274
    return-void

    #@47
    .line 2277
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
    .line 1302
    const/16 v2, 0x35

    #@3
    invoke-static {v2, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    #@6
    move-result-object v0

    #@7
    .line 1304
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
    .line 1305
    const-string/jumbo v3, " "

    #@28
    .line 1304
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
    .line 1307
    iget-object v2, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@39
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@3c
    .line 1308
    iget-object v2, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@3e
    if-eqz p1, :cond_0

    #@40
    :goto_0
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@43
    .line 1310
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    #@46
    .line 1300
    return-void

    #@47
    .line 1308
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
    .line 1882
    const/16 v1, 0x2e

    #@2
    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    #@5
    move-result-object v0

    #@6
    .line 1885
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
    .line 1887
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    #@2e
    .line 1880
    return-void
.end method

.method public setNetworkSelectionModeManual(Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .param p1, "operatorNumeric"    # Ljava/lang/String;
    .param p2, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1894
    const/16 v1, 0x2f

    #@2
    invoke-static {v1, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    #@5
    move-result-object v0

    #@6
    .line 1897
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
    .line 1898
    const-string/jumbo v2, " "

    #@27
    .line 1897
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
    .line 1900
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@38
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@3b
    .line 1902
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    #@3e
    .line 1892
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
    .line 824
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/telephony/BaseCommands;->setOnNITZTime(Landroid/os/Handler;ILjava/lang/Object;)V

    #@4
    .line 827
    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mLastNITZTimeInfo:[Ljava/lang/Object;

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 828
    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mNITZTimeRegistrant:Landroid/os/Registrant;

    #@a
    .line 830
    new-instance v1, Landroid/os/AsyncResult;

    #@c
    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mLastNITZTimeInfo:[Ljava/lang/Object;

    #@e
    invoke-direct {v1, v3, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    #@11
    .line 828
    invoke-virtual {v0, v1}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    #@14
    .line 823
    :cond_0
    return-void
.end method

.method public setPhoneType(I)V
    .locals 2
    .param p1, "phoneType"    # I

    #@0
    .prologue
    .line 4662
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
    .line 4663
    iput p1, p0, Lcom/android/internal/telephony/RIL;->mPhoneType:I

    #@26
    .line 4661
    return-void
.end method

.method public setPreferredNetworkType(ILandroid/os/Message;)V
    .locals 3
    .param p1, "networkType"    # I
    .param p2, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 2229
    const/16 v1, 0x49

    #@2
    .line 2228
    invoke-static {v1, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    #@5
    move-result-object v0

    #@6
    .line 2231
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@8
    const/4 v2, 0x1

    #@9
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@c
    .line 2232
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@e
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 2234
    iput p1, p0, Lcom/android/internal/telephony/RIL;->mPreferredNetworkType:I

    #@13
    .line 2236
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
    .line 2237
    const-string/jumbo v2, " : "

    #@34
    .line 2236
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
    .line 2239
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    #@45
    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mInstanceId:Ljava/lang/Integer;

    #@47
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    #@4a
    move-result v2

    #@4b
    invoke-virtual {v1, v2, p1}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeSetPreferredNetworkType(II)V

    #@4e
    .line 2241
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    #@51
    .line 2227
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
    .line 1197
    const/16 v2, 0x52

    #@3
    invoke-static {v2, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    #@6
    move-result-object v0

    #@7
    .line 1200
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    iget-object v2, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@9
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@c
    .line 1201
    iget-object v2, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@e
    if-eqz p1, :cond_0

    #@10
    :goto_0
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@13
    .line 1203
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    #@16
    .line 1196
    return-void

    #@17
    .line 1201
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
    .line 5087
    const/16 v1, 0x83

    #@2
    .line 5086
    invoke-static {v1, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    #@5
    move-result-object v0

    #@6
    .line 5089
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@8
    invoke-virtual {p1}, Lcom/android/internal/telephony/RadioCapability;->getVersion()I

    #@b
    move-result v2

    #@c
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@f
    .line 5090
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@11
    invoke-virtual {p1}, Lcom/android/internal/telephony/RadioCapability;->getSession()I

    #@14
    move-result v2

    #@15
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@18
    .line 5091
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@1a
    invoke-virtual {p1}, Lcom/android/internal/telephony/RadioCapability;->getPhase()I

    #@1d
    move-result v2

    #@1e
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@21
    .line 5092
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@23
    invoke-virtual {p1}, Lcom/android/internal/telephony/RadioCapability;->getRadioAccessFamily()I

    #@26
    move-result v2

    #@27
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@2a
    .line 5093
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@2c
    invoke-virtual {p1}, Lcom/android/internal/telephony/RadioCapability;->getLogicalModemUuid()Ljava/lang/String;

    #@2f
    move-result-object v2

    #@30
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@33
    .line 5094
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@35
    invoke-virtual {p1}, Lcom/android/internal/telephony/RadioCapability;->getStatus()I

    #@38
    move-result v2

    #@39
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@3c
    .line 5097
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
    .line 5098
    const-string/jumbo v2, " "

    #@5d
    .line 5097
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@60
    move-result-object v1

    #@61
    .line 5098
    invoke-virtual {p1}, Lcom/android/internal/telephony/RadioCapability;->toString()Ljava/lang/String;

    #@64
    move-result-object v2

    #@65
    .line 5097
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
    .line 5101
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    #@73
    .line 5085
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
    .line 1697
    const/16 v2, 0x17

    #@3
    invoke-static {v2, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    #@6
    move-result-object v0

    #@7
    .line 1699
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    iget-object v2, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@9
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@c
    .line 1700
    iget-object v2, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@e
    if-eqz p1, :cond_0

    #@10
    :goto_0
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@13
    .line 1703
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
    .line 1704
    if-eqz p1, :cond_1

    #@33
    const-string/jumbo v1, " on"

    #@36
    .line 1703
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
    .line 1707
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    #@44
    .line 1696
    return-void

    #@45
    .line 1700
    :cond_0
    const/4 v1, 0x0

    #@46
    goto :goto_0

    #@47
    .line 1704
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
    .line 2302
    const/16 v1, 0x65

    #@2
    invoke-static {v1, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    #@5
    move-result-object v0

    #@6
    .line 2304
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@8
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@b
    .line 2306
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
    .line 2307
    const-string/jumbo v2, " : "

    #@2c
    .line 2306
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
    .line 2309
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    #@3e
    .line 2301
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
    .line 1724
    const/16 v2, 0x3e

    #@3
    invoke-static {v2, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    #@6
    move-result-object v0

    #@7
    .line 1726
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    iget-object v2, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@9
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@c
    .line 1727
    iget-object v2, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@e
    if-eqz p1, :cond_0

    #@10
    :goto_0
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@13
    .line 1729
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
    .line 1730
    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    #@29
    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    #@2c
    move-result-object v2

    #@2d
    .line 1729
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
    .line 1732
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    #@3b
    .line 1722
    return-void

    #@3c
    .line 1727
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
    .line 4745
    const/16 v1, 0x50

    #@2
    .line 4744
    invoke-static {v1, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    #@5
    move-result-object v0

    #@6
    .line 4747
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@8
    const/4 v2, 0x1

    #@9
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@c
    .line 4748
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@e
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 4750
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
    .line 4751
    const-string/jumbo v2, " : "

    #@32
    .line 4750
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
    .line 4753
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    #@44
    .line 4743
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
    .line 849
    const/16 v1, 0x7a

    #@2
    invoke-static {v1, p5}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    #@5
    move-result-object v0

    #@6
    .line 851
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
    .line 852
    const-string/jumbo v2, " slot: "

    #@27
    .line 851
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v1

    #@2b
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v1

    #@2f
    .line 852
    const-string/jumbo v2, " appIndex: "

    #@32
    .line 851
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v1

    #@36
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@39
    move-result-object v1

    #@3a
    .line 853
    const-string/jumbo v2, " subId: "

    #@3d
    .line 851
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v1

    #@41
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@44
    move-result-object v1

    #@45
    .line 853
    const-string/jumbo v2, " subStatus: "

    #@48
    .line 851
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
    .line 855
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@59
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@5c
    .line 856
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@5e
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@61
    .line 857
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@63
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeInt(I)V

    #@66
    .line 858
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@68
    invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeInt(I)V

    #@6b
    .line 860
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    #@6e
    .line 847
    return-void
.end method

.method public setupDataCall(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroid/os/Message;)V
    .locals 10
    .param p1, "radioTechnology"    # I
    .param p2, "profile"    # I
    .param p3, "apn"    # Ljava/lang/String;
    .param p4, "user"    # Ljava/lang/String;
    .param p5, "password"    # Ljava/lang/String;
    .param p6, "authType"    # I
    .param p7, "protocol"    # Ljava/lang/String;
    .param p8, "result"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1652
    const/16 v1, 0x1b

    #@2
    move-object/from16 v0, p8

    #@4
    invoke-static {v1, v0}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    #@7
    move-result-object v9

    #@8
    .line 1654
    .local v9, "rr":Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v9, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@a
    const/4 v2, 0x7

    #@b
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@e
    .line 1656
    iget-object v1, v9, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@10
    add-int/lit8 v2, p1, 0x2

    #@12
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@15
    move-result-object v2

    #@16
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@19
    .line 1657
    iget-object v1, v9, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@1b
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@1e
    move-result-object v2

    #@1f
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@22
    .line 1658
    iget-object v1, v9, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@24
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@27
    .line 1659
    iget-object v1, v9, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@29
    invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@2c
    .line 1660
    iget-object v1, v9, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@2e
    invoke-virtual {v1, p5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@31
    .line 1661
    iget-object v1, v9, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@33
    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@36
    move-result-object v2

    #@37
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@3a
    .line 1662
    iget-object v1, v9, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@3c
    move-object/from16 v0, p7

    #@3e
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@41
    .line 1664
    new-instance v1, Ljava/lang/StringBuilder;

    #@43
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@46
    invoke-virtual {v9}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    #@49
    move-result-object v2

    #@4a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v1

    #@4e
    const-string/jumbo v2, "> "

    #@51
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@54
    move-result-object v1

    #@55
    .line 1665
    iget v2, v9, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    #@57
    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    #@5a
    move-result-object v2

    #@5b
    .line 1664
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5e
    move-result-object v1

    #@5f
    .line 1665
    const-string/jumbo v2, " "

    #@62
    .line 1664
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@65
    move-result-object v1

    #@66
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@69
    move-result-object v1

    #@6a
    .line 1665
    const-string/jumbo v2, " "

    #@6d
    .line 1664
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@70
    move-result-object v1

    #@71
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@74
    move-result-object v1

    #@75
    .line 1666
    const-string/jumbo v2, " "

    #@78
    .line 1664
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7b
    move-result-object v1

    #@7c
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7f
    move-result-object v1

    #@80
    .line 1666
    const-string/jumbo v2, " "

    #@83
    .line 1664
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@86
    move-result-object v1

    #@87
    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8a
    move-result-object v1

    #@8b
    .line 1666
    const-string/jumbo v2, " "

    #@8e
    .line 1664
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@91
    move-result-object v1

    #@92
    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@95
    move-result-object v1

    #@96
    .line 1667
    const-string/jumbo v2, " "

    #@99
    .line 1664
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9c
    move-result-object v1

    #@9d
    move/from16 v0, p6

    #@9f
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@a2
    move-result-object v1

    #@a3
    .line 1667
    const-string/jumbo v2, " "

    #@a6
    .line 1664
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a9
    move-result-object v1

    #@aa
    move-object/from16 v0, p7

    #@ac
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@af
    move-result-object v1

    #@b0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b3
    move-result-object v1

    #@b4
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    #@b7
    .line 1669
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    #@b9
    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mInstanceId:Ljava/lang/Integer;

    #@bb
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    #@be
    move-result v2

    #@bf
    iget v3, v9, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    #@c1
    move v4, p1

    #@c2
    move v5, p2

    #@c3
    move-object v6, p3

    #@c4
    move/from16 v7, p6

    #@c6
    move-object/from16 v8, p7

    #@c8
    invoke-virtual/range {v1 .. v8}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeRilSetupDataCall(IIIILjava/lang/String;ILjava/lang/String;)V

    #@cb
    .line 1672
    invoke-direct {p0, v9}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    #@ce
    .line 1650
    return-void
.end method

.method public startDtmf(CLandroid/os/Message;)V
    .locals 3
    .param p1, "c"    # C
    .param p2, "result"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1395
    const/16 v1, 0x31

    #@2
    invoke-static {v1, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    #@5
    move-result-object v0

    #@6
    .line 1397
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
    .line 1399
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@2d
    invoke-static {p1}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    #@30
    move-result-object v2

    #@31
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@34
    .line 1401
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    #@37
    .line 1393
    return-void
.end method

.method public startLceService(IZLandroid/os/Message;)V
    .locals 3
    .param p1, "reportIntervalMs"    # I
    .param p2, "pullMode"    # Z
    .param p3, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 5116
    const/16 v1, 0x84

    #@2
    invoke-static {v1, p3}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    #@5
    move-result-object v0

    #@6
    .line 5118
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@8
    const/4 v2, 0x2

    #@9
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@c
    .line 5119
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@e
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 5120
    iget-object v2, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@13
    if-eqz p2, :cond_0

    #@15
    const/4 v1, 0x1

    #@16
    :goto_0
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@19
    .line 5123
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
    .line 5126
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    #@41
    .line 5115
    return-void

    #@42
    .line 5120
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
    .line 1408
    const/16 v1, 0x32

    #@2
    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    #@5
    move-result-object v0

    #@6
    .line 1410
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
    .line 1412
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    #@2e
    .line 1406
    return-void
.end method

.method public stopLceService(Landroid/os/Message;)V
    .locals 3
    .param p1, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 5131
    const/16 v1, 0x85

    #@2
    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    #@5
    move-result-object v0

    #@6
    .line 5133
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
    .line 5135
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    #@2e
    .line 5130
    return-void
.end method

.method public supplyIccPin(Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .param p1, "pin"    # Ljava/lang/String;
    .param p2, "result"    # Landroid/os/Message;

    #@0
    .prologue
    .line 878
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, v0, p2}, Lcom/android/internal/telephony/RIL;->supplyIccPinForApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    #@4
    .line 877
    return-void
.end method

.method public supplyIccPin2(Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .param p1, "pin"    # Ljava/lang/String;
    .param p2, "result"    # Landroid/os/Message;

    #@0
    .prologue
    .line 919
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, v0, p2}, Lcom/android/internal/telephony/RIL;->supplyIccPin2ForApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    #@4
    .line 918
    return-void
.end method

.method public supplyIccPin2ForApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .param p1, "pin"    # Ljava/lang/String;
    .param p2, "aid"    # Ljava/lang/String;
    .param p3, "result"    # Landroid/os/Message;

    #@0
    .prologue
    .line 926
    const/4 v1, 0x4

    #@1
    invoke-static {v1, p3}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    #@4
    move-result-object v0

    #@5
    .line 928
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
    .line 930
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@2c
    const/4 v2, 0x2

    #@2d
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@30
    .line 931
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@32
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@35
    .line 932
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@37
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@3a
    .line 934
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    #@3d
    .line 923
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
    .line 885
    invoke-static {v3, p3}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    #@4
    move-result-object v0

    #@5
    .line 887
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
    .line 889
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@2c
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@2f
    .line 890
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@31
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@34
    .line 891
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@36
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@39
    .line 893
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    #@3c
    .line 882
    return-void
.end method

.method public supplyIccPuk(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .param p1, "puk"    # Ljava/lang/String;
    .param p2, "newPin"    # Ljava/lang/String;
    .param p3, "result"    # Landroid/os/Message;

    #@0
    .prologue
    .line 898
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/internal/telephony/RIL;->supplyIccPukForApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    #@4
    .line 897
    return-void
.end method

.method public supplyIccPuk2(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .param p1, "puk2"    # Ljava/lang/String;
    .param p2, "newPin2"    # Ljava/lang/String;
    .param p3, "result"    # Landroid/os/Message;

    #@0
    .prologue
    .line 939
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/internal/telephony/RIL;->supplyIccPuk2ForApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    #@4
    .line 938
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
    .line 946
    const/4 v1, 0x5

    #@1
    invoke-static {v1, p4}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    #@4
    move-result-object v0

    #@5
    .line 948
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
    .line 950
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@2c
    const/4 v2, 0x3

    #@2d
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@30
    .line 951
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@32
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@35
    .line 952
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@37
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@3a
    .line 953
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@3c
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@3f
    .line 955
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    #@42
    .line 943
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
    .line 905
    invoke-static {v3, p4}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    #@4
    move-result-object v0

    #@5
    .line 907
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
    .line 909
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@2c
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@2f
    .line 910
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@31
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@34
    .line 911
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@36
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@39
    .line 912
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@3b
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@3e
    .line 914
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    #@41
    .line 902
    return-void
.end method

.method public supplyNetworkDepersonalization(Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .param p1, "netpin"    # Ljava/lang/String;
    .param p2, "result"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1018
    const/16 v1, 0x8

    #@2
    invoke-static {v1, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    #@5
    move-result-object v0

    #@6
    .line 1020
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
    .line 1022
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@2d
    const/4 v2, 0x1

    #@2e
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@31
    .line 1023
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@33
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@36
    .line 1025
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    #@39
    .line 1017
    return-void
.end method

.method public switchWaitingOrHoldingAndActive(Landroid/os/Message;)V
    .locals 3
    .param p1, "result"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1176
    const/16 v1, 0xf

    #@2
    .line 1175
    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    #@5
    move-result-object v0

    #@6
    .line 1178
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
    .line 1180
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    #@2e
    .line 1173
    return-void
.end method

.method public testingEmergencyCall()V
    .locals 2

    #@0
    .prologue
    .line 4932
    const-string/jumbo v0, "testingEmergencyCall"

    #@3
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    #@6
    .line 4933
    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mTestingEmergencyCall:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@8
    const/4 v1, 0x1

    #@9
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    #@c
    .line 4931
    return-void
.end method

.method public writeSmsToRuim(ILjava/lang/String;Landroid/os/Message;)V
    .locals 2
    .param p1, "status"    # I
    .param p2, "pdu"    # Ljava/lang/String;
    .param p3, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1611
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->translateStatus(I)I

    #@3
    move-result p1

    #@4
    .line 1613
    const/16 v1, 0x60

    #@6
    invoke-static {v1, p3}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    #@9
    move-result-object v0

    #@a
    .line 1616
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@c
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@f
    .line 1617
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@11
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@14
    .line 1623
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    #@17
    .line 1610
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
    .line 1593
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->translateStatus(I)I

    #@3
    move-result p1

    #@4
    .line 1595
    const/16 v1, 0x3f

    #@6
    invoke-static {v1, p4}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    #@9
    move-result-object v0

    #@a
    .line 1598
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@c
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@f
    .line 1599
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@11
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@14
    .line 1600
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@16
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@19
    .line 1606
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    #@1c
    .line 1592
    return-void
.end method

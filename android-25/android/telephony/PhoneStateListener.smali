.class public Landroid/telephony/PhoneStateListener;
.super Ljava/lang/Object;
.source "PhoneStateListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field public static final LISTEN_CALL_FORWARDING_INDICATOR:I = 0x8

.field public static final LISTEN_CALL_STATE:I = 0x20

.field public static final LISTEN_CARRIER_NETWORK_CHANGE:I = 0x10000

.field public static final LISTEN_CELL_INFO:I = 0x400

.field public static final LISTEN_CELL_LOCATION:I = 0x10

.field public static final LISTEN_DATA_ACTIVITY:I = 0x80

.field public static final LISTEN_DATA_CONNECTION_REAL_TIME_INFO:I = 0x2000
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final LISTEN_DATA_CONNECTION_STATE:I = 0x40

.field public static final LISTEN_MESSAGE_WAITING_INDICATOR:I = 0x4

.field public static final LISTEN_NONE:I = 0x0

.field public static final LISTEN_OEM_HOOK_RAW_EVENT:I = 0x8000

.field public static final LISTEN_OTASP_CHANGED:I = 0x200

.field public static final LISTEN_PRECISE_CALL_STATE:I = 0x800

.field public static final LISTEN_PRECISE_DATA_CONNECTION_STATE:I = 0x1000

.field public static final LISTEN_SERVICE_STATE:I = 0x1

.field public static final LISTEN_SIGNAL_STRENGTH:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final LISTEN_SIGNAL_STRENGTHS:I = 0x100

.field public static final LISTEN_VOLTE_STATE:I = 0x4000

.field private static final LOG_TAG:Ljava/lang/String; = "PhoneStateListener"


# instance fields
.field callback:Lcom/android/internal/telephony/IPhoneStateListener;

.field private final mHandler:Landroid/os/Handler;

.field protected mSubId:I


# direct methods
.method static synthetic -get0(Landroid/telephony/PhoneStateListener;)Landroid/os/Handler;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/telephony/PhoneStateListener;->mHandler:Landroid/os/Handler;

    #@2
    return-object v0
.end method

.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    .line 245
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    #@3
    move-result-object v0

    #@4
    const v1, 0x7fffffff

    #@7
    invoke-direct {p0, v1, v0}, Landroid/telephony/PhoneStateListener;-><init>(ILandroid/os/Looper;)V

    #@a
    .line 244
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "subId"    # I

    #@0
    .prologue
    .line 264
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0, p1, v0}, Landroid/telephony/PhoneStateListener;-><init>(ILandroid/os/Looper;)V

    #@7
    .line 263
    return-void
.end method

.method public constructor <init>(ILandroid/os/Looper;)V
    .locals 1
    .param p1, "subId"    # I
    .param p2, "looper"    # Landroid/os/Looper;

    #@0
    .prologue
    .line 272
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 236
    const/4 v0, -0x1

    #@4
    iput v0, p0, Landroid/telephony/PhoneStateListener;->mSubId:I

    #@6
    .line 631
    new-instance v0, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;

    #@8
    invoke-direct {v0, p0}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;-><init>(Landroid/telephony/PhoneStateListener;)V

    #@b
    iput-object v0, p0, Landroid/telephony/PhoneStateListener;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    #@d
    .line 274
    iput p1, p0, Landroid/telephony/PhoneStateListener;->mSubId:I

    #@f
    .line 275
    new-instance v0, Landroid/telephony/PhoneStateListener$1;

    #@11
    invoke-direct {v0, p0, p2}, Landroid/telephony/PhoneStateListener$1;-><init>(Landroid/telephony/PhoneStateListener;Landroid/os/Looper;)V

    #@14
    iput-object v0, p0, Landroid/telephony/PhoneStateListener;->mHandler:Landroid/os/Handler;

    #@16
    .line 272
    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;)V
    .locals 1
    .param p1, "looper"    # Landroid/os/Looper;

    #@0
    .prologue
    .line 254
    const v0, 0x7fffffff

    #@3
    invoke-direct {p0, v0, p1}, Landroid/telephony/PhoneStateListener;-><init>(ILandroid/os/Looper;)V

    #@6
    .line 253
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 634
    const-string/jumbo v0, "PhoneStateListener"

    #@3
    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@6
    .line 633
    return-void
.end method


# virtual methods
.method public onCallForwardingIndicatorChanged(Z)V
    .locals 0
    .param p1, "cfi"    # Z

    #@0
    .prologue
    .line 378
    return-void
.end method

.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 0
    .param p1, "state"    # I
    .param p2, "incomingNumber"    # Ljava/lang/String;

    #@0
    .prologue
    .line 400
    return-void
.end method

.method public onCarrierNetworkChange(Z)V
    .locals 0
    .param p1, "active"    # Z

    #@0
    .prologue
    .line 530
    return-void
.end method

.method public onCellInfoChanged(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/CellInfo;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 467
    .local p1, "cellInfo":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    return-void
.end method

.method public onCellLocationChanged(Landroid/telephony/CellLocation;)V
    .locals 0
    .param p1, "location"    # Landroid/telephony/CellLocation;

    #@0
    .prologue
    .line 385
    return-void
.end method

.method public onDataActivity(I)V
    .locals 0
    .param p1, "direction"    # I

    #@0
    .prologue
    .line 431
    return-void
.end method

.method public onDataConnectionRealTimeInfoChanged(Landroid/telephony/DataConnectionRealTimeInfo;)V
    .locals 0
    .param p1, "dcRtInfo"    # Landroid/telephony/DataConnectionRealTimeInfo;

    #@0
    .prologue
    .line 495
    return-void
.end method

.method public onDataConnectionStateChanged(I)V
    .locals 0
    .param p1, "state"    # I

    #@0
    .prologue
    .line 412
    return-void
.end method

.method public onDataConnectionStateChanged(II)V
    .locals 0
    .param p1, "state"    # I
    .param p2, "networkType"    # I

    #@0
    .prologue
    .line 419
    return-void
.end method

.method public onMessageWaitingIndicatorChanged(Z)V
    .locals 0
    .param p1, "mwi"    # Z

    #@0
    .prologue
    .line 371
    return-void
.end method

.method public onOemHookRawEvent([B)V
    .locals 0
    .param p1, "rawData"    # [B

    #@0
    .prologue
    .line 514
    return-void
.end method

.method public onOtaspChanged(I)V
    .locals 0
    .param p1, "otaspMode"    # I

    #@0
    .prologue
    .line 458
    return-void
.end method

.method public onPreciseCallStateChanged(Landroid/telephony/PreciseCallState;)V
    .locals 0
    .param p1, "callState"    # Landroid/telephony/PreciseCallState;

    #@0
    .prologue
    .line 475
    return-void
.end method

.method public onPreciseDataConnectionStateChanged(Landroid/telephony/PreciseDataConnectionState;)V
    .locals 0
    .param p1, "dataConnectionState"    # Landroid/telephony/PreciseDataConnectionState;

    #@0
    .prologue
    .line 485
    return-void
.end method

.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 0
    .param p1, "serviceState"    # Landroid/telephony/ServiceState;

    #@0
    .prologue
    .line 350
    return-void
.end method

.method public onSignalStrengthChanged(I)V
    .locals 0
    .param p1, "asu"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 364
    return-void
.end method

.method public onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .locals 0
    .param p1, "signalStrength"    # Landroid/telephony/SignalStrength;

    #@0
    .prologue
    .line 443
    return-void
.end method

.method public onVoLteServiceStateChanged(Landroid/telephony/VoLteServiceState;)V
    .locals 0
    .param p1, "stateInfo"    # Landroid/telephony/VoLteServiceState;

    #@0
    .prologue
    .line 505
    return-void
.end method

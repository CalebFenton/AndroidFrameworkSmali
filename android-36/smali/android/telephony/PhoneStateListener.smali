.class public Landroid/telephony/PhoneStateListener;
.super Ljava/lang/Object;
.source "PhoneStateListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final greylist-max-o DBG:Z = false

.field public static final whitelist LISTEN_ACTIVE_DATA_SUBSCRIPTION_ID_CHANGE:I = 0x400000
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist LISTEN_BARRING_INFO:I = -0x80000000
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist LISTEN_CALL_ATTRIBUTES_CHANGED:I = 0x4000000
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist LISTEN_CALL_DISCONNECT_CAUSES:I = 0x2000000
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist LISTEN_CALL_FORWARDING_INDICATOR:I = 0x8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist LISTEN_CALL_STATE:I = 0x20
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist-max-o LISTEN_CARRIER_NETWORK_CHANGE:I = 0x10000
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist LISTEN_CELL_INFO:I = 0x400
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist LISTEN_CELL_LOCATION:I = 0x10
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist-max-o LISTEN_DATA_ACTIVATION_STATE:I = 0x40000
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist LISTEN_DATA_ACTIVITY:I = 0x80
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist-max-o LISTEN_DATA_CONNECTION_REAL_TIME_INFO:I = 0x2000
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist LISTEN_DATA_CONNECTION_STATE:I = 0x40
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist LISTEN_DISPLAY_INFO_CHANGED:I = 0x100000
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist LISTEN_EMERGENCY_NUMBER_LIST:I = 0x1000000
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist LISTEN_IMS_CALL_DISCONNECT_CAUSES:I = 0x8000000
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist LISTEN_MESSAGE_WAITING_INDICATOR:I = 0x4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist LISTEN_NONE:I = 0x0

.field public static final greylist-max-o LISTEN_OEM_HOOK_RAW_EVENT:I = 0x8000
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist LISTEN_OUTGOING_EMERGENCY_CALL:I = 0x10000000
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist LISTEN_OUTGOING_EMERGENCY_SMS:I = 0x20000000
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist LISTEN_PHONE_CAPABILITY_CHANGE:I = 0x200000
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist LISTEN_PRECISE_CALL_STATE:I = 0x800
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist LISTEN_PRECISE_DATA_CONNECTION_STATE:I = 0x1000
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist LISTEN_RADIO_POWER_STATE_CHANGED:I = 0x800000
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist LISTEN_REGISTRATION_FAILURE:I = 0x40000000
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist LISTEN_SERVICE_STATE:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist LISTEN_SIGNAL_STRENGTH:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist LISTEN_SIGNAL_STRENGTHS:I = 0x100
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist LISTEN_SRVCC_STATE_CHANGED:I = 0x4000
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist LISTEN_USER_MOBILE_DATA_STATE:I = 0x80000
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist LISTEN_VOICE_ACTIVATION_STATE:I = 0x20000
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final greylist-max-o LOG_TAG:Ljava/lang/String; = "PhoneStateListener"


# instance fields
.field public final greylist-max-r callback:Lcom/android/internal/telephony/IPhoneStateListener;

.field protected greylist mSubId:Ljava/lang/Integer;


# direct methods
.method public constructor whitelist <init>()V
    .registers 3

    .line 537
    const/4 v0, 0x0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/telephony/PhoneStateListener;-><init>(Ljava/lang/Integer;Landroid/os/Looper;)V

    .line 538
    return-void
.end method

.method public constructor greylist-max-p <init>(Landroid/os/Looper;)V
    .registers 3
    .param p1, "looper"    # Landroid/os/Looper;

    .line 547
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Landroid/telephony/PhoneStateListener;-><init>(Ljava/lang/Integer;Landroid/os/Looper;)V

    .line 548
    return-void
.end method

.method public constructor greylist-max-p <init>(Ljava/lang/Integer;)V
    .registers 5
    .param p1, "subId"    # Ljava/lang/Integer;

    .line 558
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/telephony/PhoneStateListener;-><init>(Ljava/lang/Integer;Landroid/os/Looper;)V

    .line 559
    if-eqz p1, :cond_35

    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    invoke-virtual {v0}, Ldalvik/system/VMRuntime;->getTargetSdkVersion()I

    move-result v0

    const/16 v1, 0x1d

    if-ge v0, v1, :cond_16

    goto :goto_35

    .line 561
    :cond_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PhoneStateListener with subId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not supported, use default constructor"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 564
    :cond_35
    :goto_35
    return-void
.end method

.method public constructor greylist-max-p <init>(Ljava/lang/Integer;Landroid/os/Looper;)V
    .registers 6
    .param p1, "subId"    # Ljava/lang/Integer;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 572
    new-instance v0, Landroid/os/HandlerExecutor;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, v1}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    invoke-direct {p0, p1, v0}, Landroid/telephony/PhoneStateListener;-><init>(Ljava/lang/Integer;Ljava/util/concurrent/Executor;)V

    .line 573
    if-eqz p1, :cond_3b

    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    invoke-virtual {v0}, Ldalvik/system/VMRuntime;->getTargetSdkVersion()I

    move-result v0

    const/16 v1, 0x1d

    if-ge v0, v1, :cond_1c

    goto :goto_3b

    .line 575
    :cond_1c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PhoneStateListener with subId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not supported, use default constructor"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 578
    :cond_3b
    :goto_3b
    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/Integer;Ljava/util/concurrent/Executor;)V
    .registers 5
    .param p1, "subId"    # Ljava/lang/Integer;
    .param p2, "e"    # Ljava/util/concurrent/Executor;

    .line 593
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 594
    if-eqz p2, :cond_f

    .line 597
    iput-object p1, p0, Landroid/telephony/PhoneStateListener;->mSubId:Ljava/lang/Integer;

    .line 598
    new-instance v0, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;

    invoke-direct {v0, p0, p2}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;-><init>(Landroid/telephony/PhoneStateListener;Ljava/util/concurrent/Executor;)V

    iput-object v0, p0, Landroid/telephony/PhoneStateListener;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    .line 599
    return-void

    .line 595
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "PhoneStateListener Executor must be non-null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor whitelist <init>(Ljava/util/concurrent/Executor;)V
    .registers 3
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 590
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Landroid/telephony/PhoneStateListener;-><init>(Ljava/lang/Integer;Ljava/util/concurrent/Executor;)V

    .line 591
    return-void
.end method

.method private greylist-max-o log(Ljava/lang/String;)V
    .registers 3
    .param p1, "s"    # Ljava/lang/String;

    .line 1727
    const-string v0, "PhoneStateListener"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1728
    return-void
.end method


# virtual methods
.method public whitelist onActiveDataSubscriptionIdChanged(I)V
    .registers 2
    .param p1, "subId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1187
    return-void
.end method

.method public whitelist onBarringInfoChanged(Landroid/telephony/BarringInfo;)V
    .registers 2
    .param p1, "barringInfo"    # Landroid/telephony/BarringInfo;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1308
    return-void
.end method

.method public whitelist onCallAttributesChanged(Landroid/telephony/CallAttributes;)V
    .registers 2
    .param p1, "callAttributes"    # Landroid/telephony/CallAttributes;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1208
    return-void
.end method

.method public whitelist onCallDisconnectCauseChanged(II)V
    .registers 3
    .param p1, "disconnectCause"    # I
    .param p2, "preciseDisconnectCause"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 864
    return-void
.end method

.method public whitelist onCallForwardingIndicatorChanged(Z)V
    .registers 2
    .param p1, "cfi"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 682
    return-void
.end method

.method public whitelist onCallStateChanged(ILjava/lang/String;)V
    .registers 3
    .param p1, "state"    # I
    .param p2, "phoneNumber"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 734
    return-void
.end method

.method public greylist-max-o onCarrierNetworkChange(Z)V
    .registers 2
    .param p1, "active"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1251
    return-void
.end method

.method public whitelist onCellInfoChanged(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/CellInfo;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 824
    .local p1, "cellInfo":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    return-void
.end method

.method public whitelist onCellLocationChanged(Landroid/telephony/CellLocation;)V
    .registers 2
    .param p1, "location"    # Landroid/telephony/CellLocation;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 699
    return-void
.end method

.method public greylist-max-o onDataActivationStateChanged(I)V
    .registers 2
    .param p1, "state"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 987
    return-void
.end method

.method public whitelist onDataActivity(I)V
    .registers 2
    .param p1, "direction"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 786
    return-void
.end method

.method public greylist-max-r onDataConnectionRealTimeInfoChanged(Landroid/telephony/DataConnectionRealTimeInfo;)V
    .registers 2
    .param p1, "dcRtInfo"    # Landroid/telephony/DataConnectionRealTimeInfo;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 926
    return-void
.end method

.method public whitelist onDataConnectionStateChanged(I)V
    .registers 2
    .param p1, "state"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 755
    return-void
.end method

.method public whitelist onDataConnectionStateChanged(II)V
    .registers 3
    .param p1, "state"    # I
    .param p2, "networkType"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 765
    return-void
.end method

.method public whitelist onDisplayInfoChanged(Landroid/telephony/TelephonyDisplayInfo;)V
    .registers 2
    .param p1, "telephonyDisplayInfo"    # Landroid/telephony/TelephonyDisplayInfo;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1025
    return-void
.end method

.method public whitelist onEmergencyNumberListChanged(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Landroid/telephony/emergency/EmergencyNumber;",
            ">;>;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1052
    .local p1, "emergencyNumberList":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/List<Landroid/telephony/emergency/EmergencyNumber;>;>;"
    return-void
.end method

.method public whitelist onImsCallDisconnectCauseChanged(Landroid/telephony/ims/ImsReasonInfo;)V
    .registers 2
    .param p1, "imsReasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 882
    return-void
.end method

.method public whitelist onMessageWaitingIndicatorChanged(Z)V
    .registers 2
    .param p1, "mwi"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 665
    return-void
.end method

.method public greylist-max-r onOemHookRawEvent([B)V
    .registers 2
    .param p1, "rawData"    # [B
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1158
    return-void
.end method

.method public whitelist onOutgoingEmergencyCall(Landroid/telephony/emergency/EmergencyNumber;)V
    .registers 2
    .param p1, "placedEmergencyNumber"    # Landroid/telephony/emergency/EmergencyNumber;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1069
    return-void
.end method

.method public whitelist onOutgoingEmergencyCall(Landroid/telephony/emergency/EmergencyNumber;I)V
    .registers 3
    .param p1, "placedEmergencyNumber"    # Landroid/telephony/emergency/EmergencyNumber;
    .param p2, "subscriptionId"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1096
    invoke-virtual {p0, p1}, Landroid/telephony/PhoneStateListener;->onOutgoingEmergencyCall(Landroid/telephony/emergency/EmergencyNumber;)V

    .line 1097
    return-void
.end method

.method public whitelist onOutgoingEmergencySms(Landroid/telephony/emergency/EmergencyNumber;)V
    .registers 2
    .param p1, "sentEmergencyNumber"    # Landroid/telephony/emergency/EmergencyNumber;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1114
    return-void
.end method

.method public whitelist onOutgoingEmergencySms(Landroid/telephony/emergency/EmergencyNumber;I)V
    .registers 3
    .param p1, "sentEmergencyNumber"    # Landroid/telephony/emergency/EmergencyNumber;
    .param p2, "subscriptionId"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1137
    invoke-virtual {p0, p1}, Landroid/telephony/PhoneStateListener;->onOutgoingEmergencySms(Landroid/telephony/emergency/EmergencyNumber;)V

    .line 1138
    return-void
.end method

.method public blacklist onPhoneCapabilityChanged(Landroid/telephony/PhoneCapability;)V
    .registers 2
    .param p1, "capability"    # Landroid/telephony/PhoneCapability;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1171
    return-void
.end method

.method public whitelist onPreciseCallStateChanged(Landroid/telephony/PreciseCallState;)V
    .registers 2
    .param p1, "callState"    # Landroid/telephony/PreciseCallState;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 844
    return-void
.end method

.method public whitelist onPreciseDataConnectionStateChanged(Landroid/telephony/PreciseDataConnectionState;)V
    .registers 2
    .param p1, "dataConnectionState"    # Landroid/telephony/PreciseDataConnectionState;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 907
    return-void
.end method

.method public whitelist onRadioPowerStateChanged(I)V
    .registers 2
    .param p1, "state"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1230
    return-void
.end method

.method public whitelist onRegistrationFailed(Landroid/telephony/CellIdentity;Ljava/lang/String;III)V
    .registers 6
    .param p1, "cellIdentity"    # Landroid/telephony/CellIdentity;
    .param p2, "chosenPlmn"    # Ljava/lang/String;
    .param p3, "domain"    # I
    .param p4, "causeCode"    # I
    .param p5, "additionalCauseCode"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1289
    return-void
.end method

.method public whitelist onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .registers 2
    .param p1, "serviceState"    # Landroid/telephony/ServiceState;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 628
    return-void
.end method

.method public whitelist onSignalStrengthChanged(I)V
    .registers 2
    .param p1, "asu"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 648
    return-void
.end method

.method public whitelist onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .registers 2
    .param p1, "signalStrength"    # Landroid/telephony/SignalStrength;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 802
    return-void
.end method

.method public whitelist onSrvccStateChanged(I)V
    .registers 2
    .param p1, "srvccState"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 947
    return-void
.end method

.method public whitelist onUserMobileDataStateChanged(Z)V
    .registers 2
    .param p1, "enabled"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1004
    return-void
.end method

.method public whitelist onVoiceActivationStateChanged(I)V
    .registers 2
    .param p1, "state"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 968
    return-void
.end method

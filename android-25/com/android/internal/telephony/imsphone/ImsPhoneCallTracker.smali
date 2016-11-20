.class public Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;
.super Lcom/android/internal/telephony/CallTracker;
.source "ImsPhoneCallTracker.java"

# interfaces
.implements Lcom/android/internal/telephony/imsphone/ImsPullCall;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$1;,
        Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;,
        Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$3;,
        Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$4;,
        Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$5;,
        Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$PhoneStateListener;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final EVENT_CHECK_FOR_WIFI_HANDOVER:I = 0x19

.field private static final EVENT_DATA_ENABLED_CHANGED:I = 0x17

.field private static final EVENT_DIAL_PENDINGMO:I = 0x14

.field private static final EVENT_EXIT_ECBM_BEFORE_PENDINGMO:I = 0x15

.field private static final EVENT_GET_IMS_SERVICE:I = 0x18

.field private static final EVENT_HANGUP_PENDINGMO:I = 0x12

.field private static final EVENT_RESUME_BACKGROUND:I = 0x13

.field private static final EVENT_VT_DATA_USAGE_UPDATE:I = 0x16

.field private static final FORCE_VERBOSE_STATE_LOGGING:Z = false

.field private static final HANDOVER_TO_WIFI_TIMEOUT_MS:I = 0xea60

.field static final LOG_TAG:Ljava/lang/String; = "ImsPhoneCallTracker"

.field static final MAX_CONNECTIONS:I = 0x7

.field static final MAX_CONNECTIONS_PER_CALL:I = 0x5

.field private static final NUM_IMS_SERVICE_RETRIES:I = 0xa

.field private static final TIMEOUT_HANGUP_PENDINGMO:I = 0x1f4

.field private static final TIME_BETWEEN_IMS_SERVICE_RETRIES_MS:I = 0x190

.field private static final VERBOSE_STATE_LOGGING:Z

.field static final VERBOSE_STATE_TAG:Ljava/lang/String; = "IPCTState"


# instance fields
.field private mAllowAddCallDuringVideoCall:Z

.field private mAllowEmergencyVideoCalls:Z

.field public mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

.field private mCallExpectedToResume:Lcom/android/ims/ImsCall;

.field private mClirMode:I

.field private mConnections:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;",
            ">;"
        }
    .end annotation
.end field

.field private mDesiredMute:Z

.field private mDropVideoCallWhenAnsweringAudioCall:Z

.field public mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

.field public mHandoverCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

.field private mImsCallListener:Lcom/android/ims/ImsCall$Listener;

.field private mImsConfigListener:Lcom/android/ims/ImsConfigListener$Stub;

.field private mImsConnectionStateListener:Lcom/android/ims/ImsConnectionStateListener;

.field private mImsFeatureEnabled:[Z

.field private final mImsFeatureStrings:[Ljava/lang/String;

.field private mImsManager:Lcom/android/ims/ImsManager;

.field private mImsReasonCodeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mImsServiceRetryCount:I

.field private mImsUssdListener:Lcom/android/ims/ImsCall$Listener;

.field private mIsInEmergencyCall:Z

.field private mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

.field private mNotifyHandoverVideoFromWifiToLTE:Z

.field private mNotifyVtHandoverToWifiFail:Z

.field private mOnHoldToneId:I

.field private mOnHoldToneStarted:Z

.field private mPendingCallVideoState:I

.field private mPendingIntentExtras:Landroid/os/Bundle;

.field private mPendingMO:Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

.field private mPendingUssd:Landroid/os/Message;

.field mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

.field private mPhoneStateListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$PhoneStateListener;",
            ">;"
        }
    .end annotation
.end field

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field public mRingingCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

.field private mServiceId:I

.field private mSrvccState:Lcom/android/internal/telephony/Call$SrvccState;

.field private mState:Lcom/android/internal/telephony/PhoneConstants$State;

.field private mSupportDowngradeVtToAudio:Z

.field private mSwitchingFgAndBgCalls:Z

.field private mSyncHold:Ljava/lang/Object;

.field private volatile mTotalVtDataUsage:J

.field private mTreatDowngradedVideoCallsAsVideoCalls:Z

.field private mUssdSession:Lcom/android/ims/ImsCall;

.field private mVoiceCallEndedRegistrants:Landroid/os/RegistrantList;

.field private mVoiceCallStartedRegistrants:Landroid/os/RegistrantList;

.field private final mVtDataUsageMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private pendingCallClirMode:I

.field private pendingCallInEcm:Z


# direct methods
.method static synthetic -get0(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mAllowAddCallDuringVideoCall:Z

    #@2
    return v0
.end method

.method static synthetic -get1(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mAllowEmergencyVideoCalls:Z

    #@2
    return v0
.end method

.method static synthetic -get10(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mNotifyHandoverVideoFromWifiToLTE:Z

    #@2
    return v0
.end method

.method static synthetic -get11(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mNotifyVtHandoverToWifiFail:Z

    #@2
    return v0
.end method

.method static synthetic -get12(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)I
    .locals 1

    #@0
    iget v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mOnHoldToneId:I

    #@2
    return v0
.end method

.method static synthetic -get13(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mOnHoldToneStarted:Z

    #@2
    return v0
.end method

.method static synthetic -get14(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingMO:Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    #@2
    return-object v0
.end method

.method static synthetic -get15(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Landroid/os/Message;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingUssd:Landroid/os/Message;

    #@2
    return-object v0
.end method

.method static synthetic -get16(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)I
    .locals 1

    #@0
    iget v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mServiceId:I

    #@2
    return v0
.end method

.method static synthetic -get17(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mSwitchingFgAndBgCalls:Z

    #@2
    return v0
.end method

.method static synthetic -get18(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Ljava/lang/Object;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mSyncHold:Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method static synthetic -get19(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/ims/ImsCall;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mUssdSession:Lcom/android/ims/ImsCall;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/ims/ImsCall;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mCallExpectedToResume:Lcom/android/ims/ImsCall;

    #@2
    return-object v0
.end method

.method static synthetic -get3(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Ljava/util/ArrayList;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mConnections:Ljava/util/ArrayList;

    #@2
    return-object v0
.end method

.method static synthetic -get4(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/ims/ImsCall$Listener;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsCallListener:Lcom/android/ims/ImsCall$Listener;

    #@2
    return-object v0
.end method

.method static synthetic -get5(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)[Z
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsFeatureEnabled:[Z

    #@2
    return-object v0
.end method

.method static synthetic -get6(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)[Ljava/lang/String;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsFeatureStrings:[Ljava/lang/String;

    #@2
    return-object v0
.end method

.method static synthetic -get7(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/ims/ImsManager;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsManager:Lcom/android/ims/ImsManager;

    #@2
    return-object v0
.end method

.method static synthetic -get8(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/ims/ImsCall$Listener;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsUssdListener:Lcom/android/ims/ImsCall$Listener;

    #@2
    return-object v0
.end method

.method static synthetic -get9(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/internal/telephony/metrics/TelephonyMetrics;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    #@2
    return-object v0
.end method

.method static synthetic -set0(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/ims/ImsCall;)Lcom/android/ims/ImsCall;
    .locals 0

    #@0
    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mCallExpectedToResume:Lcom/android/ims/ImsCall;

    #@2
    return-object p1
.end method

.method static synthetic -set1(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;I)I
    .locals 0

    #@0
    iput p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mOnHoldToneId:I

    #@2
    return p1
.end method

.method static synthetic -set2(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Z)Z
    .locals 0

    #@0
    iput-boolean p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mOnHoldToneStarted:Z

    #@2
    return p1
.end method

.method static synthetic -set3(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    .locals 0

    #@0
    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingMO:Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    #@2
    return-object p1
.end method

.method static synthetic -set4(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Landroid/os/Message;)Landroid/os/Message;
    .locals 0

    #@0
    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingUssd:Landroid/os/Message;

    #@2
    return-object p1
.end method

.method static synthetic -set5(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Z)Z
    .locals 0

    #@0
    iput-boolean p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mSwitchingFgAndBgCalls:Z

    #@2
    return p1
.end method

.method static synthetic -set6(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/ims/ImsCall;)Lcom/android/ims/ImsCall;
    .locals 0

    #@0
    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mUssdSession:Lcom/android/ims/ImsCall;

    #@2
    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Z
    .locals 1

    #@0
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->isWifiConnected()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap1(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/ims/ImsCall;Lcom/android/ims/ImsCall;)Z
    .locals 1
    .param p1, "activeCall"    # Lcom/android/ims/ImsCall;
    .param p2, "incomingCall"    # Lcom/android/ims/ImsCall;

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->shouldDisconnectActiveCallOnAnswer(Lcom/android/ims/ImsCall;Lcom/android/ims/ImsCall;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap10(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;Lcom/android/ims/ImsCall;)V
    .locals 0
    .param p1, "conn"    # Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    .param p2, "imsCall"    # Lcom/android/ims/ImsCall;

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->setVideoCallProvider(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;Lcom/android/ims/ImsCall;)V

    #@3
    return-void
.end method

.method static synthetic -wrap11(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->switchAfterConferenceSuccess()V

    #@3
    return-void
.end method

.method static synthetic -wrap12(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->updatePhoneState()V

    #@3
    return-void
.end method

.method static synthetic -wrap2(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/ims/ImsCall;)Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    .locals 1
    .param p1, "imsCall"    # Lcom/android/ims/ImsCall;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->findConnection(Lcom/android/ims/ImsCall;)Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap3(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/ims/ImsReasonInfo;)I
    .locals 1
    .param p1, "reasonInfo"    # Lcom/android/ims/ImsReasonInfo;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getDisconnectCauseFromReasonInfo(Lcom/android/ims/ImsReasonInfo;)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap4(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)V
    .locals 0
    .param p1, "conn"    # Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->addConnection(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)V

    #@3
    return-void
.end method

.method static synthetic -wrap5(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;I)V
    .locals 0
    .param p1, "subId"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->cacheCarrierConfiguration(I)V

    #@3
    return-void
.end method

.method static synthetic -wrap6(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->dialPendingMO()V

    #@3
    return-void
.end method

.method static synthetic -wrap7(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/ims/ImsCall;Lcom/android/internal/telephony/Call$State;IZ)V
    .locals 0
    .param p1, "imsCall"    # Lcom/android/ims/ImsCall;
    .param p2, "state"    # Lcom/android/internal/telephony/Call$State;
    .param p3, "cause"    # I
    .param p4, "ignoreState"    # Z

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->processCallStateChange(Lcom/android/ims/ImsCall;Lcom/android/internal/telephony/Call$State;IZ)V

    #@3
    return-void
.end method

.method static synthetic -wrap8(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/ims/ImsCall;Lcom/android/internal/telephony/Call$State;I)V
    .locals 0
    .param p1, "imsCall"    # Lcom/android/ims/ImsCall;
    .param p2, "state"    # Lcom/android/internal/telephony/Call$State;
    .param p3, "cause"    # I

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->processCallStateChange(Lcom/android/ims/ImsCall;Lcom/android/internal/telephony/Call$State;I)V

    #@3
    return-void
.end method

.method static synthetic -wrap9(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)V
    .locals 0
    .param p1, "conn"    # Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->removeConnection(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)V

    #@3
    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 110
    const-string/jumbo v0, "IPCTState"

    #@3
    const/4 v1, 0x2

    #@4
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->isLoggable(Ljava/lang/String;I)Z

    #@7
    move-result v0

    #@8
    .line 109
    sput-boolean v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->VERBOSE_STATE_LOGGING:Z

    #@a
    .line 95
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/imsphone/ImsPhone;)V
    .locals 8
    .param p1, "phone"    # Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@0
    .prologue
    const/4 v2, 0x6

    #@1
    const/4 v7, 0x1

    #@2
    const/4 v6, -0x1

    #@3
    const/4 v5, 0x0

    #@4
    const/4 v4, 0x0

    #@5
    .line 330
    invoke-direct {p0}, Lcom/android/internal/telephony/CallTracker;-><init>()V

    #@8
    .line 113
    new-array v1, v2, [Z

    #@a
    fill-array-data v1, :array_0

    #@d
    iput-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsFeatureEnabled:[Z

    #@f
    .line 114
    new-array v1, v2, [Ljava/lang/String;

    #@11
    const-string/jumbo v2, "VoLTE"

    #@14
    aput-object v2, v1, v4

    #@16
    const-string/jumbo v2, "ViLTE"

    #@19
    aput-object v2, v1, v7

    #@1b
    const-string/jumbo v2, "VoWiFi"

    #@1e
    const/4 v3, 0x2

    #@1f
    aput-object v2, v1, v3

    #@21
    const-string/jumbo v2, "ViWiFi"

    #@24
    const/4 v3, 0x3

    #@25
    aput-object v2, v1, v3

    #@27
    .line 115
    const-string/jumbo v2, "UTLTE"

    #@2a
    const/4 v3, 0x4

    #@2b
    aput-object v2, v1, v3

    #@2d
    const-string/jumbo v2, "UTWiFi"

    #@30
    const/4 v3, 0x5

    #@31
    aput-object v2, v1, v3

    #@33
    .line 114
    iput-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsFeatureStrings:[Ljava/lang/String;

    #@35
    .line 119
    new-instance v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$1;

    #@37
    invoke-direct {v1, p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$1;-><init>(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)V

    #@3a
    iput-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mReceiver:Landroid/content/BroadcastReceiver;

    #@3c
    .line 225
    new-instance v1, Ljava/util/ArrayList;

    #@3e
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@41
    iput-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mConnections:Ljava/util/ArrayList;

    #@43
    .line 226
    new-instance v1, Landroid/os/RegistrantList;

    #@45
    invoke-direct {v1}, Landroid/os/RegistrantList;-><init>()V

    #@48
    iput-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mVoiceCallEndedRegistrants:Landroid/os/RegistrantList;

    #@4a
    .line 227
    new-instance v1, Landroid/os/RegistrantList;

    #@4c
    invoke-direct {v1}, Landroid/os/RegistrantList;-><init>()V

    #@4f
    iput-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mVoiceCallStartedRegistrants:Landroid/os/RegistrantList;

    #@51
    .line 229
    new-instance v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@53
    const-string/jumbo v2, "RG"

    #@56
    invoke-direct {v1, p0, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;-><init>(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Ljava/lang/String;)V

    #@59
    iput-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mRingingCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@5b
    .line 230
    new-instance v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@5d
    .line 231
    const-string/jumbo v2, "FG"

    #@60
    .line 230
    invoke-direct {v1, p0, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;-><init>(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Ljava/lang/String;)V

    #@63
    iput-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@65
    .line 232
    new-instance v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@67
    .line 233
    const-string/jumbo v2, "BG"

    #@6a
    .line 232
    invoke-direct {v1, p0, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;-><init>(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Ljava/lang/String;)V

    #@6d
    iput-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@6f
    .line 234
    new-instance v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@71
    const-string/jumbo v2, "HO"

    #@74
    invoke-direct {v1, p0, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;-><init>(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Ljava/lang/String;)V

    #@77
    iput-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mHandoverCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@79
    .line 238
    new-instance v1, Ljava/util/HashMap;

    #@7b
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    #@7e
    iput-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mVtDataUsageMap:Ljava/util/HashMap;

    #@80
    .line 239
    const-wide/16 v2, 0x0

    #@82
    iput-wide v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mTotalVtDataUsage:J

    #@84
    .line 242
    iput v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mClirMode:I

    #@86
    .line 243
    new-instance v1, Ljava/lang/Object;

    #@88
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    #@8b
    iput-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mSyncHold:Ljava/lang/Object;

    #@8d
    .line 245
    iput-object v5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mUssdSession:Lcom/android/ims/ImsCall;

    #@8f
    .line 246
    iput-object v5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingUssd:Landroid/os/Message;

    #@91
    .line 250
    iput-boolean v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mDesiredMute:Z

    #@93
    .line 251
    iput-boolean v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mOnHoldToneStarted:Z

    #@95
    .line 252
    iput v6, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mOnHoldToneId:I

    #@97
    .line 254
    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    #@99
    iput-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    #@9b
    .line 258
    iput v6, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mServiceId:I

    #@9d
    .line 260
    sget-object v1, Lcom/android/internal/telephony/Call$SrvccState;->NONE:Lcom/android/internal/telephony/Call$SrvccState;

    #@9f
    iput-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mSrvccState:Lcom/android/internal/telephony/Call$SrvccState;

    #@a1
    .line 262
    iput-boolean v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mIsInEmergencyCall:Z

    #@a3
    .line 267
    iput-boolean v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->pendingCallInEcm:Z

    #@a5
    .line 268
    iput-boolean v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mSwitchingFgAndBgCalls:Z

    #@a7
    .line 269
    iput-object v5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mCallExpectedToResume:Lcom/android/ims/ImsCall;

    #@a9
    .line 270
    iput-boolean v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mAllowEmergencyVideoCalls:Z

    #@ab
    .line 276
    new-instance v1, Ljava/util/ArrayList;

    #@ad
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@b0
    iput-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhoneStateListeners:Ljava/util/List;

    #@b2
    .line 282
    iput-boolean v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mTreatDowngradedVideoCallsAsVideoCalls:Z

    #@b4
    .line 288
    iput-boolean v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mDropVideoCallWhenAnsweringAudioCall:Z

    #@b6
    .line 294
    iput-boolean v7, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mAllowAddCallDuringVideoCall:Z

    #@b8
    .line 300
    iput-boolean v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mNotifyVtHandoverToWifiFail:Z

    #@ba
    .line 306
    iput-boolean v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mSupportDowngradeVtToAudio:Z

    #@bc
    .line 314
    iput-boolean v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mNotifyHandoverVideoFromWifiToLTE:Z

    #@be
    .line 323
    new-instance v1, Landroid/util/ArrayMap;

    #@c0
    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    #@c3
    iput-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsReasonCodeMap:Ljava/util/Map;

    #@c5
    .line 1455
    new-instance v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;

    #@c7
    invoke-direct {v1, p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;-><init>(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)V

    #@ca
    iput-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsCallListener:Lcom/android/ims/ImsCall$Listener;

    #@cc
    .line 2016
    new-instance v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$3;

    #@ce
    invoke-direct {v1, p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$3;-><init>(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)V

    #@d1
    iput-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsUssdListener:Lcom/android/ims/ImsCall$Listener;

    #@d3
    .line 2081
    new-instance v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$4;

    #@d5
    invoke-direct {v1, p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$4;-><init>(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)V

    #@d8
    .line 2080
    iput-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsConnectionStateListener:Lcom/android/ims/ImsConnectionStateListener;

    #@da
    .line 2204
    new-instance v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$5;

    #@dc
    invoke-direct {v1, p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$5;-><init>(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)V

    #@df
    iput-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsConfigListener:Lcom/android/ims/ImsConfigListener$Stub;

    #@e1
    .line 331
    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@e3
    .line 333
    invoke-static {}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->getInstance()Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    #@e6
    move-result-object v1

    #@e7
    iput-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    #@e9
    .line 335
    new-instance v0, Landroid/content/IntentFilter;

    #@eb
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    #@ee
    .line 336
    .local v0, "intentfilter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "com.android.ims.IMS_INCOMING_CALL"

    #@f1
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@f4
    .line 337
    const-string/jumbo v1, "android.telephony.action.CARRIER_CONFIG_CHANGED"

    #@f7
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@fa
    .line 338
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@fc
    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getContext()Landroid/content/Context;

    #@ff
    move-result-object v1

    #@100
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mReceiver:Landroid/content/BroadcastReceiver;

    #@102
    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    #@105
    .line 339
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@107
    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getSubId()I

    #@10a
    move-result v1

    #@10b
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->cacheCarrierConfiguration(I)V

    #@10e
    .line 341
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@110
    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    #@113
    move-result-object v1

    #@114
    .line 342
    const/16 v2, 0x17

    #@116
    .line 341
    invoke-virtual {v1, p0, v2, v5}, Lcom/android/internal/telephony/Phone;->registerForDataEnabledChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    #@119
    .line 344
    iput v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsServiceRetryCount:I

    #@11b
    .line 347
    const/16 v1, 0x18

    #@11d
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->sendEmptyMessage(I)Z

    #@120
    .line 330
    return-void

    #@121
    .line 113
    nop

    #@122
    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method private declared-synchronized addConnection(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)V
    .locals 2
    .param p1, "conn"    # Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 1249
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mConnections:Ljava/util/ArrayList;

    #@3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@6
    .line 1250
    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->isEmergency()Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_0

    #@c
    .line 1251
    const/4 v0, 0x1

    #@d
    iput-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mIsInEmergencyCall:Z

    #@f
    .line 1252
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@11
    const/4 v1, 0x1

    #@12
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->sendEmergencyCallStateChange(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@15
    :cond_0
    monitor-exit p0

    #@16
    .line 1248
    return-void

    #@17
    :catchall_0
    move-exception v0

    #@18
    monitor-exit p0

    #@19
    throw v0
.end method

.method private cacheCarrierConfiguration(I)V
    .locals 14
    .param p1, "subId"    # I

    #@0
    .prologue
    const/4 v9, 0x0

    #@1
    .line 545
    iget-object v10, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@3
    invoke-virtual {v10}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getContext()Landroid/content/Context;

    #@6
    move-result-object v10

    #@7
    const-string/jumbo v11, "carrier_config"

    #@a
    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@d
    move-result-object v1

    #@e
    .line 544
    check-cast v1, Landroid/telephony/CarrierConfigManager;

    #@10
    .line 546
    .local v1, "carrierConfigManager":Landroid/telephony/CarrierConfigManager;
    if-nez v1, :cond_0

    #@12
    .line 547
    const-string/jumbo v9, "cacheCarrierConfiguration: No carrier config service found."

    #@15
    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->loge(Ljava/lang/String;)V

    #@18
    .line 548
    return-void

    #@19
    .line 551
    :cond_0
    invoke-virtual {v1, p1}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    #@1c
    move-result-object v0

    #@1d
    .line 552
    .local v0, "carrierConfig":Landroid/os/PersistableBundle;
    if-nez v0, :cond_1

    #@1f
    .line 553
    const-string/jumbo v9, "cacheCarrierConfiguration: Empty carrier config."

    #@22
    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->loge(Ljava/lang/String;)V

    #@25
    .line 554
    return-void

    #@26
    .line 558
    :cond_1
    const-string/jumbo v10, "allow_emergency_video_calls_bool"

    #@29
    invoke-virtual {v0, v10}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    #@2c
    move-result v10

    #@2d
    .line 557
    iput-boolean v10, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mAllowEmergencyVideoCalls:Z

    #@2f
    .line 561
    const-string/jumbo v10, "treat_downgraded_video_calls_as_video_calls_bool"

    #@32
    .line 560
    invoke-virtual {v0, v10}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    #@35
    move-result v10

    #@36
    .line 559
    iput-boolean v10, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mTreatDowngradedVideoCallsAsVideoCalls:Z

    #@38
    .line 564
    const-string/jumbo v10, "drop_video_call_when_answering_audio_call_bool"

    #@3b
    .line 563
    invoke-virtual {v0, v10}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    #@3e
    move-result v10

    #@3f
    .line 562
    iput-boolean v10, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mDropVideoCallWhenAnsweringAudioCall:Z

    #@41
    .line 567
    const-string/jumbo v10, "allow_add_call_during_video_call"

    #@44
    .line 566
    invoke-virtual {v0, v10}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    #@47
    move-result v10

    #@48
    .line 565
    iput-boolean v10, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mAllowAddCallDuringVideoCall:Z

    #@4a
    .line 569
    const-string/jumbo v10, "notify_vt_handover_to_wifi_failure_bool"

    #@4d
    .line 568
    invoke-virtual {v0, v10}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    #@50
    move-result v10

    #@51
    iput-boolean v10, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mNotifyVtHandoverToWifiFail:Z

    #@53
    .line 571
    const-string/jumbo v10, "support_downgrade_vt_to_audio_bool"

    #@56
    .line 570
    invoke-virtual {v0, v10}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    #@59
    move-result v10

    #@5a
    iput-boolean v10, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mSupportDowngradeVtToAudio:Z

    #@5c
    .line 573
    const-string/jumbo v10, "notify_vt_handover_to_wifi_failure_bool"

    #@5f
    .line 572
    invoke-virtual {v0, v10}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    #@62
    move-result v10

    #@63
    iput-boolean v10, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mNotifyHandoverVideoFromWifiToLTE:Z

    #@65
    .line 576
    const-string/jumbo v10, "ims_reasoninfo_mapping_string_array"

    #@68
    .line 575
    invoke-virtual {v0, v10}, Landroid/os/PersistableBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    #@6b
    move-result-object v4

    #@6c
    .line 577
    .local v4, "mappings":[Ljava/lang/String;
    if-eqz v4, :cond_3

    #@6e
    array-length v10, v4

    #@6f
    if-lez v10, :cond_3

    #@71
    .line 578
    array-length v10, v4

    #@72
    :goto_0
    if-ge v9, v10, :cond_4

    #@74
    aget-object v3, v4, v9

    #@76
    .line 579
    .local v3, "mapping":Ljava/lang/String;
    const-string/jumbo v11, "|"

    #@79
    invoke-static {v11}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    #@7c
    move-result-object v11

    #@7d
    invoke-virtual {v3, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@80
    move-result-object v8

    #@81
    .line 580
    .local v8, "values":[Ljava/lang/String;
    array-length v11, v8

    #@82
    const/4 v12, 0x3

    #@83
    if-eq v11, v12, :cond_2

    #@85
    .line 578
    :goto_1
    add-int/lit8 v9, v9, 0x1

    #@87
    goto :goto_0

    #@88
    .line 585
    :cond_2
    const/4 v11, 0x0

    #@89
    :try_start_0
    aget-object v11, v8, v11

    #@8b
    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@8e
    move-result v2

    #@8f
    .line 586
    .local v2, "fromCode":I
    const/4 v11, 0x1

    #@90
    aget-object v5, v8, v11

    #@92
    .line 587
    .local v5, "message":Ljava/lang/String;
    const/4 v11, 0x2

    #@93
    aget-object v11, v8, v11

    #@95
    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@98
    move-result v7

    #@99
    .line 589
    .local v7, "toCode":I
    iget-object v11, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsReasonCodeMap:Ljava/util/Map;

    #@9b
    new-instance v12, Landroid/util/Pair;

    #@9d
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@a0
    move-result-object v13

    #@a1
    invoke-direct {v12, v13, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    #@a4
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@a7
    move-result-object v13

    #@a8
    invoke-interface {v11, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@ab
    .line 590
    new-instance v11, Ljava/lang/StringBuilder;

    #@ad
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@b0
    const-string/jumbo v12, "Loaded ImsReasonInfo mapping : fromCode = "

    #@b3
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b6
    move-result-object v11

    #@b7
    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@ba
    move-result-object v11

    #@bb
    const-string/jumbo v12, " ; message = "

    #@be
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c1
    move-result-object v11

    #@c2
    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c5
    move-result-object v11

    #@c6
    .line 591
    const-string/jumbo v12, " ; toCode = "

    #@c9
    .line 590
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@cc
    move-result-object v11

    #@cd
    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@d0
    move-result-object v11

    #@d1
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d4
    move-result-object v11

    #@d5
    invoke-virtual {p0, v11}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@d8
    goto :goto_1

    #@d9
    .line 592
    .end local v2    # "fromCode":I
    .end local v5    # "message":Ljava/lang/String;
    .end local v7    # "toCode":I
    :catch_0
    move-exception v6

    #@da
    .line 593
    .local v6, "nfe":Ljava/lang/NumberFormatException;
    new-instance v11, Ljava/lang/StringBuilder;

    #@dc
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@df
    const-string/jumbo v12, "Invalid ImsReasonInfo mapping found: "

    #@e2
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e5
    move-result-object v11

    #@e6
    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e9
    move-result-object v11

    #@ea
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ed
    move-result-object v11

    #@ee
    invoke-virtual {p0, v11}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->loge(Ljava/lang/String;)V

    #@f1
    goto :goto_1

    #@f2
    .line 597
    .end local v3    # "mapping":Ljava/lang/String;
    .end local v6    # "nfe":Ljava/lang/NumberFormatException;
    .end local v8    # "values":[Ljava/lang/String;
    :cond_3
    const-string/jumbo v9, "No carrier ImsReasonInfo mappings defined."

    #@f5
    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    #@f8
    .line 543
    :cond_4
    return-void
.end method

.method private cleanseInstantLetteringMessage(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "callSubject"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2549
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@3
    move-result v4

    #@4
    if-eqz v4, :cond_0

    #@6
    .line 2550
    return-object p1

    #@7
    .line 2555
    :cond_0
    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@9
    invoke-virtual {v4}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getContext()Landroid/content/Context;

    #@c
    move-result-object v4

    #@d
    const-string/jumbo v5, "carrier_config"

    #@10
    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@13
    move-result-object v1

    #@14
    .line 2554
    check-cast v1, Landroid/telephony/CarrierConfigManager;

    #@16
    .line 2557
    .local v1, "configMgr":Landroid/telephony/CarrierConfigManager;
    if-nez v1, :cond_1

    #@18
    .line 2558
    return-object p1

    #@19
    .line 2561
    :cond_1
    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@1b
    invoke-virtual {v4}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getSubId()I

    #@1e
    move-result v4

    #@1f
    invoke-virtual {v1, v4}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    #@22
    move-result-object v0

    #@23
    .line 2563
    .local v0, "carrierConfig":Landroid/os/PersistableBundle;
    if-nez v0, :cond_2

    #@25
    .line 2564
    return-object p1

    #@26
    .line 2569
    :cond_2
    const-string/jumbo v4, "carrier_instant_lettering_invalid_chars_string"

    #@29
    .line 2568
    invoke-virtual {v0, v4}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@2c
    move-result-object v3

    #@2d
    .line 2570
    .local v3, "invalidCharacters":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@30
    move-result v4

    #@31
    if-nez v4, :cond_3

    #@33
    .line 2571
    const-string/jumbo v4, ""

    #@36
    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@39
    move-result-object p1

    #@3a
    .line 2576
    :cond_3
    const-string/jumbo v4, "carrier_instant_lettering_escaped_chars_string"

    #@3d
    .line 2575
    invoke-virtual {v0, v4}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@40
    move-result-object v2

    #@41
    .line 2577
    .local v2, "escapedCharacters":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@44
    move-result v4

    #@45
    if-nez v4, :cond_4

    #@47
    .line 2578
    invoke-direct {p0, v2, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->escapeChars(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@4a
    move-result-object p1

    #@4b
    .line 2580
    :cond_4
    return-object p1
.end method

.method private createIncomingCallPendingIntent()Landroid/app/PendingIntent;
    .locals 4

    #@0
    .prologue
    .line 351
    new-instance v0, Landroid/content/Intent;

    #@2
    const-string/jumbo v1, "com.android.ims.IMS_INCOMING_CALL"

    #@5
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@8
    .line 352
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    #@a
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@d
    .line 353
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@f
    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getContext()Landroid/content/Context;

    #@12
    move-result-object v1

    #@13
    const/4 v2, 0x0

    #@14
    .line 354
    const/high16 v3, 0x8000000

    #@16
    .line 353
    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    #@19
    move-result-object v1

    #@1a
    return-object v1
.end method

.method private dialInternal(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;IILandroid/os/Bundle;)V
    .locals 11
    .param p1, "conn"    # Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    .param p2, "clirMode"    # I
    .param p3, "videoState"    # I
    .param p4, "intentExtras"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 616
    if-nez p1, :cond_0

    #@2
    .line 617
    return-void

    #@3
    .line 620
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getAddress()Ljava/lang/String;

    #@6
    move-result-object v8

    #@7
    if-eqz v8, :cond_1

    #@9
    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getAddress()Ljava/lang/String;

    #@c
    move-result-object v8

    #@d
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    #@10
    move-result v8

    #@11
    if-nez v8, :cond_2

    #@13
    .line 623
    :cond_1
    const/4 v8, 0x7

    #@14
    invoke-virtual {p1, v8}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->setDisconnectCause(I)V

    #@17
    .line 624
    const-wide/16 v8, 0x1f4

    #@19
    const/16 v10, 0x12

    #@1b
    invoke-virtual {p0, v10, v8, v9}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->sendEmptyMessageDelayed(IJ)Z

    #@1e
    .line 625
    return-void

    #@1f
    .line 621
    :cond_2
    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getAddress()Ljava/lang/String;

    #@22
    move-result-object v8

    #@23
    const/16 v9, 0x4e

    #@25
    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(I)I

    #@28
    move-result v8

    #@29
    if-gez v8, :cond_1

    #@2b
    .line 629
    const/4 v8, 0x0

    #@2c
    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->setMute(Z)V

    #@2f
    .line 630
    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getAddress()Ljava/lang/String;

    #@32
    move-result-object v8

    #@33
    invoke-static {v8}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    #@36
    move-result v8

    #@37
    if-eqz v8, :cond_6

    #@39
    .line 631
    const/4 v7, 0x2

    #@3a
    .line 632
    .local v7, "serviceType":I
    :goto_0
    invoke-static {p3}, Lcom/android/ims/ImsCallProfile;->getCallTypeFromVideoState(I)I

    #@3d
    move-result v0

    #@3e
    .line 634
    .local v0, "callType":I
    invoke-virtual {p1, p3}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->setVideoState(I)V

    #@41
    .line 637
    const/4 v8, 0x1

    #@42
    :try_start_0
    new-array v1, v8, [Ljava/lang/String;

    #@44
    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getAddress()Ljava/lang/String;

    #@47
    move-result-object v8

    #@48
    const/4 v9, 0x0

    #@49
    aput-object v8, v1, v9

    #@4b
    .line 638
    .local v1, "callees":[Ljava/lang/String;
    iget-object v8, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsManager:Lcom/android/ims/ImsManager;

    #@4d
    iget v9, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mServiceId:I

    #@4f
    invoke-virtual {v8, v9, v7, v0}, Lcom/android/ims/ImsManager;->createCallProfile(III)Lcom/android/ims/ImsCallProfile;

    #@52
    move-result-object v6

    #@53
    .line 640
    .local v6, "profile":Lcom/android/ims/ImsCallProfile;
    const-string/jumbo v8, "oir"

    #@56
    invoke-virtual {v6, v8, p2}, Lcom/android/ims/ImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    #@59
    .line 644
    if-eqz p4, :cond_5

    #@5b
    .line 645
    const-string/jumbo v8, "android.telecom.extra.CALL_SUBJECT"

    #@5e
    invoke-virtual {p4, v8}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    #@61
    move-result v8

    #@62
    if-eqz v8, :cond_3

    #@64
    .line 646
    const-string/jumbo v8, "DisplayText"

    #@67
    .line 648
    const-string/jumbo v9, "android.telecom.extra.CALL_SUBJECT"

    #@6a
    .line 647
    invoke-virtual {p4, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@6d
    move-result-object v9

    #@6e
    invoke-direct {p0, v9}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->cleanseInstantLetteringMessage(Ljava/lang/String;)Ljava/lang/String;

    #@71
    move-result-object v9

    #@72
    .line 646
    invoke-virtual {p4, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@75
    .line 652
    :cond_3
    const-string/jumbo v8, "CallPull"

    #@78
    invoke-virtual {p4, v8}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    #@7b
    move-result v8

    #@7c
    if-eqz v8, :cond_4

    #@7e
    .line 653
    iget-object v8, v6, Lcom/android/ims/ImsCallProfile;->mCallExtras:Landroid/os/Bundle;

    #@80
    const-string/jumbo v9, "CallPull"

    #@83
    .line 654
    const-string/jumbo v10, "CallPull"

    #@86
    invoke-virtual {p4, v10}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    #@89
    move-result v10

    #@8a
    .line 653
    invoke-virtual {v8, v9, v10}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    #@8d
    .line 656
    const-string/jumbo v8, "android.telephony.ImsExternalCallTracker.extra.EXTERNAL_CALL_ID"

    #@90
    .line 655
    invoke-virtual {p4, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    #@93
    move-result v2

    #@94
    .line 657
    .local v2, "dialogId":I
    const/4 v8, 0x1

    #@95
    invoke-virtual {p1, v8}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->setIsPulledCall(Z)V

    #@98
    .line 658
    invoke-virtual {p1, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->setPulledDialogId(I)V

    #@9b
    .line 662
    .end local v2    # "dialogId":I
    :cond_4
    iget-object v8, v6, Lcom/android/ims/ImsCallProfile;->mCallExtras:Landroid/os/Bundle;

    #@9d
    const-string/jumbo v9, "OemCallExtras"

    #@a0
    invoke-virtual {v8, v9, p4}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    #@a3
    .line 670
    :cond_5
    iget-object v8, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsManager:Lcom/android/ims/ImsManager;

    #@a5
    iget v9, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mServiceId:I

    #@a7
    .line 671
    iget-object v10, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsCallListener:Lcom/android/ims/ImsCall$Listener;

    #@a9
    .line 670
    invoke-virtual {v8, v9, v6, v1, v10}, Lcom/android/ims/ImsManager;->makeCall(ILcom/android/ims/ImsCallProfile;[Ljava/lang/String;Lcom/android/ims/ImsCall$Listener;)Lcom/android/ims/ImsCall;

    #@ac
    move-result-object v5

    #@ad
    .line 672
    .local v5, "imsCall":Lcom/android/ims/ImsCall;
    invoke-virtual {p1, v5}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->setImsCall(Lcom/android/ims/ImsCall;)V

    #@b0
    .line 674
    iget-object v8, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    #@b2
    iget-object v9, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@b4
    invoke-virtual {v9}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getPhoneId()I

    #@b7
    move-result v9

    #@b8
    .line 675
    invoke-virtual {v5}, Lcom/android/ims/ImsCall;->getSession()Lcom/android/ims/internal/ImsCallSession;

    #@bb
    move-result-object v10

    #@bc
    .line 674
    invoke-virtual {v8, v9, v10}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeOnImsCallStart(ILcom/android/ims/internal/ImsCallSession;)V

    #@bf
    .line 677
    invoke-direct {p0, p1, v5}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->setVideoCallProvider(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;Lcom/android/ims/ImsCall;)V

    #@c2
    .line 678
    iget-boolean v8, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mAllowAddCallDuringVideoCall:Z

    #@c4
    invoke-virtual {p1, v8}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->setAllowAddCallDuringVideoCall(Z)V
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    #@c7
    .line 614
    .end local v1    # "callees":[Ljava/lang/String;
    .end local v5    # "imsCall":Lcom/android/ims/ImsCall;
    .end local v6    # "profile":Lcom/android/ims/ImsCallProfile;
    :goto_1
    return-void

    #@c8
    .line 631
    .end local v0    # "callType":I
    .end local v7    # "serviceType":I
    :cond_6
    const/4 v7, 0x1

    #@c9
    .restart local v7    # "serviceType":I
    goto/16 :goto_0

    #@cb
    .line 679
    .restart local v0    # "callType":I
    :catch_0
    move-exception v4

    #@cc
    .line 680
    .local v4, "e":Lcom/android/ims/ImsException;
    new-instance v8, Ljava/lang/StringBuilder;

    #@ce
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@d1
    const-string/jumbo v9, "dialInternal : "

    #@d4
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d7
    move-result-object v8

    #@d8
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@db
    move-result-object v8

    #@dc
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@df
    move-result-object v8

    #@e0
    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->loge(Ljava/lang/String;)V

    #@e3
    .line 681
    const/16 v8, 0x24

    #@e5
    invoke-virtual {p1, v8}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->setDisconnectCause(I)V

    #@e8
    .line 682
    const-wide/16 v8, 0x1f4

    #@ea
    const/16 v10, 0x12

    #@ec
    invoke-virtual {p0, v10, v8, v9}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->sendEmptyMessageDelayed(IJ)Z

    #@ef
    goto :goto_1

    #@f0
    .line 683
    .end local v4    # "e":Lcom/android/ims/ImsException;
    :catch_1
    move-exception v3

    #@f1
    .local v3, "e":Landroid/os/RemoteException;
    goto :goto_1
.end method

.method private dialPendingMO()V
    .locals 3

    #@0
    .prologue
    .line 1443
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->isPhoneInEcbMode()Z

    #@3
    move-result v1

    #@4
    .line 1444
    .local v1, "isPhoneInEcmMode":Z
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingMO:Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    #@6
    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->isEmergency()Z

    #@9
    move-result v0

    #@a
    .line 1445
    .local v0, "isEmergencyNumber":Z
    if-eqz v1, :cond_0

    #@c
    if-eqz v1, :cond_1

    #@e
    if-eqz v0, :cond_1

    #@10
    .line 1446
    :cond_0
    const/16 v2, 0x14

    #@12
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->sendEmptyMessage(I)Z

    #@15
    .line 1442
    :goto_0
    return-void

    #@16
    .line 1448
    :cond_1
    const/16 v2, 0x15

    #@18
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->sendEmptyMessage(I)Z

    #@1b
    goto :goto_0
.end method

.method private dumpState()V
    .locals 5

    #@0
    .prologue
    .line 969
    new-instance v3, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v4, "Phone State:"

    #@8
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v3

    #@c
    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    #@e
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v3

    #@12
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@15
    move-result-object v3

    #@16
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    #@19
    .line 971
    new-instance v3, Ljava/lang/StringBuilder;

    #@1b
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@1e
    const-string/jumbo v4, "Ringing call: "

    #@21
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v3

    #@25
    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mRingingCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@27
    invoke-virtual {v4}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->toString()Ljava/lang/String;

    #@2a
    move-result-object v4

    #@2b
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v3

    #@2f
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@32
    move-result-object v3

    #@33
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    #@36
    .line 973
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mRingingCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@38
    invoke-virtual {v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getConnections()Ljava/util/List;

    #@3b
    move-result-object v1

    #@3c
    .line 974
    .local v1, "l":Ljava/util/List;
    const/4 v0, 0x0

    #@3d
    .local v0, "i":I
    invoke-interface {v1}, Ljava/util/List;->size()I

    #@40
    move-result v2

    #@41
    .local v2, "s":I
    :goto_0
    if-ge v0, v2, :cond_0

    #@43
    .line 975
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@46
    move-result-object v3

    #@47
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@4a
    move-result-object v3

    #@4b
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    #@4e
    .line 974
    add-int/lit8 v0, v0, 0x1

    #@50
    goto :goto_0

    #@51
    .line 978
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    #@53
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@56
    const-string/jumbo v4, "Foreground call: "

    #@59
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5c
    move-result-object v3

    #@5d
    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@5f
    invoke-virtual {v4}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->toString()Ljava/lang/String;

    #@62
    move-result-object v4

    #@63
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@66
    move-result-object v3

    #@67
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6a
    move-result-object v3

    #@6b
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    #@6e
    .line 980
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@70
    invoke-virtual {v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getConnections()Ljava/util/List;

    #@73
    move-result-object v1

    #@74
    .line 981
    const/4 v0, 0x0

    #@75
    invoke-interface {v1}, Ljava/util/List;->size()I

    #@78
    move-result v2

    #@79
    :goto_1
    if-ge v0, v2, :cond_1

    #@7b
    .line 982
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@7e
    move-result-object v3

    #@7f
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@82
    move-result-object v3

    #@83
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    #@86
    .line 981
    add-int/lit8 v0, v0, 0x1

    #@88
    goto :goto_1

    #@89
    .line 985
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    #@8b
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@8e
    const-string/jumbo v4, "Background call: "

    #@91
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@94
    move-result-object v3

    #@95
    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@97
    invoke-virtual {v4}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->toString()Ljava/lang/String;

    #@9a
    move-result-object v4

    #@9b
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9e
    move-result-object v3

    #@9f
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a2
    move-result-object v3

    #@a3
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    #@a6
    .line 987
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@a8
    invoke-virtual {v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getConnections()Ljava/util/List;

    #@ab
    move-result-object v1

    #@ac
    .line 988
    const/4 v0, 0x0

    #@ad
    invoke-interface {v1}, Ljava/util/List;->size()I

    #@b0
    move-result v2

    #@b1
    :goto_2
    if-ge v0, v2, :cond_2

    #@b3
    .line 989
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@b6
    move-result-object v3

    #@b7
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@ba
    move-result-object v3

    #@bb
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    #@be
    .line 988
    add-int/lit8 v0, v0, 0x1

    #@c0
    goto :goto_2

    #@c1
    .line 966
    :cond_2
    return-void
.end method

.method private escapeChars(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "toEscape"    # Ljava/lang/String;
    .param p2, "source"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2592
    new-instance v1, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 2593
    .local v1, "escaped":Ljava/lang/StringBuilder;
    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    #@8
    move-result-object v3

    #@9
    const/4 v2, 0x0

    #@a
    array-length v4, v3

    #@b
    :goto_0
    if-ge v2, v4, :cond_1

    #@d
    aget-char v0, v3, v2

    #@f
    .line 2594
    .local v0, "c":C
    invoke-static {v0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    #@12
    move-result-object v5

    #@13
    invoke-virtual {p1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    #@16
    move-result v5

    #@17
    if-eqz v5, :cond_0

    #@19
    .line 2595
    const-string/jumbo v5, "\\"

    #@1c
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    .line 2597
    :cond_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@22
    .line 2593
    add-int/lit8 v2, v2, 0x1

    #@24
    goto :goto_0

    #@25
    .line 2600
    .end local v0    # "c":C
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@28
    move-result-object v2

    #@29
    return-object v2
.end method

.method private declared-synchronized findConnection(Lcom/android/ims/ImsCall;)Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    .locals 3
    .param p1, "imsCall"    # Lcom/android/ims/ImsCall;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 1220
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mConnections:Ljava/util/ArrayList;

    #@3
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@6
    move-result-object v1

    #@7
    .local v1, "conn$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@a
    move-result v2

    #@b
    if-eqz v2, :cond_1

    #@d
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@10
    move-result-object v0

    #@11
    check-cast v0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    #@13
    .line 1221
    .local v0, "conn":Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getImsCall()Lcom/android/ims/ImsCall;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@16
    move-result-object v2

    #@17
    if-ne v2, p1, :cond_0

    #@19
    monitor-exit p0

    #@1a
    .line 1222
    return-object v0

    #@1b
    .line 1225
    .end local v0    # "conn":Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    :cond_1
    const/4 v2, 0x0

    #@1c
    monitor-exit p0

    #@1d
    return-object v2

    #@1e
    .end local v1    # "conn$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    #@1f
    monitor-exit p0

    #@20
    throw v2
.end method

.method private getDisconnectCauseFromReasonInfo(Lcom/android/ims/ImsReasonInfo;)I
    .locals 3
    .param p1, "reasonInfo"    # Lcom/android/ims/ImsReasonInfo;

    #@0
    .prologue
    const/16 v2, 0xc

    #@2
    .line 1349
    const/16 v0, 0x24

    #@4
    .line 1352
    .local v0, "cause":I
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->maybeRemapReasonCode(Lcom/android/ims/ImsReasonInfo;)I

    #@7
    move-result v1

    #@8
    .line 1353
    .local v1, "code":I
    sparse-switch v1, :sswitch_data_0

    #@b
    .line 1428
    return v0

    #@c
    .line 1356
    :sswitch_0
    const/16 v2, 0x8

    #@e
    return v2

    #@f
    .line 1359
    :sswitch_1
    const/4 v2, 0x4

    #@10
    return v2

    #@11
    .line 1362
    :sswitch_2
    const/4 v2, 0x3

    #@12
    return v2

    #@13
    .line 1368
    :sswitch_3
    const/16 v2, 0x10

    #@15
    return v2

    #@16
    .line 1371
    :sswitch_4
    const/4 v2, 0x2

    #@17
    return v2

    #@18
    .line 1374
    :sswitch_5
    return v2

    #@19
    .line 1381
    :sswitch_6
    return v2

    #@1a
    .line 1386
    :sswitch_7
    const/16 v2, 0x9

    #@1c
    return v2

    #@1d
    .line 1396
    :sswitch_8
    const/16 v2, 0x12

    #@1f
    return v2

    #@20
    .line 1402
    :sswitch_9
    const/16 v2, 0xd

    #@22
    return v2

    #@23
    .line 1406
    :sswitch_a
    const/16 v2, 0x11

    #@25
    return v2

    #@26
    .line 1409
    :sswitch_b
    const/16 v2, 0x15

    #@28
    return v2

    #@29
    .line 1412
    :sswitch_c
    const/16 v2, 0x34

    #@2b
    return v2

    #@2c
    .line 1415
    :sswitch_d
    const/16 v2, 0x33

    #@2e
    return v2

    #@2f
    .line 1418
    :sswitch_e
    const/16 v2, 0x35

    #@31
    return v2

    #@32
    .line 1421
    :sswitch_f
    const/16 v2, 0x36

    #@34
    return v2

    #@35
    .line 1424
    :sswitch_10
    const/16 v2, 0x37

    #@37
    return v2

    #@38
    .line 1353
    :sswitch_data_0
    .sparse-switch
        0x6a -> :sswitch_8
        0x6f -> :sswitch_a
        0x70 -> :sswitch_a
        0x79 -> :sswitch_8
        0x7a -> :sswitch_8
        0x7b -> :sswitch_8
        0x7c -> :sswitch_8
        0x83 -> :sswitch_8
        0x84 -> :sswitch_8
        0x8f -> :sswitch_3
        0x90 -> :sswitch_8
        0xc9 -> :sswitch_9
        0xca -> :sswitch_9
        0xcb -> :sswitch_9
        0xf1 -> :sswitch_b
        0x141 -> :sswitch_6
        0x14b -> :sswitch_6
        0x14c -> :sswitch_5
        0x14d -> :sswitch_7
        0x14f -> :sswitch_9
        0x151 -> :sswitch_0
        0x152 -> :sswitch_1
        0x154 -> :sswitch_6
        0x155 -> :sswitch_0
        0x160 -> :sswitch_7
        0x162 -> :sswitch_7
        0x169 -> :sswitch_6
        0x16a -> :sswitch_6
        0x1f5 -> :sswitch_2
        0x1fe -> :sswitch_4
        0x3f6 -> :sswitch_c
        0x3f8 -> :sswitch_d
        0x57b -> :sswitch_e
        0x57c -> :sswitch_3
        0x57d -> :sswitch_10
        0x57e -> :sswitch_f
    .end sparse-switch
.end method

.method private getImsManagerIsNullException()Lcom/android/ims/ImsException;
    .locals 3

    #@0
    .prologue
    .line 2633
    new-instance v0, Lcom/android/ims/ImsException;

    #@2
    const-string/jumbo v1, "no ims manager"

    #@5
    const/16 v2, 0x66

    #@7
    invoke-direct {v0, v1, v2}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    #@a
    return-object v0
.end method

.method private getImsService()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 358
    const-string/jumbo v2, "getImsService"

    #@4
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    #@7
    .line 359
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@9
    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getContext()Landroid/content/Context;

    #@c
    move-result-object v2

    #@d
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@f
    invoke-virtual {v3}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getPhoneId()I

    #@12
    move-result v3

    #@13
    invoke-static {v2, v3}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    #@16
    move-result-object v2

    #@17
    iput-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsManager:Lcom/android/ims/ImsManager;

    #@19
    .line 360
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsManager:Lcom/android/ims/ImsManager;

    #@1b
    .line 361
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->createIncomingCallPendingIntent()Landroid/app/PendingIntent;

    #@1e
    move-result-object v3

    #@1f
    .line 362
    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsConnectionStateListener:Lcom/android/ims/ImsConnectionStateListener;

    #@21
    .line 360
    const/4 v5, 0x1

    #@22
    invoke-virtual {v2, v5, v3, v4}, Lcom/android/ims/ImsManager;->open(ILandroid/app/PendingIntent;Lcom/android/ims/ImsConnectionStateListener;)I

    #@25
    move-result v2

    #@26
    iput v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mServiceId:I

    #@28
    .line 364
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsManager:Lcom/android/ims/ImsManager;

    #@2a
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsConfigListener:Lcom/android/ims/ImsConfigListener$Stub;

    #@2c
    invoke-virtual {v2, v3}, Lcom/android/ims/ImsManager;->setImsConfigListener(Lcom/android/ims/ImsConfigListener;)V

    #@2f
    .line 367
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getEcbmInterface()Lcom/android/ims/ImsEcbm;

    #@32
    move-result-object v2

    #@33
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@35
    invoke-virtual {v3}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getImsEcbmStateListener()Lcom/android/ims/ImsEcbmStateListener;

    #@38
    move-result-object v3

    #@39
    invoke-virtual {v2, v3}, Lcom/android/ims/ImsEcbm;->setEcbmStateListener(Lcom/android/ims/ImsEcbmStateListener;)V

    #@3c
    .line 368
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@3e
    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->isInEcm()Z

    #@41
    move-result v2

    #@42
    if-eqz v2, :cond_0

    #@44
    .line 370
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@46
    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->exitEmergencyCallbackMode()V

    #@49
    .line 373
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@4b
    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getContext()Landroid/content/Context;

    #@4e
    move-result-object v2

    #@4f
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@52
    move-result-object v2

    #@53
    .line 374
    const-string/jumbo v3, "preferred_tty_mode"

    #@56
    .line 375
    const/4 v4, 0x0

    #@57
    .line 372
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    #@5a
    move-result v0

    #@5b
    .line 376
    .local v0, "mPreferredTtyMode":I
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsManager:Lcom/android/ims/ImsManager;

    #@5d
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@5f
    invoke-virtual {v3}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getContext()Landroid/content/Context;

    #@62
    move-result-object v3

    #@63
    iget v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mServiceId:I

    #@65
    invoke-virtual {v2, v3, v4, v0, v6}, Lcom/android/ims/ImsManager;->setUiTTYMode(Landroid/content/Context;IILandroid/os/Message;)V

    #@68
    .line 378
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getMultiEndpointInterface()Lcom/android/ims/ImsMultiEndpoint;

    #@6b
    move-result-object v1

    #@6c
    .line 379
    .local v1, "multiEndpoint":Lcom/android/ims/ImsMultiEndpoint;
    if-eqz v1, :cond_1

    #@6e
    .line 381
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@70
    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getExternalCallTracker()Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;

    #@73
    move-result-object v2

    #@74
    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->getExternalCallStateListener()Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker$ExternalCallStateListener;

    #@77
    move-result-object v2

    #@78
    .line 380
    invoke-virtual {v1, v2}, Lcom/android/ims/ImsMultiEndpoint;->setExternalCallStateListener(Lcom/android/ims/ImsExternalCallStateListener;)V

    #@7b
    .line 357
    :cond_1
    return-void
.end method

.method private handleEcmTimer(I)V
    .locals 2
    .param p1, "action"    # I

    #@0
    .prologue
    .line 602
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->handleTimerInEmergencyCallbackMode(I)V

    #@5
    .line 603
    packed-switch p1, :pswitch_data_0

    #@8
    .line 609
    new-instance v0, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v1, "handleEcmTimer, unsupported action "

    #@10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v0

    #@14
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@17
    move-result-object v0

    #@18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object v0

    #@1c
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    #@1f
    .line 601
    :pswitch_0
    return-void

    #@20
    .line 603
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private handleRadioNotAvailable()V
    .locals 0

    #@0
    .prologue
    .line 962
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->pollCallsWhenSafe()V

    #@3
    .line 958
    return-void
.end method

.method private internalClearDisconnected()V
    .locals 1

    #@0
    .prologue
    .line 913
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mRingingCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@2
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->clearDisconnected()V

    #@5
    .line 914
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@7
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->clearDisconnected()V

    #@a
    .line 915
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@c
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->clearDisconnected()V

    #@f
    .line 916
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mHandoverCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@11
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->clearDisconnected()V

    #@14
    .line 912
    return-void
.end method

.method private isPhoneInEcbMode()Z
    .locals 2

    #@0
    .prologue
    .line 1435
    const-string/jumbo v0, "ril.cdma.inecmmode"

    #@3
    const/4 v1, 0x0

    #@4
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    #@7
    move-result v0

    #@8
    return v0
.end method

.method private isWifiConnected()Z
    .locals 6

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 2792
    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@4
    invoke-virtual {v4}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getContext()Landroid/content/Context;

    #@7
    move-result-object v4

    #@8
    .line 2793
    const-string/jumbo v5, "connectivity"

    #@b
    .line 2792
    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@e
    move-result-object v0

    #@f
    check-cast v0, Landroid/net/ConnectivityManager;

    #@11
    .line 2794
    .local v0, "cm":Landroid/net/ConnectivityManager;
    if-eqz v0, :cond_1

    #@13
    .line 2795
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    #@16
    move-result-object v1

    #@17
    .line 2796
    .local v1, "ni":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_1

    #@19
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    #@1c
    move-result v4

    #@1d
    if-eqz v4, :cond_1

    #@1f
    .line 2797
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    #@22
    move-result v4

    #@23
    if-ne v4, v2, :cond_0

    #@25
    :goto_0
    return v2

    #@26
    :cond_0
    move v2, v3

    #@27
    goto :goto_0

    #@28
    .line 2800
    .end local v1    # "ni":Landroid/net/NetworkInfo;
    :cond_1
    return v3
.end method

.method private maybeRemapReasonCode(Lcom/android/ims/ImsReasonInfo;)I
    .locals 5
    .param p1, "reasonInfo"    # Lcom/android/ims/ImsReasonInfo;

    #@0
    .prologue
    .line 1334
    invoke-virtual {p1}, Lcom/android/ims/ImsReasonInfo;->getCode()I

    #@3
    move-result v0

    #@4
    .line 1336
    .local v0, "code":I
    new-instance v1, Landroid/util/Pair;

    #@6
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@9
    move-result-object v3

    #@a
    invoke-virtual {p1}, Lcom/android/ims/ImsReasonInfo;->getExtraMessage()Ljava/lang/String;

    #@d
    move-result-object v4

    #@e
    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    #@11
    .line 1338
    .local v1, "toCheck":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsReasonCodeMap:Ljava/util/Map;

    #@13
    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    #@16
    move-result v3

    #@17
    if-eqz v3, :cond_0

    #@19
    .line 1339
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsReasonCodeMap:Ljava/util/Map;

    #@1b
    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@1e
    move-result-object v3

    #@1f
    check-cast v3, Ljava/lang/Integer;

    #@21
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    #@24
    move-result v2

    #@25
    .line 1341
    .local v2, "toCode":I
    new-instance v3, Ljava/lang/StringBuilder;

    #@27
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@2a
    const-string/jumbo v4, "maybeRemapReasonCode : fromCode = "

    #@2d
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v3

    #@31
    invoke-virtual {p1}, Lcom/android/ims/ImsReasonInfo;->getCode()I

    #@34
    move-result v4

    #@35
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@38
    move-result-object v3

    #@39
    const-string/jumbo v4, " ; message = "

    #@3c
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v3

    #@40
    .line 1342
    invoke-virtual {p1}, Lcom/android/ims/ImsReasonInfo;->getExtraMessage()Ljava/lang/String;

    #@43
    move-result-object v4

    #@44
    .line 1341
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v3

    #@48
    .line 1342
    const-string/jumbo v4, " ; toCode = "

    #@4b
    .line 1341
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v3

    #@4f
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@52
    move-result-object v3

    #@53
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@56
    move-result-object v3

    #@57
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    #@5a
    .line 1343
    return v2

    #@5b
    .line 1345
    .end local v2    # "toCode":I
    :cond_0
    return v0
.end method

.method private maybeSetVideoCallProvider(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;Lcom/android/ims/ImsCall;)V
    .locals 4
    .param p1, "conn"    # Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    .param p2, "imsCall"    # Lcom/android/ims/ImsCall;

    #@0
    .prologue
    .line 1312
    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getVideoProvider()Landroid/telecom/Connection$VideoProvider;

    #@3
    move-result-object v0

    #@4
    .line 1313
    .local v0, "connVideoProvider":Landroid/telecom/Connection$VideoProvider;
    if-nez v0, :cond_0

    #@6
    invoke-virtual {p2}, Lcom/android/ims/ImsCall;->getCallSession()Lcom/android/ims/internal/ImsCallSession;

    #@9
    move-result-object v2

    #@a
    invoke-virtual {v2}, Lcom/android/ims/internal/ImsCallSession;->getVideoCallProvider()Lcom/android/ims/internal/IImsVideoCallProvider;

    #@d
    move-result-object v2

    #@e
    if-nez v2, :cond_1

    #@10
    .line 1314
    :cond_0
    return-void

    #@11
    .line 1318
    :cond_1
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->setVideoCallProvider(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;Lcom/android/ims/ImsCall;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@14
    .line 1311
    :goto_0
    return-void

    #@15
    .line 1319
    :catch_0
    move-exception v1

    #@16
    .line 1320
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    #@18
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@1b
    const-string/jumbo v3, "maybeSetVideoCallProvider: exception "

    #@1e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v2

    #@22
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v2

    #@26
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@29
    move-result-object v2

    #@2a
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->loge(Ljava/lang/String;)V

    #@2d
    goto :goto_0
.end method

.method private modifyVideoCall(Lcom/android/ims/ImsCall;I)V
    .locals 5
    .param p1, "imsCall"    # Lcom/android/ims/ImsCall;
    .param p2, "newVideoState"    # I

    #@0
    .prologue
    .line 2718
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->findConnection(Lcom/android/ims/ImsCall;)Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    #@3
    move-result-object v0

    #@4
    .line 2719
    .local v0, "conn":Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    if-eqz v0, :cond_0

    #@6
    .line 2720
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getVideoState()I

    #@9
    move-result v1

    #@a
    .line 2721
    .local v1, "oldVideoState":I
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getVideoProvider()Landroid/telecom/Connection$VideoProvider;

    #@d
    move-result-object v2

    #@e
    if-eqz v2, :cond_0

    #@10
    .line 2722
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getVideoProvider()Landroid/telecom/Connection$VideoProvider;

    #@13
    move-result-object v2

    #@14
    .line 2723
    new-instance v3, Landroid/telecom/VideoProfile;

    #@16
    invoke-direct {v3, v1}, Landroid/telecom/VideoProfile;-><init>(I)V

    #@19
    new-instance v4, Landroid/telecom/VideoProfile;

    #@1b
    invoke-direct {v4, p2}, Landroid/telecom/VideoProfile;-><init>(I)V

    #@1e
    .line 2722
    invoke-virtual {v2, v3, v4}, Landroid/telecom/Connection$VideoProvider;->onSendSessionModifyRequest(Landroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V

    #@21
    .line 2717
    .end local v1    # "oldVideoState":I
    :cond_0
    return-void
.end method

.method private notifyPhoneStateChanged(Lcom/android/internal/telephony/PhoneConstants$State;Lcom/android/internal/telephony/PhoneConstants$State;)V
    .locals 3
    .param p1, "oldState"    # Lcom/android/internal/telephony/PhoneConstants$State;
    .param p2, "newState"    # Lcom/android/internal/telephony/PhoneConstants$State;

    #@0
    .prologue
    .line 2707
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhoneStateListeners:Ljava/util/List;

    #@2
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@5
    move-result-object v1

    #@6
    .local v1, "listener$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@9
    move-result v2

    #@a
    if-eqz v2, :cond_0

    #@c
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$PhoneStateListener;

    #@12
    .line 2708
    .local v0, "listener":Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$PhoneStateListener;
    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$PhoneStateListener;->onPhoneStateChanged(Lcom/android/internal/telephony/PhoneConstants$State;Lcom/android/internal/telephony/PhoneConstants$State;)V

    #@15
    goto :goto_0

    #@16
    .line 2705
    .end local v0    # "listener":Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$PhoneStateListener;
    :cond_0
    return-void
.end method

.method private onDataEnabledChanged(ZI)V
    .locals 9
    .param p1, "enabled"    # Z
    .param p2, "reason"    # I

    #@0
    .prologue
    const/4 v8, 0x3

    #@1
    const/4 v7, 0x0

    #@2
    .line 2736
    new-instance v5, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    const-string/jumbo v6, "onDataEnabledChanged: enabled="

    #@a
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    move-result-object v5

    #@e
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@11
    move-result-object v5

    #@12
    const-string/jumbo v6, ", reason="

    #@15
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v5

    #@19
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v5

    #@1d
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@20
    move-result-object v5

    #@21
    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    #@24
    .line 2737
    iget-object v5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@26
    invoke-virtual {v5}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getContext()Landroid/content/Context;

    #@29
    move-result-object v5

    #@2a
    iget-object v6, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@2c
    invoke-virtual {v6}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getPhoneId()I

    #@2f
    move-result v6

    #@30
    invoke-static {v5, v6}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    #@33
    move-result-object v5

    #@34
    invoke-virtual {v5, p1}, Lcom/android/ims/ImsManager;->setDataEnabled(Z)V

    #@37
    .line 2739
    if-nez p1, :cond_6

    #@39
    .line 2741
    if-ne p2, v8, :cond_2

    #@3b
    .line 2742
    const/16 v4, 0x57d

    #@3d
    .line 2753
    .local v4, "reasonCode":I
    :goto_0
    iget-object v5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mConnections:Ljava/util/ArrayList;

    #@3f
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@42
    move-result-object v1

    #@43
    .local v1, "conn$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@46
    move-result v5

    #@47
    if-eqz v5, :cond_6

    #@49
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@4c
    move-result-object v0

    #@4d
    check-cast v0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    #@4f
    .line 2754
    .local v0, "conn":Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getImsCall()Lcom/android/ims/ImsCall;

    #@52
    move-result-object v3

    #@53
    .line 2755
    .local v3, "imsCall":Lcom/android/ims/ImsCall;
    if-eqz v3, :cond_0

    #@55
    invoke-virtual {v3}, Lcom/android/ims/ImsCall;->isVideoCall()Z

    #@58
    move-result v5

    #@59
    if-eqz v5, :cond_0

    #@5b
    invoke-virtual {v3}, Lcom/android/ims/ImsCall;->isWifiCall()Z

    #@5e
    move-result v5

    #@5f
    if-nez v5, :cond_0

    #@61
    .line 2756
    invoke-virtual {v0, v8}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->hasCapabilities(I)Z

    #@64
    move-result v5

    #@65
    if-eqz v5, :cond_5

    #@67
    .line 2762
    const/16 v5, 0x57e

    #@69
    if-ne v4, v5, :cond_4

    #@6b
    .line 2763
    const-string/jumbo v5, "android.telephony.event.EVENT_DOWNGRADE_DATA_DISABLED"

    #@6e
    invoke-virtual {v0, v5, v7}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->onConnectionEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    #@71
    .line 2769
    :cond_1
    :goto_2
    const/4 v5, 0x0

    #@72
    invoke-direct {p0, v3, v5}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->modifyVideoCall(Lcom/android/ims/ImsCall;I)V

    #@75
    goto :goto_1

    #@76
    .line 2743
    .end local v0    # "conn":Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    .end local v1    # "conn$iterator":Ljava/util/Iterator;
    .end local v3    # "imsCall":Lcom/android/ims/ImsCall;
    .end local v4    # "reasonCode":I
    :cond_2
    const/4 v5, 0x2

    #@77
    if-ne p2, v5, :cond_3

    #@79
    .line 2744
    const/16 v4, 0x57e

    #@7b
    .restart local v4    # "reasonCode":I
    goto :goto_0

    #@7c
    .line 2747
    .end local v4    # "reasonCode":I
    :cond_3
    const/16 v4, 0x57e

    #@7e
    .restart local v4    # "reasonCode":I
    goto :goto_0

    #@7f
    .line 2765
    .restart local v0    # "conn":Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    .restart local v1    # "conn$iterator":Ljava/util/Iterator;
    .restart local v3    # "imsCall":Lcom/android/ims/ImsCall;
    :cond_4
    const/16 v5, 0x57d

    #@81
    if-ne v4, v5, :cond_1

    #@83
    .line 2767
    const-string/jumbo v5, "android.telephony.event.EVENT_DOWNGRADE_DATA_LIMIT_REACHED"

    #@86
    .line 2766
    invoke-virtual {v0, v5, v7}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->onConnectionEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    #@89
    goto :goto_2

    #@8a
    .line 2774
    :cond_5
    const/16 v5, 0x1f5

    #@8c
    :try_start_0
    invoke-virtual {v3, v5, v4}, Lcom/android/ims/ImsCall;->terminate(II)V
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    #@8f
    goto :goto_1

    #@90
    .line 2775
    :catch_0
    move-exception v2

    #@91
    .line 2776
    .local v2, "ie":Lcom/android/ims/ImsException;
    new-instance v5, Ljava/lang/StringBuilder;

    #@93
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@96
    const-string/jumbo v6, "Couldn\'t terminate call "

    #@99
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9c
    move-result-object v5

    #@9d
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@a0
    move-result-object v5

    #@a1
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a4
    move-result-object v5

    #@a5
    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->loge(Ljava/lang/String;)V

    #@a8
    goto :goto_1

    #@a9
    .line 2785
    .end local v0    # "conn":Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    .end local v1    # "conn$iterator":Ljava/util/Iterator;
    .end local v2    # "ie":Lcom/android/ims/ImsException;
    .end local v3    # "imsCall":Lcom/android/ims/ImsCall;
    .end local v4    # "reasonCode":I
    :cond_6
    iget-object v5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@ab
    invoke-virtual {v5}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getContext()Landroid/content/Context;

    #@ae
    move-result-object v5

    #@af
    iget-object v6, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@b1
    invoke-virtual {v6}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getPhoneId()I

    #@b4
    move-result v6

    #@b5
    const/4 v7, 0x1

    #@b6
    invoke-static {v5, v6, v7}, Lcom/android/ims/ImsManager;->updateImsServiceConfig(Landroid/content/Context;IZ)V

    #@b9
    .line 2734
    return-void
.end method

.method private processCallStateChange(Lcom/android/ims/ImsCall;Lcom/android/internal/telephony/Call$State;I)V
    .locals 2
    .param p1, "imsCall"    # Lcom/android/ims/ImsCall;
    .param p2, "state"    # Lcom/android/internal/telephony/Call$State;
    .param p3, "cause"    # I

    #@0
    .prologue
    .line 1257
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "processCallStateChange "

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v0

    #@10
    const-string/jumbo v1, " state="

    #@13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v0

    #@17
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v0

    #@1b
    const-string/jumbo v1, " cause="

    #@1e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v0

    #@22
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@25
    move-result-object v0

    #@26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@29
    move-result-object v0

    #@2a
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    #@2d
    .line 1262
    const/4 v0, 0x0

    #@2e
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->processCallStateChange(Lcom/android/ims/ImsCall;Lcom/android/internal/telephony/Call$State;IZ)V

    #@31
    .line 1256
    return-void
.end method

.method private processCallStateChange(Lcom/android/ims/ImsCall;Lcom/android/internal/telephony/Call$State;IZ)V
    .locals 4
    .param p1, "imsCall"    # Lcom/android/ims/ImsCall;
    .param p2, "state"    # Lcom/android/internal/telephony/Call$State;
    .param p3, "cause"    # I
    .param p4, "ignoreState"    # Z

    #@0
    .prologue
    .line 1268
    new-instance v2, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v3, "processCallStateChange state="

    #@8
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v2

    #@c
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v2

    #@10
    const-string/jumbo v3, " cause="

    #@13
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v2

    #@17
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v2

    #@1b
    .line 1269
    const-string/jumbo v3, " ignoreState="

    #@1e
    .line 1268
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v2

    #@22
    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@25
    move-result-object v2

    #@26
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@29
    move-result-object v2

    #@2a
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    #@2d
    .line 1272
    if-nez p1, :cond_0

    #@2f
    return-void

    #@30
    .line 1274
    :cond_0
    const/4 v0, 0x0

    #@31
    .line 1275
    .local v0, "changed":Z
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->findConnection(Lcom/android/ims/ImsCall;)Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    #@34
    move-result-object v1

    #@35
    .line 1277
    .local v1, "conn":Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    if-nez v1, :cond_1

    #@37
    .line 1279
    return-void

    #@38
    .line 1287
    :cond_1
    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->updateMediaCapabilities(Lcom/android/ims/ImsCall;)Z

    #@3b
    .line 1288
    if-eqz p4, :cond_2

    #@3d
    .line 1289
    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->updateAddressDisplay(Lcom/android/ims/ImsCall;)Z

    #@40
    .line 1290
    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->updateExtras(Lcom/android/ims/ImsCall;)Z

    #@43
    .line 1292
    invoke-direct {p0, v1, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->maybeSetVideoCallProvider(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;Lcom/android/ims/ImsCall;)V

    #@46
    .line 1293
    return-void

    #@47
    .line 1296
    :cond_2
    invoke-virtual {v1, p1, p2}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->update(Lcom/android/ims/ImsCall;Lcom/android/internal/telephony/Call$State;)Z

    #@4a
    move-result v0

    #@4b
    .line 1297
    .local v0, "changed":Z
    sget-object v2, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    #@4d
    if-ne p2, v2, :cond_3

    #@4f
    .line 1298
    invoke-virtual {v1, p3}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->onDisconnect(I)Z

    #@52
    move-result v2

    #@53
    if-nez v2, :cond_4

    #@55
    .line 1300
    .end local v0    # "changed":Z
    :goto_0
    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@58
    move-result-object v2

    #@59
    invoke-virtual {v2, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->detach(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)V

    #@5c
    .line 1301
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->removeConnection(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)V

    #@5f
    .line 1304
    :cond_3
    if-eqz v0, :cond_6

    #@61
    .line 1305
    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@64
    move-result-object v2

    #@65
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mHandoverCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@67
    if-ne v2, v3, :cond_5

    #@69
    return-void

    #@6a
    .line 1298
    .restart local v0    # "changed":Z
    :cond_4
    const/4 v0, 0x1

    #@6b
    .local v0, "changed":Z
    goto :goto_0

    #@6c
    .line 1306
    .end local v0    # "changed":Z
    :cond_5
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->updatePhoneState()V

    #@6f
    .line 1307
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@71
    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->notifyPreciseCallStateChanged()V

    #@74
    .line 1266
    :cond_6
    return-void
.end method

.method private declared-synchronized removeConnection(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)V
    .locals 5
    .param p1, "conn"    # Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 1229
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mConnections:Ljava/util/ArrayList;

    #@3
    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@6
    .line 1231
    iget-boolean v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mIsInEmergencyCall:Z

    #@8
    if-eqz v3, :cond_2

    #@a
    .line 1232
    const/4 v2, 0x0

    #@b
    .line 1234
    .local v2, "isEmergencyCallInList":Z
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mConnections:Ljava/util/ArrayList;

    #@d
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@10
    move-result-object v1

    #@11
    .local v1, "imsPhoneConnection$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@14
    move-result v3

    #@15
    if-eqz v3, :cond_1

    #@17
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1a
    move-result-object v0

    #@1b
    check-cast v0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    #@1d
    .line 1235
    .local v0, "imsPhoneConnection":Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    if-eqz v0, :cond_0

    #@1f
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->isEmergency()Z

    #@22
    move-result v3

    #@23
    if-eqz v3, :cond_0

    #@25
    .line 1236
    const/4 v2, 0x1

    #@26
    .line 1241
    .end local v0    # "imsPhoneConnection":Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    :cond_1
    if-nez v2, :cond_2

    #@28
    .line 1242
    const/4 v3, 0x0

    #@29
    iput-boolean v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mIsInEmergencyCall:Z

    #@2b
    .line 1243
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@2d
    const/4 v4, 0x0

    #@2e
    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/imsphone/ImsPhone;->sendEmergencyCallStateChange(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@31
    .end local v1    # "imsPhoneConnection$iterator":Ljava/util/Iterator;
    .end local v2    # "isEmergencyCallInList":Z
    :cond_2
    monitor-exit p0

    #@32
    .line 1228
    return-void

    #@33
    :catchall_0
    move-exception v3

    #@34
    monitor-exit p0

    #@35
    throw v3
.end method

.method private setVideoCallProvider(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;Lcom/android/ims/ImsCall;)V
    .locals 3
    .param p1, "conn"    # Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    .param p2, "imsCall"    # Lcom/android/ims/ImsCall;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 2524
    invoke-virtual {p2}, Lcom/android/ims/ImsCall;->getCallSession()Lcom/android/ims/internal/ImsCallSession;

    #@3
    move-result-object v2

    #@4
    invoke-virtual {v2}, Lcom/android/ims/internal/ImsCallSession;->getVideoCallProvider()Lcom/android/ims/internal/IImsVideoCallProvider;

    #@7
    move-result-object v0

    #@8
    .line 2525
    .local v0, "imsVideoCallProvider":Lcom/android/ims/internal/IImsVideoCallProvider;
    if-eqz v0, :cond_0

    #@a
    .line 2527
    new-instance v1, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;

    #@c
    invoke-direct {v1, v0}, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;-><init>(Lcom/android/ims/internal/IImsVideoCallProvider;)V

    #@f
    .line 2528
    .local v1, "imsVideoCallProviderWrapper":Lcom/android/ims/internal/ImsVideoCallProviderWrapper;
    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->setVideoProvider(Landroid/telecom/Connection$VideoProvider;)V

    #@12
    .line 2530
    const/16 v2, 0x16

    #@14
    .line 2529
    invoke-virtual {v1, p0, v2, p2}, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->registerForDataUsageUpdate(Landroid/os/Handler;ILjava/lang/Object;)V

    #@17
    .line 2531
    invoke-virtual {v1, p1}, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->addImsVideoProviderCallback(Lcom/android/ims/internal/ImsVideoCallProviderWrapper$ImsVideoProviderWrapperCallback;)V

    #@1a
    .line 2522
    .end local v1    # "imsVideoCallProviderWrapper":Lcom/android/ims/internal/ImsVideoCallProviderWrapper;
    :cond_0
    return-void
.end method

.method private shouldDisconnectActiveCallOnAnswer(Lcom/android/ims/ImsCall;Lcom/android/ims/ImsCall;)Z
    .locals 7
    .param p1, "activeCall"    # Lcom/android/ims/ImsCall;
    .param p2, "incomingCall"    # Lcom/android/ims/ImsCall;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 2652
    iget-boolean v5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mDropVideoCallWhenAnsweringAudioCall:Z

    #@3
    if-nez v5, :cond_0

    #@5
    .line 2653
    return v4

    #@6
    .line 2656
    :cond_0
    invoke-virtual {p1}, Lcom/android/ims/ImsCall;->isVideoCall()Z

    #@9
    move-result v5

    #@a
    if-nez v5, :cond_2

    #@c
    .line 2657
    iget-boolean v5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mTreatDowngradedVideoCallsAsVideoCalls:Z

    #@e
    if-eqz v5, :cond_3

    #@10
    invoke-virtual {p1}, Lcom/android/ims/ImsCall;->wasVideoCall()Z

    #@13
    move-result v1

    #@14
    .line 2658
    :goto_0
    invoke-virtual {p1}, Lcom/android/ims/ImsCall;->isWifiCall()Z

    #@17
    move-result v0

    #@18
    .line 2659
    .local v0, "isActiveCallOnWifi":Z
    iget-object v5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsManager:Lcom/android/ims/ImsManager;

    #@1a
    iget-object v5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@1c
    invoke-virtual {v5}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getContext()Landroid/content/Context;

    #@1f
    move-result-object v5

    #@20
    invoke-static {v5}, Lcom/android/ims/ImsManager;->isWfcEnabledByPlatform(Landroid/content/Context;)Z

    #@23
    move-result v5

    #@24
    if-eqz v5, :cond_4

    #@26
    .line 2660
    iget-object v5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsManager:Lcom/android/ims/ImsManager;

    #@28
    iget-object v5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@2a
    invoke-virtual {v5}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getContext()Landroid/content/Context;

    #@2d
    move-result-object v5

    #@2e
    invoke-static {v5}, Lcom/android/ims/ImsManager;->isWfcEnabledByUser(Landroid/content/Context;)Z

    #@31
    move-result v3

    #@32
    .line 2661
    :goto_1
    invoke-virtual {p2}, Lcom/android/ims/ImsCall;->isVideoCall()Z

    #@35
    move-result v5

    #@36
    if-eqz v5, :cond_5

    #@38
    const/4 v2, 0x0

    #@39
    .line 2662
    .local v2, "isIncomingCallAudio":Z
    :goto_2
    new-instance v5, Ljava/lang/StringBuilder;

    #@3b
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@3e
    const-string/jumbo v6, "shouldDisconnectActiveCallOnAnswer : isActiveCallVideo="

    #@41
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v5

    #@45
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@48
    move-result-object v5

    #@49
    .line 2663
    const-string/jumbo v6, " isActiveCallOnWifi="

    #@4c
    .line 2662
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v5

    #@50
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@53
    move-result-object v5

    #@54
    .line 2663
    const-string/jumbo v6, " isIncomingCallAudio="

    #@57
    .line 2662
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v5

    #@5b
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@5e
    move-result-object v5

    #@5f
    .line 2664
    const-string/jumbo v6, " isVowifiEnabled="

    #@62
    .line 2662
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@65
    move-result-object v5

    #@66
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@69
    move-result-object v5

    #@6a
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6d
    move-result-object v5

    #@6e
    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    #@71
    .line 2666
    if-eqz v1, :cond_1

    #@73
    if-eqz v0, :cond_1

    #@75
    if-eqz v2, :cond_1

    #@77
    if-eqz v3, :cond_6

    #@79
    :cond_1
    :goto_3
    return v4

    #@7a
    .line 2656
    .end local v0    # "isActiveCallOnWifi":Z
    .end local v2    # "isIncomingCallAudio":Z
    :cond_2
    const/4 v1, 0x1

    #@7b
    .local v1, "isActiveCallVideo":Z
    goto :goto_0

    #@7c
    .line 2657
    .end local v1    # "isActiveCallVideo":Z
    :cond_3
    const/4 v1, 0x0

    #@7d
    .restart local v1    # "isActiveCallVideo":Z
    goto :goto_0

    #@7e
    .line 2659
    .end local v1    # "isActiveCallVideo":Z
    .restart local v0    # "isActiveCallOnWifi":Z
    :cond_4
    const/4 v3, 0x0

    #@7f
    .local v3, "isVoWifiEnabled":Z
    goto :goto_1

    #@80
    .line 2661
    .end local v3    # "isVoWifiEnabled":Z
    :cond_5
    const/4 v2, 0x1

    #@81
    .restart local v2    # "isIncomingCallAudio":Z
    goto :goto_2

    #@82
    .line 2666
    :cond_6
    const/4 v4, 0x1

    #@83
    goto :goto_3
.end method

.method private switchAfterConferenceSuccess()V
    .locals 2

    #@0
    .prologue
    .line 761
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "switchAfterConferenceSuccess fg ="

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@e
    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v0

    #@16
    .line 762
    const-string/jumbo v1, ", bg = "

    #@19
    .line 761
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v0

    #@1d
    .line 762
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@1f
    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    #@22
    move-result-object v1

    #@23
    .line 761
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v0

    #@27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2a
    move-result-object v0

    #@2b
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    #@2e
    .line 764
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@30
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    #@33
    move-result-object v0

    #@34
    sget-object v1, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    #@36
    if-ne v0, v1, :cond_0

    #@38
    .line 765
    const-string/jumbo v0, "switchAfterConferenceSuccess"

    #@3b
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    #@3e
    .line 766
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@40
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@42
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->switchWith(Lcom/android/internal/telephony/imsphone/ImsPhoneCall;)V

    #@45
    .line 760
    :cond_0
    return-void
.end method

.method private transferHandoverConnections(Lcom/android/internal/telephony/imsphone/ImsPhoneCall;)V
    .locals 4
    .param p1, "call"    # Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@0
    .prologue
    .line 2232
    iget-object v2, p1, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mConnections:Ljava/util/ArrayList;

    #@2
    if-eqz v2, :cond_0

    #@4
    .line 2233
    iget-object v2, p1, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mConnections:Ljava/util/ArrayList;

    #@6
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@9
    move-result-object v1

    #@a
    .local v1, "c$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@d
    move-result v2

    #@e
    if-eqz v2, :cond_0

    #@10
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@13
    move-result-object v0

    #@14
    check-cast v0, Lcom/android/internal/telephony/Connection;

    #@16
    .line 2234
    .local v0, "c":Lcom/android/internal/telephony/Connection;
    iget-object v2, p1, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mState:Lcom/android/internal/telephony/Call$State;

    #@18
    iput-object v2, v0, Lcom/android/internal/telephony/Connection;->mPreHandoverState:Lcom/android/internal/telephony/Call$State;

    #@1a
    .line 2235
    new-instance v2, Ljava/lang/StringBuilder;

    #@1c
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@1f
    const-string/jumbo v3, "Connection state before handover is "

    #@22
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v2

    #@26
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getStateBeforeHandover()Lcom/android/internal/telephony/Call$State;

    #@29
    move-result-object v3

    #@2a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v2

    #@2e
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@31
    move-result-object v2

    #@32
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    #@35
    goto :goto_0

    #@36
    .line 2238
    .end local v0    # "c":Lcom/android/internal/telephony/Connection;
    .end local v1    # "c$iterator":Ljava/util/Iterator;
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mHandoverCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@38
    iget-object v2, v2, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mConnections:Ljava/util/ArrayList;

    #@3a
    if-nez v2, :cond_2

    #@3c
    .line 2239
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mHandoverCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@3e
    iget-object v3, p1, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mConnections:Ljava/util/ArrayList;

    #@40
    iput-object v3, v2, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mConnections:Ljava/util/ArrayList;

    #@42
    .line 2243
    :goto_1
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mHandoverCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@44
    iget-object v2, v2, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mConnections:Ljava/util/ArrayList;

    #@46
    if-eqz v2, :cond_3

    #@48
    .line 2244
    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getImsCall()Lcom/android/ims/ImsCall;

    #@4b
    move-result-object v2

    #@4c
    if-eqz v2, :cond_1

    #@4e
    .line 2245
    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getImsCall()Lcom/android/ims/ImsCall;

    #@51
    move-result-object v2

    #@52
    invoke-virtual {v2}, Lcom/android/ims/ImsCall;->close()V

    #@55
    .line 2247
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mHandoverCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@57
    iget-object v2, v2, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mConnections:Ljava/util/ArrayList;

    #@59
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@5c
    move-result-object v1

    #@5d
    .restart local v1    # "c$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@60
    move-result v2

    #@61
    if-eqz v2, :cond_3

    #@63
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@66
    move-result-object v0

    #@67
    check-cast v0, Lcom/android/internal/telephony/Connection;

    #@69
    .restart local v0    # "c":Lcom/android/internal/telephony/Connection;
    move-object v2, v0

    #@6a
    .line 2248
    check-cast v2, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    #@6c
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mHandoverCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@6e
    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->changeParent(Lcom/android/internal/telephony/imsphone/ImsPhoneCall;)V

    #@71
    .line 2249
    check-cast v0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    #@73
    .end local v0    # "c":Lcom/android/internal/telephony/Connection;
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->releaseWakeLock()V

    #@76
    goto :goto_2

    #@77
    .line 2241
    .end local v1    # "c$iterator":Ljava/util/Iterator;
    :cond_2
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mHandoverCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@79
    iget-object v2, v2, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mConnections:Ljava/util/ArrayList;

    #@7b
    iget-object v3, p1, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mConnections:Ljava/util/ArrayList;

    #@7d
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    #@80
    goto :goto_1

    #@81
    .line 2252
    :cond_3
    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    #@84
    move-result-object v2

    #@85
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    #@88
    move-result v2

    #@89
    if-eqz v2, :cond_4

    #@8b
    .line 2253
    new-instance v2, Ljava/lang/StringBuilder;

    #@8d
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@90
    const-string/jumbo v3, "Call is alive and state is "

    #@93
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@96
    move-result-object v2

    #@97
    iget-object v3, p1, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mState:Lcom/android/internal/telephony/Call$State;

    #@99
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@9c
    move-result-object v2

    #@9d
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a0
    move-result-object v2

    #@a1
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    #@a4
    .line 2254
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mHandoverCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@a6
    iget-object v3, p1, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mState:Lcom/android/internal/telephony/Call$State;

    #@a8
    iput-object v3, v2, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mState:Lcom/android/internal/telephony/Call$State;

    #@aa
    .line 2256
    :cond_4
    iget-object v2, p1, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mConnections:Ljava/util/ArrayList;

    #@ac
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    #@af
    .line 2257
    sget-object v2, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    #@b1
    iput-object v2, p1, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mState:Lcom/android/internal/telephony/Call$State;

    #@b3
    .line 2231
    return-void
.end method

.method private updatePhoneState()V
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 921
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    #@3
    .line 923
    .local v1, "oldState":Lcom/android/internal/telephony/PhoneConstants$State;
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingMO:Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    #@5
    if-eqz v2, :cond_2

    #@7
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingMO:Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    #@9
    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getState()Lcom/android/internal/telephony/Call$State;

    #@c
    move-result-object v2

    #@d
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    #@10
    move-result v2

    #@11
    if-eqz v2, :cond_2

    #@13
    const/4 v0, 0x0

    #@14
    .line 925
    .local v0, "isPendingMOIdle":Z
    :goto_0
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mRingingCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@16
    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->isRinging()Z

    #@19
    move-result v2

    #@1a
    if-eqz v2, :cond_3

    #@1c
    .line 926
    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    #@1e
    iput-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    #@20
    .line 934
    :goto_1
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    #@22
    sget-object v3, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    #@24
    if-ne v2, v3, :cond_5

    #@26
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    #@28
    if-eq v1, v2, :cond_5

    #@2a
    .line 935
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mVoiceCallEndedRegistrants:Landroid/os/RegistrantList;

    #@2c
    .line 936
    new-instance v3, Landroid/os/AsyncResult;

    #@2e
    invoke-direct {v3, v4, v4, v4}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    #@31
    .line 935
    invoke-virtual {v2, v3}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    #@34
    .line 943
    :cond_0
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    #@36
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@39
    const-string/jumbo v3, "updatePhoneState pendingMo = "

    #@3c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v3

    #@40
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingMO:Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    #@42
    if-nez v2, :cond_6

    #@44
    const-string/jumbo v2, "null"

    #@47
    :goto_3
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v2

    #@4b
    .line 944
    const-string/jumbo v3, ", fg= "

    #@4e
    .line 943
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@51
    move-result-object v2

    #@52
    .line 944
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@54
    invoke-virtual {v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    #@57
    move-result-object v3

    #@58
    .line 943
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@5b
    move-result-object v2

    #@5c
    .line 944
    const-string/jumbo v3, "("

    #@5f
    .line 943
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@62
    move-result-object v2

    #@63
    .line 945
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@65
    invoke-virtual {v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getConnections()Ljava/util/List;

    #@68
    move-result-object v3

    #@69
    invoke-interface {v3}, Ljava/util/List;->size()I

    #@6c
    move-result v3

    #@6d
    .line 943
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@70
    move-result-object v2

    #@71
    .line 945
    const-string/jumbo v3, "), bg= "

    #@74
    .line 943
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@77
    move-result-object v2

    #@78
    .line 945
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@7a
    invoke-virtual {v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    #@7d
    move-result-object v3

    #@7e
    .line 943
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@81
    move-result-object v2

    #@82
    .line 946
    const-string/jumbo v3, "("

    #@85
    .line 943
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@88
    move-result-object v2

    #@89
    .line 946
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@8b
    invoke-virtual {v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getConnections()Ljava/util/List;

    #@8e
    move-result-object v3

    #@8f
    invoke-interface {v3}, Ljava/util/List;->size()I

    #@92
    move-result v3

    #@93
    .line 943
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@96
    move-result-object v2

    #@97
    .line 946
    const-string/jumbo v3, ")"

    #@9a
    .line 943
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9d
    move-result-object v2

    #@9e
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a1
    move-result-object v2

    #@a2
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    #@a5
    .line 947
    new-instance v2, Ljava/lang/StringBuilder;

    #@a7
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@aa
    const-string/jumbo v3, "updatePhoneState oldState="

    #@ad
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b0
    move-result-object v2

    #@b1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@b4
    move-result-object v2

    #@b5
    const-string/jumbo v3, ", newState="

    #@b8
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bb
    move-result-object v2

    #@bc
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    #@be
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@c1
    move-result-object v2

    #@c2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c5
    move-result-object v2

    #@c6
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    #@c9
    .line 950
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    #@cb
    if-eq v2, v1, :cond_1

    #@cd
    .line 951
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@cf
    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->notifyPhoneStateChanged()V

    #@d2
    .line 952
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    #@d4
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@d6
    invoke-virtual {v3}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getPhoneId()I

    #@d9
    move-result v3

    #@da
    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    #@dc
    invoke-virtual {v2, v3, v4}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writePhoneState(ILcom/android/internal/telephony/PhoneConstants$State;)V

    #@df
    .line 953
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    #@e1
    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->notifyPhoneStateChanged(Lcom/android/internal/telephony/PhoneConstants$State;Lcom/android/internal/telephony/PhoneConstants$State;)V

    #@e4
    .line 920
    :cond_1
    return-void

    #@e5
    .line 923
    .end local v0    # "isPendingMOIdle":Z
    :cond_2
    const/4 v0, 0x1

    #@e6
    .restart local v0    # "isPendingMOIdle":Z
    goto/16 :goto_0

    #@e8
    .line 927
    :cond_3
    if-eqz v0, :cond_4

    #@ea
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@ec
    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->isIdle()Z

    #@ef
    move-result v2

    #@f0
    if-eqz v2, :cond_4

    #@f2
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@f4
    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->isIdle()Z

    #@f7
    move-result v2

    #@f8
    if-eqz v2, :cond_4

    #@fa
    .line 931
    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    #@fc
    iput-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    #@fe
    goto/16 :goto_1

    #@100
    .line 929
    :cond_4
    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    #@102
    iput-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    #@104
    goto/16 :goto_1

    #@106
    .line 937
    :cond_5
    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    #@108
    if-ne v1, v2, :cond_0

    #@10a
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    #@10c
    if-eq v1, v2, :cond_0

    #@10e
    .line 938
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mVoiceCallStartedRegistrants:Landroid/os/RegistrantList;

    #@110
    .line 939
    new-instance v3, Landroid/os/AsyncResult;

    #@112
    invoke-direct {v3, v4, v4, v4}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    #@115
    .line 938
    invoke-virtual {v2, v3}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    #@118
    goto/16 :goto_2

    #@11a
    .line 944
    :cond_6
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingMO:Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    #@11c
    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getState()Lcom/android/internal/telephony/Call$State;

    #@11f
    move-result-object v2

    #@120
    goto/16 :goto_3
.end method


# virtual methods
.method public acceptCall(I)V
    .locals 9
    .param p1, "videoState"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 695
    const-string/jumbo v5, "acceptCall"

    #@4
    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    #@7
    .line 697
    iget-object v5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@9
    invoke-virtual {v5}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    #@c
    move-result-object v5

    #@d
    invoke-virtual {v5}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    #@10
    move-result v5

    #@11
    if-eqz v5, :cond_0

    #@13
    .line 698
    iget-object v5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@15
    invoke-virtual {v5}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    #@18
    move-result-object v5

    #@19
    invoke-virtual {v5}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    #@1c
    move-result v5

    #@1d
    .line 697
    if-eqz v5, :cond_0

    #@1f
    .line 699
    new-instance v5, Lcom/android/internal/telephony/CallStateException;

    #@21
    const-string/jumbo v6, "cannot accept call"

    #@24
    invoke-direct {v5, v6}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    #@27
    throw v5

    #@28
    .line 702
    :cond_0
    iget-object v5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mRingingCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@2a
    invoke-virtual {v5}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    #@2d
    move-result-object v5

    #@2e
    sget-object v6, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    #@30
    if-ne v5, v6, :cond_3

    #@32
    .line 703
    iget-object v5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@34
    invoke-virtual {v5}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    #@37
    move-result-object v5

    #@38
    invoke-virtual {v5}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    #@3b
    move-result v5

    #@3c
    .line 702
    if-eqz v5, :cond_3

    #@3e
    .line 704
    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->setMute(Z)V

    #@41
    .line 706
    const/4 v1, 0x0

    #@42
    .line 707
    .local v1, "answeringWillDisconnect":Z
    iget-object v5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@44
    invoke-virtual {v5}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getImsCall()Lcom/android/ims/ImsCall;

    #@47
    move-result-object v0

    #@48
    .line 708
    .local v0, "activeCall":Lcom/android/ims/ImsCall;
    iget-object v5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mRingingCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@4a
    invoke-virtual {v5}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getImsCall()Lcom/android/ims/ImsCall;

    #@4d
    move-result-object v4

    #@4e
    .line 709
    .local v4, "ringingCall":Lcom/android/ims/ImsCall;
    iget-object v5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@50
    invoke-virtual {v5}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->hasConnections()Z

    #@53
    move-result v5

    #@54
    if-eqz v5, :cond_1

    #@56
    iget-object v5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mRingingCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@58
    invoke-virtual {v5}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->hasConnections()Z

    #@5b
    move-result v5

    #@5c
    if-eqz v5, :cond_1

    #@5e
    .line 711
    invoke-direct {p0, v0, v4}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->shouldDisconnectActiveCallOnAnswer(Lcom/android/ims/ImsCall;Lcom/android/ims/ImsCall;)Z

    #@61
    move-result v1

    #@62
    .line 715
    .end local v1    # "answeringWillDisconnect":Z
    :cond_1
    iput p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingCallVideoState:I

    #@64
    .line 717
    if-eqz v1, :cond_2

    #@66
    .line 719
    iget-object v5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@68
    invoke-virtual {v5}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->hangup()V

    #@6b
    .line 721
    :try_start_0
    invoke-static {p1}, Lcom/android/ims/ImsCallProfile;->getCallTypeFromVideoState(I)I

    #@6e
    move-result v5

    #@6f
    invoke-virtual {v4, v5}, Lcom/android/ims/ImsCall;->accept(I)V
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    #@72
    .line 694
    .end local v0    # "activeCall":Lcom/android/ims/ImsCall;
    .end local v4    # "ringingCall":Lcom/android/ims/ImsCall;
    :goto_0
    return-void

    #@73
    .line 722
    .restart local v0    # "activeCall":Lcom/android/ims/ImsCall;
    .restart local v4    # "ringingCall":Lcom/android/ims/ImsCall;
    :catch_0
    move-exception v2

    #@74
    .line 723
    .local v2, "e":Lcom/android/ims/ImsException;
    new-instance v5, Lcom/android/internal/telephony/CallStateException;

    #@76
    const-string/jumbo v6, "cannot accept call"

    #@79
    invoke-direct {v5, v6}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    #@7c
    throw v5

    #@7d
    .line 726
    .end local v2    # "e":Lcom/android/ims/ImsException;
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->switchWaitingOrHoldingAndActive()V

    #@80
    goto :goto_0

    #@81
    .line 728
    .end local v0    # "activeCall":Lcom/android/ims/ImsCall;
    .end local v4    # "ringingCall":Lcom/android/ims/ImsCall;
    :cond_3
    iget-object v5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mRingingCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@83
    invoke-virtual {v5}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    #@86
    move-result-object v5

    #@87
    invoke-virtual {v5}, Lcom/android/internal/telephony/Call$State;->isRinging()Z

    #@8a
    move-result v5

    #@8b
    if-eqz v5, :cond_5

    #@8d
    .line 729
    const-string/jumbo v5, "acceptCall: incoming..."

    #@90
    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    #@93
    .line 731
    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->setMute(Z)V

    #@96
    .line 733
    :try_start_1
    iget-object v5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mRingingCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@98
    invoke-virtual {v5}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getImsCall()Lcom/android/ims/ImsCall;

    #@9b
    move-result-object v3

    #@9c
    .line 734
    .local v3, "imsCall":Lcom/android/ims/ImsCall;
    if-eqz v3, :cond_4

    #@9e
    .line 735
    invoke-static {p1}, Lcom/android/ims/ImsCallProfile;->getCallTypeFromVideoState(I)I

    #@a1
    move-result v5

    #@a2
    invoke-virtual {v3, v5}, Lcom/android/ims/ImsCall;->accept(I)V

    #@a5
    .line 736
    iget-object v5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    #@a7
    iget-object v6, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@a9
    invoke-virtual {v6}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getPhoneId()I

    #@ac
    move-result v6

    #@ad
    invoke-virtual {v3}, Lcom/android/ims/ImsCall;->getSession()Lcom/android/ims/internal/ImsCallSession;

    #@b0
    move-result-object v7

    #@b1
    .line 737
    const/4 v8, 0x2

    #@b2
    .line 736
    invoke-virtual {v5, v6, v7, v8}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeOnImsCommand(ILcom/android/ims/internal/ImsCallSession;I)V
    :try_end_1
    .catch Lcom/android/ims/ImsException; {:try_start_1 .. :try_end_1} :catch_1

    #@b5
    goto :goto_0

    #@b6
    .line 741
    .end local v3    # "imsCall":Lcom/android/ims/ImsCall;
    :catch_1
    move-exception v2

    #@b7
    .line 742
    .restart local v2    # "e":Lcom/android/ims/ImsException;
    new-instance v5, Lcom/android/internal/telephony/CallStateException;

    #@b9
    const-string/jumbo v6, "cannot accept call"

    #@bc
    invoke-direct {v5, v6}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    #@bf
    throw v5

    #@c0
    .line 739
    .end local v2    # "e":Lcom/android/ims/ImsException;
    .restart local v3    # "imsCall":Lcom/android/ims/ImsCall;
    :cond_4
    :try_start_2
    new-instance v5, Lcom/android/internal/telephony/CallStateException;

    #@c2
    const-string/jumbo v6, "no valid ims call"

    #@c5
    invoke-direct {v5, v6}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    #@c8
    throw v5
    :try_end_2
    .catch Lcom/android/ims/ImsException; {:try_start_2 .. :try_end_2} :catch_1

    #@c9
    .line 745
    .end local v3    # "imsCall":Lcom/android/ims/ImsCall;
    :cond_5
    new-instance v5, Lcom/android/internal/telephony/CallStateException;

    #@cb
    const-string/jumbo v6, "phone not ringing"

    #@ce
    invoke-direct {v5, v6}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    #@d1
    throw v5
.end method

.method callEndCleanupHandOverCallIfAny()V
    .locals 2

    #@0
    .prologue
    .line 1130
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mHandoverCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@2
    iget-object v0, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mConnections:Ljava/util/ArrayList;

    #@4
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@7
    move-result v0

    #@8
    if-lez v0, :cond_0

    #@a
    .line 1131
    new-instance v0, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string/jumbo v1, "callEndCleanupHandOverCallIfAny, mHandoverCall.mConnections="

    #@12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v0

    #@16
    .line 1132
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mHandoverCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@18
    iget-object v1, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mConnections:Ljava/util/ArrayList;

    #@1a
    .line 1131
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v0

    #@1e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21
    move-result-object v0

    #@22
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    #@25
    .line 1133
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mHandoverCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@27
    iget-object v0, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mConnections:Ljava/util/ArrayList;

    #@29
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    #@2c
    .line 1134
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mConnections:Ljava/util/ArrayList;

    #@2e
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    #@31
    .line 1135
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    #@33
    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    #@35
    .line 1129
    :cond_0
    return-void
.end method

.method public canConference()Z
    .locals 3

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 880
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@3
    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    #@6
    move-result-object v1

    #@7
    sget-object v2, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    #@9
    if-ne v1, v2, :cond_0

    #@b
    .line 881
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@d
    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    #@10
    move-result-object v1

    #@11
    sget-object v2, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    #@13
    if-ne v1, v2, :cond_0

    #@15
    .line 882
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@17
    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->isFull()Z

    #@1a
    move-result v1

    #@1b
    if-eqz v1, :cond_1

    #@1d
    .line 880
    :cond_0
    :goto_0
    return v0

    #@1e
    .line 883
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@20
    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->isFull()Z

    #@23
    move-result v1

    #@24
    if-nez v1, :cond_0

    #@26
    const/4 v0, 0x1

    #@27
    goto :goto_0
.end method

.method public canDial()Z
    .locals 7

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 889
    iget-object v5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@4
    invoke-virtual {v5}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getServiceState()Landroid/telephony/ServiceState;

    #@7
    move-result-object v5

    #@8
    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getState()I

    #@b
    move-result v2

    #@c
    .line 891
    .local v2, "serviceState":I
    const-string/jumbo v5, "ro.telephony.disable-call"

    #@f
    const-string/jumbo v6, "false"

    #@12
    .line 890
    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@15
    move-result-object v0

    #@16
    .line 893
    .local v0, "disableCall":Ljava/lang/String;
    const/4 v5, 0x3

    #@17
    if-eq v2, v5, :cond_0

    #@19
    .line 894
    iget-object v5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingMO:Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    #@1b
    if-nez v5, :cond_0

    #@1d
    .line 895
    iget-object v5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mRingingCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@1f
    invoke-virtual {v5}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->isRinging()Z

    #@22
    move-result v5

    #@23
    if-eqz v5, :cond_1

    #@25
    :cond_0
    move v1, v4

    #@26
    .line 900
    .local v1, "ret":Z
    :goto_0
    return v1

    #@27
    .line 896
    .end local v1    # "ret":Z
    :cond_1
    const-string/jumbo v5, "true"

    #@2a
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2d
    move-result v5

    #@2e
    if-nez v5, :cond_0

    #@30
    .line 897
    iget-object v5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@32
    invoke-virtual {v5}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    #@35
    move-result-object v5

    #@36
    invoke-virtual {v5}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    #@39
    move-result v5

    #@3a
    if-eqz v5, :cond_2

    #@3c
    .line 898
    iget-object v5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@3e
    invoke-virtual {v5}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    #@41
    move-result-object v5

    #@42
    invoke-virtual {v5}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    #@45
    move-result v5

    #@46
    if-eqz v5, :cond_2

    #@48
    move v3, v4

    #@49
    :cond_2
    move v1, v3

    #@4a
    .line 897
    goto :goto_0
.end method

.method public canTransfer()Z
    .locals 3

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 905
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@3
    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    #@6
    move-result-object v1

    #@7
    sget-object v2, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    #@9
    if-ne v1, v2, :cond_0

    #@b
    .line 906
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@d
    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    #@10
    move-result-object v1

    #@11
    sget-object v2, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    #@13
    if-ne v1, v2, :cond_0

    #@15
    const/4 v0, 0x1

    #@16
    .line 905
    :cond_0
    return v0
.end method

.method public cancelUSSD()V
    .locals 3

    #@0
    .prologue
    .line 1210
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mUssdSession:Lcom/android/ims/ImsCall;

    #@2
    if-nez v1, :cond_0

    #@4
    return-void

    #@5
    .line 1213
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mUssdSession:Lcom/android/ims/ImsCall;

    #@7
    const/16 v2, 0x1f5

    #@9
    invoke-virtual {v1, v2}, Lcom/android/ims/ImsCall;->terminate(I)V
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    #@c
    .line 1209
    :goto_0
    return-void

    #@d
    .line 1214
    :catch_0
    move-exception v0

    #@e
    .local v0, "e":Lcom/android/ims/ImsException;
    goto :goto_0
.end method

.method public clearDisconnected()V
    .locals 1

    #@0
    .prologue
    .line 870
    const-string/jumbo v0, "clearDisconnected"

    #@3
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    #@6
    .line 872
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->internalClearDisconnected()V

    #@9
    .line 874
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->updatePhoneState()V

    #@c
    .line 875
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@e
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->notifyPreciseCallStateChanged()V

    #@11
    .line 869
    return-void
.end method

.method public conference()V
    .locals 14

    #@0
    .prologue
    const-wide/16 v12, 0x0

    #@2
    .line 820
    const-string/jumbo v10, "conference"

    #@5
    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    #@8
    .line 822
    iget-object v10, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@a
    invoke-virtual {v10}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getImsCall()Lcom/android/ims/ImsCall;

    #@d
    move-result-object v6

    #@e
    .line 823
    .local v6, "fgImsCall":Lcom/android/ims/ImsCall;
    if-nez v6, :cond_0

    #@10
    .line 824
    const-string/jumbo v10, "conference no foreground ims call"

    #@13
    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    #@16
    .line 825
    return-void

    #@17
    .line 828
    :cond_0
    iget-object v10, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@19
    invoke-virtual {v10}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getImsCall()Lcom/android/ims/ImsCall;

    #@1c
    move-result-object v2

    #@1d
    .line 829
    .local v2, "bgImsCall":Lcom/android/ims/ImsCall;
    if-nez v2, :cond_1

    #@1f
    .line 830
    const-string/jumbo v10, "conference no background ims call"

    #@22
    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    #@25
    .line 831
    return-void

    #@26
    .line 836
    :cond_1
    iget-object v10, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@28
    invoke-virtual {v10}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getEarliestConnectTime()J

    #@2b
    move-result-wide v8

    #@2c
    .line 837
    .local v8, "foregroundConnectTime":J
    iget-object v10, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@2e
    invoke-virtual {v10}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getEarliestConnectTime()J

    #@31
    move-result-wide v0

    #@32
    .line 839
    .local v0, "backgroundConnectTime":J
    cmp-long v10, v8, v12

    #@34
    if-lez v10, :cond_3

    #@36
    cmp-long v10, v0, v12

    #@38
    if-lez v10, :cond_3

    #@3a
    .line 840
    iget-object v10, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@3c
    invoke-virtual {v10}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getEarliestConnectTime()J

    #@3f
    move-result-wide v10

    #@40
    .line 841
    iget-object v12, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@42
    invoke-virtual {v12}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getEarliestConnectTime()J

    #@45
    move-result-wide v12

    #@46
    .line 840
    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->min(JJ)J

    #@49
    move-result-wide v4

    #@4a
    .line 842
    .local v4, "conferenceConnectTime":J
    new-instance v10, Ljava/lang/StringBuilder;

    #@4c
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@4f
    const-string/jumbo v11, "conference - using connect time = "

    #@52
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@55
    move-result-object v10

    #@56
    invoke-virtual {v10, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@59
    move-result-object v10

    #@5a
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5d
    move-result-object v10

    #@5e
    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    #@61
    .line 851
    :goto_0
    iget-object v10, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@63
    invoke-virtual {v10}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getFirstConnection()Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    #@66
    move-result-object v7

    #@67
    .line 852
    .local v7, "foregroundConnection":Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    if-eqz v7, :cond_2

    #@69
    .line 853
    invoke-virtual {v7, v4, v5}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->setConferenceConnectTime(J)V

    #@6c
    .line 857
    :cond_2
    :try_start_0
    invoke-virtual {v6, v2}, Lcom/android/ims/ImsCall;->merge(Lcom/android/ims/ImsCall;)V
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    #@6f
    .line 819
    :goto_1
    return-void

    #@70
    .line 843
    .end local v4    # "conferenceConnectTime":J
    .end local v7    # "foregroundConnection":Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    :cond_3
    cmp-long v10, v8, v12

    #@72
    if-lez v10, :cond_4

    #@74
    .line 844
    new-instance v10, Ljava/lang/StringBuilder;

    #@76
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@79
    const-string/jumbo v11, "conference - bg call connect time is 0; using fg = "

    #@7c
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7f
    move-result-object v10

    #@80
    invoke-virtual {v10, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@83
    move-result-object v10

    #@84
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@87
    move-result-object v10

    #@88
    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    #@8b
    .line 845
    move-wide v4, v8

    #@8c
    .restart local v4    # "conferenceConnectTime":J
    goto :goto_0

    #@8d
    .line 847
    .end local v4    # "conferenceConnectTime":J
    :cond_4
    new-instance v10, Ljava/lang/StringBuilder;

    #@8f
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@92
    const-string/jumbo v11, "conference - fg call connect time is 0; using bg = "

    #@95
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@98
    move-result-object v10

    #@99
    invoke-virtual {v10, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@9c
    move-result-object v10

    #@9d
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a0
    move-result-object v10

    #@a1
    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    #@a4
    .line 848
    move-wide v4, v0

    #@a5
    .restart local v4    # "conferenceConnectTime":J
    goto :goto_0

    #@a6
    .line 858
    .restart local v7    # "foregroundConnection":Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    :catch_0
    move-exception v3

    #@a7
    .line 859
    .local v3, "e":Lcom/android/ims/ImsException;
    new-instance v10, Ljava/lang/StringBuilder;

    #@a9
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@ac
    const-string/jumbo v11, "conference "

    #@af
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b2
    move-result-object v10

    #@b3
    invoke-virtual {v3}, Lcom/android/ims/ImsException;->getMessage()Ljava/lang/String;

    #@b6
    move-result-object v11

    #@b7
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ba
    move-result-object v10

    #@bb
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@be
    move-result-object v10

    #@bf
    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    #@c2
    goto :goto_1
.end method

.method declared-synchronized dial(Ljava/lang/String;IILandroid/os/Bundle;)Lcom/android/internal/telephony/Connection;
    .locals 15
    .param p1, "dialString"    # Ljava/lang/String;
    .param p2, "clirMode"    # I
    .param p3, "videoState"    # I
    .param p4, "intentExtras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 441
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->isPhoneInEcbMode()Z

    #@4
    move-result v13

    #@5
    .line 442
    .local v13, "isPhoneInEcmMode":Z
    invoke-static/range {p1 .. p1}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    #@8
    move-result v8

    #@9
    .line 444
    .local v8, "isEmergencyNumber":Z
    new-instance v3, Ljava/lang/StringBuilder;

    #@b
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    const-string/jumbo v4, "dial clirMode="

    #@11
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v3

    #@15
    move/from16 v0, p2

    #@17
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v3

    #@1b
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v3

    #@1f
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    #@22
    .line 447
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->clearDisconnected()V

    #@25
    .line 449
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsManager:Lcom/android/ims/ImsManager;

    #@27
    if-nez v3, :cond_0

    #@29
    .line 450
    new-instance v3, Lcom/android/internal/telephony/CallStateException;

    #@2b
    const-string/jumbo v4, "service not available"

    #@2e
    invoke-direct {v3, v4}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    #@31
    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@32
    .end local v8    # "isEmergencyNumber":Z
    .end local v13    # "isPhoneInEcmMode":Z
    :catchall_0
    move-exception v3

    #@33
    monitor-exit p0

    #@34
    throw v3

    #@35
    .line 453
    .restart local v8    # "isEmergencyNumber":Z
    .restart local v13    # "isPhoneInEcmMode":Z
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->canDial()Z

    #@38
    move-result v3

    #@39
    if-nez v3, :cond_1

    #@3b
    .line 454
    new-instance v3, Lcom/android/internal/telephony/CallStateException;

    #@3d
    const-string/jumbo v4, "cannot dial in current state"

    #@40
    invoke-direct {v3, v4}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    #@43
    throw v3

    #@44
    .line 457
    :cond_1
    if-eqz v13, :cond_2

    #@46
    if-eqz v8, :cond_2

    #@48
    .line 458
    const/4 v3, 0x1

    #@49
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->handleEcmTimer(I)V

    #@4c
    .line 463
    :cond_2
    if-eqz v8, :cond_3

    #@4e
    invoke-static/range {p3 .. p3}, Landroid/telecom/VideoProfile;->isVideo(I)Z

    #@51
    move-result v3

    #@52
    if-eqz v3, :cond_3

    #@54
    .line 464
    iget-boolean v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mAllowEmergencyVideoCalls:Z

    #@56
    if-eqz v3, :cond_4

    #@58
    .line 469
    :cond_3
    :goto_0
    const/4 v12, 0x0

    #@59
    .line 474
    .local v12, "holdBeforeDial":Z
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@5b
    invoke-virtual {v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    #@5e
    move-result-object v3

    #@5f
    sget-object v4, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    #@61
    if-ne v3, v4, :cond_6

    #@63
    .line 475
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@65
    invoke-virtual {v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    #@68
    move-result-object v3

    #@69
    sget-object v4, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    #@6b
    if-eq v3, v4, :cond_5

    #@6d
    .line 477
    new-instance v3, Lcom/android/internal/telephony/CallStateException;

    #@6f
    const-string/jumbo v4, "cannot dial in current state"

    #@72
    invoke-direct {v3, v4}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    #@75
    throw v3

    #@76
    .line 465
    .end local v12    # "holdBeforeDial":Z
    :cond_4
    const-string/jumbo v3, "dial: carrier does not support video emergency calls; downgrade to audio-only"

    #@79
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->loge(Ljava/lang/String;)V

    #@7c
    .line 466
    const/16 p3, 0x0

    #@7e
    goto :goto_0

    #@7f
    .line 480
    .restart local v12    # "holdBeforeDial":Z
    :cond_5
    const/4 v12, 0x1

    #@80
    .line 482
    move/from16 v0, p3

    #@82
    iput v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingCallVideoState:I

    #@84
    .line 483
    move-object/from16 v0, p4

    #@86
    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingIntentExtras:Landroid/os/Bundle;

    #@88
    .line 484
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->switchWaitingOrHoldingAndActive()V

    #@8b
    .line 487
    :cond_6
    sget-object v11, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    #@8d
    .line 488
    .local v11, "fgState":Lcom/android/internal/telephony/Call$State;
    sget-object v9, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    #@8f
    .line 490
    .local v9, "bgState":Lcom/android/internal/telephony/Call$State;
    move/from16 v0, p2

    #@91
    iput v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mClirMode:I

    #@93
    .line 492
    iget-object v14, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mSyncHold:Ljava/lang/Object;

    #@95
    monitor-enter v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@96
    .line 493
    if-eqz v12, :cond_8

    #@98
    .line 494
    :try_start_2
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@9a
    invoke-virtual {v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    #@9d
    move-result-object v11

    #@9e
    .line 495
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@a0
    invoke-virtual {v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    #@a3
    move-result-object v9

    #@a4
    .line 498
    sget-object v3, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    #@a6
    if-ne v11, v3, :cond_7

    #@a8
    .line 499
    new-instance v3, Lcom/android/internal/telephony/CallStateException;

    #@aa
    const-string/jumbo v4, "cannot dial in current state"

    #@ad
    invoke-direct {v3, v4}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    #@b0
    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@b1
    .line 492
    :catchall_1
    move-exception v3

    #@b2
    :try_start_3
    monitor-exit v14

    #@b3
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@b4
    .line 503
    :cond_7
    :try_start_4
    sget-object v3, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    #@b6
    if-ne v9, v3, :cond_8

    #@b8
    .line 504
    const/4 v12, 0x0

    #@b9
    .line 508
    :cond_8
    new-instance v3, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    #@bb
    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@bd
    .line 509
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->checkForTestEmergencyNumber(Ljava/lang/String;)Ljava/lang/String;

    #@c0
    move-result-object v5

    #@c1
    iget-object v7, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@c3
    move-object v6, p0

    #@c4
    .line 508
    invoke-direct/range {v3 .. v8}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;-><init>(Lcom/android/internal/telephony/Phone;Ljava/lang/String;Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/internal/telephony/imsphone/ImsPhoneCall;Z)V

    #@c7
    iput-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingMO:Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    #@c9
    .line 511
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingMO:Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    #@cb
    move/from16 v0, p3

    #@cd
    invoke-virtual {v3, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->setVideoState(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@d0
    :try_start_5
    monitor-exit v14

    #@d1
    .line 513
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingMO:Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    #@d3
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->addConnection(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)V

    #@d6
    .line 515
    if-nez v12, :cond_a

    #@d8
    .line 516
    if-eqz v13, :cond_9

    #@da
    if-eqz v13, :cond_b

    #@dc
    if-eqz v8, :cond_b

    #@de
    .line 517
    :cond_9
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingMO:Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    #@e0
    move/from16 v0, p2

    #@e2
    move/from16 v1, p3

    #@e4
    move-object/from16 v2, p4

    #@e6
    invoke-direct {p0, v3, v0, v1, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->dialInternal(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;IILandroid/os/Bundle;)V

    #@e9
    .line 532
    :cond_a
    :goto_1
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->updatePhoneState()V

    #@ec
    .line 533
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@ee
    invoke-virtual {v3}, Lcom/android/internal/telephony/imsphone/ImsPhone;->notifyPreciseCallStateChanged()V

    #@f1
    .line 535
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingMO:Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@f3
    monitor-exit p0

    #@f4
    return-object v3

    #@f5
    .line 520
    :cond_b
    :try_start_6
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getEcbmInterface()Lcom/android/ims/ImsEcbm;

    #@f8
    move-result-object v3

    #@f9
    invoke-virtual {v3}, Lcom/android/ims/ImsEcbm;->exitEmergencyCallbackMode()V
    :try_end_6
    .catch Lcom/android/ims/ImsException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    #@fc
    .line 525
    :try_start_7
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@fe
    const/16 v4, 0xe

    #@100
    const/4 v5, 0x0

    #@101
    invoke-virtual {v3, p0, v4, v5}, Lcom/android/internal/telephony/imsphone/ImsPhone;->setOnEcbModeExitResponse(Landroid/os/Handler;ILjava/lang/Object;)V

    #@104
    .line 526
    move/from16 v0, p2

    #@106
    iput v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->pendingCallClirMode:I

    #@108
    .line 527
    move/from16 v0, p3

    #@10a
    iput v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingCallVideoState:I

    #@10c
    .line 528
    const/4 v3, 0x1

    #@10d
    iput-boolean v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->pendingCallInEcm:Z

    #@10f
    goto :goto_1

    #@110
    .line 521
    :catch_0
    move-exception v10

    #@111
    .line 522
    .local v10, "e":Lcom/android/ims/ImsException;
    invoke-virtual {v10}, Lcom/android/ims/ImsException;->printStackTrace()V

    #@114
    .line 523
    new-instance v3, Lcom/android/internal/telephony/CallStateException;

    #@116
    const-string/jumbo v4, "service not available"

    #@119
    invoke-direct {v3, v4}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    #@11c
    throw v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
.end method

.method public dial(Ljava/lang/String;ILandroid/os/Bundle;)Lcom/android/internal/telephony/Connection;
    .locals 4
    .param p1, "dialString"    # Ljava/lang/String;
    .param p2, "videoState"    # I
    .param p3, "intentExtras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    #@0
    .prologue
    .line 430
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@2
    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getContext()Landroid/content/Context;

    #@5
    move-result-object v2

    #@6
    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    #@9
    move-result-object v1

    #@a
    .line 431
    .local v1, "sp":Landroid/content/SharedPreferences;
    const-string/jumbo v2, "clir_key"

    #@d
    const/4 v3, 0x0

    #@e
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    #@11
    move-result v0

    #@12
    .line 432
    .local v0, "oirMode":I
    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->dial(Ljava/lang/String;IILandroid/os/Bundle;)Lcom/android/internal/telephony/Connection;

    #@15
    move-result-object v2

    #@16
    return-object v2
.end method

.method public dispose()V
    .locals 2

    #@0
    .prologue
    .line 386
    const-string/jumbo v0, "dispose"

    #@3
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    #@6
    .line 387
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mRingingCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@8
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->dispose()V

    #@b
    .line 388
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@d
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->dispose()V

    #@10
    .line 389
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@12
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->dispose()V

    #@15
    .line 390
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mHandoverCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@17
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->dispose()V

    #@1a
    .line 392
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->clearDisconnected()V

    #@1d
    .line 393
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@1f
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getContext()Landroid/content/Context;

    #@22
    move-result-object v0

    #@23
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mReceiver:Landroid/content/BroadcastReceiver;

    #@25
    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    #@28
    .line 394
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@2a
    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->unregisterForDataEnabledChanged(Landroid/os/Handler;)V

    #@2d
    .line 395
    const/16 v0, 0x18

    #@2f
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->removeMessages(I)V

    #@32
    .line 385
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 8
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 2426
    const-string/jumbo v4, "ImsPhoneCallTracker extends:"

    #@3
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@6
    .line 2427
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/telephony/CallTracker;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    #@9
    .line 2428
    new-instance v4, Ljava/lang/StringBuilder;

    #@b
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    const-string/jumbo v5, " mVoiceCallEndedRegistrants="

    #@11
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v4

    #@15
    iget-object v5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mVoiceCallEndedRegistrants:Landroid/os/RegistrantList;

    #@17
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v4

    #@1b
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v4

    #@1f
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@22
    .line 2429
    new-instance v4, Ljava/lang/StringBuilder;

    #@24
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@27
    const-string/jumbo v5, " mVoiceCallStartedRegistrants="

    #@2a
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v4

    #@2e
    iget-object v5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mVoiceCallStartedRegistrants:Landroid/os/RegistrantList;

    #@30
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v4

    #@34
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@37
    move-result-object v4

    #@38
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@3b
    .line 2430
    new-instance v4, Ljava/lang/StringBuilder;

    #@3d
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@40
    const-string/jumbo v5, " mRingingCall="

    #@43
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@46
    move-result-object v4

    #@47
    iget-object v5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mRingingCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@49
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v4

    #@4d
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@50
    move-result-object v4

    #@51
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@54
    .line 2431
    new-instance v4, Ljava/lang/StringBuilder;

    #@56
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@59
    const-string/jumbo v5, " mForegroundCall="

    #@5c
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5f
    move-result-object v4

    #@60
    iget-object v5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@62
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@65
    move-result-object v4

    #@66
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@69
    move-result-object v4

    #@6a
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@6d
    .line 2432
    new-instance v4, Ljava/lang/StringBuilder;

    #@6f
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@72
    const-string/jumbo v5, " mBackgroundCall="

    #@75
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@78
    move-result-object v4

    #@79
    iget-object v5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@7b
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@7e
    move-result-object v4

    #@7f
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@82
    move-result-object v4

    #@83
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@86
    .line 2433
    new-instance v4, Ljava/lang/StringBuilder;

    #@88
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@8b
    const-string/jumbo v5, " mHandoverCall="

    #@8e
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@91
    move-result-object v4

    #@92
    iget-object v5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mHandoverCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@94
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@97
    move-result-object v4

    #@98
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9b
    move-result-object v4

    #@9c
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@9f
    .line 2434
    new-instance v4, Ljava/lang/StringBuilder;

    #@a1
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@a4
    const-string/jumbo v5, " mPendingMO="

    #@a7
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@aa
    move-result-object v4

    #@ab
    iget-object v5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingMO:Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    #@ad
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@b0
    move-result-object v4

    #@b1
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b4
    move-result-object v4

    #@b5
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@b8
    .line 2436
    new-instance v4, Ljava/lang/StringBuilder;

    #@ba
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@bd
    const-string/jumbo v5, " mPhone="

    #@c0
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c3
    move-result-object v4

    #@c4
    iget-object v5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@c6
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@c9
    move-result-object v4

    #@ca
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@cd
    move-result-object v4

    #@ce
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@d1
    .line 2437
    new-instance v4, Ljava/lang/StringBuilder;

    #@d3
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@d6
    const-string/jumbo v5, " mDesiredMute="

    #@d9
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@dc
    move-result-object v4

    #@dd
    iget-boolean v5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mDesiredMute:Z

    #@df
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@e2
    move-result-object v4

    #@e3
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@e6
    move-result-object v4

    #@e7
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@ea
    .line 2438
    new-instance v4, Ljava/lang/StringBuilder;

    #@ec
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@ef
    const-string/jumbo v5, " mState="

    #@f2
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f5
    move-result-object v4

    #@f6
    iget-object v5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    #@f8
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@fb
    move-result-object v4

    #@fc
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ff
    move-result-object v4

    #@100
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@103
    .line 2439
    const/4 v3, 0x0

    #@104
    .local v3, "i":I
    :goto_0
    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsFeatureEnabled:[Z

    #@106
    array-length v4, v4

    #@107
    if-ge v3, v4, :cond_1

    #@109
    .line 2440
    new-instance v4, Ljava/lang/StringBuilder;

    #@10b
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@10e
    const-string/jumbo v5, " "

    #@111
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@114
    move-result-object v4

    #@115
    iget-object v5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsFeatureStrings:[Ljava/lang/String;

    #@117
    aget-object v5, v5, v3

    #@119
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11c
    move-result-object v4

    #@11d
    const-string/jumbo v5, ": "

    #@120
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@123
    move-result-object v5

    #@124
    .line 2441
    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsFeatureEnabled:[Z

    #@126
    aget-boolean v4, v4, v3

    #@128
    if-eqz v4, :cond_0

    #@12a
    const-string/jumbo v4, "enabled"

    #@12d
    .line 2440
    :goto_1
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@130
    move-result-object v4

    #@131
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@134
    move-result-object v4

    #@135
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@138
    .line 2439
    add-int/lit8 v3, v3, 0x1

    #@13a
    goto :goto_0

    #@13b
    .line 2441
    :cond_0
    const-string/jumbo v4, "disabled"

    #@13e
    goto :goto_1

    #@13f
    .line 2443
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    #@141
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@144
    const-string/jumbo v5, " mTotalVtDataUsage="

    #@147
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14a
    move-result-object v4

    #@14b
    iget-wide v6, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mTotalVtDataUsage:J

    #@14d
    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@150
    move-result-object v4

    #@151
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@154
    move-result-object v4

    #@155
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@158
    .line 2444
    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mVtDataUsageMap:Ljava/util/HashMap;

    #@15a
    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    #@15d
    move-result-object v4

    #@15e
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@161
    move-result-object v2

    #@162
    .local v2, "entry$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@165
    move-result v4

    #@166
    if-eqz v4, :cond_2

    #@168
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@16b
    move-result-object v1

    #@16c
    check-cast v1, Ljava/util/Map$Entry;

    #@16e
    .line 2445
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Long;>;"
    new-instance v4, Ljava/lang/StringBuilder;

    #@170
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@173
    const-string/jumbo v5, "    id="

    #@176
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@179
    move-result-object v4

    #@17a
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@17d
    move-result-object v5

    #@17e
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@181
    move-result-object v4

    #@182
    const-string/jumbo v5, " ,usage="

    #@185
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@188
    move-result-object v4

    #@189
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@18c
    move-result-object v5

    #@18d
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@190
    move-result-object v4

    #@191
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@194
    move-result-object v4

    #@195
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@198
    goto :goto_2

    #@199
    .line 2448
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Long;>;"
    :cond_2
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    #@19c
    .line 2449
    const-string/jumbo v4, "++++++++++++++++++++++++++++++++"

    #@19f
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1a2
    .line 2452
    :try_start_0
    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsManager:Lcom/android/ims/ImsManager;

    #@1a4
    if-eqz v4, :cond_3

    #@1a6
    .line 2453
    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsManager:Lcom/android/ims/ImsManager;

    #@1a8
    invoke-virtual {v4, p1, p2, p3}, Lcom/android/ims/ImsManager;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@1ab
    .line 2459
    :cond_3
    :goto_3
    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mConnections:Ljava/util/ArrayList;

    #@1ad
    if-eqz v4, :cond_4

    #@1af
    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mConnections:Ljava/util/ArrayList;

    #@1b1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@1b4
    move-result v4

    #@1b5
    if-lez v4, :cond_4

    #@1b7
    .line 2460
    const-string/jumbo v4, "mConnections:"

    #@1ba
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1bd
    .line 2461
    const/4 v3, 0x0

    #@1be
    :goto_4
    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mConnections:Ljava/util/ArrayList;

    #@1c0
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@1c3
    move-result v4

    #@1c4
    if-ge v3, v4, :cond_4

    #@1c6
    .line 2462
    new-instance v4, Ljava/lang/StringBuilder;

    #@1c8
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@1cb
    const-string/jumbo v5, "  ["

    #@1ce
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d1
    move-result-object v4

    #@1d2
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1d5
    move-result-object v4

    #@1d6
    const-string/jumbo v5, "]: "

    #@1d9
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1dc
    move-result-object v4

    #@1dd
    iget-object v5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mConnections:Ljava/util/ArrayList;

    #@1df
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@1e2
    move-result-object v5

    #@1e3
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1e6
    move-result-object v4

    #@1e7
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1ea
    move-result-object v4

    #@1eb
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1ee
    .line 2461
    add-int/lit8 v3, v3, 0x1

    #@1f0
    goto :goto_4

    #@1f1
    .line 2455
    :catch_0
    move-exception v0

    #@1f2
    .line 2456
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    #@1f5
    goto :goto_3

    #@1f6
    .line 2425
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_4
    return-void
.end method

.method public explicitCallTransfer()V
    .locals 0

    #@0
    .prologue
    .line 864
    return-void
.end method

.method protected finalize()V
    .locals 1

    #@0
    .prologue
    .line 400
    const-string/jumbo v0, "ImsPhoneCallTracker finalized"

    #@3
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    #@6
    .line 399
    return-void
.end method

.method getEcbmInterface()Lcom/android/ims/ImsEcbm;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    #@0
    .prologue
    .line 2473
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsManager:Lcom/android/ims/ImsManager;

    #@2
    if-nez v1, :cond_0

    #@4
    .line 2474
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getImsManagerIsNullException()Lcom/android/ims/ImsException;

    #@7
    move-result-object v1

    #@8
    throw v1

    #@9
    .line 2477
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsManager:Lcom/android/ims/ImsManager;

    #@b
    iget v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mServiceId:I

    #@d
    invoke-virtual {v1, v2}, Lcom/android/ims/ImsManager;->getEcbmInterface(I)Lcom/android/ims/ImsEcbm;

    #@10
    move-result-object v0

    #@11
    .line 2478
    .local v0, "ecbm":Lcom/android/ims/ImsEcbm;
    return-object v0
.end method

.method getMultiEndpointInterface()Lcom/android/ims/ImsMultiEndpoint;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 2483
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsManager:Lcom/android/ims/ImsManager;

    #@3
    if-nez v1, :cond_0

    #@5
    .line 2484
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getImsManagerIsNullException()Lcom/android/ims/ImsException;

    #@8
    move-result-object v1

    #@9
    throw v1

    #@a
    .line 2488
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsManager:Lcom/android/ims/ImsManager;

    #@c
    iget v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mServiceId:I

    #@e
    invoke-virtual {v1, v2}, Lcom/android/ims/ImsManager;->getMultiEndpointInterface(I)Lcom/android/ims/ImsMultiEndpoint;
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    #@11
    move-result-object v1

    #@12
    return-object v1

    #@13
    .line 2489
    :catch_0
    move-exception v0

    #@14
    .line 2490
    .local v0, "e":Lcom/android/ims/ImsException;
    invoke-virtual {v0}, Lcom/android/ims/ImsException;->getCode()I

    #@17
    move-result v1

    #@18
    const/16 v2, 0x386

    #@1a
    if-ne v1, v2, :cond_1

    #@1c
    .line 2491
    return-object v3

    #@1d
    .line 2493
    :cond_1
    throw v0
.end method

.method public getMute()Z
    .locals 1

    #@0
    .prologue
    .line 1016
    iget-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mDesiredMute:Z

    #@2
    return v0
.end method

.method public getState()Lcom/android/internal/telephony/PhoneConstants$State;
    .locals 1

    #@0
    .prologue
    .line 2518
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    #@2
    return-object v0
.end method

.method public getUtInterface()Lcom/android/ims/ImsUtInterface;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    #@0
    .prologue
    .line 2223
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsManager:Lcom/android/ims/ImsManager;

    #@2
    if-nez v1, :cond_0

    #@4
    .line 2224
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getImsManagerIsNullException()Lcom/android/ims/ImsException;

    #@7
    move-result-object v1

    #@8
    throw v1

    #@9
    .line 2227
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsManager:Lcom/android/ims/ImsManager;

    #@b
    iget v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mServiceId:I

    #@d
    invoke-virtual {v1, v2}, Lcom/android/ims/ImsManager;->getSupplementaryServiceConfiguration(I)Lcom/android/ims/ImsUtInterface;

    #@10
    move-result-object v0

    #@11
    .line 2228
    .local v0, "ut":Lcom/android/ims/ImsUtInterface;
    return-object v0
.end method

.method public getVtDataUsage()J
    .locals 6

    #@0
    .prologue
    .line 2678
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    #@2
    sget-object v4, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    #@4
    if-eq v3, v4, :cond_1

    #@6
    .line 2679
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mConnections:Ljava/util/ArrayList;

    #@8
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@b
    move-result-object v1

    #@c
    .local v1, "conn$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@f
    move-result v3

    #@10
    if-eqz v3, :cond_1

    #@12
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@15
    move-result-object v0

    #@16
    check-cast v0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    #@18
    .line 2680
    .local v0, "conn":Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getVideoProvider()Landroid/telecom/Connection$VideoProvider;

    #@1b
    move-result-object v2

    #@1c
    .line 2681
    .local v2, "videoProvider":Landroid/telecom/Connection$VideoProvider;
    if-eqz v2, :cond_0

    #@1e
    .line 2682
    invoke-virtual {v2}, Landroid/telecom/Connection$VideoProvider;->onRequestConnectionDataUsage()V

    #@21
    goto :goto_0

    #@22
    .line 2687
    .end local v0    # "conn":Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    .end local v1    # "conn$iterator":Ljava/util/Iterator;
    .end local v2    # "videoProvider":Landroid/telecom/Connection$VideoProvider;
    :cond_1
    iget-wide v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mTotalVtDataUsage:J

    #@24
    return-wide v4
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 18
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 2279
    new-instance v11, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v12, "handleMessage what="

    #@8
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v11

    #@c
    move-object/from16 v0, p1

    #@e
    iget v12, v0, Landroid/os/Message;->what:I

    #@10
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@13
    move-result-object v11

    #@14
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@17
    move-result-object v11

    #@18
    move-object/from16 v0, p0

    #@1a
    invoke-virtual {v0, v11}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    #@1d
    .line 2281
    move-object/from16 v0, p1

    #@1f
    iget v11, v0, Landroid/os/Message;->what:I

    #@21
    packed-switch v11, :pswitch_data_0

    #@24
    .line 2277
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    #@25
    .line 2283
    :pswitch_1
    move-object/from16 v0, p0

    #@27
    iget-object v11, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingMO:Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    #@29
    if-eqz v11, :cond_1

    #@2b
    .line 2284
    move-object/from16 v0, p0

    #@2d
    iget-object v11, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingMO:Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    #@2f
    invoke-virtual {v11}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->onDisconnect()Z

    #@32
    .line 2285
    move-object/from16 v0, p0

    #@34
    iget-object v11, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingMO:Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    #@36
    move-object/from16 v0, p0

    #@38
    invoke-direct {v0, v11}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->removeConnection(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)V

    #@3b
    .line 2286
    const/4 v11, 0x0

    #@3c
    move-object/from16 v0, p0

    #@3e
    iput-object v11, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingMO:Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    #@40
    .line 2288
    :cond_1
    const/4 v11, 0x0

    #@41
    move-object/from16 v0, p0

    #@43
    iput-object v11, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingIntentExtras:Landroid/os/Bundle;

    #@45
    .line 2289
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->updatePhoneState()V

    #@48
    .line 2290
    move-object/from16 v0, p0

    #@4a
    iget-object v11, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@4c
    invoke-virtual {v11}, Lcom/android/internal/telephony/imsphone/ImsPhone;->notifyPreciseCallStateChanged()V

    #@4f
    goto :goto_0

    #@50
    .line 2294
    :pswitch_2
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->resumeWaitingOrHolding()V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    #@53
    goto :goto_0

    #@54
    .line 2295
    :catch_0
    move-exception v6

    #@55
    .line 2297
    .local v6, "e":Lcom/android/internal/telephony/CallStateException;
    new-instance v11, Ljava/lang/StringBuilder;

    #@57
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@5a
    const-string/jumbo v12, "handleMessage EVENT_RESUME_BACKGROUND exception="

    #@5d
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@60
    move-result-object v11

    #@61
    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@64
    move-result-object v11

    #@65
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@68
    move-result-object v11

    #@69
    move-object/from16 v0, p0

    #@6b
    invoke-virtual {v0, v11}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->loge(Ljava/lang/String;)V

    #@6e
    goto :goto_0

    #@6f
    .line 2302
    .end local v6    # "e":Lcom/android/internal/telephony/CallStateException;
    :pswitch_3
    move-object/from16 v0, p0

    #@71
    iget-object v11, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingMO:Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    #@73
    move-object/from16 v0, p0

    #@75
    iget v12, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mClirMode:I

    #@77
    move-object/from16 v0, p0

    #@79
    iget v13, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingCallVideoState:I

    #@7b
    move-object/from16 v0, p0

    #@7d
    iget-object v14, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingIntentExtras:Landroid/os/Bundle;

    #@7f
    move-object/from16 v0, p0

    #@81
    invoke-direct {v0, v11, v12, v13, v14}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->dialInternal(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;IILandroid/os/Bundle;)V

    #@84
    .line 2303
    const/4 v11, 0x0

    #@85
    move-object/from16 v0, p0

    #@87
    iput-object v11, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingIntentExtras:Landroid/os/Bundle;

    #@89
    goto :goto_0

    #@8a
    .line 2307
    :pswitch_4
    move-object/from16 v0, p0

    #@8c
    iget-object v11, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingMO:Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    #@8e
    if-eqz v11, :cond_0

    #@90
    .line 2310
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getEcbmInterface()Lcom/android/ims/ImsEcbm;

    #@93
    move-result-object v11

    #@94
    invoke-virtual {v11}, Lcom/android/ims/ImsEcbm;->exitEmergencyCallbackMode()V

    #@97
    .line 2311
    move-object/from16 v0, p0

    #@99
    iget-object v11, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@9b
    const/16 v12, 0xe

    #@9d
    const/4 v13, 0x0

    #@9e
    move-object/from16 v0, p0

    #@a0
    invoke-virtual {v11, v0, v12, v13}, Lcom/android/internal/telephony/imsphone/ImsPhone;->setOnEcbModeExitResponse(Landroid/os/Handler;ILjava/lang/Object;)V

    #@a3
    .line 2312
    move-object/from16 v0, p0

    #@a5
    iget v11, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mClirMode:I

    #@a7
    move-object/from16 v0, p0

    #@a9
    iput v11, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->pendingCallClirMode:I

    #@ab
    .line 2313
    const/4 v11, 0x1

    #@ac
    move-object/from16 v0, p0

    #@ae
    iput-boolean v11, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->pendingCallInEcm:Z
    :try_end_1
    .catch Lcom/android/ims/ImsException; {:try_start_1 .. :try_end_1} :catch_1

    #@b0
    goto/16 :goto_0

    #@b2
    .line 2314
    :catch_1
    move-exception v5

    #@b3
    .line 2315
    .local v5, "e":Lcom/android/ims/ImsException;
    invoke-virtual {v5}, Lcom/android/ims/ImsException;->printStackTrace()V

    #@b6
    .line 2316
    move-object/from16 v0, p0

    #@b8
    iget-object v11, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingMO:Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    #@ba
    const/16 v12, 0x24

    #@bc
    invoke-virtual {v11, v12}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->setDisconnectCause(I)V

    #@bf
    .line 2317
    const-wide/16 v12, 0x1f4

    #@c1
    const/16 v11, 0x12

    #@c3
    move-object/from16 v0, p0

    #@c5
    invoke-virtual {v0, v11, v12, v13}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->sendEmptyMessageDelayed(IJ)Z

    #@c8
    goto/16 :goto_0

    #@ca
    .line 2324
    .end local v5    # "e":Lcom/android/ims/ImsException;
    :pswitch_5
    move-object/from16 v0, p0

    #@cc
    iget-boolean v11, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->pendingCallInEcm:Z

    #@ce
    if-eqz v11, :cond_2

    #@d0
    .line 2325
    move-object/from16 v0, p0

    #@d2
    iget-object v11, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingMO:Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    #@d4
    move-object/from16 v0, p0

    #@d6
    iget v12, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->pendingCallClirMode:I

    #@d8
    .line 2326
    move-object/from16 v0, p0

    #@da
    iget v13, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingCallVideoState:I

    #@dc
    move-object/from16 v0, p0

    #@de
    iget-object v14, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingIntentExtras:Landroid/os/Bundle;

    #@e0
    .line 2325
    move-object/from16 v0, p0

    #@e2
    invoke-direct {v0, v11, v12, v13, v14}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->dialInternal(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;IILandroid/os/Bundle;)V

    #@e5
    .line 2327
    const/4 v11, 0x0

    #@e6
    move-object/from16 v0, p0

    #@e8
    iput-object v11, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingIntentExtras:Landroid/os/Bundle;

    #@ea
    .line 2328
    const/4 v11, 0x0

    #@eb
    move-object/from16 v0, p0

    #@ed
    iput-boolean v11, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->pendingCallInEcm:Z

    #@ef
    .line 2330
    :cond_2
    move-object/from16 v0, p0

    #@f1
    iget-object v11, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@f3
    move-object/from16 v0, p0

    #@f5
    invoke-virtual {v11, v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->unsetOnEcbModeExitResponse(Landroid/os/Handler;)V

    #@f8
    goto/16 :goto_0

    #@fa
    .line 2333
    :pswitch_6
    move-object/from16 v0, p1

    #@fc
    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@fe
    check-cast v2, Landroid/os/AsyncResult;

    #@100
    .line 2334
    .local v2, "ar":Landroid/os/AsyncResult;
    iget-object v3, v2, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    #@102
    check-cast v3, Lcom/android/ims/ImsCall;

    #@104
    .line 2335
    .local v3, "call":Lcom/android/ims/ImsCall;
    iget-object v11, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@106
    check-cast v11, Ljava/lang/Long;

    #@108
    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    #@10b
    move-result-wide v12

    #@10c
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@10f
    move-result-object v10

    #@110
    .line 2336
    .local v10, "usage":Ljava/lang/Long;
    new-instance v11, Ljava/lang/StringBuilder;

    #@112
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@115
    const-string/jumbo v12, "VT data usage update. usage = "

    #@118
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11b
    move-result-object v11

    #@11c
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@11f
    move-result-object v11

    #@120
    const-string/jumbo v12, ", imsCall = "

    #@123
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@126
    move-result-object v11

    #@127
    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@12a
    move-result-object v11

    #@12b
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@12e
    move-result-object v11

    #@12f
    move-object/from16 v0, p0

    #@131
    invoke-virtual {v0, v11}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    #@134
    .line 2338
    const-wide/16 v12, 0x0

    #@136
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@139
    move-result-object v8

    #@13a
    .line 2339
    .local v8, "oldUsage":Ljava/lang/Long;
    move-object/from16 v0, p0

    #@13c
    iget-object v11, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mVtDataUsageMap:Ljava/util/HashMap;

    #@13e
    iget v12, v3, Lcom/android/ims/ImsCall;->uniqueId:I

    #@140
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@143
    move-result-object v12

    #@144
    invoke-virtual {v11, v12}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    #@147
    move-result v11

    #@148
    if-eqz v11, :cond_3

    #@14a
    .line 2340
    move-object/from16 v0, p0

    #@14c
    iget-object v11, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mVtDataUsageMap:Ljava/util/HashMap;

    #@14e
    iget v12, v3, Lcom/android/ims/ImsCall;->uniqueId:I

    #@150
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@153
    move-result-object v12

    #@154
    invoke-virtual {v11, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@157
    move-result-object v8

    #@158
    .end local v8    # "oldUsage":Ljava/lang/Long;
    check-cast v8, Ljava/lang/Long;

    #@15a
    .line 2342
    .restart local v8    # "oldUsage":Ljava/lang/Long;
    :cond_3
    move-object/from16 v0, p0

    #@15c
    iget-wide v12, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mTotalVtDataUsage:J

    #@15e
    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    #@161
    move-result-wide v14

    #@162
    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    #@165
    move-result-wide v16

    #@166
    sub-long v14, v14, v16

    #@168
    add-long/2addr v12, v14

    #@169
    move-object/from16 v0, p0

    #@16b
    iput-wide v12, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mTotalVtDataUsage:J

    #@16d
    .line 2343
    move-object/from16 v0, p0

    #@16f
    iget-object v11, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mVtDataUsageMap:Ljava/util/HashMap;

    #@171
    iget v12, v3, Lcom/android/ims/ImsCall;->uniqueId:I

    #@173
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@176
    move-result-object v12

    #@177
    invoke-virtual {v11, v12, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@17a
    goto/16 :goto_0

    #@17c
    .line 2346
    .end local v2    # "ar":Landroid/os/AsyncResult;
    .end local v3    # "call":Lcom/android/ims/ImsCall;
    .end local v8    # "oldUsage":Ljava/lang/Long;
    .end local v10    # "usage":Ljava/lang/Long;
    :pswitch_7
    move-object/from16 v0, p1

    #@17e
    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@180
    check-cast v2, Landroid/os/AsyncResult;

    #@182
    .line 2347
    .restart local v2    # "ar":Landroid/os/AsyncResult;
    iget-object v11, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@184
    instance-of v11, v11, Landroid/util/Pair;

    #@186
    if-eqz v11, :cond_0

    #@188
    .line 2348
    iget-object v9, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@18a
    check-cast v9, Landroid/util/Pair;

    #@18c
    .line 2349
    .local v9, "p":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Boolean;Ljava/lang/Integer;>;"
    iget-object v11, v9, Landroid/util/Pair;->first:Ljava/lang/Object;

    #@18e
    check-cast v11, Ljava/lang/Boolean;

    #@190
    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    #@193
    move-result v12

    #@194
    iget-object v11, v9, Landroid/util/Pair;->second:Ljava/lang/Object;

    #@196
    check-cast v11, Ljava/lang/Integer;

    #@198
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    #@19b
    move-result v11

    #@19c
    move-object/from16 v0, p0

    #@19e
    invoke-direct {v0, v12, v11}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->onDataEnabledChanged(ZI)V

    #@1a1
    goto/16 :goto_0

    #@1a3
    .line 2354
    .end local v2    # "ar":Landroid/os/AsyncResult;
    .end local v9    # "p":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Boolean;Ljava/lang/Integer;>;"
    :pswitch_8
    :try_start_2
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getImsService()V
    :try_end_2
    .catch Lcom/android/ims/ImsException; {:try_start_2 .. :try_end_2} :catch_2

    #@1a6
    goto/16 :goto_0

    #@1a8
    .line 2355
    :catch_2
    move-exception v5

    #@1a9
    .line 2356
    .restart local v5    # "e":Lcom/android/ims/ImsException;
    new-instance v11, Ljava/lang/StringBuilder;

    #@1ab
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@1ae
    const-string/jumbo v12, "getImsService: "

    #@1b1
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b4
    move-result-object v11

    #@1b5
    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1b8
    move-result-object v11

    #@1b9
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1bc
    move-result-object v11

    #@1bd
    move-object/from16 v0, p0

    #@1bf
    invoke-virtual {v0, v11}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->loge(Ljava/lang/String;)V

    #@1c2
    .line 2358
    const/4 v11, 0x0

    #@1c3
    move-object/from16 v0, p0

    #@1c5
    iput-object v11, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsManager:Lcom/android/ims/ImsManager;

    #@1c7
    .line 2359
    move-object/from16 v0, p0

    #@1c9
    iget v11, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsServiceRetryCount:I

    #@1cb
    const/16 v12, 0xa

    #@1cd
    if-ge v11, v12, :cond_4

    #@1cf
    .line 2360
    const-string/jumbo v11, "getImsService: Retrying getting ImsService..."

    #@1d2
    move-object/from16 v0, p0

    #@1d4
    invoke-virtual {v0, v11}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->loge(Ljava/lang/String;)V

    #@1d7
    .line 2362
    const-wide/16 v12, 0x190

    #@1d9
    .line 2361
    const/16 v11, 0x18

    #@1db
    move-object/from16 v0, p0

    #@1dd
    invoke-virtual {v0, v11, v12, v13}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->sendEmptyMessageDelayed(IJ)Z

    #@1e0
    .line 2363
    move-object/from16 v0, p0

    #@1e2
    iget v11, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsServiceRetryCount:I

    #@1e4
    add-int/lit8 v11, v11, 0x1

    #@1e6
    move-object/from16 v0, p0

    #@1e8
    iput v11, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsServiceRetryCount:I

    #@1ea
    goto/16 :goto_0

    #@1ec
    .line 2368
    :cond_4
    const-string/jumbo v11, "getImsService: ImsService retrieval timeout... ImsService is unavailable."

    #@1ef
    move-object/from16 v0, p0

    #@1f1
    invoke-virtual {v0, v11}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->loge(Ljava/lang/String;)V

    #@1f4
    goto/16 :goto_0

    #@1f6
    .line 2374
    .end local v5    # "e":Lcom/android/ims/ImsException;
    :pswitch_9
    move-object/from16 v0, p1

    #@1f8
    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@1fa
    instance-of v11, v11, Lcom/android/ims/ImsCall;

    #@1fc
    if-eqz v11, :cond_0

    #@1fe
    .line 2375
    move-object/from16 v0, p1

    #@200
    iget-object v7, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@202
    check-cast v7, Lcom/android/ims/ImsCall;

    #@204
    .line 2376
    .local v7, "imsCall":Lcom/android/ims/ImsCall;
    invoke-virtual {v7}, Lcom/android/ims/ImsCall;->isWifiCall()Z

    #@207
    move-result v11

    #@208
    if-nez v11, :cond_0

    #@20a
    .line 2378
    move-object/from16 v0, p0

    #@20c
    invoke-direct {v0, v7}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->findConnection(Lcom/android/ims/ImsCall;)Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    #@20f
    move-result-object v4

    #@210
    .line 2379
    .local v4, "conn":Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    if-eqz v4, :cond_0

    #@212
    .line 2380
    invoke-virtual {v4}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->onHandoverToWifiFailed()V

    #@215
    goto/16 :goto_0

    #@217
    .line 2281
    nop

    #@218
    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method protected handlePollCalls(Landroid/os/AsyncResult;)V
    .locals 0
    .param p1, "ar"    # Landroid/os/AsyncResult;

    #@0
    .prologue
    .line 2468
    return-void
.end method

.method public hangup(Lcom/android/internal/telephony/imsphone/ImsPhoneCall;)V
    .locals 7
    .param p1, "call"    # Lcom/android/internal/telephony/imsphone/ImsPhoneCall;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    #@0
    .prologue
    .line 1068
    const-string/jumbo v3, "hangup call"

    #@3
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    #@6
    .line 1070
    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getConnections()Ljava/util/List;

    #@9
    move-result-object v3

    #@a
    invoke-interface {v3}, Ljava/util/List;->size()I

    #@d
    move-result v3

    #@e
    if-nez v3, :cond_0

    #@10
    .line 1071
    new-instance v3, Lcom/android/internal/telephony/CallStateException;

    #@12
    const-string/jumbo v4, "no connections"

    #@15
    invoke-direct {v3, v4}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    #@18
    throw v3

    #@19
    .line 1074
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getImsCall()Lcom/android/ims/ImsCall;

    #@1c
    move-result-object v1

    #@1d
    .line 1075
    .local v1, "imsCall":Lcom/android/ims/ImsCall;
    const/4 v2, 0x0

    #@1e
    .line 1077
    .local v2, "rejectCall":Z
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mRingingCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@20
    if-ne p1, v3, :cond_2

    #@22
    .line 1078
    const-string/jumbo v3, "(ringing) hangup incoming"

    #@25
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    #@28
    .line 1079
    const/4 v2, 0x1

    #@29
    .line 1100
    :goto_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->onHangupLocal()V

    #@2c
    .line 1103
    if-eqz v1, :cond_7

    #@2e
    .line 1104
    if-eqz v2, :cond_6

    #@30
    .line 1105
    const/16 v3, 0x1f8

    #@32
    :try_start_0
    invoke-virtual {v1, v3}, Lcom/android/ims/ImsCall;->reject(I)V

    #@35
    .line 1106
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    #@37
    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@39
    invoke-virtual {v4}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getPhoneId()I

    #@3c
    move-result v4

    #@3d
    invoke-virtual {v1}, Lcom/android/ims/ImsCall;->getSession()Lcom/android/ims/internal/ImsCallSession;

    #@40
    move-result-object v5

    #@41
    .line 1107
    const/4 v6, 0x3

    #@42
    .line 1106
    invoke-virtual {v3, v4, v5, v6}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeOnImsCommand(ILcom/android/ims/internal/ImsCallSession;I)V
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    #@45
    .line 1126
    :cond_1
    :goto_1
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@47
    invoke-virtual {v3}, Lcom/android/internal/telephony/imsphone/ImsPhone;->notifyPreciseCallStateChanged()V

    #@4a
    .line 1067
    return-void

    #@4b
    .line 1080
    :cond_2
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@4d
    if-ne p1, v3, :cond_4

    #@4f
    .line 1081
    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->isDialingOrAlerting()Z

    #@52
    move-result v3

    #@53
    if-eqz v3, :cond_3

    #@55
    .line 1083
    const-string/jumbo v3, "(foregnd) hangup dialing or alerting..."

    #@58
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    #@5b
    goto :goto_0

    #@5c
    .line 1087
    :cond_3
    const-string/jumbo v3, "(foregnd) hangup foreground"

    #@5f
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    #@62
    goto :goto_0

    #@63
    .line 1091
    :cond_4
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@65
    if-ne p1, v3, :cond_5

    #@67
    .line 1093
    const-string/jumbo v3, "(backgnd) hangup waiting or background"

    #@6a
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    #@6d
    goto :goto_0

    #@6e
    .line 1096
    :cond_5
    new-instance v3, Lcom/android/internal/telephony/CallStateException;

    #@70
    new-instance v4, Ljava/lang/StringBuilder;

    #@72
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@75
    const-string/jumbo v5, "ImsPhoneCall "

    #@78
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7b
    move-result-object v4

    #@7c
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@7f
    move-result-object v4

    #@80
    .line 1097
    const-string/jumbo v5, "does not belong to ImsPhoneCallTracker "

    #@83
    .line 1096
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@86
    move-result-object v4

    #@87
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@8a
    move-result-object v4

    #@8b
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8e
    move-result-object v4

    #@8f
    invoke-direct {v3, v4}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    #@92
    throw v3

    #@93
    .line 1109
    :cond_6
    const/16 v3, 0x1f5

    #@95
    :try_start_1
    invoke-virtual {v1, v3}, Lcom/android/ims/ImsCall;->terminate(I)V

    #@98
    .line 1110
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    #@9a
    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@9c
    invoke-virtual {v4}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getPhoneId()I

    #@9f
    move-result v4

    #@a0
    invoke-virtual {v1}, Lcom/android/ims/ImsCall;->getSession()Lcom/android/ims/internal/ImsCallSession;

    #@a3
    move-result-object v5

    #@a4
    .line 1111
    const/4 v6, 0x4

    #@a5
    .line 1110
    invoke-virtual {v3, v4, v5, v6}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeOnImsCommand(ILcom/android/ims/internal/ImsCallSession;I)V
    :try_end_1
    .catch Lcom/android/ims/ImsException; {:try_start_1 .. :try_end_1} :catch_0

    #@a8
    goto :goto_1

    #@a9
    .line 1122
    :catch_0
    move-exception v0

    #@aa
    .line 1123
    .local v0, "e":Lcom/android/ims/ImsException;
    new-instance v3, Lcom/android/internal/telephony/CallStateException;

    #@ac
    invoke-virtual {v0}, Lcom/android/ims/ImsException;->getMessage()Ljava/lang/String;

    #@af
    move-result-object v4

    #@b0
    invoke-direct {v3, v4}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    #@b3
    throw v3

    #@b4
    .line 1113
    .end local v0    # "e":Lcom/android/ims/ImsException;
    :cond_7
    :try_start_2
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingMO:Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    #@b6
    if-eqz v3, :cond_1

    #@b8
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@ba
    if-ne p1, v3, :cond_1

    #@bc
    .line 1115
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingMO:Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    #@be
    sget-object v4, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    #@c0
    const/4 v5, 0x0

    #@c1
    invoke-virtual {v3, v5, v4}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->update(Lcom/android/ims/ImsCall;Lcom/android/internal/telephony/Call$State;)Z

    #@c4
    .line 1116
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingMO:Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    #@c6
    invoke-virtual {v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->onDisconnect()Z

    #@c9
    .line 1117
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingMO:Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    #@cb
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->removeConnection(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)V

    #@ce
    .line 1118
    const/4 v3, 0x0

    #@cf
    iput-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingMO:Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    #@d1
    .line 1119
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->updatePhoneState()V

    #@d4
    .line 1120
    const/16 v3, 0x14

    #@d6
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->removeMessages(I)V
    :try_end_2
    .catch Lcom/android/ims/ImsException; {:try_start_2 .. :try_end_2} :catch_0

    #@d9
    goto/16 :goto_1
.end method

.method public hangup(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)V
    .locals 3
    .param p1, "conn"    # Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    #@0
    .prologue
    .line 1055
    const-string/jumbo v0, "hangup connection"

    #@3
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    #@6
    .line 1057
    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getOwner()Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@9
    move-result-object v0

    #@a
    if-eq v0, p0, :cond_0

    #@c
    .line 1058
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    #@e
    new-instance v1, Ljava/lang/StringBuilder;

    #@10
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@13
    const-string/jumbo v2, "ImsPhoneConnection "

    #@16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v1

    #@1e
    .line 1059
    const-string/jumbo v2, "does not belong to ImsPhoneCallTracker "

    #@21
    .line 1058
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v1

    #@25
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v1

    #@29
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2c
    move-result-object v1

    #@2d
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    #@30
    throw v0

    #@31
    .line 1062
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@34
    move-result-object v0

    #@35
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->hangup(Lcom/android/internal/telephony/imsphone/ImsPhoneCall;)V

    #@38
    .line 1054
    return-void
.end method

.method public isCarrierDowngradeOfVtCallSupported()Z
    .locals 1

    #@0
    .prologue
    .line 2807
    iget-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mSupportDowngradeVtToAudio:Z

    #@2
    return v0
.end method

.method public isInEmergencyCall()Z
    .locals 1

    #@0
    .prologue
    .line 2500
    iget-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mIsInEmergencyCall:Z

    #@2
    return v0
.end method

.method public isUtEnabled()Z
    .locals 2

    #@0
    .prologue
    .line 2536
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsFeatureEnabled:[Z

    #@2
    const/4 v1, 0x4

    #@3
    aget-boolean v0, v0, v1

    #@5
    if-nez v0, :cond_0

    #@7
    .line 2537
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsFeatureEnabled:[Z

    #@9
    const/4 v1, 0x5

    #@a
    aget-boolean v0, v0, v1

    #@c
    .line 2536
    :goto_0
    return v0

    #@d
    :cond_0
    const/4 v0, 0x1

    #@e
    goto :goto_0
.end method

.method public isVideoCallEnabled()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 2512
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsFeatureEnabled:[Z

    #@3
    aget-boolean v1, v1, v0

    #@5
    if-nez v1, :cond_0

    #@7
    .line 2513
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsFeatureEnabled:[Z

    #@9
    const/4 v1, 0x3

    #@a
    aget-boolean v0, v0, v1

    #@c
    .line 2512
    :cond_0
    return v0
.end method

.method public isVolteEnabled()Z
    .locals 2

    #@0
    .prologue
    .line 2504
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsFeatureEnabled:[Z

    #@2
    const/4 v1, 0x0

    #@3
    aget-boolean v0, v0, v1

    #@5
    return v0
.end method

.method public isVowifiEnabled()Z
    .locals 2

    #@0
    .prologue
    .line 2508
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsFeatureEnabled:[Z

    #@2
    const/4 v1, 0x2

    #@3
    aget-boolean v0, v0, v1

    #@5
    return v0
.end method

.method protected log(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2390
    const-string/jumbo v0, "ImsPhoneCallTracker"

    #@3
    new-instance v1, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v2, "[ImsPhoneCallTracker] "

    #@b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v1

    #@f
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@16
    move-result-object v1

    #@17
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@1a
    .line 2389
    return-void
.end method

.method logState()V
    .locals 3

    #@0
    .prologue
    .line 2403
    sget-boolean v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->VERBOSE_STATE_LOGGING:Z

    #@2
    if-nez v1, :cond_0

    #@4
    .line 2404
    return-void

    #@5
    .line 2407
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    #@7
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@a
    .line 2408
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "Current IMS PhoneCall State:\n"

    #@d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    .line 2409
    const-string/jumbo v1, " Foreground: "

    #@13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    .line 2410
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1b
    .line 2411
    const-string/jumbo v1, "\n"

    #@1e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    .line 2412
    const-string/jumbo v1, " Background: "

    #@24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    .line 2413
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2c
    .line 2414
    const-string/jumbo v1, "\n"

    #@2f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    .line 2415
    const-string/jumbo v1, " Ringing: "

    #@35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    .line 2416
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mRingingCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@3a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@3d
    .line 2417
    const-string/jumbo v1, "\n"

    #@40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    .line 2418
    const-string/jumbo v1, " Handover: "

    #@46
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@49
    .line 2419
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mHandoverCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@4b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@4e
    .line 2420
    const-string/jumbo v1, "\n"

    #@51
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@54
    .line 2421
    const-string/jumbo v1, "ImsPhoneCallTracker"

    #@57
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5a
    move-result-object v2

    #@5b
    invoke-static {v1, v2}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@5e
    .line 2402
    return-void
.end method

.method protected loge(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2394
    const-string/jumbo v0, "ImsPhoneCallTracker"

    #@3
    new-instance v1, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v2, "[ImsPhoneCallTracker] "

    #@b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v1

    #@f
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@16
    move-result-object v1

    #@17
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@1a
    .line 2393
    return-void
.end method

.method notifySrvccState(Lcom/android/internal/telephony/Call$SrvccState;)V
    .locals 2
    .param p1, "state"    # Lcom/android/internal/telephony/Call$SrvccState;

    #@0
    .prologue
    .line 2262
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "notifySrvccState state="

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v0

    #@10
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13
    move-result-object v0

    #@14
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    #@17
    .line 2264
    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mSrvccState:Lcom/android/internal/telephony/Call$SrvccState;

    #@19
    .line 2266
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mSrvccState:Lcom/android/internal/telephony/Call$SrvccState;

    #@1b
    sget-object v1, Lcom/android/internal/telephony/Call$SrvccState;->COMPLETED:Lcom/android/internal/telephony/Call$SrvccState;

    #@1d
    if-ne v0, v1, :cond_0

    #@1f
    .line 2267
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@21
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->transferHandoverConnections(Lcom/android/internal/telephony/imsphone/ImsPhoneCall;)V

    #@24
    .line 2268
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@26
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->transferHandoverConnections(Lcom/android/internal/telephony/imsphone/ImsPhoneCall;)V

    #@29
    .line 2269
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mRingingCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@2b
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->transferHandoverConnections(Lcom/android/internal/telephony/imsphone/ImsPhoneCall;)V

    #@2e
    .line 2261
    :cond_0
    return-void
.end method

.method public pullExternalCall(Ljava/lang/String;II)V
    .locals 5
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "videoState"    # I
    .param p3, "dialogId"    # I

    #@0
    .prologue
    .line 2621
    new-instance v2, Landroid/os/Bundle;

    #@2
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    #@5
    .line 2622
    .local v2, "extras":Landroid/os/Bundle;
    const-string/jumbo v3, "CallPull"

    #@8
    const/4 v4, 0x1

    #@9
    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    #@c
    .line 2623
    const-string/jumbo v3, "android.telephony.ImsExternalCallTracker.extra.EXTERNAL_CALL_ID"

    #@f
    invoke-virtual {v2, v3, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@12
    .line 2625
    :try_start_0
    invoke-virtual {p0, p1, p2, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->dial(Ljava/lang/String;ILandroid/os/Bundle;)Lcom/android/internal/telephony/Connection;

    #@15
    move-result-object v0

    #@16
    .line 2626
    .local v0, "connection":Lcom/android/internal/telephony/Connection;
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@18
    invoke-virtual {v3, v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->notifyUnknownConnection(Lcom/android/internal/telephony/Connection;)V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    #@1b
    .line 2620
    .end local v0    # "connection":Lcom/android/internal/telephony/Connection;
    :goto_0
    return-void

    #@1c
    .line 2627
    :catch_0
    move-exception v1

    #@1d
    .line 2628
    .local v1, "e":Lcom/android/internal/telephony/CallStateException;
    new-instance v3, Ljava/lang/StringBuilder;

    #@1f
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@22
    const-string/jumbo v4, "pullExternalCall failed - "

    #@25
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v3

    #@29
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v3

    #@2d
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@30
    move-result-object v3

    #@31
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->loge(Ljava/lang/String;)V

    #@34
    goto :goto_0
.end method

.method public registerForVoiceCallEnded(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 419
    new-instance v0, Landroid/os/Registrant;

    #@2
    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    #@5
    .line 420
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mVoiceCallEndedRegistrants:Landroid/os/RegistrantList;

    #@7
    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    #@a
    .line 418
    return-void
.end method

.method public registerForVoiceCallStarted(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 408
    new-instance v0, Landroid/os/Registrant;

    #@2
    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    #@5
    .line 409
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mVoiceCallStartedRegistrants:Landroid/os/RegistrantList;

    #@7
    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    #@a
    .line 407
    return-void
.end method

.method public registerPhoneStateListener(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$PhoneStateListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$PhoneStateListener;

    #@0
    .prologue
    .line 2691
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhoneStateListeners:Ljava/util/List;

    #@2
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@5
    .line 2690
    return-void
.end method

.method public rejectCall()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    #@0
    .prologue
    .line 750
    const-string/jumbo v0, "rejectCall"

    #@3
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    #@6
    .line 752
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mRingingCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@8
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->isRinging()Z

    #@f
    move-result v0

    #@10
    if-eqz v0, :cond_0

    #@12
    .line 753
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mRingingCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@14
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->hangup(Lcom/android/internal/telephony/imsphone/ImsPhoneCall;)V

    #@17
    .line 749
    return-void

    #@18
    .line 755
    :cond_0
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    #@1a
    const-string/jumbo v1, "phone not ringing"

    #@1d
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    #@20
    throw v0
.end method

.method resumeWaitingOrHolding()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    #@0
    .prologue
    .line 1141
    const-string/jumbo v2, "resumeWaitingOrHolding"

    #@3
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    #@6
    .line 1144
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@8
    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    #@b
    move-result-object v2

    #@c
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    #@f
    move-result v2

    #@10
    if-eqz v2, :cond_1

    #@12
    .line 1147
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@14
    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getImsCall()Lcom/android/ims/ImsCall;

    #@17
    move-result-object v1

    #@18
    .line 1148
    .local v1, "imsCall":Lcom/android/ims/ImsCall;
    if-eqz v1, :cond_0

    #@1a
    .line 1149
    invoke-virtual {v1}, Lcom/android/ims/ImsCall;->resume()V

    #@1d
    .line 1150
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    #@1f
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@21
    invoke-virtual {v3}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getPhoneId()I

    #@24
    move-result v3

    #@25
    invoke-virtual {v1}, Lcom/android/ims/ImsCall;->getSession()Lcom/android/ims/internal/ImsCallSession;

    #@28
    move-result-object v4

    #@29
    .line 1151
    const/4 v5, 0x6

    #@2a
    .line 1150
    invoke-virtual {v2, v3, v4, v5}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeOnImsCommand(ILcom/android/ims/internal/ImsCallSession;I)V

    #@2d
    .line 1140
    :cond_0
    :goto_0
    return-void

    #@2e
    .line 1153
    .end local v1    # "imsCall":Lcom/android/ims/ImsCall;
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mRingingCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@30
    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    #@33
    move-result-object v2

    #@34
    sget-object v3, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    #@36
    if-ne v2, v3, :cond_2

    #@38
    .line 1155
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mRingingCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@3a
    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getImsCall()Lcom/android/ims/ImsCall;

    #@3d
    move-result-object v1

    #@3e
    .line 1156
    .restart local v1    # "imsCall":Lcom/android/ims/ImsCall;
    if-eqz v1, :cond_0

    #@40
    .line 1158
    iget v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingCallVideoState:I

    #@42
    invoke-static {v2}, Lcom/android/ims/ImsCallProfile;->getCallTypeFromVideoState(I)I

    #@45
    move-result v2

    #@46
    .line 1157
    invoke-virtual {v1, v2}, Lcom/android/ims/ImsCall;->accept(I)V

    #@49
    .line 1159
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    #@4b
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@4d
    invoke-virtual {v3}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getPhoneId()I

    #@50
    move-result v3

    #@51
    invoke-virtual {v1}, Lcom/android/ims/ImsCall;->getSession()Lcom/android/ims/internal/ImsCallSession;

    #@54
    move-result-object v4

    #@55
    .line 1160
    const/4 v5, 0x2

    #@56
    .line 1159
    invoke-virtual {v2, v3, v4, v5}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeOnImsCommand(ILcom/android/ims/internal/ImsCallSession;I)V
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    #@59
    goto :goto_0

    #@5a
    .line 1174
    .end local v1    # "imsCall":Lcom/android/ims/ImsCall;
    :catch_0
    move-exception v0

    #@5b
    .line 1175
    .local v0, "e":Lcom/android/ims/ImsException;
    new-instance v2, Lcom/android/internal/telephony/CallStateException;

    #@5d
    invoke-virtual {v0}, Lcom/android/ims/ImsException;->getMessage()Ljava/lang/String;

    #@60
    move-result-object v3

    #@61
    invoke-direct {v2, v3}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    #@64
    throw v2

    #@65
    .line 1167
    .end local v0    # "e":Lcom/android/ims/ImsException;
    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@67
    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getImsCall()Lcom/android/ims/ImsCall;

    #@6a
    move-result-object v1

    #@6b
    .line 1168
    .restart local v1    # "imsCall":Lcom/android/ims/ImsCall;
    if-eqz v1, :cond_0

    #@6d
    .line 1169
    invoke-virtual {v1}, Lcom/android/ims/ImsCall;->resume()V

    #@70
    .line 1170
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    #@72
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@74
    invoke-virtual {v3}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getPhoneId()I

    #@77
    move-result v3

    #@78
    invoke-virtual {v1}, Lcom/android/ims/ImsCall;->getSession()Lcom/android/ims/internal/ImsCallSession;

    #@7b
    move-result-object v4

    #@7c
    .line 1171
    const/4 v5, 0x6

    #@7d
    .line 1170
    invoke-virtual {v2, v3, v4, v5}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeOnImsCommand(ILcom/android/ims/internal/ImsCallSession;I)V
    :try_end_1
    .catch Lcom/android/ims/ImsException; {:try_start_1 .. :try_end_1} :catch_0

    #@80
    goto :goto_0
.end method

.method public sendDtmf(CLandroid/os/Message;)V
    .locals 2
    .param p1, "c"    # C
    .param p2, "result"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1020
    const-string/jumbo v1, "sendDtmf"

    #@3
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    #@6
    .line 1022
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@8
    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getImsCall()Lcom/android/ims/ImsCall;

    #@b
    move-result-object v0

    #@c
    .line 1023
    .local v0, "imscall":Lcom/android/ims/ImsCall;
    if-eqz v0, :cond_0

    #@e
    .line 1024
    invoke-virtual {v0, p1, p2}, Lcom/android/ims/ImsCall;->sendDtmf(CLandroid/os/Message;)V

    #@11
    .line 1019
    :cond_0
    return-void
.end method

.method public sendUSSD(Ljava/lang/String;Landroid/os/Message;)V
    .locals 7
    .param p1, "ussdString"    # Ljava/lang/String;
    .param p2, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1180
    const-string/jumbo v3, "sendUSSD"

    #@3
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    #@6
    .line 1183
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mUssdSession:Lcom/android/ims/ImsCall;

    #@8
    if-eqz v3, :cond_0

    #@a
    .line 1184
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mUssdSession:Lcom/android/ims/ImsCall;

    #@c
    invoke-virtual {v3, p1}, Lcom/android/ims/ImsCall;->sendUssd(Ljava/lang/String;)V

    #@f
    .line 1185
    const/4 v3, 0x0

    #@10
    const/4 v4, 0x0

    #@11
    invoke-static {p2, v3, v4}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    #@14
    .line 1186
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    #@17
    .line 1187
    return-void

    #@18
    .line 1190
    :cond_0
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsManager:Lcom/android/ims/ImsManager;

    #@1a
    if-nez v3, :cond_1

    #@1c
    .line 1191
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@1e
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getImsManagerIsNullException()Lcom/android/ims/ImsException;

    #@21
    move-result-object v4

    #@22
    invoke-virtual {v3, p2, v4}, Lcom/android/internal/telephony/imsphone/ImsPhone;->sendErrorResponse(Landroid/os/Message;Ljava/lang/Throwable;)V

    #@25
    .line 1192
    return-void

    #@26
    .line 1195
    :cond_1
    const/4 v3, 0x1

    #@27
    new-array v0, v3, [Ljava/lang/String;

    #@29
    const/4 v3, 0x0

    #@2a
    aput-object p1, v0, v3

    #@2c
    .line 1196
    .local v0, "callees":[Ljava/lang/String;
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsManager:Lcom/android/ims/ImsManager;

    #@2e
    iget v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mServiceId:I

    #@30
    .line 1197
    const/4 v5, 0x1

    #@31
    const/4 v6, 0x2

    #@32
    .line 1196
    invoke-virtual {v3, v4, v5, v6}, Lcom/android/ims/ImsManager;->createCallProfile(III)Lcom/android/ims/ImsCallProfile;

    #@35
    move-result-object v2

    #@36
    .line 1198
    .local v2, "profile":Lcom/android/ims/ImsCallProfile;
    const-string/jumbo v3, "dialstring"

    #@39
    .line 1199
    const/4 v4, 0x2

    #@3a
    .line 1198
    invoke-virtual {v2, v3, v4}, Lcom/android/ims/ImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    #@3d
    .line 1201
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsManager:Lcom/android/ims/ImsManager;

    #@3f
    iget v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mServiceId:I

    #@41
    .line 1202
    iget-object v5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsUssdListener:Lcom/android/ims/ImsCall$Listener;

    #@43
    .line 1201
    invoke-virtual {v3, v4, v2, v0, v5}, Lcom/android/ims/ImsManager;->makeCall(ILcom/android/ims/ImsCallProfile;[Ljava/lang/String;Lcom/android/ims/ImsCall$Listener;)Lcom/android/ims/ImsCall;

    #@46
    move-result-object v3

    #@47
    iput-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mUssdSession:Lcom/android/ims/ImsCall;
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    #@49
    .line 1179
    .end local v0    # "callees":[Ljava/lang/String;
    .end local v2    # "profile":Lcom/android/ims/ImsCallProfile;
    :goto_0
    return-void

    #@4a
    .line 1203
    :catch_0
    move-exception v1

    #@4b
    .line 1204
    .local v1, "e":Lcom/android/ims/ImsException;
    new-instance v3, Ljava/lang/StringBuilder;

    #@4d
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@50
    const-string/jumbo v4, "sendUSSD : "

    #@53
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@56
    move-result-object v3

    #@57
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v3

    #@5b
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5e
    move-result-object v3

    #@5f
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->loge(Ljava/lang/String;)V

    #@62
    .line 1205
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@64
    invoke-virtual {v3, p2, v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->sendErrorResponse(Landroid/os/Message;Ljava/lang/Throwable;)V

    #@67
    goto :goto_0
.end method

.method public setMute(Z)V
    .locals 1
    .param p1, "mute"    # Z

    #@0
    .prologue
    .line 1011
    iput-boolean p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mDesiredMute:Z

    #@2
    .line 1012
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@4
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->setMute(Z)V

    #@7
    .line 1010
    return-void
.end method

.method public setUiTTYMode(ILandroid/os/Message;)V
    .locals 4
    .param p1, "uiTtyMode"    # I
    .param p2, "onComplete"    # Landroid/os/Message;

    #@0
    .prologue
    .line 997
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsManager:Lcom/android/ims/ImsManager;

    #@2
    if-nez v1, :cond_0

    #@4
    .line 998
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@6
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getImsManagerIsNullException()Lcom/android/ims/ImsException;

    #@9
    move-result-object v2

    #@a
    invoke-virtual {v1, p2, v2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->sendErrorResponse(Landroid/os/Message;Ljava/lang/Throwable;)V

    #@d
    .line 999
    return-void

    #@e
    .line 1003
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsManager:Lcom/android/ims/ImsManager;

    #@10
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@12
    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getContext()Landroid/content/Context;

    #@15
    move-result-object v2

    #@16
    iget v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mServiceId:I

    #@18
    invoke-virtual {v1, v2, v3, p1, p2}, Lcom/android/ims/ImsManager;->setUiTTYMode(Landroid/content/Context;IILandroid/os/Message;)V
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    #@1b
    .line 996
    :goto_0
    return-void

    #@1c
    .line 1004
    :catch_0
    move-exception v0

    #@1d
    .line 1005
    .local v0, "e":Lcom/android/ims/ImsException;
    new-instance v1, Ljava/lang/StringBuilder;

    #@1f
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@22
    const-string/jumbo v2, "setTTYMode : "

    #@25
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v1

    #@29
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v1

    #@2d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@30
    move-result-object v1

    #@31
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->loge(Ljava/lang/String;)V

    #@34
    .line 1006
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@36
    invoke-virtual {v1, p2, v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->sendErrorResponse(Landroid/os/Message;Ljava/lang/Throwable;)V

    #@39
    goto :goto_0
.end method

.method public startDtmf(C)V
    .locals 2
    .param p1, "c"    # C

    #@0
    .prologue
    .line 1030
    const-string/jumbo v1, "startDtmf"

    #@3
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    #@6
    .line 1032
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@8
    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getImsCall()Lcom/android/ims/ImsCall;

    #@b
    move-result-object v0

    #@c
    .line 1033
    .local v0, "imscall":Lcom/android/ims/ImsCall;
    if-eqz v0, :cond_0

    #@e
    .line 1034
    invoke-virtual {v0, p1}, Lcom/android/ims/ImsCall;->startDtmf(C)V

    #@11
    .line 1029
    :goto_0
    return-void

    #@12
    .line 1036
    :cond_0
    const-string/jumbo v1, "startDtmf : no foreground call"

    #@15
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->loge(Ljava/lang/String;)V

    #@18
    goto :goto_0
.end method

.method public stopDtmf()V
    .locals 2

    #@0
    .prologue
    .line 1042
    const-string/jumbo v1, "stopDtmf"

    #@3
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    #@6
    .line 1044
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@8
    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getImsCall()Lcom/android/ims/ImsCall;

    #@b
    move-result-object v0

    #@c
    .line 1045
    .local v0, "imscall":Lcom/android/ims/ImsCall;
    if-eqz v0, :cond_0

    #@e
    .line 1046
    invoke-virtual {v0}, Lcom/android/ims/ImsCall;->stopDtmf()V

    #@11
    .line 1041
    :goto_0
    return-void

    #@12
    .line 1048
    :cond_0
    const-string/jumbo v1, "stopDtmf : no foreground call"

    #@15
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->loge(Ljava/lang/String;)V

    #@18
    goto :goto_0
.end method

.method public switchWaitingOrHoldingAndActive()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    #@0
    .prologue
    .line 771
    const-string/jumbo v3, "switchWaitingOrHoldingAndActive"

    #@3
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    #@6
    .line 773
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mRingingCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@8
    invoke-virtual {v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    #@b
    move-result-object v3

    #@c
    sget-object v4, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    #@e
    if-ne v3, v4, :cond_0

    #@10
    .line 774
    new-instance v3, Lcom/android/internal/telephony/CallStateException;

    #@12
    const-string/jumbo v4, "cannot be in the incoming state"

    #@15
    invoke-direct {v3, v4}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    #@18
    throw v3

    #@19
    .line 777
    :cond_0
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@1b
    invoke-virtual {v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    #@1e
    move-result-object v3

    #@1f
    sget-object v4, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    #@21
    if-ne v3, v4, :cond_6

    #@23
    .line 778
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@25
    invoke-virtual {v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getImsCall()Lcom/android/ims/ImsCall;

    #@28
    move-result-object v1

    #@29
    .line 779
    .local v1, "imsCall":Lcom/android/ims/ImsCall;
    if-nez v1, :cond_1

    #@2b
    .line 780
    new-instance v3, Lcom/android/internal/telephony/CallStateException;

    #@2d
    const-string/jumbo v4, "no ims call"

    #@30
    invoke-direct {v3, v4}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    #@33
    throw v3

    #@34
    .line 785
    :cond_1
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@36
    invoke-virtual {v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getImsCall()Lcom/android/ims/ImsCall;

    #@39
    move-result-object v3

    #@3a
    if-nez v3, :cond_4

    #@3c
    .line 786
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mRingingCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@3e
    if-eqz v3, :cond_4

    #@40
    .line 787
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mRingingCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@42
    invoke-virtual {v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    #@45
    move-result-object v3

    #@46
    sget-object v4, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    #@48
    if-ne v3, v4, :cond_3

    #@4a
    const/4 v2, 0x1

    #@4b
    .line 789
    .local v2, "switchingWithWaitingCall":Z
    :goto_0
    const/4 v3, 0x1

    #@4c
    iput-boolean v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mSwitchingFgAndBgCalls:Z

    #@4e
    .line 790
    if-eqz v2, :cond_5

    #@50
    .line 791
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mRingingCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@52
    invoke-virtual {v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getImsCall()Lcom/android/ims/ImsCall;

    #@55
    move-result-object v3

    #@56
    iput-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mCallExpectedToResume:Lcom/android/ims/ImsCall;

    #@58
    .line 795
    :goto_1
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@5a
    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@5c
    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->switchWith(Lcom/android/internal/telephony/imsphone/ImsPhoneCall;)V

    #@5f
    .line 800
    :try_start_0
    invoke-virtual {v1}, Lcom/android/ims/ImsCall;->hold()V

    #@62
    .line 801
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    #@64
    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@66
    invoke-virtual {v4}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getPhoneId()I

    #@69
    move-result v4

    #@6a
    invoke-virtual {v1}, Lcom/android/ims/ImsCall;->getSession()Lcom/android/ims/internal/ImsCallSession;

    #@6d
    move-result-object v5

    #@6e
    .line 802
    const/4 v6, 0x5

    #@6f
    .line 801
    invoke-virtual {v3, v4, v5, v6}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeOnImsCommand(ILcom/android/ims/internal/ImsCallSession;I)V

    #@72
    .line 805
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mCallExpectedToResume:Lcom/android/ims/ImsCall;

    #@74
    if-nez v3, :cond_2

    #@76
    .line 806
    const-string/jumbo v3, "mCallExpectedToResume is null"

    #@79
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    #@7c
    .line 807
    const/4 v3, 0x0

    #@7d
    iput-boolean v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mSwitchingFgAndBgCalls:Z
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    #@7f
    .line 770
    .end local v1    # "imsCall":Lcom/android/ims/ImsCall;
    .end local v2    # "switchingWithWaitingCall":Z
    :cond_2
    :goto_2
    return-void

    #@80
    .line 787
    .restart local v1    # "imsCall":Lcom/android/ims/ImsCall;
    :cond_3
    const/4 v2, 0x0

    #@81
    .restart local v2    # "switchingWithWaitingCall":Z
    goto :goto_0

    #@82
    .line 785
    .end local v2    # "switchingWithWaitingCall":Z
    :cond_4
    const/4 v2, 0x0

    #@83
    .restart local v2    # "switchingWithWaitingCall":Z
    goto :goto_0

    #@84
    .line 793
    :cond_5
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@86
    invoke-virtual {v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getImsCall()Lcom/android/ims/ImsCall;

    #@89
    move-result-object v3

    #@8a
    iput-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mCallExpectedToResume:Lcom/android/ims/ImsCall;

    #@8c
    goto :goto_1

    #@8d
    .line 809
    :catch_0
    move-exception v0

    #@8e
    .line 810
    .local v0, "e":Lcom/android/ims/ImsException;
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@90
    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@92
    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->switchWith(Lcom/android/internal/telephony/imsphone/ImsPhoneCall;)V

    #@95
    .line 811
    new-instance v3, Lcom/android/internal/telephony/CallStateException;

    #@97
    invoke-virtual {v0}, Lcom/android/ims/ImsException;->getMessage()Ljava/lang/String;

    #@9a
    move-result-object v4

    #@9b
    invoke-direct {v3, v4}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    #@9e
    throw v3

    #@9f
    .line 813
    .end local v0    # "e":Lcom/android/ims/ImsException;
    .end local v1    # "imsCall":Lcom/android/ims/ImsCall;
    .end local v2    # "switchingWithWaitingCall":Z
    :cond_6
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@a1
    invoke-virtual {v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    #@a4
    move-result-object v3

    #@a5
    sget-object v4, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    #@a7
    if-ne v3, v4, :cond_2

    #@a9
    .line 814
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->resumeWaitingOrHolding()V

    #@ac
    goto :goto_2
.end method

.method public unregisterForVoiceCallEnded(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 425
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mVoiceCallEndedRegistrants:Landroid/os/RegistrantList;

    #@2
    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    #@5
    .line 424
    return-void
.end method

.method public unregisterForVoiceCallStarted(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 414
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mVoiceCallStartedRegistrants:Landroid/os/RegistrantList;

    #@2
    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    #@5
    .line 413
    return-void
.end method

.method public unregisterPhoneStateListener(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$PhoneStateListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$PhoneStateListener;

    #@0
    .prologue
    .line 2695
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhoneStateListeners:Ljava/util/List;

    #@2
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    #@5
    .line 2694
    return-void
.end method

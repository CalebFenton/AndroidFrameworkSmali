.class public abstract Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
.super Landroid/os/Handler;
.source "DcTrackerBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/dataconnection/DcTrackerBase$DataRoamingSettingObserver;,
        Lcom/android/internal/telephony/dataconnection/DcTrackerBase$TxRxSum;,
        Lcom/android/internal/telephony/dataconnection/DcTrackerBase$RecoveryAction;,
        Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;,
        Lcom/android/internal/telephony/dataconnection/DcTrackerBase$2;,
        Lcom/android/internal/telephony/dataconnection/DcTrackerBase$3;,
        Lcom/android/internal/telephony/dataconnection/DcTrackerBase$4;
    }
.end annotation


# static fields
.field private static synthetic -com_android_internal_telephony_DctConstants$StateSwitchesValues:[I = null

.field protected static final APN_DELAY_DEFAULT_MILLIS:I = 0x4e20

.field protected static final APN_FAIL_FAST_DELAY_DEFAULT_MILLIS:I = 0xbb8

.field protected static final APN_RESTORE_DELAY_PROP_NAME:Ljava/lang/String; = "android.telephony.apn-restore"

.field protected static final DATA_CONNECTION_ACTIVE_PH_LINK_DOWN:I = 0x1

.field protected static final DATA_CONNECTION_ACTIVE_PH_LINK_INACTIVE:I = 0x0

.field protected static final DATA_CONNECTION_ACTIVE_PH_LINK_UP:I = 0x2

.field protected static final DATA_STALL_ALARM_AGGRESSIVE_DELAY_IN_MS_DEFAULT:I = 0xea60

.field protected static final DATA_STALL_ALARM_NON_AGGRESSIVE_DELAY_IN_MS_DEFAULT:I = 0x57e40

.field protected static final DATA_STALL_ALARM_TAG_EXTRA:Ljava/lang/String; = "data.stall.alram.tag"

.field protected static final DATA_STALL_NOT_SUSPECTED:Z = false

.field protected static final DATA_STALL_NO_RECV_POLL_LIMIT:I = 0x1

.field protected static final DATA_STALL_SUSPECTED:Z = true

.field protected static final DBG:Z = true

.field protected static final DEBUG_PROV_APN_ALARM:Ljava/lang/String; = "persist.debug.prov_apn_alarm"

.field protected static final DEFALUT_DATA_ON_BOOT_PROP:Ljava/lang/String; = "net.def_data_on_boot"

.field protected static final DEFAULT_DATA_RETRY_CONFIG:Ljava/lang/String; = "default_randomization=2000,5000,10000,20000,40000,80000:5000,160000:5000,320000:5000,640000:5000,1280000:5000,1800000:5000"

.field protected static final DEFAULT_MAX_PDP_RESET_FAIL:I = 0x3

.field private static final DEFAULT_MDC_INITIAL_RETRY:I = 0x1

.field protected static final INTENT_DATA_STALL_ALARM:Ljava/lang/String; = "com.android.internal.telephony.data-stall"

.field protected static final INTENT_PROVISIONING_APN_ALARM:Ljava/lang/String; = "com.android.internal.telephony.provisioning_apn_alarm"

.field protected static final INTENT_RECONNECT_ALARM:Ljava/lang/String; = "com.android.internal.telephony.data-reconnect"

.field protected static final INTENT_RECONNECT_ALARM_EXTRA_REASON:Ljava/lang/String; = "reconnect_alarm_extra_reason"

.field protected static final INTENT_RECONNECT_ALARM_EXTRA_TYPE:Ljava/lang/String; = "reconnect_alarm_extra_type"

.field protected static final INTENT_RESTART_TRYSETUP_ALARM:Ljava/lang/String; = "com.android.internal.telephony.data-restart-trysetup"

.field protected static final INTENT_RESTART_TRYSETUP_ALARM_EXTRA_TYPE:Ljava/lang/String; = "restart_trysetup_alarm_extra_type"

.field protected static final NO_RECV_POLL_LIMIT:I = 0x18

.field protected static final NULL_IP:Ljava/lang/String; = "0.0.0.0"

.field protected static final NUMBER_SENT_PACKETS_OF_HANG:I = 0xa

.field protected static final POLL_LONGEST_RTT:I = 0x1d4c0

.field protected static final POLL_NETSTAT_MILLIS:I = 0x3e8

.field protected static final POLL_NETSTAT_SCREEN_OFF_MILLIS:I = 0x927c0

.field protected static final POLL_NETSTAT_SLOW_MILLIS:I = 0x1388

.field protected static final PROVISIONING_APN_ALARM_DELAY_IN_MS_DEFAULT:I = 0xdbba0

.field protected static final PROVISIONING_APN_ALARM_TAG_EXTRA:Ljava/lang/String; = "provisioning.apn.alarm.tag"

.field protected static final RADIO_TESTS:Z = false

.field protected static final RESTORE_DEFAULT_APN_DELAY:I = 0xea60

.field protected static final SECONDARY_DATA_RETRY_CONFIG:Ljava/lang/String; = "max_retries=3, 5000, 5000, 5000"

.field protected static final VDBG:Z

.field protected static final VDBG_STALL:Z

.field static mIsCleanupRequired:Z

.field protected static sEnableFailFastRefCounter:I

.field protected static sPolicyDataEnabled:Z


# instance fields
.field protected RADIO_RESET_PROPERTY:Ljava/lang/String;

.field protected mActiveApn:Lcom/android/internal/telephony/dataconnection/ApnSetting;

.field protected mActivity:Lcom/android/internal/telephony/DctConstants$Activity;

.field mAlarmManager:Landroid/app/AlarmManager;

.field protected mAllApnSettings:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/dataconnection/ApnSetting;",
            ">;"
        }
    .end annotation
.end field

.field protected final mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/internal/telephony/dataconnection/ApnContext;",
            ">;"
        }
    .end annotation
.end field

.field protected mApnToDataConnectionId:Ljava/util/HashMap;
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

.field protected mAutoAttachOnCreation:Z

.field protected mAutoAttachOnCreationConfig:Z

.field protected mCidActive:I

.field mCm:Landroid/net/ConnectivityManager;

.field protected mDataConnectionAcHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;",
            ">;"
        }
    .end annotation
.end field

.field protected mDataConnectionTracker:Landroid/os/Handler;

.field protected mDataConnections:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/internal/telephony/dataconnection/DataConnection;",
            ">;"
        }
    .end annotation
.end field

.field private mDataEnabled:[Z

.field protected mDataEnabledLock:Ljava/lang/Object;

.field private mDataRoamingSettingObserver:Lcom/android/internal/telephony/dataconnection/DcTrackerBase$DataRoamingSettingObserver;

.field protected mDataStallAlarmIntent:Landroid/app/PendingIntent;

.field protected mDataStallAlarmTag:I

.field protected volatile mDataStallDetectionEnabled:Z

.field protected mDataStallTxRxSum:Lcom/android/internal/telephony/dataconnection/DcTrackerBase$TxRxSum;

.field protected mDcTesterFailBringUpAll:Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;

.field protected mDcc:Lcom/android/internal/telephony/dataconnection/DcController;

.field protected mEmergencyApn:Lcom/android/internal/telephony/dataconnection/ApnSetting;

.field private mEnabledCount:I

.field protected volatile mFailFast:Z

.field protected mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/android/internal/telephony/uicc/IccRecords;",
            ">;"
        }
    .end annotation
.end field

.field protected mInVoiceCall:Z

.field protected mIntentReceiver:Landroid/content/BroadcastReceiver;

.field protected mInternalDataEnabled:Z

.field protected mIsDisposed:Z

.field protected mIsProvisioning:Z

.field protected mIsPsRestricted:Z

.field protected mIsScreenOn:Z

.field protected mIsWifiConnected:Z

.field protected mNetStatPollEnabled:Z

.field protected mNetStatPollPeriod:I

.field protected mNoRecvPollCount:I

.field private final mOnSubscriptionsChangedListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

.field protected mPhone:Lcom/android/internal/telephony/PhoneBase;

.field private mPollNetStat:Ljava/lang/Runnable;

.field protected mPreferredApn:Lcom/android/internal/telephony/dataconnection/ApnSetting;

.field protected final mPrioritySortedApnContexts:Ljava/util/PriorityQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/PriorityQueue",
            "<",
            "Lcom/android/internal/telephony/dataconnection/ApnContext;",
            ">;"
        }
    .end annotation
.end field

.field protected mProvisioningApnAlarmIntent:Landroid/app/PendingIntent;

.field protected mProvisioningApnAlarmTag:I

.field protected mProvisioningUrl:Ljava/lang/String;

.field protected mReconnectIntent:Landroid/app/PendingIntent;

.field protected mReplyAc:Lcom/android/internal/util/AsyncChannel;

.field protected mRequestedApnType:Ljava/lang/String;

.field protected mResolver:Landroid/content/ContentResolver;

.field protected mRxPkts:J

.field protected mSentSinceLastRecv:J

.field protected mState:Lcom/android/internal/telephony/DctConstants$State;

.field private mSubscriptionManager:Landroid/telephony/SubscriptionManager;

.field protected mTxPkts:J

.field protected mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

.field protected mUniqueIdGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

.field protected mUserDataEnabled:Z


# direct methods
.method static synthetic -get0(Lcom/android/internal/telephony/dataconnection/DcTrackerBase;)Lcom/android/internal/telephony/dataconnection/DcTrackerBase$DataRoamingSettingObserver;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataRoamingSettingObserver:Lcom/android/internal/telephony/dataconnection/DcTrackerBase$DataRoamingSettingObserver;

    #@2
    return-object v0
.end method

.method private static synthetic -getcom_android_internal_telephony_DctConstants$StateSwitchesValues()[I
    .locals 3

    #@0
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->-com_android_internal_telephony_DctConstants$StateSwitchesValues:[I

    #@2
    if-eqz v0, :cond_0

    #@4
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->-com_android_internal_telephony_DctConstants$StateSwitchesValues:[I

    #@6
    return-object v0

    #@7
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/DctConstants$State;->values()[Lcom/android/internal/telephony/DctConstants$State;

    #@a
    move-result-object v0

    #@b
    array-length v0, v0

    #@c
    new-array v0, v0, [I

    #@e
    :try_start_0
    sget-object v1, Lcom/android/internal/telephony/DctConstants$State;->CONNECTED:Lcom/android/internal/telephony/DctConstants$State;

    #@10
    invoke-virtual {v1}, Lcom/android/internal/telephony/DctConstants$State;->ordinal()I

    #@13
    move-result v1

    #@14
    const/4 v2, 0x1

    #@15
    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_6

    #@17
    :goto_0
    :try_start_1
    sget-object v1, Lcom/android/internal/telephony/DctConstants$State;->CONNECTING:Lcom/android/internal/telephony/DctConstants$State;

    #@19
    invoke-virtual {v1}, Lcom/android/internal/telephony/DctConstants$State;->ordinal()I

    #@1c
    move-result v1

    #@1d
    const/4 v2, 0x2

    #@1e
    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_5

    #@20
    :goto_1
    :try_start_2
    sget-object v1, Lcom/android/internal/telephony/DctConstants$State;->DISCONNECTING:Lcom/android/internal/telephony/DctConstants$State;

    #@22
    invoke-virtual {v1}, Lcom/android/internal/telephony/DctConstants$State;->ordinal()I

    #@25
    move-result v1

    #@26
    const/4 v2, 0x3

    #@27
    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_4

    #@29
    :goto_2
    :try_start_3
    sget-object v1, Lcom/android/internal/telephony/DctConstants$State;->FAILED:Lcom/android/internal/telephony/DctConstants$State;

    #@2b
    invoke-virtual {v1}, Lcom/android/internal/telephony/DctConstants$State;->ordinal()I

    #@2e
    move-result v1

    #@2f
    const/4 v2, 0x7

    #@30
    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    #@32
    :goto_3
    :try_start_4
    sget-object v1, Lcom/android/internal/telephony/DctConstants$State;->IDLE:Lcom/android/internal/telephony/DctConstants$State;

    #@34
    invoke-virtual {v1}, Lcom/android/internal/telephony/DctConstants$State;->ordinal()I

    #@37
    move-result v1

    #@38
    const/4 v2, 0x4

    #@39
    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_2

    #@3b
    :goto_4
    :try_start_5
    sget-object v1, Lcom/android/internal/telephony/DctConstants$State;->RETRYING:Lcom/android/internal/telephony/DctConstants$State;

    #@3d
    invoke-virtual {v1}, Lcom/android/internal/telephony/DctConstants$State;->ordinal()I

    #@40
    move-result v1

    #@41
    const/4 v2, 0x5

    #@42
    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_1

    #@44
    :goto_5
    :try_start_6
    sget-object v1, Lcom/android/internal/telephony/DctConstants$State;->SCANNING:Lcom/android/internal/telephony/DctConstants$State;

    #@46
    invoke-virtual {v1}, Lcom/android/internal/telephony/DctConstants$State;->ordinal()I

    #@49
    move-result v1

    #@4a
    const/4 v2, 0x6

    #@4b
    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_0

    #@4d
    :goto_6
    sput-object v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->-com_android_internal_telephony_DctConstants$StateSwitchesValues:[I

    #@4f
    return-object v0

    #@50
    :catch_0
    move-exception v1

    #@51
    goto :goto_6

    #@52
    :catch_1
    move-exception v1

    #@53
    goto :goto_5

    #@54
    :catch_2
    move-exception v1

    #@55
    goto :goto_4

    #@56
    :catch_3
    move-exception v1

    #@57
    goto :goto_3

    #@58
    :catch_4
    move-exception v1

    #@59
    goto :goto_2

    #@5a
    :catch_5
    move-exception v1

    #@5b
    goto :goto_1

    #@5c
    :catch_6
    move-exception v1

    #@5d
    goto :goto_0
.end method

.method static synthetic -set0(Lcom/android/internal/telephony/dataconnection/DcTrackerBase;Lcom/android/internal/telephony/dataconnection/DcTrackerBase$DataRoamingSettingObserver;)Lcom/android/internal/telephony/dataconnection/DcTrackerBase$DataRoamingSettingObserver;
    .locals 0

    #@0
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataRoamingSettingObserver:Lcom/android/internal/telephony/dataconnection/DcTrackerBase$DataRoamingSettingObserver;

    #@2
    return-object p1
.end method

.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 87
    sput-boolean v1, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mIsCleanupRequired:Z

    #@3
    .line 117
    const/4 v0, 0x1

    #@4
    sput-boolean v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->sPolicyDataEnabled:Z

    #@6
    .line 218
    sput v1, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->sEnableFailFastRefCounter:I

    #@8
    .line 81
    return-void
.end method

.method protected constructor <init>(Lcom/android/internal/telephony/PhoneBase;)V
    .locals 14
    .param p1, "phone"    # Lcom/android/internal/telephony/PhoneBase;

    #@0
    .prologue
    const-wide/16 v2, 0x0

    #@2
    const/4 v13, 0x1

    #@3
    const/4 v12, 0x0

    #@4
    const/4 v11, 0x0

    #@5
    .line 585
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    #@8
    .line 105
    new-instance v0, Ljava/lang/Object;

    #@a
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@d
    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataEnabledLock:Ljava/lang/Object;

    #@f
    .line 109
    iput-boolean v13, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mInternalDataEnabled:Z

    #@11
    .line 114
    iput-boolean v13, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mUserDataEnabled:Z

    #@13
    .line 119
    const/16 v0, 0xa

    #@15
    new-array v0, v0, [Z

    #@17
    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataEnabled:[Z

    #@19
    .line 121
    iput v11, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mEnabledCount:I

    #@1b
    .line 124
    const-string/jumbo v0, "default"

    #@1e
    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mRequestedApnType:Ljava/lang/String;

    #@20
    .line 172
    const-string/jumbo v0, "gsm.radioreset"

    #@23
    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->RADIO_RESET_PROPERTY:Ljava/lang/String;

    #@25
    .line 198
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    #@27
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    #@2a
    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    #@2c
    .line 199
    sget-object v0, Lcom/android/internal/telephony/DctConstants$Activity;->NONE:Lcom/android/internal/telephony/DctConstants$Activity;

    #@2e
    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mActivity:Lcom/android/internal/telephony/DctConstants$Activity;

    #@30
    .line 200
    sget-object v0, Lcom/android/internal/telephony/DctConstants$State;->IDLE:Lcom/android/internal/telephony/DctConstants$State;

    #@32
    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mState:Lcom/android/internal/telephony/DctConstants$State;

    #@34
    .line 201
    iput-object v12, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataConnectionTracker:Landroid/os/Handler;

    #@36
    .line 206
    iput-boolean v11, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mNetStatPollEnabled:Z

    #@38
    .line 208
    new-instance v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$TxRxSum;

    #@3a
    move-object v1, p0

    #@3b
    move-wide v4, v2

    #@3c
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$TxRxSum;-><init>(Lcom/android/internal/telephony/dataconnection/DcTrackerBase;JJ)V

    #@3f
    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataStallTxRxSum:Lcom/android/internal/telephony/dataconnection/DcTrackerBase$TxRxSum;

    #@41
    .line 210
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@44
    move-result-wide v0

    #@45
    long-to-int v0, v0

    #@46
    iput v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataStallAlarmTag:I

    #@48
    .line 212
    iput-object v12, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataStallAlarmIntent:Landroid/app/PendingIntent;

    #@4a
    .line 216
    iput v11, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mNoRecvPollCount:I

    #@4c
    .line 220
    iput-boolean v13, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataStallDetectionEnabled:Z

    #@4e
    .line 222
    iput-boolean v11, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mFailFast:Z

    #@50
    .line 225
    iput-boolean v11, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mInVoiceCall:Z

    #@52
    .line 228
    iput-boolean v11, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mIsWifiConnected:Z

    #@54
    .line 231
    iput-object v12, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mReconnectIntent:Landroid/app/PendingIntent;

    #@56
    .line 237
    iput-boolean v11, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mAutoAttachOnCreationConfig:Z

    #@58
    .line 238
    iput-boolean v11, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mAutoAttachOnCreation:Z

    #@5a
    .line 243
    iput-boolean v13, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mIsScreenOn:Z

    #@5c
    .line 246
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    #@5e
    invoke-direct {v0, v11}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    #@61
    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mUniqueIdGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    #@63
    .line 250
    new-instance v0, Ljava/util/HashMap;

    #@65
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@68
    .line 249
    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataConnections:Ljava/util/HashMap;

    #@6a
    .line 254
    new-instance v0, Ljava/util/HashMap;

    #@6c
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@6f
    .line 253
    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataConnectionAcHashMap:Ljava/util/HashMap;

    #@71
    .line 258
    new-instance v0, Ljava/util/HashMap;

    #@73
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@76
    .line 257
    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mApnToDataConnectionId:Ljava/util/HashMap;

    #@78
    .line 262
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    #@7a
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    #@7d
    .line 261
    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    #@7f
    .line 267
    new-instance v0, Ljava/util/PriorityQueue;

    #@81
    .line 268
    new-instance v1, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;

    #@83
    invoke-direct {v1, p0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;-><init>(Lcom/android/internal/telephony/dataconnection/DcTrackerBase;)V

    #@86
    .line 267
    const/4 v2, 0x5

    #@87
    invoke-direct {v0, v2, v1}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    #@8a
    .line 266
    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPrioritySortedApnContexts:Ljava/util/PriorityQueue;

    #@8c
    .line 278
    iput-object v12, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mAllApnSettings:Ljava/util/ArrayList;

    #@8e
    .line 281
    iput-object v12, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPreferredApn:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    #@90
    .line 284
    iput-boolean v11, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mIsPsRestricted:Z

    #@92
    .line 287
    iput-object v12, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mEmergencyApn:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    #@94
    .line 290
    iput-boolean v11, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mIsDisposed:Z

    #@96
    .line 295
    iput-boolean v11, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mIsProvisioning:Z

    #@98
    .line 298
    iput-object v12, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mProvisioningUrl:Ljava/lang/String;

    #@9a
    .line 315
    iput-object v12, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mProvisioningApnAlarmIntent:Landroid/app/PendingIntent;

    #@9c
    .line 318
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@9f
    move-result-wide v0

    #@a0
    long-to-int v0, v0

    #@a1
    iput v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mProvisioningApnAlarmTag:I

    #@a3
    .line 320
    new-instance v0, Lcom/android/internal/util/AsyncChannel;

    #@a5
    invoke-direct {v0}, Lcom/android/internal/util/AsyncChannel;-><init>()V

    #@a8
    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mReplyAc:Lcom/android/internal/util/AsyncChannel;

    #@aa
    .line 322
    new-instance v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$2;

    #@ac
    invoke-direct {v0, p0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$2;-><init>(Lcom/android/internal/telephony/dataconnection/DcTrackerBase;)V

    #@af
    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    #@b1
    .line 369
    new-instance v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$3;

    #@b3
    invoke-direct {v0, p0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$3;-><init>(Lcom/android/internal/telephony/dataconnection/DcTrackerBase;)V

    #@b6
    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPollNetStat:Ljava/lang/Runnable;

    #@b8
    .line 392
    new-instance v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$4;

    #@ba
    invoke-direct {v0, p0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$4;-><init>(Lcom/android/internal/telephony/dataconnection/DcTrackerBase;)V

    #@bd
    .line 391
    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mOnSubscriptionsChangedListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    #@bf
    .line 586
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    #@c1
    .line 587
    const-string/jumbo v0, "DCT.constructor"

    #@c4
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    #@c7
    .line 588
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    #@c9
    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    #@cc
    move-result-object v0

    #@cd
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@d0
    move-result-object v0

    #@d1
    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mResolver:Landroid/content/ContentResolver;

    #@d3
    .line 589
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    #@d6
    move-result-object v0

    #@d7
    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    #@d9
    .line 590
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    #@db
    const v1, 0x42021

    #@de
    invoke-virtual {v0, p0, v1, v12}, Lcom/android/internal/telephony/uicc/UiccController;->registerForIccChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    #@e1
    .line 592
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    #@e3
    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    #@e6
    move-result-object v0

    #@e7
    const-string/jumbo v1, "alarm"

    #@ea
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@ed
    move-result-object v0

    #@ee
    check-cast v0, Landroid/app/AlarmManager;

    #@f0
    .line 591
    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mAlarmManager:Landroid/app/AlarmManager;

    #@f2
    .line 593
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    #@f4
    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    #@f7
    move-result-object v0

    #@f8
    .line 594
    const-string/jumbo v1, "connectivity"

    #@fb
    .line 593
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@fe
    move-result-object v0

    #@ff
    check-cast v0, Landroid/net/ConnectivityManager;

    #@101
    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mCm:Landroid/net/ConnectivityManager;

    #@103
    .line 597
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    #@105
    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getSubId()I

    #@108
    move-result v9

    #@109
    .line 598
    .local v9, "phoneSubId":I
    new-instance v8, Landroid/content/IntentFilter;

    #@10b
    invoke-direct {v8}, Landroid/content/IntentFilter;-><init>()V

    #@10e
    .line 599
    .local v8, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v0, "android.intent.action.SCREEN_ON"

    #@111
    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@114
    .line 600
    const-string/jumbo v0, "android.intent.action.SCREEN_OFF"

    #@117
    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@11a
    .line 601
    const-string/jumbo v0, "android.net.wifi.STATE_CHANGE"

    #@11d
    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@120
    .line 602
    const-string/jumbo v0, "android.net.wifi.WIFI_STATE_CHANGED"

    #@123
    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@126
    .line 603
    const-string/jumbo v0, "com.android.internal.telephony.data-stall"

    #@129
    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@12c
    .line 604
    const-string/jumbo v0, "com.android.internal.telephony.provisioning_apn_alarm"

    #@12f
    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@132
    .line 606
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->getDataEnabled()Z

    #@135
    move-result v0

    #@136
    iput-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mUserDataEnabled:Z

    #@138
    .line 608
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    #@13a
    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    #@13d
    move-result-object v0

    #@13e
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    #@140
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    #@142
    invoke-virtual {v0, v1, v8, v12, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    #@145
    .line 613
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataEnabled:[Z

    #@147
    .line 614
    const-string/jumbo v1, "net.def_data_on_boot"

    #@14a
    invoke-static {v1, v13}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    #@14d
    move-result v1

    #@14e
    .line 613
    aput-boolean v1, v0, v11

    #@150
    .line 615
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataEnabled:[Z

    #@152
    aget-boolean v0, v0, v11

    #@154
    if-eqz v0, :cond_0

    #@156
    .line 616
    iget v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mEnabledCount:I

    #@158
    add-int/lit8 v0, v0, 0x1

    #@15a
    iput v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mEnabledCount:I

    #@15c
    .line 619
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    #@15e
    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    #@161
    move-result-object v0

    #@162
    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    #@165
    move-result-object v10

    #@166
    .line 620
    .local v10, "sp":Landroid/content/SharedPreferences;
    const-string/jumbo v0, "disabled_on_boot_key"

    #@169
    invoke-interface {v10, v0, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    #@16c
    move-result v0

    #@16d
    iput-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mAutoAttachOnCreation:Z

    #@16f
    .line 622
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    #@171
    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    #@174
    move-result-object v0

    #@175
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    #@178
    move-result-object v0

    #@179
    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    #@17b
    .line 623
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    #@17d
    .line 624
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mOnSubscriptionsChangedListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    #@17f
    .line 623
    invoke-virtual {v0, v1}, Landroid/telephony/SubscriptionManager;->addOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    #@182
    .line 626
    new-instance v7, Landroid/os/HandlerThread;

    #@184
    const-string/jumbo v0, "DcHandlerThread"

    #@187
    invoke-direct {v7, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    #@18a
    .line 627
    .local v7, "dcHandlerThread":Landroid/os/HandlerThread;
    invoke-virtual {v7}, Landroid/os/HandlerThread;->start()V

    #@18d
    .line 628
    new-instance v6, Landroid/os/Handler;

    #@18f
    invoke-virtual {v7}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    #@192
    move-result-object v0

    #@193
    invoke-direct {v6, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    #@196
    .line 629
    .local v6, "dcHandler":Landroid/os/Handler;
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    #@198
    invoke-static {v0, p0, v6}, Lcom/android/internal/telephony/dataconnection/DcController;->makeDcc(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/dataconnection/DcTrackerBase;Landroid/os/Handler;)Lcom/android/internal/telephony/dataconnection/DcController;

    #@19b
    move-result-object v0

    #@19c
    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDcc:Lcom/android/internal/telephony/dataconnection/DcController;

    #@19e
    .line 630
    new-instance v0, Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;

    #@1a0
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    #@1a2
    invoke-direct {v0, v1, v6}, Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;-><init>(Lcom/android/internal/telephony/PhoneBase;Landroid/os/Handler;)V

    #@1a5
    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDcTesterFailBringUpAll:Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;

    #@1a7
    .line 584
    return-void
.end method

.method private notifyApnIdDisconnected(Ljava/lang/String;I)V
    .locals 3
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "apnId"    # I

    #@0
    .prologue
    .line 1265
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    #@2
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->apnIdToType(I)Ljava/lang/String;

    #@5
    move-result-object v1

    #@6
    .line 1266
    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$DataState;->DISCONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    #@8
    .line 1265
    invoke-virtual {v0, p1, v1, v2}, Lcom/android/internal/telephony/PhoneBase;->notifyDataConnection(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/PhoneConstants$DataState;)V

    #@b
    .line 1264
    return-void
.end method

.method private notifyApnIdUpToCurrent(Ljava/lang/String;I)V
    .locals 3
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "apnId"    # I

    #@0
    .prologue
    .line 1241
    invoke-static {}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->-getcom_android_internal_telephony_DctConstants$StateSwitchesValues()[I

    #@3
    move-result-object v0

    #@4
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mState:Lcom/android/internal/telephony/DctConstants$State;

    #@6
    invoke-virtual {v1}, Lcom/android/internal/telephony/DctConstants$State;->ordinal()I

    #@9
    move-result v1

    #@a
    aget v0, v0, v1

    #@c
    packed-switch v0, :pswitch_data_0

    #@f
    .line 1240
    :goto_0
    :pswitch_0
    return-void

    #@10
    .line 1247
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    #@12
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->apnIdToType(I)Ljava/lang/String;

    #@15
    move-result-object v1

    #@16
    .line 1248
    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$DataState;->CONNECTING:Lcom/android/internal/telephony/PhoneConstants$DataState;

    #@18
    .line 1247
    invoke-virtual {v0, p1, v1, v2}, Lcom/android/internal/telephony/PhoneBase;->notifyDataConnection(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/PhoneConstants$DataState;)V

    #@1b
    goto :goto_0

    #@1c
    .line 1252
    :pswitch_2
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    #@1e
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->apnIdToType(I)Ljava/lang/String;

    #@21
    move-result-object v1

    #@22
    .line 1253
    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$DataState;->CONNECTING:Lcom/android/internal/telephony/PhoneConstants$DataState;

    #@24
    .line 1252
    invoke-virtual {v0, p1, v1, v2}, Lcom/android/internal/telephony/PhoneBase;->notifyDataConnection(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/PhoneConstants$DataState;)V

    #@27
    .line 1254
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    #@29
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->apnIdToType(I)Ljava/lang/String;

    #@2c
    move-result-object v1

    #@2d
    .line 1255
    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$DataState;->CONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    #@2f
    .line 1254
    invoke-virtual {v0, p1, v1, v2}, Lcom/android/internal/telephony/PhoneBase;->notifyDataConnection(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/PhoneConstants$DataState;)V

    #@32
    goto :goto_0

    #@33
    .line 1241
    nop

    #@34
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private updateDataStallInfo()V
    .locals 13

    #@0
    .prologue
    const/4 v12, 0x0

    #@1
    const-wide/16 v10, 0x0

    #@3
    .line 1637
    new-instance v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$TxRxSum;

    #@5
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataStallTxRxSum:Lcom/android/internal/telephony/dataconnection/DcTrackerBase$TxRxSum;

    #@7
    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$TxRxSum;-><init>(Lcom/android/internal/telephony/dataconnection/DcTrackerBase;Lcom/android/internal/telephony/dataconnection/DcTrackerBase$TxRxSum;)V

    #@a
    .line 1638
    .local v0, "preTxRxSum":Lcom/android/internal/telephony/dataconnection/DcTrackerBase$TxRxSum;
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataStallTxRxSum:Lcom/android/internal/telephony/dataconnection/DcTrackerBase$TxRxSum;

    #@c
    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$TxRxSum;->updateTxRxSum()V

    #@f
    .line 1645
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataStallTxRxSum:Lcom/android/internal/telephony/dataconnection/DcTrackerBase$TxRxSum;

    #@11
    iget-wide v6, v1, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$TxRxSum;->txPkts:J

    #@13
    iget-wide v8, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$TxRxSum;->txPkts:J

    #@15
    sub-long v4, v6, v8

    #@17
    .line 1646
    .local v4, "sent":J
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataStallTxRxSum:Lcom/android/internal/telephony/dataconnection/DcTrackerBase$TxRxSum;

    #@19
    iget-wide v6, v1, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$TxRxSum;->rxPkts:J

    #@1b
    iget-wide v8, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$TxRxSum;->rxPkts:J

    #@1d
    sub-long v2, v6, v8

    #@1f
    .line 1654
    .local v2, "received":J
    cmp-long v1, v4, v10

    #@21
    if-lez v1, :cond_1

    #@23
    cmp-long v1, v2, v10

    #@25
    if-lez v1, :cond_1

    #@27
    .line 1656
    iput-wide v10, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mSentSinceLastRecv:J

    #@29
    .line 1657
    invoke-virtual {p0, v12}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->putRecoveryAction(I)V

    #@2c
    .line 1634
    :cond_0
    :goto_0
    return-void

    #@2d
    .line 1658
    :cond_1
    cmp-long v1, v4, v10

    #@2f
    if-lez v1, :cond_3

    #@31
    cmp-long v1, v2, v10

    #@33
    if-nez v1, :cond_3

    #@35
    .line 1659
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    #@37
    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    #@3a
    move-result-object v1

    #@3b
    sget-object v6, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    #@3d
    if-ne v1, v6, :cond_2

    #@3f
    .line 1660
    iget-wide v6, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mSentSinceLastRecv:J

    #@41
    add-long/2addr v6, v4

    #@42
    iput-wide v6, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mSentSinceLastRecv:J

    #@44
    .line 1665
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    #@46
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@49
    const-string/jumbo v6, "updateDataStallInfo: OUT sent="

    #@4c
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v1

    #@50
    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@53
    move-result-object v1

    #@54
    .line 1666
    const-string/jumbo v6, " mSentSinceLastRecv="

    #@57
    .line 1665
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v1

    #@5b
    .line 1666
    iget-wide v6, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mSentSinceLastRecv:J

    #@5d
    .line 1665
    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@60
    move-result-object v1

    #@61
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@64
    move-result-object v1

    #@65
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    #@68
    goto :goto_0

    #@69
    .line 1662
    :cond_2
    iput-wide v10, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mSentSinceLastRecv:J

    #@6b
    goto :goto_1

    #@6c
    .line 1668
    :cond_3
    cmp-long v1, v4, v10

    #@6e
    if-nez v1, :cond_0

    #@70
    cmp-long v1, v2, v10

    #@72
    if-lez v1, :cond_0

    #@74
    .line 1670
    iput-wide v10, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mSentSinceLastRecv:J

    #@76
    .line 1671
    invoke-virtual {p0, v12}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->putRecoveryAction(I)V

    #@79
    goto :goto_0
.end method


# virtual methods
.method protected apnIdToType(I)Ljava/lang/String;
    .locals 2
    .param p1, "id"    # I

    #@0
    .prologue
    .line 1180
    packed-switch p1, :pswitch_data_0

    #@3
    .line 1202
    new-instance v0, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v1, "Unknown id ("

    #@b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v0

    #@f
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@12
    move-result-object v0

    #@13
    const-string/jumbo v1, ") in apnIdToType"

    #@16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v0

    #@1a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d
    move-result-object v0

    #@1e
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    #@21
    .line 1203
    const-string/jumbo v0, "default"

    #@24
    return-object v0

    #@25
    .line 1182
    :pswitch_0
    const-string/jumbo v0, "default"

    #@28
    return-object v0

    #@29
    .line 1184
    :pswitch_1
    const-string/jumbo v0, "mms"

    #@2c
    return-object v0

    #@2d
    .line 1186
    :pswitch_2
    const-string/jumbo v0, "supl"

    #@30
    return-object v0

    #@31
    .line 1188
    :pswitch_3
    const-string/jumbo v0, "dun"

    #@34
    return-object v0

    #@35
    .line 1190
    :pswitch_4
    const-string/jumbo v0, "hipri"

    #@38
    return-object v0

    #@39
    .line 1192
    :pswitch_5
    const-string/jumbo v0, "ims"

    #@3c
    return-object v0

    #@3d
    .line 1194
    :pswitch_6
    const-string/jumbo v0, "fota"

    #@40
    return-object v0

    #@41
    .line 1196
    :pswitch_7
    const-string/jumbo v0, "cbs"

    #@44
    return-object v0

    #@45
    .line 1198
    :pswitch_8
    const-string/jumbo v0, "ia"

    #@48
    return-object v0

    #@49
    .line 1200
    :pswitch_9
    const-string/jumbo v0, "emergency"

    #@4c
    return-object v0

    #@4d
    .line 1180
    nop

    #@4e
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method protected apnTypeToId(Ljava/lang/String;)I
    .locals 1
    .param p1, "type"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1154
    const-string/jumbo v0, "default"

    #@3
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 1155
    const/4 v0, 0x0

    #@a
    return v0

    #@b
    .line 1156
    :cond_0
    const-string/jumbo v0, "mms"

    #@e
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    #@11
    move-result v0

    #@12
    if-eqz v0, :cond_1

    #@14
    .line 1157
    const/4 v0, 0x1

    #@15
    return v0

    #@16
    .line 1158
    :cond_1
    const-string/jumbo v0, "supl"

    #@19
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    #@1c
    move-result v0

    #@1d
    if-eqz v0, :cond_2

    #@1f
    .line 1159
    const/4 v0, 0x2

    #@20
    return v0

    #@21
    .line 1160
    :cond_2
    const-string/jumbo v0, "dun"

    #@24
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    #@27
    move-result v0

    #@28
    if-eqz v0, :cond_3

    #@2a
    .line 1161
    const/4 v0, 0x3

    #@2b
    return v0

    #@2c
    .line 1162
    :cond_3
    const-string/jumbo v0, "hipri"

    #@2f
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    #@32
    move-result v0

    #@33
    if-eqz v0, :cond_4

    #@35
    .line 1163
    const/4 v0, 0x4

    #@36
    return v0

    #@37
    .line 1164
    :cond_4
    const-string/jumbo v0, "ims"

    #@3a
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    #@3d
    move-result v0

    #@3e
    if-eqz v0, :cond_5

    #@40
    .line 1165
    const/4 v0, 0x5

    #@41
    return v0

    #@42
    .line 1166
    :cond_5
    const-string/jumbo v0, "fota"

    #@45
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    #@48
    move-result v0

    #@49
    if-eqz v0, :cond_6

    #@4b
    .line 1167
    const/4 v0, 0x6

    #@4c
    return v0

    #@4d
    .line 1168
    :cond_6
    const-string/jumbo v0, "cbs"

    #@50
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    #@53
    move-result v0

    #@54
    if-eqz v0, :cond_7

    #@56
    .line 1169
    const/4 v0, 0x7

    #@57
    return v0

    #@58
    .line 1170
    :cond_7
    const-string/jumbo v0, "ia"

    #@5b
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    #@5e
    move-result v0

    #@5f
    if-eqz v0, :cond_8

    #@61
    .line 1171
    const/16 v0, 0x8

    #@63
    return v0

    #@64
    .line 1172
    :cond_8
    const-string/jumbo v0, "emergency"

    #@67
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    #@6a
    move-result v0

    #@6b
    if-eqz v0, :cond_9

    #@6d
    .line 1173
    const/16 v0, 0x9

    #@6f
    return v0

    #@70
    .line 1175
    :cond_9
    const/4 v0, -0x1

    #@71
    return v0
.end method

.method public cleanUpAllConnections(Ljava/lang/String;)V
    .locals 2
    .param p1, "cause"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1365
    const v1, 0x4201d

    #@3
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->obtainMessage(I)Landroid/os/Message;

    #@6
    move-result-object v0

    #@7
    .line 1366
    .local v0, "msg":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@9
    .line 1367
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->sendMessage(Landroid/os/Message;)Z

    #@c
    .line 1364
    return-void
.end method

.method protected abstract completeConnection(Lcom/android/internal/telephony/dataconnection/ApnContext;)V
.end method

.method public abstract decApnRefCount(Ljava/lang/String;Landroid/util/LocalLog;)V
.end method

.method public dispose()V
    .locals 4

    #@0
    .prologue
    .line 634
    const-string/jumbo v2, "DCT.dispose"

    #@3
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    #@6
    .line 635
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataConnectionAcHashMap:Ljava/util/HashMap;

    #@8
    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    #@b
    move-result-object v2

    #@c
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@f
    move-result-object v1

    #@10
    .local v1, "dcac$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@13
    move-result v2

    #@14
    if-eqz v2, :cond_0

    #@16
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@19
    move-result-object v0

    #@1a
    check-cast v0, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;

    #@1c
    .line 636
    .local v0, "dcac":Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->disconnect()V

    #@1f
    goto :goto_0

    #@20
    .line 638
    .end local v0    # "dcac":Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataConnectionAcHashMap:Ljava/util/HashMap;

    #@22
    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    #@25
    .line 639
    const/4 v2, 0x1

    #@26
    iput-boolean v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mIsDisposed:Z

    #@28
    .line 640
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    #@2a
    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    #@2d
    move-result-object v2

    #@2e
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    #@30
    invoke-virtual {v2, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    #@33
    .line 641
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    #@35
    invoke-virtual {v2, p0}, Lcom/android/internal/telephony/uicc/UiccController;->unregisterForIccChanged(Landroid/os/Handler;)V

    #@38
    .line 642
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataRoamingSettingObserver:Lcom/android/internal/telephony/dataconnection/DcTrackerBase$DataRoamingSettingObserver;

    #@3a
    if-eqz v2, :cond_1

    #@3c
    .line 643
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataRoamingSettingObserver:Lcom/android/internal/telephony/dataconnection/DcTrackerBase$DataRoamingSettingObserver;

    #@3e
    invoke-virtual {v2}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$DataRoamingSettingObserver;->unregister()V

    #@41
    .line 645
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    #@43
    .line 646
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mOnSubscriptionsChangedListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    #@45
    .line 645
    invoke-virtual {v2, v3}, Landroid/telephony/SubscriptionManager;->removeOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    #@48
    .line 647
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDcc:Lcom/android/internal/telephony/dataconnection/DcController;

    #@4a
    invoke-virtual {v2}, Lcom/android/internal/telephony/dataconnection/DcController;->dispose()V

    #@4d
    .line 648
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDcTesterFailBringUpAll:Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;

    #@4f
    invoke-virtual {v2}, Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;->dispose()V

    #@52
    .line 633
    return-void
.end method

.method protected doRecovery()V
    .locals 5

    #@0
    .prologue
    .line 1578
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->getOverallState()Lcom/android/internal/telephony/DctConstants$State;

    #@3
    move-result-object v2

    #@4
    sget-object v3, Lcom/android/internal/telephony/DctConstants$State;->CONNECTED:Lcom/android/internal/telephony/DctConstants$State;

    #@6
    if-ne v2, v3, :cond_0

    #@8
    .line 1580
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->getRecoveryAction()I

    #@b
    move-result v1

    #@c
    .line 1581
    .local v1, "recoveryAction":I
    packed-switch v1, :pswitch_data_0

    #@f
    .line 1627
    new-instance v2, Ljava/lang/RuntimeException;

    #@11
    new-instance v3, Ljava/lang/StringBuilder;

    #@13
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@16
    const-string/jumbo v4, "doRecovery: Invalid recoveryAction="

    #@19
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v3

    #@1d
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@20
    move-result-object v3

    #@21
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@24
    move-result-object v3

    #@25
    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@28
    throw v2

    #@29
    .line 1584
    :pswitch_0
    iget-wide v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mSentSinceLastRecv:J

    #@2b
    .line 1583
    const v4, 0xc3c6

    #@2e
    invoke-static {v4, v2, v3}, Landroid/util/EventLog;->writeEvent(IJ)I

    #@31
    .line 1585
    const-string/jumbo v2, "doRecovery() get data call list"

    #@34
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    #@37
    .line 1586
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    #@39
    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@3b
    const v3, 0x42004

    #@3e
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->obtainMessage(I)Landroid/os/Message;

    #@41
    move-result-object v3

    #@42
    invoke-interface {v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->getDataCallList(Landroid/os/Message;)V

    #@45
    .line 1587
    const/4 v2, 0x1

    #@46
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->putRecoveryAction(I)V

    #@49
    .line 1630
    :goto_0
    const-wide/16 v2, 0x0

    #@4b
    iput-wide v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mSentSinceLastRecv:J

    #@4d
    .line 1577
    .end local v1    # "recoveryAction":I
    :cond_0
    return-void

    #@4e
    .line 1590
    .restart local v1    # "recoveryAction":I
    :pswitch_1
    iget-wide v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mSentSinceLastRecv:J

    #@50
    const v4, 0xc3c7

    #@53
    invoke-static {v4, v2, v3}, Landroid/util/EventLog;->writeEvent(IJ)I

    #@56
    .line 1591
    const-string/jumbo v2, "doRecovery() cleanup all connections"

    #@59
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    #@5c
    .line 1592
    const-string/jumbo v2, "pdpReset"

    #@5f
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->cleanUpAllConnections(Ljava/lang/String;)V

    #@62
    .line 1593
    const/4 v2, 0x2

    #@63
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->putRecoveryAction(I)V

    #@66
    goto :goto_0

    #@67
    .line 1597
    :pswitch_2
    iget-wide v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mSentSinceLastRecv:J

    #@69
    .line 1596
    const v4, 0xc3c8

    #@6c
    invoke-static {v4, v2, v3}, Landroid/util/EventLog;->writeEvent(IJ)I

    #@6f
    .line 1598
    const-string/jumbo v2, "doRecovery() re-register"

    #@72
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    #@75
    .line 1599
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    #@77
    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    #@7a
    move-result-object v2

    #@7b
    const/4 v3, 0x0

    #@7c
    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/ServiceStateTracker;->reRegisterNetwork(Landroid/os/Message;)V

    #@7f
    .line 1600
    const/4 v2, 0x3

    #@80
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->putRecoveryAction(I)V

    #@83
    goto :goto_0

    #@84
    .line 1604
    :pswitch_3
    iget-wide v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mSentSinceLastRecv:J

    #@86
    .line 1603
    const v4, 0xc3c9

    #@89
    invoke-static {v4, v2, v3}, Landroid/util/EventLog;->writeEvent(IJ)I

    #@8c
    .line 1605
    const-string/jumbo v2, "restarting radio"

    #@8f
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    #@92
    .line 1606
    const/4 v2, 0x4

    #@93
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->putRecoveryAction(I)V

    #@96
    .line 1607
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->restartRadio()V

    #@99
    goto :goto_0

    #@9a
    .line 1616
    :pswitch_4
    const v2, 0xc3ca

    #@9d
    const/4 v3, -0x1

    #@9e
    invoke-static {v2, v3}, Landroid/util/EventLog;->writeEvent(II)I

    #@a1
    .line 1617
    const-string/jumbo v2, "restarting radio with gsm.radioreset to true"

    #@a4
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    #@a7
    .line 1618
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->RADIO_RESET_PROPERTY:Ljava/lang/String;

    #@a9
    const-string/jumbo v3, "true"

    #@ac
    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    #@af
    .line 1621
    const-wide/16 v2, 0x3e8

    #@b1
    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    #@b4
    .line 1623
    :goto_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->restartRadio()V

    #@b7
    .line 1624
    const/4 v2, 0x0

    #@b8
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->putRecoveryAction(I)V

    #@bb
    goto :goto_0

    #@bc
    .line 1622
    :catch_0
    move-exception v0

    #@bd
    .local v0, "e":Ljava/lang/InterruptedException;
    goto :goto_1

    #@be
    .line 1581
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 21
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 1918
    const-string/jumbo v17, "DcTrackerBase:"

    #@3
    move-object/from16 v0, p2

    #@5
    move-object/from16 v1, v17

    #@7
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@a
    .line 1919
    const-string/jumbo v17, " RADIO_TESTS=false"

    #@d
    move-object/from16 v0, p2

    #@f
    move-object/from16 v1, v17

    #@11
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@14
    .line 1920
    new-instance v17, Ljava/lang/StringBuilder;

    #@16
    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    #@19
    const-string/jumbo v18, " mInternalDataEnabled="

    #@1c
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v17

    #@20
    move-object/from16 v0, p0

    #@22
    iget-boolean v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mInternalDataEnabled:Z

    #@24
    move/from16 v18, v0

    #@26
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@29
    move-result-object v17

    #@2a
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2d
    move-result-object v17

    #@2e
    move-object/from16 v0, p2

    #@30
    move-object/from16 v1, v17

    #@32
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@35
    .line 1921
    new-instance v17, Ljava/lang/StringBuilder;

    #@37
    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    #@3a
    const-string/jumbo v18, " mUserDataEnabled="

    #@3d
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v17

    #@41
    move-object/from16 v0, p0

    #@43
    iget-boolean v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mUserDataEnabled:Z

    #@45
    move/from16 v18, v0

    #@47
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v17

    #@4b
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4e
    move-result-object v17

    #@4f
    move-object/from16 v0, p2

    #@51
    move-object/from16 v1, v17

    #@53
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@56
    .line 1922
    new-instance v17, Ljava/lang/StringBuilder;

    #@58
    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    #@5b
    const-string/jumbo v18, " sPolicyDataEnabed="

    #@5e
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@61
    move-result-object v17

    #@62
    sget-boolean v18, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->sPolicyDataEnabled:Z

    #@64
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@67
    move-result-object v17

    #@68
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6b
    move-result-object v17

    #@6c
    move-object/from16 v0, p2

    #@6e
    move-object/from16 v1, v17

    #@70
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@73
    .line 1923
    const-string/jumbo v17, " mDataEnabled:"

    #@76
    move-object/from16 v0, p2

    #@78
    move-object/from16 v1, v17

    #@7a
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@7d
    .line 1924
    const/4 v15, 0x0

    #@7e
    .local v15, "i":I
    :goto_0
    move-object/from16 v0, p0

    #@80
    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataEnabled:[Z

    #@82
    move-object/from16 v17, v0

    #@84
    move-object/from16 v0, v17

    #@86
    array-length v0, v0

    #@87
    move/from16 v17, v0

    #@89
    move/from16 v0, v17

    #@8b
    if-ge v15, v0, :cond_0

    #@8d
    .line 1925
    const-string/jumbo v17, "  mDataEnabled[%d]=%b\n"

    #@90
    const/16 v18, 0x2

    #@92
    move/from16 v0, v18

    #@94
    new-array v0, v0, [Ljava/lang/Object;

    #@96
    move-object/from16 v18, v0

    #@98
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@9b
    move-result-object v19

    #@9c
    const/16 v20, 0x0

    #@9e
    aput-object v19, v18, v20

    #@a0
    move-object/from16 v0, p0

    #@a2
    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataEnabled:[Z

    #@a4
    move-object/from16 v19, v0

    #@a6
    aget-boolean v19, v19, v15

    #@a8
    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@ab
    move-result-object v19

    #@ac
    const/16 v20, 0x1

    #@ae
    aput-object v19, v18, v20

    #@b0
    move-object/from16 v0, p2

    #@b2
    move-object/from16 v1, v17

    #@b4
    move-object/from16 v2, v18

    #@b6
    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    #@b9
    .line 1924
    add-int/lit8 v15, v15, 0x1

    #@bb
    goto :goto_0

    #@bc
    .line 1927
    :cond_0
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->flush()V

    #@bf
    .line 1928
    new-instance v17, Ljava/lang/StringBuilder;

    #@c1
    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    #@c4
    const-string/jumbo v18, " mEnabledCount="

    #@c7
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ca
    move-result-object v17

    #@cb
    move-object/from16 v0, p0

    #@cd
    iget v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mEnabledCount:I

    #@cf
    move/from16 v18, v0

    #@d1
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@d4
    move-result-object v17

    #@d5
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d8
    move-result-object v17

    #@d9
    move-object/from16 v0, p2

    #@db
    move-object/from16 v1, v17

    #@dd
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@e0
    .line 1929
    new-instance v17, Ljava/lang/StringBuilder;

    #@e2
    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    #@e5
    const-string/jumbo v18, " mRequestedApnType="

    #@e8
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@eb
    move-result-object v17

    #@ec
    move-object/from16 v0, p0

    #@ee
    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mRequestedApnType:Ljava/lang/String;

    #@f0
    move-object/from16 v18, v0

    #@f2
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f5
    move-result-object v17

    #@f6
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@f9
    move-result-object v17

    #@fa
    move-object/from16 v0, p2

    #@fc
    move-object/from16 v1, v17

    #@fe
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@101
    .line 1930
    new-instance v17, Ljava/lang/StringBuilder;

    #@103
    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    #@106
    const-string/jumbo v18, " mPhone="

    #@109
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10c
    move-result-object v17

    #@10d
    move-object/from16 v0, p0

    #@10f
    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    #@111
    move-object/from16 v18, v0

    #@113
    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/PhoneBase;->getPhoneName()Ljava/lang/String;

    #@116
    move-result-object v18

    #@117
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11a
    move-result-object v17

    #@11b
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@11e
    move-result-object v17

    #@11f
    move-object/from16 v0, p2

    #@121
    move-object/from16 v1, v17

    #@123
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@126
    .line 1931
    new-instance v17, Ljava/lang/StringBuilder;

    #@128
    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    #@12b
    const-string/jumbo v18, " mActivity="

    #@12e
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@131
    move-result-object v17

    #@132
    move-object/from16 v0, p0

    #@134
    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mActivity:Lcom/android/internal/telephony/DctConstants$Activity;

    #@136
    move-object/from16 v18, v0

    #@138
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@13b
    move-result-object v17

    #@13c
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13f
    move-result-object v17

    #@140
    move-object/from16 v0, p2

    #@142
    move-object/from16 v1, v17

    #@144
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@147
    .line 1932
    new-instance v17, Ljava/lang/StringBuilder;

    #@149
    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    #@14c
    const-string/jumbo v18, " mState="

    #@14f
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@152
    move-result-object v17

    #@153
    move-object/from16 v0, p0

    #@155
    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mState:Lcom/android/internal/telephony/DctConstants$State;

    #@157
    move-object/from16 v18, v0

    #@159
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@15c
    move-result-object v17

    #@15d
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@160
    move-result-object v17

    #@161
    move-object/from16 v0, p2

    #@163
    move-object/from16 v1, v17

    #@165
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@168
    .line 1933
    new-instance v17, Ljava/lang/StringBuilder;

    #@16a
    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    #@16d
    const-string/jumbo v18, " mTxPkts="

    #@170
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@173
    move-result-object v17

    #@174
    move-object/from16 v0, p0

    #@176
    iget-wide v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mTxPkts:J

    #@178
    move-wide/from16 v18, v0

    #@17a
    invoke-virtual/range {v17 .. v19}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@17d
    move-result-object v17

    #@17e
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@181
    move-result-object v17

    #@182
    move-object/from16 v0, p2

    #@184
    move-object/from16 v1, v17

    #@186
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@189
    .line 1934
    new-instance v17, Ljava/lang/StringBuilder;

    #@18b
    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    #@18e
    const-string/jumbo v18, " mRxPkts="

    #@191
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@194
    move-result-object v17

    #@195
    move-object/from16 v0, p0

    #@197
    iget-wide v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mRxPkts:J

    #@199
    move-wide/from16 v18, v0

    #@19b
    invoke-virtual/range {v17 .. v19}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@19e
    move-result-object v17

    #@19f
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a2
    move-result-object v17

    #@1a3
    move-object/from16 v0, p2

    #@1a5
    move-object/from16 v1, v17

    #@1a7
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1aa
    .line 1935
    new-instance v17, Ljava/lang/StringBuilder;

    #@1ac
    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    #@1af
    const-string/jumbo v18, " mNetStatPollPeriod="

    #@1b2
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b5
    move-result-object v17

    #@1b6
    move-object/from16 v0, p0

    #@1b8
    iget v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mNetStatPollPeriod:I

    #@1ba
    move/from16 v18, v0

    #@1bc
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1bf
    move-result-object v17

    #@1c0
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c3
    move-result-object v17

    #@1c4
    move-object/from16 v0, p2

    #@1c6
    move-object/from16 v1, v17

    #@1c8
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1cb
    .line 1936
    new-instance v17, Ljava/lang/StringBuilder;

    #@1cd
    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    #@1d0
    const-string/jumbo v18, " mNetStatPollEnabled="

    #@1d3
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d6
    move-result-object v17

    #@1d7
    move-object/from16 v0, p0

    #@1d9
    iget-boolean v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mNetStatPollEnabled:Z

    #@1db
    move/from16 v18, v0

    #@1dd
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@1e0
    move-result-object v17

    #@1e1
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e4
    move-result-object v17

    #@1e5
    move-object/from16 v0, p2

    #@1e7
    move-object/from16 v1, v17

    #@1e9
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1ec
    .line 1937
    new-instance v17, Ljava/lang/StringBuilder;

    #@1ee
    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    #@1f1
    const-string/jumbo v18, " mDataStallTxRxSum="

    #@1f4
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f7
    move-result-object v17

    #@1f8
    move-object/from16 v0, p0

    #@1fa
    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataStallTxRxSum:Lcom/android/internal/telephony/dataconnection/DcTrackerBase$TxRxSum;

    #@1fc
    move-object/from16 v18, v0

    #@1fe
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@201
    move-result-object v17

    #@202
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@205
    move-result-object v17

    #@206
    move-object/from16 v0, p2

    #@208
    move-object/from16 v1, v17

    #@20a
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@20d
    .line 1938
    new-instance v17, Ljava/lang/StringBuilder;

    #@20f
    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    #@212
    const-string/jumbo v18, " mDataStallAlarmTag="

    #@215
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@218
    move-result-object v17

    #@219
    move-object/from16 v0, p0

    #@21b
    iget v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataStallAlarmTag:I

    #@21d
    move/from16 v18, v0

    #@21f
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@222
    move-result-object v17

    #@223
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@226
    move-result-object v17

    #@227
    move-object/from16 v0, p2

    #@229
    move-object/from16 v1, v17

    #@22b
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@22e
    .line 1939
    new-instance v17, Ljava/lang/StringBuilder;

    #@230
    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    #@233
    const-string/jumbo v18, " mDataStallDetectionEanbled="

    #@236
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@239
    move-result-object v17

    #@23a
    move-object/from16 v0, p0

    #@23c
    iget-boolean v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataStallDetectionEnabled:Z

    #@23e
    move/from16 v18, v0

    #@240
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@243
    move-result-object v17

    #@244
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@247
    move-result-object v17

    #@248
    move-object/from16 v0, p2

    #@24a
    move-object/from16 v1, v17

    #@24c
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@24f
    .line 1940
    new-instance v17, Ljava/lang/StringBuilder;

    #@251
    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    #@254
    const-string/jumbo v18, " mSentSinceLastRecv="

    #@257
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25a
    move-result-object v17

    #@25b
    move-object/from16 v0, p0

    #@25d
    iget-wide v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mSentSinceLastRecv:J

    #@25f
    move-wide/from16 v18, v0

    #@261
    invoke-virtual/range {v17 .. v19}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@264
    move-result-object v17

    #@265
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@268
    move-result-object v17

    #@269
    move-object/from16 v0, p2

    #@26b
    move-object/from16 v1, v17

    #@26d
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@270
    .line 1941
    new-instance v17, Ljava/lang/StringBuilder;

    #@272
    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    #@275
    const-string/jumbo v18, " mNoRecvPollCount="

    #@278
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27b
    move-result-object v17

    #@27c
    move-object/from16 v0, p0

    #@27e
    iget v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mNoRecvPollCount:I

    #@280
    move/from16 v18, v0

    #@282
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@285
    move-result-object v17

    #@286
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@289
    move-result-object v17

    #@28a
    move-object/from16 v0, p2

    #@28c
    move-object/from16 v1, v17

    #@28e
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@291
    .line 1942
    new-instance v17, Ljava/lang/StringBuilder;

    #@293
    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    #@296
    const-string/jumbo v18, " mResolver="

    #@299
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29c
    move-result-object v17

    #@29d
    move-object/from16 v0, p0

    #@29f
    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mResolver:Landroid/content/ContentResolver;

    #@2a1
    move-object/from16 v18, v0

    #@2a3
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2a6
    move-result-object v17

    #@2a7
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2aa
    move-result-object v17

    #@2ab
    move-object/from16 v0, p2

    #@2ad
    move-object/from16 v1, v17

    #@2af
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@2b2
    .line 1943
    new-instance v17, Ljava/lang/StringBuilder;

    #@2b4
    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    #@2b7
    const-string/jumbo v18, " mIsWifiConnected="

    #@2ba
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2bd
    move-result-object v17

    #@2be
    move-object/from16 v0, p0

    #@2c0
    iget-boolean v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mIsWifiConnected:Z

    #@2c2
    move/from16 v18, v0

    #@2c4
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@2c7
    move-result-object v17

    #@2c8
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2cb
    move-result-object v17

    #@2cc
    move-object/from16 v0, p2

    #@2ce
    move-object/from16 v1, v17

    #@2d0
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@2d3
    .line 1944
    new-instance v17, Ljava/lang/StringBuilder;

    #@2d5
    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    #@2d8
    const-string/jumbo v18, " mReconnectIntent="

    #@2db
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2de
    move-result-object v17

    #@2df
    move-object/from16 v0, p0

    #@2e1
    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mReconnectIntent:Landroid/app/PendingIntent;

    #@2e3
    move-object/from16 v18, v0

    #@2e5
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2e8
    move-result-object v17

    #@2e9
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2ec
    move-result-object v17

    #@2ed
    move-object/from16 v0, p2

    #@2ef
    move-object/from16 v1, v17

    #@2f1
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@2f4
    .line 1945
    new-instance v17, Ljava/lang/StringBuilder;

    #@2f6
    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    #@2f9
    const-string/jumbo v18, " mCidActive="

    #@2fc
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2ff
    move-result-object v17

    #@300
    move-object/from16 v0, p0

    #@302
    iget v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mCidActive:I

    #@304
    move/from16 v18, v0

    #@306
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@309
    move-result-object v17

    #@30a
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@30d
    move-result-object v17

    #@30e
    move-object/from16 v0, p2

    #@310
    move-object/from16 v1, v17

    #@312
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@315
    .line 1946
    new-instance v17, Ljava/lang/StringBuilder;

    #@317
    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    #@31a
    const-string/jumbo v18, " mAutoAttachOnCreation="

    #@31d
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@320
    move-result-object v17

    #@321
    move-object/from16 v0, p0

    #@323
    iget-boolean v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mAutoAttachOnCreation:Z

    #@325
    move/from16 v18, v0

    #@327
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@32a
    move-result-object v17

    #@32b
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@32e
    move-result-object v17

    #@32f
    move-object/from16 v0, p2

    #@331
    move-object/from16 v1, v17

    #@333
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@336
    .line 1947
    new-instance v17, Ljava/lang/StringBuilder;

    #@338
    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    #@33b
    const-string/jumbo v18, " mIsScreenOn="

    #@33e
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@341
    move-result-object v17

    #@342
    move-object/from16 v0, p0

    #@344
    iget-boolean v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mIsScreenOn:Z

    #@346
    move/from16 v18, v0

    #@348
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@34b
    move-result-object v17

    #@34c
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@34f
    move-result-object v17

    #@350
    move-object/from16 v0, p2

    #@352
    move-object/from16 v1, v17

    #@354
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@357
    .line 1948
    new-instance v17, Ljava/lang/StringBuilder;

    #@359
    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    #@35c
    const-string/jumbo v18, " mUniqueIdGenerator="

    #@35f
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@362
    move-result-object v17

    #@363
    move-object/from16 v0, p0

    #@365
    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mUniqueIdGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    #@367
    move-object/from16 v18, v0

    #@369
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@36c
    move-result-object v17

    #@36d
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@370
    move-result-object v17

    #@371
    move-object/from16 v0, p2

    #@373
    move-object/from16 v1, v17

    #@375
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@378
    .line 1949
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->flush()V

    #@37b
    .line 1950
    const-string/jumbo v17, " ***************************************"

    #@37e
    move-object/from16 v0, p2

    #@380
    move-object/from16 v1, v17

    #@382
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@385
    .line 1951
    move-object/from16 v0, p0

    #@387
    iget-object v9, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDcc:Lcom/android/internal/telephony/dataconnection/DcController;

    #@389
    .line 1952
    .local v9, "dcc":Lcom/android/internal/telephony/dataconnection/DcController;
    if-eqz v9, :cond_1

    #@38b
    .line 1953
    move-object/from16 v0, p1

    #@38d
    move-object/from16 v1, p2

    #@38f
    move-object/from16 v2, p3

    #@391
    invoke-virtual {v9, v0, v1, v2}, Lcom/android/internal/telephony/dataconnection/DcController;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    #@394
    .line 1957
    :goto_1
    const-string/jumbo v17, " ***************************************"

    #@397
    move-object/from16 v0, p2

    #@399
    move-object/from16 v1, v17

    #@39b
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@39e
    .line 1958
    move-object/from16 v0, p0

    #@3a0
    iget-object v10, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataConnections:Ljava/util/HashMap;

    #@3a2
    .line 1959
    .local v10, "dcs":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/android/internal/telephony/dataconnection/DataConnection;>;"
    if-eqz v10, :cond_2

    #@3a4
    .line 1960
    move-object/from16 v0, p0

    #@3a6
    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataConnections:Ljava/util/HashMap;

    #@3a8
    move-object/from16 v17, v0

    #@3aa
    invoke-virtual/range {v17 .. v17}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    #@3ad
    move-result-object v16

    #@3ae
    .line 1961
    .local v16, "mDcSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/internal/telephony/dataconnection/DataConnection;>;>;"
    new-instance v17, Ljava/lang/StringBuilder;

    #@3b0
    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    #@3b3
    const-string/jumbo v18, " mDataConnections: count="

    #@3b6
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b9
    move-result-object v17

    #@3ba
    invoke-interface/range {v16 .. v16}, Ljava/util/Set;->size()I

    #@3bd
    move-result v18

    #@3be
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3c1
    move-result-object v17

    #@3c2
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3c5
    move-result-object v17

    #@3c6
    move-object/from16 v0, p2

    #@3c8
    move-object/from16 v1, v17

    #@3ca
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@3cd
    .line 1962
    invoke-interface/range {v16 .. v16}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@3d0
    move-result-object v14

    #@3d1
    .local v14, "entry$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    #@3d4
    move-result v17

    #@3d5
    if-eqz v17, :cond_3

    #@3d7
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@3da
    move-result-object v11

    #@3db
    check-cast v11, Ljava/util/Map$Entry;

    #@3dd
    .line 1963
    .local v11, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/internal/telephony/dataconnection/DataConnection;>;"
    const-string/jumbo v17, " *** mDataConnection[%d] \n"

    #@3e0
    const/16 v18, 0x1

    #@3e2
    move/from16 v0, v18

    #@3e4
    new-array v0, v0, [Ljava/lang/Object;

    #@3e6
    move-object/from16 v18, v0

    #@3e8
    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@3eb
    move-result-object v19

    #@3ec
    const/16 v20, 0x0

    #@3ee
    aput-object v19, v18, v20

    #@3f0
    move-object/from16 v0, p2

    #@3f2
    move-object/from16 v1, v17

    #@3f4
    move-object/from16 v2, v18

    #@3f6
    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    #@3f9
    .line 1964
    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@3fc
    move-result-object v17

    #@3fd
    check-cast v17, Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@3ff
    move-object/from16 v0, v17

    #@401
    move-object/from16 v1, p1

    #@403
    move-object/from16 v2, p2

    #@405
    move-object/from16 v3, p3

    #@407
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/dataconnection/DataConnection;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    #@40a
    goto :goto_2

    #@40b
    .line 1955
    .end local v10    # "dcs":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/android/internal/telephony/dataconnection/DataConnection;>;"
    .end local v11    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/internal/telephony/dataconnection/DataConnection;>;"
    .end local v14    # "entry$iterator":Ljava/util/Iterator;
    .end local v16    # "mDcSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/internal/telephony/dataconnection/DataConnection;>;>;"
    :cond_1
    const-string/jumbo v17, " mDcc=null"

    #@40e
    move-object/from16 v0, p2

    #@410
    move-object/from16 v1, v17

    #@412
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@415
    goto/16 :goto_1

    #@417
    .line 1967
    .restart local v10    # "dcs":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/android/internal/telephony/dataconnection/DataConnection;>;"
    :cond_2
    const-string/jumbo v17, "mDataConnections=null"

    #@41a
    move-object/from16 v0, p2

    #@41c
    move-object/from16 v1, v17

    #@41e
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@421
    .line 1969
    :cond_3
    const-string/jumbo v17, " ***************************************"

    #@424
    move-object/from16 v0, p2

    #@426
    move-object/from16 v1, v17

    #@428
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@42b
    .line 1970
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->flush()V

    #@42e
    .line 1971
    move-object/from16 v0, p0

    #@430
    iget-object v7, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mApnToDataConnectionId:Ljava/util/HashMap;

    #@432
    .line 1972
    .local v7, "apnToDcId":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    if-eqz v7, :cond_4

    #@434
    .line 1973
    invoke-virtual {v7}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    #@437
    move-result-object v8

    #@438
    .line 1974
    .local v8, "apnToDcIdSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    new-instance v17, Ljava/lang/StringBuilder;

    #@43a
    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    #@43d
    const-string/jumbo v18, " mApnToDataConnectonId size="

    #@440
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@443
    move-result-object v17

    #@444
    invoke-interface {v8}, Ljava/util/Set;->size()I

    #@447
    move-result v18

    #@448
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@44b
    move-result-object v17

    #@44c
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@44f
    move-result-object v17

    #@450
    move-object/from16 v0, p2

    #@452
    move-object/from16 v1, v17

    #@454
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@457
    .line 1975
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@45a
    move-result-object v14

    #@45b
    .restart local v14    # "entry$iterator":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    #@45e
    move-result v17

    #@45f
    if-eqz v17, :cond_5

    #@461
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@464
    move-result-object v13

    #@465
    check-cast v13, Ljava/util/Map$Entry;

    #@467
    .line 1976
    .local v13, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    const-string/jumbo v17, " mApnToDataConnectonId[%s]=%d\n"

    #@46a
    const/16 v18, 0x2

    #@46c
    move/from16 v0, v18

    #@46e
    new-array v0, v0, [Ljava/lang/Object;

    #@470
    move-object/from16 v18, v0

    #@472
    invoke-interface {v13}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@475
    move-result-object v19

    #@476
    const/16 v20, 0x0

    #@478
    aput-object v19, v18, v20

    #@47a
    invoke-interface {v13}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@47d
    move-result-object v19

    #@47e
    const/16 v20, 0x1

    #@480
    aput-object v19, v18, v20

    #@482
    move-object/from16 v0, p2

    #@484
    move-object/from16 v1, v17

    #@486
    move-object/from16 v2, v18

    #@488
    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    #@48b
    goto :goto_3

    #@48c
    .line 1979
    .end local v8    # "apnToDcIdSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    .end local v13    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v14    # "entry$iterator":Ljava/util/Iterator;
    :cond_4
    const-string/jumbo v17, "mApnToDataConnectionId=null"

    #@48f
    move-object/from16 v0, p2

    #@491
    move-object/from16 v1, v17

    #@493
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@496
    .line 1981
    :cond_5
    const-string/jumbo v17, " ***************************************"

    #@499
    move-object/from16 v0, p2

    #@49b
    move-object/from16 v1, v17

    #@49d
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@4a0
    .line 1982
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->flush()V

    #@4a3
    .line 1983
    move-object/from16 v0, p0

    #@4a5
    iget-object v4, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    #@4a7
    .line 1984
    .local v4, "apnCtxs":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/String;Lcom/android/internal/telephony/dataconnection/ApnContext;>;"
    if-eqz v4, :cond_7

    #@4a9
    .line 1985
    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    #@4ac
    move-result-object v5

    #@4ad
    .line 1986
    .local v5, "apnCtxsSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/telephony/dataconnection/ApnContext;>;>;"
    new-instance v17, Ljava/lang/StringBuilder;

    #@4af
    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    #@4b2
    const-string/jumbo v18, " mApnContexts size="

    #@4b5
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b8
    move-result-object v17

    #@4b9
    invoke-interface {v5}, Ljava/util/Set;->size()I

    #@4bc
    move-result v18

    #@4bd
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@4c0
    move-result-object v17

    #@4c1
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4c4
    move-result-object v17

    #@4c5
    move-object/from16 v0, p2

    #@4c7
    move-object/from16 v1, v17

    #@4c9
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@4cc
    .line 1987
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@4cf
    move-result-object v14

    #@4d0
    .restart local v14    # "entry$iterator":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    #@4d3
    move-result v17

    #@4d4
    if-eqz v17, :cond_6

    #@4d6
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@4d9
    move-result-object v12

    #@4da
    check-cast v12, Ljava/util/Map$Entry;

    #@4dc
    .line 1988
    .local v12, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/telephony/dataconnection/ApnContext;>;"
    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@4df
    move-result-object v17

    #@4e0
    check-cast v17, Lcom/android/internal/telephony/dataconnection/ApnContext;

    #@4e2
    move-object/from16 v0, v17

    #@4e4
    move-object/from16 v1, p1

    #@4e6
    move-object/from16 v2, p2

    #@4e8
    move-object/from16 v3, p3

    #@4ea
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/dataconnection/ApnContext;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    #@4ed
    goto :goto_4

    #@4ee
    .line 1990
    .end local v12    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/telephony/dataconnection/ApnContext;>;"
    :cond_6
    const-string/jumbo v17, " ***************************************"

    #@4f1
    move-object/from16 v0, p2

    #@4f3
    move-object/from16 v1, v17

    #@4f5
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@4f8
    .line 1994
    .end local v5    # "apnCtxsSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/telephony/dataconnection/ApnContext;>;>;"
    .end local v14    # "entry$iterator":Ljava/util/Iterator;
    :goto_5
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->flush()V

    #@4fb
    .line 1995
    new-instance v17, Ljava/lang/StringBuilder;

    #@4fd
    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    #@500
    const-string/jumbo v18, " mActiveApn="

    #@503
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@506
    move-result-object v17

    #@507
    move-object/from16 v0, p0

    #@509
    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mActiveApn:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    #@50b
    move-object/from16 v18, v0

    #@50d
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@510
    move-result-object v17

    #@511
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@514
    move-result-object v17

    #@515
    move-object/from16 v0, p2

    #@517
    move-object/from16 v1, v17

    #@519
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@51c
    .line 1996
    move-object/from16 v0, p0

    #@51e
    iget-object v6, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mAllApnSettings:Ljava/util/ArrayList;

    #@520
    .line 1997
    .local v6, "apnSettings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/dataconnection/ApnSetting;>;"
    if-eqz v6, :cond_9

    #@522
    .line 1998
    new-instance v17, Ljava/lang/StringBuilder;

    #@524
    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    #@527
    const-string/jumbo v18, " mAllApnSettings size="

    #@52a
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@52d
    move-result-object v17

    #@52e
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    #@531
    move-result v18

    #@532
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@535
    move-result-object v17

    #@536
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@539
    move-result-object v17

    #@53a
    move-object/from16 v0, p2

    #@53c
    move-object/from16 v1, v17

    #@53e
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@541
    .line 1999
    const/4 v15, 0x0

    #@542
    :goto_6
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    #@545
    move-result v17

    #@546
    move/from16 v0, v17

    #@548
    if-ge v15, v0, :cond_8

    #@54a
    .line 2000
    const-string/jumbo v17, " mAllApnSettings[%d]: %s\n"

    #@54d
    const/16 v18, 0x2

    #@54f
    move/from16 v0, v18

    #@551
    new-array v0, v0, [Ljava/lang/Object;

    #@553
    move-object/from16 v18, v0

    #@555
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@558
    move-result-object v19

    #@559
    const/16 v20, 0x0

    #@55b
    aput-object v19, v18, v20

    #@55d
    invoke-virtual {v6, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@560
    move-result-object v19

    #@561
    const/16 v20, 0x1

    #@563
    aput-object v19, v18, v20

    #@565
    move-object/from16 v0, p2

    #@567
    move-object/from16 v1, v17

    #@569
    move-object/from16 v2, v18

    #@56b
    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    #@56e
    .line 1999
    add-int/lit8 v15, v15, 0x1

    #@570
    goto :goto_6

    #@571
    .line 1992
    .end local v6    # "apnSettings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/dataconnection/ApnSetting;>;"
    :cond_7
    const-string/jumbo v17, " mApnContexts=null"

    #@574
    move-object/from16 v0, p2

    #@576
    move-object/from16 v1, v17

    #@578
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@57b
    goto/16 :goto_5

    #@57d
    .line 2002
    .restart local v6    # "apnSettings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/dataconnection/ApnSetting;>;"
    :cond_8
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->flush()V

    #@580
    .line 2006
    :goto_7
    new-instance v17, Ljava/lang/StringBuilder;

    #@582
    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    #@585
    const-string/jumbo v18, " mPreferredApn="

    #@588
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@58b
    move-result-object v17

    #@58c
    move-object/from16 v0, p0

    #@58e
    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPreferredApn:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    #@590
    move-object/from16 v18, v0

    #@592
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@595
    move-result-object v17

    #@596
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@599
    move-result-object v17

    #@59a
    move-object/from16 v0, p2

    #@59c
    move-object/from16 v1, v17

    #@59e
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@5a1
    .line 2007
    new-instance v17, Ljava/lang/StringBuilder;

    #@5a3
    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    #@5a6
    const-string/jumbo v18, " mIsPsRestricted="

    #@5a9
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5ac
    move-result-object v17

    #@5ad
    move-object/from16 v0, p0

    #@5af
    iget-boolean v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mIsPsRestricted:Z

    #@5b1
    move/from16 v18, v0

    #@5b3
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@5b6
    move-result-object v17

    #@5b7
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5ba
    move-result-object v17

    #@5bb
    move-object/from16 v0, p2

    #@5bd
    move-object/from16 v1, v17

    #@5bf
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@5c2
    .line 2008
    new-instance v17, Ljava/lang/StringBuilder;

    #@5c4
    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    #@5c7
    const-string/jumbo v18, " mIsDisposed="

    #@5ca
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5cd
    move-result-object v17

    #@5ce
    move-object/from16 v0, p0

    #@5d0
    iget-boolean v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mIsDisposed:Z

    #@5d2
    move/from16 v18, v0

    #@5d4
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@5d7
    move-result-object v17

    #@5d8
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5db
    move-result-object v17

    #@5dc
    move-object/from16 v0, p2

    #@5de
    move-object/from16 v1, v17

    #@5e0
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@5e3
    .line 2009
    new-instance v17, Ljava/lang/StringBuilder;

    #@5e5
    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    #@5e8
    const-string/jumbo v18, " mIntentReceiver="

    #@5eb
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5ee
    move-result-object v17

    #@5ef
    move-object/from16 v0, p0

    #@5f1
    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    #@5f3
    move-object/from16 v18, v0

    #@5f5
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@5f8
    move-result-object v17

    #@5f9
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5fc
    move-result-object v17

    #@5fd
    move-object/from16 v0, p2

    #@5ff
    move-object/from16 v1, v17

    #@601
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@604
    .line 2010
    new-instance v17, Ljava/lang/StringBuilder;

    #@606
    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    #@609
    const-string/jumbo v18, " mDataRoamingSettingObserver="

    #@60c
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@60f
    move-result-object v17

    #@610
    move-object/from16 v0, p0

    #@612
    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataRoamingSettingObserver:Lcom/android/internal/telephony/dataconnection/DcTrackerBase$DataRoamingSettingObserver;

    #@614
    move-object/from16 v18, v0

    #@616
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@619
    move-result-object v17

    #@61a
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@61d
    move-result-object v17

    #@61e
    move-object/from16 v0, p2

    #@620
    move-object/from16 v1, v17

    #@622
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@625
    .line 2011
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->flush()V

    #@628
    .line 1917
    return-void

    #@629
    .line 2004
    :cond_9
    const-string/jumbo v17, " mAllApnSettings=null"

    #@62c
    move-object/from16 v0, p2

    #@62e
    move-object/from16 v1, v17

    #@630
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@633
    goto/16 :goto_7
.end method

.method protected fetchDunApn()Lcom/android/internal/telephony/dataconnection/ApnSetting;
    .locals 15

    #@0
    .prologue
    const/4 v11, 0x0

    #@1
    const/4 v13, 0x0

    #@2
    .line 690
    const-string/jumbo v12, "net.tethering.noprovisioning"

    #@5
    invoke-static {v12, v11}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    #@8
    move-result v12

    #@9
    if-eqz v12, :cond_0

    #@b
    .line 691
    const-string/jumbo v11, "fetchDunApn: net.tethering.noprovisioning=true ret: null"

    #@e
    invoke-virtual {p0, v11}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    #@11
    .line 692
    return-object v13

    #@12
    .line 694
    :cond_0
    iget-object v12, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    #@14
    invoke-virtual {v12}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    #@17
    move-result-object v12

    #@18
    invoke-virtual {v12}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    #@1b
    move-result v3

    #@1c
    .line 695
    .local v3, "bearer":I
    const/4 v10, 0x0

    #@1d
    .line 696
    .local v10, "retDunSetting":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    iget-object v12, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mResolver:Landroid/content/ContentResolver;

    #@1f
    const-string/jumbo v13, "tether_dun_apn"

    #@22
    invoke-static {v12, v13}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    #@25
    move-result-object v2

    #@26
    .line 697
    .local v2, "apnData":Ljava/lang/String;
    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->arrayFromString(Ljava/lang/String;)Ljava/util/List;

    #@29
    move-result-object v7

    #@2a
    .line 698
    .local v7, "dunSettings":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/dataconnection/ApnSetting;>;"
    iget-object v12, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    #@2c
    invoke-virtual {v12}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    #@2f
    move-result-object v9

    #@30
    check-cast v9, Lcom/android/internal/telephony/uicc/IccRecords;

    #@32
    .line 699
    .local v9, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@35
    move-result-object v6

    #@36
    .local v6, "dunSetting$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    #@39
    move-result v12

    #@3a
    if-eqz v12, :cond_4

    #@3c
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@3f
    move-result-object v5

    #@40
    check-cast v5, Lcom/android/internal/telephony/dataconnection/ApnSetting;

    #@42
    .line 700
    .local v5, "dunSetting":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    if-eqz v9, :cond_2

    #@44
    invoke-virtual {v9}, Lcom/android/internal/telephony/uicc/IccRecords;->getOperatorNumeric()Ljava/lang/String;

    #@47
    move-result-object v8

    #@48
    .line 701
    .local v8, "operator":Ljava/lang/String;
    :goto_0
    iget v12, v5, Lcom/android/internal/telephony/dataconnection/ApnSetting;->bearerBitmask:I

    #@4a
    invoke-static {v12, v3}, Landroid/telephony/ServiceState;->bitmaskHasTech(II)Z

    #@4d
    move-result v12

    #@4e
    if-eqz v12, :cond_1

    #@50
    .line 702
    iget-object v12, v5, Lcom/android/internal/telephony/dataconnection/ApnSetting;->numeric:Ljava/lang/String;

    #@52
    invoke-virtual {v12, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@55
    move-result v12

    #@56
    if-eqz v12, :cond_1

    #@58
    .line 703
    invoke-virtual {v5}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->hasMvnoParams()Z

    #@5b
    move-result v12

    #@5c
    if-eqz v12, :cond_3

    #@5e
    .line 704
    if-eqz v9, :cond_1

    #@60
    iget-object v12, v5, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mvnoType:Ljava/lang/String;

    #@62
    .line 705
    iget-object v13, v5, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mvnoMatchData:Ljava/lang/String;

    #@64
    .line 704
    invoke-static {v9, v12, v13}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mvnoMatches(Lcom/android/internal/telephony/uicc/IccRecords;Ljava/lang/String;Ljava/lang/String;)Z

    #@67
    move-result v12

    #@68
    if-eqz v12, :cond_1

    #@6a
    .line 709
    return-object v5

    #@6b
    .line 700
    .end local v8    # "operator":Ljava/lang/String;
    :cond_2
    const-string/jumbo v8, ""

    #@6e
    .restart local v8    # "operator":Ljava/lang/String;
    goto :goto_0

    #@6f
    .line 713
    :cond_3
    return-object v5

    #@70
    .line 718
    .end local v5    # "dunSetting":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    .end local v8    # "operator":Ljava/lang/String;
    :cond_4
    iget-object v12, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    #@72
    invoke-virtual {v12}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    #@75
    move-result-object v4

    #@76
    .line 719
    .local v4, "c":Landroid/content/Context;
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@79
    move-result-object v12

    #@7a
    const v13, 0x1070018

    #@7d
    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    #@80
    move-result-object v1

    #@81
    .line 720
    .local v1, "apnArrayData":[Ljava/lang/String;
    array-length v12, v1

    #@82
    .end local v10    # "retDunSetting":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    :goto_1
    if-ge v11, v12, :cond_8

    #@84
    aget-object v0, v1, v11

    #@86
    .line 721
    .local v0, "apn":Ljava/lang/String;
    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->fromString(Ljava/lang/String;)Lcom/android/internal/telephony/dataconnection/ApnSetting;

    #@89
    move-result-object v5

    #@8a
    .line 722
    .restart local v5    # "dunSetting":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    if-eqz v5, :cond_5

    #@8c
    .line 723
    iget v13, v5, Lcom/android/internal/telephony/dataconnection/ApnSetting;->bearerBitmask:I

    #@8e
    invoke-static {v13, v3}, Landroid/telephony/ServiceState;->bitmaskHasTech(II)Z

    #@91
    move-result v13

    #@92
    if-nez v13, :cond_6

    #@94
    .line 720
    :cond_5
    :goto_2
    add-int/lit8 v11, v11, 0x1

    #@96
    goto :goto_1

    #@97
    .line 724
    :cond_6
    invoke-virtual {v5}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->hasMvnoParams()Z

    #@9a
    move-result v13

    #@9b
    if-eqz v13, :cond_7

    #@9d
    .line 725
    if-eqz v9, :cond_5

    #@9f
    iget-object v13, v5, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mvnoType:Ljava/lang/String;

    #@a1
    .line 726
    iget-object v14, v5, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mvnoMatchData:Ljava/lang/String;

    #@a3
    .line 725
    invoke-static {v9, v13, v14}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mvnoMatches(Lcom/android/internal/telephony/uicc/IccRecords;Ljava/lang/String;Ljava/lang/String;)Z

    #@a6
    move-result v13

    #@a7
    if-eqz v13, :cond_5

    #@a9
    .line 730
    return-object v5

    #@aa
    .line 733
    :cond_7
    move-object v10, v5

    #@ab
    .local v10, "retDunSetting":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    goto :goto_2

    #@ac
    .line 739
    .end local v0    # "apn":Ljava/lang/String;
    .end local v5    # "dunSetting":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    .end local v10    # "retDunSetting":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    :cond_8
    return-object v10
.end method

.method public getActiveApnString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "apnType"    # Ljava/lang/String;

    #@0
    .prologue
    .line 761
    const/4 v0, 0x0

    #@1
    .line 762
    .local v0, "result":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mActiveApn:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    #@3
    if-eqz v1, :cond_0

    #@5
    .line 763
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mActiveApn:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    #@7
    iget-object v0, v1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->apn:Ljava/lang/String;

    #@9
    .line 765
    .end local v0    # "result":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public getActiveApnTypes()[Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 750
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mActiveApn:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 751
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mActiveApn:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    #@6
    iget-object v0, v1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->types:[Ljava/lang/String;

    #@8
    .line 756
    .local v0, "result":[Ljava/lang/String;
    :goto_0
    return-object v0

    #@9
    .line 753
    .end local v0    # "result":[Ljava/lang/String;
    :cond_0
    const/4 v1, 0x1

    #@a
    new-array v0, v1, [Ljava/lang/String;

    #@c
    .line 754
    .restart local v0    # "result":[Ljava/lang/String;
    const-string/jumbo v1, "default"

    #@f
    const/4 v2, 0x0

    #@10
    aput-object v1, v0, v2

    #@12
    goto :goto_0
.end method

.method public getActivity()Lcom/android/internal/telephony/DctConstants$Activity;
    .locals 1

    #@0
    .prologue
    .line 656
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mActivity:Lcom/android/internal/telephony/DctConstants$Activity;

    #@2
    return-object v0
.end method

.method public getAnyDataEnabled()Z
    .locals 3

    #@0
    .prologue
    .line 1136
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataEnabledLock:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 1137
    :try_start_0
    iget-boolean v1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mInternalDataEnabled:Z

    #@5
    if-eqz v1, :cond_2

    #@7
    iget-boolean v1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mUserDataEnabled:Z

    #@9
    if-eqz v1, :cond_2

    #@b
    sget-boolean v1, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->sPolicyDataEnabled:Z

    #@d
    if-eqz v1, :cond_2

    #@f
    .line 1138
    iget v1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mEnabledCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@11
    if-eqz v1, :cond_1

    #@13
    const/4 v0, 0x1

    #@14
    .local v0, "result":Z
    :goto_0
    monitor-exit v2

    #@15
    .line 1140
    if-nez v0, :cond_0

    #@17
    new-instance v1, Ljava/lang/StringBuilder;

    #@19
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1c
    const-string/jumbo v2, "getAnyDataEnabled "

    #@1f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v1

    #@23
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@26
    move-result-object v1

    #@27
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2a
    move-result-object v1

    #@2b
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    #@2e
    .line 1141
    :cond_0
    return v0

    #@2f
    .line 1138
    .end local v0    # "result":Z
    :cond_1
    const/4 v0, 0x0

    #@30
    .restart local v0    # "result":Z
    goto :goto_0

    #@31
    .line 1137
    .end local v0    # "result":Z
    :cond_2
    const/4 v0, 0x0

    #@32
    .restart local v0    # "result":Z
    goto :goto_0

    #@33
    .line 1136
    .end local v0    # "result":Z
    :catchall_0
    move-exception v1

    #@34
    monitor-exit v2

    #@35
    throw v1
.end method

.method public getApnPriority(Ljava/lang/String;)I
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 674
    const/4 v0, -0x1

    #@1
    return v0
.end method

.method public getDataEnabled()Z
    .locals 8

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 838
    const-string/jumbo v5, "true"

    #@5
    .line 839
    const-string/jumbo v6, "ro.com.android.mobiledata"

    #@8
    const-string/jumbo v7, "true"

    #@b
    .line 838
    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@e
    move-result-object v6

    #@f
    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@12
    move-result v1

    #@13
    .line 841
    .local v1, "retVal":Z
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    #@16
    move-result-object v5

    #@17
    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getSimCount()I

    #@1a
    move-result v5

    #@1b
    if-ne v5, v3, :cond_2

    #@1d
    .line 842
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mResolver:Landroid/content/ContentResolver;

    #@1f
    const-string/jumbo v6, "mobile_data"

    #@22
    .line 843
    if-eqz v1, :cond_0

    #@24
    .line 842
    :goto_0
    invoke-static {v5, v6, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    #@27
    move-result v3

    #@28
    if-eqz v3, :cond_1

    #@2a
    const/4 v1, 0x1

    #@2b
    .line 849
    .local v1, "retVal":Z
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    #@2d
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@30
    const-string/jumbo v4, "getDataEnabled: getIntWithSubId retVal="

    #@33
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v3

    #@37
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v3

    #@3b
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3e
    move-result-object v3

    #@3f
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    #@42
    .line 857
    .end local v1    # "retVal":Z
    :goto_2
    return v1

    #@43
    .local v1, "retVal":Z
    :cond_0
    move v3, v4

    #@44
    .line 843
    goto :goto_0

    #@45
    .line 842
    :cond_1
    const/4 v1, 0x0

    #@46
    .local v1, "retVal":Z
    goto :goto_1

    #@47
    .line 845
    .local v1, "retVal":Z
    :cond_2
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    #@49
    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getSubId()I

    #@4c
    move-result v0

    #@4d
    .line 846
    .local v0, "phoneSubId":I
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mResolver:Landroid/content/ContentResolver;

    #@4f
    const-string/jumbo v4, "mobile_data"

    #@52
    invoke-static {v3, v4, v0}, Landroid/telephony/TelephonyManager;->getIntWithSubId(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@55
    move-result v3

    #@56
    if-eqz v3, :cond_3

    #@58
    const/4 v1, 0x1

    #@59
    .local v1, "retVal":Z
    goto :goto_1

    #@5a
    .local v1, "retVal":Z
    :cond_3
    const/4 v1, 0x0

    #@5b
    .local v1, "retVal":Z
    goto :goto_1

    #@5c
    .line 850
    .end local v0    # "phoneSubId":I
    .end local v1    # "retVal":Z
    :catch_0
    move-exception v2

    #@5d
    .line 851
    .local v2, "snfe":Landroid/provider/Settings$SettingNotFoundException;
    const-string/jumbo v3, "true"

    #@60
    .line 852
    const-string/jumbo v4, "ro.com.android.mobiledata"

    #@63
    const-string/jumbo v5, "true"

    #@66
    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@69
    move-result-object v4

    #@6a
    .line 851
    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@6d
    move-result v1

    #@6e
    .line 854
    .local v1, "retVal":Z
    new-instance v3, Ljava/lang/StringBuilder;

    #@70
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@73
    const-string/jumbo v4, "getDataEnabled: system property ro.com.android.mobiledata retVal="

    #@76
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@79
    move-result-object v3

    #@7a
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@7d
    move-result-object v3

    #@7e
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@81
    move-result-object v3

    #@82
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    #@85
    goto :goto_2
.end method

.method public getDataOnRoamingEnabled()Z
    .locals 8

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 801
    const-string/jumbo v5, "true"

    #@5
    .line 802
    const-string/jumbo v6, "ro.com.android.dataroaming"

    #@8
    const-string/jumbo v7, "false"

    #@b
    .line 801
    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@e
    move-result-object v6

    #@f
    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@12
    move-result v0

    #@13
    .line 803
    .local v0, "isDataRoamingEnabled":Z
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    #@15
    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneBase;->getSubId()I

    #@18
    move-result v1

    #@19
    .line 807
    .local v1, "phoneSubId":I
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    #@1c
    move-result-object v5

    #@1d
    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getSimCount()I

    #@20
    move-result v5

    #@21
    if-ne v5, v3, :cond_2

    #@23
    .line 808
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mResolver:Landroid/content/ContentResolver;

    #@25
    .line 809
    const-string/jumbo v6, "data_roaming"

    #@28
    if-eqz v0, :cond_0

    #@2a
    .line 808
    :goto_0
    invoke-static {v5, v6, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@2d
    move-result v3

    #@2e
    if-eqz v3, :cond_1

    #@30
    const/4 v0, 0x1

    #@31
    .line 818
    .end local v0    # "isDataRoamingEnabled":Z
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    #@33
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@36
    const-string/jumbo v4, "getDataOnRoamingEnabled: phoneSubId="

    #@39
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v3

    #@3d
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@40
    move-result-object v3

    #@41
    .line 819
    const-string/jumbo v4, " isDataRoamingEnabled="

    #@44
    .line 818
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v3

    #@48
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v3

    #@4c
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4f
    move-result-object v3

    #@50
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    #@53
    .line 821
    return v0

    #@54
    .restart local v0    # "isDataRoamingEnabled":Z
    :cond_0
    move v3, v4

    #@55
    .line 809
    goto :goto_0

    #@56
    .line 808
    :cond_1
    const/4 v0, 0x0

    #@57
    .local v0, "isDataRoamingEnabled":Z
    goto :goto_1

    #@58
    .line 811
    .local v0, "isDataRoamingEnabled":Z
    :cond_2
    :try_start_1
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mResolver:Landroid/content/ContentResolver;

    #@5a
    .line 812
    const-string/jumbo v4, "data_roaming"

    #@5d
    .line 811
    invoke-static {v3, v4, v1}, Landroid/telephony/TelephonyManager;->getIntWithSubId(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_1
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    #@60
    move-result v3

    #@61
    if-eqz v3, :cond_3

    #@63
    const/4 v0, 0x1

    #@64
    .local v0, "isDataRoamingEnabled":Z
    goto :goto_1

    #@65
    .local v0, "isDataRoamingEnabled":Z
    :cond_3
    const/4 v0, 0x0

    #@66
    .local v0, "isDataRoamingEnabled":Z
    goto :goto_1

    #@67
    .line 814
    .local v0, "isDataRoamingEnabled":Z
    :catch_0
    move-exception v2

    #@68
    .line 815
    .local v2, "snfe":Landroid/provider/Settings$SettingNotFoundException;
    new-instance v3, Ljava/lang/StringBuilder;

    #@6a
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@6d
    const-string/jumbo v4, "getDataOnRoamingEnabled: SettingNofFoundException snfe="

    #@70
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@73
    move-result-object v3

    #@74
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@77
    move-result-object v3

    #@78
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7b
    move-result-object v3

    #@7c
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    #@7f
    goto :goto_1
.end method

.method protected getInitialMaxRetry()I
    .locals 3

    #@0
    .prologue
    .line 454
    iget-boolean v1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mFailFast:Z

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 455
    const/4 v1, 0x0

    #@5
    return v1

    #@6
    .line 459
    :cond_0
    const-string/jumbo v1, "mdc_initial_max_retry"

    #@9
    const/4 v2, 0x1

    #@a
    .line 458
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    #@d
    move-result v0

    #@e
    .line 462
    .local v0, "value":I
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mResolver:Landroid/content/ContentResolver;

    #@10
    .line 463
    const-string/jumbo v2, "mdc_initial_max_retry"

    #@13
    .line 462
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    #@16
    move-result v1

    #@17
    return v1
.end method

.method public getLinkProperties(Ljava/lang/String;)Landroid/net/LinkProperties;
    .locals 4
    .param p1, "apnType"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1208
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->apnTypeToId(Ljava/lang/String;)I

    #@3
    move-result v1

    #@4
    .line 1210
    .local v1, "id":I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->isApnIdEnabled(I)Z

    #@7
    move-result v2

    #@8
    if-eqz v2, :cond_0

    #@a
    .line 1211
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataConnectionAcHashMap:Ljava/util/HashMap;

    #@c
    const/4 v3, 0x0

    #@d
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@10
    move-result-object v3

    #@11
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@14
    move-result-object v0

    #@15
    check-cast v0, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;

    #@17
    .line 1212
    .local v0, "dcac":Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->getLinkPropertiesSync()Landroid/net/LinkProperties;

    #@1a
    move-result-object v2

    #@1b
    return-object v2

    #@1c
    .line 1214
    .end local v0    # "dcac":Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;
    :cond_0
    new-instance v2, Landroid/net/LinkProperties;

    #@1e
    invoke-direct {v2}, Landroid/net/LinkProperties;-><init>()V

    #@21
    return-object v2
.end method

.method public getNetworkCapabilities(Ljava/lang/String;)Landroid/net/NetworkCapabilities;
    .locals 4
    .param p1, "apnType"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1219
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->apnTypeToId(Ljava/lang/String;)I

    #@3
    move-result v1

    #@4
    .line 1220
    .local v1, "id":I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->isApnIdEnabled(I)Z

    #@7
    move-result v2

    #@8
    if-eqz v2, :cond_0

    #@a
    .line 1221
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataConnectionAcHashMap:Ljava/util/HashMap;

    #@c
    const/4 v3, 0x0

    #@d
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@10
    move-result-object v3

    #@11
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@14
    move-result-object v0

    #@15
    check-cast v0, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;

    #@17
    .line 1222
    .local v0, "dcac":Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->getNetworkCapabilitiesSync()Landroid/net/NetworkCapabilities;

    #@1a
    move-result-object v2

    #@1b
    return-object v2

    #@1c
    .line 1224
    .end local v0    # "dcac":Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;
    :cond_0
    new-instance v2, Landroid/net/NetworkCapabilities;

    #@1e
    invoke-direct {v2}, Landroid/net/NetworkCapabilities;-><init>()V

    #@21
    return-object v2
.end method

.method protected abstract getOverallState()Lcom/android/internal/telephony/DctConstants$State;
.end method

.method public abstract getPcscfAddress(Ljava/lang/String;)[Ljava/lang/String;
.end method

.method public getRecoveryAction()I
    .locals 4

    #@0
    .prologue
    .line 1563
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mResolver:Landroid/content/ContentResolver;

    #@2
    .line 1564
    const-string/jumbo v2, "radio.data.stall.recovery.action"

    #@5
    const/4 v3, 0x0

    #@6
    .line 1563
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    #@9
    move-result v0

    #@a
    .line 1566
    .local v0, "action":I
    return v0
.end method

.method protected getReryConfig(Z)Ljava/lang/String;
    .locals 2
    .param p1, "forDefault"    # Z

    #@0
    .prologue
    .line 1423
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    #@2
    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getNetworkType()I

    #@9
    move-result v0

    #@a
    .line 1425
    .local v0, "nt":I
    const/4 v1, 0x4

    #@b
    if-eq v0, v1, :cond_0

    #@d
    .line 1426
    const/4 v1, 0x7

    #@e
    if-ne v0, v1, :cond_1

    #@10
    .line 1432
    :cond_0
    const-string/jumbo v1, "ro.cdma.data_retry_config"

    #@13
    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    #@16
    move-result-object v1

    #@17
    return-object v1

    #@18
    .line 1427
    :cond_1
    const/4 v1, 0x5

    #@19
    if-eq v0, v1, :cond_0

    #@1b
    .line 1428
    const/4 v1, 0x6

    #@1c
    if-eq v0, v1, :cond_0

    #@1e
    .line 1429
    const/16 v1, 0xc

    #@20
    if-eq v0, v1, :cond_0

    #@22
    .line 1430
    const/16 v1, 0xe

    #@24
    if-eq v0, v1, :cond_0

    #@26
    .line 1435
    if-eqz p1, :cond_2

    #@28
    .line 1436
    const-string/jumbo v1, "ro.gsm.data_retry_config"

    #@2b
    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    #@2e
    move-result-object v1

    #@2f
    return-object v1

    #@30
    .line 1438
    :cond_2
    const-string/jumbo v1, "ro.gsm.2nd_data_retry_config"

    #@33
    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    #@36
    move-result-object v1

    #@37
    return-object v1
.end method

.method public abstract getState(Ljava/lang/String;)Lcom/android/internal/telephony/DctConstants$State;
.end method

.method public getSubId()J
    .locals 2

    #@0
    .prologue
    .line 652
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    #@2
    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getSubId()I

    #@5
    move-result v0

    #@6
    int-to-long v0, v0

    #@7
    return-wide v0
.end method

.method protected abstract gotoIdleAndNotifyDataConnection(Ljava/lang/String;)V
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 15
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 894
    move-object/from16 v0, p1

    #@2
    iget v12, v0, Landroid/os/Message;->what:I

    #@4
    sparse-switch v12, :sswitch_data_0

    #@7
    .line 1123
    const-string/jumbo v12, "DATA"

    #@a
    new-instance v13, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string/jumbo v14, "Unidentified event msg="

    #@12
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v13

    #@16
    move-object/from16 v0, p1

    #@18
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v13

    #@1c
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f
    move-result-object v13

    #@20
    invoke-static {v12, v13}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@23
    .line 893
    :cond_0
    :goto_0
    return-void

    #@24
    .line 896
    :sswitch_0
    new-instance v12, Ljava/lang/StringBuilder;

    #@26
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@29
    const-string/jumbo v13, "DISCONNECTED_CONNECTED: msg="

    #@2c
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v12

    #@30
    move-object/from16 v0, p1

    #@32
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v12

    #@36
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@39
    move-result-object v12

    #@3a
    invoke-virtual {p0, v12}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    #@3d
    .line 897
    move-object/from16 v0, p1

    #@3f
    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@41
    check-cast v4, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;

    #@43
    .line 898
    .local v4, "dcac":Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;
    iget-object v12, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataConnectionAcHashMap:Ljava/util/HashMap;

    #@45
    invoke-virtual {v4}, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->getDataConnectionIdSync()I

    #@48
    move-result v13

    #@49
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@4c
    move-result-object v13

    #@4d
    invoke-virtual {v12, v13}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@50
    .line 899
    invoke-virtual {v4}, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->disconnected()V

    #@53
    goto :goto_0

    #@54
    .line 903
    .end local v4    # "dcac":Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;
    :sswitch_1
    move-object/from16 v0, p1

    #@56
    iget v12, v0, Landroid/os/Message;->arg1:I

    #@58
    move-object/from16 v0, p1

    #@5a
    iget v13, v0, Landroid/os/Message;->arg2:I

    #@5c
    invoke-virtual {p0, v12, v13}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->onEnableApn(II)V

    #@5f
    goto :goto_0

    #@60
    .line 907
    :sswitch_2
    const/4 v9, 0x0

    #@61
    .line 908
    .local v9, "reason":Ljava/lang/String;
    move-object/from16 v0, p1

    #@63
    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@65
    instance-of v12, v12, Ljava/lang/String;

    #@67
    if-eqz v12, :cond_1

    #@69
    .line 909
    move-object/from16 v0, p1

    #@6b
    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@6d
    .end local v9    # "reason":Ljava/lang/String;
    check-cast v9, Ljava/lang/String;

    #@6f
    .line 911
    :cond_1
    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->onTrySetupData(Ljava/lang/String;)Z

    #@72
    goto :goto_0

    #@73
    .line 915
    :sswitch_3
    move-object/from16 v0, p1

    #@75
    iget v12, v0, Landroid/os/Message;->arg1:I

    #@77
    invoke-virtual {p0, v12}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->onDataStallAlarm(I)V

    #@7a
    goto :goto_0

    #@7b
    .line 919
    :sswitch_4
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->onRoamingOff()V

    #@7e
    goto :goto_0

    #@7f
    .line 923
    :sswitch_5
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->onRoamingOn()V

    #@82
    goto :goto_0

    #@83
    .line 927
    :sswitch_6
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->onRadioAvailable()V

    #@86
    goto :goto_0

    #@87
    .line 931
    :sswitch_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->onRadioOffOrNotAvailable()V

    #@8a
    goto :goto_0

    #@8b
    .line 935
    :sswitch_8
    move-object/from16 v0, p1

    #@8d
    iget v12, v0, Landroid/os/Message;->arg1:I

    #@8f
    iput v12, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mCidActive:I

    #@91
    .line 936
    move-object/from16 v0, p1

    #@93
    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@95
    check-cast v12, Landroid/os/AsyncResult;

    #@97
    invoke-virtual {p0, v12}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->onDataSetupComplete(Landroid/os/AsyncResult;)V

    #@9a
    goto :goto_0

    #@9b
    .line 940
    :sswitch_9
    move-object/from16 v0, p1

    #@9d
    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@9f
    check-cast v12, Landroid/os/AsyncResult;

    #@a1
    invoke-virtual {p0, v12}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->onDataSetupCompleteError(Landroid/os/AsyncResult;)V

    #@a4
    goto/16 :goto_0

    #@a6
    .line 944
    :sswitch_a
    new-instance v12, Ljava/lang/StringBuilder;

    #@a8
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@ab
    const-string/jumbo v13, "DataConnectionTracker.handleMessage: EVENT_DISCONNECT_DONE msg="

    #@ae
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b1
    move-result-object v12

    #@b2
    move-object/from16 v0, p1

    #@b4
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@b7
    move-result-object v12

    #@b8
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@bb
    move-result-object v12

    #@bc
    invoke-virtual {p0, v12}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    #@bf
    .line 945
    move-object/from16 v0, p1

    #@c1
    iget v13, v0, Landroid/os/Message;->arg1:I

    #@c3
    move-object/from16 v0, p1

    #@c5
    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@c7
    check-cast v12, Landroid/os/AsyncResult;

    #@c9
    invoke-virtual {p0, v13, v12}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->onDisconnectDone(ILandroid/os/AsyncResult;)V

    #@cc
    goto/16 :goto_0

    #@ce
    .line 949
    :sswitch_b
    new-instance v12, Ljava/lang/StringBuilder;

    #@d0
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@d3
    const-string/jumbo v13, "DataConnectionTracker.handleMessage: EVENT_DISCONNECT_DC_RETRYING msg="

    #@d6
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d9
    move-result-object v12

    #@da
    move-object/from16 v0, p1

    #@dc
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@df
    move-result-object v12

    #@e0
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@e3
    move-result-object v12

    #@e4
    invoke-virtual {p0, v12}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    #@e7
    .line 950
    move-object/from16 v0, p1

    #@e9
    iget v13, v0, Landroid/os/Message;->arg1:I

    #@eb
    move-object/from16 v0, p1

    #@ed
    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@ef
    check-cast v12, Landroid/os/AsyncResult;

    #@f1
    invoke-virtual {p0, v13, v12}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->onDisconnectDcRetrying(ILandroid/os/AsyncResult;)V

    #@f4
    goto/16 :goto_0

    #@f6
    .line 954
    :sswitch_c
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->onVoiceCallStarted()V

    #@f9
    goto/16 :goto_0

    #@fb
    .line 958
    :sswitch_d
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->onVoiceCallEnded()V

    #@fe
    goto/16 :goto_0

    #@100
    .line 962
    :sswitch_e
    move-object/from16 v0, p1

    #@102
    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@104
    check-cast v12, Ljava/lang/String;

    #@106
    invoke-virtual {p0, v12}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->onCleanUpAllConnections(Ljava/lang/String;)V

    #@109
    goto/16 :goto_0

    #@10b
    .line 966
    :sswitch_f
    move-object/from16 v0, p1

    #@10d
    iget v12, v0, Landroid/os/Message;->arg1:I

    #@10f
    if-nez v12, :cond_2

    #@111
    const/4 v11, 0x0

    #@112
    .line 967
    .local v11, "tearDown":Z
    :goto_1
    move-object/from16 v0, p1

    #@114
    iget v13, v0, Landroid/os/Message;->arg2:I

    #@116
    move-object/from16 v0, p1

    #@118
    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@11a
    check-cast v12, Ljava/lang/String;

    #@11c
    invoke-virtual {p0, v11, v13, v12}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->onCleanUpConnection(ZILjava/lang/String;)V

    #@11f
    goto/16 :goto_0

    #@121
    .line 966
    .end local v11    # "tearDown":Z
    :cond_2
    const/4 v11, 0x1

    #@122
    .restart local v11    # "tearDown":Z
    goto :goto_1

    #@123
    .line 971
    .end local v11    # "tearDown":Z
    :sswitch_10
    move-object/from16 v0, p1

    #@125
    iget v12, v0, Landroid/os/Message;->arg1:I

    #@127
    const/4 v13, 0x1

    #@128
    if-ne v12, v13, :cond_3

    #@12a
    const/4 v6, 0x1

    #@12b
    .line 972
    .local v6, "enabled":Z
    :goto_2
    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->onSetInternalDataEnabled(Z)V

    #@12e
    goto/16 :goto_0

    #@130
    .line 971
    .end local v6    # "enabled":Z
    :cond_3
    const/4 v6, 0x0

    #@131
    .restart local v6    # "enabled":Z
    goto :goto_2

    #@132
    .line 976
    .end local v6    # "enabled":Z
    :sswitch_11
    const-string/jumbo v12, "EVENT_RESET_DONE"

    #@135
    invoke-virtual {p0, v12}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    #@138
    .line 977
    move-object/from16 v0, p1

    #@13a
    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@13c
    check-cast v12, Landroid/os/AsyncResult;

    #@13e
    invoke-virtual {p0, v12}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->onResetDone(Landroid/os/AsyncResult;)V

    #@141
    goto/16 :goto_0

    #@143
    .line 981
    :sswitch_12
    move-object/from16 v0, p1

    #@145
    iget v12, v0, Landroid/os/Message;->arg1:I

    #@147
    const/4 v13, 0x1

    #@148
    if-ne v12, v13, :cond_4

    #@14a
    const/4 v6, 0x1

    #@14b
    .line 982
    .restart local v6    # "enabled":Z
    :goto_3
    new-instance v12, Ljava/lang/StringBuilder;

    #@14d
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@150
    const-string/jumbo v13, "CMD_SET_USER_DATA_ENABLE enabled="

    #@153
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@156
    move-result-object v12

    #@157
    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@15a
    move-result-object v12

    #@15b
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@15e
    move-result-object v12

    #@15f
    invoke-virtual {p0, v12}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    #@162
    .line 983
    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->onSetUserDataEnabled(Z)V

    #@165
    goto/16 :goto_0

    #@167
    .line 981
    .end local v6    # "enabled":Z
    :cond_4
    const/4 v6, 0x0

    #@168
    .restart local v6    # "enabled":Z
    goto :goto_3

    #@169
    .line 987
    .end local v6    # "enabled":Z
    :sswitch_13
    move-object/from16 v0, p1

    #@16b
    iget v12, v0, Landroid/os/Message;->arg1:I

    #@16d
    const/4 v13, 0x1

    #@16e
    if-ne v12, v13, :cond_5

    #@170
    const/4 v8, 0x1

    #@171
    .line 988
    .local v8, "met":Z
    :goto_4
    new-instance v12, Ljava/lang/StringBuilder;

    #@173
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@176
    const-string/jumbo v13, "CMD_SET_DEPENDENCY_MET met="

    #@179
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17c
    move-result-object v12

    #@17d
    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@180
    move-result-object v12

    #@181
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@184
    move-result-object v12

    #@185
    invoke-virtual {p0, v12}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    #@188
    .line 989
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    #@18b
    move-result-object v3

    #@18c
    .line 990
    .local v3, "bundle":Landroid/os/Bundle;
    if-eqz v3, :cond_0

    #@18e
    .line 991
    const-string/jumbo v12, "apnType"

    #@191
    invoke-virtual {v3, v12}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    #@194
    move-result-object v2

    #@195
    check-cast v2, Ljava/lang/String;

    #@197
    .line 992
    .local v2, "apnType":Ljava/lang/String;
    if-eqz v2, :cond_0

    #@199
    .line 993
    invoke-virtual {p0, v2, v8}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->onSetDependencyMet(Ljava/lang/String;Z)V

    #@19c
    goto/16 :goto_0

    #@19e
    .line 987
    .end local v2    # "apnType":Ljava/lang/String;
    .end local v3    # "bundle":Landroid/os/Bundle;
    .end local v8    # "met":Z
    :cond_5
    const/4 v8, 0x0

    #@19f
    .restart local v8    # "met":Z
    goto :goto_4

    #@1a0
    .line 999
    .end local v8    # "met":Z
    :sswitch_14
    move-object/from16 v0, p1

    #@1a2
    iget v12, v0, Landroid/os/Message;->arg1:I

    #@1a4
    const/4 v13, 0x1

    #@1a5
    if-ne v12, v13, :cond_6

    #@1a7
    const/4 v6, 0x1

    #@1a8
    .line 1000
    .restart local v6    # "enabled":Z
    :goto_5
    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->onSetPolicyDataEnabled(Z)V

    #@1ab
    goto/16 :goto_0

    #@1ad
    .line 999
    .end local v6    # "enabled":Z
    :cond_6
    const/4 v6, 0x0

    #@1ae
    .restart local v6    # "enabled":Z
    goto :goto_5

    #@1af
    .line 1004
    .end local v6    # "enabled":Z
    :sswitch_15
    sget v13, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->sEnableFailFastRefCounter:I

    #@1b1
    move-object/from16 v0, p1

    #@1b3
    iget v12, v0, Landroid/os/Message;->arg1:I

    #@1b5
    const/4 v14, 0x1

    #@1b6
    if-ne v12, v14, :cond_9

    #@1b8
    const/4 v12, 0x1

    #@1b9
    :goto_6
    add-int/2addr v12, v13

    #@1ba
    sput v12, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->sEnableFailFastRefCounter:I

    #@1bc
    .line 1006
    new-instance v12, Ljava/lang/StringBuilder;

    #@1be
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@1c1
    const-string/jumbo v13, "CMD_SET_ENABLE_FAIL_FAST_MOBILE_DATA:  sEnableFailFastRefCounter="

    #@1c4
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c7
    move-result-object v12

    #@1c8
    .line 1007
    sget v13, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->sEnableFailFastRefCounter:I

    #@1ca
    .line 1006
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1cd
    move-result-object v12

    #@1ce
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d1
    move-result-object v12

    #@1d2
    invoke-virtual {p0, v12}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    #@1d5
    .line 1009
    sget v12, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->sEnableFailFastRefCounter:I

    #@1d7
    if-gez v12, :cond_7

    #@1d9
    .line 1010
    new-instance v12, Ljava/lang/StringBuilder;

    #@1db
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@1de
    const-string/jumbo v13, "CMD_SET_ENABLE_FAIL_FAST_MOBILE_DATA: sEnableFailFastRefCounter:"

    #@1e1
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e4
    move-result-object v12

    #@1e5
    .line 1011
    sget v13, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->sEnableFailFastRefCounter:I

    #@1e7
    .line 1010
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1ea
    move-result-object v12

    #@1eb
    .line 1011
    const-string/jumbo v13, " < 0"

    #@1ee
    .line 1010
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f1
    move-result-object v12

    #@1f2
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f5
    move-result-object v10

    #@1f6
    .line 1012
    .local v10, "s":Ljava/lang/String;
    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->loge(Ljava/lang/String;)V

    #@1f9
    .line 1013
    const/4 v12, 0x0

    #@1fa
    sput v12, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->sEnableFailFastRefCounter:I

    #@1fc
    .line 1015
    .end local v10    # "s":Ljava/lang/String;
    :cond_7
    sget v12, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->sEnableFailFastRefCounter:I

    #@1fe
    if-lez v12, :cond_a

    #@200
    const/4 v6, 0x1

    #@201
    .line 1017
    .restart local v6    # "enabled":Z
    :goto_7
    new-instance v12, Ljava/lang/StringBuilder;

    #@203
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@206
    const-string/jumbo v13, "CMD_SET_ENABLE_FAIL_FAST_MOBILE_DATA: enabled="

    #@209
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20c
    move-result-object v12

    #@20d
    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@210
    move-result-object v12

    #@211
    .line 1018
    const-string/jumbo v13, " sEnableFailFastRefCounter="

    #@214
    .line 1017
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@217
    move-result-object v12

    #@218
    .line 1018
    sget v13, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->sEnableFailFastRefCounter:I

    #@21a
    .line 1017
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@21d
    move-result-object v12

    #@21e
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@221
    move-result-object v12

    #@222
    invoke-virtual {p0, v12}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    #@225
    .line 1020
    iget-boolean v12, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mFailFast:Z

    #@227
    if-eq v12, v6, :cond_0

    #@229
    .line 1021
    iput-boolean v6, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mFailFast:Z

    #@22b
    .line 1022
    if-eqz v6, :cond_b

    #@22d
    const/4 v12, 0x0

    #@22e
    :goto_8
    iput-boolean v12, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataStallDetectionEnabled:Z

    #@230
    .line 1023
    iget-boolean v12, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataStallDetectionEnabled:Z

    #@232
    if-eqz v12, :cond_c

    #@234
    .line 1024
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->getOverallState()Lcom/android/internal/telephony/DctConstants$State;

    #@237
    move-result-object v12

    #@238
    sget-object v13, Lcom/android/internal/telephony/DctConstants$State;->CONNECTED:Lcom/android/internal/telephony/DctConstants$State;

    #@23a
    if-ne v12, v13, :cond_c

    #@23c
    .line 1025
    iget-boolean v12, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mInVoiceCall:Z

    #@23e
    if-eqz v12, :cond_8

    #@240
    .line 1026
    iget-object v12, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    #@242
    invoke-virtual {v12}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    #@245
    move-result-object v12

    #@246
    invoke-virtual {v12}, Lcom/android/internal/telephony/ServiceStateTracker;->isConcurrentVoiceAndDataAllowed()Z

    #@249
    move-result v12

    #@24a
    .line 1023
    if-eqz v12, :cond_c

    #@24c
    .line 1028
    :cond_8
    const-string/jumbo v12, "CMD_SET_ENABLE_FAIL_FAST_MOBILE_DATA: start data stall"

    #@24f
    invoke-virtual {p0, v12}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    #@252
    .line 1029
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->stopDataStallAlarm()V

    #@255
    .line 1030
    const/4 v12, 0x0

    #@256
    invoke-virtual {p0, v12}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->startDataStallAlarm(Z)V

    #@259
    goto/16 :goto_0

    #@25b
    .line 1004
    .end local v6    # "enabled":Z
    :cond_9
    const/4 v12, -0x1

    #@25c
    goto/16 :goto_6

    #@25e
    .line 1015
    :cond_a
    const/4 v6, 0x0

    #@25f
    .restart local v6    # "enabled":Z
    goto :goto_7

    #@260
    .line 1022
    :cond_b
    const/4 v12, 0x1

    #@261
    goto :goto_8

    #@262
    .line 1032
    :cond_c
    const-string/jumbo v12, "CMD_SET_ENABLE_FAIL_FAST_MOBILE_DATA: stop data stall"

    #@265
    invoke-virtual {p0, v12}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    #@268
    .line 1033
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->stopDataStallAlarm()V

    #@26b
    goto/16 :goto_0

    #@26d
    .line 1040
    .end local v6    # "enabled":Z
    :sswitch_16
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    #@270
    move-result-object v3

    #@271
    .line 1041
    .restart local v3    # "bundle":Landroid/os/Bundle;
    if-eqz v3, :cond_d

    #@273
    .line 1043
    :try_start_0
    const-string/jumbo v12, "provisioningUrl"

    #@276
    invoke-virtual {v3, v12}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    #@279
    move-result-object v12

    #@27a
    check-cast v12, Ljava/lang/String;

    #@27c
    iput-object v12, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mProvisioningUrl:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    #@27e
    .line 1049
    :cond_d
    :goto_9
    iget-object v12, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mProvisioningUrl:Ljava/lang/String;

    #@280
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@283
    move-result v12

    #@284
    if-eqz v12, :cond_e

    #@286
    .line 1050
    const-string/jumbo v12, "CMD_ENABLE_MOBILE_PROVISIONING: provisioning url is empty, ignoring"

    #@289
    invoke-virtual {p0, v12}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->loge(Ljava/lang/String;)V

    #@28c
    .line 1051
    const/4 v12, 0x0

    #@28d
    iput-boolean v12, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mIsProvisioning:Z

    #@28f
    .line 1052
    const/4 v12, 0x0

    #@290
    iput-object v12, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mProvisioningUrl:Ljava/lang/String;

    #@292
    goto/16 :goto_0

    #@294
    .line 1044
    :catch_0
    move-exception v5

    #@295
    .line 1045
    .local v5, "e":Ljava/lang/ClassCastException;
    new-instance v12, Ljava/lang/StringBuilder;

    #@297
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@29a
    const-string/jumbo v13, "CMD_ENABLE_MOBILE_PROVISIONING: provisioning url not a string"

    #@29d
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a0
    move-result-object v12

    #@2a1
    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2a4
    move-result-object v12

    #@2a5
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2a8
    move-result-object v12

    #@2a9
    invoke-virtual {p0, v12}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->loge(Ljava/lang/String;)V

    #@2ac
    .line 1046
    const/4 v12, 0x0

    #@2ad
    iput-object v12, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mProvisioningUrl:Ljava/lang/String;

    #@2af
    goto :goto_9

    #@2b0
    .line 1054
    .end local v5    # "e":Ljava/lang/ClassCastException;
    :cond_e
    new-instance v12, Ljava/lang/StringBuilder;

    #@2b2
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@2b5
    const-string/jumbo v13, "CMD_ENABLE_MOBILE_PROVISIONING: provisioningUrl="

    #@2b8
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2bb
    move-result-object v12

    #@2bc
    iget-object v13, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mProvisioningUrl:Ljava/lang/String;

    #@2be
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c1
    move-result-object v12

    #@2c2
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2c5
    move-result-object v12

    #@2c6
    invoke-virtual {p0, v12}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->loge(Ljava/lang/String;)V

    #@2c9
    .line 1055
    const/4 v12, 0x1

    #@2ca
    iput-boolean v12, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mIsProvisioning:Z

    #@2cc
    .line 1056
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->startProvisioningApnAlarm()V

    #@2cf
    goto/16 :goto_0

    #@2d1
    .line 1061
    .end local v3    # "bundle":Landroid/os/Bundle;
    :sswitch_17
    const-string/jumbo v12, "EVENT_PROVISIONING_APN_ALARM"

    #@2d4
    invoke-virtual {p0, v12}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    #@2d7
    .line 1062
    iget-object v12, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    #@2d9
    const-string/jumbo v13, "default"

    #@2dc
    invoke-virtual {v12, v13}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@2df
    move-result-object v1

    #@2e0
    check-cast v1, Lcom/android/internal/telephony/dataconnection/ApnContext;

    #@2e2
    .line 1063
    .local v1, "apnCtx":Lcom/android/internal/telephony/dataconnection/ApnContext;
    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->isProvisioningApn()Z

    #@2e5
    move-result v12

    #@2e6
    if-eqz v12, :cond_10

    #@2e8
    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->isConnectedOrConnecting()Z

    #@2eb
    move-result v12

    #@2ec
    if-eqz v12, :cond_10

    #@2ee
    .line 1064
    iget v12, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mProvisioningApnAlarmTag:I

    #@2f0
    move-object/from16 v0, p1

    #@2f2
    iget v13, v0, Landroid/os/Message;->arg1:I

    #@2f4
    if-ne v12, v13, :cond_f

    #@2f6
    .line 1065
    const-string/jumbo v12, "EVENT_PROVISIONING_APN_ALARM: Disconnecting"

    #@2f9
    invoke-virtual {p0, v12}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    #@2fc
    .line 1066
    const/4 v12, 0x0

    #@2fd
    iput-boolean v12, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mIsProvisioning:Z

    #@2ff
    .line 1067
    const/4 v12, 0x0

    #@300
    iput-object v12, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mProvisioningUrl:Ljava/lang/String;

    #@302
    .line 1068
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->stopProvisioningApnAlarm()V

    #@305
    .line 1069
    const/4 v12, 0x1

    #@306
    invoke-virtual {p0, v12, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->sendCleanUpConnection(ZLcom/android/internal/telephony/dataconnection/ApnContext;)V

    #@309
    goto/16 :goto_0

    #@30b
    .line 1072
    :cond_f
    new-instance v12, Ljava/lang/StringBuilder;

    #@30d
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@310
    const-string/jumbo v13, "EVENT_PROVISIONING_APN_ALARM: ignore stale tag, mProvisioningApnAlarmTag:"

    #@313
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@316
    move-result-object v12

    #@317
    .line 1073
    iget v13, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mProvisioningApnAlarmTag:I

    #@319
    .line 1072
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@31c
    move-result-object v12

    #@31d
    .line 1074
    const-string/jumbo v13, " != arg1:"

    #@320
    .line 1072
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@323
    move-result-object v12

    #@324
    .line 1074
    move-object/from16 v0, p1

    #@326
    iget v13, v0, Landroid/os/Message;->arg1:I

    #@328
    .line 1072
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@32b
    move-result-object v12

    #@32c
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@32f
    move-result-object v12

    #@330
    invoke-virtual {p0, v12}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    #@333
    goto/16 :goto_0

    #@335
    .line 1078
    :cond_10
    const-string/jumbo v12, "EVENT_PROVISIONING_APN_ALARM: Not connected ignore"

    #@338
    invoke-virtual {p0, v12}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    #@33b
    goto/16 :goto_0

    #@33d
    .line 1083
    .end local v1    # "apnCtx":Lcom/android/internal/telephony/dataconnection/ApnContext;
    :sswitch_18
    const-string/jumbo v12, "CMD_IS_PROVISIONING_APN"

    #@340
    invoke-virtual {p0, v12}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    #@343
    .line 1086
    const/4 v2, 0x0

    #@344
    .line 1087
    .local v2, "apnType":Ljava/lang/String;
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    #@347
    move-result-object v3

    #@348
    .line 1088
    .restart local v3    # "bundle":Landroid/os/Bundle;
    if-eqz v3, :cond_11

    #@34a
    .line 1089
    const-string/jumbo v12, "apnType"

    #@34d
    invoke-virtual {v3, v12}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    #@350
    move-result-object v12

    #@351
    move-object v0, v12

    #@352
    check-cast v0, Ljava/lang/String;

    #@354
    move-object v2, v0

    #@355
    .line 1091
    .end local v2    # "apnType":Ljava/lang/String;
    :cond_11
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@358
    move-result v12

    #@359
    if-eqz v12, :cond_12

    #@35b
    .line 1092
    const-string/jumbo v12, "CMD_IS_PROVISIONING_APN: apnType is empty"

    #@35e
    invoke-virtual {p0, v12}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->loge(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    #@361
    .line 1093
    const/4 v7, 0x0

    #@362
    .line 1101
    .end local v3    # "bundle":Landroid/os/Bundle;
    :goto_a
    new-instance v12, Ljava/lang/StringBuilder;

    #@364
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@367
    const-string/jumbo v13, "CMD_IS_PROVISIONING_APN: ret="

    #@36a
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36d
    move-result-object v12

    #@36e
    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@371
    move-result-object v12

    #@372
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@375
    move-result-object v12

    #@376
    invoke-virtual {p0, v12}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    #@379
    .line 1102
    iget-object v13, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mReplyAc:Lcom/android/internal/util/AsyncChannel;

    #@37b
    .line 1103
    if-eqz v7, :cond_13

    #@37d
    const/4 v12, 0x1

    #@37e
    .line 1102
    :goto_b
    const v14, 0x42026

    #@381
    move-object/from16 v0, p1

    #@383
    invoke-virtual {v13, v0, v14, v12}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    #@386
    goto/16 :goto_0

    #@388
    .line 1095
    .restart local v3    # "bundle":Landroid/os/Bundle;
    :cond_12
    :try_start_2
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->isProvisioningApn(Ljava/lang/String;)Z
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_1

    #@38b
    move-result v7

    #@38c
    .local v7, "isProvApn":Z
    goto :goto_a

    #@38d
    .line 1097
    .end local v3    # "bundle":Landroid/os/Bundle;
    .end local v7    # "isProvApn":Z
    :catch_1
    move-exception v5

    #@38e
    .line 1098
    .restart local v5    # "e":Ljava/lang/ClassCastException;
    const-string/jumbo v12, "CMD_IS_PROVISIONING_APN: NO provisioning url ignoring"

    #@391
    invoke-virtual {p0, v12}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->loge(Ljava/lang/String;)V

    #@394
    .line 1099
    const/4 v7, 0x0

    #@395
    .local v7, "isProvApn":Z
    goto :goto_a

    #@396
    .line 1103
    .end local v5    # "e":Ljava/lang/ClassCastException;
    .end local v7    # "isProvApn":Z
    :cond_13
    const/4 v12, 0x0

    #@397
    goto :goto_b

    #@398
    .line 1107
    :sswitch_19
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->onUpdateIcc()V

    #@39b
    goto/16 :goto_0

    #@39d
    .line 1111
    :sswitch_1a
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->restartRadio()V

    #@3a0
    goto/16 :goto_0

    #@3a2
    .line 1115
    :sswitch_1b
    move-object/from16 v0, p1

    #@3a4
    iget v12, v0, Landroid/os/Message;->arg1:I

    #@3a6
    const/4 v13, 0x1

    #@3a7
    if-ne v12, v13, :cond_14

    #@3a9
    .line 1116
    move-object/from16 v0, p1

    #@3ab
    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@3ad
    check-cast v12, Lcom/android/internal/telephony/DctConstants$Activity;

    #@3af
    invoke-virtual {p0, v12}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->handleStartNetStatPoll(Lcom/android/internal/telephony/DctConstants$Activity;)V

    #@3b2
    goto/16 :goto_0

    #@3b4
    .line 1117
    :cond_14
    move-object/from16 v0, p1

    #@3b6
    iget v12, v0, Landroid/os/Message;->arg1:I

    #@3b8
    if-nez v12, :cond_0

    #@3ba
    .line 1118
    move-object/from16 v0, p1

    #@3bc
    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@3be
    check-cast v12, Lcom/android/internal/telephony/DctConstants$Activity;

    #@3c0
    invoke-virtual {p0, v12}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->handleStopNetStatPoll(Lcom/android/internal/telephony/DctConstants$Activity;)V

    #@3c3
    goto/16 :goto_0

    #@3c5
    .line 894
    nop

    #@3c6
    :sswitch_data_0
    .sparse-switch
        0x11004 -> :sswitch_0
        0x42000 -> :sswitch_8
        0x42001 -> :sswitch_6
        0x42003 -> :sswitch_2
        0x42006 -> :sswitch_7
        0x42007 -> :sswitch_c
        0x42008 -> :sswitch_d
        0x4200b -> :sswitch_5
        0x4200c -> :sswitch_4
        0x4200d -> :sswitch_1
        0x4200f -> :sswitch_a
        0x42011 -> :sswitch_3
        0x42018 -> :sswitch_f
        0x4201a -> :sswitch_1a
        0x4201b -> :sswitch_10
        0x4201c -> :sswitch_11
        0x4201d -> :sswitch_e
        0x4201e -> :sswitch_12
        0x4201f -> :sswitch_13
        0x42020 -> :sswitch_14
        0x42021 -> :sswitch_19
        0x42022 -> :sswitch_b
        0x42023 -> :sswitch_9
        0x42024 -> :sswitch_15
        0x42025 -> :sswitch_16
        0x42026 -> :sswitch_18
        0x42027 -> :sswitch_17
        0x42028 -> :sswitch_1b
    .end sparse-switch
.end method

.method protected handleStartNetStatPoll(Lcom/android/internal/telephony/DctConstants$Activity;)V
    .locals 1
    .param p1, "activity"    # Lcom/android/internal/telephony/DctConstants$Activity;

    #@0
    .prologue
    .line 1487
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->startNetStatPoll()V

    #@3
    .line 1488
    const/4 v0, 0x0

    #@4
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->startDataStallAlarm(Z)V

    #@7
    .line 1489
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->setActivity(Lcom/android/internal/telephony/DctConstants$Activity;)V

    #@a
    .line 1486
    return-void
.end method

.method protected handleStopNetStatPoll(Lcom/android/internal/telephony/DctConstants$Activity;)V
    .locals 0
    .param p1, "activity"    # Lcom/android/internal/telephony/DctConstants$Activity;

    #@0
    .prologue
    .line 1500
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->stopNetStatPoll()V

    #@3
    .line 1501
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->stopDataStallAlarm()V

    #@6
    .line 1502
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->setActivity(Lcom/android/internal/telephony/DctConstants$Activity;)V

    #@9
    .line 1499
    return-void
.end method

.method public hasMatchedTetherApnSetting()Z
    .locals 3

    #@0
    .prologue
    .line 743
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->fetchDunApn()Lcom/android/internal/telephony/dataconnection/ApnSetting;

    #@3
    move-result-object v0

    #@4
    .line 744
    .local v0, "matched":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    new-instance v1, Ljava/lang/StringBuilder;

    #@6
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@9
    const-string/jumbo v2, "hasMatchedTetherApnSetting: APN="

    #@c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v1

    #@10
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@17
    move-result-object v1

    #@18
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    #@1b
    .line 745
    if-eqz v0, :cond_0

    #@1d
    const/4 v1, 0x1

    #@1e
    :goto_0
    return v1

    #@1f
    :cond_0
    const/4 v1, 0x0

    #@20
    goto :goto_0
.end method

.method public abstract incApnRefCount(Ljava/lang/String;Landroid/util/LocalLog;)V
.end method

.method protected declared-synchronized isApnIdEnabled(I)Z
    .locals 1
    .param p1, "id"    # I

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 1288
    const/4 v0, -0x1

    #@2
    if-eq p1, v0, :cond_0

    #@4
    .line 1289
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataEnabled:[Z

    #@6
    aget-boolean v0, v0, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    monitor-exit p0

    #@9
    return v0

    #@a
    .line 1291
    :cond_0
    const/4 v0, 0x0

    #@b
    monitor-exit p0

    #@c
    return v0

    #@d
    :catchall_0
    move-exception v0

    #@e
    monitor-exit p0

    #@f
    throw v0
.end method

.method public isApnSupported(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 670
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public isApnTypeActive(Ljava/lang/String;)Z
    .locals 3
    .param p1, "type"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 680
    const-string/jumbo v2, "dun"

    #@4
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@7
    move-result v2

    #@8
    if-eqz v2, :cond_1

    #@a
    .line 681
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->fetchDunApn()Lcom/android/internal/telephony/dataconnection/ApnSetting;

    #@d
    move-result-object v0

    #@e
    .line 682
    .local v0, "dunApn":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    if-eqz v0, :cond_1

    #@10
    .line 683
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mActiveApn:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    #@12
    if-eqz v2, :cond_0

    #@14
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->toString()Ljava/lang/String;

    #@17
    move-result-object v1

    #@18
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mActiveApn:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    #@1a
    invoke-virtual {v2}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->toString()Ljava/lang/String;

    #@1d
    move-result-object v2

    #@1e
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@21
    move-result v1

    #@22
    :cond_0
    return v1

    #@23
    .line 686
    .end local v0    # "dunApn":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mActiveApn:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    #@25
    if-eqz v2, :cond_2

    #@27
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mActiveApn:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    #@29
    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->canHandleType(Ljava/lang/String;)Z

    #@2c
    move-result v1

    #@2d
    :cond_2
    return v1
.end method

.method protected abstract isApnTypeAvailable(Ljava/lang/String;)Z
.end method

.method public isApnTypeEnabled(Ljava/lang/String;)Z
    .locals 1
    .param p1, "apnType"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1280
    if-nez p1, :cond_0

    #@2
    .line 1281
    const/4 v0, 0x0

    #@3
    return v0

    #@4
    .line 1283
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->apnTypeToId(Ljava/lang/String;)I

    #@7
    move-result v0

    #@8
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->isApnIdEnabled(I)Z

    #@b
    move-result v0

    #@c
    return v0
.end method

.method protected isConnected()Z
    .locals 1

    #@0
    .prologue
    .line 1574
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method protected abstract isDataAllowed()Z
.end method

.method public abstract isDataPossible(Ljava/lang/String;)Z
.end method

.method public abstract isDisconnected()Z
.end method

.method protected isEmergency()Z
    .locals 3

    #@0
    .prologue
    .line 1146
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataEnabledLock:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 1147
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    #@5
    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->isInEcm()Z

    #@8
    move-result v1

    #@9
    if-nez v1, :cond_0

    #@b
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    #@d
    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->isInEmergencyCall()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    move-result v0

    #@11
    :goto_0
    monitor-exit v2

    #@12
    .line 1149
    new-instance v1, Ljava/lang/StringBuilder;

    #@14
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@17
    const-string/jumbo v2, "isEmergency: result="

    #@1a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v1

    #@1e
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@21
    move-result-object v1

    #@22
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@25
    move-result-object v1

    #@26
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    #@29
    .line 1150
    return v0

    #@2a
    .line 1147
    :cond_0
    const/4 v0, 0x1

    #@2b
    .local v0, "result":Z
    goto :goto_0

    #@2c
    .line 1146
    .end local v0    # "result":Z
    :catchall_0
    move-exception v1

    #@2d
    monitor-exit v2

    #@2e
    throw v1
.end method

.method protected abstract isPermanentFail(Lcom/android/internal/telephony/dataconnection/DcFailCause;)Z
.end method

.method protected abstract isProvisioningApn(Ljava/lang/String;)Z
.end method

.method protected abstract log(Ljava/lang/String;)V
.end method

.method protected abstract loge(Ljava/lang/String;)V
.end method

.method protected notifyDataConnection(Ljava/lang/String;)V
    .locals 3
    .param p1, "reason"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1230
    const/4 v0, 0x0

    #@1
    .local v0, "id":I
    :goto_0
    const/16 v1, 0xa

    #@3
    if-ge v0, v1, :cond_1

    #@5
    .line 1231
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataEnabled:[Z

    #@7
    aget-boolean v1, v1, v0

    #@9
    if-eqz v1, :cond_0

    #@b
    .line 1232
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    #@d
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->apnIdToType(I)Ljava/lang/String;

    #@10
    move-result-object v2

    #@11
    invoke-virtual {v1, p1, v2}, Lcom/android/internal/telephony/PhoneBase;->notifyDataConnection(Ljava/lang/String;Ljava/lang/String;)V

    #@14
    .line 1230
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@16
    goto :goto_0

    #@17
    .line 1235
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->notifyOffApnsOfAvailability(Ljava/lang/String;)V

    #@1a
    .line 1229
    return-void
.end method

.method protected notifyOffApnsOfAvailability(Ljava/lang/String;)V
    .locals 3
    .param p1, "reason"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1271
    new-instance v1, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v2, "notifyOffApnsOfAvailability - reason= "

    #@8
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v1

    #@c
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v1

    #@10
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    #@17
    .line 1272
    const/4 v0, 0x0

    #@18
    .local v0, "id":I
    :goto_0
    const/16 v1, 0xa

    #@1a
    if-ge v0, v1, :cond_1

    #@1c
    .line 1273
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->isApnIdEnabled(I)Z

    #@1f
    move-result v1

    #@20
    if-nez v1, :cond_0

    #@22
    .line 1274
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->notifyApnIdDisconnected(Ljava/lang/String;I)V

    #@25
    .line 1272
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@27
    goto :goto_0

    #@28
    .line 1270
    :cond_1
    return-void
.end method

.method protected onActionIntentDataStallAlarm(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 574
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    #@3
    move-result-object v1

    #@4
    .line 573
    const v2, 0x42011

    #@7
    invoke-virtual {p0, v2, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@a
    move-result-object v0

    #@b
    .line 575
    .local v0, "msg":Landroid/os/Message;
    const-string/jumbo v1, "data.stall.alram.tag"

    #@e
    const/4 v2, 0x0

    #@f
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    #@12
    move-result v1

    #@13
    iput v1, v0, Landroid/os/Message;->arg1:I

    #@15
    .line 576
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->sendMessage(Landroid/os/Message;)Z

    #@18
    .line 571
    return-void
.end method

.method protected onActionIntentProvisioningApnAlarm(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 1856
    new-instance v1, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v2, "onActionIntentProvisioningApnAlarm: action="

    #@8
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v1

    #@c
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    #@f
    move-result-object v2

    #@10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@17
    move-result-object v1

    #@18
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    #@1b
    .line 1858
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    #@1e
    move-result-object v1

    #@1f
    .line 1857
    const v2, 0x42027

    #@22
    invoke-virtual {p0, v2, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@25
    move-result-object v0

    #@26
    .line 1859
    .local v0, "msg":Landroid/os/Message;
    const-string/jumbo v1, "provisioning.apn.alarm.tag"

    #@29
    const/4 v2, 0x0

    #@2a
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    #@2d
    move-result v1

    #@2e
    iput v1, v0, Landroid/os/Message;->arg1:I

    #@30
    .line 1860
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->sendMessage(Landroid/os/Message;)Z

    #@33
    .line 1855
    return-void
.end method

.method protected onActionIntentReconnectAlarm(Landroid/content/Intent;)V
    .locals 10
    .param p1, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    const/4 v9, 0x0

    #@1
    .line 507
    const-string/jumbo v7, "reconnect_alarm_extra_reason"

    #@4
    invoke-virtual {p1, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    #@7
    move-result-object v6

    #@8
    .line 508
    .local v6, "reason":Ljava/lang/String;
    const-string/jumbo v7, "reconnect_alarm_extra_type"

    #@b
    invoke-virtual {p1, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    #@e
    move-result-object v2

    #@f
    .line 510
    .local v2, "apnType":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    #@11
    invoke-virtual {v7}, Lcom/android/internal/telephony/PhoneBase;->getSubId()I

    #@14
    move-result v5

    #@15
    .line 511
    .local v5, "phoneSubId":I
    const-string/jumbo v7, "subscription"

    #@18
    .line 512
    const/4 v8, -0x1

    #@19
    .line 511
    invoke-virtual {p1, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    #@1c
    move-result v3

    #@1d
    .line 513
    .local v3, "currSubId":I
    new-instance v7, Ljava/lang/StringBuilder;

    #@1f
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@22
    const-string/jumbo v8, "onActionIntentReconnectAlarm: currSubId = "

    #@25
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v7

    #@29
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v7

    #@2d
    const-string/jumbo v8, " phoneSubId="

    #@30
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v7

    #@34
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@37
    move-result-object v7

    #@38
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3b
    move-result-object v7

    #@3c
    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    #@3f
    .line 517
    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    #@42
    move-result v7

    #@43
    if-eqz v7, :cond_0

    #@45
    if-eq v3, v5, :cond_1

    #@47
    .line 518
    :cond_0
    const-string/jumbo v7, "receive ReconnectAlarm but subId incorrect, ignore"

    #@4a
    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    #@4d
    .line 519
    return-void

    #@4e
    .line 522
    :cond_1
    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    #@50
    invoke-virtual {v7, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@53
    move-result-object v0

    #@54
    check-cast v0, Lcom/android/internal/telephony/dataconnection/ApnContext;

    #@56
    .line 525
    .local v0, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    new-instance v7, Ljava/lang/StringBuilder;

    #@58
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@5b
    const-string/jumbo v8, "onActionIntentReconnectAlarm: mState="

    #@5e
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@61
    move-result-object v7

    #@62
    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mState:Lcom/android/internal/telephony/DctConstants$State;

    #@64
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@67
    move-result-object v7

    #@68
    const-string/jumbo v8, " reason="

    #@6b
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6e
    move-result-object v7

    #@6f
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@72
    move-result-object v7

    #@73
    .line 526
    const-string/jumbo v8, " apnType="

    #@76
    .line 525
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@79
    move-result-object v7

    #@7a
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7d
    move-result-object v7

    #@7e
    .line 526
    const-string/jumbo v8, " apnContext="

    #@81
    .line 525
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@84
    move-result-object v7

    #@85
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@88
    move-result-object v7

    #@89
    .line 527
    const-string/jumbo v8, " mDataConnectionAsyncChannels="

    #@8c
    .line 525
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8f
    move-result-object v7

    #@90
    .line 527
    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataConnectionAcHashMap:Ljava/util/HashMap;

    #@92
    .line 525
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@95
    move-result-object v7

    #@96
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@99
    move-result-object v7

    #@9a
    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    #@9d
    .line 530
    if-eqz v0, :cond_4

    #@9f
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->isEnabled()Z

    #@a2
    move-result v7

    #@a3
    if-eqz v7, :cond_4

    #@a5
    .line 531
    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setReason(Ljava/lang/String;)V

    #@a8
    .line 532
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getState()Lcom/android/internal/telephony/DctConstants$State;

    #@ab
    move-result-object v1

    #@ac
    .line 534
    .local v1, "apnContextState":Lcom/android/internal/telephony/DctConstants$State;
    new-instance v7, Ljava/lang/StringBuilder;

    #@ae
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@b1
    const-string/jumbo v8, "onActionIntentReconnectAlarm: apnContext state="

    #@b4
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b7
    move-result-object v7

    #@b8
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@bb
    move-result-object v7

    #@bc
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@bf
    move-result-object v7

    #@c0
    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    #@c3
    .line 536
    sget-object v7, Lcom/android/internal/telephony/DctConstants$State;->FAILED:Lcom/android/internal/telephony/DctConstants$State;

    #@c5
    if-eq v1, v7, :cond_2

    #@c7
    .line 537
    sget-object v7, Lcom/android/internal/telephony/DctConstants$State;->IDLE:Lcom/android/internal/telephony/DctConstants$State;

    #@c9
    if-ne v1, v7, :cond_5

    #@cb
    .line 539
    :cond_2
    const-string/jumbo v7, "onActionIntentReconnectAlarm: state is FAILED|IDLE, disassociate"

    #@ce
    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    #@d1
    .line 541
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getDcAc()Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;

    #@d4
    move-result-object v4

    #@d5
    .line 542
    .local v4, "dcac":Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;
    if-eqz v4, :cond_3

    #@d7
    .line 544
    new-instance v7, Ljava/lang/StringBuilder;

    #@d9
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@dc
    const-string/jumbo v8, "onActionIntentReconnectAlarm: tearDown apnContext="

    #@df
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e2
    move-result-object v7

    #@e3
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@e6
    move-result-object v7

    #@e7
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ea
    move-result-object v7

    #@eb
    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    #@ee
    .line 546
    const-string/jumbo v7, ""

    #@f1
    invoke-virtual {v4, v0, v7, v9}, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->tearDown(Lcom/android/internal/telephony/dataconnection/ApnContext;Ljava/lang/String;Landroid/os/Message;)V

    #@f4
    .line 548
    :cond_3
    invoke-virtual {v0, v9}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setDataConnectionAc(Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;)V

    #@f7
    .line 549
    sget-object v7, Lcom/android/internal/telephony/DctConstants$State;->IDLE:Lcom/android/internal/telephony/DctConstants$State;

    #@f9
    invoke-virtual {v0, v7}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setState(Lcom/android/internal/telephony/DctConstants$State;)V

    #@fc
    .line 554
    .end local v4    # "dcac":Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;
    :goto_0
    const v7, 0x42003

    #@ff
    invoke-virtual {p0, v7, v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@102
    move-result-object v7

    #@103
    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->sendMessage(Landroid/os/Message;)Z

    #@106
    .line 556
    invoke-virtual {v0, v9}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setReconnectIntent(Landroid/app/PendingIntent;)V

    #@109
    .line 506
    .end local v1    # "apnContextState":Lcom/android/internal/telephony/DctConstants$State;
    :cond_4
    return-void

    #@10a
    .line 551
    .restart local v1    # "apnContextState":Lcom/android/internal/telephony/DctConstants$State;
    :cond_5
    const-string/jumbo v7, "onActionIntentReconnectAlarm: keep associated"

    #@10d
    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    #@110
    goto :goto_0
.end method

.method protected onActionIntentRestartTrySetupAlarm(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 561
    const-string/jumbo v2, "restart_trysetup_alarm_extra_type"

    #@3
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    #@6
    move-result-object v1

    #@7
    .line 562
    .local v1, "apnType":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    #@9
    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@c
    move-result-object v0

    #@d
    check-cast v0, Lcom/android/internal/telephony/dataconnection/ApnContext;

    #@f
    .line 564
    .local v0, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    new-instance v2, Ljava/lang/StringBuilder;

    #@11
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@14
    const-string/jumbo v3, "onActionIntentRestartTrySetupAlarm: mState="

    #@17
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v2

    #@1b
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mState:Lcom/android/internal/telephony/DctConstants$State;

    #@1d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v2

    #@21
    .line 565
    const-string/jumbo v3, " apnType="

    #@24
    .line 564
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v2

    #@28
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v2

    #@2c
    .line 565
    const-string/jumbo v3, " apnContext="

    #@2f
    .line 564
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v2

    #@33
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v2

    #@37
    .line 566
    const-string/jumbo v3, " mDataConnectionAsyncChannels="

    #@3a
    .line 564
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v2

    #@3e
    .line 566
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataConnectionAcHashMap:Ljava/util/HashMap;

    #@40
    .line 564
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v2

    #@44
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@47
    move-result-object v2

    #@48
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    #@4b
    .line 568
    const v2, 0x42003

    #@4e
    invoke-virtual {p0, v2, v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@51
    move-result-object v2

    #@52
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->sendMessage(Landroid/os/Message;)Z

    #@55
    .line 560
    return-void
.end method

.method protected abstract onCleanUpAllConnections(Ljava/lang/String;)V
.end method

.method protected abstract onCleanUpConnection(ZILjava/lang/String;)V
.end method

.method protected abstract onDataSetupComplete(Landroid/os/AsyncResult;)V
.end method

.method protected abstract onDataSetupCompleteError(Landroid/os/AsyncResult;)V
.end method

.method protected onDataStallAlarm(I)V
    .locals 6
    .param p1, "tag"    # I

    #@0
    .prologue
    .line 1678
    iget v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataStallAlarmTag:I

    #@2
    if-eq v2, p1, :cond_0

    #@4
    .line 1680
    new-instance v2, Ljava/lang/StringBuilder;

    #@6
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@9
    const-string/jumbo v3, "onDataStallAlarm: ignore, tag="

    #@c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v2

    #@10
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@13
    move-result-object v2

    #@14
    const-string/jumbo v3, " expecting "

    #@17
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v2

    #@1b
    iget v3, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataStallAlarmTag:I

    #@1d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@20
    move-result-object v2

    #@21
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@24
    move-result-object v2

    #@25
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    #@28
    .line 1682
    return-void

    #@29
    .line 1684
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->updateDataStallInfo()V

    #@2c
    .line 1686
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mResolver:Landroid/content/ContentResolver;

    #@2e
    .line 1687
    const-string/jumbo v3, "pdp_watchdog_trigger_packet_count"

    #@31
    .line 1688
    const/16 v4, 0xa

    #@33
    .line 1686
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    #@36
    move-result v0

    #@37
    .line 1690
    .local v0, "hangWatchdogTrigger":I
    const/4 v1, 0x0

    #@38
    .line 1691
    .local v1, "suspectedStall":Z
    iget-wide v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mSentSinceLastRecv:J

    #@3a
    int-to-long v4, v0

    #@3b
    cmp-long v2, v2, v4

    #@3d
    if-ltz v2, :cond_1

    #@3f
    .line 1693
    new-instance v2, Ljava/lang/StringBuilder;

    #@41
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@44
    const-string/jumbo v3, "onDataStallAlarm: tag="

    #@47
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v2

    #@4b
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v2

    #@4f
    const-string/jumbo v3, " do recovery action="

    #@52
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@55
    move-result-object v2

    #@56
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->getRecoveryAction()I

    #@59
    move-result v3

    #@5a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@5d
    move-result-object v2

    #@5e
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@61
    move-result-object v2

    #@62
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    #@65
    .line 1695
    const/4 v1, 0x1

    #@66
    .line 1696
    const v2, 0x42012

    #@69
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->obtainMessage(I)Landroid/os/Message;

    #@6c
    move-result-object v2

    #@6d
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->sendMessage(Landroid/os/Message;)Z

    #@70
    .line 1703
    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->startDataStallAlarm(Z)V

    #@73
    .line 1677
    return-void
.end method

.method protected abstract onDisconnectDcRetrying(ILandroid/os/AsyncResult;)V
.end method

.method protected abstract onDisconnectDone(ILandroid/os/AsyncResult;)V
.end method

.method abstract onEnableApn(II)V
.end method

.method protected onEnableNewApn()V
    .locals 0

    #@0
    .prologue
    .line 1313
    return-void
.end method

.method protected abstract onRadioAvailable()V
.end method

.method protected abstract onRadioOffOrNotAvailable()V
.end method

.method protected onResetDone(Landroid/os/AsyncResult;)V
    .locals 2
    .param p1, "ar"    # Landroid/os/AsyncResult;

    #@0
    .prologue
    .line 1324
    const-string/jumbo v1, "EVENT_RESET_DONE"

    #@3
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    #@6
    .line 1325
    const/4 v0, 0x0

    #@7
    .line 1326
    .local v0, "reason":Ljava/lang/String;
    iget-object v1, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    #@9
    instance-of v1, v1, Ljava/lang/String;

    #@b
    if-eqz v1, :cond_0

    #@d
    .line 1327
    iget-object v0, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    #@f
    .end local v0    # "reason":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    #@11
    .line 1329
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->gotoIdleAndNotifyDataConnection(Ljava/lang/String;)V

    #@14
    .line 1323
    return-void
.end method

.method protected abstract onRoamingOff()V
.end method

.method protected abstract onRoamingOn()V
.end method

.method protected onSetDependencyMet(Ljava/lang/String;Z)V
    .locals 0
    .param p1, "apnType"    # Ljava/lang/String;
    .param p2, "met"    # Z

    #@0
    .prologue
    .line 1403
    return-void
.end method

.method protected onSetInternalDataEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    #@0
    .prologue
    .line 1352
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataEnabledLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 1353
    :try_start_0
    iput-boolean p1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mInternalDataEnabled:Z

    #@5
    .line 1354
    if-eqz p1, :cond_0

    #@7
    .line 1355
    const-string/jumbo v0, "onSetInternalDataEnabled: changed to enabled, try to setup data call"

    #@a
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    #@d
    .line 1356
    const-string/jumbo v0, "dataEnabled"

    #@10
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->onTrySetupData(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@13
    :goto_0
    monitor-exit v1

    #@14
    .line 1351
    return-void

    #@15
    .line 1358
    :cond_0
    :try_start_1
    const-string/jumbo v0, "onSetInternalDataEnabled: changed to disabled, cleanUpAllConnections"

    #@18
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    #@1b
    .line 1359
    const/4 v0, 0x0

    #@1c
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->cleanUpAllConnections(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1f
    goto :goto_0

    #@20
    .line 1352
    :catchall_0
    move-exception v0

    #@21
    monitor-exit v1

    #@22
    throw v0
.end method

.method protected onSetPolicyDataEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    #@0
    .prologue
    .line 1407
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataEnabledLock:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 1408
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->getAnyDataEnabled()Z

    #@6
    move-result v0

    #@7
    .line 1409
    .local v0, "prevEnabled":Z
    sget-boolean v1, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->sPolicyDataEnabled:Z

    #@9
    if-eq v1, p1, :cond_0

    #@b
    .line 1410
    sput-boolean p1, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->sPolicyDataEnabled:Z

    #@d
    .line 1411
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->getAnyDataEnabled()Z

    #@10
    move-result v1

    #@11
    if-eq v0, v1, :cond_0

    #@13
    .line 1412
    if-nez v0, :cond_1

    #@15
    .line 1413
    const-string/jumbo v1, "dataEnabled"

    #@18
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->onTrySetupData(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1b
    :cond_0
    :goto_0
    monitor-exit v2

    #@1c
    .line 1406
    return-void

    #@1d
    .line 1415
    :cond_1
    :try_start_1
    const-string/jumbo v1, "specificDisabled"

    #@20
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->onCleanUpAllConnections(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@23
    goto :goto_0

    #@24
    .line 1407
    .end local v0    # "prevEnabled":Z
    :catchall_0
    move-exception v1

    #@25
    monitor-exit v2

    #@26
    throw v1
.end method

.method protected onSetUserDataEnabled(Z)V
    .locals 7
    .param p1, "enabled"    # Z

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v1, 0x1

    #@2
    .line 1373
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataEnabledLock:Ljava/lang/Object;

    #@4
    monitor-enter v3

    #@5
    .line 1374
    :try_start_0
    iget-boolean v4, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mUserDataEnabled:Z

    #@7
    if-eq v4, p1, :cond_1

    #@9
    .line 1375
    iput-boolean p1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mUserDataEnabled:Z

    #@b
    .line 1378
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    #@e
    move-result-object v4

    #@f
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getSimCount()I

    #@12
    move-result v4

    #@13
    if-ne v4, v1, :cond_3

    #@15
    .line 1379
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mResolver:Landroid/content/ContentResolver;

    #@17
    const-string/jumbo v5, "mobile_data"

    #@1a
    if-eqz p1, :cond_2

    #@1c
    :goto_0
    invoke-static {v4, v5, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    #@1f
    .line 1385
    :goto_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->getDataOnRoamingEnabled()Z

    #@22
    move-result v1

    #@23
    if-nez v1, :cond_0

    #@25
    .line 1386
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    #@27
    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    #@2a
    move-result-object v1

    #@2b
    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    #@2e
    move-result v1

    #@2f
    if-eqz v1, :cond_0

    #@31
    .line 1387
    if-eqz p1, :cond_5

    #@33
    .line 1388
    const-string/jumbo v1, "roamingOn"

    #@36
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->notifyOffApnsOfAvailability(Ljava/lang/String;)V

    #@39
    .line 1394
    :cond_0
    :goto_2
    if-eqz p1, :cond_6

    #@3b
    .line 1395
    const-string/jumbo v1, "dataEnabled"

    #@3e
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->onTrySetupData(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@41
    :cond_1
    :goto_3
    monitor-exit v3

    #@42
    .line 1372
    return-void

    #@43
    :cond_2
    move v1, v2

    #@44
    .line 1379
    goto :goto_0

    #@45
    .line 1381
    :cond_3
    :try_start_1
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    #@47
    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getSubId()I

    #@4a
    move-result v0

    #@4b
    .line 1382
    .local v0, "phoneSubId":I
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mResolver:Landroid/content/ContentResolver;

    #@4d
    new-instance v5, Ljava/lang/StringBuilder;

    #@4f
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@52
    const-string/jumbo v6, "mobile_data"

    #@55
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@58
    move-result-object v5

    #@59
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@5c
    move-result-object v5

    #@5d
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@60
    move-result-object v5

    #@61
    .line 1383
    if-eqz p1, :cond_4

    #@63
    .line 1382
    :goto_4
    invoke-static {v4, v5, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@66
    goto :goto_1

    #@67
    .line 1373
    .end local v0    # "phoneSubId":I
    :catchall_0
    move-exception v1

    #@68
    monitor-exit v3

    #@69
    throw v1

    #@6a
    .restart local v0    # "phoneSubId":I
    :cond_4
    move v1, v2

    #@6b
    .line 1383
    goto :goto_4

    #@6c
    .line 1390
    .end local v0    # "phoneSubId":I
    :cond_5
    :try_start_2
    const-string/jumbo v1, "dataDisabled"

    #@6f
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->notifyOffApnsOfAvailability(Ljava/lang/String;)V

    #@72
    goto :goto_2

    #@73
    .line 1397
    :cond_6
    const-string/jumbo v1, "specificDisabled"

    #@76
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->onCleanUpAllConnections(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@79
    goto :goto_3
.end method

.method protected abstract onTrySetupData(Ljava/lang/String;)Z
.end method

.method protected abstract onUpdateIcc()V
.end method

.method protected abstract onVoiceCallEnded()V
.end method

.method protected abstract onVoiceCallStarted()V
.end method

.method public putRecoveryAction(I)V
    .locals 2
    .param p1, "action"    # I

    #@0
    .prologue
    .line 1569
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mResolver:Landroid/content/ContentResolver;

    #@2
    const-string/jumbo v1, "radio.data.stall.recovery.action"

    #@5
    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    #@8
    .line 1568
    return-void
.end method

.method protected resetPollStats()V
    .locals 2

    #@0
    .prologue
    const-wide/16 v0, -0x1

    #@2
    .line 1444
    iput-wide v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mTxPkts:J

    #@4
    .line 1445
    iput-wide v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mRxPkts:J

    #@6
    .line 1446
    const/16 v0, 0x3e8

    #@8
    iput v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mNetStatPollPeriod:I

    #@a
    .line 1443
    return-void
.end method

.method protected restartDataStallAlarm()V
    .locals 2

    #@0
    .prologue
    .line 1754
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->isConnected()Z

    #@3
    move-result v1

    #@4
    if-nez v1, :cond_0

    #@6
    return-void

    #@7
    .line 1757
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->getRecoveryAction()I

    #@a
    move-result v0

    #@b
    .line 1759
    .local v0, "nextAction":I
    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$RecoveryAction;->-wrap0(I)Z

    #@e
    move-result v1

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 1760
    const-string/jumbo v1, "restartDataStallAlarm: action is pending. not resetting the alarm."

    #@14
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    #@17
    .line 1761
    return-void

    #@18
    .line 1764
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->stopDataStallAlarm()V

    #@1b
    .line 1765
    const/4 v1, 0x0

    #@1c
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->startDataStallAlarm(Z)V

    #@1f
    .line 1753
    return-void
.end method

.method protected abstract restartRadio()V
.end method

.method sendCleanUpConnection(ZLcom/android/internal/telephony/dataconnection/ApnContext;)V
    .locals 4
    .param p1, "tearDown"    # Z
    .param p2, "apnContext"    # Lcom/android/internal/telephony/dataconnection/ApnContext;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1903
    new-instance v1, Ljava/lang/StringBuilder;

    #@3
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@6
    const-string/jumbo v3, "sendCleanUpConnection: tearDown="

    #@9
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c
    move-result-object v1

    #@d
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@10
    move-result-object v1

    #@11
    const-string/jumbo v3, " apnContext="

    #@14
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v1

    #@1c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f
    move-result-object v1

    #@20
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    #@23
    .line 1904
    const v1, 0x42018

    #@26
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->obtainMessage(I)Landroid/os/Message;

    #@29
    move-result-object v0

    #@2a
    .line 1905
    .local v0, "msg":Landroid/os/Message;
    if-eqz p1, :cond_0

    #@2c
    const/4 v1, 0x1

    #@2d
    :goto_0
    iput v1, v0, Landroid/os/Message;->arg1:I

    #@2f
    .line 1906
    iput v2, v0, Landroid/os/Message;->arg2:I

    #@31
    .line 1907
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@33
    .line 1908
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->sendMessage(Landroid/os/Message;)Z

    #@36
    .line 1902
    return-void

    #@37
    :cond_0
    move v1, v2

    #@38
    .line 1905
    goto :goto_0
.end method

.method sendRestartRadio()V
    .locals 2

    #@0
    .prologue
    .line 1912
    const-string/jumbo v1, "sendRestartRadio:"

    #@3
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    #@6
    .line 1913
    const v1, 0x4201a

    #@9
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->obtainMessage(I)Landroid/os/Message;

    #@c
    move-result-object v0

    #@d
    .line 1914
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->sendMessage(Landroid/os/Message;)Z

    #@10
    .line 1911
    return-void
.end method

.method public sendStartNetStatPoll(Lcom/android/internal/telephony/DctConstants$Activity;)V
    .locals 2
    .param p1, "activity"    # Lcom/android/internal/telephony/DctConstants$Activity;

    #@0
    .prologue
    .line 1480
    const v1, 0x42028

    #@3
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->obtainMessage(I)Landroid/os/Message;

    #@6
    move-result-object v0

    #@7
    .line 1481
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    #@8
    iput v1, v0, Landroid/os/Message;->arg1:I

    #@a
    .line 1482
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@c
    .line 1483
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->sendMessage(Landroid/os/Message;)Z

    #@f
    .line 1479
    return-void
.end method

.method public sendStopNetStatPoll(Lcom/android/internal/telephony/DctConstants$Activity;)V
    .locals 2
    .param p1, "activity"    # Lcom/android/internal/telephony/DctConstants$Activity;

    #@0
    .prologue
    .line 1493
    const v1, 0x42028

    #@3
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->obtainMessage(I)Landroid/os/Message;

    #@6
    move-result-object v0

    #@7
    .line 1494
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x0

    #@8
    iput v1, v0, Landroid/os/Message;->arg1:I

    #@a
    .line 1495
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@c
    .line 1496
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->sendMessage(Landroid/os/Message;)Z

    #@f
    .line 1492
    return-void
.end method

.method setActivity(Lcom/android/internal/telephony/DctConstants$Activity;)V
    .locals 2
    .param p1, "activity"    # Lcom/android/internal/telephony/DctConstants$Activity;

    #@0
    .prologue
    .line 660
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "setActivity = "

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
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    #@17
    .line 661
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mActivity:Lcom/android/internal/telephony/DctConstants$Activity;

    #@19
    .line 662
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    #@1b
    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->notifyDataActivity()V

    #@1e
    .line 659
    return-void
.end method

.method public abstract setDataAllowed(ZLandroid/os/Message;)V
.end method

.method public setDataEnabled(Z)V
    .locals 3
    .param p1, "enable"    # Z

    #@0
    .prologue
    .line 828
    const v1, 0x4201e

    #@3
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->obtainMessage(I)Landroid/os/Message;

    #@6
    move-result-object v0

    #@7
    .line 829
    .local v0, "msg":Landroid/os/Message;
    if-eqz p1, :cond_0

    #@9
    const/4 v1, 0x1

    #@a
    :goto_0
    iput v1, v0, Landroid/os/Message;->arg1:I

    #@c
    .line 830
    new-instance v1, Ljava/lang/StringBuilder;

    #@e
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@11
    const-string/jumbo v2, "setDataEnabled: sendMessage: enable="

    #@14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v1

    #@1c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f
    move-result-object v1

    #@20
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    #@23
    .line 831
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->sendMessage(Landroid/os/Message;)Z

    #@26
    .line 827
    return-void

    #@27
    .line 829
    :cond_0
    const/4 v1, 0x0

    #@28
    goto :goto_0
.end method

.method public setDataOnRoamingEnabled(Z)V
    .locals 5
    .param p1, "enabled"    # Z

    #@0
    .prologue
    .line 772
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    #@2
    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getSubId()I

    #@5
    move-result v0

    #@6
    .line 773
    .local v0, "phoneSubId":I
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->getDataOnRoamingEnabled()Z

    #@9
    move-result v2

    #@a
    if-eq v2, p1, :cond_2

    #@c
    .line 774
    if-eqz p1, :cond_0

    #@e
    const/4 v1, 0x1

    #@f
    .line 777
    .local v1, "roaming":I
    :goto_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    #@12
    move-result-object v2

    #@13
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimCount()I

    #@16
    move-result v2

    #@17
    const/4 v3, 0x1

    #@18
    if-ne v2, v3, :cond_1

    #@1a
    .line 778
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mResolver:Landroid/content/ContentResolver;

    #@1c
    const-string/jumbo v3, "data_roaming"

    #@1f
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    #@22
    .line 783
    :goto_1
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    #@24
    invoke-virtual {v2, v1, v0}, Landroid/telephony/SubscriptionManager;->setDataRoaming(II)I

    #@27
    .line 786
    new-instance v2, Ljava/lang/StringBuilder;

    #@29
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@2c
    const-string/jumbo v3, "setDataOnRoamingEnabled: set phoneSubId="

    #@2f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v2

    #@33
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@36
    move-result-object v2

    #@37
    .line 787
    const-string/jumbo v3, " isRoaming="

    #@3a
    .line 786
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v2

    #@3e
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@41
    move-result-object v2

    #@42
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@45
    move-result-object v2

    #@46
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    #@49
    .line 771
    .end local v1    # "roaming":I
    :goto_2
    return-void

    #@4a
    .line 774
    :cond_0
    const/4 v1, 0x0

    #@4b
    .restart local v1    # "roaming":I
    goto :goto_0

    #@4c
    .line 780
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mResolver:Landroid/content/ContentResolver;

    #@4e
    new-instance v3, Ljava/lang/StringBuilder;

    #@50
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@53
    const-string/jumbo v4, "data_roaming"

    #@56
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@59
    move-result-object v3

    #@5a
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@5d
    move-result-object v3

    #@5e
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@61
    move-result-object v3

    #@62
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    #@65
    goto :goto_1

    #@66
    .line 791
    .end local v1    # "roaming":I
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    #@68
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@6b
    const-string/jumbo v3, "setDataOnRoamingEnabled: unchanged phoneSubId="

    #@6e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@71
    move-result-object v2

    #@72
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@75
    move-result-object v2

    #@76
    .line 792
    const-string/jumbo v3, " isRoaming="

    #@79
    .line 791
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7c
    move-result-object v2

    #@7d
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@80
    move-result-object v2

    #@81
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@84
    move-result-object v2

    #@85
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    #@88
    goto :goto_2
.end method

.method protected setDataProfilesAsNeeded()V
    .locals 11

    #@0
    .prologue
    const/4 v10, 0x0

    #@1
    const/4 v9, 0x0

    #@2
    .line 1830
    const-string/jumbo v7, "setDataProfilesAsNeeded"

    #@5
    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    #@8
    .line 1831
    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mAllApnSettings:Ljava/util/ArrayList;

    #@a
    if-eqz v7, :cond_0

    #@c
    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mAllApnSettings:Ljava/util/ArrayList;

    #@e
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    #@11
    move-result v7

    #@12
    if-eqz v7, :cond_1

    #@14
    .line 1829
    :cond_0
    :goto_0
    return-void

    #@15
    .line 1832
    :cond_1
    new-instance v5, Ljava/util/ArrayList;

    #@17
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    #@1a
    .line 1833
    .local v5, "dps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/dataconnection/DataProfile;>;"
    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mAllApnSettings:Ljava/util/ArrayList;

    #@1c
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@1f
    move-result-object v1

    #@20
    .local v1, "apn$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@23
    move-result v7

    #@24
    if-eqz v7, :cond_5

    #@26
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@29
    move-result-object v0

    #@2a
    check-cast v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;

    #@2c
    .line 1834
    .local v0, "apn":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    iget-boolean v7, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->modemCognitive:Z

    #@2e
    if-eqz v7, :cond_2

    #@30
    .line 1835
    new-instance v2, Lcom/android/internal/telephony/dataconnection/DataProfile;

    #@32
    .line 1836
    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    #@34
    invoke-virtual {v7}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    #@37
    move-result-object v7

    #@38
    invoke-virtual {v7}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    #@3b
    move-result v7

    #@3c
    .line 1835
    invoke-direct {v2, v0, v7}, Lcom/android/internal/telephony/dataconnection/DataProfile;-><init>(Lcom/android/internal/telephony/dataconnection/ApnSetting;Z)V

    #@3f
    .line 1837
    .local v2, "dp":Lcom/android/internal/telephony/dataconnection/DataProfile;
    const/4 v6, 0x0

    #@40
    .line 1838
    .local v6, "isDup":Z
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@43
    move-result-object v4

    #@44
    .local v4, "dpIn$iterator":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    #@47
    move-result v7

    #@48
    if-eqz v7, :cond_4

    #@4a
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@4d
    move-result-object v3

    #@4e
    check-cast v3, Lcom/android/internal/telephony/dataconnection/DataProfile;

    #@50
    .line 1839
    .local v3, "dpIn":Lcom/android/internal/telephony/dataconnection/DataProfile;
    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/dataconnection/DataProfile;->equals(Ljava/lang/Object;)Z

    #@53
    move-result v7

    #@54
    if-eqz v7, :cond_3

    #@56
    .line 1840
    const/4 v6, 0x1

    #@57
    .line 1844
    .end local v3    # "dpIn":Lcom/android/internal/telephony/dataconnection/DataProfile;
    :cond_4
    if-nez v6, :cond_2

    #@59
    .line 1845
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@5c
    goto :goto_1

    #@5d
    .line 1849
    .end local v0    # "apn":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    .end local v2    # "dp":Lcom/android/internal/telephony/dataconnection/DataProfile;
    .end local v4    # "dpIn$iterator":Ljava/util/Iterator;
    .end local v6    # "isDup":Z
    :cond_5
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    #@60
    move-result v7

    #@61
    if-lez v7, :cond_0

    #@63
    .line 1850
    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    #@65
    iget-object v8, v7, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@67
    new-array v7, v9, [Lcom/android/internal/telephony/dataconnection/DataProfile;

    #@69
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@6c
    move-result-object v7

    #@6d
    check-cast v7, [Lcom/android/internal/telephony/dataconnection/DataProfile;

    #@6f
    invoke-interface {v8, v7, v10}, Lcom/android/internal/telephony/CommandsInterface;->setDataProfile([Lcom/android/internal/telephony/dataconnection/DataProfile;Landroid/os/Message;)V

    #@72
    goto :goto_0
.end method

.method protected setEnabled(IZ)V
    .locals 3
    .param p1, "id"    # I
    .param p2, "enable"    # Z

    #@0
    .prologue
    .line 1296
    new-instance v1, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v2, "setEnabled("

    #@8
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v1

    #@c
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@f
    move-result-object v1

    #@10
    const-string/jumbo v2, ", "

    #@13
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v1

    #@17
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v1

    #@1b
    const-string/jumbo v2, ") with old state = "

    #@1e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v1

    #@22
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataEnabled:[Z

    #@24
    aget-boolean v2, v2, p1

    #@26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@29
    move-result-object v1

    #@2a
    .line 1297
    const-string/jumbo v2, " and enabledCount = "

    #@2d
    .line 1296
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v1

    #@31
    .line 1297
    iget v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mEnabledCount:I

    #@33
    .line 1296
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@36
    move-result-object v1

    #@37
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3a
    move-result-object v1

    #@3b
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    #@3e
    .line 1299
    const v1, 0x4200d

    #@41
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->obtainMessage(I)Landroid/os/Message;

    #@44
    move-result-object v0

    #@45
    .line 1300
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    #@47
    .line 1301
    if-eqz p2, :cond_0

    #@49
    const/4 v1, 0x1

    #@4a
    :goto_0
    iput v1, v0, Landroid/os/Message;->arg2:I

    #@4c
    .line 1302
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->sendMessage(Landroid/os/Message;)Z

    #@4f
    .line 1294
    return-void

    #@50
    .line 1301
    :cond_0
    const/4 v1, 0x0

    #@51
    goto :goto_0
.end method

.method public abstract setImsRegistrationState(Z)V
.end method

.method protected setInitialAttachApn()V
    .locals 13

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 1769
    const/4 v11, 0x0

    #@2
    .line 1770
    .local v11, "iaApnSetting":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    const/4 v9, 0x0

    #@3
    .line 1771
    .local v9, "defaultApnSetting":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    const/4 v10, 0x0

    #@4
    .line 1773
    .local v10, "firstApnSetting":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    new-instance v0, Ljava/lang/StringBuilder;

    #@6
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@9
    const-string/jumbo v1, "setInitialApn: E mPreferredApn="

    #@c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v0

    #@10
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPreferredApn:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    #@12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v0

    #@16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@19
    move-result-object v0

    #@1a
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    #@1d
    .line 1775
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mAllApnSettings:Ljava/util/ArrayList;

    #@1f
    if-eqz v0, :cond_0

    #@21
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mAllApnSettings:Ljava/util/ArrayList;

    #@23
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    #@26
    move-result v0

    #@27
    if-eqz v0, :cond_2

    #@29
    .line 1803
    .end local v9    # "defaultApnSetting":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    .end local v10    # "firstApnSetting":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    .end local v11    # "iaApnSetting":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    :cond_0
    :goto_0
    const/4 v12, 0x0

    #@2a
    .line 1804
    .local v12, "initialAttachApnSetting":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    if-eqz v11, :cond_5

    #@2c
    .line 1805
    const-string/jumbo v0, "setInitialAttachApn: using iaApnSetting"

    #@2f
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    #@32
    .line 1806
    move-object v12, v11

    #@33
    .line 1818
    .end local v12    # "initialAttachApnSetting":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    :cond_1
    :goto_1
    if-nez v12, :cond_8

    #@35
    .line 1819
    const-string/jumbo v0, "setInitialAttachApn: X There in no available apn"

    #@38
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    #@3b
    .line 1768
    :goto_2
    return-void

    #@3c
    .line 1776
    .restart local v9    # "defaultApnSetting":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    .restart local v10    # "firstApnSetting":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    .restart local v11    # "iaApnSetting":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mAllApnSettings:Ljava/util/ArrayList;

    #@3e
    const/4 v1, 0x0

    #@3f
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@42
    move-result-object v10

    #@43
    .end local v10    # "firstApnSetting":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    check-cast v10, Lcom/android/internal/telephony/dataconnection/ApnSetting;

    #@45
    .line 1777
    .local v10, "firstApnSetting":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    new-instance v0, Ljava/lang/StringBuilder;

    #@47
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@4a
    const-string/jumbo v1, "setInitialApn: firstApnSetting="

    #@4d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@50
    move-result-object v0

    #@51
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@54
    move-result-object v0

    #@55
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@58
    move-result-object v0

    #@59
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    #@5c
    .line 1780
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mAllApnSettings:Ljava/util/ArrayList;

    #@5e
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@61
    move-result-object v8

    #@62
    .end local v9    # "defaultApnSetting":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    .local v8, "apn$iterator":Ljava/util/Iterator;
    :cond_3
    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    #@65
    move-result v0

    #@66
    if-eqz v0, :cond_0

    #@68
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@6b
    move-result-object v7

    #@6c
    check-cast v7, Lcom/android/internal/telephony/dataconnection/ApnSetting;

    #@6e
    .line 1782
    .local v7, "apn":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    iget-object v0, v7, Lcom/android/internal/telephony/dataconnection/ApnSetting;->types:[Ljava/lang/String;

    #@70
    const-string/jumbo v1, "ia"

    #@73
    invoke-static {v0, v1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    #@76
    move-result v0

    #@77
    if-eqz v0, :cond_4

    #@79
    .line 1783
    iget-boolean v0, v7, Lcom/android/internal/telephony/dataconnection/ApnSetting;->carrierEnabled:Z

    #@7b
    .line 1782
    if-eqz v0, :cond_4

    #@7d
    .line 1785
    new-instance v0, Ljava/lang/StringBuilder;

    #@7f
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@82
    const-string/jumbo v1, "setInitialApn: iaApnSetting="

    #@85
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@88
    move-result-object v0

    #@89
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@8c
    move-result-object v0

    #@8d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@90
    move-result-object v0

    #@91
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    #@94
    .line 1786
    move-object v11, v7

    #@95
    .line 1787
    .local v11, "iaApnSetting":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    goto :goto_0

    #@96
    .line 1788
    .local v11, "iaApnSetting":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    :cond_4
    if-nez v9, :cond_3

    #@98
    .line 1789
    const-string/jumbo v0, "default"

    #@9b
    invoke-virtual {v7, v0}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->canHandleType(Ljava/lang/String;)Z

    #@9e
    move-result v0

    #@9f
    .line 1788
    if-eqz v0, :cond_3

    #@a1
    .line 1791
    new-instance v0, Ljava/lang/StringBuilder;

    #@a3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@a6
    const-string/jumbo v1, "setInitialApn: defaultApnSetting="

    #@a9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ac
    move-result-object v0

    #@ad
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@b0
    move-result-object v0

    #@b1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b4
    move-result-object v0

    #@b5
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    #@b8
    .line 1792
    move-object v9, v7

    #@b9
    .local v9, "defaultApnSetting":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    goto :goto_3

    #@ba
    .line 1807
    .end local v7    # "apn":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    .end local v8    # "apn$iterator":Ljava/util/Iterator;
    .end local v9    # "defaultApnSetting":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    .end local v10    # "firstApnSetting":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    .end local v11    # "iaApnSetting":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    .restart local v12    # "initialAttachApnSetting":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    :cond_5
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPreferredApn:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    #@bc
    if-eqz v0, :cond_6

    #@be
    .line 1808
    const-string/jumbo v0, "setInitialAttachApn: using mPreferredApn"

    #@c1
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    #@c4
    .line 1809
    iget-object v12, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPreferredApn:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    #@c6
    .local v12, "initialAttachApnSetting":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    goto/16 :goto_1

    #@c8
    .line 1810
    .local v12, "initialAttachApnSetting":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    :cond_6
    if-eqz v9, :cond_7

    #@ca
    .line 1811
    const-string/jumbo v0, "setInitialAttachApn: using defaultApnSetting"

    #@cd
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    #@d0
    .line 1812
    move-object v12, v9

    #@d1
    .local v12, "initialAttachApnSetting":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    goto/16 :goto_1

    #@d3
    .line 1813
    .local v12, "initialAttachApnSetting":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    :cond_7
    if-eqz v10, :cond_1

    #@d5
    .line 1814
    const-string/jumbo v0, "setInitialAttachApn: using firstApnSetting"

    #@d8
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    #@db
    .line 1815
    move-object v12, v10

    #@dc
    .local v12, "initialAttachApnSetting":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    goto/16 :goto_1

    #@de
    .line 1821
    .end local v12    # "initialAttachApnSetting":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    #@e0
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@e3
    const-string/jumbo v1, "setInitialAttachApn: X selected Apn="

    #@e6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e9
    move-result-object v0

    #@ea
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@ed
    move-result-object v0

    #@ee
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@f1
    move-result-object v0

    #@f2
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    #@f5
    .line 1823
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    #@f7
    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@f9
    iget-object v1, v12, Lcom/android/internal/telephony/dataconnection/ApnSetting;->apn:Ljava/lang/String;

    #@fb
    .line 1824
    iget-object v2, v12, Lcom/android/internal/telephony/dataconnection/ApnSetting;->protocol:Ljava/lang/String;

    #@fd
    iget v3, v12, Lcom/android/internal/telephony/dataconnection/ApnSetting;->authType:I

    #@ff
    .line 1825
    iget-object v4, v12, Lcom/android/internal/telephony/dataconnection/ApnSetting;->user:Ljava/lang/String;

    #@101
    iget-object v5, v12, Lcom/android/internal/telephony/dataconnection/ApnSetting;->password:Ljava/lang/String;

    #@103
    .line 1823
    invoke-interface/range {v0 .. v6}, Lcom/android/internal/telephony/CommandsInterface;->setInitialAttachApn(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    #@106
    goto/16 :goto_2
.end method

.method public setInternalDataEnabled(Z)Z
    .locals 4
    .param p1, "enable"    # Z

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 1343
    new-instance v1, Ljava/lang/StringBuilder;

    #@3
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@6
    const-string/jumbo v3, "setInternalDataEnabled("

    #@9
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c
    move-result-object v1

    #@d
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@10
    move-result-object v1

    #@11
    const-string/jumbo v3, ")"

    #@14
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object v1

    #@1c
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    #@1f
    .line 1345
    const v1, 0x4201b

    #@22
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->obtainMessage(I)Landroid/os/Message;

    #@25
    move-result-object v0

    #@26
    .line 1346
    .local v0, "msg":Landroid/os/Message;
    if-eqz p1, :cond_0

    #@28
    move v1, v2

    #@29
    :goto_0
    iput v1, v0, Landroid/os/Message;->arg1:I

    #@2b
    .line 1347
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->sendMessage(Landroid/os/Message;)Z

    #@2e
    .line 1348
    return v2

    #@2f
    .line 1346
    :cond_0
    const/4 v1, 0x0

    #@30
    goto :goto_0
.end method

.method protected abstract setState(Lcom/android/internal/telephony/DctConstants$State;)V
.end method

.method protected startDataStallAlarm(Z)V
    .locals 8
    .param p1, "suspectedStall"    # Z

    #@0
    .prologue
    .line 1707
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->getRecoveryAction()I

    #@3
    move-result v2

    #@4
    .line 1710
    .local v2, "nextAction":I
    iget-boolean v3, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataStallDetectionEnabled:Z

    #@6
    if-eqz v3, :cond_1

    #@8
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->getOverallState()Lcom/android/internal/telephony/DctConstants$State;

    #@b
    move-result-object v3

    #@c
    sget-object v4, Lcom/android/internal/telephony/DctConstants$State;->CONNECTED:Lcom/android/internal/telephony/DctConstants$State;

    #@e
    if-ne v3, v4, :cond_1

    #@10
    .line 1713
    iget-boolean v3, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mIsScreenOn:Z

    #@12
    if-nez v3, :cond_0

    #@14
    if-nez p1, :cond_0

    #@16
    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$RecoveryAction;->-wrap0(I)Z

    #@19
    move-result v3

    #@1a
    if-eqz v3, :cond_2

    #@1c
    .line 1714
    :cond_0
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mResolver:Landroid/content/ContentResolver;

    #@1e
    .line 1715
    const-string/jumbo v4, "data_stall_alarm_aggressive_delay_in_ms"

    #@21
    .line 1716
    const v5, 0xea60

    #@24
    .line 1714
    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    #@27
    move-result v0

    #@28
    .line 1723
    .local v0, "delayInMs":I
    :goto_0
    iget v3, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataStallAlarmTag:I

    #@2a
    add-int/lit8 v3, v3, 0x1

    #@2c
    iput v3, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataStallAlarmTag:I

    #@2e
    .line 1728
    new-instance v1, Landroid/content/Intent;

    #@30
    const-string/jumbo v3, "com.android.internal.telephony.data-stall"

    #@33
    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@36
    .line 1729
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v3, "data.stall.alram.tag"

    #@39
    iget v4, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataStallAlarmTag:I

    #@3b
    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@3e
    .line 1730
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    #@40
    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    #@43
    move-result-object v3

    #@44
    const/4 v4, 0x0

    #@45
    .line 1731
    const/high16 v5, 0x8000000

    #@47
    .line 1730
    invoke-static {v3, v4, v1, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    #@4a
    move-result-object v3

    #@4b
    iput-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataStallAlarmIntent:Landroid/app/PendingIntent;

    #@4d
    .line 1732
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mAlarmManager:Landroid/app/AlarmManager;

    #@4f
    .line 1733
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@52
    move-result-wide v4

    #@53
    int-to-long v6, v0

    #@54
    add-long/2addr v4, v6

    #@55
    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataStallAlarmIntent:Landroid/app/PendingIntent;

    #@57
    .line 1732
    const/4 v7, 0x2

    #@58
    invoke-virtual {v3, v7, v4, v5, v6}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    #@5b
    .line 1706
    .end local v0    # "delayInMs":I
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_1
    return-void

    #@5c
    .line 1718
    :cond_2
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mResolver:Landroid/content/ContentResolver;

    #@5e
    .line 1719
    const-string/jumbo v4, "data_stall_alarm_non_aggressive_delay_in_ms"

    #@61
    .line 1720
    const v5, 0x57e40

    #@64
    .line 1718
    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    #@67
    move-result v0

    #@68
    .restart local v0    # "delayInMs":I
    goto :goto_0
.end method

.method startNetStatPoll()V
    .locals 2

    #@0
    .prologue
    .line 1452
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->getOverallState()Lcom/android/internal/telephony/DctConstants$State;

    #@3
    move-result-object v0

    #@4
    sget-object v1, Lcom/android/internal/telephony/DctConstants$State;->CONNECTED:Lcom/android/internal/telephony/DctConstants$State;

    #@6
    if-ne v0, v1, :cond_0

    #@8
    .line 1453
    iget-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mNetStatPollEnabled:Z

    #@a
    if-nez v0, :cond_0

    #@c
    .line 1455
    const-string/jumbo v0, "startNetStatPoll"

    #@f
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    #@12
    .line 1457
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->resetPollStats()V

    #@15
    .line 1458
    const/4 v0, 0x1

    #@16
    iput-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mNetStatPollEnabled:Z

    #@18
    .line 1459
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPollNetStat:Ljava/lang/Runnable;

    #@1a
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    #@1d
    .line 1461
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    #@1f
    if-eqz v0, :cond_1

    #@21
    .line 1462
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    #@23
    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->notifyDataActivity()V

    #@26
    .line 1451
    :cond_1
    return-void
.end method

.method protected startProvisioningApnAlarm()V
    .locals 10

    #@0
    .prologue
    .line 1864
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mResolver:Landroid/content/ContentResolver;

    #@2
    .line 1865
    const-string/jumbo v5, "provisioning_apn_alarm_delay_in_ms"

    #@5
    .line 1866
    const v6, 0xdbba0

    #@8
    .line 1864
    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    #@b
    move-result v0

    #@c
    .line 1867
    .local v0, "delayInMs":I
    sget-boolean v4, Landroid/os/Build;->IS_DEBUGGABLE:Z

    #@e
    if-eqz v4, :cond_0

    #@10
    .line 1869
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@13
    move-result-object v1

    #@14
    .line 1870
    .local v1, "delayInMsStrg":Ljava/lang/String;
    const-string/jumbo v4, "persist.debug.prov_apn_alarm"

    #@17
    invoke-static {v4, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@1a
    move-result-object v1

    #@1b
    .line 1872
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@1e
    move-result v0

    #@1f
    .line 1877
    .end local v1    # "delayInMsStrg":Ljava/lang/String;
    :cond_0
    :goto_0
    iget v4, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mProvisioningApnAlarmTag:I

    #@21
    add-int/lit8 v4, v4, 0x1

    #@23
    iput v4, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mProvisioningApnAlarmTag:I

    #@25
    .line 1879
    new-instance v4, Ljava/lang/StringBuilder;

    #@27
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@2a
    const-string/jumbo v5, "startProvisioningApnAlarm: tag="

    #@2d
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v4

    #@31
    iget v5, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mProvisioningApnAlarmTag:I

    #@33
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@36
    move-result-object v4

    #@37
    .line 1880
    const-string/jumbo v5, " delay="

    #@3a
    .line 1879
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v4

    #@3e
    .line 1880
    div-int/lit16 v5, v0, 0x3e8

    #@40
    .line 1879
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@43
    move-result-object v4

    #@44
    .line 1880
    const-string/jumbo v5, "s"

    #@47
    .line 1879
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v4

    #@4b
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4e
    move-result-object v4

    #@4f
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    #@52
    .line 1882
    new-instance v3, Landroid/content/Intent;

    #@54
    const-string/jumbo v4, "com.android.internal.telephony.provisioning_apn_alarm"

    #@57
    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@5a
    .line 1883
    .local v3, "intent":Landroid/content/Intent;
    const-string/jumbo v4, "provisioning.apn.alarm.tag"

    #@5d
    iget v5, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mProvisioningApnAlarmTag:I

    #@5f
    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@62
    .line 1884
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    #@64
    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    #@67
    move-result-object v4

    #@68
    const/4 v5, 0x0

    #@69
    .line 1885
    const/high16 v6, 0x8000000

    #@6b
    .line 1884
    invoke-static {v4, v5, v3, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    #@6e
    move-result-object v4

    #@6f
    iput-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mProvisioningApnAlarmIntent:Landroid/app/PendingIntent;

    #@71
    .line 1886
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mAlarmManager:Landroid/app/AlarmManager;

    #@73
    .line 1887
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@76
    move-result-wide v6

    #@77
    int-to-long v8, v0

    #@78
    add-long/2addr v6, v8

    #@79
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mProvisioningApnAlarmIntent:Landroid/app/PendingIntent;

    #@7b
    .line 1886
    const/4 v8, 0x2

    #@7c
    invoke-virtual {v4, v8, v6, v7, v5}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    #@7f
    .line 1863
    return-void

    #@80
    .line 1873
    .end local v3    # "intent":Landroid/content/Intent;
    .restart local v1    # "delayInMsStrg":Ljava/lang/String;
    :catch_0
    move-exception v2

    #@81
    .line 1874
    .local v2, "e":Ljava/lang/NumberFormatException;
    new-instance v4, Ljava/lang/StringBuilder;

    #@83
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@86
    const-string/jumbo v5, "startProvisioningApnAlarm: e="

    #@89
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8c
    move-result-object v4

    #@8d
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@90
    move-result-object v4

    #@91
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@94
    move-result-object v4

    #@95
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->loge(Ljava/lang/String;)V

    #@98
    goto :goto_0
.end method

.method protected stopDataStallAlarm()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1746
    iget v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataStallAlarmTag:I

    #@3
    add-int/lit8 v0, v0, 0x1

    #@5
    iput v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataStallAlarmTag:I

    #@7
    .line 1747
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataStallAlarmIntent:Landroid/app/PendingIntent;

    #@9
    if-eqz v0, :cond_0

    #@b
    .line 1748
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mAlarmManager:Landroid/app/AlarmManager;

    #@d
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataStallAlarmIntent:Landroid/app/PendingIntent;

    #@f
    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    #@12
    .line 1749
    iput-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataStallAlarmIntent:Landroid/app/PendingIntent;

    #@14
    .line 1741
    :cond_0
    return-void
.end method

.method stopNetStatPoll()V
    .locals 1

    #@0
    .prologue
    .line 1467
    const/4 v0, 0x0

    #@1
    iput-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mNetStatPollEnabled:Z

    #@3
    .line 1468
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPollNetStat:Ljava/lang/Runnable;

    #@5
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->removeCallbacks(Ljava/lang/Runnable;)V

    #@8
    .line 1470
    const-string/jumbo v0, "stopNetStatPoll"

    #@b
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    #@e
    .line 1474
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    #@10
    if-eqz v0, :cond_0

    #@12
    .line 1475
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    #@14
    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->notifyDataActivity()V

    #@17
    .line 1466
    :cond_0
    return-void
.end method

.method protected stopProvisioningApnAlarm()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1892
    new-instance v0, Ljava/lang/StringBuilder;

    #@3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@6
    const-string/jumbo v1, "stopProvisioningApnAlarm: current tag="

    #@9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c
    move-result-object v0

    #@d
    iget v1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mProvisioningApnAlarmTag:I

    #@f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@12
    move-result-object v0

    #@13
    .line 1893
    const-string/jumbo v1, " mProvsioningApnAlarmIntent="

    #@16
    .line 1892
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v0

    #@1a
    .line 1893
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mProvisioningApnAlarmIntent:Landroid/app/PendingIntent;

    #@1c
    .line 1892
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v0

    #@20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@23
    move-result-object v0

    #@24
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    #@27
    .line 1895
    iget v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mProvisioningApnAlarmTag:I

    #@29
    add-int/lit8 v0, v0, 0x1

    #@2b
    iput v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mProvisioningApnAlarmTag:I

    #@2d
    .line 1896
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mProvisioningApnAlarmIntent:Landroid/app/PendingIntent;

    #@2f
    if-eqz v0, :cond_0

    #@31
    .line 1897
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mAlarmManager:Landroid/app/AlarmManager;

    #@33
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mProvisioningApnAlarmIntent:Landroid/app/PendingIntent;

    #@35
    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    #@38
    .line 1898
    iput-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mProvisioningApnAlarmIntent:Landroid/app/PendingIntent;

    #@3a
    .line 1890
    :cond_0
    return-void
.end method

.method public updateDataActivity()V
    .locals 14

    #@0
    .prologue
    const-wide/16 v12, 0x0

    #@2
    .line 1510
    new-instance v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$TxRxSum;

    #@4
    iget-wide v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mTxPkts:J

    #@6
    iget-wide v4, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mRxPkts:J

    #@8
    move-object v1, p0

    #@9
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$TxRxSum;-><init>(Lcom/android/internal/telephony/dataconnection/DcTrackerBase;JJ)V

    #@c
    .line 1511
    .local v0, "preTxRxSum":Lcom/android/internal/telephony/dataconnection/DcTrackerBase$TxRxSum;
    new-instance v6, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$TxRxSum;

    #@e
    invoke-direct {v6, p0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$TxRxSum;-><init>(Lcom/android/internal/telephony/dataconnection/DcTrackerBase;)V

    #@11
    .line 1512
    .local v6, "curTxRxSum":Lcom/android/internal/telephony/dataconnection/DcTrackerBase$TxRxSum;
    invoke-virtual {v6}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$TxRxSum;->updateTxRxSum()V

    #@14
    .line 1513
    iget-wide v2, v6, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$TxRxSum;->txPkts:J

    #@16
    iput-wide v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mTxPkts:J

    #@18
    .line 1514
    iget-wide v2, v6, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$TxRxSum;->rxPkts:J

    #@1a
    iput-wide v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mRxPkts:J

    #@1c
    .line 1520
    iget-boolean v1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mNetStatPollEnabled:Z

    #@1e
    if-eqz v1, :cond_1

    #@20
    iget-wide v2, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$TxRxSum;->txPkts:J

    #@22
    cmp-long v1, v2, v12

    #@24
    if-gtz v1, :cond_0

    #@26
    iget-wide v2, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$TxRxSum;->rxPkts:J

    #@28
    cmp-long v1, v2, v12

    #@2a
    if-lez v1, :cond_1

    #@2c
    .line 1521
    :cond_0
    iget-wide v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mTxPkts:J

    #@2e
    iget-wide v4, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$TxRxSum;->txPkts:J

    #@30
    sub-long v10, v2, v4

    #@32
    .line 1522
    .local v10, "sent":J
    iget-wide v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mRxPkts:J

    #@34
    iget-wide v4, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$TxRxSum;->rxPkts:J

    #@36
    sub-long v8, v2, v4

    #@38
    .line 1526
    .local v8, "received":J
    cmp-long v1, v10, v12

    #@3a
    if-lez v1, :cond_2

    #@3c
    cmp-long v1, v8, v12

    #@3e
    if-lez v1, :cond_2

    #@40
    .line 1527
    sget-object v7, Lcom/android/internal/telephony/DctConstants$Activity;->DATAINANDOUT:Lcom/android/internal/telephony/DctConstants$Activity;

    #@42
    .line 1537
    .local v7, "newActivity":Lcom/android/internal/telephony/DctConstants$Activity;
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mActivity:Lcom/android/internal/telephony/DctConstants$Activity;

    #@44
    if-eq v1, v7, :cond_1

    #@46
    iget-boolean v1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mIsScreenOn:Z

    #@48
    if-eqz v1, :cond_1

    #@4a
    .line 1540
    iput-object v7, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mActivity:Lcom/android/internal/telephony/DctConstants$Activity;

    #@4c
    .line 1541
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    #@4e
    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->notifyDataActivity()V

    #@51
    .line 1505
    .end local v7    # "newActivity":Lcom/android/internal/telephony/DctConstants$Activity;
    .end local v8    # "received":J
    .end local v10    # "sent":J
    :cond_1
    return-void

    #@52
    .line 1528
    .restart local v8    # "received":J
    .restart local v10    # "sent":J
    :cond_2
    cmp-long v1, v10, v12

    #@54
    if-lez v1, :cond_3

    #@56
    cmp-long v1, v8, v12

    #@58
    if-nez v1, :cond_3

    #@5a
    .line 1529
    sget-object v7, Lcom/android/internal/telephony/DctConstants$Activity;->DATAOUT:Lcom/android/internal/telephony/DctConstants$Activity;

    #@5c
    .restart local v7    # "newActivity":Lcom/android/internal/telephony/DctConstants$Activity;
    goto :goto_0

    #@5d
    .line 1530
    .end local v7    # "newActivity":Lcom/android/internal/telephony/DctConstants$Activity;
    :cond_3
    cmp-long v1, v10, v12

    #@5f
    if-nez v1, :cond_4

    #@61
    cmp-long v1, v8, v12

    #@63
    if-lez v1, :cond_4

    #@65
    .line 1531
    sget-object v7, Lcom/android/internal/telephony/DctConstants$Activity;->DATAIN:Lcom/android/internal/telephony/DctConstants$Activity;

    #@67
    .restart local v7    # "newActivity":Lcom/android/internal/telephony/DctConstants$Activity;
    goto :goto_0

    #@68
    .line 1533
    .end local v7    # "newActivity":Lcom/android/internal/telephony/DctConstants$Activity;
    :cond_4
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mActivity:Lcom/android/internal/telephony/DctConstants$Activity;

    #@6a
    sget-object v2, Lcom/android/internal/telephony/DctConstants$Activity;->DORMANT:Lcom/android/internal/telephony/DctConstants$Activity;

    #@6c
    if-ne v1, v2, :cond_5

    #@6e
    .line 1534
    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mActivity:Lcom/android/internal/telephony/DctConstants$Activity;

    #@70
    .restart local v7    # "newActivity":Lcom/android/internal/telephony/DctConstants$Activity;
    goto :goto_0

    #@71
    .end local v7    # "newActivity":Lcom/android/internal/telephony/DctConstants$Activity;
    :cond_5
    sget-object v7, Lcom/android/internal/telephony/DctConstants$Activity;->NONE:Lcom/android/internal/telephony/DctConstants$Activity;

    #@73
    .restart local v7    # "newActivity":Lcom/android/internal/telephony/DctConstants$Activity;
    goto :goto_0
.end method

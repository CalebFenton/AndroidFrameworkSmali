.class public Lcom/android/internal/telephony/dataconnection/DcTracker;
.super Landroid/os/Handler;
.source "DcTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/dataconnection/DcTracker$1;,
        Lcom/android/internal/telephony/dataconnection/DcTracker$2;,
        Lcom/android/internal/telephony/dataconnection/DcTracker$3;,
        Lcom/android/internal/telephony/dataconnection/DcTracker$4;,
        Lcom/android/internal/telephony/dataconnection/DcTracker$ApnChangeObserver;,
        Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReason;,
        Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReasonType;,
        Lcom/android/internal/telephony/dataconnection/DcTracker$ProvisionNotificationBroadcastReceiver;,
        Lcom/android/internal/telephony/dataconnection/DcTracker$RecoveryAction;,
        Lcom/android/internal/telephony/dataconnection/DcTracker$RetryFailures;,
        Lcom/android/internal/telephony/dataconnection/DcTracker$SettingsObserver;,
        Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxSum;
    }
.end annotation


# static fields
.field private static final synthetic -com-android-internal-telephony-DctConstants$StateSwitchesValues:[I = null

.field static final APN_ID:Ljava/lang/String; = "apn_id"

.field private static final DATA_STALL_ALARM_AGGRESSIVE_DELAY_IN_MS_DEFAULT:I = 0xea60

.field private static final DATA_STALL_ALARM_NON_AGGRESSIVE_DELAY_IN_MS_DEFAULT:I = 0x57e40

.field private static final DATA_STALL_ALARM_TAG_EXTRA:Ljava/lang/String; = "data.stall.alram.tag"

.field private static final DATA_STALL_NOT_SUSPECTED:Z = false

.field private static final DATA_STALL_SUSPECTED:Z = true

.field private static final DBG:Z = true

.field private static final DEBUG_PROV_APN_ALARM:Ljava/lang/String; = "persist.debug.prov_apn_alarm"

.field private static final INTENT_DATA_STALL_ALARM:Ljava/lang/String; = "com.android.internal.telephony.data-stall"

.field private static final INTENT_PROVISIONING_APN_ALARM:Ljava/lang/String; = "com.android.internal.telephony.provisioning_apn_alarm"

.field private static final INTENT_RECONNECT_ALARM:Ljava/lang/String; = "com.android.internal.telephony.data-reconnect"

.field private static final INTENT_RECONNECT_ALARM_EXTRA_REASON:Ljava/lang/String; = "reconnect_alarm_extra_reason"

.field private static final INTENT_RECONNECT_ALARM_EXTRA_TYPE:Ljava/lang/String; = "reconnect_alarm_extra_type"

.field private static final LOG_TAG:Ljava/lang/String; = "DCT"

.field private static final NUMBER_SENT_PACKETS_OF_HANG:I = 0xa

.field private static final POLL_NETSTAT_MILLIS:I = 0x3e8

.field private static final POLL_NETSTAT_SCREEN_OFF_MILLIS:I = 0x927c0

.field private static final POLL_PDP_MILLIS:I = 0x1388

.field static final PREFERAPN_NO_UPDATE_URI_USING_SUBID:Landroid/net/Uri;

.field private static final PROVISIONING_APN_ALARM_DELAY_IN_MS_DEFAULT:I = 0xdbba0

.field private static final PROVISIONING_APN_ALARM_TAG_EXTRA:Ljava/lang/String; = "provisioning.apn.alarm.tag"

.field private static final PROVISIONING_SPINNER_TIMEOUT_MILLIS:I = 0x1d4c0

.field private static final PUPPET_MASTER_RADIO_STRESS_TEST:Ljava/lang/String; = "gsm.defaultpdpcontext.active"

.field private static final RADIO_TESTS:Z

.field private static final VDBG:Z

.field private static final VDBG_STALL:Z

.field private static sEnableFailFastRefCounter:I


# instance fields
.field private RADIO_RESET_PROPERTY:Ljava/lang/String;

.field public isCleanupRequired:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mActivity:Lcom/android/internal/telephony/DctConstants$Activity;

.field private final mAlarmManager:Landroid/app/AlarmManager;

.field private mAllApnSettings:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/dataconnection/ApnSetting;",
            ">;"
        }
    .end annotation
.end field

.field private mAllDataDisconnectedRegistrants:Landroid/os/RegistrantList;

.field private final mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;
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

.field private final mApnContextsById:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/internal/telephony/dataconnection/ApnContext;",
            ">;"
        }
    .end annotation
.end field

.field private mApnObserver:Lcom/android/internal/telephony/dataconnection/DcTracker$ApnChangeObserver;

.field private mApnToDataConnectionId:Ljava/util/HashMap;
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

.field private mAttached:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mAutoAttachOnCreation:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mAutoAttachOnCreationConfig:Z

.field private mCanSetPreferApn:Z

.field private final mCm:Landroid/net/ConnectivityManager;

.field private mDataConnectionAcHashMap:Ljava/util/HashMap;
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

.field private final mDataConnectionTracker:Landroid/os/Handler;

.field private mDataConnections:Ljava/util/HashMap;
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

.field private final mDataEnabledSettings:Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;

.field private mDataStallAlarmIntent:Landroid/app/PendingIntent;

.field private mDataStallAlarmTag:I

.field private volatile mDataStallDetectionEnabled:Z

.field private mDataStallTxRxSum:Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxSum;

.field private mDcTesterFailBringUpAll:Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;

.field private mDcc:Lcom/android/internal/telephony/dataconnection/DcController;

.field private mDisconnectAllCompleteMsgList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field

.field private mDisconnectPendingCount:I

.field private mEmergencyApn:Lcom/android/internal/telephony/dataconnection/ApnSetting;

.field private volatile mFailFast:Z

.field private final mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/android/internal/telephony/uicc/IccRecords;",
            ">;"
        }
    .end annotation
.end field

.field public mImsRegistrationState:Z

.field private mInVoiceCall:Z

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mIsDisposed:Z

.field private mIsProvisioning:Z

.field private mIsPsRestricted:Z

.field private mIsScreenOn:Z

.field private mIsWifiConnected:Z

.field private mMeteredApnDisabled:Z

.field private mMvnoMatched:Z

.field private mNetStatPollEnabled:Z

.field private mNetStatPollPeriod:I

.field private mNoRecvPollCount:I

.field private final mOnSubscriptionsChangedListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

.field private final mPhone:Lcom/android/internal/telephony/Phone;

.field private final mPollNetStat:Ljava/lang/Runnable;

.field private mPreferredApn:Lcom/android/internal/telephony/dataconnection/ApnSetting;

.field private final mPrioritySortedApnContexts:Ljava/util/PriorityQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/PriorityQueue",
            "<",
            "Lcom/android/internal/telephony/dataconnection/ApnContext;",
            ">;"
        }
    .end annotation
.end field

.field private final mProvisionActionName:Ljava/lang/String;

.field private mProvisionBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mProvisioningApnAlarmIntent:Landroid/app/PendingIntent;

.field private mProvisioningApnAlarmTag:I

.field private mProvisioningSpinner:Landroid/app/ProgressDialog;

.field private mProvisioningUrl:Ljava/lang/String;

.field private mReconnectIntent:Landroid/app/PendingIntent;

.field private mReplyAc:Lcom/android/internal/util/AsyncChannel;

.field private mRequestedApnType:Ljava/lang/String;

.field private mReregisterOnReconnectFailure:Z

.field private mResolver:Landroid/content/ContentResolver;

.field private mRxPkts:J

.field private mSentSinceLastRecv:J

.field private final mSettingsObserver:Lcom/android/internal/telephony/dataconnection/DcTracker$SettingsObserver;

.field private mState:Lcom/android/internal/telephony/DctConstants$State;

.field private mSubscriptionManager:Landroid/telephony/SubscriptionManager;

.field private mTxPkts:J

.field private final mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

.field private mUniqueIdGenerator:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static synthetic -get0(Lcom/android/internal/telephony/dataconnection/DcTracker;)Landroid/os/Handler;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDataConnectionTracker:Landroid/os/Handler;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Lcom/android/internal/telephony/dataconnection/DcTracker;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mIsScreenOn:Z

    #@2
    return v0
.end method

.method static synthetic -get2(Lcom/android/internal/telephony/dataconnection/DcTracker;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mIsWifiConnected:Z

    #@2
    return v0
.end method

.method static synthetic -get3(Lcom/android/internal/telephony/dataconnection/DcTracker;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mNetStatPollEnabled:Z

    #@2
    return v0
.end method

.method static synthetic -get4(Lcom/android/internal/telephony/dataconnection/DcTracker;)I
    .locals 1

    #@0
    iget v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mNetStatPollPeriod:I

    #@2
    return v0
.end method

.method static synthetic -get5(Lcom/android/internal/telephony/dataconnection/DcTracker;)Lcom/android/internal/telephony/Phone;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    #@2
    return-object v0
.end method

.method static synthetic -get6(Lcom/android/internal/telephony/dataconnection/DcTracker;)Landroid/app/ProgressDialog;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mProvisioningSpinner:Landroid/app/ProgressDialog;

    #@2
    return-object v0
.end method

.method static synthetic -get7(Lcom/android/internal/telephony/dataconnection/DcTracker;)Landroid/content/ContentResolver;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mResolver:Landroid/content/ContentResolver;

    #@2
    return-object v0
.end method

.method static synthetic -get8(Lcom/android/internal/telephony/dataconnection/DcTracker;)Lcom/android/internal/telephony/DctConstants$State;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mState:Lcom/android/internal/telephony/DctConstants$State;

    #@2
    return-object v0
.end method

.method private static synthetic -getcom-android-internal-telephony-DctConstants$StateSwitchesValues()[I
    .locals 3

    #@0
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->-com-android-internal-telephony-DctConstants$StateSwitchesValues:[I

    #@2
    if-eqz v0, :cond_0

    #@4
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->-com-android-internal-telephony-DctConstants$StateSwitchesValues:[I

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
    const/4 v2, 0x4

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
    const/4 v2, 0x5

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
    const/4 v2, 0x6

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
    const/4 v2, 0x7

    #@4b
    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_0

    #@4d
    :goto_6
    sput-object v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->-com-android-internal-telephony-DctConstants$StateSwitchesValues:[I

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

.method static synthetic -set0(Lcom/android/internal/telephony/dataconnection/DcTracker;Z)Z
    .locals 0

    #@0
    iput-boolean p1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mIsScreenOn:Z

    #@2
    return p1
.end method

.method static synthetic -set1(Lcom/android/internal/telephony/dataconnection/DcTracker;Z)Z
    .locals 0

    #@0
    iput-boolean p1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mIsWifiConnected:Z

    #@2
    return p1
.end method

.method static synthetic -set2(Lcom/android/internal/telephony/dataconnection/DcTracker;I)I
    .locals 0

    #@0
    iput p1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mNetStatPollPeriod:I

    #@2
    return p1
.end method

.method static synthetic -set3(Lcom/android/internal/telephony/dataconnection/DcTracker;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0

    #@0
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mProvisioningSpinner:Landroid/app/ProgressDialog;

    #@2
    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/internal/telephony/dataconnection/DcTracker;Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@3
    return-void
.end method

.method static synthetic -wrap1(Lcom/android/internal/telephony/dataconnection/DcTracker;Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->onActionIntentDataStallAlarm(Landroid/content/Intent;)V

    #@3
    return-void
.end method

.method static synthetic -wrap10(Lcom/android/internal/telephony/dataconnection/DcTracker;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->updateDataActivity()V

    #@3
    return-void
.end method

.method static synthetic -wrap2(Lcom/android/internal/telephony/dataconnection/DcTracker;Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->onActionIntentProvisioningApnAlarm(Landroid/content/Intent;)V

    #@3
    return-void
.end method

.method static synthetic -wrap3(Lcom/android/internal/telephony/dataconnection/DcTracker;Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->onActionIntentReconnectAlarm(Landroid/content/Intent;)V

    #@3
    return-void
.end method

.method static synthetic -wrap4(Lcom/android/internal/telephony/dataconnection/DcTracker;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->onRecordsLoadedOrSubIdChanged()V

    #@3
    return-void
.end method

.method static synthetic -wrap5(Lcom/android/internal/telephony/dataconnection/DcTracker;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->registerSettingsObserver()V

    #@3
    return-void
.end method

.method static synthetic -wrap6(Lcom/android/internal/telephony/dataconnection/DcTracker;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->restartDataStallAlarm()V

    #@3
    return-void
.end method

.method static synthetic -wrap7(Lcom/android/internal/telephony/dataconnection/DcTracker;Z)V
    .locals 0
    .param p1, "on"    # Z

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->setRadio(Z)V

    #@3
    return-void
.end method

.method static synthetic -wrap8(Lcom/android/internal/telephony/dataconnection/DcTracker;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->startNetStatPoll()V

    #@3
    return-void
.end method

.method static synthetic -wrap9(Lcom/android/internal/telephony/dataconnection/DcTracker;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->stopNetStatPoll()V

    #@3
    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 559
    const/4 v0, 0x0

    #@1
    sput v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->sEnableFailFastRefCounter:I

    #@3
    .line 643
    const-string/jumbo v0, "content://telephony/carriers/preferapn_no_update/subId/"

    #@6
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    #@9
    move-result-object v0

    #@a
    .line 642
    sput-object v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->PREFERAPN_NO_UPDATE_URI_USING_SUBID:Landroid/net/Uri;

    #@c
    .line 111
    return-void
.end method

.method public constructor <init>()V
    .locals 8

    #@0
    .prologue
    const-wide/16 v6, 0x0

    #@2
    const/4 v5, 0x1

    #@3
    const/4 v4, 0x0

    #@4
    const/4 v3, 0x0

    #@5
    .line 727
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    #@8
    .line 118
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    #@a
    invoke-direct {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    #@d
    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->isCleanupRequired:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@f
    .line 123
    const-string/jumbo v0, "default"

    #@12
    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mRequestedApnType:Ljava/lang/String;

    #@14
    .line 126
    new-instance v0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;

    #@16
    invoke-direct {v0}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;-><init>()V

    #@19
    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDataEnabledSettings:Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;

    #@1b
    .line 150
    const-string/jumbo v0, "gsm.radioreset"

    #@1e
    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->RADIO_RESET_PROPERTY:Ljava/lang/String;

    #@20
    .line 218
    new-instance v0, Ljava/util/PriorityQueue;

    #@22
    .line 219
    new-instance v1, Lcom/android/internal/telephony/dataconnection/DcTracker$1;

    #@24
    invoke-direct {v1, p0}, Lcom/android/internal/telephony/dataconnection/DcTracker$1;-><init>(Lcom/android/internal/telephony/dataconnection/DcTracker;)V

    #@27
    .line 218
    const/4 v2, 0x5

    #@28
    invoke-direct {v0, v2, v1}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    #@2b
    .line 217
    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPrioritySortedApnContexts:Ljava/util/PriorityQueue;

    #@2d
    .line 226
    iput-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAllApnSettings:Ljava/util/ArrayList;

    #@2f
    .line 229
    iput-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPreferredApn:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    #@31
    .line 232
    iput-boolean v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mIsPsRestricted:Z

    #@33
    .line 235
    iput-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mEmergencyApn:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    #@35
    .line 238
    iput-boolean v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mIsDisposed:Z

    #@37
    .line 243
    iput-boolean v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mIsProvisioning:Z

    #@39
    .line 246
    iput-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mProvisioningUrl:Ljava/lang/String;

    #@3b
    .line 262
    iput-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mProvisioningApnAlarmIntent:Landroid/app/PendingIntent;

    #@3d
    .line 265
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@40
    move-result-wide v0

    #@41
    long-to-int v0, v0

    #@42
    iput v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mProvisioningApnAlarmTag:I

    #@44
    .line 267
    new-instance v0, Lcom/android/internal/util/AsyncChannel;

    #@46
    invoke-direct {v0}, Lcom/android/internal/util/AsyncChannel;-><init>()V

    #@49
    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mReplyAc:Lcom/android/internal/util/AsyncChannel;

    #@4b
    .line 269
    new-instance v0, Lcom/android/internal/telephony/dataconnection/DcTracker$2;

    #@4d
    invoke-direct {v0, p0}, Lcom/android/internal/telephony/dataconnection/DcTracker$2;-><init>(Lcom/android/internal/telephony/dataconnection/DcTracker;)V

    #@50
    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    #@52
    .line 319
    new-instance v0, Lcom/android/internal/telephony/dataconnection/DcTracker$3;

    #@54
    invoke-direct {v0, p0}, Lcom/android/internal/telephony/dataconnection/DcTracker$3;-><init>(Lcom/android/internal/telephony/dataconnection/DcTracker;)V

    #@57
    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPollNetStat:Ljava/lang/Runnable;

    #@59
    .line 341
    new-instance v0, Lcom/android/internal/telephony/dataconnection/DcTracker$4;

    #@5b
    invoke-direct {v0, p0}, Lcom/android/internal/telephony/dataconnection/DcTracker$4;-><init>(Lcom/android/internal/telephony/dataconnection/DcTracker;)V

    #@5e
    .line 340
    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mOnSubscriptionsChangedListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    #@60
    .line 532
    new-instance v0, Ljava/util/ArrayList;

    #@62
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@65
    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDisconnectAllCompleteMsgList:Ljava/util/ArrayList;

    #@67
    .line 534
    new-instance v0, Landroid/os/RegistrantList;

    #@69
    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    #@6c
    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAllDataDisconnectedRegistrants:Landroid/os/RegistrantList;

    #@6e
    .line 539
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    #@70
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    #@73
    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    #@75
    .line 540
    sget-object v0, Lcom/android/internal/telephony/DctConstants$Activity;->NONE:Lcom/android/internal/telephony/DctConstants$Activity;

    #@77
    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mActivity:Lcom/android/internal/telephony/DctConstants$Activity;

    #@79
    .line 541
    sget-object v0, Lcom/android/internal/telephony/DctConstants$State;->IDLE:Lcom/android/internal/telephony/DctConstants$State;

    #@7b
    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mState:Lcom/android/internal/telephony/DctConstants$State;

    #@7d
    .line 547
    iput-boolean v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mNetStatPollEnabled:Z

    #@7f
    .line 549
    new-instance v0, Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxSum;

    #@81
    invoke-direct {v0, v6, v7, v6, v7}, Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxSum;-><init>(JJ)V

    #@84
    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDataStallTxRxSum:Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxSum;

    #@86
    .line 551
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@89
    move-result-wide v0

    #@8a
    long-to-int v0, v0

    #@8b
    iput v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDataStallAlarmTag:I

    #@8d
    .line 553
    iput-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDataStallAlarmIntent:Landroid/app/PendingIntent;

    #@8f
    .line 557
    iput v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mNoRecvPollCount:I

    #@91
    .line 561
    iput-boolean v5, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDataStallDetectionEnabled:Z

    #@93
    .line 563
    iput-boolean v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mFailFast:Z

    #@95
    .line 566
    iput-boolean v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mInVoiceCall:Z

    #@97
    .line 569
    iput-boolean v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mIsWifiConnected:Z

    #@99
    .line 572
    iput-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mReconnectIntent:Landroid/app/PendingIntent;

    #@9b
    .line 575
    iput-boolean v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAutoAttachOnCreationConfig:Z

    #@9d
    .line 576
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    #@9f
    invoke-direct {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    #@a2
    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAutoAttachOnCreation:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@a4
    .line 581
    iput-boolean v5, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mIsScreenOn:Z

    #@a6
    .line 585
    iput-boolean v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mMvnoMatched:Z

    #@a8
    .line 588
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    #@aa
    invoke-direct {v0, v3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    #@ad
    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mUniqueIdGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    #@af
    .line 592
    new-instance v0, Ljava/util/HashMap;

    #@b1
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@b4
    .line 591
    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDataConnections:Ljava/util/HashMap;

    #@b6
    .line 596
    new-instance v0, Ljava/util/HashMap;

    #@b8
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@bb
    .line 595
    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDataConnectionAcHashMap:Ljava/util/HashMap;

    #@bd
    .line 599
    new-instance v0, Ljava/util/HashMap;

    #@bf
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@c2
    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mApnToDataConnectionId:Ljava/util/HashMap;

    #@c4
    .line 603
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    #@c6
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    #@c9
    .line 602
    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    #@cb
    .line 605
    new-instance v0, Landroid/util/SparseArray;

    #@cd
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    #@d0
    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mApnContextsById:Landroid/util/SparseArray;

    #@d2
    .line 607
    iput v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDisconnectPendingCount:I

    #@d4
    .line 612
    iput-boolean v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mMeteredApnDisabled:Z

    #@d6
    .line 630
    iput-boolean v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mReregisterOnReconnectFailure:Z

    #@d8
    .line 646
    iput-boolean v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mCanSetPreferApn:Z

    #@da
    .line 648
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    #@dc
    invoke-direct {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    #@df
    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAttached:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@e1
    .line 657
    iput-boolean v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mImsRegistrationState:Z

    #@e3
    .line 728
    iput-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAlarmManager:Landroid/app/AlarmManager;

    #@e5
    .line 729
    iput-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mCm:Landroid/net/ConnectivityManager;

    #@e7
    .line 730
    iput-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    #@e9
    .line 731
    iput-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    #@eb
    .line 732
    iput-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDataConnectionTracker:Landroid/os/Handler;

    #@ed
    .line 733
    iput-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mProvisionActionName:Ljava/lang/String;

    #@ef
    .line 734
    new-instance v0, Lcom/android/internal/telephony/dataconnection/DcTracker$SettingsObserver;

    #@f1
    invoke-direct {v0, v4, p0}, Lcom/android/internal/telephony/dataconnection/DcTracker$SettingsObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    #@f4
    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mSettingsObserver:Lcom/android/internal/telephony/dataconnection/DcTracker$SettingsObserver;

    #@f6
    .line 727
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/Phone;)V
    .locals 14
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;

    #@0
    .prologue
    const-wide/16 v12, 0x0

    #@2
    const/4 v11, 0x1

    #@3
    const/4 v10, 0x0

    #@4
    const/4 v9, 0x0

    #@5
    .line 661
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    #@8
    .line 118
    new-instance v6, Ljava/util/concurrent/atomic/AtomicBoolean;

    #@a
    invoke-direct {v6, v9}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    #@d
    iput-object v6, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->isCleanupRequired:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@f
    .line 123
    const-string/jumbo v6, "default"

    #@12
    iput-object v6, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mRequestedApnType:Ljava/lang/String;

    #@14
    .line 126
    new-instance v6, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;

    #@16
    invoke-direct {v6}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;-><init>()V

    #@19
    iput-object v6, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDataEnabledSettings:Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;

    #@1b
    .line 150
    const-string/jumbo v6, "gsm.radioreset"

    #@1e
    iput-object v6, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->RADIO_RESET_PROPERTY:Ljava/lang/String;

    #@20
    .line 218
    new-instance v6, Ljava/util/PriorityQueue;

    #@22
    .line 219
    new-instance v7, Lcom/android/internal/telephony/dataconnection/DcTracker$1;

    #@24
    invoke-direct {v7, p0}, Lcom/android/internal/telephony/dataconnection/DcTracker$1;-><init>(Lcom/android/internal/telephony/dataconnection/DcTracker;)V

    #@27
    .line 218
    const/4 v8, 0x5

    #@28
    invoke-direct {v6, v8, v7}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    #@2b
    .line 217
    iput-object v6, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPrioritySortedApnContexts:Ljava/util/PriorityQueue;

    #@2d
    .line 226
    iput-object v10, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAllApnSettings:Ljava/util/ArrayList;

    #@2f
    .line 229
    iput-object v10, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPreferredApn:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    #@31
    .line 232
    iput-boolean v9, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mIsPsRestricted:Z

    #@33
    .line 235
    iput-object v10, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mEmergencyApn:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    #@35
    .line 238
    iput-boolean v9, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mIsDisposed:Z

    #@37
    .line 243
    iput-boolean v9, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mIsProvisioning:Z

    #@39
    .line 246
    iput-object v10, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mProvisioningUrl:Ljava/lang/String;

    #@3b
    .line 262
    iput-object v10, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mProvisioningApnAlarmIntent:Landroid/app/PendingIntent;

    #@3d
    .line 265
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@40
    move-result-wide v6

    #@41
    long-to-int v6, v6

    #@42
    iput v6, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mProvisioningApnAlarmTag:I

    #@44
    .line 267
    new-instance v6, Lcom/android/internal/util/AsyncChannel;

    #@46
    invoke-direct {v6}, Lcom/android/internal/util/AsyncChannel;-><init>()V

    #@49
    iput-object v6, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mReplyAc:Lcom/android/internal/util/AsyncChannel;

    #@4b
    .line 269
    new-instance v6, Lcom/android/internal/telephony/dataconnection/DcTracker$2;

    #@4d
    invoke-direct {v6, p0}, Lcom/android/internal/telephony/dataconnection/DcTracker$2;-><init>(Lcom/android/internal/telephony/dataconnection/DcTracker;)V

    #@50
    iput-object v6, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    #@52
    .line 319
    new-instance v6, Lcom/android/internal/telephony/dataconnection/DcTracker$3;

    #@54
    invoke-direct {v6, p0}, Lcom/android/internal/telephony/dataconnection/DcTracker$3;-><init>(Lcom/android/internal/telephony/dataconnection/DcTracker;)V

    #@57
    iput-object v6, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPollNetStat:Ljava/lang/Runnable;

    #@59
    .line 341
    new-instance v6, Lcom/android/internal/telephony/dataconnection/DcTracker$4;

    #@5b
    invoke-direct {v6, p0}, Lcom/android/internal/telephony/dataconnection/DcTracker$4;-><init>(Lcom/android/internal/telephony/dataconnection/DcTracker;)V

    #@5e
    .line 340
    iput-object v6, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mOnSubscriptionsChangedListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    #@60
    .line 532
    new-instance v6, Ljava/util/ArrayList;

    #@62
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    #@65
    iput-object v6, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDisconnectAllCompleteMsgList:Ljava/util/ArrayList;

    #@67
    .line 534
    new-instance v6, Landroid/os/RegistrantList;

    #@69
    invoke-direct {v6}, Landroid/os/RegistrantList;-><init>()V

    #@6c
    iput-object v6, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAllDataDisconnectedRegistrants:Landroid/os/RegistrantList;

    #@6e
    .line 539
    new-instance v6, Ljava/util/concurrent/atomic/AtomicReference;

    #@70
    invoke-direct {v6}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    #@73
    iput-object v6, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    #@75
    .line 540
    sget-object v6, Lcom/android/internal/telephony/DctConstants$Activity;->NONE:Lcom/android/internal/telephony/DctConstants$Activity;

    #@77
    iput-object v6, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mActivity:Lcom/android/internal/telephony/DctConstants$Activity;

    #@79
    .line 541
    sget-object v6, Lcom/android/internal/telephony/DctConstants$State;->IDLE:Lcom/android/internal/telephony/DctConstants$State;

    #@7b
    iput-object v6, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mState:Lcom/android/internal/telephony/DctConstants$State;

    #@7d
    .line 547
    iput-boolean v9, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mNetStatPollEnabled:Z

    #@7f
    .line 549
    new-instance v6, Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxSum;

    #@81
    invoke-direct {v6, v12, v13, v12, v13}, Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxSum;-><init>(JJ)V

    #@84
    iput-object v6, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDataStallTxRxSum:Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxSum;

    #@86
    .line 551
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@89
    move-result-wide v6

    #@8a
    long-to-int v6, v6

    #@8b
    iput v6, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDataStallAlarmTag:I

    #@8d
    .line 553
    iput-object v10, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDataStallAlarmIntent:Landroid/app/PendingIntent;

    #@8f
    .line 557
    iput v9, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mNoRecvPollCount:I

    #@91
    .line 561
    iput-boolean v11, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDataStallDetectionEnabled:Z

    #@93
    .line 563
    iput-boolean v9, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mFailFast:Z

    #@95
    .line 566
    iput-boolean v9, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mInVoiceCall:Z

    #@97
    .line 569
    iput-boolean v9, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mIsWifiConnected:Z

    #@99
    .line 572
    iput-object v10, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mReconnectIntent:Landroid/app/PendingIntent;

    #@9b
    .line 575
    iput-boolean v9, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAutoAttachOnCreationConfig:Z

    #@9d
    .line 576
    new-instance v6, Ljava/util/concurrent/atomic/AtomicBoolean;

    #@9f
    invoke-direct {v6, v9}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    #@a2
    iput-object v6, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAutoAttachOnCreation:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@a4
    .line 581
    iput-boolean v11, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mIsScreenOn:Z

    #@a6
    .line 585
    iput-boolean v9, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mMvnoMatched:Z

    #@a8
    .line 588
    new-instance v6, Ljava/util/concurrent/atomic/AtomicInteger;

    #@aa
    invoke-direct {v6, v9}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    #@ad
    iput-object v6, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mUniqueIdGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    #@af
    .line 592
    new-instance v6, Ljava/util/HashMap;

    #@b1
    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    #@b4
    .line 591
    iput-object v6, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDataConnections:Ljava/util/HashMap;

    #@b6
    .line 596
    new-instance v6, Ljava/util/HashMap;

    #@b8
    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    #@bb
    .line 595
    iput-object v6, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDataConnectionAcHashMap:Ljava/util/HashMap;

    #@bd
    .line 599
    new-instance v6, Ljava/util/HashMap;

    #@bf
    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    #@c2
    iput-object v6, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mApnToDataConnectionId:Ljava/util/HashMap;

    #@c4
    .line 603
    new-instance v6, Ljava/util/concurrent/ConcurrentHashMap;

    #@c6
    invoke-direct {v6}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    #@c9
    .line 602
    iput-object v6, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    #@cb
    .line 605
    new-instance v6, Landroid/util/SparseArray;

    #@cd
    invoke-direct {v6}, Landroid/util/SparseArray;-><init>()V

    #@d0
    iput-object v6, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mApnContextsById:Landroid/util/SparseArray;

    #@d2
    .line 607
    iput v9, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDisconnectPendingCount:I

    #@d4
    .line 612
    iput-boolean v9, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mMeteredApnDisabled:Z

    #@d6
    .line 630
    iput-boolean v9, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mReregisterOnReconnectFailure:Z

    #@d8
    .line 646
    iput-boolean v9, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mCanSetPreferApn:Z

    #@da
    .line 648
    new-instance v6, Ljava/util/concurrent/atomic/AtomicBoolean;

    #@dc
    invoke-direct {v6, v9}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    #@df
    iput-object v6, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAttached:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@e1
    .line 657
    iput-boolean v9, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mImsRegistrationState:Z

    #@e3
    .line 662
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    #@e5
    .line 664
    const-string/jumbo v6, "DCT.constructor"

    #@e8
    invoke-direct {p0, v6}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@eb
    .line 666
    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    #@ed
    invoke-virtual {v6}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    #@f0
    move-result-object v6

    #@f1
    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@f4
    move-result-object v6

    #@f5
    iput-object v6, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mResolver:Landroid/content/ContentResolver;

    #@f7
    .line 667
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    #@fa
    move-result-object v6

    #@fb
    iput-object v6, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    #@fd
    .line 668
    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    #@ff
    const v7, 0x42021

    #@102
    invoke-virtual {v6, p0, v7, v10}, Lcom/android/internal/telephony/uicc/UiccController;->registerForIccChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    #@105
    .line 670
    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    #@107
    invoke-virtual {v6}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    #@10a
    move-result-object v6

    #@10b
    const-string/jumbo v7, "alarm"

    #@10e
    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@111
    move-result-object v6

    #@112
    check-cast v6, Landroid/app/AlarmManager;

    #@114
    .line 669
    iput-object v6, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAlarmManager:Landroid/app/AlarmManager;

    #@116
    .line 671
    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    #@118
    invoke-virtual {v6}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    #@11b
    move-result-object v6

    #@11c
    .line 672
    const-string/jumbo v7, "connectivity"

    #@11f
    .line 671
    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@122
    move-result-object v6

    #@123
    check-cast v6, Landroid/net/ConnectivityManager;

    #@125
    iput-object v6, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mCm:Landroid/net/ConnectivityManager;

    #@127
    .line 675
    new-instance v4, Landroid/content/IntentFilter;

    #@129
    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    #@12c
    .line 676
    .local v4, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v6, "android.intent.action.SCREEN_ON"

    #@12f
    invoke-virtual {v4, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@132
    .line 677
    const-string/jumbo v6, "android.intent.action.SCREEN_OFF"

    #@135
    invoke-virtual {v4, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@138
    .line 678
    const-string/jumbo v6, "android.net.wifi.STATE_CHANGE"

    #@13b
    invoke-virtual {v4, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@13e
    .line 679
    const-string/jumbo v6, "android.net.wifi.WIFI_STATE_CHANGED"

    #@141
    invoke-virtual {v4, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@144
    .line 680
    const-string/jumbo v6, "com.android.internal.telephony.data-stall"

    #@147
    invoke-virtual {v4, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@14a
    .line 681
    const-string/jumbo v6, "com.android.internal.telephony.provisioning_apn_alarm"

    #@14d
    invoke-virtual {v4, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@150
    .line 684
    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDataEnabledSettings:Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;

    #@152
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->getDataEnabled()Z

    #@155
    move-result v7

    #@156
    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->setUserDataEnabled(Z)V

    #@159
    .line 686
    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    #@15b
    invoke-virtual {v6}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    #@15e
    move-result-object v6

    #@15f
    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    #@161
    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    #@163
    invoke-virtual {v6, v7, v4, v10, v8}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    #@166
    .line 688
    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    #@168
    invoke-virtual {v6}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    #@16b
    move-result-object v6

    #@16c
    invoke-static {v6}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    #@16f
    move-result-object v5

    #@170
    .line 689
    .local v5, "sp":Landroid/content/SharedPreferences;
    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAutoAttachOnCreation:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@172
    const-string/jumbo v7, "disabled_on_boot_key"

    #@175
    invoke-interface {v5, v7, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    #@178
    move-result v7

    #@179
    invoke-virtual {v6, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    #@17c
    .line 691
    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    #@17e
    invoke-virtual {v6}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    #@181
    move-result-object v6

    #@182
    invoke-static {v6}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    #@185
    move-result-object v6

    #@186
    iput-object v6, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    #@188
    .line 692
    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    #@18a
    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mOnSubscriptionsChangedListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    #@18c
    invoke-virtual {v6, v7}, Landroid/telephony/SubscriptionManager;->addOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    #@18f
    .line 694
    new-instance v3, Landroid/os/HandlerThread;

    #@191
    const-string/jumbo v6, "DcHandlerThread"

    #@194
    invoke-direct {v3, v6}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    #@197
    .line 695
    .local v3, "dcHandlerThread":Landroid/os/HandlerThread;
    invoke-virtual {v3}, Landroid/os/HandlerThread;->start()V

    #@19a
    .line 696
    new-instance v2, Landroid/os/Handler;

    #@19c
    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    #@19f
    move-result-object v6

    #@1a0
    invoke-direct {v2, v6}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    #@1a3
    .line 697
    .local v2, "dcHandler":Landroid/os/Handler;
    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    #@1a5
    invoke-static {v6, p0, v2}, Lcom/android/internal/telephony/dataconnection/DcController;->makeDcc(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/dataconnection/DcTracker;Landroid/os/Handler;)Lcom/android/internal/telephony/dataconnection/DcController;

    #@1a8
    move-result-object v6

    #@1a9
    iput-object v6, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDcc:Lcom/android/internal/telephony/dataconnection/DcController;

    #@1ab
    .line 698
    new-instance v6, Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;

    #@1ad
    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    #@1af
    invoke-direct {v6, v7, v2}, Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;-><init>(Lcom/android/internal/telephony/Phone;Landroid/os/Handler;)V

    #@1b2
    iput-object v6, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDcTesterFailBringUpAll:Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;

    #@1b4
    .line 700
    iput-object p0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDataConnectionTracker:Landroid/os/Handler;

    #@1b6
    .line 701
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->registerForAllEvents()V

    #@1b9
    .line 702
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->update()V

    #@1bc
    .line 703
    new-instance v6, Lcom/android/internal/telephony/dataconnection/DcTracker$ApnChangeObserver;

    #@1be
    invoke-direct {v6, p0}, Lcom/android/internal/telephony/dataconnection/DcTracker$ApnChangeObserver;-><init>(Lcom/android/internal/telephony/dataconnection/DcTracker;)V

    #@1c1
    iput-object v6, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mApnObserver:Lcom/android/internal/telephony/dataconnection/DcTracker$ApnChangeObserver;

    #@1c3
    .line 704
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    #@1c6
    move-result-object v6

    #@1c7
    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@1ca
    move-result-object v6

    #@1cb
    .line 705
    sget-object v7, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    #@1cd
    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mApnObserver:Lcom/android/internal/telephony/dataconnection/DcTracker$ApnChangeObserver;

    #@1cf
    .line 704
    invoke-virtual {v6, v7, v11, v8}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    #@1d2
    .line 707
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->initApnContexts()V

    #@1d5
    .line 709
    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    #@1d7
    invoke-virtual {v6}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    #@1da
    move-result-object v6

    #@1db
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@1de
    move-result-object v1

    #@1df
    .local v1, "apnContext$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@1e2
    move-result v6

    #@1e3
    if-eqz v6, :cond_0

    #@1e5
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1e8
    move-result-object v0

    #@1e9
    check-cast v0, Lcom/android/internal/telephony/dataconnection/ApnContext;

    #@1eb
    .line 711
    .local v0, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    new-instance v4, Landroid/content/IntentFilter;

    #@1ed
    .end local v4    # "filter":Landroid/content/IntentFilter;
    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    #@1f0
    .line 712
    .restart local v4    # "filter":Landroid/content/IntentFilter;
    new-instance v6, Ljava/lang/StringBuilder;

    #@1f2
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@1f5
    const-string/jumbo v7, "com.android.internal.telephony.data-reconnect."

    #@1f8
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1fb
    move-result-object v6

    #@1fc
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    #@1ff
    move-result-object v7

    #@200
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@203
    move-result-object v6

    #@204
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@207
    move-result-object v6

    #@208
    invoke-virtual {v4, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@20b
    .line 713
    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    #@20d
    invoke-virtual {v6}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    #@210
    move-result-object v6

    #@211
    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    #@213
    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    #@215
    invoke-virtual {v6, v7, v4, v10, v8}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    #@218
    goto :goto_0

    #@219
    .line 717
    .end local v0    # "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->initEmergencyApnSetting()V

    #@21c
    .line 718
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->addEmergencyApnSetting()V

    #@21f
    .line 720
    new-instance v6, Ljava/lang/StringBuilder;

    #@221
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@224
    const-string/jumbo v7, "com.android.internal.telephony.PROVISION"

    #@227
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22a
    move-result-object v6

    #@22b
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    #@22e
    move-result v7

    #@22f
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@232
    move-result-object v6

    #@233
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@236
    move-result-object v6

    #@237
    iput-object v6, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mProvisionActionName:Ljava/lang/String;

    #@239
    .line 722
    new-instance v6, Lcom/android/internal/telephony/dataconnection/DcTracker$SettingsObserver;

    #@23b
    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    #@23d
    invoke-virtual {v7}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    #@240
    move-result-object v7

    #@241
    invoke-direct {v6, v7, p0}, Lcom/android/internal/telephony/dataconnection/DcTracker$SettingsObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    #@244
    iput-object v6, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mSettingsObserver:Lcom/android/internal/telephony/dataconnection/DcTracker$SettingsObserver;

    #@246
    .line 723
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->registerSettingsObserver()V

    #@249
    .line 660
    return-void
.end method

.method private addApnContext(Ljava/lang/String;Landroid/net/NetworkConfig;)Lcom/android/internal/telephony/dataconnection/ApnContext;
    .locals 6
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "networkConfig"    # Landroid/net/NetworkConfig;

    #@0
    .prologue
    .line 1093
    new-instance v0, Lcom/android/internal/telephony/dataconnection/ApnContext;

    #@2
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    #@4
    const-string/jumbo v3, "DCT"

    #@7
    move-object v2, p1

    #@8
    move-object v4, p2

    #@9
    move-object v5, p0

    #@a
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/dataconnection/ApnContext;-><init>(Lcom/android/internal/telephony/Phone;Ljava/lang/String;Ljava/lang/String;Landroid/net/NetworkConfig;Lcom/android/internal/telephony/dataconnection/DcTracker;)V

    #@d
    .line 1094
    .local v0, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    #@f
    invoke-virtual {v1, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@12
    .line 1095
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mApnContextsById:Landroid/util/SparseArray;

    #@14
    invoke-static {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->apnIdForApnName(Ljava/lang/String;)I

    #@17
    move-result v2

    #@18
    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@1b
    .line 1096
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPrioritySortedApnContexts:Ljava/util/PriorityQueue;

    #@1d
    invoke-virtual {v1, v0}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    #@20
    .line 1097
    return-object v0
.end method

.method private addEmergencyApnSetting()V
    .locals 5

    #@0
    .prologue
    .line 4341
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mEmergencyApn:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    #@2
    if-eqz v3, :cond_0

    #@4
    .line 4342
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAllApnSettings:Ljava/util/ArrayList;

    #@6
    if-nez v3, :cond_1

    #@8
    .line 4343
    new-instance v3, Ljava/util/ArrayList;

    #@a
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    #@d
    iput-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAllApnSettings:Ljava/util/ArrayList;

    #@f
    .line 4340
    :cond_0
    :goto_0
    return-void

    #@10
    .line 4345
    :cond_1
    const/4 v2, 0x0

    #@11
    .line 4346
    .local v2, "hasEmergencyApn":Z
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAllApnSettings:Ljava/util/ArrayList;

    #@13
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@16
    move-result-object v1

    #@17
    .local v1, "apn$iterator":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@1a
    move-result v3

    #@1b
    if-eqz v3, :cond_3

    #@1d
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@20
    move-result-object v0

    #@21
    check-cast v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;

    #@23
    .line 4347
    .local v0, "apn":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    iget-object v3, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->types:[Ljava/lang/String;

    #@25
    const-string/jumbo v4, "emergency"

    #@28
    invoke-static {v3, v4}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    #@2b
    move-result v3

    #@2c
    if-eqz v3, :cond_2

    #@2e
    .line 4348
    const/4 v2, 0x1

    #@2f
    .line 4353
    .end local v0    # "apn":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    :cond_3
    if-nez v2, :cond_4

    #@31
    .line 4354
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAllApnSettings:Ljava/util/ArrayList;

    #@33
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mEmergencyApn:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    #@35
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@38
    goto :goto_0

    #@39
    .line 4356
    :cond_4
    const-string/jumbo v3, "addEmergencyApnSetting - E-APN setting is already present"

    #@3c
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@3f
    goto :goto_0
.end method

.method private apnListToString(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/dataconnection/ApnSetting;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    #@0
    .prologue
    .line 3581
    .local p1, "apns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/dataconnection/ApnSetting;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 3582
    .local v1, "result":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    #@6
    .local v0, "i":I
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    #@9
    move-result v2

    #@a
    .local v2, "size":I
    :goto_0
    if-ge v0, v2, :cond_0

    #@c
    .line 3583
    const/16 v3, 0x5b

    #@e
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@11
    move-result-object v4

    #@12
    .line 3584
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@15
    move-result-object v3

    #@16
    check-cast v3, Lcom/android/internal/telephony/dataconnection/ApnSetting;

    #@18
    invoke-virtual {v3}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->toString()Ljava/lang/String;

    #@1b
    move-result-object v3

    #@1c
    .line 3583
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v3

    #@20
    .line 3585
    const/16 v4, 0x5d

    #@22
    .line 3583
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@25
    .line 3582
    add-int/lit8 v0, v0, 0x1

    #@27
    goto :goto_0

    #@28
    .line 3587
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2b
    move-result-object v3

    #@2c
    return-object v3
.end method

.method private apnTypeSameAny(Lcom/android/internal/telephony/dataconnection/ApnSetting;Lcom/android/internal/telephony/dataconnection/ApnSetting;)Z
    .locals 4
    .param p1, "first"    # Lcom/android/internal/telephony/dataconnection/ApnSetting;
    .param p2, "second"    # Lcom/android/internal/telephony/dataconnection/ApnSetting;

    #@0
    .prologue
    .line 3390
    const/4 v0, 0x0

    #@1
    .local v0, "index1":I
    :goto_0
    iget-object v2, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->types:[Ljava/lang/String;

    #@3
    array-length v2, v2

    #@4
    if-ge v0, v2, :cond_3

    #@6
    .line 3391
    const/4 v1, 0x0

    #@7
    .local v1, "index2":I
    :goto_1
    iget-object v2, p2, Lcom/android/internal/telephony/dataconnection/ApnSetting;->types:[Ljava/lang/String;

    #@9
    array-length v2, v2

    #@a
    if-ge v1, v2, :cond_2

    #@c
    .line 3392
    iget-object v2, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->types:[Ljava/lang/String;

    #@e
    aget-object v2, v2, v0

    #@10
    const-string/jumbo v3, "*"

    #@13
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@16
    move-result v2

    #@17
    if-nez v2, :cond_0

    #@19
    .line 3393
    iget-object v2, p2, Lcom/android/internal/telephony/dataconnection/ApnSetting;->types:[Ljava/lang/String;

    #@1b
    aget-object v2, v2, v1

    #@1d
    const-string/jumbo v3, "*"

    #@20
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@23
    move-result v2

    #@24
    .line 3392
    if-nez v2, :cond_0

    #@26
    .line 3394
    iget-object v2, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->types:[Ljava/lang/String;

    #@28
    aget-object v2, v2, v0

    #@2a
    iget-object v3, p2, Lcom/android/internal/telephony/dataconnection/ApnSetting;->types:[Ljava/lang/String;

    #@2c
    aget-object v3, v3, v1

    #@2e
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@31
    move-result v2

    #@32
    .line 3392
    if-eqz v2, :cond_1

    #@34
    .line 3396
    :cond_0
    const/4 v2, 0x1

    #@35
    return v2

    #@36
    .line 3391
    :cond_1
    add-int/lit8 v1, v1, 0x1

    #@38
    goto :goto_1

    #@39
    .line 3390
    :cond_2
    add-int/lit8 v0, v0, 0x1

    #@3b
    goto :goto_0

    #@3c
    .line 3402
    .end local v1    # "index2":I
    :cond_3
    const/4 v2, 0x0

    #@3d
    return v2
.end method

.method private apnsSimilar(Lcom/android/internal/telephony/dataconnection/ApnSetting;Lcom/android/internal/telephony/dataconnection/ApnSetting;)Z
    .locals 2
    .param p1, "first"    # Lcom/android/internal/telephony/dataconnection/ApnSetting;
    .param p2, "second"    # Lcom/android/internal/telephony/dataconnection/ApnSetting;

    #@0
    .prologue
    .line 3407
    const-string/jumbo v0, "dun"

    #@3
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->canHandleType(Ljava/lang/String;)Z

    #@6
    move-result v0

    #@7
    if-nez v0, :cond_0

    #@9
    .line 3408
    const-string/jumbo v0, "dun"

    #@c
    invoke-virtual {p2, v0}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->canHandleType(Ljava/lang/String;)Z

    #@f
    move-result v0

    #@10
    if-nez v0, :cond_0

    #@12
    .line 3409
    iget-object v0, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->apn:Ljava/lang/String;

    #@14
    iget-object v1, p2, Lcom/android/internal/telephony/dataconnection/ApnSetting;->apn:Ljava/lang/String;

    #@16
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@19
    move-result v0

    #@1a
    .line 3407
    if-eqz v0, :cond_0

    #@1c
    .line 3410
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->apnTypeSameAny(Lcom/android/internal/telephony/dataconnection/ApnSetting;Lcom/android/internal/telephony/dataconnection/ApnSetting;)Z

    #@1f
    move-result v0

    #@20
    if-eqz v0, :cond_1

    #@22
    .line 3407
    :cond_0
    const/4 v0, 0x0

    #@23
    :goto_0
    return v0

    #@24
    .line 3411
    :cond_1
    iget-object v0, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->proxy:Ljava/lang/String;

    #@26
    iget-object v1, p2, Lcom/android/internal/telephony/dataconnection/ApnSetting;->proxy:Ljava/lang/String;

    #@28
    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->xorEquals(Ljava/lang/String;Ljava/lang/String;)Z

    #@2b
    move-result v0

    #@2c
    .line 3407
    if-eqz v0, :cond_0

    #@2e
    .line 3412
    iget-object v0, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->port:Ljava/lang/String;

    #@30
    iget-object v1, p2, Lcom/android/internal/telephony/dataconnection/ApnSetting;->port:Ljava/lang/String;

    #@32
    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->xorEquals(Ljava/lang/String;Ljava/lang/String;)Z

    #@35
    move-result v0

    #@36
    .line 3407
    if-eqz v0, :cond_0

    #@38
    .line 3413
    iget-boolean v0, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->carrierEnabled:Z

    #@3a
    iget-boolean v1, p2, Lcom/android/internal/telephony/dataconnection/ApnSetting;->carrierEnabled:Z

    #@3c
    if-ne v0, v1, :cond_0

    #@3e
    .line 3414
    iget v0, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->bearerBitmask:I

    #@40
    iget v1, p2, Lcom/android/internal/telephony/dataconnection/ApnSetting;->bearerBitmask:I

    #@42
    if-ne v0, v1, :cond_0

    #@44
    .line 3415
    iget v0, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->profileId:I

    #@46
    iget v1, p2, Lcom/android/internal/telephony/dataconnection/ApnSetting;->profileId:I

    #@48
    if-ne v0, v1, :cond_0

    #@4a
    .line 3416
    iget-object v0, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mvnoType:Ljava/lang/String;

    #@4c
    iget-object v1, p2, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mvnoType:Ljava/lang/String;

    #@4e
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@51
    move-result v0

    #@52
    .line 3407
    if-eqz v0, :cond_0

    #@54
    .line 3417
    iget-object v0, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mvnoMatchData:Ljava/lang/String;

    #@56
    iget-object v1, p2, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mvnoMatchData:Ljava/lang/String;

    #@58
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@5b
    move-result v0

    #@5c
    .line 3407
    if-eqz v0, :cond_0

    #@5e
    .line 3418
    iget-object v0, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mmsc:Ljava/lang/String;

    #@60
    iget-object v1, p2, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mmsc:Ljava/lang/String;

    #@62
    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->xorEquals(Ljava/lang/String;Ljava/lang/String;)Z

    #@65
    move-result v0

    #@66
    .line 3407
    if-eqz v0, :cond_0

    #@68
    .line 3419
    iget-object v0, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mmsProxy:Ljava/lang/String;

    #@6a
    iget-object v1, p2, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mmsProxy:Ljava/lang/String;

    #@6c
    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->xorEquals(Ljava/lang/String;Ljava/lang/String;)Z

    #@6f
    move-result v0

    #@70
    .line 3407
    if-eqz v0, :cond_0

    #@72
    .line 3420
    iget-object v0, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mmsPort:Ljava/lang/String;

    #@74
    iget-object v1, p2, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mmsPort:Ljava/lang/String;

    #@76
    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->xorEquals(Ljava/lang/String;Ljava/lang/String;)Z

    #@79
    move-result v0

    #@7a
    goto :goto_0
.end method

.method private applyNewState(Lcom/android/internal/telephony/dataconnection/ApnContext;ZZ)V
    .locals 6
    .param p1, "apnContext"    # Lcom/android/internal/telephony/dataconnection/ApnContext;
    .param p2, "enabled"    # Z
    .param p3, "met"    # Z

    #@0
    .prologue
    .line 2458
    const/4 v0, 0x0

    #@1
    .line 2459
    .local v0, "cleanup":Z
    const/4 v3, 0x0

    #@2
    .line 2460
    .local v3, "trySetup":Z
    new-instance v4, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    const-string/jumbo v5, "applyNewState("

    #@a
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    move-result-object v4

    #@e
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    #@11
    move-result-object v5

    #@12
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v4

    #@16
    const-string/jumbo v5, ", "

    #@19
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v4

    #@1d
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@20
    move-result-object v4

    #@21
    .line 2461
    const-string/jumbo v5, "("

    #@24
    .line 2460
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v4

    #@28
    .line 2461
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->isEnabled()Z

    #@2b
    move-result v5

    #@2c
    .line 2460
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v4

    #@30
    .line 2461
    const-string/jumbo v5, "), "

    #@33
    .line 2460
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v4

    #@37
    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v4

    #@3b
    .line 2461
    const-string/jumbo v5, "("

    #@3e
    .line 2460
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v4

    #@42
    .line 2462
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getDependencyMet()Z

    #@45
    move-result v5

    #@46
    .line 2460
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@49
    move-result-object v4

    #@4a
    .line 2462
    const-string/jumbo v5, "))"

    #@4d
    .line 2460
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@50
    move-result-object v4

    #@51
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@54
    move-result-object v2

    #@55
    .line 2463
    .local v2, "str":Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@58
    .line 2464
    invoke-virtual {p1, v2}, Lcom/android/internal/telephony/dataconnection/ApnContext;->requestLog(Ljava/lang/String;)V

    #@5b
    .line 2466
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->isReady()Z

    #@5e
    move-result v4

    #@5f
    if-eqz v4, :cond_6

    #@61
    .line 2467
    const/4 v0, 0x1

    #@62
    .line 2468
    if-eqz p2, :cond_3

    #@64
    if-eqz p3, :cond_3

    #@66
    .line 2469
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getState()Lcom/android/internal/telephony/DctConstants$State;

    #@69
    move-result-object v1

    #@6a
    .line 2470
    .local v1, "state":Lcom/android/internal/telephony/DctConstants$State;
    invoke-static {}, Lcom/android/internal/telephony/dataconnection/DcTracker;->-getcom-android-internal-telephony-DctConstants$StateSwitchesValues()[I

    #@6d
    move-result-object v4

    #@6e
    invoke-virtual {v1}, Lcom/android/internal/telephony/DctConstants$State;->ordinal()I

    #@71
    move-result v5

    #@72
    aget v4, v4, v5

    #@74
    packed-switch v4, :pswitch_data_0

    #@77
    .line 2522
    .end local v1    # "state":Lcom/android/internal/telephony/DctConstants$State;
    :cond_0
    :goto_0
    invoke-virtual {p1, p2}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setEnabled(Z)V

    #@7a
    .line 2523
    invoke-virtual {p1, p3}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setDependencyMet(Z)V

    #@7d
    .line 2524
    if-eqz v0, :cond_1

    #@7f
    const/4 v4, 0x1

    #@80
    invoke-direct {p0, v4, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->cleanUpConnection(ZLcom/android/internal/telephony/dataconnection/ApnContext;)V

    #@83
    .line 2525
    :cond_1
    if-eqz v3, :cond_2

    #@85
    .line 2526
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->resetErrorCodeRetries()V

    #@88
    .line 2527
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->trySetupData(Lcom/android/internal/telephony/dataconnection/ApnContext;)Z

    #@8b
    .line 2457
    :cond_2
    return-void

    #@8c
    .line 2476
    .restart local v1    # "state":Lcom/android/internal/telephony/DctConstants$State;
    :pswitch_0
    const-string/jumbo v4, "applyNewState: \'ready\' so return"

    #@8f
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@92
    .line 2477
    new-instance v4, Ljava/lang/StringBuilder;

    #@94
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@97
    const-string/jumbo v5, "applyNewState state="

    #@9a
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9d
    move-result-object v4

    #@9e
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@a1
    move-result-object v4

    #@a2
    const-string/jumbo v5, ", so return"

    #@a5
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a8
    move-result-object v4

    #@a9
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ac
    move-result-object v4

    #@ad
    invoke-virtual {p1, v4}, Lcom/android/internal/telephony/dataconnection/ApnContext;->requestLog(Ljava/lang/String;)V

    #@b0
    .line 2478
    return-void

    #@b1
    .line 2485
    :pswitch_1
    const/4 v3, 0x1

    #@b2
    .line 2486
    const-string/jumbo v4, "dataEnabled"

    #@b5
    invoke-virtual {p1, v4}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setReason(Ljava/lang/String;)V

    #@b8
    goto :goto_0

    #@b9
    .line 2490
    .end local v1    # "state":Lcom/android/internal/telephony/DctConstants$State;
    :cond_3
    if-eqz p3, :cond_5

    #@bb
    .line 2491
    const-string/jumbo v4, "dataDisabled"

    #@be
    invoke-virtual {p1, v4}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setReason(Ljava/lang/String;)V

    #@c1
    .line 2501
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    #@c4
    move-result-object v4

    #@c5
    const-string/jumbo v5, "dun"

    #@c8
    if-ne v4, v5, :cond_4

    #@ca
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->teardownForDun()Z

    #@cd
    move-result v4

    #@ce
    if-eqz v4, :cond_4

    #@d0
    .line 2502
    const/4 v0, 0x1

    #@d1
    goto :goto_0

    #@d2
    .line 2504
    :cond_4
    const/4 v0, 0x0

    #@d3
    goto :goto_0

    #@d4
    .line 2507
    :cond_5
    const-string/jumbo v4, "dependencyUnmet"

    #@d7
    invoke-virtual {p1, v4}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setReason(Ljava/lang/String;)V

    #@da
    goto :goto_0

    #@db
    .line 2510
    :cond_6
    if-eqz p2, :cond_0

    #@dd
    if-eqz p3, :cond_0

    #@df
    .line 2511
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->isEnabled()Z

    #@e2
    move-result v4

    #@e3
    if-eqz v4, :cond_8

    #@e5
    .line 2512
    const-string/jumbo v4, "dependencyMet"

    #@e8
    invoke-virtual {p1, v4}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setReason(Ljava/lang/String;)V

    #@eb
    .line 2516
    :goto_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getState()Lcom/android/internal/telephony/DctConstants$State;

    #@ee
    move-result-object v4

    #@ef
    sget-object v5, Lcom/android/internal/telephony/DctConstants$State;->FAILED:Lcom/android/internal/telephony/DctConstants$State;

    #@f1
    if-ne v4, v5, :cond_7

    #@f3
    .line 2517
    sget-object v4, Lcom/android/internal/telephony/DctConstants$State;->IDLE:Lcom/android/internal/telephony/DctConstants$State;

    #@f5
    invoke-virtual {p1, v4}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setState(Lcom/android/internal/telephony/DctConstants$State;)V

    #@f8
    .line 2519
    :cond_7
    const/4 v3, 0x1

    #@f9
    goto/16 :goto_0

    #@fb
    .line 2514
    :cond_8
    const-string/jumbo v4, "dataEnabled"

    #@fe
    invoke-virtual {p1, v4}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setReason(Ljava/lang/String;)V

    #@101
    goto :goto_1

    #@102
    .line 2470
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private buildWaitingApns(Ljava/lang/String;I)Ljava/util/ArrayList;
    .locals 12
    .param p1, "requestedApnType"    # Ljava/lang/String;
    .param p2, "radioTech"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/dataconnection/ApnSetting;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    const/4 v11, -0x1

    #@1
    const/4 v10, 0x0

    #@2
    .line 3494
    new-instance v8, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    const-string/jumbo v9, "buildWaitingApns: E requestedApnType="

    #@a
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    move-result-object v8

    #@e
    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v8

    #@12
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@15
    move-result-object v8

    #@16
    invoke-direct {p0, v8}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@19
    .line 3495
    new-instance v2, Ljava/util/ArrayList;

    #@1b
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@1e
    .line 3497
    .local v2, "apnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/dataconnection/ApnSetting;>;"
    const-string/jumbo v8, "dun"

    #@21
    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@24
    move-result v8

    #@25
    if-eqz v8, :cond_0

    #@27
    .line 3498
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->fetchDunApn()Lcom/android/internal/telephony/dataconnection/ApnSetting;

    #@2a
    move-result-object v3

    #@2b
    .line 3499
    .local v3, "dun":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    if-eqz v3, :cond_0

    #@2d
    .line 3500
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@30
    .line 3501
    new-instance v8, Ljava/lang/StringBuilder;

    #@32
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@35
    const-string/jumbo v9, "buildWaitingApns: X added APN_TYPE_DUN apnList="

    #@38
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v8

    #@3c
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v8

    #@40
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@43
    move-result-object v8

    #@44
    invoke-direct {p0, v8}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@47
    .line 3502
    return-object v2

    #@48
    .line 3506
    .end local v3    # "dun":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    :cond_0
    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    #@4a
    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    #@4d
    move-result-object v6

    #@4e
    check-cast v6, Lcom/android/internal/telephony/uicc/IccRecords;

    #@50
    .line 3507
    .local v6, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v6, :cond_2

    #@52
    invoke-virtual {v6}, Lcom/android/internal/telephony/uicc/IccRecords;->getOperatorNumeric()Ljava/lang/String;

    #@55
    move-result-object v5

    #@56
    .line 3514
    .local v5, "operator":Ljava/lang/String;
    :goto_0
    const/4 v7, 0x1

    #@57
    .line 3516
    .local v7, "usePreferred":Z
    :try_start_0
    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    #@59
    invoke-virtual {v8}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    #@5c
    move-result-object v8

    #@5d
    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@60
    move-result-object v8

    #@61
    const v9, 0x112007d

    #@64
    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getBoolean(I)Z
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@67
    move-result v8

    #@68
    if-eqz v8, :cond_3

    #@6a
    const/4 v7, 0x0

    #@6b
    .line 3522
    :goto_1
    if-eqz v7, :cond_1

    #@6d
    .line 3523
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->getPreferredApn()Lcom/android/internal/telephony/dataconnection/ApnSetting;

    #@70
    move-result-object v8

    #@71
    iput-object v8, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPreferredApn:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    #@73
    .line 3526
    :cond_1
    new-instance v8, Ljava/lang/StringBuilder;

    #@75
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@78
    const-string/jumbo v9, "buildWaitingApns: usePreferred="

    #@7b
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7e
    move-result-object v8

    #@7f
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@82
    move-result-object v8

    #@83
    .line 3527
    const-string/jumbo v9, " canSetPreferApn="

    #@86
    .line 3526
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@89
    move-result-object v8

    #@8a
    .line 3527
    iget-boolean v9, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mCanSetPreferApn:Z

    #@8c
    .line 3526
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@8f
    move-result-object v8

    #@90
    .line 3528
    const-string/jumbo v9, " mPreferredApn="

    #@93
    .line 3526
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@96
    move-result-object v8

    #@97
    .line 3528
    iget-object v9, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPreferredApn:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    #@99
    .line 3526
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@9c
    move-result-object v8

    #@9d
    .line 3529
    const-string/jumbo v9, " operator="

    #@a0
    .line 3526
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a3
    move-result-object v8

    #@a4
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a7
    move-result-object v8

    #@a8
    .line 3529
    const-string/jumbo v9, " radioTech="

    #@ab
    .line 3526
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ae
    move-result-object v8

    #@af
    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@b2
    move-result-object v8

    #@b3
    .line 3530
    const-string/jumbo v9, " IccRecords r="

    #@b6
    .line 3526
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b9
    move-result-object v8

    #@ba
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@bd
    move-result-object v8

    #@be
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c1
    move-result-object v8

    #@c2
    invoke-direct {p0, v8}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@c5
    .line 3533
    if-eqz v7, :cond_5

    #@c7
    iget-boolean v8, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mCanSetPreferApn:Z

    #@c9
    if-eqz v8, :cond_5

    #@cb
    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPreferredApn:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    #@cd
    if-eqz v8, :cond_5

    #@cf
    .line 3534
    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPreferredApn:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    #@d1
    invoke-virtual {v8, p1}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->canHandleType(Ljava/lang/String;)Z

    #@d4
    move-result v8

    #@d5
    .line 3533
    if-eqz v8, :cond_5

    #@d7
    .line 3536
    new-instance v8, Ljava/lang/StringBuilder;

    #@d9
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@dc
    const-string/jumbo v9, "buildWaitingApns: Preferred APN:"

    #@df
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e2
    move-result-object v8

    #@e3
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e6
    move-result-object v8

    #@e7
    const-string/jumbo v9, ":"

    #@ea
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ed
    move-result-object v8

    #@ee
    .line 3537
    iget-object v9, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPreferredApn:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    #@f0
    iget-object v9, v9, Lcom/android/internal/telephony/dataconnection/ApnSetting;->numeric:Ljava/lang/String;

    #@f2
    .line 3536
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f5
    move-result-object v8

    #@f6
    .line 3537
    const-string/jumbo v9, ":"

    #@f9
    .line 3536
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@fc
    move-result-object v8

    #@fd
    .line 3537
    iget-object v9, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPreferredApn:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    #@ff
    .line 3536
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@102
    move-result-object v8

    #@103
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@106
    move-result-object v8

    #@107
    invoke-direct {p0, v8}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@10a
    .line 3539
    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPreferredApn:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    #@10c
    iget-object v8, v8, Lcom/android/internal/telephony/dataconnection/ApnSetting;->numeric:Ljava/lang/String;

    #@10e
    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@111
    move-result v8

    #@112
    if-eqz v8, :cond_6

    #@114
    .line 3540
    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPreferredApn:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    #@116
    iget v8, v8, Lcom/android/internal/telephony/dataconnection/ApnSetting;->bearerBitmask:I

    #@118
    invoke-static {v8, p2}, Landroid/telephony/ServiceState;->bitmaskHasTech(II)Z

    #@11b
    move-result v8

    #@11c
    if-eqz v8, :cond_4

    #@11e
    .line 3541
    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPreferredApn:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    #@120
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@123
    .line 3542
    new-instance v8, Ljava/lang/StringBuilder;

    #@125
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@128
    const-string/jumbo v9, "buildWaitingApns: X added preferred apnList="

    #@12b
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12e
    move-result-object v8

    #@12f
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@132
    move-result-object v8

    #@133
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@136
    move-result-object v8

    #@137
    invoke-direct {p0, v8}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@13a
    .line 3543
    return-object v2

    #@13b
    .line 3507
    .end local v5    # "operator":Ljava/lang/String;
    .end local v7    # "usePreferred":Z
    :cond_2
    const-string/jumbo v5, ""

    #@13e
    .restart local v5    # "operator":Ljava/lang/String;
    goto/16 :goto_0

    #@140
    .line 3516
    .restart local v7    # "usePreferred":Z
    :cond_3
    const/4 v7, 0x1

    #@141
    goto/16 :goto_1

    #@143
    .line 3518
    :catch_0
    move-exception v4

    #@144
    .line 3519
    .local v4, "e":Landroid/content/res/Resources$NotFoundException;
    const-string/jumbo v8, "buildWaitingApns: usePreferred NotFoundException set to true"

    #@147
    invoke-direct {p0, v8}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@14a
    .line 3520
    const/4 v7, 0x1

    #@14b
    goto/16 :goto_1

    #@14d
    .line 3545
    .end local v4    # "e":Landroid/content/res/Resources$NotFoundException;
    :cond_4
    const-string/jumbo v8, "buildWaitingApns: no preferred APN"

    #@150
    invoke-direct {p0, v8}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@153
    .line 3546
    invoke-direct {p0, v11}, Lcom/android/internal/telephony/dataconnection/DcTracker;->setPreferredApn(I)V

    #@156
    .line 3547
    iput-object v10, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPreferredApn:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    #@158
    .line 3555
    :cond_5
    :goto_2
    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAllApnSettings:Ljava/util/ArrayList;

    #@15a
    if-eqz v8, :cond_9

    #@15c
    .line 3556
    new-instance v8, Ljava/lang/StringBuilder;

    #@15e
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@161
    const-string/jumbo v9, "buildWaitingApns: mAllApnSettings="

    #@164
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@167
    move-result-object v8

    #@168
    iget-object v9, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAllApnSettings:Ljava/util/ArrayList;

    #@16a
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@16d
    move-result-object v8

    #@16e
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@171
    move-result-object v8

    #@172
    invoke-direct {p0, v8}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@175
    .line 3557
    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAllApnSettings:Ljava/util/ArrayList;

    #@177
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@17a
    move-result-object v1

    #@17b
    .local v1, "apn$iterator":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@17e
    move-result v8

    #@17f
    if-eqz v8, :cond_a

    #@181
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@184
    move-result-object v0

    #@185
    check-cast v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;

    #@187
    .line 3558
    .local v0, "apn":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->canHandleType(Ljava/lang/String;)Z

    #@18a
    move-result v8

    #@18b
    if-eqz v8, :cond_8

    #@18d
    .line 3559
    iget v8, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->bearerBitmask:I

    #@18f
    invoke-static {v8, p2}, Landroid/telephony/ServiceState;->bitmaskHasTech(II)Z

    #@192
    move-result v8

    #@193
    if-eqz v8, :cond_7

    #@195
    .line 3560
    new-instance v8, Ljava/lang/StringBuilder;

    #@197
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@19a
    const-string/jumbo v9, "buildWaitingApns: adding apn="

    #@19d
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a0
    move-result-object v8

    #@1a1
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1a4
    move-result-object v8

    #@1a5
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a8
    move-result-object v8

    #@1a9
    invoke-direct {p0, v8}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@1ac
    .line 3561
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@1af
    goto :goto_3

    #@1b0
    .line 3550
    .end local v0    # "apn":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    .end local v1    # "apn$iterator":Ljava/util/Iterator;
    :cond_6
    const-string/jumbo v8, "buildWaitingApns: no preferred APN"

    #@1b3
    invoke-direct {p0, v8}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@1b6
    .line 3551
    invoke-direct {p0, v11}, Lcom/android/internal/telephony/dataconnection/DcTracker;->setPreferredApn(I)V

    #@1b9
    .line 3552
    iput-object v10, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPreferredApn:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    #@1bb
    goto :goto_2

    #@1bc
    .line 3564
    .restart local v0    # "apn":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    .restart local v1    # "apn$iterator":Ljava/util/Iterator;
    :cond_7
    new-instance v8, Ljava/lang/StringBuilder;

    #@1be
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@1c1
    const-string/jumbo v9, "buildWaitingApns: bearerBitmask:"

    #@1c4
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c7
    move-result-object v8

    #@1c8
    iget v9, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->bearerBitmask:I

    #@1ca
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1cd
    move-result-object v8

    #@1ce
    const-string/jumbo v9, " does "

    #@1d1
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d4
    move-result-object v8

    #@1d5
    .line 3565
    const-string/jumbo v9, "not include radioTech:"

    #@1d8
    .line 3564
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1db
    move-result-object v8

    #@1dc
    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1df
    move-result-object v8

    #@1e0
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e3
    move-result-object v8

    #@1e4
    invoke-direct {p0, v8}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@1e7
    goto :goto_3

    #@1e8
    .line 3569
    :cond_8
    new-instance v8, Ljava/lang/StringBuilder;

    #@1ea
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@1ed
    const-string/jumbo v9, "buildWaitingApns: couldn\'t handle requested ApnType="

    #@1f0
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f3
    move-result-object v8

    #@1f4
    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f7
    move-result-object v8

    #@1f8
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1fb
    move-result-object v8

    #@1fc
    invoke-direct {p0, v8}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@1ff
    goto/16 :goto_3

    #@201
    .line 3574
    .end local v0    # "apn":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    .end local v1    # "apn$iterator":Ljava/util/Iterator;
    :cond_9
    const-string/jumbo v8, "mAllApnSettings is null!"

    #@204
    invoke-direct {p0, v8}, Lcom/android/internal/telephony/dataconnection/DcTracker;->loge(Ljava/lang/String;)V

    #@207
    .line 3576
    :cond_a
    new-instance v8, Ljava/lang/StringBuilder;

    #@209
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@20c
    const-string/jumbo v9, "buildWaitingApns: "

    #@20f
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@212
    move-result-object v8

    #@213
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@216
    move-result v9

    #@217
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@21a
    move-result-object v8

    #@21b
    const-string/jumbo v9, " APNs in the list: "

    #@21e
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@221
    move-result-object v8

    #@222
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@225
    move-result-object v8

    #@226
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@229
    move-result-object v8

    #@22a
    invoke-direct {p0, v8}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@22d
    .line 3577
    return-object v2
.end method

.method private cancelReconnectAlarm(Lcom/android/internal/telephony/dataconnection/ApnContext;)V
    .locals 5
    .param p1, "apnContext"    # Lcom/android/internal/telephony/dataconnection/ApnContext;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 1891
    if-nez p1, :cond_0

    #@3
    return-void

    #@4
    .line 1893
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getReconnectIntent()Landroid/app/PendingIntent;

    #@7
    move-result-object v1

    #@8
    .line 1895
    .local v1, "intent":Landroid/app/PendingIntent;
    if-eqz v1, :cond_1

    #@a
    .line 1897
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    #@c
    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    #@f
    move-result-object v2

    #@10
    const-string/jumbo v3, "alarm"

    #@13
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@16
    move-result-object v0

    #@17
    check-cast v0, Landroid/app/AlarmManager;

    #@19
    .line 1898
    .local v0, "am":Landroid/app/AlarmManager;
    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    #@1c
    .line 1899
    invoke-virtual {p1, v4}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setReconnectIntent(Landroid/app/PendingIntent;)V

    #@1f
    .line 1890
    .end local v0    # "am":Landroid/app/AlarmManager;
    :cond_1
    return-void
.end method

.method private checkForCompatibleConnectedApnContext(Lcom/android/internal/telephony/dataconnection/ApnContext;)Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;
    .locals 11
    .param p1, "apnContext"    # Lcom/android/internal/telephony/dataconnection/ApnContext;

    #@0
    .prologue
    const/4 v10, 0x0

    #@1
    .line 2532
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    #@4
    move-result-object v1

    #@5
    .line 2533
    .local v1, "apnType":Ljava/lang/String;
    const/4 v5, 0x0

    #@6
    .line 2535
    .local v5, "dunSetting":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    const-string/jumbo v8, "dun"

    #@9
    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@c
    move-result v8

    #@d
    if-eqz v8, :cond_0

    #@f
    .line 2536
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->fetchDunApn()Lcom/android/internal/telephony/dataconnection/ApnSetting;

    #@12
    move-result-object v5

    #@13
    .line 2539
    .end local v5    # "dunSetting":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    :cond_0
    new-instance v8, Ljava/lang/StringBuilder;

    #@15
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@18
    const-string/jumbo v9, "checkForCompatibleConnectedApnContext: apnContext="

    #@1b
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v8

    #@1f
    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v8

    #@23
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26
    move-result-object v8

    #@27
    invoke-direct {p0, v8}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@2a
    .line 2542
    const/4 v7, 0x0

    #@2b
    .line 2543
    .local v7, "potentialDcac":Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;
    const/4 v6, 0x0

    #@2c
    .line 2544
    .local v6, "potentialApnCtx":Lcom/android/internal/telephony/dataconnection/ApnContext;
    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    #@2e
    invoke-virtual {v8}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    #@31
    move-result-object v8

    #@32
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@35
    move-result-object v3

    #@36
    .end local v6    # "potentialApnCtx":Lcom/android/internal/telephony/dataconnection/ApnContext;
    .end local v7    # "potentialDcac":Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;
    .local v3, "curApnCtx$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@39
    move-result v8

    #@3a
    if-eqz v8, :cond_3

    #@3c
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@3f
    move-result-object v2

    #@40
    check-cast v2, Lcom/android/internal/telephony/dataconnection/ApnContext;

    #@42
    .line 2545
    .local v2, "curApnCtx":Lcom/android/internal/telephony/dataconnection/ApnContext;
    invoke-virtual {v2}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getDcAc()Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;

    #@45
    move-result-object v4

    #@46
    .line 2546
    .local v4, "curDcac":Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;
    if-eqz v4, :cond_1

    #@48
    .line 2547
    invoke-virtual {v2}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnSetting()Lcom/android/internal/telephony/dataconnection/ApnSetting;

    #@4b
    move-result-object v0

    #@4c
    .line 2548
    .local v0, "apnSetting":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    new-instance v8, Ljava/lang/StringBuilder;

    #@4e
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@51
    const-string/jumbo v9, "apnSetting: "

    #@54
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@57
    move-result-object v8

    #@58
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@5b
    move-result-object v8

    #@5c
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5f
    move-result-object v8

    #@60
    invoke-direct {p0, v8}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@63
    .line 2549
    if-eqz v5, :cond_2

    #@65
    .line 2550
    invoke-virtual {v5, v0}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->equals(Ljava/lang/Object;)Z

    #@68
    move-result v8

    #@69
    if-eqz v8, :cond_1

    #@6b
    .line 2551
    invoke-static {}, Lcom/android/internal/telephony/dataconnection/DcTracker;->-getcom-android-internal-telephony-DctConstants$StateSwitchesValues()[I

    #@6e
    move-result-object v8

    #@6f
    invoke-virtual {v2}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getState()Lcom/android/internal/telephony/DctConstants$State;

    #@72
    move-result-object v9

    #@73
    invoke-virtual {v9}, Lcom/android/internal/telephony/DctConstants$State;->ordinal()I

    #@76
    move-result v9

    #@77
    aget v8, v8, v9

    #@79
    packed-switch v8, :pswitch_data_0

    #@7c
    :pswitch_0
    goto :goto_0

    #@7d
    .line 2554
    :pswitch_1
    new-instance v8, Ljava/lang/StringBuilder;

    #@7f
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@82
    const-string/jumbo v9, "checkForCompatibleConnectedApnContext: found dun conn="

    #@85
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@88
    move-result-object v8

    #@89
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@8c
    move-result-object v8

    #@8d
    .line 2556
    const-string/jumbo v9, " curApnCtx="

    #@90
    .line 2554
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@93
    move-result-object v8

    #@94
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@97
    move-result-object v8

    #@98
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9b
    move-result-object v8

    #@9c
    invoke-direct {p0, v8}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@9f
    .line 2558
    return-object v4

    #@a0
    .line 2561
    :pswitch_2
    move-object v7, v4

    #@a1
    .line 2562
    .local v7, "potentialDcac":Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;
    move-object v6, v2

    #@a2
    .local v6, "potentialApnCtx":Lcom/android/internal/telephony/dataconnection/ApnContext;
    goto :goto_0

    #@a3
    .line 2568
    .end local v6    # "potentialApnCtx":Lcom/android/internal/telephony/dataconnection/ApnContext;
    .end local v7    # "potentialDcac":Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;
    :cond_2
    if-eqz v0, :cond_1

    #@a5
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->canHandleType(Ljava/lang/String;)Z

    #@a8
    move-result v8

    #@a9
    if-eqz v8, :cond_1

    #@ab
    .line 2569
    invoke-static {}, Lcom/android/internal/telephony/dataconnection/DcTracker;->-getcom-android-internal-telephony-DctConstants$StateSwitchesValues()[I

    #@ae
    move-result-object v8

    #@af
    invoke-virtual {v2}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getState()Lcom/android/internal/telephony/DctConstants$State;

    #@b2
    move-result-object v9

    #@b3
    invoke-virtual {v9}, Lcom/android/internal/telephony/DctConstants$State;->ordinal()I

    #@b6
    move-result v9

    #@b7
    aget v8, v8, v9

    #@b9
    packed-switch v8, :pswitch_data_1

    #@bc
    :pswitch_3
    goto/16 :goto_0

    #@be
    .line 2572
    :pswitch_4
    new-instance v8, Ljava/lang/StringBuilder;

    #@c0
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@c3
    const-string/jumbo v9, "checkForCompatibleConnectedApnContext: found canHandle conn="

    #@c6
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c9
    move-result-object v8

    #@ca
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@cd
    move-result-object v8

    #@ce
    .line 2574
    const-string/jumbo v9, " curApnCtx="

    #@d1
    .line 2572
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d4
    move-result-object v8

    #@d5
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@d8
    move-result-object v8

    #@d9
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@dc
    move-result-object v8

    #@dd
    invoke-direct {p0, v8}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@e0
    .line 2576
    return-object v4

    #@e1
    .line 2579
    :pswitch_5
    move-object v7, v4

    #@e2
    .line 2580
    .restart local v7    # "potentialDcac":Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;
    move-object v6, v2

    #@e3
    .restart local v6    # "potentialApnCtx":Lcom/android/internal/telephony/dataconnection/ApnContext;
    goto/16 :goto_0

    #@e5
    .line 2592
    .end local v0    # "apnSetting":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    .end local v2    # "curApnCtx":Lcom/android/internal/telephony/dataconnection/ApnContext;
    .end local v4    # "curDcac":Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;
    .end local v6    # "potentialApnCtx":Lcom/android/internal/telephony/dataconnection/ApnContext;
    .end local v7    # "potentialDcac":Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;
    :cond_3
    if-eqz v7, :cond_4

    #@e7
    .line 2594
    new-instance v8, Ljava/lang/StringBuilder;

    #@e9
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@ec
    const-string/jumbo v9, "checkForCompatibleConnectedApnContext: found potential conn="

    #@ef
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f2
    move-result-object v8

    #@f3
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@f6
    move-result-object v8

    #@f7
    .line 2595
    const-string/jumbo v9, " curApnCtx="

    #@fa
    .line 2594
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@fd
    move-result-object v8

    #@fe
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@101
    move-result-object v8

    #@102
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@105
    move-result-object v8

    #@106
    invoke-direct {p0, v8}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@109
    .line 2597
    return-object v7

    #@10a
    .line 2600
    :cond_4
    new-instance v8, Ljava/lang/StringBuilder;

    #@10c
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@10f
    const-string/jumbo v9, "checkForCompatibleConnectedApnContext: NO conn apnContext="

    #@112
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@115
    move-result-object v8

    #@116
    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@119
    move-result-object v8

    #@11a
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@11d
    move-result-object v8

    #@11e
    invoke-direct {p0, v8}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@121
    .line 2601
    return-object v10

    #@122
    .line 2551
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch

    #@132
    .line 2569
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_5
    .end packed-switch
.end method

.method private cleanUpAllConnections(ZLjava/lang/String;)Z
    .locals 8
    .param p1, "tearDown"    # Z
    .param p2, "reason"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1660
    new-instance v5, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v6, "cleanUpAllConnections: tearDown="

    #@8
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v5

    #@c
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@f
    move-result-object v5

    #@10
    const-string/jumbo v6, " reason="

    #@13
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v5

    #@17
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v5

    #@1b
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v5

    #@1f
    invoke-direct {p0, v5}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@22
    .line 1661
    const/4 v3, 0x0

    #@23
    .line 1662
    .local v3, "didDisconnect":Z
    const/4 v4, 0x0

    #@24
    .line 1665
    .local v4, "disableMeteredOnly":Z
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@27
    move-result v5

    #@28
    if-nez v5, :cond_0

    #@2a
    .line 1666
    const-string/jumbo v5, "specificDisabled"

    #@2d
    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@30
    move-result v5

    #@31
    if-nez v5, :cond_3

    #@33
    .line 1667
    const-string/jumbo v5, "roamingOn"

    #@36
    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@39
    move-result v5

    #@3a
    .line 1666
    if-nez v5, :cond_3

    #@3c
    .line 1668
    const-string/jumbo v5, "carrierActionDisableMeteredApn"

    #@3f
    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@42
    move-result v4

    #@43
    .line 1671
    .end local v4    # "disableMeteredOnly":Z
    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    #@45
    invoke-virtual {v5}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    #@48
    move-result-object v5

    #@49
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@4c
    move-result-object v1

    #@4d
    .local v1, "apnContext$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@50
    move-result v5

    #@51
    if-eqz v5, :cond_5

    #@53
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@56
    move-result-object v0

    #@57
    check-cast v0, Lcom/android/internal/telephony/dataconnection/ApnContext;

    #@59
    .line 1672
    .local v0, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->isDisconnected()Z

    #@5c
    move-result v5

    #@5d
    if-nez v5, :cond_2

    #@5f
    const/4 v3, 0x1

    #@60
    .line 1673
    :cond_2
    if-eqz v4, :cond_4

    #@62
    .line 1676
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnSetting()Lcom/android/internal/telephony/dataconnection/ApnSetting;

    #@65
    move-result-object v2

    #@66
    .line 1677
    .local v2, "apnSetting":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    if-eqz v2, :cond_1

    #@68
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    #@6a
    invoke-virtual {v5}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    #@6d
    move-result-object v5

    #@6e
    .line 1678
    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    #@70
    invoke-virtual {v6}, Lcom/android/internal/telephony/Phone;->getSubId()I

    #@73
    move-result v6

    #@74
    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    #@76
    invoke-virtual {v7}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    #@79
    move-result-object v7

    #@7a
    invoke-virtual {v7}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    #@7d
    move-result v7

    #@7e
    .line 1677
    invoke-virtual {v2, v5, v6, v7}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->isMetered(Landroid/content/Context;IZ)Z

    #@81
    move-result v5

    #@82
    if-eqz v5, :cond_1

    #@84
    .line 1679
    new-instance v5, Ljava/lang/StringBuilder;

    #@86
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@89
    const-string/jumbo v6, "clean up metered ApnContext Type: "

    #@8c
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8f
    move-result-object v5

    #@90
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    #@93
    move-result-object v6

    #@94
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@97
    move-result-object v5

    #@98
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9b
    move-result-object v5

    #@9c
    invoke-direct {p0, v5}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@9f
    .line 1680
    invoke-virtual {v0, p2}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setReason(Ljava/lang/String;)V

    #@a2
    .line 1681
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->cleanUpConnection(ZLcom/android/internal/telephony/dataconnection/ApnContext;)V

    #@a5
    goto :goto_1

    #@a6
    .line 1666
    .end local v0    # "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    .end local v1    # "apnContext$iterator":Ljava/util/Iterator;
    .end local v2    # "apnSetting":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    .restart local v4    # "disableMeteredOnly":Z
    :cond_3
    const/4 v4, 0x1

    #@a7
    goto :goto_0

    #@a8
    .line 1685
    .end local v4    # "disableMeteredOnly":Z
    .restart local v0    # "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    .restart local v1    # "apnContext$iterator":Ljava/util/Iterator;
    :cond_4
    invoke-virtual {v0, p2}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setReason(Ljava/lang/String;)V

    #@ab
    .line 1686
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->cleanUpConnection(ZLcom/android/internal/telephony/dataconnection/ApnContext;)V

    #@ae
    goto :goto_1

    #@af
    .line 1690
    .end local v0    # "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    :cond_5
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->stopNetStatPoll()V

    #@b2
    .line 1691
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->stopDataStallAlarm()V

    #@b5
    .line 1694
    const-string/jumbo v5, "default"

    #@b8
    iput-object v5, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mRequestedApnType:Ljava/lang/String;

    #@ba
    .line 1696
    new-instance v5, Ljava/lang/StringBuilder;

    #@bc
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@bf
    const-string/jumbo v6, "cleanUpConnection: mDisconnectPendingCount = "

    #@c2
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c5
    move-result-object v5

    #@c6
    iget v6, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDisconnectPendingCount:I

    #@c8
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@cb
    move-result-object v5

    #@cc
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@cf
    move-result-object v5

    #@d0
    invoke-direct {p0, v5}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@d3
    .line 1697
    if-eqz p1, :cond_6

    #@d5
    iget v5, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDisconnectPendingCount:I

    #@d7
    if-nez v5, :cond_6

    #@d9
    .line 1698
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->notifyDataDisconnectComplete()V

    #@dc
    .line 1699
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->notifyAllDataDisconnected()V

    #@df
    .line 1702
    :cond_6
    return v3
.end method

.method private cleanUpConnection(ZLcom/android/internal/telephony/dataconnection/ApnContext;)V
    .locals 10
    .param p1, "tearDown"    # Z
    .param p2, "apnContext"    # Lcom/android/internal/telephony/dataconnection/ApnContext;

    #@0
    .prologue
    const/4 v9, 0x0

    #@1
    .line 1728
    if-nez p2, :cond_0

    #@3
    .line 1729
    const-string/jumbo v6, "cleanUpConnection: apn context is null"

    #@6
    invoke-direct {p0, v6}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@9
    .line 1730
    return-void

    #@a
    .line 1733
    :cond_0
    invoke-virtual {p2}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getDcAc()Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;

    #@d
    move-result-object v0

    #@e
    .line 1734
    .local v0, "dcac":Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;
    new-instance v6, Ljava/lang/StringBuilder;

    #@10
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@13
    const-string/jumbo v7, "cleanUpConnection: tearDown="

    #@16
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v6

    #@1a
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v6

    #@1e
    const-string/jumbo v7, " reason="

    #@21
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v6

    #@25
    .line 1735
    invoke-virtual {p2}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getReason()Ljava/lang/String;

    #@28
    move-result-object v7

    #@29
    .line 1734
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v6

    #@2d
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@30
    move-result-object v5

    #@31
    .line 1737
    .local v5, "str":Ljava/lang/String;
    invoke-virtual {p2, v5}, Lcom/android/internal/telephony/dataconnection/ApnContext;->requestLog(Ljava/lang/String;)V

    #@34
    .line 1738
    if-eqz p1, :cond_9

    #@36
    .line 1739
    invoke-virtual {p2}, Lcom/android/internal/telephony/dataconnection/ApnContext;->isDisconnected()Z

    #@39
    move-result v6

    #@3a
    if-eqz v6, :cond_4

    #@3c
    .line 1742
    sget-object v6, Lcom/android/internal/telephony/DctConstants$State;->IDLE:Lcom/android/internal/telephony/DctConstants$State;

    #@3e
    invoke-virtual {p2, v6}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setState(Lcom/android/internal/telephony/DctConstants$State;)V

    #@41
    .line 1743
    invoke-virtual {p2}, Lcom/android/internal/telephony/dataconnection/ApnContext;->isReady()Z

    #@44
    move-result v6

    #@45
    if-nez v6, :cond_2

    #@47
    .line 1744
    if-eqz v0, :cond_1

    #@49
    .line 1745
    const-string/jumbo v5, "cleanUpConnection: teardown, disconnected, !ready"

    #@4c
    .line 1746
    new-instance v6, Ljava/lang/StringBuilder;

    #@4e
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@51
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@54
    move-result-object v6

    #@55
    const-string/jumbo v7, " apnContext="

    #@58
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5b
    move-result-object v6

    #@5c
    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@5f
    move-result-object v6

    #@60
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@63
    move-result-object v6

    #@64
    invoke-direct {p0, v6}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@67
    .line 1747
    invoke-virtual {p2, v5}, Lcom/android/internal/telephony/dataconnection/ApnContext;->requestLog(Ljava/lang/String;)V

    #@6a
    .line 1748
    const-string/jumbo v6, ""

    #@6d
    invoke-virtual {v0, p2, v6, v9}, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->tearDown(Lcom/android/internal/telephony/dataconnection/ApnContext;Ljava/lang/String;Landroid/os/Message;)V

    #@70
    .line 1750
    :cond_1
    invoke-virtual {p2, v9}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setDataConnectionAc(Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;)V

    #@73
    .line 1807
    :cond_2
    :goto_0
    if-eqz v0, :cond_3

    #@75
    .line 1808
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->cancelReconnectAlarm(Lcom/android/internal/telephony/dataconnection/ApnContext;)V

    #@78
    .line 1810
    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    #@7a
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@7d
    const-string/jumbo v7, "cleanUpConnection: X tearDown="

    #@80
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@83
    move-result-object v6

    #@84
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@87
    move-result-object v6

    #@88
    const-string/jumbo v7, " reason="

    #@8b
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8e
    move-result-object v6

    #@8f
    invoke-virtual {p2}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getReason()Ljava/lang/String;

    #@92
    move-result-object v7

    #@93
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@96
    move-result-object v6

    #@97
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9a
    move-result-object v5

    #@9b
    .line 1811
    new-instance v6, Ljava/lang/StringBuilder;

    #@9d
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@a0
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a3
    move-result-object v6

    #@a4
    const-string/jumbo v7, " apnContext="

    #@a7
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@aa
    move-result-object v6

    #@ab
    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@ae
    move-result-object v6

    #@af
    const-string/jumbo v7, " dcac="

    #@b2
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b5
    move-result-object v6

    #@b6
    invoke-virtual {p2}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getDcAc()Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;

    #@b9
    move-result-object v7

    #@ba
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@bd
    move-result-object v6

    #@be
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c1
    move-result-object v6

    #@c2
    invoke-direct {p0, v6}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@c5
    .line 1812
    invoke-virtual {p2, v5}, Lcom/android/internal/telephony/dataconnection/ApnContext;->requestLog(Ljava/lang/String;)V

    #@c8
    .line 1727
    return-void

    #@c9
    .line 1754
    :cond_4
    if-eqz v0, :cond_8

    #@cb
    .line 1755
    invoke-virtual {p2}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getState()Lcom/android/internal/telephony/DctConstants$State;

    #@ce
    move-result-object v6

    #@cf
    sget-object v7, Lcom/android/internal/telephony/DctConstants$State;->DISCONNECTING:Lcom/android/internal/telephony/DctConstants$State;

    #@d1
    if-eq v6, v7, :cond_2

    #@d3
    .line 1756
    const/4 v1, 0x0

    #@d4
    .line 1757
    .local v1, "disconnectAll":Z
    const-string/jumbo v6, "dun"

    #@d7
    invoke-virtual {p2}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    #@da
    move-result-object v7

    #@db
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@de
    move-result v6

    #@df
    if-eqz v6, :cond_5

    #@e1
    .line 1760
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->teardownForDun()Z

    #@e4
    move-result v6

    #@e5
    if-eqz v6, :cond_5

    #@e7
    .line 1762
    const-string/jumbo v6, "cleanUpConnection: disconnectAll DUN connection"

    #@ea
    invoke-direct {p0, v6}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@ed
    .line 1768
    const/4 v1, 0x1

    #@ee
    .line 1771
    :cond_5
    invoke-virtual {p2}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getConnectionGeneration()I

    #@f1
    move-result v2

    #@f2
    .line 1772
    .local v2, "generation":I
    new-instance v6, Ljava/lang/StringBuilder;

    #@f4
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@f7
    const-string/jumbo v7, "cleanUpConnection: tearing down"

    #@fa
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@fd
    move-result-object v7

    #@fe
    if-eqz v1, :cond_6

    #@100
    const-string/jumbo v6, " all"

    #@103
    :goto_1
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@106
    move-result-object v6

    #@107
    .line 1773
    const-string/jumbo v7, " using gen#"

    #@10a
    .line 1772
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10d
    move-result-object v6

    #@10e
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@111
    move-result-object v6

    #@112
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@115
    move-result-object v5

    #@116
    .line 1774
    new-instance v6, Ljava/lang/StringBuilder;

    #@118
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@11b
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11e
    move-result-object v6

    #@11f
    const-string/jumbo v7, "apnContext="

    #@122
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@125
    move-result-object v6

    #@126
    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@129
    move-result-object v6

    #@12a
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@12d
    move-result-object v6

    #@12e
    invoke-direct {p0, v6}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@131
    .line 1775
    invoke-virtual {p2, v5}, Lcom/android/internal/telephony/dataconnection/ApnContext;->requestLog(Ljava/lang/String;)V

    #@134
    .line 1777
    new-instance v4, Landroid/util/Pair;

    #@136
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@139
    move-result-object v6

    #@13a
    invoke-direct {v4, p2, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    #@13d
    .line 1778
    .local v4, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/internal/telephony/dataconnection/ApnContext;Ljava/lang/Integer;>;"
    const v6, 0x4200f

    #@140
    invoke-virtual {p0, v6, v4}, Lcom/android/internal/telephony/dataconnection/DcTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@143
    move-result-object v3

    #@144
    .line 1779
    .local v3, "msg":Landroid/os/Message;
    if-eqz v1, :cond_7

    #@146
    .line 1780
    invoke-virtual {p2}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getDcAc()Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;

    #@149
    move-result-object v6

    #@14a
    invoke-virtual {p2}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getReason()Ljava/lang/String;

    #@14d
    move-result-object v7

    #@14e
    invoke-virtual {v6, v7, v3}, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->tearDownAll(Ljava/lang/String;Landroid/os/Message;)V

    #@151
    .line 1785
    :goto_2
    sget-object v6, Lcom/android/internal/telephony/DctConstants$State;->DISCONNECTING:Lcom/android/internal/telephony/DctConstants$State;

    #@153
    invoke-virtual {p2, v6}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setState(Lcom/android/internal/telephony/DctConstants$State;)V

    #@156
    .line 1786
    iget v6, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDisconnectPendingCount:I

    #@158
    add-int/lit8 v6, v6, 0x1

    #@15a
    iput v6, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDisconnectPendingCount:I

    #@15c
    goto/16 :goto_0

    #@15e
    .line 1772
    .end local v3    # "msg":Landroid/os/Message;
    .end local v4    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/internal/telephony/dataconnection/ApnContext;Ljava/lang/Integer;>;"
    :cond_6
    const-string/jumbo v6, ""

    #@161
    goto :goto_1

    #@162
    .line 1782
    .restart local v3    # "msg":Landroid/os/Message;
    .restart local v4    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/internal/telephony/dataconnection/ApnContext;Ljava/lang/Integer;>;"
    :cond_7
    invoke-virtual {p2}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getDcAc()Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;

    #@165
    move-result-object v6

    #@166
    .line 1783
    invoke-virtual {p2}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getReason()Ljava/lang/String;

    #@169
    move-result-object v7

    #@16a
    .line 1782
    invoke-virtual {v6, p2, v7, v3}, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->tearDown(Lcom/android/internal/telephony/dataconnection/ApnContext;Ljava/lang/String;Landroid/os/Message;)V

    #@16d
    goto :goto_2

    #@16e
    .line 1791
    .end local v1    # "disconnectAll":Z
    .end local v2    # "generation":I
    .end local v3    # "msg":Landroid/os/Message;
    .end local v4    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/internal/telephony/dataconnection/ApnContext;Ljava/lang/Integer;>;"
    :cond_8
    sget-object v6, Lcom/android/internal/telephony/DctConstants$State;->IDLE:Lcom/android/internal/telephony/DctConstants$State;

    #@170
    invoke-virtual {p2, v6}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setState(Lcom/android/internal/telephony/DctConstants$State;)V

    #@173
    .line 1792
    const-string/jumbo v6, "cleanUpConnection: connected, bug no DCAC"

    #@176
    invoke-virtual {p2, v6}, Lcom/android/internal/telephony/dataconnection/ApnContext;->requestLog(Ljava/lang/String;)V

    #@179
    .line 1793
    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    #@17b
    invoke-virtual {p2}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getReason()Ljava/lang/String;

    #@17e
    move-result-object v7

    #@17f
    .line 1794
    invoke-virtual {p2}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    #@182
    move-result-object v8

    #@183
    .line 1793
    invoke-virtual {v6, v7, v8}, Lcom/android/internal/telephony/Phone;->notifyDataConnection(Ljava/lang/String;Ljava/lang/String;)V

    #@186
    goto/16 :goto_0

    #@188
    .line 1799
    :cond_9
    if-eqz v0, :cond_a

    #@18a
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->reqReset()V

    #@18d
    .line 1800
    :cond_a
    sget-object v6, Lcom/android/internal/telephony/DctConstants$State;->IDLE:Lcom/android/internal/telephony/DctConstants$State;

    #@18f
    invoke-virtual {p2, v6}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setState(Lcom/android/internal/telephony/DctConstants$State;)V

    #@192
    .line 1801
    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    #@194
    invoke-virtual {p2}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getReason()Ljava/lang/String;

    #@197
    move-result-object v7

    #@198
    invoke-virtual {p2}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    #@19b
    move-result-object v8

    #@19c
    invoke-virtual {v6, v7, v8}, Lcom/android/internal/telephony/Phone;->notifyDataConnection(Ljava/lang/String;Ljava/lang/String;)V

    #@19f
    .line 1802
    invoke-virtual {p2, v9}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setDataConnectionAc(Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;)V

    #@1a2
    goto/16 :goto_0
.end method

.method private cleanUpConnectionsOnUpdatedApns(Z)V
    .locals 9
    .param p1, "tearDown"    # Z

    #@0
    .prologue
    .line 4363
    new-instance v7, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v8, "cleanUpConnectionsOnUpdatedApns: tearDown="

    #@8
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v7

    #@c
    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@f
    move-result-object v7

    #@10
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13
    move-result-object v7

    #@14
    invoke-direct {p0, v7}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@17
    .line 4364
    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAllApnSettings:Ljava/util/ArrayList;

    #@19
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    #@1c
    move-result v7

    #@1d
    if-eqz v7, :cond_3

    #@1f
    .line 4365
    const-string/jumbo v7, "apnChanged"

    #@22
    invoke-direct {p0, p1, v7}, Lcom/android/internal/telephony/dataconnection/DcTracker;->cleanUpAllConnections(ZLjava/lang/String;)Z

    #@25
    .line 4398
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->isConnected()Z

    #@28
    move-result v7

    #@29
    if-nez v7, :cond_1

    #@2b
    .line 4399
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->stopNetStatPoll()V

    #@2e
    .line 4400
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->stopDataStallAlarm()V

    #@31
    .line 4403
    :cond_1
    const-string/jumbo v7, "default"

    #@34
    iput-object v7, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mRequestedApnType:Ljava/lang/String;

    #@36
    .line 4405
    new-instance v7, Ljava/lang/StringBuilder;

    #@38
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@3b
    const-string/jumbo v8, "mDisconnectPendingCount = "

    #@3e
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v7

    #@42
    iget v8, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDisconnectPendingCount:I

    #@44
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@47
    move-result-object v7

    #@48
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4b
    move-result-object v7

    #@4c
    invoke-direct {p0, v7}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@4f
    .line 4406
    if-eqz p1, :cond_2

    #@51
    iget v7, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDisconnectPendingCount:I

    #@53
    if-nez v7, :cond_2

    #@55
    .line 4407
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->notifyDataDisconnectComplete()V

    #@58
    .line 4408
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->notifyAllDataDisconnected()V

    #@5b
    .line 4362
    :cond_2
    return-void

    #@5c
    .line 4367
    :cond_3
    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    #@5e
    invoke-virtual {v7}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    #@61
    move-result-object v7

    #@62
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@65
    move-result-object v1

    #@66
    .local v1, "apnContext$iterator":Ljava/util/Iterator;
    :cond_4
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@69
    move-result v7

    #@6a
    if-eqz v7, :cond_0

    #@6c
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@6f
    move-result-object v0

    #@70
    check-cast v0, Lcom/android/internal/telephony/dataconnection/ApnContext;

    #@72
    .line 4370
    .local v0, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    const/4 v2, 0x1

    #@73
    .line 4371
    .local v2, "cleanUpApn":Z
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getWaitingApns()Ljava/util/ArrayList;

    #@76
    move-result-object v3

    #@77
    .line 4373
    .local v3, "currentWaitingApns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/dataconnection/ApnSetting;>;"
    if-eqz v3, :cond_5

    #@79
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->isDisconnected()Z

    #@7c
    move-result v7

    #@7d
    if-eqz v7, :cond_6

    #@7f
    .line 4391
    :cond_5
    :goto_1
    if-eqz v2, :cond_4

    #@81
    .line 4392
    const-string/jumbo v7, "apnChanged"

    #@84
    invoke-virtual {v0, v7}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setReason(Ljava/lang/String;)V

    #@87
    .line 4393
    const/4 v7, 0x1

    #@88
    invoke-direct {p0, v7, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->cleanUpConnection(ZLcom/android/internal/telephony/dataconnection/ApnContext;)V

    #@8b
    goto :goto_0

    #@8c
    .line 4374
    :cond_6
    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    #@8e
    invoke-virtual {v7}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    #@91
    move-result-object v7

    #@92
    invoke-virtual {v7}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    #@95
    move-result v5

    #@96
    .line 4376
    .local v5, "radioTech":I
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    #@99
    move-result-object v7

    #@9a
    .line 4375
    invoke-direct {p0, v7, v5}, Lcom/android/internal/telephony/dataconnection/DcTracker;->buildWaitingApns(Ljava/lang/String;I)Ljava/util/ArrayList;

    #@9d
    move-result-object v6

    #@9e
    .line 4378
    .local v6, "waitingApns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/dataconnection/ApnSetting;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    #@a1
    move-result v7

    #@a2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@a5
    move-result v8

    #@a6
    if-ne v7, v8, :cond_5

    #@a8
    .line 4379
    const/4 v2, 0x0

    #@a9
    .line 4380
    const/4 v4, 0x0

    #@aa
    .local v4, "i":I
    :goto_2
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    #@ad
    move-result v7

    #@ae
    if-ge v4, v7, :cond_5

    #@b0
    .line 4381
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@b3
    move-result-object v7

    #@b4
    check-cast v7, Lcom/android/internal/telephony/dataconnection/ApnSetting;

    #@b6
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@b9
    move-result-object v8

    #@ba
    invoke-virtual {v7, v8}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->equals(Ljava/lang/Object;)Z

    #@bd
    move-result v7

    #@be
    if-nez v7, :cond_7

    #@c0
    .line 4383
    const/4 v2, 0x1

    #@c1
    .line 4384
    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setWaitingApns(Ljava/util/ArrayList;)V

    #@c4
    goto :goto_1

    #@c5
    .line 4380
    :cond_7
    add-int/lit8 v4, v4, 0x1

    #@c7
    goto :goto_2
.end method

.method private completeConnection(Lcom/android/internal/telephony/dataconnection/ApnContext;)V
    .locals 6
    .param p1, "apnContext"    # Lcom/android/internal/telephony/dataconnection/ApnContext;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    const/4 v5, 0x0

    #@2
    .line 2813
    new-instance v2, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    const-string/jumbo v3, "completeConnection: successful, notify the world apnContext="

    #@a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    move-result-object v2

    #@e
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v2

    #@12
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@15
    move-result-object v2

    #@16
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@19
    .line 2815
    iget-boolean v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mIsProvisioning:Z

    #@1b
    if-eqz v2, :cond_0

    #@1d
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mProvisioningUrl:Ljava/lang/String;

    #@1f
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@22
    move-result v2

    #@23
    if-eqz v2, :cond_2

    #@25
    .line 2831
    :cond_0
    :goto_0
    iput-boolean v5, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mIsProvisioning:Z

    #@27
    .line 2832
    iput-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mProvisioningUrl:Ljava/lang/String;

    #@29
    .line 2833
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mProvisioningSpinner:Landroid/app/ProgressDialog;

    #@2b
    if-eqz v2, :cond_1

    #@2d
    .line 2835
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mProvisioningSpinner:Landroid/app/ProgressDialog;

    #@2f
    .line 2834
    const v3, 0x4202a

    #@32
    invoke-virtual {p0, v3, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@35
    move-result-object v2

    #@36
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->sendMessage(Landroid/os/Message;)Z

    #@39
    .line 2838
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    #@3b
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getReason()Ljava/lang/String;

    #@3e
    move-result-object v3

    #@3f
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    #@42
    move-result-object v4

    #@43
    invoke-virtual {v2, v3, v4}, Lcom/android/internal/telephony/Phone;->notifyDataConnection(Ljava/lang/String;Ljava/lang/String;)V

    #@46
    .line 2839
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->startNetStatPoll()V

    #@49
    .line 2840
    invoke-direct {p0, v5}, Lcom/android/internal/telephony/dataconnection/DcTracker;->startDataStallAlarm(Z)V

    #@4c
    .line 2811
    return-void

    #@4d
    .line 2817
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    #@4f
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@52
    const-string/jumbo v3, "completeConnection: MOBILE_PROVISIONING_ACTION url="

    #@55
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@58
    move-result-object v2

    #@59
    .line 2818
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mProvisioningUrl:Ljava/lang/String;

    #@5b
    .line 2817
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5e
    move-result-object v2

    #@5f
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@62
    move-result-object v2

    #@63
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@66
    .line 2820
    const-string/jumbo v2, "android.intent.action.MAIN"

    #@69
    .line 2821
    const-string/jumbo v3, "android.intent.category.APP_BROWSER"

    #@6c
    .line 2820
    invoke-static {v2, v3}, Landroid/content/Intent;->makeMainSelectorActivity(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@6f
    move-result-object v1

    #@70
    .line 2822
    .local v1, "newIntent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mProvisioningUrl:Ljava/lang/String;

    #@72
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    #@75
    move-result-object v2

    #@76
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    #@79
    .line 2823
    const/high16 v2, 0x10400000

    #@7b
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    #@7e
    .line 2826
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    #@80
    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    #@83
    move-result-object v2

    #@84
    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@87
    goto :goto_0

    #@88
    .line 2827
    :catch_0
    move-exception v0

    #@89
    .line 2828
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    new-instance v2, Ljava/lang/StringBuilder;

    #@8b
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@8e
    const-string/jumbo v3, "completeConnection: startActivityAsUser failed"

    #@91
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@94
    move-result-object v2

    #@95
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@98
    move-result-object v2

    #@99
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9c
    move-result-object v2

    #@9d
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->loge(Ljava/lang/String;)V

    #@a0
    goto :goto_0
.end method

.method private createAllApnList()V
    .locals 9

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    const/4 v2, 0x0

    #@2
    .line 3302
    iput-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mMvnoMatched:Z

    #@4
    .line 3303
    new-instance v0, Ljava/util/ArrayList;

    #@6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@9
    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAllApnSettings:Ljava/util/ArrayList;

    #@b
    .line 3304
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    #@d
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    #@10
    move-result-object v8

    #@11
    check-cast v8, Lcom/android/internal/telephony/uicc/IccRecords;

    #@13
    .line 3305
    .local v8, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v8, :cond_2

    #@15
    invoke-virtual {v8}, Lcom/android/internal/telephony/uicc/IccRecords;->getOperatorNumeric()Ljava/lang/String;

    #@18
    move-result-object v7

    #@19
    .line 3306
    .local v7, "operator":Ljava/lang/String;
    :goto_0
    if-eqz v7, :cond_1

    #@1b
    .line 3307
    new-instance v0, Ljava/lang/StringBuilder;

    #@1d
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@20
    const-string/jumbo v1, "numeric = \'"

    #@23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v0

    #@27
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v0

    #@2b
    const-string/jumbo v1, "\'"

    #@2e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v0

    #@32
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@35
    move-result-object v3

    #@36
    .line 3308
    .local v3, "selection":Ljava/lang/String;
    const-string/jumbo v5, "_id"

    #@39
    .line 3312
    .local v5, "orderBy":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    #@3b
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@3e
    const-string/jumbo v1, "createAllApnList: selection="

    #@41
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v0

    #@45
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v0

    #@49
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4c
    move-result-object v0

    #@4d
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@50
    .line 3314
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    #@52
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    #@55
    move-result-object v0

    #@56
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@59
    move-result-object v0

    #@5a
    .line 3315
    sget-object v1, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    #@5c
    move-object v4, v2

    #@5d
    .line 3314
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    #@60
    move-result-object v6

    #@61
    .line 3317
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    #@63
    .line 3318
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    #@66
    move-result v0

    #@67
    if-lez v0, :cond_0

    #@69
    .line 3319
    invoke-direct {p0, v6}, Lcom/android/internal/telephony/dataconnection/DcTracker;->createApnList(Landroid/database/Cursor;)Ljava/util/ArrayList;

    #@6c
    move-result-object v0

    #@6d
    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAllApnSettings:Ljava/util/ArrayList;

    #@6f
    .line 3321
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    #@72
    .line 3325
    .end local v3    # "selection":Ljava/lang/String;
    .end local v5    # "orderBy":Ljava/lang/String;
    .end local v6    # "cursor":Landroid/database/Cursor;
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->addEmergencyApnSetting()V

    #@75
    .line 3327
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->dedupeApnSettings()V

    #@78
    .line 3329
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAllApnSettings:Ljava/util/ArrayList;

    #@7a
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    #@7d
    move-result v0

    #@7e
    if-eqz v0, :cond_3

    #@80
    .line 3330
    new-instance v0, Ljava/lang/StringBuilder;

    #@82
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@85
    const-string/jumbo v1, "createAllApnList: No APN found for carrier: "

    #@88
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8b
    move-result-object v0

    #@8c
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8f
    move-result-object v0

    #@90
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@93
    move-result-object v0

    #@94
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@97
    .line 3331
    iput-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPreferredApn:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    #@99
    .line 3342
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    #@9b
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@9e
    const-string/jumbo v1, "createAllApnList: X mAllApnSettings="

    #@a1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a4
    move-result-object v0

    #@a5
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAllApnSettings:Ljava/util/ArrayList;

    #@a7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@aa
    move-result-object v0

    #@ab
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ae
    move-result-object v0

    #@af
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@b2
    .line 3344
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->setDataProfilesAsNeeded()V

    #@b5
    .line 3301
    return-void

    #@b6
    .line 3305
    .end local v7    # "operator":Ljava/lang/String;
    :cond_2
    const-string/jumbo v7, ""

    #@b9
    goto/16 :goto_0

    #@bb
    .line 3335
    .restart local v7    # "operator":Ljava/lang/String;
    :cond_3
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->getPreferredApn()Lcom/android/internal/telephony/dataconnection/ApnSetting;

    #@be
    move-result-object v0

    #@bf
    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPreferredApn:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    #@c1
    .line 3336
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPreferredApn:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    #@c3
    if-eqz v0, :cond_4

    #@c5
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPreferredApn:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    #@c7
    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->numeric:Ljava/lang/String;

    #@c9
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@cc
    move-result v0

    #@cd
    if-eqz v0, :cond_5

    #@cf
    .line 3340
    :cond_4
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    #@d1
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@d4
    const-string/jumbo v1, "createAllApnList: mPreferredApn="

    #@d7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@da
    move-result-object v0

    #@db
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPreferredApn:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    #@dd
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@e0
    move-result-object v0

    #@e1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@e4
    move-result-object v0

    #@e5
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@e8
    goto :goto_1

    #@e9
    .line 3337
    :cond_5
    iput-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPreferredApn:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    #@eb
    .line 3338
    const/4 v0, -0x1

    #@ec
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->setPreferredApn(I)V

    #@ef
    goto :goto_2
.end method

.method private createApnList(Landroid/database/Cursor;)Ljava/util/ArrayList;
    .locals 7
    .param p1, "cursor"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/dataconnection/ApnSetting;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 1968
    new-instance v1, Ljava/util/ArrayList;

    #@2
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 1969
    .local v1, "mnoApns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/dataconnection/ApnSetting;>;"
    new-instance v2, Ljava/util/ArrayList;

    #@7
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@a
    .line 1970
    .local v2, "mvnoApns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/dataconnection/ApnSetting;>;"
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    #@c
    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    #@f
    move-result-object v3

    #@10
    check-cast v3, Lcom/android/internal/telephony/uicc/IccRecords;

    #@12
    .line 1972
    .local v3, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    #@15
    move-result v5

    #@16
    if-eqz v5, :cond_2

    #@18
    .line 1974
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->makeApnSetting(Landroid/database/Cursor;)Lcom/android/internal/telephony/dataconnection/ApnSetting;

    #@1b
    move-result-object v0

    #@1c
    .line 1975
    .local v0, "apn":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    if-nez v0, :cond_3

    #@1e
    .line 1986
    :cond_1
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    #@21
    move-result v5

    #@22
    if-nez v5, :cond_0

    #@24
    .line 1990
    .end local v0    # "apn":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    :cond_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    #@27
    move-result v5

    #@28
    if-eqz v5, :cond_5

    #@2a
    .line 1991
    move-object v4, v1

    #@2b
    .line 1992
    .local v4, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/dataconnection/ApnSetting;>;"
    const/4 v5, 0x0

    #@2c
    iput-boolean v5, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mMvnoMatched:Z

    #@2e
    .line 1997
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    #@30
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@33
    const-string/jumbo v6, "createApnList: X result="

    #@36
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v5

    #@3a
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v5

    #@3e
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@41
    move-result-object v5

    #@42
    invoke-direct {p0, v5}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@45
    .line 1998
    return-object v4

    #@46
    .line 1979
    .end local v4    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/dataconnection/ApnSetting;>;"
    .restart local v0    # "apn":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    :cond_3
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->hasMvnoParams()Z

    #@49
    move-result v5

    #@4a
    if-eqz v5, :cond_4

    #@4c
    .line 1980
    if-eqz v3, :cond_1

    #@4e
    iget-object v5, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mvnoType:Ljava/lang/String;

    #@50
    iget-object v6, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mvnoMatchData:Ljava/lang/String;

    #@52
    invoke-static {v3, v5, v6}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mvnoMatches(Lcom/android/internal/telephony/uicc/IccRecords;Ljava/lang/String;Ljava/lang/String;)Z

    #@55
    move-result v5

    #@56
    if-eqz v5, :cond_1

    #@58
    .line 1981
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@5b
    goto :goto_0

    #@5c
    .line 1984
    :cond_4
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@5f
    goto :goto_0

    #@60
    .line 1994
    .end local v0    # "apn":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    :cond_5
    move-object v4, v2

    #@61
    .line 1995
    .restart local v4    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/dataconnection/ApnSetting;>;"
    const/4 v5, 0x1

    #@62
    iput-boolean v5, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mMvnoMatched:Z

    #@64
    goto :goto_1
.end method

.method private createDataConnection()Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;
    .locals 7

    #@0
    .prologue
    .line 3459
    const-string/jumbo v4, "createDataConnection E"

    #@3
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@6
    .line 3461
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mUniqueIdGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    #@8
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    #@b
    move-result v2

    #@c
    .line 3462
    .local v2, "id":I
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    #@e
    .line 3463
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDcTesterFailBringUpAll:Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;

    #@10
    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDcc:Lcom/android/internal/telephony/dataconnection/DcController;

    #@12
    .line 3462
    invoke-static {v4, v2, p0, v5, v6}, Lcom/android/internal/telephony/dataconnection/DataConnection;->makeDataConnection(Lcom/android/internal/telephony/Phone;ILcom/android/internal/telephony/dataconnection/DcTracker;Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;Lcom/android/internal/telephony/dataconnection/DcController;)Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@15
    move-result-object v0

    #@16
    .line 3464
    .local v0, "conn":Lcom/android/internal/telephony/dataconnection/DataConnection;
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDataConnections:Ljava/util/HashMap;

    #@18
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1b
    move-result-object v5

    #@1c
    invoke-virtual {v4, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1f
    .line 3465
    new-instance v1, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;

    #@21
    const-string/jumbo v4, "DCT"

    #@24
    invoke-direct {v1, v0, v4}, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;-><init>(Lcom/android/internal/telephony/dataconnection/DataConnection;Ljava/lang/String;)V

    #@27
    .line 3466
    .local v1, "dcac":Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    #@29
    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    #@2c
    move-result-object v4

    #@2d
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getHandler()Landroid/os/Handler;

    #@30
    move-result-object v5

    #@31
    invoke-virtual {v1, v4, p0, v5}, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->fullyConnectSync(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Handler;)I

    #@34
    move-result v3

    #@35
    .line 3467
    .local v3, "status":I
    if-nez v3, :cond_0

    #@37
    .line 3468
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDataConnectionAcHashMap:Ljava/util/HashMap;

    #@39
    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->getDataConnectionIdSync()I

    #@3c
    move-result v5

    #@3d
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@40
    move-result-object v5

    #@41
    invoke-virtual {v4, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@44
    .line 3473
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    #@46
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@49
    const-string/jumbo v5, "createDataConnection() X id="

    #@4c
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v4

    #@50
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@53
    move-result-object v4

    #@54
    const-string/jumbo v5, " dc="

    #@57
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v4

    #@5b
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@5e
    move-result-object v4

    #@5f
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@62
    move-result-object v4

    #@63
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@66
    .line 3474
    return-object v1

    #@67
    .line 3470
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    #@69
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@6c
    const-string/jumbo v5, "createDataConnection: Could not connect to dcac="

    #@6f
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@72
    move-result-object v4

    #@73
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@76
    move-result-object v4

    #@77
    const-string/jumbo v5, " status="

    #@7a
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7d
    move-result-object v4

    #@7e
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@81
    move-result-object v4

    #@82
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@85
    move-result-object v4

    #@86
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/dataconnection/DcTracker;->loge(Ljava/lang/String;)V

    #@89
    goto :goto_0
.end method

.method private dataConnectionNotInUse(Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;)Z
    .locals 4
    .param p1, "dcac"    # Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;

    #@0
    .prologue
    .line 2002
    new-instance v2, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v3, "dataConnectionNotInUse: check if dcac is inuse dcac="

    #@8
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v2

    #@c
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v2

    #@10
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13
    move-result-object v2

    #@14
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@17
    .line 2003
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    #@19
    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    #@1c
    move-result-object v2

    #@1d
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@20
    move-result-object v1

    #@21
    .local v1, "apnContext$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@24
    move-result v2

    #@25
    if-eqz v2, :cond_1

    #@27
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@2a
    move-result-object v0

    #@2b
    check-cast v0, Lcom/android/internal/telephony/dataconnection/ApnContext;

    #@2d
    .line 2004
    .local v0, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getDcAc()Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;

    #@30
    move-result-object v2

    #@31
    if-ne v2, p1, :cond_0

    #@33
    .line 2005
    new-instance v2, Ljava/lang/StringBuilder;

    #@35
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@38
    const-string/jumbo v3, "dataConnectionNotInUse: in use by apnContext="

    #@3b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v2

    #@3f
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v2

    #@43
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@46
    move-result-object v2

    #@47
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@4a
    .line 2006
    const/4 v2, 0x0

    #@4b
    return v2

    #@4c
    .line 2012
    .end local v0    # "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    :cond_1
    const-string/jumbo v2, "dataConnectionNotInUse: tearDownAll"

    #@4f
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@52
    .line 2013
    const-string/jumbo v2, "No connection"

    #@55
    const/4 v3, 0x0

    #@56
    invoke-virtual {p1, v2, v3}, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->tearDownAll(Ljava/lang/String;Landroid/os/Message;)V

    #@59
    .line 2014
    const-string/jumbo v2, "dataConnectionNotInUse: not in use return true"

    #@5c
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@5f
    .line 2015
    const/4 v2, 0x1

    #@60
    return v2
.end method

.method private dedupeApnSettings()V
    .locals 7

    #@0
    .prologue
    .line 3348
    new-instance v4, Ljava/util/ArrayList;

    #@2
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 3352
    .local v4, "resultApns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/dataconnection/ApnSetting;>;"
    const/4 v1, 0x0

    #@6
    .line 3353
    .local v1, "i":I
    :goto_0
    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAllApnSettings:Ljava/util/ArrayList;

    #@8
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    #@b
    move-result v6

    #@c
    add-int/lit8 v6, v6, -0x1

    #@e
    if-ge v1, v6, :cond_2

    #@10
    .line 3354
    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAllApnSettings:Ljava/util/ArrayList;

    #@12
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@15
    move-result-object v0

    #@16
    check-cast v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;

    #@18
    .line 3355
    .local v0, "first":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    const/4 v5, 0x0

    #@19
    .line 3356
    .local v5, "second":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    add-int/lit8 v2, v1, 0x1

    #@1b
    .line 3357
    .end local v5    # "second":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    .local v2, "j":I
    :goto_1
    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAllApnSettings:Ljava/util/ArrayList;

    #@1d
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    #@20
    move-result v6

    #@21
    if-ge v2, v6, :cond_1

    #@23
    .line 3358
    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAllApnSettings:Ljava/util/ArrayList;

    #@25
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@28
    move-result-object v5

    #@29
    check-cast v5, Lcom/android/internal/telephony/dataconnection/ApnSetting;

    #@2b
    .line 3359
    .local v5, "second":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    invoke-direct {p0, v0, v5}, Lcom/android/internal/telephony/dataconnection/DcTracker;->apnsSimilar(Lcom/android/internal/telephony/dataconnection/ApnSetting;Lcom/android/internal/telephony/dataconnection/ApnSetting;)Z

    #@2e
    move-result v6

    #@2f
    if-eqz v6, :cond_0

    #@31
    .line 3360
    invoke-direct {p0, v0, v5}, Lcom/android/internal/telephony/dataconnection/DcTracker;->mergeApns(Lcom/android/internal/telephony/dataconnection/ApnSetting;Lcom/android/internal/telephony/dataconnection/ApnSetting;)Lcom/android/internal/telephony/dataconnection/ApnSetting;

    #@34
    move-result-object v3

    #@35
    .line 3361
    .local v3, "newApn":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAllApnSettings:Ljava/util/ArrayList;

    #@37
    invoke-virtual {v6, v1, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    #@3a
    .line 3362
    move-object v0, v3

    #@3b
    .line 3363
    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAllApnSettings:Ljava/util/ArrayList;

    #@3d
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@40
    goto :goto_1

    #@41
    .line 3365
    .end local v3    # "newApn":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    #@43
    goto :goto_1

    #@44
    .line 3368
    .end local v5    # "second":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    #@46
    goto :goto_0

    #@47
    .line 3347
    .end local v0    # "first":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    .end local v2    # "j":I
    :cond_2
    return-void
.end method

.method private destroyDataConnections()V
    .locals 1

    #@0
    .prologue
    .line 3478
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDataConnections:Ljava/util/HashMap;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 3479
    const-string/jumbo v0, "destroyDataConnections: clear mDataConnectionList"

    #@7
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@a
    .line 3480
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDataConnections:Ljava/util/HashMap;

    #@c
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    #@f
    .line 3477
    :goto_0
    return-void

    #@10
    .line 3482
    :cond_0
    const-string/jumbo v0, "destroyDataConnections: mDataConnecitonList is empty, ignore"

    #@13
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@16
    goto :goto_0
.end method

.method private doRecovery()V
    .locals 5

    #@0
    .prologue
    .line 4603
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->getOverallState()Lcom/android/internal/telephony/DctConstants$State;

    #@3
    move-result-object v2

    #@4
    sget-object v3, Lcom/android/internal/telephony/DctConstants$State;->CONNECTED:Lcom/android/internal/telephony/DctConstants$State;

    #@6
    if-ne v2, v3, :cond_0

    #@8
    .line 4605
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->getRecoveryAction()I

    #@b
    move-result v1

    #@c
    .line 4606
    .local v1, "recoveryAction":I
    invoke-static {}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->getInstance()Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    #@f
    move-result-object v2

    #@10
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    #@12
    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    #@15
    move-result v3

    #@16
    invoke-virtual {v2, v3, v1}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeDataStallEvent(II)V

    #@19
    .line 4607
    packed-switch v1, :pswitch_data_0

    #@1c
    .line 4653
    new-instance v2, Ljava/lang/RuntimeException;

    #@1e
    new-instance v3, Ljava/lang/StringBuilder;

    #@20
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@23
    const-string/jumbo v4, "doRecovery: Invalid recoveryAction="

    #@26
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v3

    #@2a
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v3

    #@2e
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@31
    move-result-object v3

    #@32
    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@35
    throw v2

    #@36
    .line 4610
    :pswitch_0
    iget-wide v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mSentSinceLastRecv:J

    #@38
    .line 4609
    const v4, 0xc3c6

    #@3b
    invoke-static {v4, v2, v3}, Landroid/util/EventLog;->writeEvent(IJ)I

    #@3e
    .line 4611
    const-string/jumbo v2, "doRecovery() get data call list"

    #@41
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@44
    .line 4612
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    #@46
    iget-object v2, v2, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@48
    const v3, 0x42004

    #@4b
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/dataconnection/DcTracker;->obtainMessage(I)Landroid/os/Message;

    #@4e
    move-result-object v3

    #@4f
    invoke-interface {v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->getDataCallList(Landroid/os/Message;)V

    #@52
    .line 4613
    const/4 v2, 0x1

    #@53
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->putRecoveryAction(I)V

    #@56
    .line 4656
    :goto_0
    const-wide/16 v2, 0x0

    #@58
    iput-wide v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mSentSinceLastRecv:J

    #@5a
    .line 4602
    .end local v1    # "recoveryAction":I
    :cond_0
    return-void

    #@5b
    .line 4616
    .restart local v1    # "recoveryAction":I
    :pswitch_1
    iget-wide v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mSentSinceLastRecv:J

    #@5d
    const v4, 0xc3c7

    #@60
    invoke-static {v4, v2, v3}, Landroid/util/EventLog;->writeEvent(IJ)I

    #@63
    .line 4617
    const-string/jumbo v2, "doRecovery() cleanup all connections"

    #@66
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@69
    .line 4618
    const-string/jumbo v2, "pdpReset"

    #@6c
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->cleanUpAllConnections(Ljava/lang/String;)V

    #@6f
    .line 4619
    const/4 v2, 0x2

    #@70
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->putRecoveryAction(I)V

    #@73
    goto :goto_0

    #@74
    .line 4623
    :pswitch_2
    iget-wide v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mSentSinceLastRecv:J

    #@76
    .line 4622
    const v4, 0xc3c8

    #@79
    invoke-static {v4, v2, v3}, Landroid/util/EventLog;->writeEvent(IJ)I

    #@7c
    .line 4624
    const-string/jumbo v2, "doRecovery() re-register"

    #@7f
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@82
    .line 4625
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    #@84
    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    #@87
    move-result-object v2

    #@88
    const/4 v3, 0x0

    #@89
    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/ServiceStateTracker;->reRegisterNetwork(Landroid/os/Message;)V

    #@8c
    .line 4626
    const/4 v2, 0x3

    #@8d
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->putRecoveryAction(I)V

    #@90
    goto :goto_0

    #@91
    .line 4630
    :pswitch_3
    iget-wide v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mSentSinceLastRecv:J

    #@93
    .line 4629
    const v4, 0xc3c9

    #@96
    invoke-static {v4, v2, v3}, Landroid/util/EventLog;->writeEvent(IJ)I

    #@99
    .line 4631
    const-string/jumbo v2, "restarting radio"

    #@9c
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@9f
    .line 4632
    const/4 v2, 0x4

    #@a0
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->putRecoveryAction(I)V

    #@a3
    .line 4633
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->restartRadio()V

    #@a6
    goto :goto_0

    #@a7
    .line 4642
    :pswitch_4
    const v2, 0xc3ca

    #@aa
    const/4 v3, -0x1

    #@ab
    invoke-static {v2, v3}, Landroid/util/EventLog;->writeEvent(II)I

    #@ae
    .line 4643
    const-string/jumbo v2, "restarting radio with gsm.radioreset to true"

    #@b1
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@b4
    .line 4644
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->RADIO_RESET_PROPERTY:Ljava/lang/String;

    #@b6
    const-string/jumbo v3, "true"

    #@b9
    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    #@bc
    .line 4647
    const-wide/16 v2, 0x3e8

    #@be
    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    #@c1
    .line 4649
    :goto_1
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->restartRadio()V

    #@c4
    .line 4650
    const/4 v2, 0x0

    #@c5
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->putRecoveryAction(I)V

    #@c8
    goto :goto_0

    #@c9
    .line 4648
    :catch_0
    move-exception v0

    #@ca
    .local v0, "e":Ljava/lang/InterruptedException;
    goto :goto_1

    #@cb
    .line 4607
    nop

    #@cc
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private findDataConnectionAcByCid(I)Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;
    .locals 3
    .param p1, "cid"    # I

    #@0
    .prologue
    .line 2212
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDataConnectionAcHashMap:Ljava/util/HashMap;

    #@2
    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    #@5
    move-result-object v2

    #@6
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@9
    move-result-object v1

    #@a
    .local v1, "dcac$iterator":Ljava/util/Iterator;
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
    check-cast v0, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;

    #@16
    .line 2213
    .local v0, "dcac":Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->getCidSync()I

    #@19
    move-result v2

    #@1a
    if-ne v2, p1, :cond_0

    #@1c
    .line 2214
    return-object v0

    #@1d
    .line 2217
    .end local v0    # "dcac":Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;
    :cond_1
    const/4 v2, 0x0

    #@1e
    return-object v2
.end method

.method private findFreeDataConnection()Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;
    .locals 4

    #@0
    .prologue
    .line 2019
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDataConnectionAcHashMap:Ljava/util/HashMap;

    #@2
    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    #@5
    move-result-object v2

    #@6
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@9
    move-result-object v1

    #@a
    .local v1, "dcac$iterator":Ljava/util/Iterator;
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
    check-cast v0, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;

    #@16
    .line 2020
    .local v0, "dcac":Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->isInactiveSync()Z

    #@19
    move-result v2

    #@1a
    if-eqz v2, :cond_0

    #@1c
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->dataConnectionNotInUse(Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;)Z

    #@1f
    move-result v2

    #@20
    if-eqz v2, :cond_0

    #@22
    .line 2022
    new-instance v2, Ljava/lang/StringBuilder;

    #@24
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@27
    const-string/jumbo v3, "findFreeDataConnection: found free DataConnection= dcac="

    #@2a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v2

    #@2e
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v2

    #@32
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@35
    move-result-object v2

    #@36
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@39
    .line 2025
    return-object v0

    #@3a
    .line 2028
    .end local v0    # "dcac":Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;
    :cond_1
    const-string/jumbo v2, "findFreeDataConnection: NO free DataConnection"

    #@3d
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@40
    .line 2029
    const/4 v2, 0x0

    #@41
    return-object v2
.end method

.method private getApnProfileID(Ljava/lang/String;)I
    .locals 2
    .param p1, "apnType"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 4005
    const-string/jumbo v0, "ims"

    #@4
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 4006
    const/4 v0, 0x2

    #@b
    return v0

    #@c
    .line 4007
    :cond_0
    const-string/jumbo v0, "fota"

    #@f
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    #@12
    move-result v0

    #@13
    if-eqz v0, :cond_1

    #@15
    .line 4008
    const/4 v0, 0x3

    #@16
    return v0

    #@17
    .line 4009
    :cond_1
    const-string/jumbo v0, "cbs"

    #@1a
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    #@1d
    move-result v0

    #@1e
    if-eqz v0, :cond_2

    #@20
    .line 4010
    const/4 v0, 0x4

    #@21
    return v0

    #@22
    .line 4011
    :cond_2
    const-string/jumbo v0, "ia"

    #@25
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    #@28
    move-result v0

    #@29
    if-eqz v0, :cond_3

    #@2b
    .line 4012
    return v1

    #@2c
    .line 4013
    :cond_3
    const-string/jumbo v0, "dun"

    #@2f
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    #@32
    move-result v0

    #@33
    if-eqz v0, :cond_4

    #@35
    .line 4014
    const/4 v0, 0x1

    #@36
    return v0

    #@37
    .line 4016
    :cond_4
    return v1
.end method

.method private getCellLocationId()I
    .locals 3

    #@0
    .prologue
    .line 4021
    const/4 v0, -0x1

    #@1
    .line 4022
    .local v0, "cid":I
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    #@3
    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getCellLocation()Landroid/telephony/CellLocation;

    #@6
    move-result-object v1

    #@7
    .line 4024
    .local v1, "loc":Landroid/telephony/CellLocation;
    if-eqz v1, :cond_0

    #@9
    .line 4025
    instance-of v2, v1, Landroid/telephony/gsm/GsmCellLocation;

    #@b
    if-eqz v2, :cond_1

    #@d
    .line 4026
    check-cast v1, Landroid/telephony/gsm/GsmCellLocation;

    #@f
    .end local v1    # "loc":Landroid/telephony/CellLocation;
    invoke-virtual {v1}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    #@12
    move-result v0

    #@13
    .line 4031
    :cond_0
    :goto_0
    return v0

    #@14
    .line 4027
    .restart local v1    # "loc":Landroid/telephony/CellLocation;
    :cond_1
    instance-of v2, v1, Landroid/telephony/cdma/CdmaCellLocation;

    #@16
    if-eqz v2, :cond_0

    #@18
    .line 4028
    check-cast v1, Landroid/telephony/cdma/CdmaCellLocation;

    #@1a
    .end local v1    # "loc":Landroid/telephony/CellLocation;
    invoke-virtual {v1}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationId()I

    #@1d
    move-result v0

    #@1e
    goto :goto_0
.end method

.method private getPreferredApn()Lcom/android/internal/telephony/dataconnection/ApnSetting;
    .locals 13

    #@0
    .prologue
    const/4 v12, 0x1

    #@1
    const/4 v11, 0x0

    #@2
    const/4 v3, 0x0

    #@3
    .line 3611
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAllApnSettings:Ljava/util/ArrayList;

    #@5
    if-eqz v0, :cond_0

    #@7
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAllApnSettings:Ljava/util/ArrayList;

    #@9
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    #@c
    move-result v0

    #@d
    if-eqz v0, :cond_2

    #@f
    .line 3612
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    #@11
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@14
    const-string/jumbo v2, "getPreferredApn: mAllApnSettings is "

    #@17
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v2

    #@1b
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAllApnSettings:Ljava/util/ArrayList;

    #@1d
    if-nez v0, :cond_1

    #@1f
    const-string/jumbo v0, "null"

    #@22
    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v0

    #@26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@29
    move-result-object v0

    #@2a
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@2d
    .line 3613
    return-object v3

    #@2e
    .line 3612
    :cond_1
    const-string/jumbo v0, "empty"

    #@31
    goto :goto_0

    #@32
    .line 3616
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    #@34
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    #@37
    move-result v0

    #@38
    int-to-long v4, v0

    #@39
    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    #@3c
    move-result-object v10

    #@3d
    .line 3617
    .local v10, "subId":Ljava/lang/String;
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->PREFERAPN_NO_UPDATE_URI_USING_SUBID:Landroid/net/Uri;

    #@3f
    invoke-static {v0, v10}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    #@42
    move-result-object v1

    #@43
    .line 3618
    .local v1, "uri":Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    #@45
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    #@48
    move-result-object v0

    #@49
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@4c
    move-result-object v0

    #@4d
    .line 3619
    const/4 v2, 0x3

    #@4e
    new-array v2, v2, [Ljava/lang/String;

    #@50
    const-string/jumbo v4, "_id"

    #@53
    aput-object v4, v2, v11

    #@55
    const-string/jumbo v4, "name"

    #@58
    aput-object v4, v2, v12

    #@5a
    const-string/jumbo v4, "apn"

    #@5d
    const/4 v5, 0x2

    #@5e
    aput-object v4, v2, v5

    #@60
    .line 3620
    const-string/jumbo v5, "name ASC"

    #@63
    move-object v4, v3

    #@64
    .line 3618
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    #@67
    move-result-object v6

    #@68
    .line 3622
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_4

    #@6a
    .line 3623
    iput-boolean v12, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mCanSetPreferApn:Z

    #@6c
    .line 3627
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    #@6e
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@71
    const-string/jumbo v2, "getPreferredApn: mRequestedApnType="

    #@74
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@77
    move-result-object v0

    #@78
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mRequestedApnType:Ljava/lang/String;

    #@7a
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7d
    move-result-object v0

    #@7e
    const-string/jumbo v2, " cursor="

    #@81
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@84
    move-result-object v0

    #@85
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@88
    move-result-object v0

    #@89
    .line 3628
    const-string/jumbo v2, " cursor.count="

    #@8c
    .line 3627
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8f
    move-result-object v2

    #@90
    .line 3628
    if-eqz v6, :cond_5

    #@92
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    #@95
    move-result v0

    #@96
    .line 3627
    :goto_2
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@99
    move-result-object v0

    #@9a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9d
    move-result-object v0

    #@9e
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@a1
    .line 3630
    iget-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mCanSetPreferApn:Z

    #@a3
    if-eqz v0, :cond_6

    #@a5
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    #@a8
    move-result v0

    #@a9
    if-lez v0, :cond_6

    #@ab
    .line 3632
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    #@ae
    .line 3633
    const-string/jumbo v0, "_id"

    #@b1
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    #@b4
    move-result v0

    #@b5
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    #@b8
    move-result v9

    #@b9
    .line 3634
    .local v9, "pos":I
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAllApnSettings:Ljava/util/ArrayList;

    #@bb
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@be
    move-result-object v8

    #@bf
    .local v8, "p$iterator":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    #@c2
    move-result v0

    #@c3
    if-eqz v0, :cond_6

    #@c5
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@c8
    move-result-object v7

    #@c9
    check-cast v7, Lcom/android/internal/telephony/dataconnection/ApnSetting;

    #@cb
    .line 3635
    .local v7, "p":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    new-instance v0, Ljava/lang/StringBuilder;

    #@cd
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@d0
    const-string/jumbo v2, "getPreferredApn: apnSetting="

    #@d3
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d6
    move-result-object v0

    #@d7
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@da
    move-result-object v0

    #@db
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@de
    move-result-object v0

    #@df
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@e2
    .line 3636
    iget v0, v7, Lcom/android/internal/telephony/dataconnection/ApnSetting;->id:I

    #@e4
    if-ne v0, v9, :cond_3

    #@e6
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mRequestedApnType:Ljava/lang/String;

    #@e8
    invoke-virtual {v7, v0}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->canHandleType(Ljava/lang/String;)Z

    #@eb
    move-result v0

    #@ec
    if-eqz v0, :cond_3

    #@ee
    .line 3637
    new-instance v0, Ljava/lang/StringBuilder;

    #@f0
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@f3
    const-string/jumbo v2, "getPreferredApn: X found apnSetting"

    #@f6
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f9
    move-result-object v0

    #@fa
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@fd
    move-result-object v0

    #@fe
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@101
    move-result-object v0

    #@102
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@105
    .line 3638
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    #@108
    .line 3639
    return-object v7

    #@109
    .line 3625
    .end local v7    # "p":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    .end local v8    # "p$iterator":Ljava/util/Iterator;
    .end local v9    # "pos":I
    :cond_4
    iput-boolean v11, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mCanSetPreferApn:Z

    #@10b
    goto/16 :goto_1

    #@10d
    :cond_5
    move v0, v11

    #@10e
    .line 3628
    goto :goto_2

    #@10f
    .line 3644
    :cond_6
    if-eqz v6, :cond_7

    #@111
    .line 3645
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    #@114
    .line 3648
    :cond_7
    const-string/jumbo v0, "getPreferredApn: X not found"

    #@117
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@11a
    .line 3649
    return-object v3
.end method

.method private getRecoveryAction()I
    .locals 4

    #@0
    .prologue
    .line 4591
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mResolver:Landroid/content/ContentResolver;

    #@2
    .line 4592
    const-string/jumbo v2, "radio.data.stall.recovery.action"

    #@5
    const/4 v3, 0x0

    #@6
    .line 4591
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    #@9
    move-result v0

    #@a
    .line 4594
    .local v0, "action":I
    return v0
.end method

.method private getUiccRecords(I)Lcom/android/internal/telephony/uicc/IccRecords;
    .locals 2
    .param p1, "appFamily"    # I

    #@0
    .prologue
    .line 4035
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    #@2
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    #@4
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    #@7
    move-result v1

    #@8
    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/uicc/UiccController;->getIccRecords(II)Lcom/android/internal/telephony/uicc/IccRecords;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method

.method private getValidApnContext(Landroid/os/AsyncResult;Ljava/lang/String;)Lcom/android/internal/telephony/dataconnection/ApnContext;
    .locals 6
    .param p1, "ar"    # Landroid/os/AsyncResult;
    .param p2, "logString"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 3041
    if-eqz p1, :cond_1

    #@3
    iget-object v3, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    #@5
    instance-of v3, v3, Landroid/util/Pair;

    #@7
    if-eqz v3, :cond_1

    #@9
    .line 3042
    iget-object v2, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    #@b
    check-cast v2, Landroid/util/Pair;

    #@d
    .line 3043
    .local v2, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/internal/telephony/dataconnection/ApnContext;Ljava/lang/Integer;>;"
    iget-object v0, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    #@f
    check-cast v0, Lcom/android/internal/telephony/dataconnection/ApnContext;

    #@11
    .line 3044
    .local v0, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    if-eqz v0, :cond_1

    #@13
    .line 3045
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getConnectionGeneration()I

    #@16
    move-result v1

    #@17
    .line 3047
    .local v1, "generation":I
    new-instance v3, Ljava/lang/StringBuilder;

    #@19
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@1c
    const-string/jumbo v4, "getValidApnContext ("

    #@1f
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v3

    #@23
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v3

    #@27
    const-string/jumbo v4, ") on "

    #@2a
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v3

    #@2e
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v3

    #@32
    const-string/jumbo v4, " got "

    #@35
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v3

    #@39
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v3

    #@3d
    .line 3048
    const-string/jumbo v4, " vs "

    #@40
    .line 3047
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v3

    #@44
    .line 3048
    iget-object v4, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    #@46
    .line 3047
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@49
    move-result-object v3

    #@4a
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4d
    move-result-object v3

    #@4e
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@51
    .line 3050
    iget-object v3, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    #@53
    check-cast v3, Ljava/lang/Integer;

    #@55
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    #@58
    move-result v3

    #@59
    if-ne v1, v3, :cond_0

    #@5b
    .line 3051
    return-object v0

    #@5c
    .line 3053
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    #@5e
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@61
    const-string/jumbo v4, "ignoring obsolete "

    #@64
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@67
    move-result-object v3

    #@68
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6b
    move-result-object v3

    #@6c
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6f
    move-result-object v3

    #@70
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@73
    .line 3054
    return-object v5

    #@74
    .line 3058
    .end local v0    # "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    .end local v1    # "generation":I
    .end local v2    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/internal/telephony/dataconnection/ApnContext;Ljava/lang/Integer;>;"
    :cond_1
    new-instance v3, Ljava/lang/RuntimeException;

    #@76
    new-instance v4, Ljava/lang/StringBuilder;

    #@78
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@7b
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7e
    move-result-object v4

    #@7f
    const-string/jumbo v5, ": No apnContext"

    #@82
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@85
    move-result-object v4

    #@86
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@89
    move-result-object v4

    #@8a
    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@8d
    throw v3
.end method

.method private gotoIdleAndNotifyDataConnection(Ljava/lang/String;)V
    .locals 2
    .param p1, "reason"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2222
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "gotoIdleAndNotifyDataConnection: reason="

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v0

    #@10
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13
    move-result-object v0

    #@14
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@17
    .line 2223
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->notifyDataConnection(Ljava/lang/String;)V

    #@1a
    .line 2221
    return-void
.end method

.method private handlePcoData(Landroid/os/AsyncResult;)V
    .locals 13
    .param p1, "ar"    # Landroid/os/AsyncResult;

    #@0
    .prologue
    .line 4517
    iget-object v10, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@2
    if-eqz v10, :cond_0

    #@4
    .line 4518
    const-string/jumbo v10, "DCT"

    #@7
    new-instance v11, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    const-string/jumbo v12, "PCO_DATA exception: "

    #@f
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v11

    #@13
    iget-object v12, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@15
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v11

    #@19
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c
    move-result-object v11

    #@1d
    invoke-static {v10, v11}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@20
    .line 4519
    return-void

    #@21
    .line 4521
    :cond_0
    iget-object v8, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@23
    check-cast v8, Landroid/telephony/PcoData;

    #@25
    .line 4522
    .local v8, "pcoData":Landroid/telephony/PcoData;
    new-instance v6, Ljava/util/ArrayList;

    #@27
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    #@2a
    .line 4523
    .local v6, "dcList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/dataconnection/DataConnection;>;"
    iget-object v10, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDcc:Lcom/android/internal/telephony/dataconnection/DcController;

    #@2c
    iget v11, v8, Landroid/telephony/PcoData;->cid:I

    #@2e
    invoke-virtual {v10, v11}, Lcom/android/internal/telephony/dataconnection/DcController;->getActiveDcByCid(I)Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@31
    move-result-object v9

    #@32
    .line 4524
    .local v9, "temp":Lcom/android/internal/telephony/dataconnection/DataConnection;
    if-eqz v9, :cond_1

    #@34
    .line 4525
    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@37
    .line 4527
    :cond_1
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    #@3a
    move-result v10

    #@3b
    if-nez v10, :cond_3

    #@3d
    .line 4528
    const-string/jumbo v10, "DCT"

    #@40
    new-instance v11, Ljava/lang/StringBuilder;

    #@42
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@45
    const-string/jumbo v12, "PCO_DATA for unknown cid: "

    #@48
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v11

    #@4c
    iget v12, v8, Landroid/telephony/PcoData;->cid:I

    #@4e
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@51
    move-result-object v11

    #@52
    const-string/jumbo v12, ", inferring"

    #@55
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@58
    move-result-object v11

    #@59
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5c
    move-result-object v11

    #@5d
    invoke-static {v10, v11}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@60
    .line 4529
    iget-object v10, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDataConnections:Ljava/util/HashMap;

    #@62
    invoke-virtual {v10}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    #@65
    move-result-object v10

    #@66
    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@69
    move-result-object v5

    #@6a
    .local v5, "dc$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    #@6d
    move-result v10

    #@6e
    if-eqz v10, :cond_3

    #@70
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@73
    move-result-object v4

    #@74
    check-cast v4, Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@76
    .line 4530
    .local v4, "dc":Lcom/android/internal/telephony/dataconnection/DataConnection;
    invoke-virtual {v4}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getCid()I

    #@79
    move-result v3

    #@7a
    .line 4531
    .local v3, "cid":I
    iget v10, v8, Landroid/telephony/PcoData;->cid:I

    #@7c
    if-ne v3, v10, :cond_4

    #@7e
    .line 4533
    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    #@81
    .line 4534
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@84
    .line 4549
    .end local v3    # "cid":I
    .end local v4    # "dc":Lcom/android/internal/telephony/dataconnection/DataConnection;
    .end local v5    # "dc$iterator":Ljava/util/Iterator;
    :cond_3
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    #@87
    move-result v10

    #@88
    if-nez v10, :cond_6

    #@8a
    .line 4550
    const-string/jumbo v10, "DCT"

    #@8d
    const-string/jumbo v11, "PCO_DATA - couldn\'t infer cid"

    #@90
    invoke-static {v10, v11}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@93
    .line 4551
    return-void

    #@94
    .line 4538
    .restart local v3    # "cid":I
    .restart local v4    # "dc":Lcom/android/internal/telephony/dataconnection/DataConnection;
    .restart local v5    # "dc$iterator":Ljava/util/Iterator;
    :cond_4
    const/4 v10, -0x1

    #@95
    if-ne v3, v10, :cond_2

    #@97
    .line 4539
    iget-object v10, v4, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnContexts:Ljava/util/HashMap;

    #@99
    invoke-virtual {v10}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    #@9c
    move-result-object v10

    #@9d
    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@a0
    move-result-object v1

    #@a1
    .local v1, "apnContext$iterator":Ljava/util/Iterator;
    :cond_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@a4
    move-result v10

    #@a5
    if-eqz v10, :cond_2

    #@a7
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@aa
    move-result-object v0

    #@ab
    check-cast v0, Lcom/android/internal/telephony/dataconnection/ApnContext;

    #@ad
    .line 4540
    .local v0, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getState()Lcom/android/internal/telephony/DctConstants$State;

    #@b0
    move-result-object v10

    #@b1
    sget-object v11, Lcom/android/internal/telephony/DctConstants$State;->CONNECTING:Lcom/android/internal/telephony/DctConstants$State;

    #@b3
    if-ne v10, v11, :cond_5

    #@b5
    .line 4542
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@b8
    goto :goto_0

    #@b9
    .line 4553
    .end local v0    # "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    .end local v1    # "apnContext$iterator":Ljava/util/Iterator;
    .end local v3    # "cid":I
    .end local v4    # "dc":Lcom/android/internal/telephony/dataconnection/DataConnection;
    .end local v5    # "dc$iterator":Ljava/util/Iterator;
    :cond_6
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@bc
    move-result-object v5

    #@bd
    .restart local v5    # "dc$iterator":Ljava/util/Iterator;
    :cond_7
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    #@c0
    move-result v10

    #@c1
    if-eqz v10, :cond_8

    #@c3
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@c6
    move-result-object v4

    #@c7
    check-cast v4, Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@c9
    .line 4554
    .restart local v4    # "dc":Lcom/android/internal/telephony/dataconnection/DataConnection;
    iget-object v10, v4, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnContexts:Ljava/util/HashMap;

    #@cb
    invoke-virtual {v10}, Ljava/util/HashMap;->size()I

    #@ce
    move-result v10

    #@cf
    if-nez v10, :cond_9

    #@d1
    .line 4516
    .end local v4    # "dc":Lcom/android/internal/telephony/dataconnection/DataConnection;
    :cond_8
    return-void

    #@d2
    .line 4558
    .restart local v4    # "dc":Lcom/android/internal/telephony/dataconnection/DataConnection;
    :cond_9
    iget-object v10, v4, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnContexts:Ljava/util/HashMap;

    #@d4
    invoke-virtual {v10}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    #@d7
    move-result-object v10

    #@d8
    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@db
    move-result-object v1

    #@dc
    .restart local v1    # "apnContext$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@df
    move-result v10

    #@e0
    if-eqz v10, :cond_7

    #@e2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@e5
    move-result-object v0

    #@e6
    check-cast v0, Lcom/android/internal/telephony/dataconnection/ApnContext;

    #@e8
    .line 4559
    .restart local v0    # "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    #@eb
    move-result-object v2

    #@ec
    .line 4561
    .local v2, "apnType":Ljava/lang/String;
    new-instance v7, Landroid/content/Intent;

    #@ee
    const-string/jumbo v10, "android.intent.action.CARRIER_SIGNAL_PCO_VALUE"

    #@f1
    invoke-direct {v7, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@f4
    .line 4562
    .local v7, "intent":Landroid/content/Intent;
    const-string/jumbo v10, "apnType"

    #@f7
    invoke-virtual {v7, v10, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@fa
    .line 4563
    const-string/jumbo v10, "apnProto"

    #@fd
    iget-object v11, v8, Landroid/telephony/PcoData;->bearerProto:Ljava/lang/String;

    #@ff
    invoke-virtual {v7, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@102
    .line 4564
    const-string/jumbo v10, "pcoId"

    #@105
    iget v11, v8, Landroid/telephony/PcoData;->pcoId:I

    #@107
    invoke-virtual {v7, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@10a
    .line 4565
    const-string/jumbo v10, "pcoValue"

    #@10d
    iget-object v11, v8, Landroid/telephony/PcoData;->contents:[B

    #@10f
    invoke-virtual {v7, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    #@112
    .line 4566
    iget-object v10, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    #@114
    invoke-virtual {v10}, Lcom/android/internal/telephony/Phone;->getCarrierSignalAgent()Lcom/android/internal/telephony/CarrierSignalAgent;

    #@117
    move-result-object v10

    #@118
    invoke-virtual {v10, v7}, Lcom/android/internal/telephony/CarrierSignalAgent;->notifyCarrierSignalReceivers(Landroid/content/Intent;)Z

    #@11b
    goto :goto_1
.end method

.method private handleStartNetStatPoll(Lcom/android/internal/telephony/DctConstants$Activity;)V
    .locals 1
    .param p1, "activity"    # Lcom/android/internal/telephony/DctConstants$Activity;

    #@0
    .prologue
    .line 4457
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->startNetStatPoll()V

    #@3
    .line 4458
    const/4 v0, 0x0

    #@4
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->startDataStallAlarm(Z)V

    #@7
    .line 4459
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->setActivity(Lcom/android/internal/telephony/DctConstants$Activity;)V

    #@a
    .line 4456
    return-void
.end method

.method private handleStopNetStatPoll(Lcom/android/internal/telephony/DctConstants$Activity;)V
    .locals 0
    .param p1, "activity"    # Lcom/android/internal/telephony/DctConstants$Activity;

    #@0
    .prologue
    .line 4470
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->stopNetStatPoll()V

    #@3
    .line 4471
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->stopDataStallAlarm()V

    #@6
    .line 4472
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->setActivity(Lcom/android/internal/telephony/DctConstants$Activity;)V

    #@9
    .line 4469
    return-void
.end method

.method private initApnContexts()V
    .locals 8

    #@0
    .prologue
    .line 1101
    const-string/jumbo v4, "initApnContexts: E"

    #@3
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@6
    .line 1103
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    #@8
    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    #@b
    move-result-object v4

    #@c
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@f
    move-result-object v4

    #@10
    .line 1104
    const v5, 0x107000f

    #@13
    .line 1103
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    #@16
    move-result-object v3

    #@17
    .line 1105
    .local v3, "networkConfigStrings":[Ljava/lang/String;
    const/4 v4, 0x0

    #@18
    array-length v5, v3

    #@19
    :goto_0
    if-ge v4, v5, :cond_0

    #@1b
    aget-object v2, v3, v4

    #@1d
    .line 1106
    .local v2, "networkConfigString":Ljava/lang/String;
    new-instance v1, Landroid/net/NetworkConfig;

    #@1f
    invoke-direct {v1, v2}, Landroid/net/NetworkConfig;-><init>(Ljava/lang/String;)V

    #@22
    .line 1107
    .local v1, "networkConfig":Landroid/net/NetworkConfig;
    const/4 v0, 0x0

    #@23
    .line 1109
    .local v0, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    iget v6, v1, Landroid/net/NetworkConfig;->type:I

    #@25
    packed-switch v6, :pswitch_data_0

    #@28
    .line 1141
    :pswitch_0
    new-instance v6, Ljava/lang/StringBuilder;

    #@2a
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@2d
    const-string/jumbo v7, "initApnContexts: skipping unknown type="

    #@30
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v6

    #@34
    iget v7, v1, Landroid/net/NetworkConfig;->type:I

    #@36
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@39
    move-result-object v6

    #@3a
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3d
    move-result-object v6

    #@3e
    invoke-direct {p0, v6}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@41
    .line 1105
    .end local v0    # "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    :goto_1
    add-int/lit8 v4, v4, 0x1

    #@43
    goto :goto_0

    #@44
    .line 1111
    .restart local v0    # "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    :pswitch_1
    const-string/jumbo v6, "default"

    #@47
    invoke-direct {p0, v6, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->addApnContext(Ljava/lang/String;Landroid/net/NetworkConfig;)Lcom/android/internal/telephony/dataconnection/ApnContext;

    #@4a
    move-result-object v0

    #@4b
    .line 1144
    .local v0, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    :goto_2
    new-instance v6, Ljava/lang/StringBuilder;

    #@4d
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@50
    const-string/jumbo v7, "initApnContexts: apnContext="

    #@53
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@56
    move-result-object v6

    #@57
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v6

    #@5b
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5e
    move-result-object v6

    #@5f
    invoke-direct {p0, v6}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@62
    goto :goto_1

    #@63
    .line 1114
    .local v0, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    :pswitch_2
    const-string/jumbo v6, "mms"

    #@66
    invoke-direct {p0, v6, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->addApnContext(Ljava/lang/String;Landroid/net/NetworkConfig;)Lcom/android/internal/telephony/dataconnection/ApnContext;

    #@69
    move-result-object v0

    #@6a
    .local v0, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    goto :goto_2

    #@6b
    .line 1117
    .local v0, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    :pswitch_3
    const-string/jumbo v6, "supl"

    #@6e
    invoke-direct {p0, v6, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->addApnContext(Ljava/lang/String;Landroid/net/NetworkConfig;)Lcom/android/internal/telephony/dataconnection/ApnContext;

    #@71
    move-result-object v0

    #@72
    .local v0, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    goto :goto_2

    #@73
    .line 1120
    .local v0, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    :pswitch_4
    const-string/jumbo v6, "dun"

    #@76
    invoke-direct {p0, v6, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->addApnContext(Ljava/lang/String;Landroid/net/NetworkConfig;)Lcom/android/internal/telephony/dataconnection/ApnContext;

    #@79
    move-result-object v0

    #@7a
    .local v0, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    goto :goto_2

    #@7b
    .line 1123
    .local v0, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    :pswitch_5
    const-string/jumbo v6, "hipri"

    #@7e
    invoke-direct {p0, v6, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->addApnContext(Ljava/lang/String;Landroid/net/NetworkConfig;)Lcom/android/internal/telephony/dataconnection/ApnContext;

    #@81
    move-result-object v0

    #@82
    .local v0, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    goto :goto_2

    #@83
    .line 1126
    .local v0, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    :pswitch_6
    const-string/jumbo v6, "fota"

    #@86
    invoke-direct {p0, v6, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->addApnContext(Ljava/lang/String;Landroid/net/NetworkConfig;)Lcom/android/internal/telephony/dataconnection/ApnContext;

    #@89
    move-result-object v0

    #@8a
    .local v0, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    goto :goto_2

    #@8b
    .line 1129
    .local v0, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    :pswitch_7
    const-string/jumbo v6, "ims"

    #@8e
    invoke-direct {p0, v6, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->addApnContext(Ljava/lang/String;Landroid/net/NetworkConfig;)Lcom/android/internal/telephony/dataconnection/ApnContext;

    #@91
    move-result-object v0

    #@92
    .local v0, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    goto :goto_2

    #@93
    .line 1132
    .local v0, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    :pswitch_8
    const-string/jumbo v6, "cbs"

    #@96
    invoke-direct {p0, v6, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->addApnContext(Ljava/lang/String;Landroid/net/NetworkConfig;)Lcom/android/internal/telephony/dataconnection/ApnContext;

    #@99
    move-result-object v0

    #@9a
    .local v0, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    goto :goto_2

    #@9b
    .line 1135
    .local v0, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    :pswitch_9
    const-string/jumbo v6, "ia"

    #@9e
    invoke-direct {p0, v6, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->addApnContext(Ljava/lang/String;Landroid/net/NetworkConfig;)Lcom/android/internal/telephony/dataconnection/ApnContext;

    #@a1
    move-result-object v0

    #@a2
    .local v0, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    goto :goto_2

    #@a3
    .line 1138
    .local v0, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    :pswitch_a
    const-string/jumbo v6, "emergency"

    #@a6
    invoke-direct {p0, v6, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->addApnContext(Ljava/lang/String;Landroid/net/NetworkConfig;)Lcom/android/internal/telephony/dataconnection/ApnContext;

    #@a9
    move-result-object v0

    #@aa
    .local v0, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    goto :goto_2

    #@ab
    .line 1100
    .end local v0    # "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    .end local v1    # "networkConfig":Landroid/net/NetworkConfig;
    .end local v2    # "networkConfigString":Ljava/lang/String;
    :cond_0
    return-void

    #@ac
    .line 1109
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_0
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method private initEmergencyApnSetting()V
    .locals 7

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 4323
    const-string/jumbo v3, "type=\"emergency\""

    #@4
    .line 4324
    .local v3, "selection":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    #@6
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    #@9
    move-result-object v0

    #@a
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@d
    move-result-object v0

    #@e
    .line 4325
    sget-object v1, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    #@10
    move-object v4, v2

    #@11
    move-object v5, v2

    #@12
    .line 4324
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    #@15
    move-result-object v6

    #@16
    .line 4327
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    #@18
    .line 4328
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    #@1b
    move-result v0

    #@1c
    if-lez v0, :cond_0

    #@1e
    .line 4329
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    #@21
    move-result v0

    #@22
    if-eqz v0, :cond_0

    #@24
    .line 4330
    invoke-direct {p0, v6}, Lcom/android/internal/telephony/dataconnection/DcTracker;->makeApnSetting(Landroid/database/Cursor;)Lcom/android/internal/telephony/dataconnection/ApnSetting;

    #@27
    move-result-object v0

    #@28
    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mEmergencyApn:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    #@2a
    .line 4333
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    #@2d
    .line 4318
    :cond_1
    return-void
.end method

.method private isConnected()Z
    .locals 4

    #@0
    .prologue
    .line 3238
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    #@2
    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    #@5
    move-result-object v2

    #@6
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@9
    move-result-object v1

    #@a
    .local v1, "apnContext$iterator":Ljava/util/Iterator;
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
    check-cast v0, Lcom/android/internal/telephony/dataconnection/ApnContext;

    #@16
    .line 3239
    .local v0, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getState()Lcom/android/internal/telephony/DctConstants$State;

    #@19
    move-result-object v2

    #@1a
    sget-object v3, Lcom/android/internal/telephony/DctConstants$State;->CONNECTED:Lcom/android/internal/telephony/DctConstants$State;

    #@1c
    if-ne v2, v3, :cond_0

    #@1e
    .line 3241
    const/4 v2, 0x1

    #@1f
    return v2

    #@20
    .line 3245
    .end local v0    # "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    :cond_1
    const/4 v2, 0x0

    #@21
    return v2
.end method

.method private isDataAllowed(Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReason;)Z
    .locals 14
    .param p1, "failureReason"    # Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReason;

    #@0
    .prologue
    const/4 v10, 0x1

    #@1
    const/4 v11, 0x0

    #@2
    .line 1348
    iget-object v12, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDataEnabledSettings:Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;

    #@4
    invoke-virtual {v12}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->isInternalDataEnabled()Z

    #@7
    move-result v4

    #@8
    .line 1350
    .local v4, "internalDataEnabled":Z
    iget-object v12, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAttached:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@a
    invoke-virtual {v12}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    #@d
    move-result v0

    #@e
    .line 1351
    .local v0, "attachedState":Z
    iget-object v12, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    #@10
    invoke-virtual {v12}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    #@13
    move-result-object v12

    #@14
    invoke-virtual {v12}, Lcom/android/internal/telephony/ServiceStateTracker;->getDesiredPowerState()Z

    #@17
    move-result v3

    #@18
    .line 1352
    .local v3, "desiredPowerState":Z
    iget-object v12, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    #@1a
    invoke-virtual {v12}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    #@1d
    move-result-object v12

    #@1e
    invoke-virtual {v12}, Lcom/android/internal/telephony/ServiceStateTracker;->getPowerStateFromCarrier()Z

    #@21
    move-result v6

    #@22
    .line 1353
    .local v6, "radioStateFromCarrier":Z
    iget-object v12, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    #@24
    invoke-virtual {v12}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    #@27
    move-result-object v12

    #@28
    invoke-virtual {v12}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    #@2b
    move-result v7

    #@2c
    .line 1354
    .local v7, "radioTech":I
    const/16 v12, 0x12

    #@2e
    if-ne v7, v12, :cond_0

    #@30
    .line 1355
    const/4 v3, 0x1

    #@31
    .line 1356
    .local v3, "desiredPowerState":Z
    const/4 v6, 0x1

    #@32
    .line 1359
    .end local v3    # "desiredPowerState":Z
    .end local v6    # "radioStateFromCarrier":Z
    :cond_0
    iget-object v12, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    #@34
    invoke-virtual {v12}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    #@37
    move-result-object v5

    #@38
    check-cast v5, Lcom/android/internal/telephony/uicc/IccRecords;

    #@3a
    .line 1360
    .local v5, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    const/4 v8, 0x0

    #@3b
    .line 1361
    .local v8, "recordsLoaded":Z
    if-eqz v5, :cond_1

    #@3d
    .line 1362
    invoke-virtual {v5}, Lcom/android/internal/telephony/uicc/IccRecords;->getRecordsLoaded()Z

    #@40
    move-result v8

    #@41
    .line 1363
    .local v8, "recordsLoaded":Z
    if-eqz v8, :cond_4

    #@43
    .line 1366
    .end local v8    # "recordsLoaded":Z
    :cond_1
    :goto_0
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    #@46
    move-result v1

    #@47
    .line 1367
    .local v1, "dataSub":I
    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    #@4a
    move-result v2

    #@4b
    .line 1369
    .local v2, "defaultDataSelected":Z
    sget-object v9, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    #@4d
    .line 1377
    .local v9, "state":Lcom/android/internal/telephony/PhoneConstants$State;
    iget-object v12, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    #@4f
    invoke-virtual {v12}, Lcom/android/internal/telephony/Phone;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    #@52
    move-result-object v12

    #@53
    if-eqz v12, :cond_2

    #@55
    .line 1378
    iget-object v12, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    #@57
    invoke-virtual {v12}, Lcom/android/internal/telephony/Phone;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    #@5a
    move-result-object v12

    #@5b
    invoke-virtual {v12}, Lcom/android/internal/telephony/CallTracker;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    #@5e
    move-result-object v9

    #@5f
    .line 1381
    :cond_2
    if-eqz p1, :cond_3

    #@61
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReason;->clearAllReasons()V

    #@64
    .line 1382
    :cond_3
    if-nez v0, :cond_5

    #@66
    iget-object v12, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAutoAttachOnCreation:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@68
    invoke-virtual {v12}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    #@6b
    move-result v12

    #@6c
    :goto_1
    if-nez v12, :cond_7

    #@6e
    .line 1383
    if-nez p1, :cond_6

    #@70
    return v11

    #@71
    .line 1363
    .end local v1    # "dataSub":I
    .end local v2    # "defaultDataSelected":Z
    .end local v9    # "state":Lcom/android/internal/telephony/PhoneConstants$State;
    .restart local v8    # "recordsLoaded":Z
    :cond_4
    new-instance v12, Ljava/lang/StringBuilder;

    #@73
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@76
    const-string/jumbo v13, "isDataAllowed getRecordsLoaded="

    #@79
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7c
    move-result-object v12

    #@7d
    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@80
    move-result-object v12

    #@81
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@84
    move-result-object v12

    #@85
    invoke-direct {p0, v12}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@88
    goto :goto_0

    #@89
    .end local v8    # "recordsLoaded":Z
    .restart local v1    # "dataSub":I
    .restart local v2    # "defaultDataSelected":Z
    .restart local v9    # "state":Lcom/android/internal/telephony/PhoneConstants$State;
    :cond_5
    move v12, v10

    #@8a
    .line 1382
    goto :goto_1

    #@8b
    .line 1384
    :cond_6
    sget-object v12, Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReasonType;->NOT_ATTACHED:Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReasonType;

    #@8d
    invoke-virtual {p1, v12}, Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReason;->addDataAllowFailReason(Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReasonType;)V

    #@90
    .line 1386
    :cond_7
    if-nez v8, :cond_9

    #@92
    .line 1387
    if-nez p1, :cond_8

    #@94
    return v11

    #@95
    .line 1388
    :cond_8
    sget-object v12, Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReasonType;->RECORD_NOT_LOADED:Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReasonType;

    #@97
    invoke-virtual {p1, v12}, Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReason;->addDataAllowFailReason(Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReasonType;)V

    #@9a
    .line 1390
    :cond_9
    sget-object v12, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    #@9c
    if-eq v9, v12, :cond_a

    #@9e
    .line 1391
    iget-object v12, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    #@a0
    invoke-virtual {v12}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    #@a3
    move-result-object v12

    #@a4
    invoke-virtual {v12}, Lcom/android/internal/telephony/ServiceStateTracker;->isConcurrentVoiceAndDataAllowed()Z

    #@a7
    move-result v12

    #@a8
    if-eqz v12, :cond_b

    #@aa
    .line 1397
    :cond_a
    :goto_2
    if-nez v4, :cond_e

    #@ac
    .line 1398
    if-nez p1, :cond_d

    #@ae
    return v11

    #@af
    .line 1392
    :cond_b
    if-nez p1, :cond_c

    #@b1
    return v11

    #@b2
    .line 1393
    :cond_c
    sget-object v12, Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReasonType;->INVALID_PHONE_STATE:Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReasonType;

    #@b4
    invoke-virtual {p1, v12}, Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReason;->addDataAllowFailReason(Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReasonType;)V

    #@b7
    .line 1395
    sget-object v12, Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReasonType;->CONCURRENT_VOICE_DATA_NOT_ALLOWED:Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReasonType;

    #@b9
    .line 1394
    invoke-virtual {p1, v12}, Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReason;->addDataAllowFailReason(Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReasonType;)V

    #@bc
    goto :goto_2

    #@bd
    .line 1399
    :cond_d
    sget-object v12, Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReasonType;->INTERNAL_DATA_DISABLED:Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReasonType;

    #@bf
    invoke-virtual {p1, v12}, Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReason;->addDataAllowFailReason(Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReasonType;)V

    #@c2
    .line 1401
    :cond_e
    if-nez v2, :cond_10

    #@c4
    .line 1402
    if-nez p1, :cond_f

    #@c6
    return v11

    #@c7
    .line 1404
    :cond_f
    sget-object v12, Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReasonType;->DEFAULT_DATA_UNSELECTED:Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReasonType;

    #@c9
    .line 1403
    invoke-virtual {p1, v12}, Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReason;->addDataAllowFailReason(Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReasonType;)V

    #@cc
    .line 1406
    :cond_10
    iget-object v12, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    #@ce
    invoke-virtual {v12}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    #@d1
    move-result-object v12

    #@d2
    invoke-virtual {v12}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    #@d5
    move-result v12

    #@d6
    if-eqz v12, :cond_11

    #@d8
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->getDataOnRoamingEnabled()Z

    #@db
    move-result v12

    #@dc
    if-eqz v12, :cond_12

    #@de
    .line 1410
    :cond_11
    :goto_3
    iget-boolean v12, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mIsPsRestricted:Z

    #@e0
    if-eqz v12, :cond_15

    #@e2
    .line 1411
    if-nez p1, :cond_14

    #@e4
    return v11

    #@e5
    .line 1407
    :cond_12
    if-nez p1, :cond_13

    #@e7
    return v11

    #@e8
    .line 1408
    :cond_13
    sget-object v12, Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReasonType;->ROAMING_DISABLED:Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReasonType;

    #@ea
    invoke-virtual {p1, v12}, Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReason;->addDataAllowFailReason(Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReasonType;)V

    #@ed
    goto :goto_3

    #@ee
    .line 1412
    :cond_14
    sget-object v12, Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReasonType;->PS_RESTRICTED:Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReasonType;

    #@f0
    invoke-virtual {p1, v12}, Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReason;->addDataAllowFailReason(Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReasonType;)V

    #@f3
    .line 1414
    :cond_15
    if-nez v3, :cond_17

    #@f5
    .line 1415
    if-nez p1, :cond_16

    #@f7
    return v11

    #@f8
    .line 1416
    :cond_16
    sget-object v12, Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReasonType;->UNDESIRED_POWER_STATE:Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReasonType;

    #@fa
    invoke-virtual {p1, v12}, Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReason;->addDataAllowFailReason(Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReasonType;)V

    #@fd
    .line 1418
    :cond_17
    if-nez v6, :cond_19

    #@ff
    .line 1419
    if-nez p1, :cond_18

    #@101
    return v11

    #@102
    .line 1420
    :cond_18
    sget-object v12, Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReasonType;->RADIO_DISABLED_BY_CARRIER:Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReasonType;

    #@104
    invoke-virtual {p1, v12}, Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReason;->addDataAllowFailReason(Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReasonType;)V

    #@107
    .line 1423
    :cond_19
    if-eqz p1, :cond_1a

    #@109
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReason;->isFailed()Z

    #@10c
    move-result v12

    #@10d
    if-eqz v12, :cond_1a

    #@10f
    move v10, v11

    #@110
    :cond_1a
    return v10
.end method

.method private isDataAllowedForApn(Lcom/android/internal/telephony/dataconnection/ApnContext;)Z
    .locals 2
    .param p1, "apnContext"    # Lcom/android/internal/telephony/dataconnection/ApnContext;

    #@0
    .prologue
    .line 1300
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    const-string/jumbo v1, "default"

    #@7
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@a
    move-result v0

    #@b
    if-nez v0, :cond_0

    #@d
    .line 1301
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    #@10
    move-result-object v0

    #@11
    const-string/jumbo v1, "ia"

    #@14
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@17
    move-result v0

    #@18
    .line 1300
    if-eqz v0, :cond_1

    #@1a
    .line 1302
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    #@1c
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    #@1f
    move-result-object v0

    #@20
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    #@23
    move-result v0

    #@24
    .line 1303
    const/16 v1, 0x12

    #@26
    .line 1302
    if-ne v0, v1, :cond_1

    #@28
    .line 1304
    const-string/jumbo v0, "Default data call activation not allowed in iwlan."

    #@2b
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@2e
    .line 1305
    const/4 v0, 0x0

    #@2f
    return v0

    #@30
    .line 1308
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->isReady()Z

    #@33
    move-result v0

    #@34
    return v0
.end method

.method private isHigherPriorityApnContextActive(Lcom/android/internal/telephony/dataconnection/ApnContext;)Z
    .locals 5
    .param p1, "apnContext"    # Lcom/android/internal/telephony/dataconnection/ApnContext;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 2232
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPrioritySortedApnContexts:Ljava/util/PriorityQueue;

    #@3
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@6
    move-result-object v1

    #@7
    .local v1, "otherContext$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@a
    move-result v2

    #@b
    if-eqz v2, :cond_2

    #@d
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@10
    move-result-object v0

    #@11
    check-cast v0, Lcom/android/internal/telephony/dataconnection/ApnContext;

    #@13
    .line 2233
    .local v0, "otherContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    #@16
    move-result-object v2

    #@17
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    #@1a
    move-result-object v3

    #@1b
    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@1e
    move-result v2

    #@1f
    if-eqz v2, :cond_1

    #@21
    return v4

    #@22
    .line 2234
    :cond_1
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->isEnabled()Z

    #@25
    move-result v2

    #@26
    if-eqz v2, :cond_0

    #@28
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getState()Lcom/android/internal/telephony/DctConstants$State;

    #@2b
    move-result-object v2

    #@2c
    sget-object v3, Lcom/android/internal/telephony/DctConstants$State;->FAILED:Lcom/android/internal/telephony/DctConstants$State;

    #@2e
    if-eq v2, v3, :cond_0

    #@30
    .line 2235
    const/4 v2, 0x1

    #@31
    return v2

    #@32
    .line 2238
    .end local v0    # "otherContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    :cond_2
    return v4
.end method

.method private isOnlySingleDcAllowed(I)Z
    .locals 5
    .param p1, "rilRadioTech"    # I

    #@0
    .prologue
    .line 2248
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    #@2
    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    #@5
    move-result-object v3

    #@6
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@9
    move-result-object v3

    #@a
    .line 2249
    const v4, 0x1070034

    #@d
    .line 2248
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getIntArray(I)[I

    #@10
    move-result-object v2

    #@11
    .line 2250
    .local v2, "singleDcRats":[I
    const/4 v1, 0x0

    #@12
    .line 2251
    .local v1, "onlySingleDcAllowed":Z
    sget-boolean v3, Landroid/os/Build;->IS_DEBUGGABLE:Z

    #@14
    if-eqz v3, :cond_0

    #@16
    .line 2252
    const-string/jumbo v3, "persist.telephony.test.singleDc"

    #@19
    const/4 v4, 0x0

    #@1a
    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    #@1d
    move-result v3

    #@1e
    .line 2251
    if-eqz v3, :cond_0

    #@20
    .line 2253
    const/4 v1, 0x1

    #@21
    .line 2255
    :cond_0
    if-eqz v2, :cond_2

    #@23
    .line 2256
    const/4 v0, 0x0

    #@24
    .local v0, "i":I
    :goto_0
    array-length v3, v2

    #@25
    if-ge v0, v3, :cond_2

    #@27
    if-nez v1, :cond_2

    #@29
    .line 2257
    aget v3, v2, v0

    #@2b
    if-ne p1, v3, :cond_1

    #@2d
    const/4 v1, 0x1

    #@2e
    .line 2256
    :cond_1
    add-int/lit8 v0, v0, 0x1

    #@30
    goto :goto_0

    #@31
    .line 2261
    .end local v0    # "i":I
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    #@33
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@36
    const-string/jumbo v4, "isOnlySingleDcAllowed("

    #@39
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v3

    #@3d
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@40
    move-result-object v3

    #@41
    const-string/jumbo v4, "): "

    #@44
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v3

    #@48
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v3

    #@4c
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4f
    move-result-object v3

    #@50
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@53
    .line 2262
    return v1
.end method

.method private isProvisioningApn(Ljava/lang/String;)Z
    .locals 2
    .param p1, "apnType"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1216
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    #@2
    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/android/internal/telephony/dataconnection/ApnContext;

    #@8
    .line 1217
    .local v0, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    if-eqz v0, :cond_0

    #@a
    .line 1218
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->isProvisioningApn()Z

    #@d
    move-result v1

    #@e
    return v1

    #@f
    .line 1220
    :cond_0
    const/4 v1, 0x0

    #@10
    return v1
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 4174
    const-string/jumbo v0, "DCT"

    #@3
    new-instance v1, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v2, "["

    #@b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v1

    #@f
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    #@11
    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    #@14
    move-result v2

    #@15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@18
    move-result-object v1

    #@19
    const-string/jumbo v2, "]"

    #@1c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v1

    #@20
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v1

    #@24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@27
    move-result-object v1

    #@28
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@2b
    .line 4173
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 4178
    const-string/jumbo v0, "DCT"

    #@3
    new-instance v1, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v2, "["

    #@b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v1

    #@f
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    #@11
    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    #@14
    move-result v2

    #@15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@18
    move-result-object v1

    #@19
    const-string/jumbo v2, "]"

    #@1c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v1

    #@20
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v1

    #@24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@27
    move-result-object v1

    #@28
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@2b
    .line 4177
    return-void
.end method

.method private makeApnSetting(Landroid/database/Cursor;)Lcom/android/internal/telephony/dataconnection/ApnSetting;
    .locals 29
    .param p1, "cursor"    # Landroid/database/Cursor;

    #@0
    .prologue
    .line 1926
    const-string/jumbo v3, "type"

    #@3
    move-object/from16 v0, p1

    #@5
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    #@8
    move-result v3

    #@9
    move-object/from16 v0, p1

    #@b
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    #@e
    move-result-object v3

    #@f
    .line 1925
    move-object/from16 v0, p0

    #@11
    invoke-direct {v0, v3}, Lcom/android/internal/telephony/dataconnection/DcTracker;->parseTypes(Ljava/lang/String;)[Ljava/lang/String;

    #@14
    move-result-object v15

    #@15
    .line 1927
    .local v15, "types":[Ljava/lang/String;
    new-instance v2, Lcom/android/internal/telephony/dataconnection/ApnSetting;

    #@17
    .line 1928
    const-string/jumbo v3, "_id"

    #@1a
    move-object/from16 v0, p1

    #@1c
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    #@1f
    move-result v3

    #@20
    move-object/from16 v0, p1

    #@22
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    #@25
    move-result v3

    #@26
    .line 1929
    const-string/jumbo v4, "numeric"

    #@29
    move-object/from16 v0, p1

    #@2b
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    #@2e
    move-result v4

    #@2f
    move-object/from16 v0, p1

    #@31
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    #@34
    move-result-object v4

    #@35
    .line 1930
    const-string/jumbo v5, "name"

    #@38
    move-object/from16 v0, p1

    #@3a
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    #@3d
    move-result v5

    #@3e
    move-object/from16 v0, p1

    #@40
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    #@43
    move-result-object v5

    #@44
    .line 1931
    const-string/jumbo v6, "apn"

    #@47
    move-object/from16 v0, p1

    #@49
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    #@4c
    move-result v6

    #@4d
    move-object/from16 v0, p1

    #@4f
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    #@52
    move-result-object v6

    #@53
    .line 1934
    const-string/jumbo v7, "proxy"

    #@56
    move-object/from16 v0, p1

    #@58
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    #@5b
    move-result v7

    #@5c
    .line 1933
    move-object/from16 v0, p1

    #@5e
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    #@61
    move-result-object v7

    #@62
    .line 1932
    invoke-static {v7}, Landroid/net/NetworkUtils;->trimV4AddrZeros(Ljava/lang/String;)Ljava/lang/String;

    #@65
    move-result-object v7

    #@66
    .line 1935
    const-string/jumbo v8, "port"

    #@69
    move-object/from16 v0, p1

    #@6b
    invoke-interface {v0, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    #@6e
    move-result v8

    #@6f
    move-object/from16 v0, p1

    #@71
    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    #@74
    move-result-object v8

    #@75
    .line 1938
    const-string/jumbo v9, "mmsc"

    #@78
    move-object/from16 v0, p1

    #@7a
    invoke-interface {v0, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    #@7d
    move-result v9

    #@7e
    .line 1937
    move-object/from16 v0, p1

    #@80
    invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    #@83
    move-result-object v9

    #@84
    .line 1936
    invoke-static {v9}, Landroid/net/NetworkUtils;->trimV4AddrZeros(Ljava/lang/String;)Ljava/lang/String;

    #@87
    move-result-object v9

    #@88
    .line 1941
    const-string/jumbo v10, "mmsproxy"

    #@8b
    move-object/from16 v0, p1

    #@8d
    invoke-interface {v0, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    #@90
    move-result v10

    #@91
    .line 1940
    move-object/from16 v0, p1

    #@93
    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    #@96
    move-result-object v10

    #@97
    .line 1939
    invoke-static {v10}, Landroid/net/NetworkUtils;->trimV4AddrZeros(Ljava/lang/String;)Ljava/lang/String;

    #@9a
    move-result-object v10

    #@9b
    .line 1942
    const-string/jumbo v11, "mmsport"

    #@9e
    move-object/from16 v0, p1

    #@a0
    invoke-interface {v0, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    #@a3
    move-result v11

    #@a4
    move-object/from16 v0, p1

    #@a6
    invoke-interface {v0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    #@a9
    move-result-object v11

    #@aa
    .line 1943
    const-string/jumbo v12, "user"

    #@ad
    move-object/from16 v0, p1

    #@af
    invoke-interface {v0, v12}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    #@b2
    move-result v12

    #@b3
    move-object/from16 v0, p1

    #@b5
    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    #@b8
    move-result-object v12

    #@b9
    .line 1944
    const-string/jumbo v13, "password"

    #@bc
    move-object/from16 v0, p1

    #@be
    invoke-interface {v0, v13}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    #@c1
    move-result v13

    #@c2
    move-object/from16 v0, p1

    #@c4
    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    #@c7
    move-result-object v13

    #@c8
    .line 1945
    const-string/jumbo v14, "authtype"

    #@cb
    move-object/from16 v0, p1

    #@cd
    invoke-interface {v0, v14}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    #@d0
    move-result v14

    #@d1
    move-object/from16 v0, p1

    #@d3
    invoke-interface {v0, v14}, Landroid/database/Cursor;->getInt(I)I

    #@d6
    move-result v14

    #@d7
    .line 1947
    const-string/jumbo v16, "protocol"

    #@da
    move-object/from16 v0, p1

    #@dc
    move-object/from16 v1, v16

    #@de
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    #@e1
    move-result v16

    #@e2
    move-object/from16 v0, p1

    #@e4
    move/from16 v1, v16

    #@e6
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    #@e9
    move-result-object v16

    #@ea
    .line 1949
    const-string/jumbo v17, "roaming_protocol"

    #@ed
    .line 1948
    move-object/from16 v0, p1

    #@ef
    move-object/from16 v1, v17

    #@f1
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    #@f4
    move-result v17

    #@f5
    move-object/from16 v0, p1

    #@f7
    move/from16 v1, v17

    #@f9
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    #@fc
    move-result-object v17

    #@fd
    .line 1951
    const-string/jumbo v18, "carrier_enabled"

    #@100
    .line 1950
    move-object/from16 v0, p1

    #@102
    move-object/from16 v1, v18

    #@104
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    #@107
    move-result v18

    #@108
    move-object/from16 v0, p1

    #@10a
    move/from16 v1, v18

    #@10c
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    #@10f
    move-result v18

    #@110
    .line 1951
    const/16 v19, 0x1

    #@112
    .line 1950
    move/from16 v0, v18

    #@114
    move/from16 v1, v19

    #@116
    if-ne v0, v1, :cond_0

    #@118
    const/16 v18, 0x1

    #@11a
    .line 1952
    :goto_0
    const-string/jumbo v19, "bearer"

    #@11d
    move-object/from16 v0, p1

    #@11f
    move-object/from16 v1, v19

    #@121
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    #@124
    move-result v19

    #@125
    move-object/from16 v0, p1

    #@127
    move/from16 v1, v19

    #@129
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    #@12c
    move-result v19

    #@12d
    .line 1953
    const-string/jumbo v20, "bearer_bitmask"

    #@130
    move-object/from16 v0, p1

    #@132
    move-object/from16 v1, v20

    #@134
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    #@137
    move-result v20

    #@138
    move-object/from16 v0, p1

    #@13a
    move/from16 v1, v20

    #@13c
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    #@13f
    move-result v20

    #@140
    .line 1954
    const-string/jumbo v21, "profile_id"

    #@143
    move-object/from16 v0, p1

    #@145
    move-object/from16 v1, v21

    #@147
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    #@14a
    move-result v21

    #@14b
    move-object/from16 v0, p1

    #@14d
    move/from16 v1, v21

    #@14f
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    #@152
    move-result v21

    #@153
    .line 1956
    const-string/jumbo v22, "modem_cognitive"

    #@156
    .line 1955
    move-object/from16 v0, p1

    #@158
    move-object/from16 v1, v22

    #@15a
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    #@15d
    move-result v22

    #@15e
    move-object/from16 v0, p1

    #@160
    move/from16 v1, v22

    #@162
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    #@165
    move-result v22

    #@166
    .line 1956
    const/16 v23, 0x1

    #@168
    .line 1955
    move/from16 v0, v22

    #@16a
    move/from16 v1, v23

    #@16c
    if-ne v0, v1, :cond_1

    #@16e
    const/16 v22, 0x1

    #@170
    .line 1957
    :goto_1
    const-string/jumbo v23, "max_conns"

    #@173
    move-object/from16 v0, p1

    #@175
    move-object/from16 v1, v23

    #@177
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    #@17a
    move-result v23

    #@17b
    move-object/from16 v0, p1

    #@17d
    move/from16 v1, v23

    #@17f
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    #@182
    move-result v23

    #@183
    .line 1959
    const-string/jumbo v24, "wait_time"

    #@186
    .line 1958
    move-object/from16 v0, p1

    #@188
    move-object/from16 v1, v24

    #@18a
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    #@18d
    move-result v24

    #@18e
    move-object/from16 v0, p1

    #@190
    move/from16 v1, v24

    #@192
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    #@195
    move-result v24

    #@196
    .line 1960
    const-string/jumbo v25, "max_conns_time"

    #@199
    move-object/from16 v0, p1

    #@19b
    move-object/from16 v1, v25

    #@19d
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    #@1a0
    move-result v25

    #@1a1
    move-object/from16 v0, p1

    #@1a3
    move/from16 v1, v25

    #@1a5
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    #@1a8
    move-result v25

    #@1a9
    .line 1961
    const-string/jumbo v26, "mtu"

    #@1ac
    move-object/from16 v0, p1

    #@1ae
    move-object/from16 v1, v26

    #@1b0
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    #@1b3
    move-result v26

    #@1b4
    move-object/from16 v0, p1

    #@1b6
    move/from16 v1, v26

    #@1b8
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    #@1bb
    move-result v26

    #@1bc
    .line 1962
    const-string/jumbo v27, "mvno_type"

    #@1bf
    move-object/from16 v0, p1

    #@1c1
    move-object/from16 v1, v27

    #@1c3
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    #@1c6
    move-result v27

    #@1c7
    move-object/from16 v0, p1

    #@1c9
    move/from16 v1, v27

    #@1cb
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    #@1ce
    move-result-object v27

    #@1cf
    .line 1963
    const-string/jumbo v28, "mvno_match_data"

    #@1d2
    move-object/from16 v0, p1

    #@1d4
    move-object/from16 v1, v28

    #@1d6
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    #@1d9
    move-result v28

    #@1da
    move-object/from16 v0, p1

    #@1dc
    move/from16 v1, v28

    #@1de
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    #@1e1
    move-result-object v28

    #@1e2
    .line 1927
    invoke-direct/range {v2 .. v28}, Lcom/android/internal/telephony/dataconnection/ApnSetting;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIIIZIIIILjava/lang/String;Ljava/lang/String;)V

    #@1e5
    .line 1964
    .local v2, "apn":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    return-object v2

    #@1e6
    .line 1950
    .end local v2    # "apn":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    :cond_0
    const/16 v18, 0x0

    #@1e8
    goto/16 :goto_0

    #@1ea
    .line 1955
    :cond_1
    const/16 v22, 0x0

    #@1ec
    goto :goto_1
.end method

.method private mergeApns(Lcom/android/internal/telephony/dataconnection/ApnSetting;Lcom/android/internal/telephony/dataconnection/ApnSetting;)Lcom/android/internal/telephony/dataconnection/ApnSetting;
    .locals 30
    .param p1, "dest"    # Lcom/android/internal/telephony/dataconnection/ApnSetting;
    .param p2, "src"    # Lcom/android/internal/telephony/dataconnection/ApnSetting;

    #@0
    .prologue
    .line 3431
    move-object/from16 v0, p1

    #@2
    iget v2, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->id:I

    #@4
    .line 3432
    .local v2, "id":I
    new-instance v28, Ljava/util/ArrayList;

    #@6
    invoke-direct/range {v28 .. v28}, Ljava/util/ArrayList;-><init>()V

    #@9
    .line 3433
    .local v28, "resultTypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, p1

    #@b
    iget-object v1, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->types:[Ljava/lang/String;

    #@d
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    #@10
    move-result-object v1

    #@11
    move-object/from16 v0, v28

    #@13
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    #@16
    .line 3434
    move-object/from16 v0, p2

    #@18
    iget-object v3, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->types:[Ljava/lang/String;

    #@1a
    const/4 v1, 0x0

    #@1b
    array-length v4, v3

    #@1c
    :goto_0
    if-ge v1, v4, :cond_2

    #@1e
    aget-object v29, v3, v1

    #@20
    .line 3435
    .local v29, "srcType":Ljava/lang/String;
    invoke-virtual/range {v28 .. v29}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    #@23
    move-result v5

    #@24
    if-nez v5, :cond_0

    #@26
    invoke-virtual/range {v28 .. v29}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@29
    .line 3436
    :cond_0
    const-string/jumbo v5, "default"

    #@2c
    move-object/from16 v0, v29

    #@2e
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@31
    move-result v5

    #@32
    if-eqz v5, :cond_1

    #@34
    move-object/from16 v0, p2

    #@36
    iget v2, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->id:I

    #@38
    .line 3434
    :cond_1
    add-int/lit8 v1, v1, 0x1

    #@3a
    goto :goto_0

    #@3b
    .line 3438
    .end local v29    # "srcType":Ljava/lang/String;
    :cond_2
    move-object/from16 v0, p1

    #@3d
    iget-object v1, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mmsc:Ljava/lang/String;

    #@3f
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@42
    move-result v1

    #@43
    if-eqz v1, :cond_4

    #@45
    move-object/from16 v0, p2

    #@47
    iget-object v8, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mmsc:Ljava/lang/String;

    #@49
    .line 3439
    .local v8, "mmsc":Ljava/lang/String;
    :goto_1
    move-object/from16 v0, p1

    #@4b
    iget-object v1, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mmsProxy:Ljava/lang/String;

    #@4d
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@50
    move-result v1

    #@51
    if-eqz v1, :cond_5

    #@53
    move-object/from16 v0, p2

    #@55
    iget-object v9, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mmsProxy:Ljava/lang/String;

    #@57
    .line 3440
    .local v9, "mmsProxy":Ljava/lang/String;
    :goto_2
    move-object/from16 v0, p1

    #@59
    iget-object v1, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mmsPort:Ljava/lang/String;

    #@5b
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@5e
    move-result v1

    #@5f
    if-eqz v1, :cond_6

    #@61
    move-object/from16 v0, p2

    #@63
    iget-object v10, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mmsPort:Ljava/lang/String;

    #@65
    .line 3441
    .local v10, "mmsPort":Ljava/lang/String;
    :goto_3
    move-object/from16 v0, p1

    #@67
    iget-object v1, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->proxy:Ljava/lang/String;

    #@69
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@6c
    move-result v1

    #@6d
    if-eqz v1, :cond_7

    #@6f
    move-object/from16 v0, p2

    #@71
    iget-object v6, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->proxy:Ljava/lang/String;

    #@73
    .line 3442
    .local v6, "proxy":Ljava/lang/String;
    :goto_4
    move-object/from16 v0, p1

    #@75
    iget-object v1, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->port:Ljava/lang/String;

    #@77
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@7a
    move-result v1

    #@7b
    if-eqz v1, :cond_8

    #@7d
    move-object/from16 v0, p2

    #@7f
    iget-object v7, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->port:Ljava/lang/String;

    #@81
    .line 3443
    .local v7, "port":Ljava/lang/String;
    :goto_5
    move-object/from16 v0, p2

    #@83
    iget-object v1, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->protocol:Ljava/lang/String;

    #@85
    const-string/jumbo v3, "IPV4V6"

    #@88
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@8b
    move-result v1

    #@8c
    if-eqz v1, :cond_9

    #@8e
    move-object/from16 v0, p2

    #@90
    iget-object v15, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->protocol:Ljava/lang/String;

    #@92
    .line 3444
    .local v15, "protocol":Ljava/lang/String;
    :goto_6
    move-object/from16 v0, p2

    #@94
    iget-object v1, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->roamingProtocol:Ljava/lang/String;

    #@96
    const-string/jumbo v3, "IPV4V6"

    #@99
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@9c
    move-result v1

    #@9d
    if-eqz v1, :cond_a

    #@9f
    move-object/from16 v0, p2

    #@a1
    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->roamingProtocol:Ljava/lang/String;

    #@a3
    move-object/from16 v16, v0

    #@a5
    .line 3446
    .local v16, "roamingProtocol":Ljava/lang/String;
    :goto_7
    move-object/from16 v0, p1

    #@a7
    iget v1, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->bearerBitmask:I

    #@a9
    if-eqz v1, :cond_3

    #@ab
    move-object/from16 v0, p2

    #@ad
    iget v1, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->bearerBitmask:I

    #@af
    if-nez v1, :cond_b

    #@b1
    .line 3447
    :cond_3
    const/16 v19, 0x0

    #@b3
    .line 3449
    .local v19, "bearerBitmask":I
    :goto_8
    new-instance v1, Lcom/android/internal/telephony/dataconnection/ApnSetting;

    #@b5
    move-object/from16 v0, p1

    #@b7
    iget-object v3, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->numeric:Ljava/lang/String;

    #@b9
    move-object/from16 v0, p1

    #@bb
    iget-object v4, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->carrier:Ljava/lang/String;

    #@bd
    move-object/from16 v0, p1

    #@bf
    iget-object v5, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->apn:Ljava/lang/String;

    #@c1
    .line 3450
    move-object/from16 v0, p1

    #@c3
    iget-object v11, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->user:Ljava/lang/String;

    #@c5
    move-object/from16 v0, p1

    #@c7
    iget-object v12, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->password:Ljava/lang/String;

    #@c9
    .line 3451
    move-object/from16 v0, p1

    #@cb
    iget v13, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->authType:I

    #@cd
    const/4 v14, 0x0

    #@ce
    new-array v14, v14, [Ljava/lang/String;

    #@d0
    move-object/from16 v0, v28

    #@d2
    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@d5
    move-result-object v14

    #@d6
    check-cast v14, [Ljava/lang/String;

    #@d8
    .line 3452
    move-object/from16 v0, p1

    #@da
    iget-boolean v0, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->carrierEnabled:Z

    #@dc
    move/from16 v17, v0

    #@de
    move-object/from16 v0, p1

    #@e0
    iget v0, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->profileId:I

    #@e2
    move/from16 v20, v0

    #@e4
    .line 3453
    move-object/from16 v0, p1

    #@e6
    iget-boolean v0, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->modemCognitive:Z

    #@e8
    move/from16 v18, v0

    #@ea
    if-nez v18, :cond_c

    #@ec
    move-object/from16 v0, p2

    #@ee
    iget-boolean v0, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->modemCognitive:Z

    #@f0
    move/from16 v21, v0

    #@f2
    :goto_9
    move-object/from16 v0, p1

    #@f4
    iget v0, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->maxConns:I

    #@f6
    move/from16 v22, v0

    #@f8
    move-object/from16 v0, p1

    #@fa
    iget v0, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->waitTime:I

    #@fc
    move/from16 v23, v0

    #@fe
    .line 3454
    move-object/from16 v0, p1

    #@100
    iget v0, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->maxConnsTime:I

    #@102
    move/from16 v24, v0

    #@104
    move-object/from16 v0, p1

    #@106
    iget v0, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mtu:I

    #@108
    move/from16 v25, v0

    #@10a
    move-object/from16 v0, p1

    #@10c
    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mvnoType:Ljava/lang/String;

    #@10e
    move-object/from16 v26, v0

    #@110
    move-object/from16 v0, p1

    #@112
    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mvnoMatchData:Ljava/lang/String;

    #@114
    move-object/from16 v27, v0

    #@116
    .line 3452
    const/16 v18, 0x0

    #@118
    .line 3449
    invoke-direct/range {v1 .. v27}, Lcom/android/internal/telephony/dataconnection/ApnSetting;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIIIZIIIILjava/lang/String;Ljava/lang/String;)V

    #@11b
    return-object v1

    #@11c
    .line 3438
    .end local v6    # "proxy":Ljava/lang/String;
    .end local v7    # "port":Ljava/lang/String;
    .end local v8    # "mmsc":Ljava/lang/String;
    .end local v9    # "mmsProxy":Ljava/lang/String;
    .end local v10    # "mmsPort":Ljava/lang/String;
    .end local v15    # "protocol":Ljava/lang/String;
    .end local v16    # "roamingProtocol":Ljava/lang/String;
    .end local v19    # "bearerBitmask":I
    :cond_4
    move-object/from16 v0, p1

    #@11e
    iget-object v8, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mmsc:Ljava/lang/String;

    #@120
    .restart local v8    # "mmsc":Ljava/lang/String;
    goto/16 :goto_1

    #@122
    .line 3439
    :cond_5
    move-object/from16 v0, p1

    #@124
    iget-object v9, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mmsProxy:Ljava/lang/String;

    #@126
    .restart local v9    # "mmsProxy":Ljava/lang/String;
    goto/16 :goto_2

    #@128
    .line 3440
    :cond_6
    move-object/from16 v0, p1

    #@12a
    iget-object v10, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mmsPort:Ljava/lang/String;

    #@12c
    .restart local v10    # "mmsPort":Ljava/lang/String;
    goto/16 :goto_3

    #@12e
    .line 3441
    :cond_7
    move-object/from16 v0, p1

    #@130
    iget-object v6, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->proxy:Ljava/lang/String;

    #@132
    .restart local v6    # "proxy":Ljava/lang/String;
    goto/16 :goto_4

    #@134
    .line 3442
    :cond_8
    move-object/from16 v0, p1

    #@136
    iget-object v7, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->port:Ljava/lang/String;

    #@138
    .restart local v7    # "port":Ljava/lang/String;
    goto/16 :goto_5

    #@13a
    .line 3443
    :cond_9
    move-object/from16 v0, p1

    #@13c
    iget-object v15, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->protocol:Ljava/lang/String;

    #@13e
    .restart local v15    # "protocol":Ljava/lang/String;
    goto/16 :goto_6

    #@140
    .line 3445
    :cond_a
    move-object/from16 v0, p1

    #@142
    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->roamingProtocol:Ljava/lang/String;

    #@144
    move-object/from16 v16, v0

    #@146
    .restart local v16    # "roamingProtocol":Ljava/lang/String;
    goto/16 :goto_7

    #@148
    .line 3447
    :cond_b
    move-object/from16 v0, p1

    #@14a
    iget v1, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->bearerBitmask:I

    #@14c
    move-object/from16 v0, p2

    #@14e
    iget v3, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->bearerBitmask:I

    #@150
    or-int v19, v1, v3

    #@152
    .restart local v19    # "bearerBitmask":I
    goto/16 :goto_8

    #@154
    .line 3453
    :cond_c
    const/16 v21, 0x1

    #@156
    goto :goto_9
.end method

.method private notifyAllDataDisconnected()V
    .locals 1

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 4111
    sput v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->sEnableFailFastRefCounter:I

    #@3
    .line 4112
    iput-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mFailFast:Z

    #@5
    .line 4113
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAllDataDisconnectedRegistrants:Landroid/os/RegistrantList;

    #@7
    invoke-virtual {v0}, Landroid/os/RegistrantList;->notifyRegistrants()V

    #@a
    .line 4110
    return-void
.end method

.method private notifyDataConnection(Ljava/lang/String;)V
    .locals 5
    .param p1, "reason"    # Ljava/lang/String;

    #@0
    .prologue
    .line 3260
    new-instance v2, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v3, "notifyDataConnection: reason="

    #@8
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v2

    #@c
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v2

    #@10
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13
    move-result-object v2

    #@14
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@17
    .line 3261
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    #@19
    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    #@1c
    move-result-object v2

    #@1d
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@20
    move-result-object v1

    #@21
    .local v1, "apnContext$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@24
    move-result v2

    #@25
    if-eqz v2, :cond_2

    #@27
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@2a
    move-result-object v0

    #@2b
    check-cast v0, Lcom/android/internal/telephony/dataconnection/ApnContext;

    #@2d
    .line 3262
    .local v0, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAttached:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@2f
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    #@32
    move-result v2

    #@33
    if-eqz v2, :cond_0

    #@35
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->isReady()Z

    #@38
    move-result v2

    #@39
    if-eqz v2, :cond_0

    #@3b
    .line 3263
    new-instance v2, Ljava/lang/StringBuilder;

    #@3d
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@40
    const-string/jumbo v3, "notifyDataConnection: type:"

    #@43
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@46
    move-result-object v2

    #@47
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    #@4a
    move-result-object v3

    #@4b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v2

    #@4f
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@52
    move-result-object v2

    #@53
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@56
    .line 3264
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    #@58
    if-eqz p1, :cond_1

    #@5a
    move-object v2, p1

    #@5b
    .line 3265
    :goto_1
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    #@5e
    move-result-object v4

    #@5f
    .line 3264
    invoke-virtual {v3, v2, v4}, Lcom/android/internal/telephony/Phone;->notifyDataConnection(Ljava/lang/String;Ljava/lang/String;)V

    #@62
    goto :goto_0

    #@63
    :cond_1
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getReason()Ljava/lang/String;

    #@66
    move-result-object v2

    #@67
    goto :goto_1

    #@68
    .line 3268
    .end local v0    # "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->notifyOffApnsOfAvailability(Ljava/lang/String;)V

    #@6b
    .line 3259
    return-void
.end method

.method private notifyDataDisconnectComplete()V
    .locals 3

    #@0
    .prologue
    .line 4102
    const-string/jumbo v2, "notifyDataDisconnectComplete"

    #@3
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@6
    .line 4103
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDisconnectAllCompleteMsgList:Ljava/util/ArrayList;

    #@8
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@b
    move-result-object v1

    #@c
    .local v1, "m$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@f
    move-result v2

    #@10
    if-eqz v2, :cond_0

    #@12
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@15
    move-result-object v0

    #@16
    check-cast v0, Landroid/os/Message;

    #@18
    .line 4104
    .local v0, "m":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    #@1b
    goto :goto_0

    #@1c
    .line 4106
    .end local v0    # "m":Landroid/os/Message;
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDisconnectAllCompleteMsgList:Ljava/util/ArrayList;

    #@1e
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    #@21
    .line 4101
    return-void
.end method

.method private notifyNoData(Lcom/android/internal/telephony/dataconnection/DcFailCause;Lcom/android/internal/telephony/dataconnection/ApnContext;)V
    .locals 3
    .param p1, "lastFailCauseCode"    # Lcom/android/internal/telephony/dataconnection/DcFailCause;
    .param p2, "apnContext"    # Lcom/android/internal/telephony/dataconnection/ApnContext;

    #@0
    .prologue
    .line 2337
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "notifyNoData: type="

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {p2}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

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
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@1b
    .line 2338
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->isPermanentFail(Lcom/android/internal/telephony/dataconnection/DcFailCause;)Z

    #@1e
    move-result v0

    #@1f
    if-eqz v0, :cond_0

    #@21
    .line 2339
    invoke-virtual {p2}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    #@24
    move-result-object v0

    #@25
    const-string/jumbo v1, "default"

    #@28
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2b
    move-result v0

    #@2c
    if-eqz v0, :cond_1

    #@2e
    .line 2336
    :cond_0
    :goto_0
    return-void

    #@2f
    .line 2340
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    #@31
    invoke-virtual {p2}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getReason()Ljava/lang/String;

    #@34
    move-result-object v1

    #@35
    invoke-virtual {p2}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    #@38
    move-result-object v2

    #@39
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/Phone;->notifyDataConnectionFailed(Ljava/lang/String;Ljava/lang/String;)V

    #@3c
    goto :goto_0
.end method

.method private notifyOffApnsOfAvailability(Ljava/lang/String;)V
    .locals 7
    .param p1, "reason"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1628
    new-instance v2, Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReason;

    #@2
    invoke-direct {v2}, Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReason;-><init>()V

    #@5
    .line 1629
    .local v2, "failureReason":Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReason;
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->isDataAllowed(Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReason;)Z

    #@8
    move-result v3

    #@9
    if-nez v3, :cond_0

    #@b
    .line 1630
    invoke-virtual {v2}, Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReason;->getDataAllowFailReason()Ljava/lang/String;

    #@e
    move-result-object v3

    #@f
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@12
    .line 1633
    :cond_0
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    #@14
    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    #@17
    move-result-object v3

    #@18
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@1b
    move-result-object v1

    #@1c
    .local v1, "apnContext$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@1f
    move-result v3

    #@20
    if-eqz v3, :cond_4

    #@22
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@25
    move-result-object v0

    #@26
    check-cast v0, Lcom/android/internal/telephony/dataconnection/ApnContext;

    #@28
    .line 1634
    .local v0, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAttached:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@2a
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    #@2d
    move-result v3

    #@2e
    if-eqz v3, :cond_2

    #@30
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->isReady()Z

    #@33
    move-result v3

    #@34
    if-nez v3, :cond_1

    #@36
    .line 1636
    :cond_2
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    #@38
    if-eqz p1, :cond_3

    #@3a
    move-object v3, p1

    #@3b
    .line 1637
    :goto_1
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    #@3e
    move-result-object v5

    #@3f
    .line 1638
    sget-object v6, Lcom/android/internal/telephony/PhoneConstants$DataState;->DISCONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    #@41
    .line 1636
    invoke-virtual {v4, v3, v5, v6}, Lcom/android/internal/telephony/Phone;->notifyDataConnection(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/PhoneConstants$DataState;)V

    #@44
    goto :goto_0

    #@45
    :cond_3
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getReason()Ljava/lang/String;

    #@48
    move-result-object v3

    #@49
    goto :goto_1

    #@4a
    .line 1626
    .end local v0    # "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    :cond_4
    return-void
.end method

.method private onActionIntentDataStallAlarm(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 521
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    #@3
    move-result-object v1

    #@4
    .line 520
    const v2, 0x42011

    #@7
    invoke-virtual {p0, v2, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@a
    move-result-object v0

    #@b
    .line 522
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
    .line 523
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->sendMessage(Landroid/os/Message;)Z

    #@18
    .line 518
    return-void
.end method

.method private onActionIntentProvisioningApnAlarm(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 4798
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
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@1b
    .line 4800
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    #@1e
    move-result-object v1

    #@1f
    .line 4799
    const v2, 0x42027

    #@22
    invoke-virtual {p0, v2, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@25
    move-result-object v0

    #@26
    .line 4801
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
    .line 4802
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->sendMessage(Landroid/os/Message;)Z

    #@33
    .line 4797
    return-void
.end method

.method private onActionIntentReconnectAlarm(Landroid/content/Intent;)V
    .locals 10
    .param p1, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    const/4 v9, 0x0

    #@1
    .line 465
    const-string/jumbo v7, "reconnect_alarm_extra_reason"

    #@4
    invoke-virtual {p1, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    #@7
    move-result-object v6

    #@8
    .line 466
    .local v6, "reason":Ljava/lang/String;
    const-string/jumbo v7, "reconnect_alarm_extra_type"

    #@b
    invoke-virtual {p1, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    #@e
    move-result-object v2

    #@f
    .line 468
    .local v2, "apnType":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    #@11
    invoke-virtual {v7}, Lcom/android/internal/telephony/Phone;->getSubId()I

    #@14
    move-result v5

    #@15
    .line 469
    .local v5, "phoneSubId":I
    const-string/jumbo v7, "subscription"

    #@18
    .line 470
    const/4 v8, -0x1

    #@19
    .line 469
    invoke-virtual {p1, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    #@1c
    move-result v3

    #@1d
    .line 471
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
    invoke-direct {p0, v7}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@3f
    .line 475
    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    #@42
    move-result v7

    #@43
    if-eqz v7, :cond_0

    #@45
    if-eq v3, v5, :cond_1

    #@47
    .line 476
    :cond_0
    const-string/jumbo v7, "receive ReconnectAlarm but subId incorrect, ignore"

    #@4a
    invoke-direct {p0, v7}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@4d
    .line 477
    return-void

    #@4e
    .line 480
    :cond_1
    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    #@50
    invoke-virtual {v7, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@53
    move-result-object v0

    #@54
    check-cast v0, Lcom/android/internal/telephony/dataconnection/ApnContext;

    #@56
    .line 483
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
    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mState:Lcom/android/internal/telephony/DctConstants$State;

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
    .line 484
    const-string/jumbo v8, " apnType="

    #@76
    .line 483
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@79
    move-result-object v7

    #@7a
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7d
    move-result-object v7

    #@7e
    .line 484
    const-string/jumbo v8, " apnContext="

    #@81
    .line 483
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@84
    move-result-object v7

    #@85
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@88
    move-result-object v7

    #@89
    .line 485
    const-string/jumbo v8, " mDataConnectionAsyncChannels="

    #@8c
    .line 483
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8f
    move-result-object v7

    #@90
    .line 485
    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDataConnectionAcHashMap:Ljava/util/HashMap;

    #@92
    .line 483
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@95
    move-result-object v7

    #@96
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@99
    move-result-object v7

    #@9a
    invoke-direct {p0, v7}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@9d
    .line 488
    if-eqz v0, :cond_4

    #@9f
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->isEnabled()Z

    #@a2
    move-result v7

    #@a3
    if-eqz v7, :cond_4

    #@a5
    .line 489
    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setReason(Ljava/lang/String;)V

    #@a8
    .line 490
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getState()Lcom/android/internal/telephony/DctConstants$State;

    #@ab
    move-result-object v1

    #@ac
    .line 492
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
    invoke-direct {p0, v7}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@c3
    .line 494
    sget-object v7, Lcom/android/internal/telephony/DctConstants$State;->FAILED:Lcom/android/internal/telephony/DctConstants$State;

    #@c5
    if-eq v1, v7, :cond_2

    #@c7
    .line 495
    sget-object v7, Lcom/android/internal/telephony/DctConstants$State;->IDLE:Lcom/android/internal/telephony/DctConstants$State;

    #@c9
    if-ne v1, v7, :cond_5

    #@cb
    .line 497
    :cond_2
    const-string/jumbo v7, "onActionIntentReconnectAlarm: state is FAILED|IDLE, disassociate"

    #@ce
    invoke-direct {p0, v7}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@d1
    .line 499
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getDcAc()Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;

    #@d4
    move-result-object v4

    #@d5
    .line 500
    .local v4, "dcac":Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;
    if-eqz v4, :cond_3

    #@d7
    .line 502
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
    invoke-direct {p0, v7}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@ee
    .line 504
    const-string/jumbo v7, ""

    #@f1
    invoke-virtual {v4, v0, v7, v9}, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->tearDown(Lcom/android/internal/telephony/dataconnection/ApnContext;Ljava/lang/String;Landroid/os/Message;)V

    #@f4
    .line 506
    :cond_3
    invoke-virtual {v0, v9}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setDataConnectionAc(Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;)V

    #@f7
    .line 507
    sget-object v7, Lcom/android/internal/telephony/DctConstants$State;->IDLE:Lcom/android/internal/telephony/DctConstants$State;

    #@f9
    invoke-virtual {v0, v7}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setState(Lcom/android/internal/telephony/DctConstants$State;)V

    #@fc
    .line 512
    .end local v4    # "dcac":Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;
    :goto_0
    const v7, 0x42003

    #@ff
    invoke-virtual {p0, v7, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@102
    move-result-object v7

    #@103
    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/dataconnection/DcTracker;->sendMessage(Landroid/os/Message;)Z

    #@106
    .line 514
    invoke-virtual {v0, v9}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setReconnectIntent(Landroid/app/PendingIntent;)V

    #@109
    .line 464
    .end local v1    # "apnContextState":Lcom/android/internal/telephony/DctConstants$State;
    :cond_4
    return-void

    #@10a
    .line 509
    .restart local v1    # "apnContextState":Lcom/android/internal/telephony/DctConstants$State;
    :cond_5
    const-string/jumbo v7, "onActionIntentReconnectAlarm: keep associated"

    #@10d
    invoke-direct {p0, v7}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@110
    goto :goto_0
.end method

.method private onApnChanged()V
    .locals 4

    #@0
    .prologue
    .line 2185
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->getOverallState()Lcom/android/internal/telephony/DctConstants$State;

    #@3
    move-result-object v1

    #@4
    .line 2186
    .local v1, "overallState":Lcom/android/internal/telephony/DctConstants$State;
    sget-object v2, Lcom/android/internal/telephony/DctConstants$State;->IDLE:Lcom/android/internal/telephony/DctConstants$State;

    #@6
    if-eq v1, v2, :cond_2

    #@8
    .line 2187
    sget-object v2, Lcom/android/internal/telephony/DctConstants$State;->FAILED:Lcom/android/internal/telephony/DctConstants$State;

    #@a
    if-ne v1, v2, :cond_3

    #@c
    const/4 v0, 0x1

    #@d
    .line 2189
    .local v0, "isDisconnected":Z
    :goto_0
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    #@f
    instance-of v2, v2, Lcom/android/internal/telephony/GsmCdmaPhone;

    #@11
    if-eqz v2, :cond_0

    #@13
    .line 2191
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    #@15
    check-cast v2, Lcom/android/internal/telephony/GsmCdmaPhone;

    #@17
    invoke-virtual {v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->updateCurrentCarrierInProvider()Z

    #@1a
    .line 2196
    :cond_0
    const-string/jumbo v2, "onApnChanged: createAllApnList and cleanUpAllConnections"

    #@1d
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@20
    .line 2197
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->createAllApnList()V

    #@23
    .line 2198
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->setInitialAttachApn()V

    #@26
    .line 2199
    if-eqz v0, :cond_4

    #@28
    const/4 v2, 0x0

    #@29
    :goto_1
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->cleanUpConnectionsOnUpdatedApns(Z)V

    #@2c
    .line 2202
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    #@2e
    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getSubId()I

    #@31
    move-result v2

    #@32
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    #@35
    move-result v3

    #@36
    if-ne v2, v3, :cond_1

    #@38
    .line 2203
    const-string/jumbo v2, "apnChanged"

    #@3b
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->setupDataOnConnectableApns(Ljava/lang/String;)V

    #@3e
    .line 2184
    :cond_1
    return-void

    #@3f
    .line 2186
    .end local v0    # "isDisconnected":Z
    :cond_2
    const/4 v0, 0x1

    #@40
    .restart local v0    # "isDisconnected":Z
    goto :goto_0

    #@41
    .line 2187
    .end local v0    # "isDisconnected":Z
    :cond_3
    const/4 v0, 0x0

    #@42
    .restart local v0    # "isDisconnected":Z
    goto :goto_0

    #@43
    .line 2199
    :cond_4
    const/4 v2, 0x1

    #@44
    goto :goto_1
.end method

.method private onCleanUpAllConnections(Ljava/lang/String;)V
    .locals 1
    .param p1, "cause"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1715
    const/4 v0, 0x1

    #@1
    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->cleanUpAllConnections(ZLjava/lang/String;)Z

    #@4
    .line 1714
    return-void
.end method

.method private onCleanUpConnection(ZILjava/lang/String;)V
    .locals 2
    .param p1, "tearDown"    # Z
    .param p2, "apnId"    # I
    .param p3, "reason"    # Ljava/lang/String;

    #@0
    .prologue
    .line 3229
    const-string/jumbo v1, "onCleanUpConnection"

    #@3
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@6
    .line 3230
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mApnContextsById:Landroid/util/SparseArray;

    #@8
    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@b
    move-result-object v0

    #@c
    check-cast v0, Lcom/android/internal/telephony/dataconnection/ApnContext;

    #@e
    .line 3231
    .local v0, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    if-eqz v0, :cond_0

    #@10
    .line 3232
    invoke-virtual {v0, p3}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setReason(Ljava/lang/String;)V

    #@13
    .line 3233
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->cleanUpConnection(ZLcom/android/internal/telephony/dataconnection/ApnContext;)V

    #@16
    .line 3228
    :cond_0
    return-void
.end method

.method private onDataConnectionAttached()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 1329
    const-string/jumbo v0, "onDataConnectionAttached"

    #@4
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@7
    .line 1330
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAttached:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@9
    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    #@c
    .line 1331
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->getOverallState()Lcom/android/internal/telephony/DctConstants$State;

    #@f
    move-result-object v0

    #@10
    sget-object v1, Lcom/android/internal/telephony/DctConstants$State;->CONNECTED:Lcom/android/internal/telephony/DctConstants$State;

    #@12
    if-ne v0, v1, :cond_1

    #@14
    .line 1332
    const-string/jumbo v0, "onDataConnectionAttached: start polling notify attached"

    #@17
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@1a
    .line 1333
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->startNetStatPoll()V

    #@1d
    .line 1334
    const/4 v0, 0x0

    #@1e
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->startDataStallAlarm(Z)V

    #@21
    .line 1335
    const-string/jumbo v0, "dataAttached"

    #@24
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->notifyDataConnection(Ljava/lang/String;)V

    #@27
    .line 1340
    :goto_0
    iget-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAutoAttachOnCreationConfig:Z

    #@29
    if-eqz v0, :cond_0

    #@2b
    .line 1341
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAutoAttachOnCreation:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@2d
    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    #@30
    .line 1343
    :cond_0
    const-string/jumbo v0, "dataAttached"

    #@33
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->setupDataOnConnectableApns(Ljava/lang/String;)V

    #@36
    .line 1328
    return-void

    #@37
    .line 1338
    :cond_1
    const-string/jumbo v0, "dataAttached"

    #@3a
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->notifyOffApnsOfAvailability(Ljava/lang/String;)V

    #@3d
    goto :goto_0
.end method

.method private onDataConnectionDetached()V
    .locals 2

    #@0
    .prologue
    .line 1321
    const-string/jumbo v0, "onDataConnectionDetached: stop polling and notify detached"

    #@3
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@6
    .line 1322
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->stopNetStatPoll()V

    #@9
    .line 1323
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->stopDataStallAlarm()V

    #@c
    .line 1324
    const-string/jumbo v0, "dataDetached"

    #@f
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->notifyDataConnection(Ljava/lang/String;)V

    #@12
    .line 1325
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAttached:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@14
    const/4 v1, 0x0

    #@15
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    #@18
    .line 1316
    return-void
.end method

.method private onDataConnectionRedirected(Ljava/lang/String;)V
    .locals 3
    .param p1, "redirectUrl"    # Ljava/lang/String;

    #@0
    .prologue
    .line 3096
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@3
    move-result v1

    #@4
    if-nez v1, :cond_0

    #@6
    .line 3097
    new-instance v0, Landroid/content/Intent;

    #@8
    const-string/jumbo v1, "android.intent.action.CARRIER_SIGNAL_REDIRECTED"

    #@b
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@e
    .line 3098
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "redirectionUrl"

    #@11
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@14
    .line 3099
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    #@16
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getCarrierSignalAgent()Lcom/android/internal/telephony/CarrierSignalAgent;

    #@19
    move-result-object v1

    #@1a
    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/CarrierSignalAgent;->notifyCarrierSignalReceivers(Landroid/content/Intent;)Z

    #@1d
    move-result v1

    #@1e
    if-eqz v1, :cond_0

    #@20
    .line 3100
    new-instance v1, Ljava/lang/StringBuilder;

    #@22
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@25
    const-string/jumbo v2, "Notify carrier signal receivers with redirectUrl: "

    #@28
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v1

    #@2c
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v1

    #@30
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@33
    move-result-object v1

    #@34
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@37
    .line 3095
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private onDataSetupComplete(Landroid/os/AsyncResult;)V
    .locals 26
    .param p1, "ar"    # Landroid/os/AsyncResult;

    #@0
    .prologue
    .line 2849
    sget-object v7, Lcom/android/internal/telephony/dataconnection/DcFailCause;->UNKNOWN:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    #@2
    .line 2850
    .local v7, "cause":Lcom/android/internal/telephony/dataconnection/DcFailCause;
    const/4 v13, 0x0

    #@3
    .line 2851
    .local v13, "handleError":Z
    const-string/jumbo v21, "onDataSetupComplete"

    #@6
    move-object/from16 v0, p0

    #@8
    move-object/from16 v1, p1

    #@a
    move-object/from16 v2, v21

    #@c
    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->getValidApnContext(Landroid/os/AsyncResult;Ljava/lang/String;)Lcom/android/internal/telephony/dataconnection/ApnContext;

    #@f
    move-result-object v6

    #@10
    .line 2853
    .local v6, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    if-nez v6, :cond_0

    #@12
    return-void

    #@13
    .line 2855
    :cond_0
    move-object/from16 v0, p1

    #@15
    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@17
    move-object/from16 v21, v0

    #@19
    if-nez v21, :cond_d

    #@1b
    .line 2856
    invoke-virtual {v6}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getDcAc()Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;

    #@1e
    move-result-object v10

    #@1f
    .line 2876
    .local v10, "dcac":Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;
    if-nez v10, :cond_4

    #@21
    .line 2877
    const-string/jumbo v21, "onDataSetupComplete: no connection to DC, handle as error"

    #@24
    move-object/from16 v0, p0

    #@26
    move-object/from16 v1, v21

    #@28
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@2b
    .line 2878
    sget-object v7, Lcom/android/internal/telephony/dataconnection/DcFailCause;->CONNECTION_TO_DATACONNECTIONAC_BROKEN:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    #@2d
    .line 2879
    const/4 v13, 0x1

    #@2e
    .line 3024
    .end local v10    # "dcac":Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;
    :cond_1
    :goto_0
    if-eqz v13, :cond_2

    #@30
    .line 3025
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->onDataSetupCompleteError(Landroid/os/AsyncResult;)V

    #@33
    .line 3031
    :cond_2
    move-object/from16 v0, p0

    #@35
    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDataEnabledSettings:Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;

    #@37
    move-object/from16 v21, v0

    #@39
    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->isInternalDataEnabled()Z

    #@3c
    move-result v21

    #@3d
    if-nez v21, :cond_3

    #@3f
    .line 3032
    const-string/jumbo v21, "dataDisabled"

    #@42
    move-object/from16 v0, p0

    #@44
    move-object/from16 v1, v21

    #@46
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->cleanUpAllConnections(Ljava/lang/String;)V

    #@49
    .line 2847
    :cond_3
    return-void

    #@4a
    .line 2881
    .restart local v10    # "dcac":Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;
    :cond_4
    invoke-virtual {v6}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnSetting()Lcom/android/internal/telephony/dataconnection/ApnSetting;

    #@4d
    move-result-object v5

    #@4e
    .line 2883
    .local v5, "apn":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    new-instance v21, Ljava/lang/StringBuilder;

    #@50
    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    #@53
    const-string/jumbo v22, "onDataSetupComplete: success apn="

    #@56
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@59
    move-result-object v22

    #@5a
    if-nez v5, :cond_a

    #@5c
    const-string/jumbo v21, "unknown"

    #@5f
    :goto_1
    move-object/from16 v0, v22

    #@61
    move-object/from16 v1, v21

    #@63
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@66
    move-result-object v21

    #@67
    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6a
    move-result-object v21

    #@6b
    move-object/from16 v0, p0

    #@6d
    move-object/from16 v1, v21

    #@6f
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@72
    .line 2885
    if-eqz v5, :cond_6

    #@74
    iget-object v0, v5, Lcom/android/internal/telephony/dataconnection/ApnSetting;->proxy:Ljava/lang/String;

    #@76
    move-object/from16 v21, v0

    #@78
    if-eqz v21, :cond_6

    #@7a
    iget-object v0, v5, Lcom/android/internal/telephony/dataconnection/ApnSetting;->proxy:Ljava/lang/String;

    #@7c
    move-object/from16 v21, v0

    #@7e
    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    #@81
    move-result v21

    #@82
    if-eqz v21, :cond_6

    #@84
    .line 2887
    :try_start_0
    iget-object v0, v5, Lcom/android/internal/telephony/dataconnection/ApnSetting;->port:Ljava/lang/String;

    #@86
    move-object/from16 v17, v0

    #@88
    .line 2888
    .local v17, "port":Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@8b
    move-result v21

    #@8c
    if-eqz v21, :cond_5

    #@8e
    const-string/jumbo v17, "8080"

    #@91
    .line 2889
    :cond_5
    new-instance v18, Landroid/net/ProxyInfo;

    #@93
    iget-object v0, v5, Lcom/android/internal/telephony/dataconnection/ApnSetting;->proxy:Ljava/lang/String;

    #@95
    move-object/from16 v21, v0

    #@97
    .line 2890
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@9a
    move-result v22

    #@9b
    const/16 v23, 0x0

    #@9d
    .line 2889
    move-object/from16 v0, v18

    #@9f
    move-object/from16 v1, v21

    #@a1
    move/from16 v2, v22

    #@a3
    move-object/from16 v3, v23

    #@a5
    invoke-direct {v0, v1, v2, v3}, Landroid/net/ProxyInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    #@a8
    .line 2891
    .local v18, "proxy":Landroid/net/ProxyInfo;
    move-object/from16 v0, v18

    #@aa
    invoke-virtual {v10, v0}, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->setLinkPropertiesHttpProxySync(Landroid/net/ProxyInfo;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@ad
    .line 2899
    .end local v17    # "port":Ljava/lang/String;
    .end local v18    # "proxy":Landroid/net/ProxyInfo;
    :cond_6
    :goto_2
    invoke-virtual {v6}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    #@b0
    move-result-object v21

    #@b1
    const-string/jumbo v22, "default"

    #@b4
    invoke-static/range {v21 .. v22}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    #@b7
    move-result v21

    #@b8
    if-eqz v21, :cond_b

    #@ba
    .line 2901
    :try_start_1
    const-string/jumbo v21, "gsm.defaultpdpcontext.active"

    #@bd
    const-string/jumbo v22, "true"

    #@c0
    invoke-static/range {v21 .. v22}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    #@c3
    .line 2905
    :goto_3
    move-object/from16 v0, p0

    #@c5
    iget-boolean v0, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mCanSetPreferApn:Z

    #@c7
    move/from16 v21, v0

    #@c9
    if-eqz v21, :cond_7

    #@cb
    move-object/from16 v0, p0

    #@cd
    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPreferredApn:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    #@cf
    move-object/from16 v21, v0

    #@d1
    if-nez v21, :cond_7

    #@d3
    .line 2906
    const-string/jumbo v21, "onDataSetupComplete: PREFERRED APN is null"

    #@d6
    move-object/from16 v0, p0

    #@d8
    move-object/from16 v1, v21

    #@da
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@dd
    .line 2907
    move-object/from16 v0, p0

    #@df
    iput-object v5, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPreferredApn:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    #@e1
    .line 2908
    move-object/from16 v0, p0

    #@e3
    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPreferredApn:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    #@e5
    move-object/from16 v21, v0

    #@e7
    if-eqz v21, :cond_7

    #@e9
    .line 2909
    move-object/from16 v0, p0

    #@eb
    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPreferredApn:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    #@ed
    move-object/from16 v21, v0

    #@ef
    move-object/from16 v0, v21

    #@f1
    iget v0, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->id:I

    #@f3
    move/from16 v21, v0

    #@f5
    move-object/from16 v0, p0

    #@f7
    move/from16 v1, v21

    #@f9
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->setPreferredApn(I)V

    #@fc
    .line 2921
    :cond_7
    :goto_4
    sget-object v21, Lcom/android/internal/telephony/DctConstants$State;->CONNECTED:Lcom/android/internal/telephony/DctConstants$State;

    #@fe
    move-object/from16 v0, v21

    #@100
    invoke-virtual {v6, v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setState(Lcom/android/internal/telephony/DctConstants$State;)V

    #@103
    .line 2923
    invoke-virtual {v6}, Lcom/android/internal/telephony/dataconnection/ApnContext;->isProvisioningApn()Z

    #@106
    move-result v15

    #@107
    .line 2924
    .local v15, "isProvApn":Z
    move-object/from16 v0, p0

    #@109
    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    #@10b
    move-object/from16 v21, v0

    #@10d
    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    #@110
    move-result-object v21

    #@111
    invoke-static/range {v21 .. v21}, Landroid/net/ConnectivityManager;->from(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    #@114
    move-result-object v9

    #@115
    .line 2925
    .local v9, "cm":Landroid/net/ConnectivityManager;
    move-object/from16 v0, p0

    #@117
    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mProvisionBroadcastReceiver:Landroid/content/BroadcastReceiver;

    #@119
    move-object/from16 v21, v0

    #@11b
    if-eqz v21, :cond_8

    #@11d
    .line 2926
    move-object/from16 v0, p0

    #@11f
    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    #@121
    move-object/from16 v21, v0

    #@123
    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    #@126
    move-result-object v21

    #@127
    move-object/from16 v0, p0

    #@129
    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mProvisionBroadcastReceiver:Landroid/content/BroadcastReceiver;

    #@12b
    move-object/from16 v22, v0

    #@12d
    invoke-virtual/range {v21 .. v22}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    #@130
    .line 2927
    const/16 v21, 0x0

    #@132
    move-object/from16 v0, v21

    #@134
    move-object/from16 v1, p0

    #@136
    iput-object v0, v1, Lcom/android/internal/telephony/dataconnection/DcTracker;->mProvisionBroadcastReceiver:Landroid/content/BroadcastReceiver;

    #@138
    .line 2929
    :cond_8
    if-eqz v15, :cond_9

    #@13a
    move-object/from16 v0, p0

    #@13c
    iget-boolean v0, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mIsProvisioning:Z

    #@13e
    move/from16 v21, v0

    #@140
    if-eqz v21, :cond_c

    #@142
    .line 2932
    :cond_9
    move-object/from16 v0, p0

    #@144
    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mProvisionActionName:Ljava/lang/String;

    #@146
    move-object/from16 v21, v0

    #@148
    .line 2931
    const/16 v22, 0x0

    #@14a
    const/16 v23, 0x0

    #@14c
    move/from16 v0, v22

    #@14e
    move/from16 v1, v23

    #@150
    move-object/from16 v2, v21

    #@152
    invoke-virtual {v9, v0, v1, v2}, Landroid/net/ConnectivityManager;->setProvisioningNotificationVisible(ZILjava/lang/String;)V

    #@155
    .line 2936
    move-object/from16 v0, p0

    #@157
    invoke-direct {v0, v6}, Lcom/android/internal/telephony/dataconnection/DcTracker;->completeConnection(Lcom/android/internal/telephony/dataconnection/ApnContext;)V

    #@15a
    .line 2964
    :goto_5
    new-instance v21, Ljava/lang/StringBuilder;

    #@15c
    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    #@15f
    const-string/jumbo v22, "onDataSetupComplete: SETUP complete type="

    #@162
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@165
    move-result-object v21

    #@166
    invoke-virtual {v6}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    #@169
    move-result-object v22

    #@16a
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16d
    move-result-object v21

    #@16e
    .line 2965
    const-string/jumbo v22, ", reason:"

    #@171
    .line 2964
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@174
    move-result-object v21

    #@175
    .line 2965
    invoke-virtual {v6}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getReason()Ljava/lang/String;

    #@178
    move-result-object v22

    #@179
    .line 2964
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17c
    move-result-object v21

    #@17d
    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@180
    move-result-object v21

    #@181
    move-object/from16 v0, p0

    #@183
    move-object/from16 v1, v21

    #@185
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@188
    .line 2967
    sget-boolean v21, Landroid/os/Build;->IS_DEBUGGABLE:Z

    #@18a
    if-eqz v21, :cond_1

    #@18c
    .line 2969
    const-string/jumbo v19, "persist.radio.test.pco"

    #@18f
    .line 2970
    .local v19, "radioTestProperty":Ljava/lang/String;
    const/16 v21, -0x1

    #@191
    move-object/from16 v0, v19

    #@193
    move/from16 v1, v21

    #@195
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    #@198
    move-result v16

    #@199
    .line 2971
    .local v16, "pcoVal":I
    const/16 v21, -0x1

    #@19b
    move/from16 v0, v16

    #@19d
    move/from16 v1, v21

    #@19f
    if-eq v0, v1, :cond_1

    #@1a1
    .line 2972
    new-instance v21, Ljava/lang/StringBuilder;

    #@1a3
    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    #@1a6
    const-string/jumbo v22, "PCO testing: read pco value from persist.radio.test.pco "

    #@1a9
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1ac
    move-result-object v21

    #@1ad
    move-object/from16 v0, v21

    #@1af
    move/from16 v1, v16

    #@1b1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1b4
    move-result-object v21

    #@1b5
    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b8
    move-result-object v21

    #@1b9
    move-object/from16 v0, p0

    #@1bb
    move-object/from16 v1, v21

    #@1bd
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@1c0
    .line 2973
    const/16 v21, 0x1

    #@1c2
    move/from16 v0, v21

    #@1c4
    new-array v0, v0, [B

    #@1c6
    move-object/from16 v20, v0

    #@1c8
    .line 2974
    .local v20, "value":[B
    move/from16 v0, v16

    #@1ca
    int-to-byte v0, v0

    #@1cb
    move/from16 v21, v0

    #@1cd
    const/16 v22, 0x0

    #@1cf
    aput-byte v21, v20, v22

    #@1d1
    .line 2976
    new-instance v14, Landroid/content/Intent;

    #@1d3
    const-string/jumbo v21, "android.intent.action.CARRIER_SIGNAL_PCO_VALUE"

    #@1d6
    move-object/from16 v0, v21

    #@1d8
    invoke-direct {v14, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@1db
    .line 2977
    .local v14, "intent":Landroid/content/Intent;
    const-string/jumbo v21, "apnType"

    #@1de
    const-string/jumbo v22, "default"

    #@1e1
    move-object/from16 v0, v21

    #@1e3
    move-object/from16 v1, v22

    #@1e5
    invoke-virtual {v14, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@1e8
    .line 2978
    const-string/jumbo v21, "apnProto"

    #@1eb
    const-string/jumbo v22, "IPV4V6"

    #@1ee
    move-object/from16 v0, v21

    #@1f0
    move-object/from16 v1, v22

    #@1f2
    invoke-virtual {v14, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@1f5
    .line 2979
    const-string/jumbo v21, "pcoId"

    #@1f8
    const v22, 0xff00

    #@1fb
    move-object/from16 v0, v21

    #@1fd
    move/from16 v1, v22

    #@1ff
    invoke-virtual {v14, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@202
    .line 2980
    const-string/jumbo v21, "pcoValue"

    #@205
    move-object/from16 v0, v21

    #@207
    move-object/from16 v1, v20

    #@209
    invoke-virtual {v14, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    #@20c
    .line 2981
    move-object/from16 v0, p0

    #@20e
    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    #@210
    move-object/from16 v21, v0

    #@212
    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/telephony/Phone;->getCarrierSignalAgent()Lcom/android/internal/telephony/CarrierSignalAgent;

    #@215
    move-result-object v21

    #@216
    move-object/from16 v0, v21

    #@218
    invoke-virtual {v0, v14}, Lcom/android/internal/telephony/CarrierSignalAgent;->notifyCarrierSignalReceivers(Landroid/content/Intent;)Z

    #@21b
    goto/16 :goto_0

    #@21d
    .line 2883
    .end local v9    # "cm":Landroid/net/ConnectivityManager;
    .end local v14    # "intent":Landroid/content/Intent;
    .end local v15    # "isProvApn":Z
    .end local v16    # "pcoVal":I
    .end local v19    # "radioTestProperty":Ljava/lang/String;
    .end local v20    # "value":[B
    :cond_a
    iget-object v0, v5, Lcom/android/internal/telephony/dataconnection/ApnSetting;->apn:Ljava/lang/String;

    #@21f
    move-object/from16 v21, v0

    #@221
    goto/16 :goto_1

    #@223
    .line 2892
    :catch_0
    move-exception v11

    #@224
    .line 2893
    .local v11, "e":Ljava/lang/NumberFormatException;
    new-instance v21, Ljava/lang/StringBuilder;

    #@226
    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    #@229
    const-string/jumbo v22, "onDataSetupComplete: NumberFormatException making ProxyProperties ("

    #@22c
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22f
    move-result-object v21

    #@230
    .line 2894
    iget-object v0, v5, Lcom/android/internal/telephony/dataconnection/ApnSetting;->port:Ljava/lang/String;

    #@232
    move-object/from16 v22, v0

    #@234
    .line 2893
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@237
    move-result-object v21

    #@238
    .line 2894
    const-string/jumbo v22, "): "

    #@23b
    .line 2893
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23e
    move-result-object v21

    #@23f
    move-object/from16 v0, v21

    #@241
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@244
    move-result-object v21

    #@245
    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@248
    move-result-object v21

    #@249
    move-object/from16 v0, p0

    #@24b
    move-object/from16 v1, v21

    #@24d
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->loge(Ljava/lang/String;)V

    #@250
    goto/16 :goto_2

    #@252
    .line 2902
    .end local v11    # "e":Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v12

    #@253
    .line 2903
    .local v12, "ex":Ljava/lang/RuntimeException;
    const-string/jumbo v21, "Failed to set PUPPET_MASTER_RADIO_STRESS_TEST to true"

    #@256
    move-object/from16 v0, p0

    #@258
    move-object/from16 v1, v21

    #@25a
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@25d
    goto/16 :goto_3

    #@25f
    .line 2914
    .end local v12    # "ex":Ljava/lang/RuntimeException;
    :cond_b
    :try_start_2
    const-string/jumbo v21, "gsm.defaultpdpcontext.active"

    #@262
    const-string/jumbo v22, "false"

    #@265
    invoke-static/range {v21 .. v22}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2

    #@268
    goto/16 :goto_4

    #@26a
    .line 2915
    :catch_2
    move-exception v12

    #@26b
    .line 2916
    .restart local v12    # "ex":Ljava/lang/RuntimeException;
    const-string/jumbo v21, "Failed to set PUPPET_MASTER_RADIO_STRESS_TEST to false"

    #@26e
    move-object/from16 v0, p0

    #@270
    move-object/from16 v1, v21

    #@272
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@275
    goto/16 :goto_4

    #@277
    .line 2944
    .end local v12    # "ex":Ljava/lang/RuntimeException;
    .restart local v9    # "cm":Landroid/net/ConnectivityManager;
    .restart local v15    # "isProvApn":Z
    :cond_c
    new-instance v21, Ljava/lang/StringBuilder;

    #@279
    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    #@27c
    const-string/jumbo v22, "onDataSetupComplete: successful, BUT send connected to prov apn as mIsProvisioning:"

    #@27f
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@282
    move-result-object v21

    #@283
    .line 2945
    move-object/from16 v0, p0

    #@285
    iget-boolean v0, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mIsProvisioning:Z

    #@287
    move/from16 v22, v0

    #@289
    .line 2944
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@28c
    move-result-object v21

    #@28d
    .line 2945
    const-string/jumbo v22, " == false"

    #@290
    .line 2944
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@293
    move-result-object v21

    #@294
    .line 2946
    const-string/jumbo v22, " && (isProvisioningApn:"

    #@297
    .line 2944
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29a
    move-result-object v21

    #@29b
    move-object/from16 v0, v21

    #@29d
    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@2a0
    move-result-object v21

    #@2a1
    .line 2946
    const-string/jumbo v22, " == true"

    #@2a4
    .line 2944
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a7
    move-result-object v21

    #@2a8
    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2ab
    move-result-object v21

    #@2ac
    move-object/from16 v0, p0

    #@2ae
    move-object/from16 v1, v21

    #@2b0
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@2b3
    .line 2951
    new-instance v21, Lcom/android/internal/telephony/dataconnection/DcTracker$ProvisionNotificationBroadcastReceiver;

    #@2b5
    .line 2952
    invoke-virtual {v9}, Landroid/net/ConnectivityManager;->getMobileProvisioningUrl()Ljava/lang/String;

    #@2b8
    move-result-object v22

    #@2b9
    .line 2953
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    #@2bc
    move-result-object v23

    #@2bd
    invoke-virtual/range {v23 .. v23}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    #@2c0
    move-result-object v23

    #@2c1
    .line 2951
    move-object/from16 v0, v21

    #@2c3
    move-object/from16 v1, p0

    #@2c5
    move-object/from16 v2, v22

    #@2c7
    move-object/from16 v3, v23

    #@2c9
    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/dataconnection/DcTracker$ProvisionNotificationBroadcastReceiver;-><init>(Lcom/android/internal/telephony/dataconnection/DcTracker;Ljava/lang/String;Ljava/lang/String;)V

    #@2cc
    move-object/from16 v0, v21

    #@2ce
    move-object/from16 v1, p0

    #@2d0
    iput-object v0, v1, Lcom/android/internal/telephony/dataconnection/DcTracker;->mProvisionBroadcastReceiver:Landroid/content/BroadcastReceiver;

    #@2d2
    .line 2954
    move-object/from16 v0, p0

    #@2d4
    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    #@2d6
    move-object/from16 v21, v0

    #@2d8
    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    #@2db
    move-result-object v21

    #@2dc
    move-object/from16 v0, p0

    #@2de
    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mProvisionBroadcastReceiver:Landroid/content/BroadcastReceiver;

    #@2e0
    move-object/from16 v22, v0

    #@2e2
    .line 2955
    new-instance v23, Landroid/content/IntentFilter;

    #@2e4
    move-object/from16 v0, p0

    #@2e6
    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mProvisionActionName:Ljava/lang/String;

    #@2e8
    move-object/from16 v24, v0

    #@2ea
    invoke-direct/range {v23 .. v24}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    #@2ed
    .line 2954
    invoke-virtual/range {v21 .. v23}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    #@2f0
    .line 2958
    move-object/from16 v0, p0

    #@2f2
    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mProvisionActionName:Ljava/lang/String;

    #@2f4
    move-object/from16 v21, v0

    #@2f6
    .line 2957
    const/16 v22, 0x1

    #@2f8
    const/16 v23, 0x0

    #@2fa
    move/from16 v0, v22

    #@2fc
    move/from16 v1, v23

    #@2fe
    move-object/from16 v2, v21

    #@300
    invoke-virtual {v9, v0, v1, v2}, Landroid/net/ConnectivityManager;->setProvisioningNotificationVisible(ZILjava/lang/String;)V

    #@303
    .line 2961
    const/16 v21, 0x0

    #@305
    move-object/from16 v0, p0

    #@307
    move/from16 v1, v21

    #@309
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->setRadio(Z)V

    #@30c
    goto/16 :goto_5

    #@30e
    .line 2986
    .end local v5    # "apn":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    .end local v9    # "cm":Landroid/net/ConnectivityManager;
    .end local v10    # "dcac":Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;
    .end local v15    # "isProvApn":Z
    :cond_d
    move-object/from16 v0, p1

    #@310
    iget-object v7, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@312
    .end local v7    # "cause":Lcom/android/internal/telephony/dataconnection/DcFailCause;
    check-cast v7, Lcom/android/internal/telephony/dataconnection/DcFailCause;

    #@314
    .line 2988
    .restart local v7    # "cause":Lcom/android/internal/telephony/dataconnection/DcFailCause;
    invoke-virtual {v6}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnSetting()Lcom/android/internal/telephony/dataconnection/ApnSetting;

    #@317
    move-result-object v5

    #@318
    .line 2989
    .restart local v5    # "apn":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    const-string/jumbo v22, "onDataSetupComplete: error apn=%s cause=%s"

    #@31b
    const/16 v21, 0x2

    #@31d
    move/from16 v0, v21

    #@31f
    new-array v0, v0, [Ljava/lang/Object;

    #@321
    move-object/from16 v23, v0

    #@323
    .line 2990
    if-nez v5, :cond_12

    #@325
    const-string/jumbo v21, "unknown"

    #@328
    :goto_6
    const/16 v24, 0x0

    #@32a
    aput-object v21, v23, v24

    #@32c
    const/16 v21, 0x1

    #@32e
    aput-object v7, v23, v21

    #@330
    .line 2989
    invoke-static/range {v22 .. v23}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@333
    move-result-object v21

    #@334
    move-object/from16 v0, p0

    #@336
    move-object/from16 v1, v21

    #@338
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@33b
    .line 2992
    invoke-virtual {v7}, Lcom/android/internal/telephony/dataconnection/DcFailCause;->isEventLoggable()Z

    #@33e
    move-result v21

    #@33f
    if-eqz v21, :cond_e

    #@341
    .line 2994
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->getCellLocationId()I

    #@344
    move-result v8

    #@345
    .line 2995
    .local v8, "cid":I
    const/16 v21, 0x3

    #@347
    move/from16 v0, v21

    #@349
    new-array v0, v0, [Ljava/lang/Object;

    #@34b
    move-object/from16 v21, v0

    #@34d
    .line 2996
    invoke-virtual {v7}, Lcom/android/internal/telephony/dataconnection/DcFailCause;->ordinal()I

    #@350
    move-result v22

    #@351
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@354
    move-result-object v22

    #@355
    const/16 v23, 0x0

    #@357
    aput-object v22, v21, v23

    #@359
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@35c
    move-result-object v22

    #@35d
    const/16 v23, 0x1

    #@35f
    aput-object v22, v21, v23

    #@361
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    #@364
    move-result-object v22

    #@365
    invoke-virtual/range {v22 .. v22}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    #@368
    move-result v22

    #@369
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@36c
    move-result-object v22

    #@36d
    const/16 v23, 0x2

    #@36f
    aput-object v22, v21, v23

    #@371
    .line 2995
    const v22, 0xc3b9

    #@374
    move/from16 v0, v22

    #@376
    move-object/from16 v1, v21

    #@378
    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    #@37b
    .line 2998
    .end local v8    # "cid":I
    :cond_e
    invoke-virtual {v6}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnSetting()Lcom/android/internal/telephony/dataconnection/ApnSetting;

    #@37e
    move-result-object v5

    #@37f
    .line 2999
    move-object/from16 v0, p0

    #@381
    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    #@383
    move-object/from16 v22, v0

    #@385
    invoke-virtual {v6}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getReason()Ljava/lang/String;

    #@388
    move-result-object v23

    #@389
    .line 3000
    invoke-virtual {v6}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    #@38c
    move-result-object v24

    #@38d
    if-eqz v5, :cond_13

    #@38f
    iget-object v0, v5, Lcom/android/internal/telephony/dataconnection/ApnSetting;->apn:Ljava/lang/String;

    #@391
    move-object/from16 v21, v0

    #@393
    :goto_7
    invoke-virtual {v7}, Lcom/android/internal/telephony/dataconnection/DcFailCause;->toString()Ljava/lang/String;

    #@396
    move-result-object v25

    #@397
    .line 2999
    move-object/from16 v0, v22

    #@399
    move-object/from16 v1, v23

    #@39b
    move-object/from16 v2, v24

    #@39d
    move-object/from16 v3, v21

    #@39f
    move-object/from16 v4, v25

    #@3a1
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/Phone;->notifyPreciseDataConnectionFailed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@3a4
    .line 3003
    new-instance v14, Landroid/content/Intent;

    #@3a6
    const-string/jumbo v21, "android.intent.action.CARRIER_SIGNAL_REQUEST_NETWORK_FAILED"

    #@3a9
    move-object/from16 v0, v21

    #@3ab
    invoke-direct {v14, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@3ae
    .line 3005
    .restart local v14    # "intent":Landroid/content/Intent;
    const-string/jumbo v21, "errorCode"

    #@3b1
    invoke-virtual {v7}, Lcom/android/internal/telephony/dataconnection/DcFailCause;->getErrorCode()I

    #@3b4
    move-result v22

    #@3b5
    move-object/from16 v0, v21

    #@3b7
    move/from16 v1, v22

    #@3b9
    invoke-virtual {v14, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@3bc
    .line 3006
    const-string/jumbo v21, "apnType"

    #@3bf
    invoke-virtual {v6}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    #@3c2
    move-result-object v22

    #@3c3
    move-object/from16 v0, v21

    #@3c5
    move-object/from16 v1, v22

    #@3c7
    invoke-virtual {v14, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@3ca
    .line 3007
    move-object/from16 v0, p0

    #@3cc
    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    #@3ce
    move-object/from16 v21, v0

    #@3d0
    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/telephony/Phone;->getCarrierSignalAgent()Lcom/android/internal/telephony/CarrierSignalAgent;

    #@3d3
    move-result-object v21

    #@3d4
    move-object/from16 v0, v21

    #@3d6
    invoke-virtual {v0, v14}, Lcom/android/internal/telephony/CarrierSignalAgent;->notifyCarrierSignalReceivers(Landroid/content/Intent;)Z

    #@3d9
    .line 3009
    invoke-virtual {v7}, Lcom/android/internal/telephony/dataconnection/DcFailCause;->isRestartRadioFail()Z

    #@3dc
    move-result v21

    #@3dd
    if-nez v21, :cond_f

    #@3df
    invoke-virtual {v7}, Lcom/android/internal/telephony/dataconnection/DcFailCause;->getErrorCode()I

    #@3e2
    move-result v21

    #@3e3
    move/from16 v0, v21

    #@3e5
    invoke-virtual {v6, v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->restartOnError(I)Z

    #@3e8
    move-result v21

    #@3e9
    if-eqz v21, :cond_10

    #@3eb
    .line 3010
    :cond_f
    const-string/jumbo v21, "Modem restarted."

    #@3ee
    move-object/from16 v0, p0

    #@3f0
    move-object/from16 v1, v21

    #@3f2
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@3f5
    .line 3011
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->sendRestartRadio()V

    #@3f8
    .line 3016
    :cond_10
    move-object/from16 v0, p0

    #@3fa
    invoke-virtual {v0, v7}, Lcom/android/internal/telephony/dataconnection/DcTracker;->isPermanentFail(Lcom/android/internal/telephony/dataconnection/DcFailCause;)Z

    #@3fd
    move-result v21

    #@3fe
    if-eqz v21, :cond_11

    #@400
    .line 3017
    new-instance v21, Ljava/lang/StringBuilder;

    #@402
    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    #@405
    const-string/jumbo v22, "cause = "

    #@408
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40b
    move-result-object v21

    #@40c
    move-object/from16 v0, v21

    #@40e
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@411
    move-result-object v21

    #@412
    const-string/jumbo v22, ", mark apn as permanent failed. apn = "

    #@415
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@418
    move-result-object v21

    #@419
    move-object/from16 v0, v21

    #@41b
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@41e
    move-result-object v21

    #@41f
    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@422
    move-result-object v21

    #@423
    move-object/from16 v0, p0

    #@425
    move-object/from16 v1, v21

    #@427
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@42a
    .line 3018
    invoke-virtual {v6, v5}, Lcom/android/internal/telephony/dataconnection/ApnContext;->markApnPermanentFailed(Lcom/android/internal/telephony/dataconnection/ApnSetting;)V

    #@42d
    .line 3021
    :cond_11
    const/4 v13, 0x1

    #@42e
    goto/16 :goto_0

    #@430
    .line 2990
    .end local v14    # "intent":Landroid/content/Intent;
    :cond_12
    iget-object v0, v5, Lcom/android/internal/telephony/dataconnection/ApnSetting;->apn:Ljava/lang/String;

    #@432
    move-object/from16 v21, v0

    #@434
    goto/16 :goto_6

    #@436
    .line 3000
    :cond_13
    const-string/jumbo v21, "unknown"

    #@439
    goto/16 :goto_7
.end method

.method private onDataSetupCompleteError(Landroid/os/AsyncResult;)V
    .locals 7
    .param p1, "ar"    # Landroid/os/AsyncResult;

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 3069
    const-string/jumbo v1, "onDataSetupCompleteError"

    #@4
    invoke-direct {p0, p1, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->getValidApnContext(Landroid/os/AsyncResult;Ljava/lang/String;)Lcom/android/internal/telephony/dataconnection/ApnContext;

    #@7
    move-result-object v0

    #@8
    .line 3071
    .local v0, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    if-nez v0, :cond_0

    #@a
    return-void

    #@b
    .line 3073
    :cond_0
    iget-boolean v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mFailFast:Z

    #@d
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getDelayForNextApn(Z)J

    #@10
    move-result-wide v2

    #@11
    .line 3076
    .local v2, "delay":J
    const-wide/16 v4, 0x0

    #@13
    cmp-long v1, v2, v4

    #@15
    if-ltz v1, :cond_1

    #@17
    .line 3077
    new-instance v1, Ljava/lang/StringBuilder;

    #@19
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1c
    const-string/jumbo v4, "onDataSetupCompleteError: Try next APN. delay = "

    #@1f
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v1

    #@23
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@26
    move-result-object v1

    #@27
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2a
    move-result-object v1

    #@2b
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@2e
    .line 3078
    sget-object v1, Lcom/android/internal/telephony/DctConstants$State;->SCANNING:Lcom/android/internal/telephony/DctConstants$State;

    #@30
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setState(Lcom/android/internal/telephony/DctConstants$State;)V

    #@33
    .line 3081
    invoke-direct {p0, v2, v3, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->startAlarmForReconnect(JLcom/android/internal/telephony/dataconnection/ApnContext;)V

    #@36
    .line 3067
    :goto_0
    return-void

    #@37
    .line 3085
    :cond_1
    sget-object v1, Lcom/android/internal/telephony/DctConstants$State;->FAILED:Lcom/android/internal/telephony/DctConstants$State;

    #@39
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setState(Lcom/android/internal/telephony/DctConstants$State;)V

    #@3c
    .line 3086
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    #@3e
    const-string/jumbo v4, "apnFailed"

    #@41
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    #@44
    move-result-object v5

    #@45
    invoke-virtual {v1, v4, v5}, Lcom/android/internal/telephony/Phone;->notifyDataConnection(Ljava/lang/String;Ljava/lang/String;)V

    #@48
    .line 3087
    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setDataConnectionAc(Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;)V

    #@4b
    .line 3088
    const-string/jumbo v1, "onDataSetupCompleteError: Stop retrying APNs."

    #@4e
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@51
    goto :goto_0
.end method

.method private onDataStallAlarm(I)V
    .locals 6
    .param p1, "tag"    # I

    #@0
    .prologue
    .line 4704
    iget v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDataStallAlarmTag:I

    #@2
    if-eq v2, p1, :cond_0

    #@4
    .line 4706
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
    iget v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDataStallAlarmTag:I

    #@1d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@20
    move-result-object v2

    #@21
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@24
    move-result-object v2

    #@25
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@28
    .line 4708
    return-void

    #@29
    .line 4710
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->updateDataStallInfo()V

    #@2c
    .line 4712
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mResolver:Landroid/content/ContentResolver;

    #@2e
    .line 4713
    const-string/jumbo v3, "pdp_watchdog_trigger_packet_count"

    #@31
    .line 4714
    const/16 v4, 0xa

    #@33
    .line 4712
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    #@36
    move-result v0

    #@37
    .line 4716
    .local v0, "hangWatchdogTrigger":I
    const/4 v1, 0x0

    #@38
    .line 4717
    .local v1, "suspectedStall":Z
    iget-wide v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mSentSinceLastRecv:J

    #@3a
    int-to-long v4, v0

    #@3b
    cmp-long v2, v2, v4

    #@3d
    if-ltz v2, :cond_1

    #@3f
    .line 4719
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
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->getRecoveryAction()I

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
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@65
    .line 4721
    const/4 v1, 0x1

    #@66
    .line 4722
    const v2, 0x42012

    #@69
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->obtainMessage(I)Landroid/os/Message;

    #@6c
    move-result-object v2

    #@6d
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->sendMessage(Landroid/os/Message;)Z

    #@70
    .line 4729
    :cond_1
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->startDataStallAlarm(Z)V

    #@73
    .line 4703
    return-void
.end method

.method private onDeviceProvisionedChange()V
    .locals 2

    #@0
    .prologue
    .line 934
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->getDataEnabled()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 935
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDataEnabledSettings:Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;

    #@8
    const/4 v1, 0x1

    #@9
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->setUserDataEnabled(Z)V

    #@c
    .line 936
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->teardownRestrictedMeteredConnections()V

    #@f
    .line 937
    const-string/jumbo v0, "dataEnabled"

    #@12
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->onTrySetupData(Ljava/lang/String;)Z

    #@15
    .line 933
    :goto_0
    return-void

    #@16
    .line 939
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDataEnabledSettings:Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;

    #@18
    const/4 v1, 0x0

    #@19
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->setUserDataEnabled(Z)V

    #@1c
    .line 940
    const-string/jumbo v0, "specificDisabled"

    #@1f
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->onCleanUpAllConnections(Ljava/lang/String;)V

    #@22
    goto :goto_0
.end method

.method private onDisconnectDcRetrying(Landroid/os/AsyncResult;)V
    .locals 4
    .param p1, "ar"    # Landroid/os/AsyncResult;

    #@0
    .prologue
    .line 3191
    const-string/jumbo v1, "onDisconnectDcRetrying"

    #@3
    invoke-direct {p0, p1, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->getValidApnContext(Landroid/os/AsyncResult;Ljava/lang/String;)Lcom/android/internal/telephony/dataconnection/ApnContext;

    #@6
    move-result-object v0

    #@7
    .line 3192
    .local v0, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    if-nez v0, :cond_0

    #@9
    return-void

    #@a
    .line 3194
    :cond_0
    sget-object v1, Lcom/android/internal/telephony/DctConstants$State;->RETRYING:Lcom/android/internal/telephony/DctConstants$State;

    #@c
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setState(Lcom/android/internal/telephony/DctConstants$State;)V

    #@f
    .line 3195
    new-instance v1, Ljava/lang/StringBuilder;

    #@11
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@14
    const-string/jumbo v2, "onDisconnectDcRetrying: apnContext="

    #@17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v1

    #@1b
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v1

    #@1f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object v1

    #@23
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@26
    .line 3197
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    #@28
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getReason()Ljava/lang/String;

    #@2b
    move-result-object v2

    #@2c
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    #@2f
    move-result-object v3

    #@30
    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/Phone;->notifyDataConnection(Ljava/lang/String;Ljava/lang/String;)V

    #@33
    .line 3189
    return-void
.end method

.method private onDisconnectDone(Landroid/os/AsyncResult;)V
    .locals 9
    .param p1, "ar"    # Landroid/os/AsyncResult;

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 3109
    const-string/jumbo v5, "onDisconnectDone"

    #@4
    invoke-direct {p0, p1, v5}, Lcom/android/internal/telephony/dataconnection/DcTracker;->getValidApnContext(Landroid/os/AsyncResult;Ljava/lang/String;)Lcom/android/internal/telephony/dataconnection/ApnContext;

    #@7
    move-result-object v0

    #@8
    .line 3110
    .local v0, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    if-nez v0, :cond_0

    #@a
    return-void

    #@b
    .line 3112
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string/jumbo v6, "onDisconnectDone: EVENT_DISCONNECT_DONE apnContext="

    #@13
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v5

    #@17
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v5

    #@1b
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v5

    #@1f
    invoke-direct {p0, v5}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@22
    .line 3113
    sget-object v5, Lcom/android/internal/telephony/DctConstants$State;->IDLE:Lcom/android/internal/telephony/DctConstants$State;

    #@24
    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setState(Lcom/android/internal/telephony/DctConstants$State;)V

    #@27
    .line 3115
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    #@29
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getReason()Ljava/lang/String;

    #@2c
    move-result-object v6

    #@2d
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    #@30
    move-result-object v7

    #@31
    invoke-virtual {v5, v6, v7}, Lcom/android/internal/telephony/Phone;->notifyDataConnection(Ljava/lang/String;Ljava/lang/String;)V

    #@34
    .line 3119
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->isDisconnected()Z

    #@37
    move-result v5

    #@38
    if-eqz v5, :cond_3

    #@3a
    .line 3120
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    #@3c
    invoke-virtual {v5}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    #@3f
    move-result-object v5

    #@40
    invoke-virtual {v5}, Lcom/android/internal/telephony/ServiceStateTracker;->processPendingRadioPowerOffAfterDataOff()Z

    #@43
    move-result v5

    #@44
    if-eqz v5, :cond_3

    #@46
    .line 3121
    const-string/jumbo v5, "onDisconnectDone: radio will be turned off, no retries"

    #@49
    invoke-direct {p0, v5}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@4c
    .line 3123
    invoke-virtual {v0, v8}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setApnSetting(Lcom/android/internal/telephony/dataconnection/ApnSetting;)V

    #@4f
    .line 3124
    invoke-virtual {v0, v8}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setDataConnectionAc(Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;)V

    #@52
    .line 3128
    iget v5, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDisconnectPendingCount:I

    #@54
    if-lez v5, :cond_1

    #@56
    .line 3129
    iget v5, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDisconnectPendingCount:I

    #@58
    add-int/lit8 v5, v5, -0x1

    #@5a
    iput v5, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDisconnectPendingCount:I

    #@5c
    .line 3132
    :cond_1
    iget v5, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDisconnectPendingCount:I

    #@5e
    if-nez v5, :cond_2

    #@60
    .line 3133
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->notifyDataDisconnectComplete()V

    #@63
    .line 3134
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->notifyAllDataDisconnected()V

    #@66
    .line 3136
    :cond_2
    return-void

    #@67
    .line 3140
    :cond_3
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAttached:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@69
    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    #@6c
    move-result v5

    #@6d
    if-eqz v5, :cond_7

    #@6f
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->isReady()Z

    #@72
    move-result v5

    #@73
    if-eqz v5, :cond_7

    #@75
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->retryAfterDisconnected(Lcom/android/internal/telephony/dataconnection/ApnContext;)Z

    #@78
    move-result v5

    #@79
    if-eqz v5, :cond_7

    #@7b
    .line 3142
    :try_start_0
    const-string/jumbo v5, "gsm.defaultpdpcontext.active"

    #@7e
    const-string/jumbo v6, "false"

    #@81
    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    #@84
    .line 3149
    :goto_0
    const-string/jumbo v5, "onDisconnectDone: attached, ready and retry after disconnect"

    #@87
    invoke-direct {p0, v5}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@8a
    .line 3150
    iget-boolean v5, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mFailFast:Z

    #@8c
    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getInterApnDelay(Z)J

    #@8f
    move-result-wide v2

    #@90
    .line 3151
    .local v2, "delay":J
    const-wide/16 v6, 0x0

    #@92
    cmp-long v5, v2, v6

    #@94
    if-lez v5, :cond_4

    #@96
    .line 3154
    invoke-direct {p0, v2, v3, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->startAlarmForReconnect(JLcom/android/internal/telephony/dataconnection/ApnContext;)V

    #@99
    .line 3174
    .end local v2    # "delay":J
    :cond_4
    :goto_1
    iget v5, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDisconnectPendingCount:I

    #@9b
    if-lez v5, :cond_5

    #@9d
    .line 3175
    iget v5, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDisconnectPendingCount:I

    #@9f
    add-int/lit8 v5, v5, -0x1

    #@a1
    iput v5, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDisconnectPendingCount:I

    #@a3
    .line 3177
    :cond_5
    iget v5, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDisconnectPendingCount:I

    #@a5
    if-nez v5, :cond_6

    #@a7
    .line 3179
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    #@a9
    invoke-virtual {v5}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    #@ac
    move-result-object v5

    #@ad
    invoke-virtual {v5}, Lcom/android/internal/telephony/ServiceStateTracker;->isConcurrentVoiceAndDataAllowed()Z

    #@b0
    move-result v5

    #@b1
    .line 3178
    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setConcurrentVoiceAndDataAllowed(Z)V

    #@b4
    .line 3180
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->notifyDataDisconnectComplete()V

    #@b7
    .line 3181
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->notifyAllDataDisconnected()V

    #@ba
    .line 3108
    :cond_6
    return-void

    #@bb
    .line 3143
    :catch_0
    move-exception v1

    #@bc
    .line 3144
    .local v1, "ex":Ljava/lang/RuntimeException;
    const-string/jumbo v5, "Failed to set PUPPET_MASTER_RADIO_STRESS_TEST to false"

    #@bf
    invoke-direct {p0, v5}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@c2
    goto :goto_0

    #@c3
    .line 3157
    .end local v1    # "ex":Ljava/lang/RuntimeException;
    :cond_7
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    #@c5
    invoke-virtual {v5}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    #@c8
    move-result-object v5

    #@c9
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@cc
    move-result-object v5

    #@cd
    .line 3158
    const v6, 0x112007e

    #@d0
    .line 3157
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    #@d3
    move-result v4

    #@d4
    .line 3160
    .local v4, "restartRadioAfterProvisioning":Z
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->isProvisioningApn()Z

    #@d7
    move-result v5

    #@d8
    if-eqz v5, :cond_8

    #@da
    if-eqz v4, :cond_8

    #@dc
    .line 3161
    const-string/jumbo v5, "onDisconnectDone: restartRadio after provisioning"

    #@df
    invoke-direct {p0, v5}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@e2
    .line 3162
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->restartRadio()V

    #@e5
    .line 3164
    :cond_8
    invoke-virtual {v0, v8}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setApnSetting(Lcom/android/internal/telephony/dataconnection/ApnSetting;)V

    #@e8
    .line 3165
    invoke-virtual {v0, v8}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setDataConnectionAc(Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;)V

    #@eb
    .line 3166
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    #@ed
    invoke-virtual {v5}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    #@f0
    move-result-object v5

    #@f1
    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    #@f4
    move-result v5

    #@f5
    invoke-direct {p0, v5}, Lcom/android/internal/telephony/dataconnection/DcTracker;->isOnlySingleDcAllowed(I)Z

    #@f8
    move-result v5

    #@f9
    if-eqz v5, :cond_9

    #@fb
    .line 3167
    const-string/jumbo v5, "onDisconnectDone: isOnlySigneDcAllowed true so setup single apn"

    #@fe
    invoke-direct {p0, v5}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@101
    .line 3168
    const-string/jumbo v5, "SinglePdnArbitration"

    #@104
    invoke-direct {p0, v5}, Lcom/android/internal/telephony/dataconnection/DcTracker;->setupDataOnConnectableApns(Ljava/lang/String;)V

    #@107
    goto :goto_1

    #@108
    .line 3170
    :cond_9
    const-string/jumbo v5, "onDisconnectDone: not retrying"

    #@10b
    invoke-direct {p0, v5}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@10e
    goto :goto_1
.end method

.method private onEnableApn(II)V
    .locals 4
    .param p1, "apnId"    # I
    .param p2, "enabled"    # I

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 2612
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mApnContextsById:Landroid/util/SparseArray;

    #@3
    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Lcom/android/internal/telephony/dataconnection/ApnContext;

    #@9
    .line 2613
    .local v0, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    if-nez v0, :cond_0

    #@b
    .line 2614
    new-instance v1, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string/jumbo v2, "onEnableApn("

    #@13
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v1

    #@17
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v1

    #@1b
    const-string/jumbo v2, ", "

    #@1e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v1

    #@22
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@25
    move-result-object v1

    #@26
    const-string/jumbo v2, "): NO ApnContext"

    #@29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v1

    #@2d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@30
    move-result-object v1

    #@31
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->loge(Ljava/lang/String;)V

    #@34
    .line 2615
    return-void

    #@35
    .line 2618
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    #@37
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@3a
    const-string/jumbo v3, "onEnableApn: apnContext="

    #@3d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v2

    #@41
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v2

    #@45
    const-string/jumbo v3, " call applyNewState"

    #@48
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v2

    #@4c
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4f
    move-result-object v2

    #@50
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@53
    .line 2619
    if-ne p2, v1, :cond_1

    #@55
    :goto_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getDependencyMet()Z

    #@58
    move-result v2

    #@59
    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->applyNewState(Lcom/android/internal/telephony/dataconnection/ApnContext;ZZ)V

    #@5c
    .line 2611
    return-void

    #@5d
    .line 2619
    :cond_1
    const/4 v1, 0x0

    #@5e
    goto :goto_0
.end method

.method private onRadioAvailable()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 2774
    const-string/jumbo v1, "onRadioAvailable"

    #@4
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@7
    .line 2775
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    #@9
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getSimulatedRadioControl()Lcom/android/internal/telephony/test/SimulatedRadioControl;

    #@c
    move-result-object v1

    #@d
    if-eqz v1, :cond_0

    #@f
    .line 2779
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/dataconnection/DcTracker;->notifyDataConnection(Ljava/lang/String;)V

    #@12
    .line 2781
    const-string/jumbo v1, "onRadioAvailable: We\'re on the simulator; assuming data is connected"

    #@15
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@18
    .line 2784
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    #@1a
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    #@1d
    move-result-object v0

    #@1e
    check-cast v0, Lcom/android/internal/telephony/uicc/IccRecords;

    #@20
    .line 2785
    .local v0, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v0, :cond_1

    #@22
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccRecords;->getRecordsLoaded()Z

    #@25
    move-result v1

    #@26
    if-eqz v1, :cond_1

    #@28
    .line 2786
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/dataconnection/DcTracker;->notifyOffApnsOfAvailability(Ljava/lang/String;)V

    #@2b
    .line 2789
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->getOverallState()Lcom/android/internal/telephony/DctConstants$State;

    #@2e
    move-result-object v1

    #@2f
    sget-object v2, Lcom/android/internal/telephony/DctConstants$State;->IDLE:Lcom/android/internal/telephony/DctConstants$State;

    #@31
    if-eq v1, v2, :cond_2

    #@33
    .line 2790
    const/4 v1, 0x1

    #@34
    invoke-direct {p0, v1, v3}, Lcom/android/internal/telephony/dataconnection/DcTracker;->cleanUpConnection(ZLcom/android/internal/telephony/dataconnection/ApnContext;)V

    #@37
    .line 2773
    :cond_2
    return-void
.end method

.method private onRadioOffOrNotAvailable()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v1, 0x0

    #@2
    .line 2798
    iput-boolean v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mReregisterOnReconnectFailure:Z

    #@4
    .line 2800
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    #@6
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getSimulatedRadioControl()Lcom/android/internal/telephony/test/SimulatedRadioControl;

    #@9
    move-result-object v0

    #@a
    if-eqz v0, :cond_0

    #@c
    .line 2803
    const-string/jumbo v0, "We\'re on the simulator; assuming radio off is meaningless"

    #@f
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@12
    .line 2808
    :goto_0
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->notifyOffApnsOfAvailability(Ljava/lang/String;)V

    #@15
    .line 2794
    return-void

    #@16
    .line 2805
    :cond_0
    const-string/jumbo v0, "onRadioOffOrNotAvailable: is off and clean up all connections"

    #@19
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@1c
    .line 2806
    const-string/jumbo v0, "radioTurnedOff"

    #@1f
    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->cleanUpAllConnections(ZLjava/lang/String;)Z

    #@22
    goto :goto_0
.end method

.method private onRecordsLoadedOrSubIdChanged()V
    .locals 2

    #@0
    .prologue
    .line 2349
    const-string/jumbo v0, "onRecordsLoadedOrSubIdChanged: createAllApnList"

    #@3
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@6
    .line 2350
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    #@8
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@f
    move-result-object v0

    #@10
    .line 2351
    const v1, 0x1120096

    #@13
    .line 2350
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    #@16
    move-result v0

    #@17
    iput-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAutoAttachOnCreationConfig:Z

    #@19
    .line 2353
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->createAllApnList()V

    #@1c
    .line 2354
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->setInitialAttachApn()V

    #@1f
    .line 2355
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    #@21
    iget-object v0, v0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@23
    invoke-interface {v0}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    #@26
    move-result-object v0

    #@27
    invoke-virtual {v0}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    #@2a
    move-result v0

    #@2b
    if-eqz v0, :cond_0

    #@2d
    .line 2356
    const-string/jumbo v0, "onRecordsLoadedOrSubIdChanged: notifying data availability"

    #@30
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@33
    .line 2357
    const-string/jumbo v0, "simLoaded"

    #@36
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->notifyOffApnsOfAvailability(Ljava/lang/String;)V

    #@39
    .line 2359
    :cond_0
    const-string/jumbo v0, "simLoaded"

    #@3c
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->setupDataOnConnectableApns(Ljava/lang/String;)V

    #@3f
    .line 2348
    return-void
.end method

.method private onResetDone(Landroid/os/AsyncResult;)V
    .locals 2
    .param p1, "ar"    # Landroid/os/AsyncResult;

    #@0
    .prologue
    .line 847
    const-string/jumbo v1, "EVENT_RESET_DONE"

    #@3
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@6
    .line 848
    const/4 v0, 0x0

    #@7
    .line 849
    .local v0, "reason":Ljava/lang/String;
    iget-object v1, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    #@9
    instance-of v1, v1, Ljava/lang/String;

    #@b
    if-eqz v1, :cond_0

    #@d
    .line 850
    iget-object v0, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    #@f
    .end local v0    # "reason":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    #@11
    .line 852
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->gotoIdleAndNotifyDataConnection(Ljava/lang/String;)V

    #@14
    .line 846
    return-void
.end method

.method private onRoamingOff()V
    .locals 1

    #@0
    .prologue
    .line 2736
    const-string/jumbo v0, "onRoamingOff"

    #@3
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@6
    .line 2738
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDataEnabledSettings:Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;

    #@8
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->isUserDataEnabled()Z

    #@b
    move-result v0

    #@c
    if-nez v0, :cond_0

    #@e
    return-void

    #@f
    .line 2740
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->getDataOnRoamingEnabled()Z

    #@12
    move-result v0

    #@13
    if-nez v0, :cond_1

    #@15
    .line 2741
    const-string/jumbo v0, "roamingOff"

    #@18
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->notifyOffApnsOfAvailability(Ljava/lang/String;)V

    #@1b
    .line 2742
    const-string/jumbo v0, "roamingOff"

    #@1e
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->setupDataOnConnectableApns(Ljava/lang/String;)V

    #@21
    .line 2735
    :goto_0
    return-void

    #@22
    .line 2744
    :cond_1
    const-string/jumbo v0, "roamingOff"

    #@25
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->notifyDataConnection(Ljava/lang/String;)V

    #@28
    goto :goto_0
.end method

.method private onRoamingOn()V
    .locals 2

    #@0
    .prologue
    .line 2749
    const-string/jumbo v0, "onRoamingOn"

    #@3
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@6
    .line 2751
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDataEnabledSettings:Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;

    #@8
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->isUserDataEnabled()Z

    #@b
    move-result v0

    #@c
    if-nez v0, :cond_0

    #@e
    .line 2752
    const-string/jumbo v0, "data not enabled by user"

    #@11
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@14
    .line 2753
    return-void

    #@15
    .line 2757
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    #@17
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    #@1a
    move-result-object v0

    #@1b
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    #@1e
    move-result v0

    #@1f
    if-nez v0, :cond_1

    #@21
    .line 2758
    const-string/jumbo v0, "device is not roaming. ignored the request."

    #@24
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@27
    .line 2759
    return-void

    #@28
    .line 2762
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->getDataOnRoamingEnabled()Z

    #@2b
    move-result v0

    #@2c
    if-eqz v0, :cond_2

    #@2e
    .line 2763
    const-string/jumbo v0, "onRoamingOn: setup data on roaming"

    #@31
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@34
    .line 2764
    const-string/jumbo v0, "roamingOn"

    #@37
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->setupDataOnConnectableApns(Ljava/lang/String;)V

    #@3a
    .line 2765
    const-string/jumbo v0, "roamingOn"

    #@3d
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->notifyDataConnection(Ljava/lang/String;)V

    #@40
    .line 2748
    :goto_0
    return-void

    #@41
    .line 2767
    :cond_2
    const-string/jumbo v0, "onRoamingOn: Tear down data connection on roaming."

    #@44
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@47
    .line 2768
    const-string/jumbo v0, "roamingOn"

    #@4a
    const/4 v1, 0x1

    #@4b
    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->cleanUpAllConnections(ZLjava/lang/String;)Z

    #@4e
    .line 2769
    const-string/jumbo v0, "roamingOn"

    #@51
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->notifyOffApnsOfAvailability(Ljava/lang/String;)V

    #@54
    goto :goto_0
.end method

.method private onSetCarrierDataEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    #@0
    .prologue
    .line 2372
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDataEnabledSettings:Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;

    #@2
    monitor-enter v1

    #@3
    .line 2373
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDataEnabledSettings:Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;

    #@5
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->isCarrierDataEnabled()Z

    #@8
    move-result v0

    #@9
    if-eq p1, v0, :cond_0

    #@b
    .line 2375
    new-instance v0, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string/jumbo v2, "carrier Action: set metered apns enabled: "

    #@13
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v0

    #@17
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v0

    #@1b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v0

    #@1f
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@22
    .line 2379
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDataEnabledSettings:Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;

    #@24
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->setCarrierDataEnabled(Z)V

    #@27
    .line 2381
    if-nez p1, :cond_1

    #@29
    .line 2383
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    #@2b
    const/4 v2, 0x5

    #@2c
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/Phone;->notifyOtaspChanged(I)V

    #@2f
    .line 2385
    const-string/jumbo v0, "carrierActionDisableMeteredApn"

    #@32
    const/4 v2, 0x1

    #@33
    invoke-direct {p0, v2, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->cleanUpAllConnections(ZLjava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@36
    :cond_0
    :goto_0
    monitor-exit v1

    #@37
    .line 2371
    return-void

    #@38
    .line 2387
    :cond_1
    :try_start_1
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->teardownRestrictedMeteredConnections()V

    #@3b
    .line 2388
    const-string/jumbo v0, "dataEnabled"

    #@3e
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->setupDataOnConnectableApns(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@41
    goto :goto_0

    #@42
    .line 2372
    :catchall_0
    move-exception v0

    #@43
    monitor-exit v1

    #@44
    throw v0
.end method

.method private onSetDependencyMet(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "apnType"    # Ljava/lang/String;
    .param p2, "met"    # Z

    #@0
    .prologue
    .line 2415
    const-string/jumbo v1, "hipri"

    #@3
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6
    move-result v1

    #@7
    if-eqz v1, :cond_0

    #@9
    return-void

    #@a
    .line 2417
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    #@c
    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Lcom/android/internal/telephony/dataconnection/ApnContext;

    #@12
    .line 2418
    .local v0, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    if-nez v0, :cond_1

    #@14
    .line 2419
    new-instance v1, Ljava/lang/StringBuilder;

    #@16
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@19
    const-string/jumbo v2, "onSetDependencyMet: ApnContext not found in onSetDependencyMet("

    #@1c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v1

    #@20
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v1

    #@24
    .line 2420
    const-string/jumbo v2, ", "

    #@27
    .line 2419
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v1

    #@2b
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v1

    #@2f
    .line 2420
    const-string/jumbo v2, ")"

    #@32
    .line 2419
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v1

    #@36
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@39
    move-result-object v1

    #@3a
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->loge(Ljava/lang/String;)V

    #@3d
    .line 2421
    return-void

    #@3e
    .line 2423
    :cond_1
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->isEnabled()Z

    #@41
    move-result v1

    #@42
    invoke-direct {p0, v0, v1, p2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->applyNewState(Lcom/android/internal/telephony/dataconnection/ApnContext;ZZ)V

    #@45
    .line 2424
    const-string/jumbo v1, "default"

    #@48
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@4b
    move-result v1

    #@4c
    if-eqz v1, :cond_2

    #@4e
    .line 2426
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    #@50
    const-string/jumbo v2, "hipri"

    #@53
    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@56
    move-result-object v0

    #@57
    .end local v0    # "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    check-cast v0, Lcom/android/internal/telephony/dataconnection/ApnContext;

    #@59
    .line 2427
    .restart local v0    # "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    if-eqz v0, :cond_2

    #@5b
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->isEnabled()Z

    #@5e
    move-result v1

    #@5f
    invoke-direct {p0, v0, v1, p2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->applyNewState(Lcom/android/internal/telephony/dataconnection/ApnContext;ZZ)V

    #@62
    .line 2413
    :cond_2
    return-void
.end method

.method private onSetInternalDataEnabled(ZLandroid/os/Message;)V
    .locals 4
    .param p1, "enabled"    # Z
    .param p2, "onCompleteMsg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 4138
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDataEnabledSettings:Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;

    #@2
    monitor-enter v2

    #@3
    .line 4139
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v3, "onSetInternalDataEnabled: enabled="

    #@b
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v1

    #@f
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@16
    move-result-object v1

    #@17
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@1a
    .line 4140
    const/4 v0, 0x1

    #@1b
    .line 4142
    .local v0, "sendOnComplete":Z
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDataEnabledSettings:Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;

    #@1d
    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->setInternalDataEnabled(Z)V

    #@20
    .line 4143
    if-eqz p1, :cond_1

    #@22
    .line 4144
    const-string/jumbo v1, "onSetInternalDataEnabled: changed to enabled, try to setup data call"

    #@25
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@28
    .line 4145
    const-string/jumbo v1, "dataEnabled"

    #@2b
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->onTrySetupData(Ljava/lang/String;)Z

    #@2e
    .line 4152
    :goto_0
    if-eqz v0, :cond_0

    #@30
    .line 4153
    if-eqz p2, :cond_0

    #@32
    .line 4154
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@35
    :cond_0
    monitor-exit v2

    #@36
    .line 4137
    return-void

    #@37
    .line 4147
    :cond_1
    const/4 v0, 0x0

    #@38
    .line 4148
    :try_start_1
    const-string/jumbo v1, "onSetInternalDataEnabled: changed to disabled, cleanUpAllConnections"

    #@3b
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@3e
    .line 4149
    const-string/jumbo v1, "dataDisabled"

    #@41
    invoke-virtual {p0, v1, p2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->cleanUpAllConnections(Ljava/lang/String;Landroid/os/Message;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@44
    goto :goto_0

    #@45
    .line 4138
    .end local v0    # "sendOnComplete":Z
    :catchall_0
    move-exception v1

    #@46
    monitor-exit v2

    #@47
    throw v1
.end method

.method private onSetPolicyDataEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    #@0
    .prologue
    .line 2439
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDataEnabledSettings:Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;

    #@2
    monitor-enter v2

    #@3
    .line 2440
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->getAnyDataEnabled()Z

    #@6
    move-result v0

    #@7
    .line 2441
    .local v0, "prevEnabled":Z
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDataEnabledSettings:Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;

    #@9
    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->isPolicyDataEnabled()Z

    #@c
    move-result v1

    #@d
    if-eq v1, p1, :cond_0

    #@f
    .line 2442
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDataEnabledSettings:Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;

    #@11
    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->setPolicyDataEnabled(Z)V

    #@14
    .line 2445
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->getAnyDataEnabled()Z

    #@17
    move-result v1

    #@18
    if-eq v0, v1, :cond_0

    #@1a
    .line 2446
    if-nez v0, :cond_1

    #@1c
    .line 2447
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->teardownRestrictedMeteredConnections()V

    #@1f
    .line 2448
    const-string/jumbo v1, "dataEnabled"

    #@22
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->onTrySetupData(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@25
    :cond_0
    :goto_0
    monitor-exit v2

    #@26
    .line 2438
    return-void

    #@27
    .line 2450
    :cond_1
    :try_start_1
    const-string/jumbo v1, "specificDisabled"

    #@2a
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->onCleanUpAllConnections(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2d
    goto :goto_0

    #@2e
    .line 2439
    .end local v0    # "prevEnabled":Z
    :catchall_0
    move-exception v1

    #@2f
    monitor-exit v2

    #@30
    throw v1
.end method

.method private onSetUserDataEnabled(Z)V
    .locals 7
    .param p1, "enabled"    # Z

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v1, 0x1

    #@2
    .line 866
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDataEnabledSettings:Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;

    #@4
    monitor-enter v3

    #@5
    .line 867
    :try_start_0
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDataEnabledSettings:Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;

    #@7
    invoke-virtual {v4}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->isUserDataEnabled()Z

    #@a
    move-result v4

    #@b
    if-eq v4, p1, :cond_1

    #@d
    .line 868
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDataEnabledSettings:Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;

    #@f
    invoke-virtual {v4, p1}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->setUserDataEnabled(Z)V

    #@12
    .line 872
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    #@15
    move-result-object v4

    #@16
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getSimCount()I

    #@19
    move-result v4

    #@1a
    if-ne v4, v1, :cond_3

    #@1c
    .line 873
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mResolver:Landroid/content/ContentResolver;

    #@1e
    const-string/jumbo v5, "mobile_data"

    #@21
    if-eqz p1, :cond_2

    #@23
    :goto_0
    invoke-static {v4, v5, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    #@26
    .line 879
    :goto_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->getDataOnRoamingEnabled()Z

    #@29
    move-result v1

    #@2a
    if-nez v1, :cond_0

    #@2c
    .line 880
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    #@2e
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    #@31
    move-result-object v1

    #@32
    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    #@35
    move-result v1

    #@36
    if-eqz v1, :cond_0

    #@38
    .line 881
    if-eqz p1, :cond_5

    #@3a
    .line 882
    const-string/jumbo v1, "roamingOn"

    #@3d
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->notifyOffApnsOfAvailability(Ljava/lang/String;)V

    #@40
    .line 890
    :cond_0
    :goto_2
    if-eqz p1, :cond_6

    #@42
    .line 891
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->teardownRestrictedMeteredConnections()V

    #@45
    .line 892
    const-string/jumbo v1, "dataEnabled"

    #@48
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->onTrySetupData(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4b
    :cond_1
    :goto_3
    monitor-exit v3

    #@4c
    .line 865
    return-void

    #@4d
    :cond_2
    move v1, v2

    #@4e
    .line 873
    goto :goto_0

    #@4f
    .line 875
    :cond_3
    :try_start_1
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    #@51
    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getSubId()I

    #@54
    move-result v0

    #@55
    .line 876
    .local v0, "phoneSubId":I
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mResolver:Landroid/content/ContentResolver;

    #@57
    new-instance v5, Ljava/lang/StringBuilder;

    #@59
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@5c
    const-string/jumbo v6, "mobile_data"

    #@5f
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@62
    move-result-object v5

    #@63
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@66
    move-result-object v5

    #@67
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6a
    move-result-object v5

    #@6b
    .line 877
    if-eqz p1, :cond_4

    #@6d
    .line 876
    :goto_4
    invoke-static {v4, v5, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@70
    goto :goto_1

    #@71
    .line 866
    .end local v0    # "phoneSubId":I
    :catchall_0
    move-exception v1

    #@72
    monitor-exit v3

    #@73
    throw v1

    #@74
    .restart local v0    # "phoneSubId":I
    :cond_4
    move v1, v2

    #@75
    .line 877
    goto :goto_4

    #@76
    .line 884
    .end local v0    # "phoneSubId":I
    :cond_5
    :try_start_2
    const-string/jumbo v1, "dataDisabled"

    #@79
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->notifyOffApnsOfAvailability(Ljava/lang/String;)V

    #@7c
    goto :goto_2

    #@7d
    .line 894
    :cond_6
    const-string/jumbo v1, "specificDisabled"

    #@80
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->onCleanUpAllConnections(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@83
    goto :goto_3
.end method

.method private onSimNotReady()V
    .locals 2

    #@0
    .prologue
    .line 2406
    const-string/jumbo v0, "onSimNotReady"

    #@3
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@6
    .line 2408
    const-string/jumbo v0, "simNotReady"

    #@9
    const/4 v1, 0x1

    #@a
    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->cleanUpAllConnections(ZLjava/lang/String;)Z

    #@d
    .line 2409
    const/4 v0, 0x0

    #@e
    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAllApnSettings:Ljava/util/ArrayList;

    #@10
    .line 2410
    const/4 v0, 0x0

    #@11
    iput-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAutoAttachOnCreationConfig:Z

    #@13
    .line 2405
    return-void
.end method

.method private onTrySetupData(Lcom/android/internal/telephony/dataconnection/ApnContext;)Z
    .locals 2
    .param p1, "apnContext"    # Lcom/android/internal/telephony/dataconnection/ApnContext;

    #@0
    .prologue
    .line 2630
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "onTrySetupData: apnContext="

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
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@17
    .line 2631
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->trySetupData(Lcom/android/internal/telephony/dataconnection/ApnContext;)Z

    #@1a
    move-result v0

    #@1b
    return v0
.end method

.method private onTrySetupData(Ljava/lang/String;)Z
    .locals 2
    .param p1, "reason"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2624
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "onTrySetupData: reason="

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v0

    #@10
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13
    move-result-object v0

    #@14
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@17
    .line 2625
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->setupDataOnConnectableApns(Ljava/lang/String;)V

    #@1a
    .line 2626
    const/4 v0, 0x1

    #@1b
    return v0
.end method

.method private onUpdateIcc()V
    .locals 6

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 4040
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    #@4
    if-nez v3, :cond_0

    #@6
    .line 4041
    return-void

    #@7
    .line 4044
    :cond_0
    invoke-direct {p0, v5}, Lcom/android/internal/telephony/dataconnection/DcTracker;->getUiccRecords(I)Lcom/android/internal/telephony/uicc/IccRecords;

    #@a
    move-result-object v0

    #@b
    .line 4046
    .local v0, "newIccRecords":Lcom/android/internal/telephony/uicc/IccRecords;
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    #@d
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    #@10
    move-result-object v1

    #@11
    check-cast v1, Lcom/android/internal/telephony/uicc/IccRecords;

    #@13
    .line 4047
    .local v1, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eq v1, v0, :cond_2

    #@15
    .line 4048
    if-eqz v1, :cond_1

    #@17
    .line 4049
    const-string/jumbo v3, "Removing stale icc objects."

    #@1a
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@1d
    .line 4050
    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/uicc/IccRecords;->unregisterForRecordsLoaded(Landroid/os/Handler;)V

    #@20
    .line 4051
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    #@22
    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    #@25
    .line 4053
    :cond_1
    if-eqz v0, :cond_3

    #@27
    .line 4054
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    #@29
    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getSubId()I

    #@2c
    move-result v3

    #@2d
    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    #@30
    move-result v3

    #@31
    if-eqz v3, :cond_2

    #@33
    .line 4055
    const-string/jumbo v3, "New records found."

    #@36
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@39
    .line 4056
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    #@3b
    invoke-virtual {v3, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    #@3e
    .line 4058
    const v3, 0x42002

    #@41
    .line 4057
    invoke-virtual {v0, p0, v3, v4}, Lcom/android/internal/telephony/uicc/IccRecords;->registerForRecordsLoaded(Landroid/os/Handler;ILjava/lang/Object;)V

    #@44
    .line 4060
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    #@46
    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    #@49
    move-result-object v2

    #@4a
    .line 4061
    .local v2, "sst":Lcom/android/internal/telephony/ServiceStateTracker;
    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/ServiceStateTracker;->setRadioPowerFromCarrier(Z)V

    #@4d
    .line 4062
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDataEnabledSettings:Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;

    #@4f
    invoke-virtual {v3, v5}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->setCarrierDataEnabled(Z)V

    #@52
    .line 4063
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    #@54
    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getCarrierSignalAgent()Lcom/android/internal/telephony/CarrierSignalAgent;

    #@57
    move-result-object v3

    #@58
    invoke-virtual {v3}, Lcom/android/internal/telephony/CarrierSignalAgent;->reset()V

    #@5b
    .line 4039
    .end local v2    # "sst":Lcom/android/internal/telephony/ServiceStateTracker;
    :cond_2
    :goto_0
    return-void

    #@5c
    .line 4066
    :cond_3
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->onSimNotReady()V

    #@5f
    goto :goto_0
.end method

.method private onVoiceCallEnded()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 3212
    const-string/jumbo v0, "onVoiceCallEnded"

    #@4
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@7
    .line 3213
    iput-boolean v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mInVoiceCall:Z

    #@9
    .line 3214
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->isConnected()Z

    #@c
    move-result v0

    #@d
    if-eqz v0, :cond_0

    #@f
    .line 3215
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    #@11
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    #@14
    move-result-object v0

    #@15
    invoke-virtual {v0}, Lcom/android/internal/telephony/ServiceStateTracker;->isConcurrentVoiceAndDataAllowed()Z

    #@18
    move-result v0

    #@19
    if-nez v0, :cond_1

    #@1b
    .line 3216
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->startNetStatPoll()V

    #@1e
    .line 3217
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->startDataStallAlarm(Z)V

    #@21
    .line 3218
    const-string/jumbo v0, "2GVoiceCallEnded"

    #@24
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->notifyDataConnection(Ljava/lang/String;)V

    #@27
    .line 3225
    :cond_0
    :goto_0
    const-string/jumbo v0, "2GVoiceCallEnded"

    #@2a
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->setupDataOnConnectableApns(Ljava/lang/String;)V

    #@2d
    .line 3211
    return-void

    #@2e
    .line 3221
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->resetPollStats()V

    #@31
    goto :goto_0
.end method

.method private onVoiceCallStarted()V
    .locals 1

    #@0
    .prologue
    .line 3201
    const-string/jumbo v0, "onVoiceCallStarted"

    #@3
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@6
    .line 3202
    const/4 v0, 0x1

    #@7
    iput-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mInVoiceCall:Z

    #@9
    .line 3203
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->isConnected()Z

    #@c
    move-result v0

    #@d
    if-eqz v0, :cond_0

    #@f
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    #@11
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    #@14
    move-result-object v0

    #@15
    invoke-virtual {v0}, Lcom/android/internal/telephony/ServiceStateTracker;->isConcurrentVoiceAndDataAllowed()Z

    #@18
    move-result v0

    #@19
    if-eqz v0, :cond_1

    #@1b
    .line 3200
    :cond_0
    :goto_0
    return-void

    #@1c
    .line 3204
    :cond_1
    const-string/jumbo v0, "onVoiceCallStarted stop polling"

    #@1f
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@22
    .line 3205
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->stopNetStatPoll()V

    #@25
    .line 3206
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->stopDataStallAlarm()V

    #@28
    .line 3207
    const-string/jumbo v0, "2GVoiceCallStarted"

    #@2b
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->notifyDataConnection(Ljava/lang/String;)V

    #@2e
    goto :goto_0
.end method

.method private parseTypes(Ljava/lang/String;)[Ljava/lang/String;
    .locals 3
    .param p1, "types"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1910
    if-eqz p1, :cond_0

    #@2
    const-string/jumbo v1, ""

    #@5
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@8
    move-result v1

    #@9
    if-eqz v1, :cond_1

    #@b
    .line 1911
    :cond_0
    const/4 v1, 0x1

    #@c
    new-array v0, v1, [Ljava/lang/String;

    #@e
    .line 1912
    .local v0, "result":[Ljava/lang/String;
    const-string/jumbo v1, "*"

    #@11
    const/4 v2, 0x0

    #@12
    aput-object v1, v0, v2

    #@14
    .line 1916
    :goto_0
    return-object v0

    #@15
    .line 1914
    .end local v0    # "result":[Ljava/lang/String;
    :cond_1
    const-string/jumbo v1, ","

    #@18
    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@1b
    move-result-object v0

    #@1c
    .restart local v0    # "result":[Ljava/lang/String;
    goto :goto_0
.end method

.method private putRecoveryAction(I)V
    .locals 2
    .param p1, "action"    # I

    #@0
    .prologue
    .line 4598
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mResolver:Landroid/content/ContentResolver;

    #@2
    const-string/jumbo v1, "radio.data.stall.recovery.action"

    #@5
    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    #@8
    .line 4597
    return-void
.end method

.method private registerForAllEvents()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 765
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    #@3
    iget-object v0, v0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@5
    const v1, 0x42001

    #@8
    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    #@b
    .line 766
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    #@d
    iget-object v0, v0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@f
    .line 767
    const v1, 0x42006

    #@12
    .line 766
    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForOffOrNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    #@15
    .line 768
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    #@17
    iget-object v0, v0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@19
    .line 769
    const v1, 0x42004

    #@1c
    .line 768
    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForDataNetworkStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    #@1f
    .line 775
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    #@21
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    #@24
    move-result-object v0

    #@25
    .line 776
    const v1, 0x42008

    #@28
    .line 775
    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/CallTracker;->registerForVoiceCallEnded(Landroid/os/Handler;ILjava/lang/Object;)V

    #@2b
    .line 777
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    #@2d
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    #@30
    move-result-object v0

    #@31
    .line 778
    const v1, 0x42007

    #@34
    .line 777
    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/CallTracker;->registerForVoiceCallStarted(Landroid/os/Handler;ILjava/lang/Object;)V

    #@37
    .line 779
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->registerServiceStateTrackerEvents()V

    #@3a
    .line 782
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    #@3c
    iget-object v0, v0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@3e
    const v1, 0x4202d

    #@41
    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForPcoData(Landroid/os/Handler;ILjava/lang/Object;)V

    #@44
    .line 764
    return-void
.end method

.method private registerSettingsObserver()V
    .locals 5

    #@0
    .prologue
    const v4, 0x4202b

    #@3
    .line 407
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mSettingsObserver:Lcom/android/internal/telephony/dataconnection/DcTracker$SettingsObserver;

    #@5
    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/DcTracker$SettingsObserver;->unobserve()V

    #@8
    .line 408
    const-string/jumbo v0, ""

    #@b
    .line 409
    .local v0, "simSuffix":Ljava/lang/String;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    #@e
    move-result-object v1

    #@f
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimCount()I

    #@12
    move-result v1

    #@13
    const/4 v2, 0x1

    #@14
    if-le v1, v2, :cond_0

    #@16
    .line 410
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    #@18
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    #@1b
    move-result v1

    #@1c
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@1f
    move-result-object v0

    #@20
    .line 413
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mSettingsObserver:Lcom/android/internal/telephony/dataconnection/DcTracker$SettingsObserver;

    #@22
    .line 414
    new-instance v2, Ljava/lang/StringBuilder;

    #@24
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@27
    const-string/jumbo v3, "data_roaming"

    #@2a
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
    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    #@39
    move-result-object v2

    #@3a
    .line 415
    const v3, 0x4200b

    #@3d
    .line 413
    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/dataconnection/DcTracker$SettingsObserver;->observe(Landroid/net/Uri;I)V

    #@40
    .line 416
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mSettingsObserver:Lcom/android/internal/telephony/dataconnection/DcTracker$SettingsObserver;

    #@42
    .line 417
    const-string/jumbo v2, "device_provisioned"

    #@45
    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    #@48
    move-result-object v2

    #@49
    .line 416
    invoke-virtual {v1, v2, v4}, Lcom/android/internal/telephony/dataconnection/DcTracker$SettingsObserver;->observe(Landroid/net/Uri;I)V

    #@4c
    .line 419
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mSettingsObserver:Lcom/android/internal/telephony/dataconnection/DcTracker$SettingsObserver;

    #@4e
    .line 420
    const-string/jumbo v2, "device_provisioning_mobile_data"

    #@51
    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    #@54
    move-result-object v2

    #@55
    .line 419
    invoke-virtual {v1, v2, v4}, Lcom/android/internal/telephony/dataconnection/DcTracker$SettingsObserver;->observe(Landroid/net/Uri;I)V

    #@58
    .line 406
    return-void
.end method

.method private resetPollStats()V
    .locals 2

    #@0
    .prologue
    const-wide/16 v0, -0x1

    #@2
    .line 4416
    iput-wide v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mTxPkts:J

    #@4
    .line 4417
    iput-wide v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mRxPkts:J

    #@6
    .line 4418
    const/16 v0, 0x3e8

    #@8
    iput v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mNetStatPollPeriod:I

    #@a
    .line 4415
    return-void
.end method

.method private restartDataStallAlarm()V
    .locals 2

    #@0
    .prologue
    .line 4780
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->isConnected()Z

    #@3
    move-result v1

    #@4
    if-nez v1, :cond_0

    #@6
    return-void

    #@7
    .line 4783
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->getRecoveryAction()I

    #@a
    move-result v0

    #@b
    .line 4785
    .local v0, "nextAction":I
    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DcTracker$RecoveryAction;->-wrap0(I)Z

    #@e
    move-result v1

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 4786
    const-string/jumbo v1, "restartDataStallAlarm: action is pending. not resetting the alarm."

    #@14
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@17
    .line 4787
    return-void

    #@18
    .line 4790
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->stopDataStallAlarm()V

    #@1b
    .line 4791
    const/4 v1, 0x0

    #@1c
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->startDataStallAlarm(Z)V

    #@1f
    .line 4779
    return-void
.end method

.method private restartRadio()V
    .locals 3

    #@0
    .prologue
    .line 2272
    const-string/jumbo v1, "restartRadio: ************TURN OFF RADIO**************"

    #@3
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@6
    .line 2273
    const-string/jumbo v1, "radioTurnedOff"

    #@9
    const/4 v2, 0x1

    #@a
    invoke-direct {p0, v2, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->cleanUpAllConnections(ZLjava/lang/String;)Z

    #@d
    .line 2274
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    #@f
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    #@12
    move-result-object v1

    #@13
    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/ServiceStateTracker;->powerOffRadioSafely(Lcom/android/internal/telephony/dataconnection/DcTracker;)V

    #@16
    .line 2283
    const-string/jumbo v1, "net.ppp.reset-by-timeout"

    #@19
    const-string/jumbo v2, "0"

    #@1c
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@1f
    move-result-object v1

    #@20
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@23
    move-result v0

    #@24
    .line 2284
    .local v0, "reset":I
    const-string/jumbo v1, "net.ppp.reset-by-timeout"

    #@27
    add-int/lit8 v2, v0, 0x1

    #@29
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    #@2c
    move-result-object v2

    #@2d
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    #@30
    .line 2271
    return-void
.end method

.method private retryAfterDisconnected(Lcom/android/internal/telephony/dataconnection/ApnContext;)Z
    .locals 3
    .param p1, "apnContext"    # Lcom/android/internal/telephony/dataconnection/ApnContext;

    #@0
    .prologue
    .line 2295
    const/4 v1, 0x1

    #@1
    .line 2296
    .local v1, "retry":Z
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getReason()Ljava/lang/String;

    #@4
    move-result-object v0

    #@5
    .line 2298
    .local v0, "reason":Ljava/lang/String;
    const-string/jumbo v2, "radioTurnedOff"

    #@8
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@b
    move-result v2

    #@c
    if-nez v2, :cond_0

    #@e
    .line 2299
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    #@10
    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    #@13
    move-result-object v2

    #@14
    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    #@17
    move-result v2

    #@18
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->isOnlySingleDcAllowed(I)Z

    #@1b
    move-result v2

    #@1c
    if-eqz v2, :cond_1

    #@1e
    .line 2300
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->isHigherPriorityApnContextActive(Lcom/android/internal/telephony/dataconnection/ApnContext;)Z

    #@21
    move-result v2

    #@22
    .line 2298
    if-eqz v2, :cond_1

    #@24
    .line 2301
    :cond_0
    const/4 v1, 0x0

    #@25
    .line 2303
    :cond_1
    return v1
.end method

.method private setActivity(Lcom/android/internal/telephony/DctConstants$Activity;)V
    .locals 2
    .param p1, "activity"    # Lcom/android/internal/telephony/DctConstants$Activity;

    #@0
    .prologue
    .line 954
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
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@17
    .line 955
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mActivity:Lcom/android/internal/telephony/DctConstants$Activity;

    #@19
    .line 956
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    #@1b
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->notifyDataActivity()V

    #@1e
    .line 953
    return-void
.end method

.method private setDataProfilesAsNeeded()V
    .locals 11

    #@0
    .prologue
    const/4 v10, 0x0

    #@1
    const/4 v9, 0x0

    #@2
    .line 3272
    const-string/jumbo v7, "setDataProfilesAsNeeded"

    #@5
    invoke-direct {p0, v7}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@8
    .line 3273
    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAllApnSettings:Ljava/util/ArrayList;

    #@a
    if-eqz v7, :cond_0

    #@c
    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAllApnSettings:Ljava/util/ArrayList;

    #@e
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    #@11
    move-result v7

    #@12
    if-eqz v7, :cond_1

    #@14
    .line 3271
    :cond_0
    :goto_0
    return-void

    #@15
    .line 3274
    :cond_1
    new-instance v5, Ljava/util/ArrayList;

    #@17
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    #@1a
    .line 3275
    .local v5, "dps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/dataconnection/DataProfile;>;"
    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAllApnSettings:Ljava/util/ArrayList;

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
    .line 3276
    .local v0, "apn":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    iget-boolean v7, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->modemCognitive:Z

    #@2e
    if-eqz v7, :cond_2

    #@30
    .line 3277
    new-instance v2, Lcom/android/internal/telephony/dataconnection/DataProfile;

    #@32
    .line 3278
    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    #@34
    invoke-virtual {v7}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    #@37
    move-result-object v7

    #@38
    invoke-virtual {v7}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    #@3b
    move-result v7

    #@3c
    .line 3277
    invoke-direct {v2, v0, v7}, Lcom/android/internal/telephony/dataconnection/DataProfile;-><init>(Lcom/android/internal/telephony/dataconnection/ApnSetting;Z)V

    #@3f
    .line 3279
    .local v2, "dp":Lcom/android/internal/telephony/dataconnection/DataProfile;
    const/4 v6, 0x0

    #@40
    .line 3280
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
    .line 3281
    .local v3, "dpIn":Lcom/android/internal/telephony/dataconnection/DataProfile;
    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/dataconnection/DataProfile;->equals(Ljava/lang/Object;)Z

    #@53
    move-result v7

    #@54
    if-eqz v7, :cond_3

    #@56
    .line 3282
    const/4 v6, 0x1

    #@57
    .line 3286
    .end local v3    # "dpIn":Lcom/android/internal/telephony/dataconnection/DataProfile;
    :cond_4
    if-nez v6, :cond_2

    #@59
    .line 3287
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@5c
    goto :goto_1

    #@5d
    .line 3291
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
    .line 3292
    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    #@65
    iget-object v8, v7, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

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

.method private setInitialAttachApn()V
    .locals 13

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 2121
    const/4 v11, 0x0

    #@2
    .line 2122
    .local v11, "iaApnSetting":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    const/4 v9, 0x0

    #@3
    .line 2123
    .local v9, "defaultApnSetting":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    const/4 v10, 0x0

    #@4
    .line 2125
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
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPreferredApn:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    #@12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v0

    #@16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@19
    move-result-object v0

    #@1a
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@1d
    .line 2127
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAllApnSettings:Ljava/util/ArrayList;

    #@1f
    if-eqz v0, :cond_0

    #@21
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAllApnSettings:Ljava/util/ArrayList;

    #@23
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    #@26
    move-result v0

    #@27
    if-eqz v0, :cond_2

    #@29
    .line 2155
    .end local v9    # "defaultApnSetting":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    .end local v10    # "firstApnSetting":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    .end local v11    # "iaApnSetting":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    :cond_0
    :goto_0
    const/4 v12, 0x0

    #@2a
    .line 2156
    .local v12, "initialAttachApnSetting":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    if-eqz v11, :cond_5

    #@2c
    .line 2157
    const-string/jumbo v0, "setInitialAttachApn: using iaApnSetting"

    #@2f
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@32
    .line 2158
    move-object v12, v11

    #@33
    .line 2170
    .end local v12    # "initialAttachApnSetting":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    :cond_1
    :goto_1
    if-nez v12, :cond_8

    #@35
    .line 2171
    const-string/jumbo v0, "setInitialAttachApn: X There in no available apn"

    #@38
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@3b
    .line 2120
    :goto_2
    return-void

    #@3c
    .line 2128
    .restart local v9    # "defaultApnSetting":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    .restart local v10    # "firstApnSetting":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    .restart local v11    # "iaApnSetting":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAllApnSettings:Ljava/util/ArrayList;

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
    .line 2129
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
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@5c
    .line 2132
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAllApnSettings:Ljava/util/ArrayList;

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
    .line 2134
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
    .line 2135
    iget-boolean v0, v7, Lcom/android/internal/telephony/dataconnection/ApnSetting;->carrierEnabled:Z

    #@7b
    .line 2134
    if-eqz v0, :cond_4

    #@7d
    .line 2137
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
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@94
    .line 2138
    move-object v11, v7

    #@95
    .line 2139
    .local v11, "iaApnSetting":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    goto :goto_0

    #@96
    .line 2140
    .local v11, "iaApnSetting":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    :cond_4
    if-nez v9, :cond_3

    #@98
    .line 2141
    const-string/jumbo v0, "default"

    #@9b
    invoke-virtual {v7, v0}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->canHandleType(Ljava/lang/String;)Z

    #@9e
    move-result v0

    #@9f
    .line 2140
    if-eqz v0, :cond_3

    #@a1
    .line 2143
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
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@b8
    .line 2144
    move-object v9, v7

    #@b9
    .local v9, "defaultApnSetting":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    goto :goto_3

    #@ba
    .line 2159
    .end local v7    # "apn":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    .end local v8    # "apn$iterator":Ljava/util/Iterator;
    .end local v9    # "defaultApnSetting":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    .end local v10    # "firstApnSetting":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    .end local v11    # "iaApnSetting":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    .restart local v12    # "initialAttachApnSetting":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    :cond_5
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPreferredApn:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    #@bc
    if-eqz v0, :cond_6

    #@be
    .line 2160
    const-string/jumbo v0, "setInitialAttachApn: using mPreferredApn"

    #@c1
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@c4
    .line 2161
    iget-object v12, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPreferredApn:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    #@c6
    .local v12, "initialAttachApnSetting":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    goto/16 :goto_1

    #@c8
    .line 2162
    .local v12, "initialAttachApnSetting":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    :cond_6
    if-eqz v9, :cond_7

    #@ca
    .line 2163
    const-string/jumbo v0, "setInitialAttachApn: using defaultApnSetting"

    #@cd
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@d0
    .line 2164
    move-object v12, v9

    #@d1
    .local v12, "initialAttachApnSetting":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    goto/16 :goto_1

    #@d3
    .line 2165
    .local v12, "initialAttachApnSetting":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    :cond_7
    if-eqz v10, :cond_1

    #@d5
    .line 2166
    const-string/jumbo v0, "setInitialAttachApn: using firstApnSetting"

    #@d8
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@db
    .line 2167
    move-object v12, v10

    #@dc
    .local v12, "initialAttachApnSetting":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    goto/16 :goto_1

    #@de
    .line 2173
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
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@f5
    .line 2175
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    #@f7
    iget-object v0, v0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@f9
    iget-object v1, v12, Lcom/android/internal/telephony/dataconnection/ApnSetting;->apn:Ljava/lang/String;

    #@fb
    .line 2176
    iget-object v2, v12, Lcom/android/internal/telephony/dataconnection/ApnSetting;->protocol:Ljava/lang/String;

    #@fd
    iget v3, v12, Lcom/android/internal/telephony/dataconnection/ApnSetting;->authType:I

    #@ff
    .line 2177
    iget-object v4, v12, Lcom/android/internal/telephony/dataconnection/ApnSetting;->user:Ljava/lang/String;

    #@101
    iget-object v5, v12, Lcom/android/internal/telephony/dataconnection/ApnSetting;->password:Ljava/lang/String;

    #@103
    .line 2175
    invoke-interface/range {v0 .. v6}, Lcom/android/internal/telephony/CommandsInterface;->setInitialAttachApn(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    #@106
    goto/16 :goto_2
.end method

.method private setPreferredApn(I)V
    .locals 7
    .param p1, "pos"    # I

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 3591
    iget-boolean v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mCanSetPreferApn:Z

    #@3
    if-nez v4, :cond_0

    #@5
    .line 3592
    const-string/jumbo v4, "setPreferredApn: X !canSEtPreferApn"

    #@8
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@b
    .line 3593
    return-void

    #@c
    .line 3596
    :cond_0
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    #@e
    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getSubId()I

    #@11
    move-result v4

    #@12
    int-to-long v4, v4

    #@13
    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    #@16
    move-result-object v1

    #@17
    .line 3597
    .local v1, "subId":Ljava/lang/String;
    sget-object v4, Lcom/android/internal/telephony/dataconnection/DcTracker;->PREFERAPN_NO_UPDATE_URI_USING_SUBID:Landroid/net/Uri;

    #@19
    invoke-static {v4, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    #@1c
    move-result-object v2

    #@1d
    .line 3598
    .local v2, "uri":Landroid/net/Uri;
    const-string/jumbo v4, "setPreferredApn: delete"

    #@20
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@23
    .line 3599
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    #@25
    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    #@28
    move-result-object v4

    #@29
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@2c
    move-result-object v0

    #@2d
    .line 3600
    .local v0, "resolver":Landroid/content/ContentResolver;
    invoke-virtual {v0, v2, v6, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    #@30
    .line 3602
    if-ltz p1, :cond_1

    #@32
    .line 3603
    const-string/jumbo v4, "setPreferredApn: insert"

    #@35
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@38
    .line 3604
    new-instance v3, Landroid/content/ContentValues;

    #@3a
    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    #@3d
    .line 3605
    .local v3, "values":Landroid/content/ContentValues;
    const-string/jumbo v4, "apn_id"

    #@40
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@43
    move-result-object v5

    #@44
    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    #@47
    .line 3606
    invoke-virtual {v0, v2, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    #@4a
    .line 3590
    .end local v3    # "values":Landroid/content/ContentValues;
    :cond_1
    return-void
.end method

.method private setRadio(Z)V
    .locals 3
    .param p1, "on"    # Z

    #@0
    .prologue
    .line 996
    const-string/jumbo v2, "phone"

    #@3
    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    #@6
    move-result-object v2

    #@7
    invoke-static {v2}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    #@a
    move-result-object v1

    #@b
    .line 998
    .local v1, "phone":Lcom/android/internal/telephony/ITelephony;
    :try_start_0
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->setRadio(Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@e
    .line 995
    :goto_0
    return-void

    #@f
    .line 999
    :catch_0
    move-exception v0

    #@10
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method private setupData(Lcom/android/internal/telephony/dataconnection/ApnContext;I)Z
    .locals 10
    .param p1, "apnContext"    # Lcom/android/internal/telephony/dataconnection/ApnContext;
    .param p2, "radioTech"    # I

    #@0
    .prologue
    const/4 v9, 0x1

    #@1
    const/4 v8, 0x0

    #@2
    .line 2033
    new-instance v1, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    const-string/jumbo v3, "setupData: apnContext="

    #@a
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    move-result-object v1

    #@e
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@15
    move-result-object v1

    #@16
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@19
    .line 2034
    const-string/jumbo v1, "setupData"

    #@1c
    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->requestLog(Ljava/lang/String;)V

    #@1f
    .line 2036
    const/4 v0, 0x0

    #@20
    .line 2038
    .local v0, "dcac":Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getNextApnSetting()Lcom/android/internal/telephony/dataconnection/ApnSetting;

    #@23
    move-result-object v6

    #@24
    .line 2040
    .local v6, "apnSetting":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    if-nez v6, :cond_0

    #@26
    .line 2041
    const-string/jumbo v1, "setupData: return for no apn found!"

    #@29
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@2c
    .line 2042
    return v8

    #@2d
    .line 2045
    :cond_0
    iget v2, v6, Lcom/android/internal/telephony/dataconnection/ApnSetting;->profileId:I

    #@2f
    .line 2046
    .local v2, "profileId":I
    if-nez v2, :cond_1

    #@31
    .line 2047
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    #@34
    move-result-object v1

    #@35
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->getApnProfileID(Ljava/lang/String;)I

    #@38
    move-result v2

    #@39
    .line 2054
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    #@3c
    move-result-object v1

    #@3d
    const-string/jumbo v3, "dun"

    #@40
    if-ne v1, v3, :cond_2

    #@42
    .line 2055
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->teardownForDun()Z

    #@45
    move-result v1

    #@46
    if-nez v1, :cond_3

    #@48
    .line 2056
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->checkForCompatibleConnectedApnContext(Lcom/android/internal/telephony/dataconnection/ApnContext;)Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;

    #@4b
    move-result-object v0

    #@4c
    .line 2057
    .local v0, "dcac":Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;
    if-eqz v0, :cond_3

    #@4e
    .line 2059
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->getApnSettingSync()Lcom/android/internal/telephony/dataconnection/ApnSetting;

    #@51
    move-result-object v7

    #@52
    .line 2060
    .local v7, "dcacApnSetting":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    if-eqz v7, :cond_3

    #@54
    .line 2062
    move-object v6, v7

    #@55
    .line 2066
    .end local v0    # "dcac":Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;
    .end local v7    # "dcacApnSetting":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    :cond_3
    if-nez v0, :cond_8

    #@57
    .line 2067
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->isOnlySingleDcAllowed(I)Z

    #@5a
    move-result v1

    #@5b
    if-eqz v1, :cond_6

    #@5d
    .line 2068
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->isHigherPriorityApnContextActive(Lcom/android/internal/telephony/dataconnection/ApnContext;)Z

    #@60
    move-result v1

    #@61
    if-eqz v1, :cond_4

    #@63
    .line 2070
    const-string/jumbo v1, "setupData: Higher priority ApnContext active.  Ignoring call"

    #@66
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@69
    .line 2072
    return v8

    #@6a
    .line 2078
    :cond_4
    const-string/jumbo v1, "SinglePdnArbitration"

    #@6d
    invoke-direct {p0, v9, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->cleanUpAllConnections(ZLjava/lang/String;)Z

    #@70
    move-result v1

    #@71
    if-eqz v1, :cond_5

    #@73
    .line 2082
    const-string/jumbo v1, "setupData: Some calls are disconnecting first.  Wait and retry"

    #@76
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@79
    .line 2083
    return v8

    #@7a
    .line 2087
    :cond_5
    const-string/jumbo v1, "setupData: Single pdp. Continue setting up data call."

    #@7d
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@80
    .line 2090
    :cond_6
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->findFreeDataConnection()Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;

    #@83
    move-result-object v0

    #@84
    .line 2092
    .restart local v0    # "dcac":Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;
    if-nez v0, :cond_7

    #@86
    .line 2093
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->createDataConnection()Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;

    #@89
    move-result-object v0

    #@8a
    .line 2096
    :cond_7
    if-nez v0, :cond_8

    #@8c
    .line 2097
    const-string/jumbo v1, "setupData: No free DataConnection and couldn\'t create one, WEIRD"

    #@8f
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@92
    .line 2098
    return v8

    #@93
    .line 2101
    .end local v0    # "dcac":Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;
    :cond_8
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->incAndGetConnectionGeneration()I

    #@96
    move-result v5

    #@97
    .line 2103
    .local v5, "generation":I
    new-instance v1, Ljava/lang/StringBuilder;

    #@99
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@9c
    const-string/jumbo v3, "setupData: dcac="

    #@9f
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a2
    move-result-object v1

    #@a3
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@a6
    move-result-object v1

    #@a7
    const-string/jumbo v3, " apnSetting="

    #@aa
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ad
    move-result-object v1

    #@ae
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@b1
    move-result-object v1

    #@b2
    const-string/jumbo v3, " gen#="

    #@b5
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b8
    move-result-object v1

    #@b9
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@bc
    move-result-object v1

    #@bd
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c0
    move-result-object v1

    #@c1
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@c4
    .line 2106
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setDataConnectionAc(Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;)V

    #@c7
    .line 2107
    invoke-virtual {p1, v6}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setApnSetting(Lcom/android/internal/telephony/dataconnection/ApnSetting;)V

    #@ca
    .line 2108
    sget-object v1, Lcom/android/internal/telephony/DctConstants$State;->CONNECTING:Lcom/android/internal/telephony/DctConstants$State;

    #@cc
    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setState(Lcom/android/internal/telephony/DctConstants$State;)V

    #@cf
    .line 2109
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    #@d1
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getReason()Ljava/lang/String;

    #@d4
    move-result-object v3

    #@d5
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    #@d8
    move-result-object v8

    #@d9
    invoke-virtual {v1, v3, v8}, Lcom/android/internal/telephony/Phone;->notifyDataConnection(Ljava/lang/String;Ljava/lang/String;)V

    #@dc
    .line 2111
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->obtainMessage()Landroid/os/Message;

    #@df
    move-result-object v4

    #@e0
    .line 2112
    .local v4, "msg":Landroid/os/Message;
    const v1, 0x42000

    #@e3
    iput v1, v4, Landroid/os/Message;->what:I

    #@e5
    .line 2113
    new-instance v1, Landroid/util/Pair;

    #@e7
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@ea
    move-result-object v3

    #@eb
    invoke-direct {v1, p1, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    #@ee
    iput-object v1, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@f0
    move-object v1, p1

    #@f1
    move v3, p2

    #@f2
    .line 2114
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->bringUp(Lcom/android/internal/telephony/dataconnection/ApnContext;IILandroid/os/Message;I)V

    #@f5
    .line 2116
    const-string/jumbo v1, "setupData: initing!"

    #@f8
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@fb
    .line 2117
    return v9
.end method

.method private setupDataOnConnectableApns(Ljava/lang/String;)V
    .locals 1
    .param p1, "reason"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1437
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcTracker$RetryFailures;->ALWAYS:Lcom/android/internal/telephony/dataconnection/DcTracker$RetryFailures;

    #@2
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->setupDataOnConnectableApns(Ljava/lang/String;Lcom/android/internal/telephony/dataconnection/DcTracker$RetryFailures;)V

    #@5
    .line 1436
    return-void
.end method

.method private setupDataOnConnectableApns(Ljava/lang/String;Lcom/android/internal/telephony/dataconnection/DcTracker$RetryFailures;)V
    .locals 8
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "retryFailures"    # Lcom/android/internal/telephony/dataconnection/DcTracker$RetryFailures;

    #@0
    .prologue
    .line 1444
    new-instance v4, Ljava/lang/StringBuilder;

    #@2
    const/16 v6, 0x78

    #@4
    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    #@7
    .line 1445
    .local v4, "sb":Ljava/lang/StringBuilder;
    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPrioritySortedApnContexts:Ljava/util/PriorityQueue;

    #@9
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@c
    move-result-object v1

    #@d
    .local v1, "apnContext$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@10
    move-result v6

    #@11
    if-eqz v6, :cond_0

    #@13
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@16
    move-result-object v0

    #@17
    check-cast v0, Lcom/android/internal/telephony/dataconnection/ApnContext;

    #@19
    .line 1446
    .local v0, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    #@1c
    move-result-object v6

    #@1d
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    .line 1447
    const-string/jumbo v6, ":[state="

    #@23
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    .line 1448
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getState()Lcom/android/internal/telephony/DctConstants$State;

    #@29
    move-result-object v6

    #@2a
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2d
    .line 1449
    const-string/jumbo v6, ",enabled="

    #@30
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    .line 1450
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->isEnabled()Z

    #@36
    move-result v6

    #@37
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@3a
    .line 1451
    const-string/jumbo v6, "] "

    #@3d
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    goto :goto_0

    #@41
    .line 1453
    .end local v0    # "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    #@43
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@46
    const-string/jumbo v7, "setupDataOnConnectableApns: "

    #@49
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v6

    #@4d
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@50
    move-result-object v6

    #@51
    const-string/jumbo v7, " "

    #@54
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@57
    move-result-object v6

    #@58
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@5b
    move-result-object v6

    #@5c
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5f
    move-result-object v6

    #@60
    invoke-direct {p0, v6}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@63
    .line 1456
    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPrioritySortedApnContexts:Ljava/util/PriorityQueue;

    #@65
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@68
    move-result-object v1

    #@69
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@6c
    move-result v6

    #@6d
    if-eqz v6, :cond_7

    #@6f
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@72
    move-result-object v0

    #@73
    check-cast v0, Lcom/android/internal/telephony/dataconnection/ApnContext;

    #@75
    .line 1457
    .restart local v0    # "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    const/4 v5, 0x0

    #@76
    .line 1461
    .local v5, "waitingApns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/dataconnection/ApnSetting;>;"
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getState()Lcom/android/internal/telephony/DctConstants$State;

    #@79
    move-result-object v6

    #@7a
    sget-object v7, Lcom/android/internal/telephony/DctConstants$State;->FAILED:Lcom/android/internal/telephony/DctConstants$State;

    #@7c
    if-eq v6, v7, :cond_2

    #@7e
    .line 1462
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getState()Lcom/android/internal/telephony/DctConstants$State;

    #@81
    move-result-object v6

    #@82
    sget-object v7, Lcom/android/internal/telephony/DctConstants$State;->SCANNING:Lcom/android/internal/telephony/DctConstants$State;

    #@84
    if-ne v6, v7, :cond_3

    #@86
    .line 1463
    :cond_2
    sget-object v6, Lcom/android/internal/telephony/dataconnection/DcTracker$RetryFailures;->ALWAYS:Lcom/android/internal/telephony/dataconnection/DcTracker$RetryFailures;

    #@88
    if-ne p2, v6, :cond_4

    #@8a
    .line 1464
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->releaseDataConnection(Ljava/lang/String;)V

    #@8d
    .line 1486
    .end local v5    # "waitingApns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/dataconnection/ApnSetting;>;"
    :cond_3
    :goto_2
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->isConnectable()Z

    #@90
    move-result v6

    #@91
    if-eqz v6, :cond_1

    #@93
    .line 1487
    const-string/jumbo v6, "isConnectable() call trySetupData"

    #@96
    invoke-direct {p0, v6}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@99
    .line 1488
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setReason(Ljava/lang/String;)V

    #@9c
    .line 1489
    invoke-direct {p0, v0, v5}, Lcom/android/internal/telephony/dataconnection/DcTracker;->trySetupData(Lcom/android/internal/telephony/dataconnection/ApnContext;Ljava/util/ArrayList;)Z

    #@9f
    goto :goto_1

    #@a0
    .line 1465
    .restart local v5    # "waitingApns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/dataconnection/ApnSetting;>;"
    :cond_4
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->isConcurrentVoiceAndDataAllowed()Z

    #@a3
    move-result v6

    #@a4
    if-nez v6, :cond_5

    #@a6
    .line 1466
    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    #@a8
    invoke-virtual {v6}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    #@ab
    move-result-object v6

    #@ac
    invoke-virtual {v6}, Lcom/android/internal/telephony/ServiceStateTracker;->isConcurrentVoiceAndDataAllowed()Z

    #@af
    move-result v6

    #@b0
    .line 1465
    if-eqz v6, :cond_5

    #@b2
    .line 1468
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->releaseDataConnection(Ljava/lang/String;)V

    #@b5
    goto :goto_2

    #@b6
    .line 1471
    :cond_5
    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    #@b8
    invoke-virtual {v6}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    #@bb
    move-result-object v6

    #@bc
    invoke-virtual {v6}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    #@bf
    move-result v3

    #@c0
    .line 1472
    .local v3, "radioTech":I
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getWaitingApns()Ljava/util/ArrayList;

    #@c3
    move-result-object v2

    #@c4
    .line 1473
    .local v2, "originalApns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/dataconnection/ApnSetting;>;"
    if-eqz v2, :cond_1

    #@c6
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    #@c9
    move-result v6

    #@ca
    if-nez v6, :cond_1

    #@cc
    .line 1474
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    #@cf
    move-result-object v6

    #@d0
    invoke-direct {p0, v6, v3}, Lcom/android/internal/telephony/dataconnection/DcTracker;->buildWaitingApns(Ljava/lang/String;I)Ljava/util/ArrayList;

    #@d3
    move-result-object v5

    #@d4
    .line 1475
    .local v5, "waitingApns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/dataconnection/ApnSetting;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@d7
    move-result v6

    #@d8
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    #@db
    move-result v7

    #@dc
    if-ne v6, v7, :cond_6

    #@de
    .line 1476
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->containsAll(Ljava/util/Collection;)Z

    #@e1
    move-result v6

    #@e2
    if-nez v6, :cond_1

    #@e4
    .line 1477
    :cond_6
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->releaseDataConnection(Ljava/lang/String;)V

    #@e7
    goto :goto_2

    #@e8
    .line 1440
    .end local v0    # "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    .end local v2    # "originalApns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/dataconnection/ApnSetting;>;"
    .end local v3    # "radioTech":I
    .end local v5    # "waitingApns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/dataconnection/ApnSetting;>;"
    :cond_7
    return-void
.end method

.method private startAlarmForReconnect(JLcom/android/internal/telephony/dataconnection/ApnContext;)V
    .locals 9
    .param p1, "delay"    # J
    .param p3, "apnContext"    # Lcom/android/internal/telephony/dataconnection/ApnContext;

    #@0
    .prologue
    .line 2307
    invoke-virtual {p3}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    #@3
    move-result-object v1

    #@4
    .line 2309
    .local v1, "apnType":Ljava/lang/String;
    new-instance v2, Landroid/content/Intent;

    #@6
    new-instance v4, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    const-string/jumbo v5, "com.android.internal.telephony.data-reconnect."

    #@e
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v4

    #@12
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v4

    #@16
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@19
    move-result-object v4

    #@1a
    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@1d
    .line 2310
    .local v2, "intent":Landroid/content/Intent;
    const-string/jumbo v4, "reconnect_alarm_extra_reason"

    #@20
    invoke-virtual {p3}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getReason()Ljava/lang/String;

    #@23
    move-result-object v5

    #@24
    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@27
    .line 2311
    const-string/jumbo v4, "reconnect_alarm_extra_type"

    #@2a
    invoke-virtual {v2, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@2d
    .line 2312
    const/high16 v4, 0x10000000

    #@2f
    invoke-virtual {v2, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@32
    .line 2315
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    #@35
    move-result v3

    #@36
    .line 2316
    .local v3, "subId":I
    const-string/jumbo v4, "subscription"

    #@39
    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@3c
    .line 2319
    new-instance v4, Ljava/lang/StringBuilder;

    #@3e
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@41
    const-string/jumbo v5, "startAlarmForReconnect: delay="

    #@44
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v4

    #@48
    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v4

    #@4c
    const-string/jumbo v5, " action="

    #@4f
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@52
    move-result-object v4

    #@53
    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    #@56
    move-result-object v5

    #@57
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v4

    #@5b
    .line 2320
    const-string/jumbo v5, " apn="

    #@5e
    .line 2319
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@61
    move-result-object v4

    #@62
    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@65
    move-result-object v4

    #@66
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@69
    move-result-object v4

    #@6a
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@6d
    .line 2323
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    #@6f
    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    #@72
    move-result-object v4

    #@73
    const/4 v5, 0x0

    #@74
    .line 2324
    const/high16 v6, 0x8000000

    #@76
    .line 2323
    invoke-static {v4, v5, v2, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    #@79
    move-result-object v0

    #@7a
    .line 2325
    .local v0, "alarmIntent":Landroid/app/PendingIntent;
    invoke-virtual {p3, v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setReconnectIntent(Landroid/app/PendingIntent;)V

    #@7d
    .line 2331
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAlarmManager:Landroid/app/AlarmManager;

    #@7f
    .line 2332
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@82
    move-result-wide v6

    #@83
    add-long/2addr v6, p1

    #@84
    .line 2331
    const/4 v5, 0x2

    #@85
    invoke-virtual {v4, v5, v6, v7, v0}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    #@88
    .line 2306
    return-void
.end method

.method private startDataStallAlarm(Z)V
    .locals 8
    .param p1, "suspectedStall"    # Z

    #@0
    .prologue
    .line 4733
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->getRecoveryAction()I

    #@3
    move-result v2

    #@4
    .line 4736
    .local v2, "nextAction":I
    iget-boolean v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDataStallDetectionEnabled:Z

    #@6
    if-eqz v3, :cond_1

    #@8
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->getOverallState()Lcom/android/internal/telephony/DctConstants$State;

    #@b
    move-result-object v3

    #@c
    sget-object v4, Lcom/android/internal/telephony/DctConstants$State;->CONNECTED:Lcom/android/internal/telephony/DctConstants$State;

    #@e
    if-ne v3, v4, :cond_1

    #@10
    .line 4739
    iget-boolean v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mIsScreenOn:Z

    #@12
    if-nez v3, :cond_0

    #@14
    if-nez p1, :cond_0

    #@16
    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DcTracker$RecoveryAction;->-wrap0(I)Z

    #@19
    move-result v3

    #@1a
    if-eqz v3, :cond_2

    #@1c
    .line 4740
    :cond_0
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mResolver:Landroid/content/ContentResolver;

    #@1e
    .line 4741
    const-string/jumbo v4, "data_stall_alarm_aggressive_delay_in_ms"

    #@21
    .line 4742
    const v5, 0xea60

    #@24
    .line 4740
    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    #@27
    move-result v0

    #@28
    .line 4749
    .local v0, "delayInMs":I
    :goto_0
    iget v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDataStallAlarmTag:I

    #@2a
    add-int/lit8 v3, v3, 0x1

    #@2c
    iput v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDataStallAlarmTag:I

    #@2e
    .line 4754
    new-instance v1, Landroid/content/Intent;

    #@30
    const-string/jumbo v3, "com.android.internal.telephony.data-stall"

    #@33
    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@36
    .line 4755
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v3, "data.stall.alram.tag"

    #@39
    iget v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDataStallAlarmTag:I

    #@3b
    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@3e
    .line 4756
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    #@40
    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    #@43
    move-result-object v3

    #@44
    const/4 v4, 0x0

    #@45
    .line 4757
    const/high16 v5, 0x8000000

    #@47
    .line 4756
    invoke-static {v3, v4, v1, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    #@4a
    move-result-object v3

    #@4b
    iput-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDataStallAlarmIntent:Landroid/app/PendingIntent;

    #@4d
    .line 4758
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAlarmManager:Landroid/app/AlarmManager;

    #@4f
    .line 4759
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@52
    move-result-wide v4

    #@53
    int-to-long v6, v0

    #@54
    add-long/2addr v4, v6

    #@55
    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDataStallAlarmIntent:Landroid/app/PendingIntent;

    #@57
    .line 4758
    const/4 v7, 0x2

    #@58
    invoke-virtual {v3, v7, v4, v5, v6}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    #@5b
    .line 4732
    .end local v0    # "delayInMs":I
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_1
    return-void

    #@5c
    .line 4744
    :cond_2
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mResolver:Landroid/content/ContentResolver;

    #@5e
    .line 4745
    const-string/jumbo v4, "data_stall_alarm_non_aggressive_delay_in_ms"

    #@61
    .line 4746
    const v5, 0x57e40

    #@64
    .line 4744
    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    #@67
    move-result v0

    #@68
    .restart local v0    # "delayInMs":I
    goto :goto_0
.end method

.method private startNetStatPoll()V
    .locals 2

    #@0
    .prologue
    .line 4422
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->getOverallState()Lcom/android/internal/telephony/DctConstants$State;

    #@3
    move-result-object v0

    #@4
    sget-object v1, Lcom/android/internal/telephony/DctConstants$State;->CONNECTED:Lcom/android/internal/telephony/DctConstants$State;

    #@6
    if-ne v0, v1, :cond_0

    #@8
    .line 4423
    iget-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mNetStatPollEnabled:Z

    #@a
    if-nez v0, :cond_0

    #@c
    .line 4425
    const-string/jumbo v0, "startNetStatPoll"

    #@f
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@12
    .line 4427
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->resetPollStats()V

    #@15
    .line 4428
    const/4 v0, 0x1

    #@16
    iput-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mNetStatPollEnabled:Z

    #@18
    .line 4429
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPollNetStat:Ljava/lang/Runnable;

    #@1a
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    #@1d
    .line 4431
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    #@1f
    if-eqz v0, :cond_1

    #@21
    .line 4432
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    #@23
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->notifyDataActivity()V

    #@26
    .line 4421
    :cond_1
    return-void
.end method

.method private startProvisioningApnAlarm()V
    .locals 10

    #@0
    .prologue
    .line 4806
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mResolver:Landroid/content/ContentResolver;

    #@2
    .line 4807
    const-string/jumbo v5, "provisioning_apn_alarm_delay_in_ms"

    #@5
    .line 4808
    const v6, 0xdbba0

    #@8
    .line 4806
    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    #@b
    move-result v0

    #@c
    .line 4809
    .local v0, "delayInMs":I
    sget-boolean v4, Landroid/os/Build;->IS_DEBUGGABLE:Z

    #@e
    if-eqz v4, :cond_0

    #@10
    .line 4811
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@13
    move-result-object v1

    #@14
    .line 4812
    .local v1, "delayInMsStrg":Ljava/lang/String;
    const-string/jumbo v4, "persist.debug.prov_apn_alarm"

    #@17
    invoke-static {v4, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@1a
    move-result-object v1

    #@1b
    .line 4814
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@1e
    move-result v0

    #@1f
    .line 4819
    .end local v1    # "delayInMsStrg":Ljava/lang/String;
    :cond_0
    :goto_0
    iget v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mProvisioningApnAlarmTag:I

    #@21
    add-int/lit8 v4, v4, 0x1

    #@23
    iput v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mProvisioningApnAlarmTag:I

    #@25
    .line 4821
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
    iget v5, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mProvisioningApnAlarmTag:I

    #@33
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@36
    move-result-object v4

    #@37
    .line 4822
    const-string/jumbo v5, " delay="

    #@3a
    .line 4821
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v4

    #@3e
    .line 4822
    div-int/lit16 v5, v0, 0x3e8

    #@40
    .line 4821
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@43
    move-result-object v4

    #@44
    .line 4822
    const-string/jumbo v5, "s"

    #@47
    .line 4821
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v4

    #@4b
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4e
    move-result-object v4

    #@4f
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@52
    .line 4824
    new-instance v3, Landroid/content/Intent;

    #@54
    const-string/jumbo v4, "com.android.internal.telephony.provisioning_apn_alarm"

    #@57
    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@5a
    .line 4825
    .local v3, "intent":Landroid/content/Intent;
    const-string/jumbo v4, "provisioning.apn.alarm.tag"

    #@5d
    iget v5, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mProvisioningApnAlarmTag:I

    #@5f
    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@62
    .line 4826
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    #@64
    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    #@67
    move-result-object v4

    #@68
    const/4 v5, 0x0

    #@69
    .line 4827
    const/high16 v6, 0x8000000

    #@6b
    .line 4826
    invoke-static {v4, v5, v3, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    #@6e
    move-result-object v4

    #@6f
    iput-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mProvisioningApnAlarmIntent:Landroid/app/PendingIntent;

    #@71
    .line 4828
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAlarmManager:Landroid/app/AlarmManager;

    #@73
    .line 4829
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@76
    move-result-wide v6

    #@77
    int-to-long v8, v0

    #@78
    add-long/2addr v6, v8

    #@79
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mProvisioningApnAlarmIntent:Landroid/app/PendingIntent;

    #@7b
    .line 4828
    const/4 v8, 0x2

    #@7c
    invoke-virtual {v4, v8, v6, v7, v5}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    #@7f
    .line 4805
    return-void

    #@80
    .line 4815
    .end local v3    # "intent":Landroid/content/Intent;
    .restart local v1    # "delayInMsStrg":Ljava/lang/String;
    :catch_0
    move-exception v2

    #@81
    .line 4816
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
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/dataconnection/DcTracker;->loge(Ljava/lang/String;)V

    #@98
    goto :goto_0
.end method

.method private stopDataStallAlarm()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 4772
    iget v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDataStallAlarmTag:I

    #@3
    add-int/lit8 v0, v0, 0x1

    #@5
    iput v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDataStallAlarmTag:I

    #@7
    .line 4773
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDataStallAlarmIntent:Landroid/app/PendingIntent;

    #@9
    if-eqz v0, :cond_0

    #@b
    .line 4774
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAlarmManager:Landroid/app/AlarmManager;

    #@d
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDataStallAlarmIntent:Landroid/app/PendingIntent;

    #@f
    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    #@12
    .line 4775
    iput-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDataStallAlarmIntent:Landroid/app/PendingIntent;

    #@14
    .line 4767
    :cond_0
    return-void
.end method

.method private stopNetStatPoll()V
    .locals 1

    #@0
    .prologue
    .line 4437
    const/4 v0, 0x0

    #@1
    iput-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mNetStatPollEnabled:Z

    #@3
    .line 4438
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPollNetStat:Ljava/lang/Runnable;

    #@5
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->removeCallbacks(Ljava/lang/Runnable;)V

    #@8
    .line 4440
    const-string/jumbo v0, "stopNetStatPoll"

    #@b
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@e
    .line 4444
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    #@10
    if-eqz v0, :cond_0

    #@12
    .line 4445
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    #@14
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->notifyDataActivity()V

    #@17
    .line 4436
    :cond_0
    return-void
.end method

.method private stopProvisioningApnAlarm()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 4834
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
    iget v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mProvisioningApnAlarmTag:I

    #@f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@12
    move-result-object v0

    #@13
    .line 4835
    const-string/jumbo v1, " mProvsioningApnAlarmIntent="

    #@16
    .line 4834
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v0

    #@1a
    .line 4835
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mProvisioningApnAlarmIntent:Landroid/app/PendingIntent;

    #@1c
    .line 4834
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v0

    #@20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@23
    move-result-object v0

    #@24
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@27
    .line 4837
    iget v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mProvisioningApnAlarmTag:I

    #@29
    add-int/lit8 v0, v0, 0x1

    #@2b
    iput v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mProvisioningApnAlarmTag:I

    #@2d
    .line 4838
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mProvisioningApnAlarmIntent:Landroid/app/PendingIntent;

    #@2f
    if-eqz v0, :cond_0

    #@31
    .line 4839
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAlarmManager:Landroid/app/AlarmManager;

    #@33
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mProvisioningApnAlarmIntent:Landroid/app/PendingIntent;

    #@35
    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    #@38
    .line 4840
    iput-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mProvisioningApnAlarmIntent:Landroid/app/PendingIntent;

    #@3a
    .line 4832
    :cond_0
    return-void
.end method

.method private teardownForDun()Z
    .locals 3

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 1879
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    #@3
    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    #@6
    move-result-object v2

    #@7
    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    #@a
    move-result v0

    #@b
    .line 1880
    .local v0, "rilRat":I
    invoke-static {v0}, Landroid/telephony/ServiceState;->isCdma(I)Z

    #@e
    move-result v2

    #@f
    if-eqz v2, :cond_0

    #@11
    return v1

    #@12
    .line 1882
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->fetchDunApn()Lcom/android/internal/telephony/dataconnection/ApnSetting;

    #@15
    move-result-object v2

    #@16
    if-eqz v2, :cond_1

    #@18
    :goto_0
    return v1

    #@19
    :cond_1
    const/4 v1, 0x0

    #@1a
    goto :goto_0
.end method

.method private teardownRestrictedMeteredConnections()V
    .locals 9

    #@0
    .prologue
    const/4 v8, 0x1

    #@1
    .line 909
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDataEnabledSettings:Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;

    #@3
    invoke-virtual {v4, v8}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->isDataEnabled(Z)Z

    #@6
    move-result v4

    #@7
    if-eqz v4, :cond_2

    #@9
    .line 910
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    #@b
    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    #@e
    move-result-object v4

    #@f
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@12
    move-result-object v1

    #@13
    .local v1, "apnContext$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@16
    move-result v4

    #@17
    if-eqz v4, :cond_2

    #@19
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1c
    move-result-object v0

    #@1d
    check-cast v0, Lcom/android/internal/telephony/dataconnection/ApnContext;

    #@1f
    .line 911
    .local v0, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->isConnectedOrConnecting()Z

    #@22
    move-result v4

    #@23
    if-eqz v4, :cond_0

    #@25
    .line 912
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnSetting()Lcom/android/internal/telephony/dataconnection/ApnSetting;

    #@28
    move-result-object v4

    #@29
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    #@2b
    invoke-virtual {v5}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    #@2e
    move-result-object v5

    #@2f
    .line 913
    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    #@31
    invoke-virtual {v6}, Lcom/android/internal/telephony/Phone;->getSubId()I

    #@34
    move-result v6

    #@35
    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    #@37
    invoke-virtual {v7}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    #@3a
    move-result-object v7

    #@3b
    invoke-virtual {v7}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    #@3e
    move-result v7

    #@3f
    .line 912
    invoke-virtual {v4, v5, v6, v7}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->isMetered(Landroid/content/Context;IZ)Z

    #@42
    move-result v4

    #@43
    .line 911
    if-eqz v4, :cond_0

    #@45
    .line 915
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getDcAc()Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;

    #@48
    move-result-object v2

    #@49
    .line 916
    .local v2, "dataConnectionAc":Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;
    if-eqz v2, :cond_1

    #@4b
    .line 918
    invoke-virtual {v2}, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->getNetworkCapabilitiesSync()Landroid/net/NetworkCapabilities;

    #@4e
    move-result-object v3

    #@4f
    .line 919
    .local v3, "nc":Landroid/net/NetworkCapabilities;
    if-eqz v3, :cond_1

    #@51
    const/16 v4, 0xd

    #@53
    invoke-virtual {v3, v4}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    #@56
    move-result v4

    #@57
    if-eqz v4, :cond_1

    #@59
    .line 921
    new-instance v4, Ljava/lang/StringBuilder;

    #@5b
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@5e
    const-string/jumbo v5, "not tearing down unrestricted metered net:"

    #@61
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@64
    move-result-object v4

    #@65
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@68
    move-result-object v4

    #@69
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6c
    move-result-object v4

    #@6d
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@70
    goto :goto_0

    #@71
    .line 925
    .end local v3    # "nc":Landroid/net/NetworkCapabilities;
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    #@73
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@76
    const-string/jumbo v5, "tearing down restricted metered net: "

    #@79
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7c
    move-result-object v4

    #@7d
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@80
    move-result-object v4

    #@81
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@84
    move-result-object v4

    #@85
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@88
    .line 926
    const-string/jumbo v4, "dataEnabled"

    #@8b
    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setReason(Ljava/lang/String;)V

    #@8e
    .line 927
    invoke-direct {p0, v8, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->cleanUpConnection(ZLcom/android/internal/telephony/dataconnection/ApnContext;)V

    #@91
    goto :goto_0

    #@92
    .line 908
    .end local v0    # "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    .end local v1    # "apnContext$iterator":Ljava/util/Iterator;
    .end local v2    # "dataConnectionAc":Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;
    :cond_2
    return-void
.end method

.method private trySetupData(Lcom/android/internal/telephony/dataconnection/ApnContext;)Z
    .locals 1
    .param p1, "apnContext"    # Lcom/android/internal/telephony/dataconnection/ApnContext;

    #@0
    .prologue
    .line 1501
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->trySetupData(Lcom/android/internal/telephony/dataconnection/ApnContext;Ljava/util/ArrayList;)Z

    #@4
    move-result v0

    #@5
    return v0
.end method

.method private trySetupData(Lcom/android/internal/telephony/dataconnection/ApnContext;Ljava/util/ArrayList;)Z
    .locals 13
    .param p1, "apnContext"    # Lcom/android/internal/telephony/dataconnection/ApnContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/dataconnection/ApnContext;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/dataconnection/ApnSetting;",
            ">;)Z"
        }
    .end annotation

    #@0
    .prologue
    .line 1506
    .local p2, "waitingApns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/dataconnection/ApnSetting;>;"
    new-instance v9, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v10, "trySetupData for type:"

    #@8
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v9

    #@c
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    #@f
    move-result-object v10

    #@10
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v9

    #@14
    .line 1507
    const-string/jumbo v10, " due to "

    #@17
    .line 1506
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v9

    #@1b
    .line 1507
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getReason()Ljava/lang/String;

    #@1e
    move-result-object v10

    #@1f
    .line 1506
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v9

    #@23
    .line 1507
    const-string/jumbo v10, ", mIsPsRestricted="

    #@26
    .line 1506
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v9

    #@2a
    .line 1507
    iget-boolean v10, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mIsPsRestricted:Z

    #@2c
    .line 1506
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v9

    #@30
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@33
    move-result-object v9

    #@34
    invoke-direct {p0, v9}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@37
    .line 1509
    new-instance v9, Ljava/lang/StringBuilder;

    #@39
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@3c
    const-string/jumbo v10, "trySetupData due to "

    #@3f
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v9

    #@43
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getReason()Ljava/lang/String;

    #@46
    move-result-object v10

    #@47
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v9

    #@4b
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4e
    move-result-object v9

    #@4f
    invoke-virtual {p1, v9}, Lcom/android/internal/telephony/dataconnection/ApnContext;->requestLog(Ljava/lang/String;)V

    #@52
    .line 1511
    iget-object v9, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    #@54
    invoke-virtual {v9}, Lcom/android/internal/telephony/Phone;->getSimulatedRadioControl()Lcom/android/internal/telephony/test/SimulatedRadioControl;

    #@57
    move-result-object v9

    #@58
    if-eqz v9, :cond_0

    #@5a
    .line 1514
    sget-object v9, Lcom/android/internal/telephony/DctConstants$State;->CONNECTED:Lcom/android/internal/telephony/DctConstants$State;

    #@5c
    invoke-virtual {p1, v9}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setState(Lcom/android/internal/telephony/DctConstants$State;)V

    #@5f
    .line 1515
    iget-object v9, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    #@61
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getReason()Ljava/lang/String;

    #@64
    move-result-object v10

    #@65
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    #@68
    move-result-object v11

    #@69
    invoke-virtual {v9, v10, v11}, Lcom/android/internal/telephony/Phone;->notifyDataConnection(Ljava/lang/String;Ljava/lang/String;)V

    #@6c
    .line 1517
    const-string/jumbo v9, "trySetupData: X We\'re on the simulator; assuming connected retValue=true"

    #@6f
    invoke-direct {p0, v9}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@72
    .line 1518
    const/4 v9, 0x1

    #@73
    return v9

    #@74
    .line 1523
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    #@77
    move-result-object v9

    #@78
    const-string/jumbo v10, "emergency"

    #@7b
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@7e
    move-result v3

    #@7f
    .line 1524
    .local v3, "isEmergencyApn":Z
    iget-object v9, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    #@81
    invoke-virtual {v9}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    #@84
    move-result-object v6

    #@85
    .line 1533
    .local v6, "sst":Lcom/android/internal/telephony/ServiceStateTracker;
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    #@88
    move-result-object v9

    #@89
    iget-object v10, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    #@8b
    invoke-virtual {v10}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    #@8e
    move-result-object v10

    #@8f
    .line 1534
    iget-object v11, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    #@91
    invoke-virtual {v11}, Lcom/android/internal/telephony/Phone;->getSubId()I

    #@94
    move-result v11

    #@95
    iget-object v12, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    #@97
    invoke-virtual {v12}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    #@9a
    move-result-object v12

    #@9b
    invoke-virtual {v12}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    #@9e
    move-result v12

    #@9f
    .line 1533
    invoke-static {v9, v10, v11, v12}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->isMeteredApnType(Ljava/lang/String;Landroid/content/Context;IZ)Z

    #@a2
    move-result v9

    #@a3
    if-eqz v9, :cond_8

    #@a5
    .line 1535
    const/4 v9, 0x1

    #@a6
    invoke-virtual {p1, v9}, Lcom/android/internal/telephony/dataconnection/ApnContext;->hasNoRestrictedRequests(Z)Z

    #@a9
    move-result v0

    #@aa
    .line 1537
    :goto_0
    new-instance v1, Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReason;

    #@ac
    invoke-direct {v1}, Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReason;-><init>()V

    #@af
    .line 1541
    .local v1, "failureReason":Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReason;
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->isDataAllowed(Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReason;)Z

    #@b2
    move-result v9

    #@b3
    if-nez v9, :cond_9

    #@b5
    .line 1542
    sget-object v9, Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReasonType;->ROAMING_DISABLED:Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReasonType;

    #@b7
    invoke-virtual {v1, v9}, Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReason;->isFailForSingleReason(Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReasonType;)Z

    #@ba
    move-result v9

    #@bb
    if-eqz v9, :cond_b

    #@bd
    .line 1543
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    #@c0
    move-result-object v9

    #@c1
    iget-object v10, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    #@c3
    invoke-virtual {v10}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    #@c6
    move-result-object v10

    #@c7
    .line 1544
    iget-object v11, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    #@c9
    invoke-virtual {v11}, Lcom/android/internal/telephony/Phone;->getSubId()I

    #@cc
    move-result v11

    #@cd
    iget-object v12, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    #@cf
    invoke-virtual {v12}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    #@d2
    move-result-object v12

    #@d3
    invoke-virtual {v12}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    #@d6
    move-result v12

    #@d7
    .line 1543
    invoke-static {v9, v10, v11, v12}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->isMeteredApnType(Ljava/lang/String;Landroid/content/Context;IZ)Z

    #@da
    move-result v9

    #@db
    if-eqz v9, :cond_a

    #@dd
    const/4 v2, 0x0

    #@de
    .line 1546
    .local v2, "isDataAllowed":Z
    :goto_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->isConnectable()Z

    #@e1
    move-result v9

    #@e2
    if-eqz v9, :cond_1

    #@e4
    if-nez v3, :cond_c

    #@e6
    .line 1547
    if-eqz v2, :cond_1

    #@e8
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->isDataAllowedForApn(Lcom/android/internal/telephony/dataconnection/ApnContext;)Z

    #@eb
    move-result v9

    #@ec
    if-eqz v9, :cond_1

    #@ee
    .line 1548
    iget-object v9, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDataEnabledSettings:Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;

    #@f0
    invoke-virtual {v9, v0}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->isDataEnabled(Z)Z

    #@f3
    move-result v9

    #@f4
    .line 1547
    if-eqz v9, :cond_1

    #@f6
    .line 1548
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->isEmergency()Z

    #@f9
    move-result v9

    #@fa
    if-eqz v9, :cond_c

    #@fc
    .line 1583
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    #@ff
    move-result-object v9

    #@100
    const-string/jumbo v10, "default"

    #@103
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@106
    move-result v9

    #@107
    if-nez v9, :cond_2

    #@109
    .line 1584
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->isConnectable()Z

    #@10c
    move-result v9

    #@10d
    .line 1583
    if-eqz v9, :cond_2

    #@10f
    .line 1585
    iget-object v9, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    #@111
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getReason()Ljava/lang/String;

    #@114
    move-result-object v10

    #@115
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    #@118
    move-result-object v11

    #@119
    invoke-virtual {v9, v10, v11}, Lcom/android/internal/telephony/Phone;->notifyDataConnectionFailed(Ljava/lang/String;Ljava/lang/String;)V

    #@11c
    .line 1587
    :cond_2
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getReason()Ljava/lang/String;

    #@11f
    move-result-object v9

    #@120
    invoke-direct {p0, v9}, Lcom/android/internal/telephony/dataconnection/DcTracker;->notifyOffApnsOfAvailability(Ljava/lang/String;)V

    #@123
    .line 1589
    new-instance v8, Ljava/lang/StringBuilder;

    #@125
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@128
    .line 1591
    .local v8, "str":Ljava/lang/StringBuilder;
    const-string/jumbo v9, "trySetupData failed. apnContext = [type="

    #@12b
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12e
    move-result-object v9

    #@12f
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    #@132
    move-result-object v10

    #@133
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@136
    move-result-object v9

    #@137
    .line 1592
    const-string/jumbo v10, ", mState="

    #@13a
    .line 1591
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13d
    move-result-object v9

    #@13e
    .line 1592
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getState()Lcom/android/internal/telephony/DctConstants$State;

    #@141
    move-result-object v10

    #@142
    .line 1591
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@145
    move-result-object v9

    #@146
    .line 1592
    const-string/jumbo v10, ", mDataEnabled="

    #@149
    .line 1591
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14c
    move-result-object v9

    #@14d
    .line 1593
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->isEnabled()Z

    #@150
    move-result v10

    #@151
    .line 1591
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@154
    move-result-object v9

    #@155
    .line 1593
    const-string/jumbo v10, ", mDependencyMet="

    #@158
    .line 1591
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15b
    move-result-object v9

    #@15c
    .line 1594
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getDependencyMet()Z

    #@15f
    move-result v10

    #@160
    .line 1591
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@163
    move-result-object v9

    #@164
    .line 1594
    const-string/jumbo v10, "] "

    #@167
    .line 1591
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16a
    .line 1596
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->isConnectable()Z

    #@16d
    move-result v9

    #@16e
    if-nez v9, :cond_3

    #@170
    .line 1597
    const-string/jumbo v9, "isConnectable = false. "

    #@173
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@176
    .line 1599
    :cond_3
    if-nez v2, :cond_4

    #@178
    .line 1600
    const-string/jumbo v9, "data not allowed: "

    #@17b
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17e
    move-result-object v9

    #@17f
    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReason;->getDataAllowFailReason()Ljava/lang/String;

    #@182
    move-result-object v10

    #@183
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@186
    move-result-object v9

    #@187
    const-string/jumbo v10, ". "

    #@18a
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18d
    .line 1602
    :cond_4
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->isDataAllowedForApn(Lcom/android/internal/telephony/dataconnection/ApnContext;)Z

    #@190
    move-result v9

    #@191
    if-nez v9, :cond_5

    #@193
    .line 1603
    const-string/jumbo v9, "isDataAllowedForApn = false. RAT = "

    #@196
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@199
    move-result-object v9

    #@19a
    .line 1604
    iget-object v10, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    #@19c
    invoke-virtual {v10}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    #@19f
    move-result-object v10

    #@1a0
    invoke-virtual {v10}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    #@1a3
    move-result v10

    #@1a4
    .line 1603
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1a7
    .line 1606
    :cond_5
    iget-object v9, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDataEnabledSettings:Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;

    #@1a9
    invoke-virtual {v9, v0}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->isDataEnabled(Z)Z

    #@1ac
    move-result v9

    #@1ad
    if-nez v9, :cond_6

    #@1af
    .line 1607
    const-string/jumbo v9, "isDataEnabled("

    #@1b2
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b5
    move-result-object v9

    #@1b6
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@1b9
    move-result-object v9

    #@1ba
    const-string/jumbo v10, ") = false. "

    #@1bd
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c0
    move-result-object v9

    #@1c1
    .line 1608
    const-string/jumbo v10, "isInternalDataEnabled = "

    #@1c4
    .line 1607
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c7
    move-result-object v9

    #@1c8
    .line 1608
    iget-object v10, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDataEnabledSettings:Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;

    #@1ca
    invoke-virtual {v10}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->isInternalDataEnabled()Z

    #@1cd
    move-result v10

    #@1ce
    .line 1607
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@1d1
    move-result-object v9

    #@1d2
    .line 1609
    const-string/jumbo v10, ", userDataEnabled = "

    #@1d5
    .line 1607
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d8
    move-result-object v9

    #@1d9
    .line 1609
    iget-object v10, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDataEnabledSettings:Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;

    #@1db
    invoke-virtual {v10}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->isUserDataEnabled()Z

    #@1de
    move-result v10

    #@1df
    .line 1607
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@1e2
    move-result-object v9

    #@1e3
    .line 1610
    const-string/jumbo v10, ", isPolicyDataEnabled = "

    #@1e6
    .line 1607
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e9
    move-result-object v9

    #@1ea
    .line 1610
    iget-object v10, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDataEnabledSettings:Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;

    #@1ec
    invoke-virtual {v10}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->isPolicyDataEnabled()Z

    #@1ef
    move-result v10

    #@1f0
    .line 1607
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@1f3
    move-result-object v9

    #@1f4
    .line 1611
    const-string/jumbo v10, ", isCarrierDataEnabled = "

    #@1f7
    .line 1607
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1fa
    move-result-object v9

    #@1fb
    .line 1612
    iget-object v10, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDataEnabledSettings:Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;

    #@1fd
    invoke-virtual {v10}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->isCarrierDataEnabled()Z

    #@200
    move-result v10

    #@201
    .line 1607
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@204
    .line 1614
    :cond_6
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->isEmergency()Z

    #@207
    move-result v9

    #@208
    if-eqz v9, :cond_7

    #@20a
    .line 1615
    const-string/jumbo v9, "emergency = true"

    #@20d
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@210
    .line 1618
    :cond_7
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@213
    move-result-object v9

    #@214
    invoke-direct {p0, v9}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@217
    .line 1619
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21a
    move-result-object v9

    #@21b
    invoke-virtual {p1, v9}, Lcom/android/internal/telephony/dataconnection/ApnContext;->requestLog(Ljava/lang/String;)V

    #@21e
    .line 1621
    const/4 v9, 0x0

    #@21f
    return v9

    #@220
    .line 1533
    .end local v1    # "failureReason":Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReason;
    .end local v2    # "isDataAllowed":Z
    .end local v8    # "str":Ljava/lang/StringBuilder;
    :cond_8
    const/4 v0, 0x0

    #@221
    .local v0, "checkUserDataEnabled":Z
    goto/16 :goto_0

    #@223
    .line 1541
    .end local v0    # "checkUserDataEnabled":Z
    .restart local v1    # "failureReason":Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReason;
    :cond_9
    const/4 v2, 0x1

    #@224
    .restart local v2    # "isDataAllowed":Z
    goto/16 :goto_1

    #@226
    .line 1543
    .end local v2    # "isDataAllowed":Z
    :cond_a
    const/4 v2, 0x1

    #@227
    .restart local v2    # "isDataAllowed":Z
    goto/16 :goto_1

    #@229
    .line 1542
    .end local v2    # "isDataAllowed":Z
    :cond_b
    const/4 v2, 0x0

    #@22a
    .restart local v2    # "isDataAllowed":Z
    goto/16 :goto_1

    #@22c
    .line 1549
    :cond_c
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getState()Lcom/android/internal/telephony/DctConstants$State;

    #@22f
    move-result-object v9

    #@230
    sget-object v10, Lcom/android/internal/telephony/DctConstants$State;->FAILED:Lcom/android/internal/telephony/DctConstants$State;

    #@232
    if-ne v9, v10, :cond_d

    #@234
    .line 1550
    const-string/jumbo v7, "trySetupData: make a FAILED ApnContext IDLE so its reusable"

    #@237
    .line 1551
    .local v7, "str":Ljava/lang/String;
    invoke-direct {p0, v7}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@23a
    .line 1552
    invoke-virtual {p1, v7}, Lcom/android/internal/telephony/dataconnection/ApnContext;->requestLog(Ljava/lang/String;)V

    #@23d
    .line 1553
    sget-object v9, Lcom/android/internal/telephony/DctConstants$State;->IDLE:Lcom/android/internal/telephony/DctConstants$State;

    #@23f
    invoke-virtual {p1, v9}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setState(Lcom/android/internal/telephony/DctConstants$State;)V

    #@242
    .line 1555
    .end local v7    # "str":Ljava/lang/String;
    :cond_d
    iget-object v9, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    #@244
    invoke-virtual {v9}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    #@247
    move-result-object v9

    #@248
    invoke-virtual {v9}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    #@24b
    move-result v4

    #@24c
    .line 1556
    .local v4, "radioTech":I
    invoke-virtual {v6}, Lcom/android/internal/telephony/ServiceStateTracker;->isConcurrentVoiceAndDataAllowed()Z

    #@24f
    move-result v9

    #@250
    invoke-virtual {p1, v9}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setConcurrentVoiceAndDataAllowed(Z)V

    #@253
    .line 1557
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getState()Lcom/android/internal/telephony/DctConstants$State;

    #@256
    move-result-object v9

    #@257
    sget-object v10, Lcom/android/internal/telephony/DctConstants$State;->IDLE:Lcom/android/internal/telephony/DctConstants$State;

    #@259
    if-ne v9, v10, :cond_10

    #@25b
    .line 1558
    if-nez p2, :cond_e

    #@25d
    .line 1559
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    #@260
    move-result-object v9

    #@261
    invoke-direct {p0, v9, v4}, Lcom/android/internal/telephony/dataconnection/DcTracker;->buildWaitingApns(Ljava/lang/String;I)Ljava/util/ArrayList;

    #@264
    move-result-object p2

    #@265
    .line 1561
    :cond_e
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    #@268
    move-result v9

    #@269
    if-eqz v9, :cond_f

    #@26b
    .line 1562
    sget-object v9, Lcom/android/internal/telephony/dataconnection/DcFailCause;->MISSING_UNKNOWN_APN:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    #@26d
    invoke-direct {p0, v9, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->notifyNoData(Lcom/android/internal/telephony/dataconnection/DcFailCause;Lcom/android/internal/telephony/dataconnection/ApnContext;)V

    #@270
    .line 1563
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getReason()Ljava/lang/String;

    #@273
    move-result-object v9

    #@274
    invoke-direct {p0, v9}, Lcom/android/internal/telephony/dataconnection/DcTracker;->notifyOffApnsOfAvailability(Ljava/lang/String;)V

    #@277
    .line 1564
    const-string/jumbo v7, "trySetupData: X No APN found retValue=false"

    #@27a
    .line 1565
    .restart local v7    # "str":Ljava/lang/String;
    invoke-direct {p0, v7}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@27d
    .line 1566
    invoke-virtual {p1, v7}, Lcom/android/internal/telephony/dataconnection/ApnContext;->requestLog(Ljava/lang/String;)V

    #@280
    .line 1567
    const/4 v9, 0x0

    #@281
    return v9

    #@282
    .line 1569
    .end local v7    # "str":Ljava/lang/String;
    :cond_f
    invoke-virtual {p1, p2}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setWaitingApns(Ljava/util/ArrayList;)V

    #@285
    .line 1571
    new-instance v9, Ljava/lang/StringBuilder;

    #@287
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@28a
    const-string/jumbo v10, "trySetupData: Create from mAllApnSettings : "

    #@28d
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@290
    move-result-object v9

    #@291
    .line 1572
    iget-object v10, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAllApnSettings:Ljava/util/ArrayList;

    #@293
    invoke-direct {p0, v10}, Lcom/android/internal/telephony/dataconnection/DcTracker;->apnListToString(Ljava/util/ArrayList;)Ljava/lang/String;

    #@296
    move-result-object v10

    #@297
    .line 1571
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29a
    move-result-object v9

    #@29b
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@29e
    move-result-object v9

    #@29f
    invoke-direct {p0, v9}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@2a2
    .line 1577
    :cond_10
    invoke-direct {p0, p1, v4}, Lcom/android/internal/telephony/dataconnection/DcTracker;->setupData(Lcom/android/internal/telephony/dataconnection/ApnContext;I)Z

    #@2a5
    move-result v5

    #@2a6
    .line 1578
    .local v5, "retValue":Z
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getReason()Ljava/lang/String;

    #@2a9
    move-result-object v9

    #@2aa
    invoke-direct {p0, v9}, Lcom/android/internal/telephony/dataconnection/DcTracker;->notifyOffApnsOfAvailability(Ljava/lang/String;)V

    #@2ad
    .line 1580
    new-instance v9, Ljava/lang/StringBuilder;

    #@2af
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@2b2
    const-string/jumbo v10, "trySetupData: X retValue="

    #@2b5
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b8
    move-result-object v9

    #@2b9
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@2bc
    move-result-object v9

    #@2bd
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2c0
    move-result-object v9

    #@2c1
    invoke-direct {p0, v9}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@2c4
    .line 1581
    return v5
.end method

.method private unregisterForAllEvents()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 824
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    #@3
    iget-object v1, v1, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@5
    invoke-interface {v1, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForAvailable(Landroid/os/Handler;)V

    #@8
    .line 825
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    #@a
    iget-object v1, v1, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@c
    invoke-interface {v1, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOffOrNotAvailable(Landroid/os/Handler;)V

    #@f
    .line 826
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    #@11
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    #@14
    move-result-object v0

    #@15
    check-cast v0, Lcom/android/internal/telephony/uicc/IccRecords;

    #@17
    .line 827
    .local v0, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v0, :cond_0

    #@19
    .line 828
    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/uicc/IccRecords;->unregisterForRecordsLoaded(Landroid/os/Handler;)V

    #@1c
    .line 829
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    #@1e
    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    #@21
    .line 831
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    #@23
    iget-object v1, v1, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@25
    invoke-interface {v1, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForDataNetworkStateChanged(Landroid/os/Handler;)V

    #@28
    .line 832
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    #@2a
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    #@2d
    move-result-object v1

    #@2e
    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/CallTracker;->unregisterForVoiceCallEnded(Landroid/os/Handler;)V

    #@31
    .line 833
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    #@33
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    #@36
    move-result-object v1

    #@37
    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/CallTracker;->unregisterForVoiceCallStarted(Landroid/os/Handler;)V

    #@3a
    .line 834
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->unregisterServiceStateTrackerEvents()V

    #@3d
    .line 836
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    #@3f
    iget-object v1, v1, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@41
    invoke-interface {v1, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForPcoData(Landroid/os/Handler;)V

    #@44
    .line 822
    return-void
.end method

.method private updateDataActivity()V
    .locals 14

    #@0
    .prologue
    const-wide/16 v12, 0x0

    #@2
    .line 4480
    new-instance v2, Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxSum;

    #@4
    iget-wide v8, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mTxPkts:J

    #@6
    iget-wide v10, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mRxPkts:J

    #@8
    invoke-direct {v2, v8, v9, v10, v11}, Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxSum;-><init>(JJ)V

    #@b
    .line 4481
    .local v2, "preTxRxSum":Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxSum;
    new-instance v0, Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxSum;

    #@d
    invoke-direct {v0}, Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxSum;-><init>()V

    #@10
    .line 4482
    .local v0, "curTxRxSum":Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxSum;
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxSum;->updateTxRxSum()V

    #@13
    .line 4483
    iget-wide v8, v0, Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxSum;->txPkts:J

    #@15
    iput-wide v8, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mTxPkts:J

    #@17
    .line 4484
    iget-wide v8, v0, Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxSum;->rxPkts:J

    #@19
    iput-wide v8, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mRxPkts:J

    #@1b
    .line 4490
    iget-boolean v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mNetStatPollEnabled:Z

    #@1d
    if-eqz v3, :cond_1

    #@1f
    iget-wide v8, v2, Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxSum;->txPkts:J

    #@21
    cmp-long v3, v8, v12

    #@23
    if-gtz v3, :cond_0

    #@25
    iget-wide v8, v2, Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxSum;->rxPkts:J

    #@27
    cmp-long v3, v8, v12

    #@29
    if-lez v3, :cond_1

    #@2b
    .line 4491
    :cond_0
    iget-wide v8, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mTxPkts:J

    #@2d
    iget-wide v10, v2, Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxSum;->txPkts:J

    #@2f
    sub-long v6, v8, v10

    #@31
    .line 4492
    .local v6, "sent":J
    iget-wide v8, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mRxPkts:J

    #@33
    iget-wide v10, v2, Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxSum;->rxPkts:J

    #@35
    sub-long v4, v8, v10

    #@37
    .line 4496
    .local v4, "received":J
    cmp-long v3, v6, v12

    #@39
    if-lez v3, :cond_2

    #@3b
    cmp-long v3, v4, v12

    #@3d
    if-lez v3, :cond_2

    #@3f
    .line 4497
    sget-object v1, Lcom/android/internal/telephony/DctConstants$Activity;->DATAINANDOUT:Lcom/android/internal/telephony/DctConstants$Activity;

    #@41
    .line 4507
    .local v1, "newActivity":Lcom/android/internal/telephony/DctConstants$Activity;
    :goto_0
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mActivity:Lcom/android/internal/telephony/DctConstants$Activity;

    #@43
    if-eq v3, v1, :cond_1

    #@45
    iget-boolean v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mIsScreenOn:Z

    #@47
    if-eqz v3, :cond_1

    #@49
    .line 4510
    iput-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mActivity:Lcom/android/internal/telephony/DctConstants$Activity;

    #@4b
    .line 4511
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    #@4d
    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->notifyDataActivity()V

    #@50
    .line 4475
    .end local v1    # "newActivity":Lcom/android/internal/telephony/DctConstants$Activity;
    .end local v4    # "received":J
    .end local v6    # "sent":J
    :cond_1
    return-void

    #@51
    .line 4498
    .restart local v4    # "received":J
    .restart local v6    # "sent":J
    :cond_2
    cmp-long v3, v6, v12

    #@53
    if-lez v3, :cond_3

    #@55
    cmp-long v3, v4, v12

    #@57
    if-nez v3, :cond_3

    #@59
    .line 4499
    sget-object v1, Lcom/android/internal/telephony/DctConstants$Activity;->DATAOUT:Lcom/android/internal/telephony/DctConstants$Activity;

    #@5b
    .restart local v1    # "newActivity":Lcom/android/internal/telephony/DctConstants$Activity;
    goto :goto_0

    #@5c
    .line 4500
    .end local v1    # "newActivity":Lcom/android/internal/telephony/DctConstants$Activity;
    :cond_3
    cmp-long v3, v6, v12

    #@5e
    if-nez v3, :cond_4

    #@60
    cmp-long v3, v4, v12

    #@62
    if-lez v3, :cond_4

    #@64
    .line 4501
    sget-object v1, Lcom/android/internal/telephony/DctConstants$Activity;->DATAIN:Lcom/android/internal/telephony/DctConstants$Activity;

    #@66
    .restart local v1    # "newActivity":Lcom/android/internal/telephony/DctConstants$Activity;
    goto :goto_0

    #@67
    .line 4503
    .end local v1    # "newActivity":Lcom/android/internal/telephony/DctConstants$Activity;
    :cond_4
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mActivity:Lcom/android/internal/telephony/DctConstants$Activity;

    #@69
    sget-object v8, Lcom/android/internal/telephony/DctConstants$Activity;->DORMANT:Lcom/android/internal/telephony/DctConstants$Activity;

    #@6b
    if-ne v3, v8, :cond_5

    #@6d
    .line 4504
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mActivity:Lcom/android/internal/telephony/DctConstants$Activity;

    #@6f
    .restart local v1    # "newActivity":Lcom/android/internal/telephony/DctConstants$Activity;
    goto :goto_0

    #@70
    .end local v1    # "newActivity":Lcom/android/internal/telephony/DctConstants$Activity;
    :cond_5
    sget-object v1, Lcom/android/internal/telephony/DctConstants$Activity;->NONE:Lcom/android/internal/telephony/DctConstants$Activity;

    #@72
    .restart local v1    # "newActivity":Lcom/android/internal/telephony/DctConstants$Activity;
    goto :goto_0
.end method

.method private updateDataStallInfo()V
    .locals 13

    #@0
    .prologue
    const/4 v12, 0x0

    #@1
    const-wide/16 v10, 0x0

    #@3
    .line 4663
    new-instance v0, Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxSum;

    #@5
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDataStallTxRxSum:Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxSum;

    #@7
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxSum;-><init>(Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxSum;)V

    #@a
    .line 4664
    .local v0, "preTxRxSum":Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxSum;
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDataStallTxRxSum:Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxSum;

    #@c
    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxSum;->updateTxRxSum()V

    #@f
    .line 4671
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDataStallTxRxSum:Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxSum;

    #@11
    iget-wide v6, v1, Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxSum;->txPkts:J

    #@13
    iget-wide v8, v0, Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxSum;->txPkts:J

    #@15
    sub-long v4, v6, v8

    #@17
    .line 4672
    .local v4, "sent":J
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDataStallTxRxSum:Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxSum;

    #@19
    iget-wide v6, v1, Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxSum;->rxPkts:J

    #@1b
    iget-wide v8, v0, Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxSum;->rxPkts:J

    #@1d
    sub-long v2, v6, v8

    #@1f
    .line 4680
    .local v2, "received":J
    cmp-long v1, v4, v10

    #@21
    if-lez v1, :cond_1

    #@23
    cmp-long v1, v2, v10

    #@25
    if-lez v1, :cond_1

    #@27
    .line 4682
    iput-wide v10, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mSentSinceLastRecv:J

    #@29
    .line 4683
    invoke-direct {p0, v12}, Lcom/android/internal/telephony/dataconnection/DcTracker;->putRecoveryAction(I)V

    #@2c
    .line 4660
    :cond_0
    :goto_0
    return-void

    #@2d
    .line 4684
    :cond_1
    cmp-long v1, v4, v10

    #@2f
    if-lez v1, :cond_3

    #@31
    cmp-long v1, v2, v10

    #@33
    if-nez v1, :cond_3

    #@35
    .line 4685
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    #@37
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    #@3a
    move-result-object v1

    #@3b
    sget-object v6, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    #@3d
    if-ne v1, v6, :cond_2

    #@3f
    .line 4686
    iget-wide v6, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mSentSinceLastRecv:J

    #@41
    add-long/2addr v6, v4

    #@42
    iput-wide v6, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mSentSinceLastRecv:J

    #@44
    .line 4691
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
    .line 4692
    const-string/jumbo v6, " mSentSinceLastRecv="

    #@57
    .line 4691
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v1

    #@5b
    .line 4692
    iget-wide v6, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mSentSinceLastRecv:J

    #@5d
    .line 4691
    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@60
    move-result-object v1

    #@61
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@64
    move-result-object v1

    #@65
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@68
    goto :goto_0

    #@69
    .line 4688
    :cond_2
    iput-wide v10, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mSentSinceLastRecv:J

    #@6b
    goto :goto_1

    #@6c
    .line 4694
    :cond_3
    cmp-long v1, v4, v10

    #@6e
    if-nez v1, :cond_0

    #@70
    cmp-long v1, v2, v10

    #@72
    if-lez v1, :cond_0

    #@74
    .line 4696
    iput-wide v10, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mSentSinceLastRecv:J

    #@76
    .line 4697
    invoke-direct {p0, v12}, Lcom/android/internal/telephony/dataconnection/DcTracker;->putRecoveryAction(I)V

    #@79
    goto :goto_0
.end method

.method private xorEquals(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "first"    # Ljava/lang/String;
    .param p2, "second"    # Ljava/lang/String;

    #@0
    .prologue
    .line 3425
    invoke-static {p1, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 3426
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@9
    move-result v0

    #@a
    .line 3425
    if-nez v0, :cond_0

    #@c
    .line 3427
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@f
    move-result v0

    #@10
    .line 3425
    :goto_0
    return v0

    #@11
    :cond_0
    const/4 v0, 0x1

    #@12
    goto :goto_0
.end method


# virtual methods
.method public carrierActionSetRadioEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    #@0
    .prologue
    .line 2399
    new-instance v1, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v2, "carrier Action: set radio enabled: "

    #@8
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v1

    #@c
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@f
    move-result-object v1

    #@10
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13
    move-result-object v1

    #@14
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@17
    .line 2401
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    #@19
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    #@1c
    move-result-object v0

    #@1d
    .line 2402
    .local v0, "sst":Lcom/android/internal/telephony/ServiceStateTracker;
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/ServiceStateTracker;->setRadioPowerFromCarrier(Z)V

    #@20
    .line 2397
    return-void
.end method

.method public cleanUpAllConnections(Ljava/lang/String;)V
    .locals 1
    .param p1, "cause"    # Ljava/lang/String;

    #@0
    .prologue
    .line 4083
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->cleanUpAllConnections(Ljava/lang/String;Landroid/os/Message;)V

    #@4
    .line 4082
    return-void
.end method

.method public cleanUpAllConnections(Ljava/lang/String;Landroid/os/Message;)V
    .locals 2
    .param p1, "cause"    # Ljava/lang/String;
    .param p2, "disconnectAllCompleteMsg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 4091
    const-string/jumbo v1, "cleanUpAllConnections"

    #@3
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@6
    .line 4092
    if-eqz p2, :cond_0

    #@8
    .line 4093
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDisconnectAllCompleteMsgList:Ljava/util/ArrayList;

    #@a
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@d
    .line 4096
    :cond_0
    const v1, 0x4201d

    #@10
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->obtainMessage(I)Landroid/os/Message;

    #@13
    move-result-object v0

    #@14
    .line 4097
    .local v0, "msg":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@16
    .line 4098
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->sendMessage(Landroid/os/Message;)Z

    #@19
    .line 4090
    return-void
.end method

.method public dispose()V
    .locals 6

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 786
    const-string/jumbo v2, "DCT.dispose"

    #@5
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@8
    .line 788
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mProvisionBroadcastReceiver:Landroid/content/BroadcastReceiver;

    #@a
    if-eqz v2, :cond_0

    #@c
    .line 789
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    #@e
    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    #@11
    move-result-object v2

    #@12
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mProvisionBroadcastReceiver:Landroid/content/BroadcastReceiver;

    #@14
    invoke-virtual {v2, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    #@17
    .line 790
    iput-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mProvisionBroadcastReceiver:Landroid/content/BroadcastReceiver;

    #@19
    .line 792
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mProvisioningSpinner:Landroid/app/ProgressDialog;

    #@1b
    if-eqz v2, :cond_1

    #@1d
    .line 793
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mProvisioningSpinner:Landroid/app/ProgressDialog;

    #@1f
    invoke-virtual {v2}, Landroid/app/ProgressDialog;->dismiss()V

    #@22
    .line 794
    iput-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mProvisioningSpinner:Landroid/app/ProgressDialog;

    #@24
    .line 797
    :cond_1
    invoke-direct {p0, v5, v4}, Lcom/android/internal/telephony/dataconnection/DcTracker;->cleanUpAllConnections(ZLjava/lang/String;)Z

    #@27
    .line 799
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDataConnectionAcHashMap:Ljava/util/HashMap;

    #@29
    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    #@2c
    move-result-object v2

    #@2d
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@30
    move-result-object v1

    #@31
    .local v1, "dcac$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@34
    move-result v2

    #@35
    if-eqz v2, :cond_2

    #@37
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@3a
    move-result-object v0

    #@3b
    check-cast v0, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;

    #@3d
    .line 800
    .local v0, "dcac":Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->disconnect()V

    #@40
    goto :goto_0

    #@41
    .line 802
    .end local v0    # "dcac":Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;
    :cond_2
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDataConnectionAcHashMap:Ljava/util/HashMap;

    #@43
    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    #@46
    .line 803
    iput-boolean v5, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mIsDisposed:Z

    #@48
    .line 804
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    #@4a
    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    #@4d
    move-result-object v2

    #@4e
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    #@50
    invoke-virtual {v2, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    #@53
    .line 805
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    #@55
    invoke-virtual {v2, p0}, Lcom/android/internal/telephony/uicc/UiccController;->unregisterForIccChanged(Landroid/os/Handler;)V

    #@58
    .line 806
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mSettingsObserver:Lcom/android/internal/telephony/dataconnection/DcTracker$SettingsObserver;

    #@5a
    invoke-virtual {v2}, Lcom/android/internal/telephony/dataconnection/DcTracker$SettingsObserver;->unobserve()V

    #@5d
    .line 808
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    #@5f
    .line 809
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mOnSubscriptionsChangedListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    #@61
    .line 808
    invoke-virtual {v2, v3}, Landroid/telephony/SubscriptionManager;->removeOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    #@64
    .line 810
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDcc:Lcom/android/internal/telephony/dataconnection/DcController;

    #@66
    invoke-virtual {v2}, Lcom/android/internal/telephony/dataconnection/DcController;->dispose()V

    #@69
    .line 811
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDcTesterFailBringUpAll:Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;

    #@6b
    invoke-virtual {v2}, Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;->dispose()V

    #@6e
    .line 813
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    #@70
    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    #@73
    move-result-object v2

    #@74
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@77
    move-result-object v2

    #@78
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mApnObserver:Lcom/android/internal/telephony/dataconnection/DcTracker$ApnChangeObserver;

    #@7a
    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    #@7d
    .line 814
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    #@7f
    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    #@82
    .line 815
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mApnContextsById:Landroid/util/SparseArray;

    #@84
    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    #@87
    .line 816
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPrioritySortedApnContexts:Ljava/util/PriorityQueue;

    #@89
    invoke-virtual {v2}, Ljava/util/PriorityQueue;->clear()V

    #@8c
    .line 817
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->unregisterForAllEvents()V

    #@8f
    .line 819
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->destroyDataConnections()V

    #@92
    .line 785
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 21
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 4182
    const-string/jumbo v17, "DcTracker:"

    #@3
    move-object/from16 v0, p2

    #@5
    move-object/from16 v1, v17

    #@7
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@a
    .line 4183
    const-string/jumbo v17, " RADIO_TESTS=false"

    #@d
    move-object/from16 v0, p2

    #@f
    move-object/from16 v1, v17

    #@11
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@14
    .line 4184
    new-instance v17, Ljava/lang/StringBuilder;

    #@16
    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    #@19
    const-string/jumbo v18, " isInternalDataEnabled="

    #@1c
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v17

    #@20
    move-object/from16 v0, p0

    #@22
    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDataEnabledSettings:Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;

    #@24
    move-object/from16 v18, v0

    #@26
    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->isInternalDataEnabled()Z

    #@29
    move-result v18

    #@2a
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v17

    #@2e
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@31
    move-result-object v17

    #@32
    move-object/from16 v0, p2

    #@34
    move-object/from16 v1, v17

    #@36
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@39
    .line 4185
    new-instance v17, Ljava/lang/StringBuilder;

    #@3b
    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    #@3e
    const-string/jumbo v18, " isUserDataEnabled="

    #@41
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v17

    #@45
    move-object/from16 v0, p0

    #@47
    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDataEnabledSettings:Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;

    #@49
    move-object/from16 v18, v0

    #@4b
    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->isUserDataEnabled()Z

    #@4e
    move-result v18

    #@4f
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@52
    move-result-object v17

    #@53
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@56
    move-result-object v17

    #@57
    move-object/from16 v0, p2

    #@59
    move-object/from16 v1, v17

    #@5b
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@5e
    .line 4186
    new-instance v17, Ljava/lang/StringBuilder;

    #@60
    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    #@63
    const-string/jumbo v18, " isPolicyDataEnabled="

    #@66
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@69
    move-result-object v17

    #@6a
    move-object/from16 v0, p0

    #@6c
    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDataEnabledSettings:Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;

    #@6e
    move-object/from16 v18, v0

    #@70
    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->isPolicyDataEnabled()Z

    #@73
    move-result v18

    #@74
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@77
    move-result-object v17

    #@78
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7b
    move-result-object v17

    #@7c
    move-object/from16 v0, p2

    #@7e
    move-object/from16 v1, v17

    #@80
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@83
    .line 4187
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->flush()V

    #@86
    .line 4188
    new-instance v17, Ljava/lang/StringBuilder;

    #@88
    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    #@8b
    const-string/jumbo v18, " mRequestedApnType="

    #@8e
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@91
    move-result-object v17

    #@92
    move-object/from16 v0, p0

    #@94
    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mRequestedApnType:Ljava/lang/String;

    #@96
    move-object/from16 v18, v0

    #@98
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9b
    move-result-object v17

    #@9c
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9f
    move-result-object v17

    #@a0
    move-object/from16 v0, p2

    #@a2
    move-object/from16 v1, v17

    #@a4
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@a7
    .line 4189
    new-instance v17, Ljava/lang/StringBuilder;

    #@a9
    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    #@ac
    const-string/jumbo v18, " mPhone="

    #@af
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b2
    move-result-object v17

    #@b3
    move-object/from16 v0, p0

    #@b5
    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    #@b7
    move-object/from16 v18, v0

    #@b9
    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/Phone;->getPhoneName()Ljava/lang/String;

    #@bc
    move-result-object v18

    #@bd
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c0
    move-result-object v17

    #@c1
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c4
    move-result-object v17

    #@c5
    move-object/from16 v0, p2

    #@c7
    move-object/from16 v1, v17

    #@c9
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@cc
    .line 4190
    new-instance v17, Ljava/lang/StringBuilder;

    #@ce
    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    #@d1
    const-string/jumbo v18, " mActivity="

    #@d4
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d7
    move-result-object v17

    #@d8
    move-object/from16 v0, p0

    #@da
    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mActivity:Lcom/android/internal/telephony/DctConstants$Activity;

    #@dc
    move-object/from16 v18, v0

    #@de
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@e1
    move-result-object v17

    #@e2
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@e5
    move-result-object v17

    #@e6
    move-object/from16 v0, p2

    #@e8
    move-object/from16 v1, v17

    #@ea
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@ed
    .line 4191
    new-instance v17, Ljava/lang/StringBuilder;

    #@ef
    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    #@f2
    const-string/jumbo v18, " mState="

    #@f5
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f8
    move-result-object v17

    #@f9
    move-object/from16 v0, p0

    #@fb
    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mState:Lcom/android/internal/telephony/DctConstants$State;

    #@fd
    move-object/from16 v18, v0

    #@ff
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@102
    move-result-object v17

    #@103
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@106
    move-result-object v17

    #@107
    move-object/from16 v0, p2

    #@109
    move-object/from16 v1, v17

    #@10b
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@10e
    .line 4192
    new-instance v17, Ljava/lang/StringBuilder;

    #@110
    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    #@113
    const-string/jumbo v18, " mTxPkts="

    #@116
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@119
    move-result-object v17

    #@11a
    move-object/from16 v0, p0

    #@11c
    iget-wide v0, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mTxPkts:J

    #@11e
    move-wide/from16 v18, v0

    #@120
    invoke-virtual/range {v17 .. v19}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@123
    move-result-object v17

    #@124
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@127
    move-result-object v17

    #@128
    move-object/from16 v0, p2

    #@12a
    move-object/from16 v1, v17

    #@12c
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@12f
    .line 4193
    new-instance v17, Ljava/lang/StringBuilder;

    #@131
    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    #@134
    const-string/jumbo v18, " mRxPkts="

    #@137
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13a
    move-result-object v17

    #@13b
    move-object/from16 v0, p0

    #@13d
    iget-wide v0, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mRxPkts:J

    #@13f
    move-wide/from16 v18, v0

    #@141
    invoke-virtual/range {v17 .. v19}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@144
    move-result-object v17

    #@145
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@148
    move-result-object v17

    #@149
    move-object/from16 v0, p2

    #@14b
    move-object/from16 v1, v17

    #@14d
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@150
    .line 4194
    new-instance v17, Ljava/lang/StringBuilder;

    #@152
    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    #@155
    const-string/jumbo v18, " mNetStatPollPeriod="

    #@158
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15b
    move-result-object v17

    #@15c
    move-object/from16 v0, p0

    #@15e
    iget v0, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mNetStatPollPeriod:I

    #@160
    move/from16 v18, v0

    #@162
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@165
    move-result-object v17

    #@166
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@169
    move-result-object v17

    #@16a
    move-object/from16 v0, p2

    #@16c
    move-object/from16 v1, v17

    #@16e
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@171
    .line 4195
    new-instance v17, Ljava/lang/StringBuilder;

    #@173
    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    #@176
    const-string/jumbo v18, " mNetStatPollEnabled="

    #@179
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17c
    move-result-object v17

    #@17d
    move-object/from16 v0, p0

    #@17f
    iget-boolean v0, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mNetStatPollEnabled:Z

    #@181
    move/from16 v18, v0

    #@183
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@186
    move-result-object v17

    #@187
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@18a
    move-result-object v17

    #@18b
    move-object/from16 v0, p2

    #@18d
    move-object/from16 v1, v17

    #@18f
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@192
    .line 4196
    new-instance v17, Ljava/lang/StringBuilder;

    #@194
    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    #@197
    const-string/jumbo v18, " mDataStallTxRxSum="

    #@19a
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19d
    move-result-object v17

    #@19e
    move-object/from16 v0, p0

    #@1a0
    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDataStallTxRxSum:Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxSum;

    #@1a2
    move-object/from16 v18, v0

    #@1a4
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1a7
    move-result-object v17

    #@1a8
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1ab
    move-result-object v17

    #@1ac
    move-object/from16 v0, p2

    #@1ae
    move-object/from16 v1, v17

    #@1b0
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1b3
    .line 4197
    new-instance v17, Ljava/lang/StringBuilder;

    #@1b5
    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    #@1b8
    const-string/jumbo v18, " mDataStallAlarmTag="

    #@1bb
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1be
    move-result-object v17

    #@1bf
    move-object/from16 v0, p0

    #@1c1
    iget v0, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDataStallAlarmTag:I

    #@1c3
    move/from16 v18, v0

    #@1c5
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1c8
    move-result-object v17

    #@1c9
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1cc
    move-result-object v17

    #@1cd
    move-object/from16 v0, p2

    #@1cf
    move-object/from16 v1, v17

    #@1d1
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1d4
    .line 4198
    new-instance v17, Ljava/lang/StringBuilder;

    #@1d6
    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    #@1d9
    const-string/jumbo v18, " mDataStallDetectionEnabled="

    #@1dc
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1df
    move-result-object v17

    #@1e0
    move-object/from16 v0, p0

    #@1e2
    iget-boolean v0, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDataStallDetectionEnabled:Z

    #@1e4
    move/from16 v18, v0

    #@1e6
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@1e9
    move-result-object v17

    #@1ea
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1ed
    move-result-object v17

    #@1ee
    move-object/from16 v0, p2

    #@1f0
    move-object/from16 v1, v17

    #@1f2
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1f5
    .line 4199
    new-instance v17, Ljava/lang/StringBuilder;

    #@1f7
    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    #@1fa
    const-string/jumbo v18, " mSentSinceLastRecv="

    #@1fd
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@200
    move-result-object v17

    #@201
    move-object/from16 v0, p0

    #@203
    iget-wide v0, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mSentSinceLastRecv:J

    #@205
    move-wide/from16 v18, v0

    #@207
    invoke-virtual/range {v17 .. v19}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@20a
    move-result-object v17

    #@20b
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@20e
    move-result-object v17

    #@20f
    move-object/from16 v0, p2

    #@211
    move-object/from16 v1, v17

    #@213
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@216
    .line 4200
    new-instance v17, Ljava/lang/StringBuilder;

    #@218
    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    #@21b
    const-string/jumbo v18, " mNoRecvPollCount="

    #@21e
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@221
    move-result-object v17

    #@222
    move-object/from16 v0, p0

    #@224
    iget v0, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mNoRecvPollCount:I

    #@226
    move/from16 v18, v0

    #@228
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@22b
    move-result-object v17

    #@22c
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22f
    move-result-object v17

    #@230
    move-object/from16 v0, p2

    #@232
    move-object/from16 v1, v17

    #@234
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@237
    .line 4201
    new-instance v17, Ljava/lang/StringBuilder;

    #@239
    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    #@23c
    const-string/jumbo v18, " mResolver="

    #@23f
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@242
    move-result-object v17

    #@243
    move-object/from16 v0, p0

    #@245
    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mResolver:Landroid/content/ContentResolver;

    #@247
    move-object/from16 v18, v0

    #@249
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@24c
    move-result-object v17

    #@24d
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@250
    move-result-object v17

    #@251
    move-object/from16 v0, p2

    #@253
    move-object/from16 v1, v17

    #@255
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@258
    .line 4202
    new-instance v17, Ljava/lang/StringBuilder;

    #@25a
    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    #@25d
    const-string/jumbo v18, " mIsWifiConnected="

    #@260
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@263
    move-result-object v17

    #@264
    move-object/from16 v0, p0

    #@266
    iget-boolean v0, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mIsWifiConnected:Z

    #@268
    move/from16 v18, v0

    #@26a
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@26d
    move-result-object v17

    #@26e
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@271
    move-result-object v17

    #@272
    move-object/from16 v0, p2

    #@274
    move-object/from16 v1, v17

    #@276
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@279
    .line 4203
    new-instance v17, Ljava/lang/StringBuilder;

    #@27b
    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    #@27e
    const-string/jumbo v18, " mReconnectIntent="

    #@281
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@284
    move-result-object v17

    #@285
    move-object/from16 v0, p0

    #@287
    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mReconnectIntent:Landroid/app/PendingIntent;

    #@289
    move-object/from16 v18, v0

    #@28b
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@28e
    move-result-object v17

    #@28f
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@292
    move-result-object v17

    #@293
    move-object/from16 v0, p2

    #@295
    move-object/from16 v1, v17

    #@297
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@29a
    .line 4204
    new-instance v17, Ljava/lang/StringBuilder;

    #@29c
    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    #@29f
    const-string/jumbo v18, " mAutoAttachOnCreation="

    #@2a2
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a5
    move-result-object v17

    #@2a6
    move-object/from16 v0, p0

    #@2a8
    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAutoAttachOnCreation:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@2aa
    move-object/from16 v18, v0

    #@2ac
    invoke-virtual/range {v18 .. v18}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    #@2af
    move-result v18

    #@2b0
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@2b3
    move-result-object v17

    #@2b4
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2b7
    move-result-object v17

    #@2b8
    move-object/from16 v0, p2

    #@2ba
    move-object/from16 v1, v17

    #@2bc
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@2bf
    .line 4205
    new-instance v17, Ljava/lang/StringBuilder;

    #@2c1
    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    #@2c4
    const-string/jumbo v18, " mIsScreenOn="

    #@2c7
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2ca
    move-result-object v17

    #@2cb
    move-object/from16 v0, p0

    #@2cd
    iget-boolean v0, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mIsScreenOn:Z

    #@2cf
    move/from16 v18, v0

    #@2d1
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@2d4
    move-result-object v17

    #@2d5
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2d8
    move-result-object v17

    #@2d9
    move-object/from16 v0, p2

    #@2db
    move-object/from16 v1, v17

    #@2dd
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@2e0
    .line 4206
    new-instance v17, Ljava/lang/StringBuilder;

    #@2e2
    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    #@2e5
    const-string/jumbo v18, " mUniqueIdGenerator="

    #@2e8
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2eb
    move-result-object v17

    #@2ec
    move-object/from16 v0, p0

    #@2ee
    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mUniqueIdGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    #@2f0
    move-object/from16 v18, v0

    #@2f2
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2f5
    move-result-object v17

    #@2f6
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2f9
    move-result-object v17

    #@2fa
    move-object/from16 v0, p2

    #@2fc
    move-object/from16 v1, v17

    #@2fe
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@301
    .line 4207
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->flush()V

    #@304
    .line 4208
    const-string/jumbo v17, " ***************************************"

    #@307
    move-object/from16 v0, p2

    #@309
    move-object/from16 v1, v17

    #@30b
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@30e
    .line 4209
    move-object/from16 v0, p0

    #@310
    iget-object v9, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDcc:Lcom/android/internal/telephony/dataconnection/DcController;

    #@312
    .line 4210
    .local v9, "dcc":Lcom/android/internal/telephony/dataconnection/DcController;
    if-eqz v9, :cond_0

    #@314
    .line 4211
    move-object/from16 v0, p1

    #@316
    move-object/from16 v1, p2

    #@318
    move-object/from16 v2, p3

    #@31a
    invoke-virtual {v9, v0, v1, v2}, Lcom/android/internal/telephony/dataconnection/DcController;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    #@31d
    .line 4215
    :goto_0
    const-string/jumbo v17, " ***************************************"

    #@320
    move-object/from16 v0, p2

    #@322
    move-object/from16 v1, v17

    #@324
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@327
    .line 4216
    move-object/from16 v0, p0

    #@329
    iget-object v10, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDataConnections:Ljava/util/HashMap;

    #@32b
    .line 4217
    .local v10, "dcs":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/android/internal/telephony/dataconnection/DataConnection;>;"
    if-eqz v10, :cond_1

    #@32d
    .line 4218
    move-object/from16 v0, p0

    #@32f
    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDataConnections:Ljava/util/HashMap;

    #@331
    move-object/from16 v17, v0

    #@333
    invoke-virtual/range {v17 .. v17}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    #@336
    move-result-object v16

    #@337
    .line 4219
    .local v16, "mDcSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/internal/telephony/dataconnection/DataConnection;>;>;"
    new-instance v17, Ljava/lang/StringBuilder;

    #@339
    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    #@33c
    const-string/jumbo v18, " mDataConnections: count="

    #@33f
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@342
    move-result-object v17

    #@343
    invoke-interface/range {v16 .. v16}, Ljava/util/Set;->size()I

    #@346
    move-result v18

    #@347
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@34a
    move-result-object v17

    #@34b
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@34e
    move-result-object v17

    #@34f
    move-object/from16 v0, p2

    #@351
    move-object/from16 v1, v17

    #@353
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@356
    .line 4220
    invoke-interface/range {v16 .. v16}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@359
    move-result-object v14

    #@35a
    .local v14, "entry$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    #@35d
    move-result v17

    #@35e
    if-eqz v17, :cond_2

    #@360
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@363
    move-result-object v11

    #@364
    check-cast v11, Ljava/util/Map$Entry;

    #@366
    .line 4221
    .local v11, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/internal/telephony/dataconnection/DataConnection;>;"
    const-string/jumbo v17, " *** mDataConnection[%d] \n"

    #@369
    const/16 v18, 0x1

    #@36b
    move/from16 v0, v18

    #@36d
    new-array v0, v0, [Ljava/lang/Object;

    #@36f
    move-object/from16 v18, v0

    #@371
    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@374
    move-result-object v19

    #@375
    const/16 v20, 0x0

    #@377
    aput-object v19, v18, v20

    #@379
    move-object/from16 v0, p2

    #@37b
    move-object/from16 v1, v17

    #@37d
    move-object/from16 v2, v18

    #@37f
    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    #@382
    .line 4222
    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@385
    move-result-object v17

    #@386
    check-cast v17, Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@388
    move-object/from16 v0, v17

    #@38a
    move-object/from16 v1, p1

    #@38c
    move-object/from16 v2, p2

    #@38e
    move-object/from16 v3, p3

    #@390
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/dataconnection/DataConnection;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    #@393
    goto :goto_1

    #@394
    .line 4213
    .end local v10    # "dcs":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/android/internal/telephony/dataconnection/DataConnection;>;"
    .end local v11    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/internal/telephony/dataconnection/DataConnection;>;"
    .end local v14    # "entry$iterator":Ljava/util/Iterator;
    .end local v16    # "mDcSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/internal/telephony/dataconnection/DataConnection;>;>;"
    :cond_0
    const-string/jumbo v17, " mDcc=null"

    #@397
    move-object/from16 v0, p2

    #@399
    move-object/from16 v1, v17

    #@39b
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@39e
    goto/16 :goto_0

    #@3a0
    .line 4225
    .restart local v10    # "dcs":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/android/internal/telephony/dataconnection/DataConnection;>;"
    :cond_1
    const-string/jumbo v17, "mDataConnections=null"

    #@3a3
    move-object/from16 v0, p2

    #@3a5
    move-object/from16 v1, v17

    #@3a7
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@3aa
    .line 4227
    :cond_2
    const-string/jumbo v17, " ***************************************"

    #@3ad
    move-object/from16 v0, p2

    #@3af
    move-object/from16 v1, v17

    #@3b1
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@3b4
    .line 4228
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->flush()V

    #@3b7
    .line 4229
    move-object/from16 v0, p0

    #@3b9
    iget-object v7, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mApnToDataConnectionId:Ljava/util/HashMap;

    #@3bb
    .line 4230
    .local v7, "apnToDcId":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    if-eqz v7, :cond_3

    #@3bd
    .line 4231
    invoke-virtual {v7}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    #@3c0
    move-result-object v8

    #@3c1
    .line 4232
    .local v8, "apnToDcIdSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    new-instance v17, Ljava/lang/StringBuilder;

    #@3c3
    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    #@3c6
    const-string/jumbo v18, " mApnToDataConnectonId size="

    #@3c9
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3cc
    move-result-object v17

    #@3cd
    invoke-interface {v8}, Ljava/util/Set;->size()I

    #@3d0
    move-result v18

    #@3d1
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3d4
    move-result-object v17

    #@3d5
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3d8
    move-result-object v17

    #@3d9
    move-object/from16 v0, p2

    #@3db
    move-object/from16 v1, v17

    #@3dd
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@3e0
    .line 4233
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@3e3
    move-result-object v14

    #@3e4
    .restart local v14    # "entry$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    #@3e7
    move-result v17

    #@3e8
    if-eqz v17, :cond_4

    #@3ea
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@3ed
    move-result-object v13

    #@3ee
    check-cast v13, Ljava/util/Map$Entry;

    #@3f0
    .line 4234
    .local v13, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    const-string/jumbo v17, " mApnToDataConnectonId[%s]=%d\n"

    #@3f3
    const/16 v18, 0x2

    #@3f5
    move/from16 v0, v18

    #@3f7
    new-array v0, v0, [Ljava/lang/Object;

    #@3f9
    move-object/from16 v18, v0

    #@3fb
    invoke-interface {v13}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@3fe
    move-result-object v19

    #@3ff
    const/16 v20, 0x0

    #@401
    aput-object v19, v18, v20

    #@403
    invoke-interface {v13}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@406
    move-result-object v19

    #@407
    const/16 v20, 0x1

    #@409
    aput-object v19, v18, v20

    #@40b
    move-object/from16 v0, p2

    #@40d
    move-object/from16 v1, v17

    #@40f
    move-object/from16 v2, v18

    #@411
    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    #@414
    goto :goto_2

    #@415
    .line 4237
    .end local v8    # "apnToDcIdSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    .end local v13    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v14    # "entry$iterator":Ljava/util/Iterator;
    :cond_3
    const-string/jumbo v17, "mApnToDataConnectionId=null"

    #@418
    move-object/from16 v0, p2

    #@41a
    move-object/from16 v1, v17

    #@41c
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@41f
    .line 4239
    :cond_4
    const-string/jumbo v17, " ***************************************"

    #@422
    move-object/from16 v0, p2

    #@424
    move-object/from16 v1, v17

    #@426
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@429
    .line 4240
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->flush()V

    #@42c
    .line 4241
    move-object/from16 v0, p0

    #@42e
    iget-object v4, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    #@430
    .line 4242
    .local v4, "apnCtxs":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/String;Lcom/android/internal/telephony/dataconnection/ApnContext;>;"
    if-eqz v4, :cond_6

    #@432
    .line 4243
    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    #@435
    move-result-object v5

    #@436
    .line 4244
    .local v5, "apnCtxsSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/telephony/dataconnection/ApnContext;>;>;"
    new-instance v17, Ljava/lang/StringBuilder;

    #@438
    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    #@43b
    const-string/jumbo v18, " mApnContexts size="

    #@43e
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@441
    move-result-object v17

    #@442
    invoke-interface {v5}, Ljava/util/Set;->size()I

    #@445
    move-result v18

    #@446
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@449
    move-result-object v17

    #@44a
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@44d
    move-result-object v17

    #@44e
    move-object/from16 v0, p2

    #@450
    move-object/from16 v1, v17

    #@452
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@455
    .line 4245
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@458
    move-result-object v14

    #@459
    .restart local v14    # "entry$iterator":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    #@45c
    move-result v17

    #@45d
    if-eqz v17, :cond_5

    #@45f
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@462
    move-result-object v12

    #@463
    check-cast v12, Ljava/util/Map$Entry;

    #@465
    .line 4246
    .local v12, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/telephony/dataconnection/ApnContext;>;"
    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@468
    move-result-object v17

    #@469
    check-cast v17, Lcom/android/internal/telephony/dataconnection/ApnContext;

    #@46b
    move-object/from16 v0, v17

    #@46d
    move-object/from16 v1, p1

    #@46f
    move-object/from16 v2, p2

    #@471
    move-object/from16 v3, p3

    #@473
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/dataconnection/ApnContext;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    #@476
    goto :goto_3

    #@477
    .line 4248
    .end local v12    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/telephony/dataconnection/ApnContext;>;"
    :cond_5
    const-string/jumbo v17, " ***************************************"

    #@47a
    move-object/from16 v0, p2

    #@47c
    move-object/from16 v1, v17

    #@47e
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@481
    .line 4252
    .end local v5    # "apnCtxsSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/telephony/dataconnection/ApnContext;>;>;"
    .end local v14    # "entry$iterator":Ljava/util/Iterator;
    :goto_4
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->flush()V

    #@484
    .line 4253
    move-object/from16 v0, p0

    #@486
    iget-object v6, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAllApnSettings:Ljava/util/ArrayList;

    #@488
    .line 4254
    .local v6, "apnSettings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/dataconnection/ApnSetting;>;"
    if-eqz v6, :cond_8

    #@48a
    .line 4255
    new-instance v17, Ljava/lang/StringBuilder;

    #@48c
    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    #@48f
    const-string/jumbo v18, " mAllApnSettings size="

    #@492
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@495
    move-result-object v17

    #@496
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    #@499
    move-result v18

    #@49a
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@49d
    move-result-object v17

    #@49e
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4a1
    move-result-object v17

    #@4a2
    move-object/from16 v0, p2

    #@4a4
    move-object/from16 v1, v17

    #@4a6
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@4a9
    .line 4256
    const/4 v15, 0x0

    #@4aa
    .local v15, "i":I
    :goto_5
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    #@4ad
    move-result v17

    #@4ae
    move/from16 v0, v17

    #@4b0
    if-ge v15, v0, :cond_7

    #@4b2
    .line 4257
    const-string/jumbo v17, " mAllApnSettings[%d]: %s\n"

    #@4b5
    const/16 v18, 0x2

    #@4b7
    move/from16 v0, v18

    #@4b9
    new-array v0, v0, [Ljava/lang/Object;

    #@4bb
    move-object/from16 v18, v0

    #@4bd
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@4c0
    move-result-object v19

    #@4c1
    const/16 v20, 0x0

    #@4c3
    aput-object v19, v18, v20

    #@4c5
    invoke-virtual {v6, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@4c8
    move-result-object v19

    #@4c9
    const/16 v20, 0x1

    #@4cb
    aput-object v19, v18, v20

    #@4cd
    move-object/from16 v0, p2

    #@4cf
    move-object/from16 v1, v17

    #@4d1
    move-object/from16 v2, v18

    #@4d3
    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    #@4d6
    .line 4256
    add-int/lit8 v15, v15, 0x1

    #@4d8
    goto :goto_5

    #@4d9
    .line 4250
    .end local v6    # "apnSettings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/dataconnection/ApnSetting;>;"
    .end local v15    # "i":I
    :cond_6
    const-string/jumbo v17, " mApnContexts=null"

    #@4dc
    move-object/from16 v0, p2

    #@4de
    move-object/from16 v1, v17

    #@4e0
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@4e3
    goto :goto_4

    #@4e4
    .line 4259
    .restart local v6    # "apnSettings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/dataconnection/ApnSetting;>;"
    .restart local v15    # "i":I
    :cond_7
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->flush()V

    #@4e7
    .line 4263
    .end local v15    # "i":I
    :goto_6
    new-instance v17, Ljava/lang/StringBuilder;

    #@4e9
    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    #@4ec
    const-string/jumbo v18, " mPreferredApn="

    #@4ef
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f2
    move-result-object v17

    #@4f3
    move-object/from16 v0, p0

    #@4f5
    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPreferredApn:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    #@4f7
    move-object/from16 v18, v0

    #@4f9
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@4fc
    move-result-object v17

    #@4fd
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@500
    move-result-object v17

    #@501
    move-object/from16 v0, p2

    #@503
    move-object/from16 v1, v17

    #@505
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@508
    .line 4264
    new-instance v17, Ljava/lang/StringBuilder;

    #@50a
    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    #@50d
    const-string/jumbo v18, " mIsPsRestricted="

    #@510
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@513
    move-result-object v17

    #@514
    move-object/from16 v0, p0

    #@516
    iget-boolean v0, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mIsPsRestricted:Z

    #@518
    move/from16 v18, v0

    #@51a
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@51d
    move-result-object v17

    #@51e
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@521
    move-result-object v17

    #@522
    move-object/from16 v0, p2

    #@524
    move-object/from16 v1, v17

    #@526
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@529
    .line 4265
    new-instance v17, Ljava/lang/StringBuilder;

    #@52b
    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    #@52e
    const-string/jumbo v18, " mIsDisposed="

    #@531
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@534
    move-result-object v17

    #@535
    move-object/from16 v0, p0

    #@537
    iget-boolean v0, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mIsDisposed:Z

    #@539
    move/from16 v18, v0

    #@53b
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@53e
    move-result-object v17

    #@53f
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@542
    move-result-object v17

    #@543
    move-object/from16 v0, p2

    #@545
    move-object/from16 v1, v17

    #@547
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@54a
    .line 4266
    new-instance v17, Ljava/lang/StringBuilder;

    #@54c
    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    #@54f
    const-string/jumbo v18, " mIntentReceiver="

    #@552
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@555
    move-result-object v17

    #@556
    move-object/from16 v0, p0

    #@558
    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    #@55a
    move-object/from16 v18, v0

    #@55c
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@55f
    move-result-object v17

    #@560
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@563
    move-result-object v17

    #@564
    move-object/from16 v0, p2

    #@566
    move-object/from16 v1, v17

    #@568
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@56b
    .line 4267
    new-instance v17, Ljava/lang/StringBuilder;

    #@56d
    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    #@570
    const-string/jumbo v18, " mReregisterOnReconnectFailure="

    #@573
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@576
    move-result-object v17

    #@577
    move-object/from16 v0, p0

    #@579
    iget-boolean v0, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mReregisterOnReconnectFailure:Z

    #@57b
    move/from16 v18, v0

    #@57d
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@580
    move-result-object v17

    #@581
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@584
    move-result-object v17

    #@585
    move-object/from16 v0, p2

    #@587
    move-object/from16 v1, v17

    #@589
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@58c
    .line 4268
    new-instance v17, Ljava/lang/StringBuilder;

    #@58e
    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    #@591
    const-string/jumbo v18, " canSetPreferApn="

    #@594
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@597
    move-result-object v17

    #@598
    move-object/from16 v0, p0

    #@59a
    iget-boolean v0, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mCanSetPreferApn:Z

    #@59c
    move/from16 v18, v0

    #@59e
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@5a1
    move-result-object v17

    #@5a2
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5a5
    move-result-object v17

    #@5a6
    move-object/from16 v0, p2

    #@5a8
    move-object/from16 v1, v17

    #@5aa
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@5ad
    .line 4269
    new-instance v17, Ljava/lang/StringBuilder;

    #@5af
    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    #@5b2
    const-string/jumbo v18, " mApnObserver="

    #@5b5
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5b8
    move-result-object v17

    #@5b9
    move-object/from16 v0, p0

    #@5bb
    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mApnObserver:Lcom/android/internal/telephony/dataconnection/DcTracker$ApnChangeObserver;

    #@5bd
    move-object/from16 v18, v0

    #@5bf
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@5c2
    move-result-object v17

    #@5c3
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5c6
    move-result-object v17

    #@5c7
    move-object/from16 v0, p2

    #@5c9
    move-object/from16 v1, v17

    #@5cb
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@5ce
    .line 4270
    new-instance v17, Ljava/lang/StringBuilder;

    #@5d0
    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    #@5d3
    const-string/jumbo v18, " getOverallState="

    #@5d6
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5d9
    move-result-object v17

    #@5da
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->getOverallState()Lcom/android/internal/telephony/DctConstants$State;

    #@5dd
    move-result-object v18

    #@5de
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@5e1
    move-result-object v17

    #@5e2
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5e5
    move-result-object v17

    #@5e6
    move-object/from16 v0, p2

    #@5e8
    move-object/from16 v1, v17

    #@5ea
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@5ed
    .line 4271
    new-instance v17, Ljava/lang/StringBuilder;

    #@5ef
    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    #@5f2
    const-string/jumbo v18, " mDataConnectionAsyncChannels=%s\n"

    #@5f5
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5f8
    move-result-object v17

    #@5f9
    move-object/from16 v0, p0

    #@5fb
    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDataConnectionAcHashMap:Ljava/util/HashMap;

    #@5fd
    move-object/from16 v18, v0

    #@5ff
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@602
    move-result-object v17

    #@603
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@606
    move-result-object v17

    #@607
    move-object/from16 v0, p2

    #@609
    move-object/from16 v1, v17

    #@60b
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@60e
    .line 4272
    new-instance v17, Ljava/lang/StringBuilder;

    #@610
    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    #@613
    const-string/jumbo v18, " mAttached="

    #@616
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@619
    move-result-object v17

    #@61a
    move-object/from16 v0, p0

    #@61c
    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAttached:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@61e
    move-object/from16 v18, v0

    #@620
    invoke-virtual/range {v18 .. v18}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    #@623
    move-result v18

    #@624
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@627
    move-result-object v17

    #@628
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@62b
    move-result-object v17

    #@62c
    move-object/from16 v0, p2

    #@62e
    move-object/from16 v1, v17

    #@630
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@633
    .line 4273
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->flush()V

    #@636
    .line 4181
    return-void

    #@637
    .line 4261
    :cond_8
    const-string/jumbo v17, " mAllApnSettings=null"

    #@63a
    move-object/from16 v0, p2

    #@63c
    move-object/from16 v1, v17

    #@63e
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@641
    goto/16 :goto_6
.end method

.method fetchDunApn()Lcom/android/internal/telephony/dataconnection/ApnSetting;
    .locals 15

    #@0
    .prologue
    const/4 v11, 0x0

    #@1
    const/4 v13, 0x0

    #@2
    .line 1816
    const-string/jumbo v12, "net.tethering.noprovisioning"

    #@5
    invoke-static {v12, v11}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    #@8
    move-result v12

    #@9
    if-eqz v12, :cond_0

    #@b
    .line 1817
    const-string/jumbo v11, "fetchDunApn: net.tethering.noprovisioning=true ret: null"

    #@e
    invoke-direct {p0, v11}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@11
    .line 1818
    return-object v13

    #@12
    .line 1820
    :cond_0
    iget-object v12, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    #@14
    invoke-virtual {v12}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    #@17
    move-result-object v12

    #@18
    invoke-virtual {v12}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    #@1b
    move-result v3

    #@1c
    .line 1821
    .local v3, "bearer":I
    const/4 v10, 0x0

    #@1d
    .line 1822
    .local v10, "retDunSetting":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    iget-object v12, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mResolver:Landroid/content/ContentResolver;

    #@1f
    const-string/jumbo v13, "tether_dun_apn"

    #@22
    invoke-static {v12, v13}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    #@25
    move-result-object v2

    #@26
    .line 1823
    .local v2, "apnData":Ljava/lang/String;
    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->arrayFromString(Ljava/lang/String;)Ljava/util/List;

    #@29
    move-result-object v7

    #@2a
    .line 1824
    .local v7, "dunSettings":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/dataconnection/ApnSetting;>;"
    iget-object v12, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    #@2c
    invoke-virtual {v12}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    #@2f
    move-result-object v9

    #@30
    check-cast v9, Lcom/android/internal/telephony/uicc/IccRecords;

    #@32
    .line 1825
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
    .line 1826
    .local v5, "dunSetting":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    if-eqz v9, :cond_2

    #@44
    invoke-virtual {v9}, Lcom/android/internal/telephony/uicc/IccRecords;->getOperatorNumeric()Ljava/lang/String;

    #@47
    move-result-object v8

    #@48
    .line 1827
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
    .line 1828
    iget-object v12, v5, Lcom/android/internal/telephony/dataconnection/ApnSetting;->numeric:Ljava/lang/String;

    #@52
    invoke-virtual {v12, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@55
    move-result v12

    #@56
    if-eqz v12, :cond_1

    #@58
    .line 1829
    invoke-virtual {v5}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->hasMvnoParams()Z

    #@5b
    move-result v12

    #@5c
    if-eqz v12, :cond_3

    #@5e
    .line 1830
    if-eqz v9, :cond_1

    #@60
    iget-object v12, v5, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mvnoType:Ljava/lang/String;

    #@62
    .line 1831
    iget-object v13, v5, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mvnoMatchData:Ljava/lang/String;

    #@64
    .line 1830
    invoke-static {v9, v12, v13}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mvnoMatches(Lcom/android/internal/telephony/uicc/IccRecords;Ljava/lang/String;Ljava/lang/String;)Z

    #@67
    move-result v12

    #@68
    if-eqz v12, :cond_1

    #@6a
    .line 1835
    return-object v5

    #@6b
    .line 1826
    .end local v8    # "operator":Ljava/lang/String;
    :cond_2
    const-string/jumbo v8, ""

    #@6e
    .restart local v8    # "operator":Ljava/lang/String;
    goto :goto_0

    #@6f
    .line 1837
    :cond_3
    iget-boolean v12, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mMvnoMatched:Z

    #@71
    if-nez v12, :cond_1

    #@73
    .line 1839
    return-object v5

    #@74
    .line 1844
    .end local v5    # "dunSetting":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    .end local v8    # "operator":Ljava/lang/String;
    :cond_4
    iget-object v12, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    #@76
    invoke-virtual {v12}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    #@79
    move-result-object v4

    #@7a
    .line 1845
    .local v4, "c":Landroid/content/Context;
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@7d
    move-result-object v12

    #@7e
    const v13, 0x107001b

    #@81
    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    #@84
    move-result-object v1

    #@85
    .line 1846
    .local v1, "apnArrayData":[Ljava/lang/String;
    array-length v12, v1

    #@86
    .end local v10    # "retDunSetting":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    :goto_1
    if-ge v11, v12, :cond_8

    #@88
    aget-object v0, v1, v11

    #@8a
    .line 1847
    .local v0, "apn":Ljava/lang/String;
    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->fromString(Ljava/lang/String;)Lcom/android/internal/telephony/dataconnection/ApnSetting;

    #@8d
    move-result-object v5

    #@8e
    .line 1848
    .restart local v5    # "dunSetting":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    if-eqz v5, :cond_5

    #@90
    .line 1849
    iget v13, v5, Lcom/android/internal/telephony/dataconnection/ApnSetting;->bearerBitmask:I

    #@92
    invoke-static {v13, v3}, Landroid/telephony/ServiceState;->bitmaskHasTech(II)Z

    #@95
    move-result v13

    #@96
    if-nez v13, :cond_6

    #@98
    .line 1846
    :cond_5
    :goto_2
    add-int/lit8 v11, v11, 0x1

    #@9a
    goto :goto_1

    #@9b
    .line 1850
    :cond_6
    invoke-virtual {v5}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->hasMvnoParams()Z

    #@9e
    move-result v13

    #@9f
    if-eqz v13, :cond_7

    #@a1
    .line 1851
    if-eqz v9, :cond_5

    #@a3
    iget-object v13, v5, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mvnoType:Ljava/lang/String;

    #@a5
    .line 1852
    iget-object v14, v5, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mvnoMatchData:Ljava/lang/String;

    #@a7
    .line 1851
    invoke-static {v9, v13, v14}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mvnoMatches(Lcom/android/internal/telephony/uicc/IccRecords;Ljava/lang/String;Ljava/lang/String;)Z

    #@aa
    move-result v13

    #@ab
    if-eqz v13, :cond_5

    #@ad
    .line 1856
    return-object v5

    #@ae
    .line 1858
    :cond_7
    iget-boolean v13, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mMvnoMatched:Z

    #@b0
    if-nez v13, :cond_5

    #@b2
    .line 1859
    move-object v10, v5

    #@b3
    .local v10, "retDunSetting":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    goto :goto_2

    #@b4
    .line 1865
    .end local v0    # "apn":Ljava/lang/String;
    .end local v5    # "dunSetting":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    .end local v10    # "retDunSetting":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    :cond_8
    return-object v10
.end method

.method protected finalize()V
    .locals 1

    #@0
    .prologue
    .line 1089
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    #@2
    if-eqz v0, :cond_0

    #@4
    const-string/jumbo v0, "finalize"

    #@7
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@a
    .line 1088
    :cond_0
    return-void
.end method

.method public getActiveApnString(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "apnType"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1195
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    #@3
    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Lcom/android/internal/telephony/dataconnection/ApnContext;

    #@9
    .line 1196
    .local v0, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    if-eqz v0, :cond_0

    #@b
    .line 1197
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnSetting()Lcom/android/internal/telephony/dataconnection/ApnSetting;

    #@e
    move-result-object v1

    #@f
    .line 1198
    .local v1, "apnSetting":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    if-eqz v1, :cond_0

    #@11
    .line 1199
    iget-object v2, v1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->apn:Ljava/lang/String;

    #@13
    return-object v2

    #@14
    .line 1202
    .end local v1    # "apnSetting":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    :cond_0
    return-object v3
.end method

.method public getActiveApnTypes()[Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 1180
    const-string/jumbo v3, "get all active apn types"

    #@3
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@6
    .line 1181
    new-instance v2, Ljava/util/ArrayList;

    #@8
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@b
    .line 1183
    .local v2, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    #@d
    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    #@10
    move-result-object v3

    #@11
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@14
    move-result-object v1

    #@15
    .local v1, "apnContext$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@18
    move-result v3

    #@19
    if-eqz v3, :cond_1

    #@1b
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1e
    move-result-object v0

    #@1f
    check-cast v0, Lcom/android/internal/telephony/dataconnection/ApnContext;

    #@21
    .line 1184
    .local v0, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAttached:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@23
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    #@26
    move-result v3

    #@27
    if-eqz v3, :cond_0

    #@29
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->isReady()Z

    #@2c
    move-result v3

    #@2d
    if-eqz v3, :cond_0

    #@2f
    .line 1185
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    #@32
    move-result-object v3

    #@33
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@36
    goto :goto_0

    #@37
    .line 1189
    .end local v0    # "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    :cond_1
    const/4 v3, 0x0

    #@38
    new-array v3, v3, [Ljava/lang/String;

    #@3a
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@3d
    move-result-object v3

    #@3e
    check-cast v3, [Ljava/lang/String;

    #@40
    return-object v3
.end method

.method public getActivity()Lcom/android/internal/telephony/DctConstants$Activity;
    .locals 1

    #@0
    .prologue
    .line 950
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mActivity:Lcom/android/internal/telephony/DctConstants$Activity;

    #@2
    return-object v0
.end method

.method public getAnyDataEnabled()Z
    .locals 6

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 1276
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDataEnabledSettings:Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;

    #@4
    invoke-virtual {v3, v5}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->isDataEnabled(Z)Z

    #@7
    move-result v3

    #@8
    if-nez v3, :cond_0

    #@a
    return v4

    #@b
    .line 1277
    :cond_0
    new-instance v2, Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReason;

    #@d
    invoke-direct {v2}, Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReason;-><init>()V

    #@10
    .line 1278
    .local v2, "failureReason":Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReason;
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->isDataAllowed(Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReason;)Z

    #@13
    move-result v3

    #@14
    if-nez v3, :cond_1

    #@16
    .line 1279
    invoke-virtual {v2}, Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReason;->getDataAllowFailReason()Ljava/lang/String;

    #@19
    move-result-object v3

    #@1a
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@1d
    .line 1280
    return v4

    #@1e
    .line 1282
    :cond_1
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    #@20
    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    #@23
    move-result-object v3

    #@24
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@27
    move-result-object v1

    #@28
    .local v1, "apnContext$iterator":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@2b
    move-result v3

    #@2c
    if-eqz v3, :cond_3

    #@2e
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@31
    move-result-object v0

    #@32
    check-cast v0, Lcom/android/internal/telephony/dataconnection/ApnContext;

    #@34
    .line 1285
    .local v0, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->isDataAllowedForApn(Lcom/android/internal/telephony/dataconnection/ApnContext;)Z

    #@37
    move-result v3

    #@38
    if-eqz v3, :cond_2

    #@3a
    .line 1286
    return v5

    #@3b
    .line 1289
    .end local v0    # "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    :cond_3
    return v4
.end method

.method public getApnPriority(Ljava/lang/String;)I
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 987
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    #@2
    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/android/internal/telephony/dataconnection/ApnContext;

    #@8
    .line 988
    .local v0, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    if-nez v0, :cond_0

    #@a
    .line 989
    new-instance v1, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string/jumbo v2, "Request for unsupported mobile name: "

    #@12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v1

    #@16
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d
    move-result-object v1

    #@1e
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->loge(Ljava/lang/String;)V

    #@21
    .line 991
    :cond_0
    iget v1, v0, Lcom/android/internal/telephony/dataconnection/ApnContext;->priority:I

    #@23
    return v1
.end method

.method public getAutoAttachOnCreation()Z
    .locals 1

    #@0
    .prologue
    .line 2345
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAutoAttachOnCreation:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@2
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getDataEnabled()Z
    .locals 11

    #@0
    .prologue
    const/4 v7, 0x1

    #@1
    const/4 v8, 0x0

    #@2
    .line 2640
    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mResolver:Landroid/content/ContentResolver;

    #@4
    const-string/jumbo v9, "device_provisioned"

    #@7
    invoke-static {v6, v9, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    #@a
    move-result v0

    #@b
    .line 2642
    .local v0, "device_provisioned":I
    const-string/jumbo v6, "true"

    #@e
    .line 2643
    const-string/jumbo v9, "ro.com.android.mobiledata"

    #@11
    const-string/jumbo v10, "true"

    #@14
    .line 2642
    invoke-static {v9, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@17
    move-result-object v9

    #@18
    invoke-virtual {v6, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@1b
    move-result v5

    #@1c
    .line 2644
    .local v5, "retVal":Z
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    #@1f
    move-result-object v6

    #@20
    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getSimCount()I

    #@23
    move-result v6

    #@24
    if-ne v6, v7, :cond_3

    #@26
    .line 2645
    iget-object v9, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mResolver:Landroid/content/ContentResolver;

    #@28
    const-string/jumbo v10, "mobile_data"

    #@2b
    .line 2646
    if-eqz v5, :cond_1

    #@2d
    move v6, v7

    #@2e
    .line 2645
    :goto_0
    invoke-static {v9, v10, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    #@31
    move-result v6

    #@32
    if-eqz v6, :cond_2

    #@34
    const/4 v5, 0x1

    #@35
    .line 2657
    .end local v5    # "retVal":Z
    :goto_1
    if-nez v0, :cond_0

    #@37
    .line 2663
    const-string/jumbo v9, "ro.com.android.prov_mobiledata"

    #@3a
    .line 2664
    if-eqz v5, :cond_5

    #@3c
    const-string/jumbo v6, "true"

    #@3f
    .line 2663
    :goto_2
    invoke-static {v9, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@42
    move-result-object v4

    #@43
    .line 2665
    .local v4, "prov_property":Ljava/lang/String;
    const-string/jumbo v6, "true"

    #@46
    invoke-virtual {v6, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@49
    move-result v5

    #@4a
    .line 2667
    .restart local v5    # "retVal":Z
    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mResolver:Landroid/content/ContentResolver;

    #@4c
    .line 2668
    const-string/jumbo v9, "device_provisioning_mobile_data"

    #@4f
    .line 2669
    if-eqz v5, :cond_6

    #@51
    .line 2667
    :goto_3
    invoke-static {v6, v9, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    #@54
    move-result v3

    #@55
    .line 2670
    .local v3, "prov_mobile_data":I
    if-eqz v3, :cond_7

    #@57
    const/4 v5, 0x1

    #@58
    .line 2671
    .local v5, "retVal":Z
    :goto_4
    new-instance v6, Ljava/lang/StringBuilder;

    #@5a
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@5d
    const-string/jumbo v7, "getDataEnabled during provisioning retVal="

    #@60
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@63
    move-result-object v6

    #@64
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@67
    move-result-object v6

    #@68
    const-string/jumbo v7, " - ("

    #@6b
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6e
    move-result-object v6

    #@6f
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@72
    move-result-object v6

    #@73
    .line 2672
    const-string/jumbo v7, ", "

    #@76
    .line 2671
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@79
    move-result-object v6

    #@7a
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@7d
    move-result-object v6

    #@7e
    .line 2672
    const-string/jumbo v7, ")"

    #@81
    .line 2671
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@84
    move-result-object v6

    #@85
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@88
    move-result-object v6

    #@89
    invoke-direct {p0, v6}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@8c
    .line 2675
    .end local v3    # "prov_mobile_data":I
    .end local v4    # "prov_property":Ljava/lang/String;
    .end local v5    # "retVal":Z
    :cond_0
    return v5

    #@8d
    .local v5, "retVal":Z
    :cond_1
    move v6, v8

    #@8e
    .line 2646
    goto :goto_0

    #@8f
    .line 2645
    :cond_2
    const/4 v5, 0x0

    #@90
    .local v5, "retVal":Z
    goto :goto_1

    #@91
    .line 2648
    .local v5, "retVal":Z
    :cond_3
    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    #@93
    invoke-virtual {v6}, Lcom/android/internal/telephony/Phone;->getSubId()I

    #@96
    move-result v2

    #@97
    .line 2650
    .local v2, "phoneSubId":I
    :try_start_0
    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mResolver:Landroid/content/ContentResolver;

    #@99
    .line 2651
    const-string/jumbo v9, "mobile_data"

    #@9c
    .line 2650
    invoke-static {v6, v9, v2}, Landroid/telephony/TelephonyManager;->getIntWithSubId(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@9f
    move-result v6

    #@a0
    if-eqz v6, :cond_4

    #@a2
    const/4 v5, 0x1

    #@a3
    .local v5, "retVal":Z
    goto :goto_1

    #@a4
    .local v5, "retVal":Z
    :cond_4
    const/4 v5, 0x0

    #@a5
    .local v5, "retVal":Z
    goto :goto_1

    #@a6
    .line 2664
    .end local v2    # "phoneSubId":I
    .end local v5    # "retVal":Z
    :cond_5
    const-string/jumbo v6, "false"

    #@a9
    goto :goto_2

    #@aa
    .restart local v4    # "prov_property":Ljava/lang/String;
    .local v5, "retVal":Z
    :cond_6
    move v7, v8

    #@ab
    .line 2669
    goto :goto_3

    #@ac
    .line 2670
    .restart local v3    # "prov_mobile_data":I
    :cond_7
    const/4 v5, 0x0

    #@ad
    .local v5, "retVal":Z
    goto :goto_4

    #@ae
    .line 2652
    .end local v3    # "prov_mobile_data":I
    .end local v4    # "prov_property":Ljava/lang/String;
    .restart local v2    # "phoneSubId":I
    .local v5, "retVal":Z
    :catch_0
    move-exception v1

    #@af
    .local v1, "e":Landroid/provider/Settings$SettingNotFoundException;
    goto :goto_1
.end method

.method public getDataOnRoamingEnabled()Z
    .locals 8

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 2712
    const-string/jumbo v5, "true"

    #@5
    .line 2713
    const-string/jumbo v6, "ro.com.android.dataroaming"

    #@8
    const-string/jumbo v7, "false"

    #@b
    .line 2712
    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@e
    move-result-object v6

    #@f
    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@12
    move-result v0

    #@13
    .line 2714
    .local v0, "isDataRoamingEnabled":Z
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    #@15
    invoke-virtual {v5}, Lcom/android/internal/telephony/Phone;->getSubId()I

    #@18
    move-result v1

    #@19
    .line 2718
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
    .line 2719
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mResolver:Landroid/content/ContentResolver;

    #@25
    .line 2720
    const-string/jumbo v6, "data_roaming"

    #@28
    if-eqz v0, :cond_0

    #@2a
    .line 2719
    :goto_0
    invoke-static {v5, v6, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    #@2d
    move-result v3

    #@2e
    if-eqz v3, :cond_1

    #@30
    const/4 v0, 0x1

    #@31
    .line 2732
    .end local v0    # "isDataRoamingEnabled":Z
    :goto_1
    return v0

    #@32
    .restart local v0    # "isDataRoamingEnabled":Z
    :cond_0
    move v3, v4

    #@33
    .line 2720
    goto :goto_0

    #@34
    .line 2719
    :cond_1
    const/4 v0, 0x0

    #@35
    .local v0, "isDataRoamingEnabled":Z
    goto :goto_1

    #@36
    .line 2722
    .local v0, "isDataRoamingEnabled":Z
    :cond_2
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mResolver:Landroid/content/ContentResolver;

    #@38
    .line 2723
    const-string/jumbo v4, "data_roaming"

    #@3b
    .line 2722
    invoke-static {v3, v4, v1}, Landroid/telephony/TelephonyManager;->getIntWithSubId(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@3e
    move-result v3

    #@3f
    if-eqz v3, :cond_3

    #@41
    const/4 v0, 0x1

    #@42
    .local v0, "isDataRoamingEnabled":Z
    goto :goto_1

    #@43
    .local v0, "isDataRoamingEnabled":Z
    :cond_3
    const/4 v0, 0x0

    #@44
    .local v0, "isDataRoamingEnabled":Z
    goto :goto_1

    #@45
    .line 2725
    .local v0, "isDataRoamingEnabled":Z
    :catch_0
    move-exception v2

    #@46
    .line 2726
    .local v2, "snfe":Landroid/provider/Settings$SettingNotFoundException;
    new-instance v3, Ljava/lang/StringBuilder;

    #@48
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@4b
    const-string/jumbo v4, "getDataOnRoamingEnabled: SettingNofFoundException snfe="

    #@4e
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@51
    move-result-object v3

    #@52
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@55
    move-result-object v3

    #@56
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@59
    move-result-object v3

    #@5a
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@5d
    goto :goto_1
.end method

.method public getLinkProperties(Ljava/lang/String;)Landroid/net/LinkProperties;
    .locals 4
    .param p1, "apnType"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1151
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    #@2
    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/android/internal/telephony/dataconnection/ApnContext;

    #@8
    .line 1152
    .local v0, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    if-eqz v0, :cond_0

    #@a
    .line 1153
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getDcAc()Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;

    #@d
    move-result-object v1

    #@e
    .line 1154
    .local v1, "dcac":Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;
    if-eqz v1, :cond_0

    #@10
    .line 1155
    new-instance v2, Ljava/lang/StringBuilder;

    #@12
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@15
    const-string/jumbo v3, "return link properites for "

    #@18
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v2

    #@1c
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v2

    #@20
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@23
    move-result-object v2

    #@24
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@27
    .line 1156
    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->getLinkPropertiesSync()Landroid/net/LinkProperties;

    #@2a
    move-result-object v2

    #@2b
    return-object v2

    #@2c
    .line 1159
    .end local v1    # "dcac":Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;
    :cond_0
    const-string/jumbo v2, "return new LinkProperties"

    #@2f
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@32
    .line 1160
    new-instance v2, Landroid/net/LinkProperties;

    #@34
    invoke-direct {v2}, Landroid/net/LinkProperties;-><init>()V

    #@37
    return-object v2
.end method

.method public getNetworkCapabilities(Ljava/lang/String;)Landroid/net/NetworkCapabilities;
    .locals 4
    .param p1, "apnType"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1164
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    #@2
    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/android/internal/telephony/dataconnection/ApnContext;

    #@8
    .line 1165
    .local v0, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    if-eqz v0, :cond_0

    #@a
    .line 1166
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getDcAc()Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;

    #@d
    move-result-object v1

    #@e
    .line 1167
    .local v1, "dataConnectionAc":Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;
    if-eqz v1, :cond_0

    #@10
    .line 1169
    new-instance v2, Ljava/lang/StringBuilder;

    #@12
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@15
    const-string/jumbo v3, "get active pdp is not null, return NetworkCapabilities for "

    #@18
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v2

    #@1c
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v2

    #@20
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@23
    move-result-object v2

    #@24
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@27
    .line 1171
    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->getNetworkCapabilitiesSync()Landroid/net/NetworkCapabilities;

    #@2a
    move-result-object v2

    #@2b
    return-object v2

    #@2c
    .line 1174
    .end local v1    # "dataConnectionAc":Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;
    :cond_0
    const-string/jumbo v2, "return new NetworkCapabilities"

    #@2f
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@32
    .line 1175
    new-instance v2, Landroid/net/NetworkCapabilities;

    #@34
    invoke-direct {v2}, Landroid/net/NetworkCapabilities;-><init>()V

    #@37
    return-object v2
.end method

.method public getOverallState()Lcom/android/internal/telephony/DctConstants$State;
    .locals 7

    #@0
    .prologue
    .line 1225
    const/4 v3, 0x0

    #@1
    .line 1226
    .local v3, "isConnecting":Z
    const/4 v4, 0x1

    #@2
    .line 1227
    .local v4, "isFailed":Z
    const/4 v2, 0x0

    #@3
    .line 1229
    .local v2, "isAnyEnabled":Z
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    #@5
    invoke-virtual {v5}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    #@8
    move-result-object v5

    #@9
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@c
    move-result-object v1

    #@d
    .local v1, "apnContext$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@10
    move-result v5

    #@11
    if-eqz v5, :cond_1

    #@13
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@16
    move-result-object v0

    #@17
    check-cast v0, Lcom/android/internal/telephony/dataconnection/ApnContext;

    #@19
    .line 1230
    .local v0, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->isEnabled()Z

    #@1c
    move-result v5

    #@1d
    if-eqz v5, :cond_0

    #@1f
    .line 1231
    const/4 v2, 0x1

    #@20
    .line 1232
    invoke-static {}, Lcom/android/internal/telephony/dataconnection/DcTracker;->-getcom-android-internal-telephony-DctConstants$StateSwitchesValues()[I

    #@23
    move-result-object v5

    #@24
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getState()Lcom/android/internal/telephony/DctConstants$State;

    #@27
    move-result-object v6

    #@28
    invoke-virtual {v6}, Lcom/android/internal/telephony/DctConstants$State;->ordinal()I

    #@2b
    move-result v6

    #@2c
    aget v5, v5, v6

    #@2e
    packed-switch v5, :pswitch_data_0

    #@31
    .line 1247
    :pswitch_0
    const/4 v2, 0x1

    #@32
    .line 1248
    goto :goto_0

    #@33
    .line 1236
    :pswitch_1
    sget-object v5, Lcom/android/internal/telephony/DctConstants$State;->CONNECTED:Lcom/android/internal/telephony/DctConstants$State;

    #@35
    return-object v5

    #@36
    .line 1239
    :pswitch_2
    const/4 v3, 0x1

    #@37
    .line 1240
    const/4 v4, 0x0

    #@38
    .line 1241
    goto :goto_0

    #@39
    .line 1244
    :pswitch_3
    const/4 v4, 0x0

    #@3a
    .line 1245
    goto :goto_0

    #@3b
    .line 1253
    .end local v0    # "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    :cond_1
    if-nez v2, :cond_2

    #@3d
    .line 1255
    sget-object v5, Lcom/android/internal/telephony/DctConstants$State;->IDLE:Lcom/android/internal/telephony/DctConstants$State;

    #@3f
    return-object v5

    #@40
    .line 1258
    :cond_2
    if-eqz v3, :cond_3

    #@42
    .line 1260
    sget-object v5, Lcom/android/internal/telephony/DctConstants$State;->CONNECTING:Lcom/android/internal/telephony/DctConstants$State;

    #@44
    return-object v5

    #@45
    .line 1261
    :cond_3
    if-nez v4, :cond_4

    #@47
    .line 1263
    sget-object v5, Lcom/android/internal/telephony/DctConstants$State;->IDLE:Lcom/android/internal/telephony/DctConstants$State;

    #@49
    return-object v5

    #@4a
    .line 1266
    :cond_4
    sget-object v5, Lcom/android/internal/telephony/DctConstants$State;->FAILED:Lcom/android/internal/telephony/DctConstants$State;

    #@4c
    return-object v5

    #@4d
    .line 1232
    nop

    #@4e
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getPcscfAddress(Ljava/lang/String;)[Ljava/lang/String;
    .locals 7
    .param p1, "apnType"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 4277
    const-string/jumbo v4, "getPcscfAddress()"

    #@4
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@7
    .line 4278
    const/4 v0, 0x0

    #@8
    .line 4280
    .local v0, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    if-nez p1, :cond_0

    #@a
    .line 4281
    const-string/jumbo v4, "apnType is null, return null"

    #@d
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@10
    .line 4282
    return-object v6

    #@11
    .line 4285
    :cond_0
    const-string/jumbo v4, "emergency"

    #@14
    invoke-static {p1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    #@17
    move-result v4

    #@18
    if-eqz v4, :cond_1

    #@1a
    .line 4286
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mApnContextsById:Landroid/util/SparseArray;

    #@1c
    const/16 v5, 0x9

    #@1e
    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@21
    move-result-object v0

    #@22
    .end local v0    # "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    check-cast v0, Lcom/android/internal/telephony/dataconnection/ApnContext;

    #@24
    .line 4294
    .local v0, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    :goto_0
    if-nez v0, :cond_3

    #@26
    .line 4295
    const-string/jumbo v4, "apnContext is null, return null"

    #@29
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@2c
    .line 4296
    return-object v6

    #@2d
    .line 4287
    .local v0, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    :cond_1
    const-string/jumbo v4, "ims"

    #@30
    invoke-static {p1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    #@33
    move-result v4

    #@34
    if-eqz v4, :cond_2

    #@36
    .line 4288
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mApnContextsById:Landroid/util/SparseArray;

    #@38
    const/4 v5, 0x5

    #@39
    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@3c
    move-result-object v0

    #@3d
    .end local v0    # "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    check-cast v0, Lcom/android/internal/telephony/dataconnection/ApnContext;

    #@3f
    .local v0, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    goto :goto_0

    #@40
    .line 4290
    .local v0, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    :cond_2
    const-string/jumbo v4, "apnType is invalid, return null"

    #@43
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@46
    .line 4291
    return-object v6

    #@47
    .line 4299
    .local v0, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    :cond_3
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getDcAc()Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;

    #@4a
    move-result-object v1

    #@4b
    .line 4300
    .local v1, "dcac":Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;
    const/4 v3, 0x0

    #@4c
    .line 4302
    .local v3, "result":[Ljava/lang/String;
    if-eqz v1, :cond_5

    #@4e
    .line 4303
    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->getPcscfAddr()[Ljava/lang/String;

    #@51
    move-result-object v3

    #@52
    .line 4305
    .local v3, "result":[Ljava/lang/String;
    const/4 v2, 0x0

    #@53
    .local v2, "i":I
    :goto_1
    array-length v4, v3

    #@54
    if-ge v2, v4, :cond_4

    #@56
    .line 4306
    new-instance v4, Ljava/lang/StringBuilder;

    #@58
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@5b
    const-string/jumbo v5, "Pcscf["

    #@5e
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@61
    move-result-object v4

    #@62
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@65
    move-result-object v4

    #@66
    const-string/jumbo v5, "]: "

    #@69
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6c
    move-result-object v4

    #@6d
    aget-object v5, v3, v2

    #@6f
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@72
    move-result-object v4

    #@73
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@76
    move-result-object v4

    #@77
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@7a
    .line 4305
    add-int/lit8 v2, v2, 0x1

    #@7c
    goto :goto_1

    #@7d
    .line 4308
    :cond_4
    return-object v3

    #@7e
    .line 4310
    .end local v2    # "i":I
    .local v3, "result":[Ljava/lang/String;
    :cond_5
    return-object v6
.end method

.method public getState(Ljava/lang/String;)Lcom/android/internal/telephony/DctConstants$State;
    .locals 2
    .param p1, "apnType"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1207
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    #@2
    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/android/internal/telephony/dataconnection/ApnContext;

    #@8
    .line 1208
    .local v0, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    if-eqz v0, :cond_0

    #@a
    .line 1209
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getState()Lcom/android/internal/telephony/DctConstants$State;

    #@d
    move-result-object v1

    #@e
    return-object v1

    #@f
    .line 1211
    :cond_0
    sget-object v1, Lcom/android/internal/telephony/DctConstants$State;->FAILED:Lcom/android/internal/telephony/DctConstants$State;

    #@11
    return-object v1
.end method

.method public getSubId()J
    .locals 2

    #@0
    .prologue
    .line 946
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    #@2
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    #@5
    move-result v0

    #@6
    int-to-long v0, v0

    #@7
    return-wide v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 20
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 3656
    move-object/from16 v0, p1

    #@2
    iget v0, v0, Landroid/os/Message;->what:I

    #@4
    move/from16 v17, v0

    #@6
    sparse-switch v17, :sswitch_data_0

    #@9
    .line 3998
    const-string/jumbo v17, "DcTracker"

    #@c
    new-instance v18, Ljava/lang/StringBuilder;

    #@e
    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    #@11
    const-string/jumbo v19, "Unhandled event="

    #@14
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v18

    #@18
    move-object/from16 v0, v18

    #@1a
    move-object/from16 v1, p1

    #@1c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v18

    #@20
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@23
    move-result-object v18

    #@24
    invoke-static/range {v17 .. v18}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@27
    .line 3653
    :cond_0
    :goto_0
    :sswitch_0
    return-void

    #@28
    .line 3660
    :sswitch_1
    move-object/from16 v0, p0

    #@2a
    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    #@2c
    move-object/from16 v17, v0

    #@2e
    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/Phone;->getSubId()I

    #@31
    move-result v14

    #@32
    .line 3661
    .local v14, "subId":I
    invoke-static {v14}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    #@35
    move-result v17

    #@36
    if-eqz v17, :cond_1

    #@38
    .line 3662
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->onRecordsLoadedOrSubIdChanged()V

    #@3b
    goto :goto_0

    #@3c
    .line 3664
    :cond_1
    new-instance v17, Ljava/lang/StringBuilder;

    #@3e
    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    #@41
    const-string/jumbo v18, "Ignoring EVENT_RECORDS_LOADED as subId is not valid: "

    #@44
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v17

    #@48
    move-object/from16 v0, v17

    #@4a
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v17

    #@4e
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@51
    move-result-object v17

    #@52
    move-object/from16 v0, p0

    #@54
    move-object/from16 v1, v17

    #@56
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@59
    goto :goto_0

    #@5a
    .line 3669
    .end local v14    # "subId":I
    :sswitch_2
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->onDataConnectionDetached()V

    #@5d
    goto :goto_0

    #@5e
    .line 3673
    :sswitch_3
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->onDataConnectionAttached()V

    #@61
    goto :goto_0

    #@62
    .line 3677
    :sswitch_4
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->doRecovery()V

    #@65
    goto :goto_0

    #@66
    .line 3681
    :sswitch_5
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->onApnChanged()V

    #@69
    goto :goto_0

    #@6a
    .line 3691
    :sswitch_6
    new-instance v17, Ljava/lang/StringBuilder;

    #@6c
    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    #@6f
    const-string/jumbo v18, "EVENT_PS_RESTRICT_ENABLED "

    #@72
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@75
    move-result-object v17

    #@76
    move-object/from16 v0, p0

    #@78
    iget-boolean v0, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mIsPsRestricted:Z

    #@7a
    move/from16 v18, v0

    #@7c
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@7f
    move-result-object v17

    #@80
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@83
    move-result-object v17

    #@84
    move-object/from16 v0, p0

    #@86
    move-object/from16 v1, v17

    #@88
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@8b
    .line 3692
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->stopNetStatPoll()V

    #@8e
    .line 3693
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->stopDataStallAlarm()V

    #@91
    .line 3694
    const/16 v17, 0x1

    #@93
    move/from16 v0, v17

    #@95
    move-object/from16 v1, p0

    #@97
    iput-boolean v0, v1, Lcom/android/internal/telephony/dataconnection/DcTracker;->mIsPsRestricted:Z

    #@99
    goto :goto_0

    #@9a
    .line 3702
    :sswitch_7
    new-instance v17, Ljava/lang/StringBuilder;

    #@9c
    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    #@9f
    const-string/jumbo v18, "EVENT_PS_RESTRICT_DISABLED "

    #@a2
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a5
    move-result-object v17

    #@a6
    move-object/from16 v0, p0

    #@a8
    iget-boolean v0, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mIsPsRestricted:Z

    #@aa
    move/from16 v18, v0

    #@ac
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@af
    move-result-object v17

    #@b0
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b3
    move-result-object v17

    #@b4
    move-object/from16 v0, p0

    #@b6
    move-object/from16 v1, v17

    #@b8
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@bb
    .line 3703
    const/16 v17, 0x0

    #@bd
    move/from16 v0, v17

    #@bf
    move-object/from16 v1, p0

    #@c1
    iput-boolean v0, v1, Lcom/android/internal/telephony/dataconnection/DcTracker;->mIsPsRestricted:Z

    #@c3
    .line 3704
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->isConnected()Z

    #@c6
    move-result v17

    #@c7
    if-eqz v17, :cond_2

    #@c9
    .line 3705
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->startNetStatPoll()V

    #@cc
    .line 3706
    const/16 v17, 0x0

    #@ce
    move-object/from16 v0, p0

    #@d0
    move/from16 v1, v17

    #@d2
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->startDataStallAlarm(Z)V

    #@d5
    goto/16 :goto_0

    #@d7
    .line 3709
    :cond_2
    move-object/from16 v0, p0

    #@d9
    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mState:Lcom/android/internal/telephony/DctConstants$State;

    #@db
    move-object/from16 v17, v0

    #@dd
    sget-object v18, Lcom/android/internal/telephony/DctConstants$State;->FAILED:Lcom/android/internal/telephony/DctConstants$State;

    #@df
    move-object/from16 v0, v17

    #@e1
    move-object/from16 v1, v18

    #@e3
    if-ne v0, v1, :cond_3

    #@e5
    .line 3710
    const-string/jumbo v17, "psRestrictEnabled"

    #@e8
    const/16 v18, 0x0

    #@ea
    move-object/from16 v0, p0

    #@ec
    move/from16 v1, v18

    #@ee
    move-object/from16 v2, v17

    #@f0
    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->cleanUpAllConnections(ZLjava/lang/String;)Z

    #@f3
    .line 3711
    const/16 v17, 0x0

    #@f5
    move/from16 v0, v17

    #@f7
    move-object/from16 v1, p0

    #@f9
    iput-boolean v0, v1, Lcom/android/internal/telephony/dataconnection/DcTracker;->mReregisterOnReconnectFailure:Z

    #@fb
    .line 3713
    :cond_3
    move-object/from16 v0, p0

    #@fd
    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mApnContextsById:Landroid/util/SparseArray;

    #@ff
    move-object/from16 v17, v0

    #@101
    const/16 v18, 0x0

    #@103
    invoke-virtual/range {v17 .. v18}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@106
    move-result-object v4

    #@107
    check-cast v4, Lcom/android/internal/telephony/dataconnection/ApnContext;

    #@109
    .line 3714
    .local v4, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    if-eqz v4, :cond_4

    #@10b
    .line 3715
    const-string/jumbo v17, "psRestrictEnabled"

    #@10e
    move-object/from16 v0, v17

    #@110
    invoke-virtual {v4, v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setReason(Ljava/lang/String;)V

    #@113
    .line 3716
    move-object/from16 v0, p0

    #@115
    invoke-direct {v0, v4}, Lcom/android/internal/telephony/dataconnection/DcTracker;->trySetupData(Lcom/android/internal/telephony/dataconnection/ApnContext;)Z

    #@118
    goto/16 :goto_0

    #@11a
    .line 3718
    :cond_4
    const-string/jumbo v17, "**** Default ApnContext not found ****"

    #@11d
    move-object/from16 v0, p0

    #@11f
    move-object/from16 v1, v17

    #@121
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->loge(Ljava/lang/String;)V

    #@124
    .line 3719
    sget-boolean v17, Landroid/os/Build;->IS_DEBUGGABLE:Z

    #@126
    if-eqz v17, :cond_0

    #@128
    .line 3720
    new-instance v17, Ljava/lang/RuntimeException;

    #@12a
    const-string/jumbo v18, "Default ApnContext not found"

    #@12d
    invoke-direct/range {v17 .. v18}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@130
    throw v17

    #@131
    .line 3727
    .end local v4    # "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    :sswitch_8
    move-object/from16 v0, p1

    #@133
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@135
    move-object/from16 v17, v0

    #@137
    move-object/from16 v0, v17

    #@139
    instance-of v0, v0, Lcom/android/internal/telephony/dataconnection/ApnContext;

    #@13b
    move/from16 v17, v0

    #@13d
    if-eqz v17, :cond_5

    #@13f
    .line 3728
    move-object/from16 v0, p1

    #@141
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@143
    move-object/from16 v17, v0

    #@145
    check-cast v17, Lcom/android/internal/telephony/dataconnection/ApnContext;

    #@147
    move-object/from16 v0, p0

    #@149
    move-object/from16 v1, v17

    #@14b
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->onTrySetupData(Lcom/android/internal/telephony/dataconnection/ApnContext;)Z

    #@14e
    goto/16 :goto_0

    #@150
    .line 3729
    :cond_5
    move-object/from16 v0, p1

    #@152
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@154
    move-object/from16 v17, v0

    #@156
    move-object/from16 v0, v17

    #@158
    instance-of v0, v0, Ljava/lang/String;

    #@15a
    move/from16 v17, v0

    #@15c
    if-eqz v17, :cond_6

    #@15e
    .line 3730
    move-object/from16 v0, p1

    #@160
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@162
    move-object/from16 v17, v0

    #@164
    check-cast v17, Ljava/lang/String;

    #@166
    move-object/from16 v0, p0

    #@168
    move-object/from16 v1, v17

    #@16a
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->onTrySetupData(Ljava/lang/String;)Z

    #@16d
    goto/16 :goto_0

    #@16f
    .line 3732
    :cond_6
    const-string/jumbo v17, "EVENT_TRY_SETUP request w/o apnContext or String"

    #@172
    move-object/from16 v0, p0

    #@174
    move-object/from16 v1, v17

    #@176
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->loge(Ljava/lang/String;)V

    #@179
    goto/16 :goto_0

    #@17b
    .line 3737
    :sswitch_9
    move-object/from16 v0, p1

    #@17d
    iget v0, v0, Landroid/os/Message;->arg1:I

    #@17f
    move/from16 v17, v0

    #@181
    if-nez v17, :cond_7

    #@183
    const/4 v15, 0x0

    #@184
    .line 3738
    .local v15, "tearDown":Z
    :goto_1
    new-instance v17, Ljava/lang/StringBuilder;

    #@186
    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    #@189
    const-string/jumbo v18, "EVENT_CLEAN_UP_CONNECTION tearDown="

    #@18c
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18f
    move-result-object v17

    #@190
    move-object/from16 v0, v17

    #@192
    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@195
    move-result-object v17

    #@196
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@199
    move-result-object v17

    #@19a
    move-object/from16 v0, p0

    #@19c
    move-object/from16 v1, v17

    #@19e
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@1a1
    .line 3739
    move-object/from16 v0, p1

    #@1a3
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@1a5
    move-object/from16 v17, v0

    #@1a7
    move-object/from16 v0, v17

    #@1a9
    instance-of v0, v0, Lcom/android/internal/telephony/dataconnection/ApnContext;

    #@1ab
    move/from16 v17, v0

    #@1ad
    if-eqz v17, :cond_8

    #@1af
    .line 3740
    move-object/from16 v0, p1

    #@1b1
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@1b3
    move-object/from16 v17, v0

    #@1b5
    check-cast v17, Lcom/android/internal/telephony/dataconnection/ApnContext;

    #@1b7
    move-object/from16 v0, p0

    #@1b9
    move-object/from16 v1, v17

    #@1bb
    invoke-direct {v0, v15, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->cleanUpConnection(ZLcom/android/internal/telephony/dataconnection/ApnContext;)V

    #@1be
    goto/16 :goto_0

    #@1c0
    .line 3737
    .end local v15    # "tearDown":Z
    :cond_7
    const/4 v15, 0x1

    #@1c1
    .restart local v15    # "tearDown":Z
    goto :goto_1

    #@1c2
    .line 3742
    :cond_8
    move-object/from16 v0, p1

    #@1c4
    iget v0, v0, Landroid/os/Message;->arg2:I

    #@1c6
    move/from16 v18, v0

    #@1c8
    move-object/from16 v0, p1

    #@1ca
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@1cc
    move-object/from16 v17, v0

    #@1ce
    check-cast v17, Ljava/lang/String;

    #@1d0
    move-object/from16 v0, p0

    #@1d2
    move/from16 v1, v18

    #@1d4
    move-object/from16 v2, v17

    #@1d6
    invoke-direct {v0, v15, v1, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->onCleanUpConnection(ZILjava/lang/String;)V

    #@1d9
    goto/16 :goto_0

    #@1db
    .line 3746
    .end local v15    # "tearDown":Z
    :sswitch_a
    move-object/from16 v0, p1

    #@1dd
    iget v0, v0, Landroid/os/Message;->arg1:I

    #@1df
    move/from16 v17, v0

    #@1e1
    const/16 v18, 0x1

    #@1e3
    move/from16 v0, v17

    #@1e5
    move/from16 v1, v18

    #@1e7
    if-ne v0, v1, :cond_9

    #@1e9
    const/4 v10, 0x1

    #@1ea
    .line 3747
    .local v10, "enabled":Z
    :goto_2
    move-object/from16 v0, p1

    #@1ec
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@1ee
    move-object/from16 v17, v0

    #@1f0
    check-cast v17, Landroid/os/Message;

    #@1f2
    move-object/from16 v0, p0

    #@1f4
    move-object/from16 v1, v17

    #@1f6
    invoke-direct {v0, v10, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->onSetInternalDataEnabled(ZLandroid/os/Message;)V

    #@1f9
    goto/16 :goto_0

    #@1fb
    .line 3746
    .end local v10    # "enabled":Z
    :cond_9
    const/4 v10, 0x0

    #@1fc
    .restart local v10    # "enabled":Z
    goto :goto_2

    #@1fd
    .line 3751
    .end local v10    # "enabled":Z
    :sswitch_b
    move-object/from16 v0, p1

    #@1ff
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@201
    move-object/from16 v17, v0

    #@203
    if-eqz v17, :cond_a

    #@205
    move-object/from16 v0, p1

    #@207
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@209
    move-object/from16 v17, v0

    #@20b
    move-object/from16 v0, v17

    #@20d
    instance-of v0, v0, Ljava/lang/String;

    #@20f
    move/from16 v17, v0

    #@211
    if-nez v17, :cond_a

    #@213
    .line 3752
    const/16 v17, 0x0

    #@215
    move-object/from16 v0, v17

    #@217
    move-object/from16 v1, p1

    #@219
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@21b
    .line 3754
    :cond_a
    move-object/from16 v0, p1

    #@21d
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@21f
    move-object/from16 v17, v0

    #@221
    check-cast v17, Ljava/lang/String;

    #@223
    move-object/from16 v0, p0

    #@225
    move-object/from16 v1, v17

    #@227
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->onCleanUpAllConnections(Ljava/lang/String;)V

    #@22a
    goto/16 :goto_0

    #@22c
    .line 3759
    :sswitch_c
    const-string/jumbo v17, "nwTypeChanged"

    #@22f
    .line 3760
    sget-object v18, Lcom/android/internal/telephony/dataconnection/DcTracker$RetryFailures;->ONLY_ON_CHANGE:Lcom/android/internal/telephony/dataconnection/DcTracker$RetryFailures;

    #@231
    .line 3759
    move-object/from16 v0, p0

    #@233
    move-object/from16 v1, v17

    #@235
    move-object/from16 v2, v18

    #@237
    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->setupDataOnConnectableApns(Ljava/lang/String;Lcom/android/internal/telephony/dataconnection/DcTracker$RetryFailures;)V

    #@23a
    goto/16 :goto_0

    #@23c
    .line 3765
    :sswitch_d
    move-object/from16 v0, p0

    #@23e
    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mProvisioningSpinner:Landroid/app/ProgressDialog;

    #@240
    move-object/from16 v17, v0

    #@242
    move-object/from16 v0, p1

    #@244
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@246
    move-object/from16 v18, v0

    #@248
    move-object/from16 v0, v17

    #@24a
    move-object/from16 v1, v18

    #@24c
    if-ne v0, v1, :cond_0

    #@24e
    .line 3766
    move-object/from16 v0, p0

    #@250
    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mProvisioningSpinner:Landroid/app/ProgressDialog;

    #@252
    move-object/from16 v17, v0

    #@254
    invoke-virtual/range {v17 .. v17}, Landroid/app/ProgressDialog;->dismiss()V

    #@257
    .line 3767
    const/16 v17, 0x0

    #@259
    move-object/from16 v0, v17

    #@25b
    move-object/from16 v1, p0

    #@25d
    iput-object v0, v1, Lcom/android/internal/telephony/dataconnection/DcTracker;->mProvisioningSpinner:Landroid/app/ProgressDialog;

    #@25f
    goto/16 :goto_0

    #@261
    .line 3771
    :sswitch_e
    new-instance v17, Ljava/lang/StringBuilder;

    #@263
    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    #@266
    const-string/jumbo v18, "DISCONNECTED_CONNECTED: msg="

    #@269
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26c
    move-result-object v17

    #@26d
    move-object/from16 v0, v17

    #@26f
    move-object/from16 v1, p1

    #@271
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@274
    move-result-object v17

    #@275
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@278
    move-result-object v17

    #@279
    move-object/from16 v0, p0

    #@27b
    move-object/from16 v1, v17

    #@27d
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@280
    .line 3772
    move-object/from16 v0, p1

    #@282
    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@284
    check-cast v8, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;

    #@286
    .line 3773
    .local v8, "dcac":Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;
    move-object/from16 v0, p0

    #@288
    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDataConnectionAcHashMap:Ljava/util/HashMap;

    #@28a
    move-object/from16 v17, v0

    #@28c
    invoke-virtual {v8}, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->getDataConnectionIdSync()I

    #@28f
    move-result v18

    #@290
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@293
    move-result-object v18

    #@294
    invoke-virtual/range {v17 .. v18}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@297
    .line 3774
    invoke-virtual {v8}, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->disconnected()V

    #@29a
    goto/16 :goto_0

    #@29c
    .line 3778
    .end local v8    # "dcac":Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;
    :sswitch_f
    move-object/from16 v0, p1

    #@29e
    iget v0, v0, Landroid/os/Message;->arg1:I

    #@2a0
    move/from16 v17, v0

    #@2a2
    move-object/from16 v0, p1

    #@2a4
    iget v0, v0, Landroid/os/Message;->arg2:I

    #@2a6
    move/from16 v18, v0

    #@2a8
    move-object/from16 v0, p0

    #@2aa
    move/from16 v1, v17

    #@2ac
    move/from16 v2, v18

    #@2ae
    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->onEnableApn(II)V

    #@2b1
    goto/16 :goto_0

    #@2b3
    .line 3782
    :sswitch_10
    move-object/from16 v0, p1

    #@2b5
    iget v0, v0, Landroid/os/Message;->arg1:I

    #@2b7
    move/from16 v17, v0

    #@2b9
    move-object/from16 v0, p0

    #@2bb
    move/from16 v1, v17

    #@2bd
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->onDataStallAlarm(I)V

    #@2c0
    goto/16 :goto_0

    #@2c2
    .line 3786
    :sswitch_11
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->onRoamingOff()V

    #@2c5
    goto/16 :goto_0

    #@2c7
    .line 3790
    :sswitch_12
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->onRoamingOn()V

    #@2ca
    goto/16 :goto_0

    #@2cc
    .line 3794
    :sswitch_13
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->onDeviceProvisionedChange()V

    #@2cf
    goto/16 :goto_0

    #@2d1
    .line 3798
    :sswitch_14
    move-object/from16 v0, p1

    #@2d3
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@2d5
    move-object/from16 v16, v0

    #@2d7
    check-cast v16, Ljava/lang/String;

    #@2d9
    .line 3799
    .local v16, "url":Ljava/lang/String;
    new-instance v17, Ljava/lang/StringBuilder;

    #@2db
    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    #@2de
    const-string/jumbo v18, "dataConnectionTracker.handleMessage: EVENT_REDIRECTION_DETECTED="

    #@2e1
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e4
    move-result-object v17

    #@2e5
    move-object/from16 v0, v17

    #@2e7
    move-object/from16 v1, v16

    #@2e9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2ec
    move-result-object v17

    #@2ed
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2f0
    move-result-object v17

    #@2f1
    move-object/from16 v0, p0

    #@2f3
    move-object/from16 v1, v17

    #@2f5
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@2f8
    .line 3800
    move-object/from16 v0, p0

    #@2fa
    move-object/from16 v1, v16

    #@2fc
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->onDataConnectionRedirected(Ljava/lang/String;)V

    #@2ff
    .line 3803
    .end local v16    # "url":Ljava/lang/String;
    :sswitch_15
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->onRadioAvailable()V

    #@302
    goto/16 :goto_0

    #@304
    .line 3807
    :sswitch_16
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->onRadioOffOrNotAvailable()V

    #@307
    goto/16 :goto_0

    #@309
    .line 3811
    :sswitch_17
    move-object/from16 v0, p1

    #@30b
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@30d
    move-object/from16 v17, v0

    #@30f
    check-cast v17, Landroid/os/AsyncResult;

    #@311
    move-object/from16 v0, p0

    #@313
    move-object/from16 v1, v17

    #@315
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->onDataSetupComplete(Landroid/os/AsyncResult;)V

    #@318
    goto/16 :goto_0

    #@31a
    .line 3815
    :sswitch_18
    move-object/from16 v0, p1

    #@31c
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@31e
    move-object/from16 v17, v0

    #@320
    check-cast v17, Landroid/os/AsyncResult;

    #@322
    move-object/from16 v0, p0

    #@324
    move-object/from16 v1, v17

    #@326
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->onDataSetupCompleteError(Landroid/os/AsyncResult;)V

    #@329
    goto/16 :goto_0

    #@32b
    .line 3819
    :sswitch_19
    new-instance v17, Ljava/lang/StringBuilder;

    #@32d
    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    #@330
    const-string/jumbo v18, "DataConnectionTracker.handleMessage: EVENT_DISCONNECT_DONE msg="

    #@333
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@336
    move-result-object v17

    #@337
    move-object/from16 v0, v17

    #@339
    move-object/from16 v1, p1

    #@33b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@33e
    move-result-object v17

    #@33f
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@342
    move-result-object v17

    #@343
    move-object/from16 v0, p0

    #@345
    move-object/from16 v1, v17

    #@347
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@34a
    .line 3820
    move-object/from16 v0, p1

    #@34c
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@34e
    move-object/from16 v17, v0

    #@350
    check-cast v17, Landroid/os/AsyncResult;

    #@352
    move-object/from16 v0, p0

    #@354
    move-object/from16 v1, v17

    #@356
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->onDisconnectDone(Landroid/os/AsyncResult;)V

    #@359
    goto/16 :goto_0

    #@35b
    .line 3824
    :sswitch_1a
    new-instance v17, Ljava/lang/StringBuilder;

    #@35d
    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    #@360
    const-string/jumbo v18, "DataConnectionTracker.handleMessage: EVENT_DISCONNECT_DC_RETRYING msg="

    #@363
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@366
    move-result-object v17

    #@367
    move-object/from16 v0, v17

    #@369
    move-object/from16 v1, p1

    #@36b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@36e
    move-result-object v17

    #@36f
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@372
    move-result-object v17

    #@373
    move-object/from16 v0, p0

    #@375
    move-object/from16 v1, v17

    #@377
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@37a
    .line 3825
    move-object/from16 v0, p1

    #@37c
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@37e
    move-object/from16 v17, v0

    #@380
    check-cast v17, Landroid/os/AsyncResult;

    #@382
    move-object/from16 v0, p0

    #@384
    move-object/from16 v1, v17

    #@386
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->onDisconnectDcRetrying(Landroid/os/AsyncResult;)V

    #@389
    goto/16 :goto_0

    #@38b
    .line 3829
    :sswitch_1b
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->onVoiceCallStarted()V

    #@38e
    goto/16 :goto_0

    #@390
    .line 3833
    :sswitch_1c
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->onVoiceCallEnded()V

    #@393
    goto/16 :goto_0

    #@395
    .line 3837
    :sswitch_1d
    const-string/jumbo v17, "EVENT_RESET_DONE"

    #@398
    move-object/from16 v0, p0

    #@39a
    move-object/from16 v1, v17

    #@39c
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@39f
    .line 3838
    move-object/from16 v0, p1

    #@3a1
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@3a3
    move-object/from16 v17, v0

    #@3a5
    check-cast v17, Landroid/os/AsyncResult;

    #@3a7
    move-object/from16 v0, p0

    #@3a9
    move-object/from16 v1, v17

    #@3ab
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->onResetDone(Landroid/os/AsyncResult;)V

    #@3ae
    goto/16 :goto_0

    #@3b0
    .line 3842
    :sswitch_1e
    move-object/from16 v0, p1

    #@3b2
    iget v0, v0, Landroid/os/Message;->arg1:I

    #@3b4
    move/from16 v17, v0

    #@3b6
    const/16 v18, 0x1

    #@3b8
    move/from16 v0, v17

    #@3ba
    move/from16 v1, v18

    #@3bc
    if-ne v0, v1, :cond_b

    #@3be
    const/4 v10, 0x1

    #@3bf
    .line 3843
    .restart local v10    # "enabled":Z
    :goto_3
    new-instance v17, Ljava/lang/StringBuilder;

    #@3c1
    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    #@3c4
    const-string/jumbo v18, "CMD_SET_USER_DATA_ENABLE enabled="

    #@3c7
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3ca
    move-result-object v17

    #@3cb
    move-object/from16 v0, v17

    #@3cd
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@3d0
    move-result-object v17

    #@3d1
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3d4
    move-result-object v17

    #@3d5
    move-object/from16 v0, p0

    #@3d7
    move-object/from16 v1, v17

    #@3d9
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@3dc
    .line 3844
    move-object/from16 v0, p0

    #@3de
    invoke-direct {v0, v10}, Lcom/android/internal/telephony/dataconnection/DcTracker;->onSetUserDataEnabled(Z)V

    #@3e1
    goto/16 :goto_0

    #@3e3
    .line 3842
    .end local v10    # "enabled":Z
    :cond_b
    const/4 v10, 0x0

    #@3e4
    .restart local v10    # "enabled":Z
    goto :goto_3

    #@3e5
    .line 3849
    .end local v10    # "enabled":Z
    :sswitch_1f
    move-object/from16 v0, p1

    #@3e7
    iget v0, v0, Landroid/os/Message;->arg1:I

    #@3e9
    move/from16 v17, v0

    #@3eb
    const/16 v18, 0x1

    #@3ed
    move/from16 v0, v17

    #@3ef
    move/from16 v1, v18

    #@3f1
    if-ne v0, v1, :cond_c

    #@3f3
    const/4 v12, 0x1

    #@3f4
    .line 3850
    .local v12, "met":Z
    :goto_4
    new-instance v17, Ljava/lang/StringBuilder;

    #@3f6
    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    #@3f9
    const-string/jumbo v18, "CMD_SET_DEPENDENCY_MET met="

    #@3fc
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3ff
    move-result-object v17

    #@400
    move-object/from16 v0, v17

    #@402
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@405
    move-result-object v17

    #@406
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@409
    move-result-object v17

    #@40a
    move-object/from16 v0, p0

    #@40c
    move-object/from16 v1, v17

    #@40e
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@411
    .line 3851
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    #@414
    move-result-object v7

    #@415
    .line 3852
    .local v7, "bundle":Landroid/os/Bundle;
    if-eqz v7, :cond_0

    #@417
    .line 3853
    const-string/jumbo v17, "apnType"

    #@41a
    move-object/from16 v0, v17

    #@41c
    invoke-virtual {v7, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    #@41f
    move-result-object v6

    #@420
    check-cast v6, Ljava/lang/String;

    #@422
    .line 3854
    .local v6, "apnType":Ljava/lang/String;
    if-eqz v6, :cond_0

    #@424
    .line 3855
    move-object/from16 v0, p0

    #@426
    invoke-direct {v0, v6, v12}, Lcom/android/internal/telephony/dataconnection/DcTracker;->onSetDependencyMet(Ljava/lang/String;Z)V

    #@429
    goto/16 :goto_0

    #@42b
    .line 3849
    .end local v6    # "apnType":Ljava/lang/String;
    .end local v7    # "bundle":Landroid/os/Bundle;
    .end local v12    # "met":Z
    :cond_c
    const/4 v12, 0x0

    #@42c
    .restart local v12    # "met":Z
    goto :goto_4

    #@42d
    .line 3861
    .end local v12    # "met":Z
    :sswitch_20
    move-object/from16 v0, p1

    #@42f
    iget v0, v0, Landroid/os/Message;->arg1:I

    #@431
    move/from16 v17, v0

    #@433
    const/16 v18, 0x1

    #@435
    move/from16 v0, v17

    #@437
    move/from16 v1, v18

    #@439
    if-ne v0, v1, :cond_d

    #@43b
    const/4 v10, 0x1

    #@43c
    .line 3862
    .local v10, "enabled":Z
    :goto_5
    move-object/from16 v0, p0

    #@43e
    invoke-direct {v0, v10}, Lcom/android/internal/telephony/dataconnection/DcTracker;->onSetPolicyDataEnabled(Z)V

    #@441
    goto/16 :goto_0

    #@443
    .line 3861
    .end local v10    # "enabled":Z
    :cond_d
    const/4 v10, 0x0

    #@444
    goto :goto_5

    #@445
    .line 3866
    :sswitch_21
    sget v18, Lcom/android/internal/telephony/dataconnection/DcTracker;->sEnableFailFastRefCounter:I

    #@447
    move-object/from16 v0, p1

    #@449
    iget v0, v0, Landroid/os/Message;->arg1:I

    #@44b
    move/from16 v17, v0

    #@44d
    const/16 v19, 0x1

    #@44f
    move/from16 v0, v17

    #@451
    move/from16 v1, v19

    #@453
    if-ne v0, v1, :cond_10

    #@455
    const/16 v17, 0x1

    #@457
    :goto_6
    add-int v17, v17, v18

    #@459
    sput v17, Lcom/android/internal/telephony/dataconnection/DcTracker;->sEnableFailFastRefCounter:I

    #@45b
    .line 3868
    new-instance v17, Ljava/lang/StringBuilder;

    #@45d
    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    #@460
    const-string/jumbo v18, "CMD_SET_ENABLE_FAIL_FAST_MOBILE_DATA:  sEnableFailFastRefCounter="

    #@463
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@466
    move-result-object v17

    #@467
    .line 3869
    sget v18, Lcom/android/internal/telephony/dataconnection/DcTracker;->sEnableFailFastRefCounter:I

    #@469
    .line 3868
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@46c
    move-result-object v17

    #@46d
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@470
    move-result-object v17

    #@471
    move-object/from16 v0, p0

    #@473
    move-object/from16 v1, v17

    #@475
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@478
    .line 3871
    sget v17, Lcom/android/internal/telephony/dataconnection/DcTracker;->sEnableFailFastRefCounter:I

    #@47a
    if-gez v17, :cond_e

    #@47c
    .line 3872
    new-instance v17, Ljava/lang/StringBuilder;

    #@47e
    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    #@481
    const-string/jumbo v18, "CMD_SET_ENABLE_FAIL_FAST_MOBILE_DATA: sEnableFailFastRefCounter:"

    #@484
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@487
    move-result-object v17

    #@488
    .line 3873
    sget v18, Lcom/android/internal/telephony/dataconnection/DcTracker;->sEnableFailFastRefCounter:I

    #@48a
    .line 3872
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@48d
    move-result-object v17

    #@48e
    .line 3873
    const-string/jumbo v18, " < 0"

    #@491
    .line 3872
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@494
    move-result-object v17

    #@495
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@498
    move-result-object v13

    #@499
    .line 3874
    .local v13, "s":Ljava/lang/String;
    move-object/from16 v0, p0

    #@49b
    invoke-direct {v0, v13}, Lcom/android/internal/telephony/dataconnection/DcTracker;->loge(Ljava/lang/String;)V

    #@49e
    .line 3875
    const/16 v17, 0x0

    #@4a0
    sput v17, Lcom/android/internal/telephony/dataconnection/DcTracker;->sEnableFailFastRefCounter:I

    #@4a2
    .line 3877
    .end local v13    # "s":Ljava/lang/String;
    :cond_e
    sget v17, Lcom/android/internal/telephony/dataconnection/DcTracker;->sEnableFailFastRefCounter:I

    #@4a4
    if-lez v17, :cond_11

    #@4a6
    const/4 v10, 0x1

    #@4a7
    .line 3879
    .local v10, "enabled":Z
    :goto_7
    new-instance v17, Ljava/lang/StringBuilder;

    #@4a9
    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    #@4ac
    const-string/jumbo v18, "CMD_SET_ENABLE_FAIL_FAST_MOBILE_DATA: enabled="

    #@4af
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b2
    move-result-object v17

    #@4b3
    move-object/from16 v0, v17

    #@4b5
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@4b8
    move-result-object v17

    #@4b9
    .line 3880
    const-string/jumbo v18, " sEnableFailFastRefCounter="

    #@4bc
    .line 3879
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4bf
    move-result-object v17

    #@4c0
    .line 3880
    sget v18, Lcom/android/internal/telephony/dataconnection/DcTracker;->sEnableFailFastRefCounter:I

    #@4c2
    .line 3879
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@4c5
    move-result-object v17

    #@4c6
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4c9
    move-result-object v17

    #@4ca
    move-object/from16 v0, p0

    #@4cc
    move-object/from16 v1, v17

    #@4ce
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@4d1
    .line 3882
    move-object/from16 v0, p0

    #@4d3
    iget-boolean v0, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mFailFast:Z

    #@4d5
    move/from16 v17, v0

    #@4d7
    move/from16 v0, v17

    #@4d9
    if-eq v0, v10, :cond_0

    #@4db
    .line 3883
    move-object/from16 v0, p0

    #@4dd
    iput-boolean v10, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mFailFast:Z

    #@4df
    .line 3885
    if-eqz v10, :cond_12

    #@4e1
    const/16 v17, 0x0

    #@4e3
    :goto_8
    move/from16 v0, v17

    #@4e5
    move-object/from16 v1, p0

    #@4e7
    iput-boolean v0, v1, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDataStallDetectionEnabled:Z

    #@4e9
    .line 3886
    move-object/from16 v0, p0

    #@4eb
    iget-boolean v0, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDataStallDetectionEnabled:Z

    #@4ed
    move/from16 v17, v0

    #@4ef
    if-eqz v17, :cond_13

    #@4f1
    .line 3887
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->getOverallState()Lcom/android/internal/telephony/DctConstants$State;

    #@4f4
    move-result-object v17

    #@4f5
    sget-object v18, Lcom/android/internal/telephony/DctConstants$State;->CONNECTED:Lcom/android/internal/telephony/DctConstants$State;

    #@4f7
    move-object/from16 v0, v17

    #@4f9
    move-object/from16 v1, v18

    #@4fb
    if-ne v0, v1, :cond_13

    #@4fd
    .line 3888
    move-object/from16 v0, p0

    #@4ff
    iget-boolean v0, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mInVoiceCall:Z

    #@501
    move/from16 v17, v0

    #@503
    if-eqz v17, :cond_f

    #@505
    .line 3889
    move-object/from16 v0, p0

    #@507
    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    #@509
    move-object/from16 v17, v0

    #@50b
    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    #@50e
    move-result-object v17

    #@50f
    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/ServiceStateTracker;->isConcurrentVoiceAndDataAllowed()Z

    #@512
    move-result v17

    #@513
    .line 3886
    if-eqz v17, :cond_13

    #@515
    .line 3891
    :cond_f
    const-string/jumbo v17, "CMD_SET_ENABLE_FAIL_FAST_MOBILE_DATA: start data stall"

    #@518
    move-object/from16 v0, p0

    #@51a
    move-object/from16 v1, v17

    #@51c
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@51f
    .line 3892
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->stopDataStallAlarm()V

    #@522
    .line 3893
    const/16 v17, 0x0

    #@524
    move-object/from16 v0, p0

    #@526
    move/from16 v1, v17

    #@528
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->startDataStallAlarm(Z)V

    #@52b
    goto/16 :goto_0

    #@52d
    .line 3866
    .end local v10    # "enabled":Z
    :cond_10
    const/16 v17, -0x1

    #@52f
    goto/16 :goto_6

    #@531
    .line 3877
    :cond_11
    const/4 v10, 0x0

    #@532
    .restart local v10    # "enabled":Z
    goto/16 :goto_7

    #@534
    .line 3885
    :cond_12
    const/16 v17, 0x1

    #@536
    goto :goto_8

    #@537
    .line 3895
    :cond_13
    const-string/jumbo v17, "CMD_SET_ENABLE_FAIL_FAST_MOBILE_DATA: stop data stall"

    #@53a
    move-object/from16 v0, p0

    #@53c
    move-object/from16 v1, v17

    #@53e
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@541
    .line 3896
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->stopDataStallAlarm()V

    #@544
    goto/16 :goto_0

    #@546
    .line 3903
    .end local v10    # "enabled":Z
    :sswitch_22
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    #@549
    move-result-object v7

    #@54a
    .line 3904
    .restart local v7    # "bundle":Landroid/os/Bundle;
    if-eqz v7, :cond_14

    #@54c
    .line 3906
    :try_start_0
    const-string/jumbo v17, "provisioningUrl"

    #@54f
    move-object/from16 v0, v17

    #@551
    invoke-virtual {v7, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    #@554
    move-result-object v17

    #@555
    check-cast v17, Ljava/lang/String;

    #@557
    move-object/from16 v0, v17

    #@559
    move-object/from16 v1, p0

    #@55b
    iput-object v0, v1, Lcom/android/internal/telephony/dataconnection/DcTracker;->mProvisioningUrl:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    #@55d
    .line 3912
    :cond_14
    :goto_9
    move-object/from16 v0, p0

    #@55f
    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mProvisioningUrl:Ljava/lang/String;

    #@561
    move-object/from16 v17, v0

    #@563
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@566
    move-result v17

    #@567
    if-eqz v17, :cond_15

    #@569
    .line 3913
    const-string/jumbo v17, "CMD_ENABLE_MOBILE_PROVISIONING: provisioning url is empty, ignoring"

    #@56c
    move-object/from16 v0, p0

    #@56e
    move-object/from16 v1, v17

    #@570
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->loge(Ljava/lang/String;)V

    #@573
    .line 3914
    const/16 v17, 0x0

    #@575
    move/from16 v0, v17

    #@577
    move-object/from16 v1, p0

    #@579
    iput-boolean v0, v1, Lcom/android/internal/telephony/dataconnection/DcTracker;->mIsProvisioning:Z

    #@57b
    .line 3915
    const/16 v17, 0x0

    #@57d
    move-object/from16 v0, v17

    #@57f
    move-object/from16 v1, p0

    #@581
    iput-object v0, v1, Lcom/android/internal/telephony/dataconnection/DcTracker;->mProvisioningUrl:Ljava/lang/String;

    #@583
    goto/16 :goto_0

    #@585
    .line 3907
    :catch_0
    move-exception v9

    #@586
    .line 3908
    .local v9, "e":Ljava/lang/ClassCastException;
    new-instance v17, Ljava/lang/StringBuilder;

    #@588
    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    #@58b
    const-string/jumbo v18, "CMD_ENABLE_MOBILE_PROVISIONING: provisioning url not a string"

    #@58e
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@591
    move-result-object v17

    #@592
    move-object/from16 v0, v17

    #@594
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@597
    move-result-object v17

    #@598
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@59b
    move-result-object v17

    #@59c
    move-object/from16 v0, p0

    #@59e
    move-object/from16 v1, v17

    #@5a0
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->loge(Ljava/lang/String;)V

    #@5a3
    .line 3909
    const/16 v17, 0x0

    #@5a5
    move-object/from16 v0, v17

    #@5a7
    move-object/from16 v1, p0

    #@5a9
    iput-object v0, v1, Lcom/android/internal/telephony/dataconnection/DcTracker;->mProvisioningUrl:Ljava/lang/String;

    #@5ab
    goto :goto_9

    #@5ac
    .line 3917
    .end local v9    # "e":Ljava/lang/ClassCastException;
    :cond_15
    new-instance v17, Ljava/lang/StringBuilder;

    #@5ae
    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    #@5b1
    const-string/jumbo v18, "CMD_ENABLE_MOBILE_PROVISIONING: provisioningUrl="

    #@5b4
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5b7
    move-result-object v17

    #@5b8
    move-object/from16 v0, p0

    #@5ba
    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mProvisioningUrl:Ljava/lang/String;

    #@5bc
    move-object/from16 v18, v0

    #@5be
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5c1
    move-result-object v17

    #@5c2
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5c5
    move-result-object v17

    #@5c6
    move-object/from16 v0, p0

    #@5c8
    move-object/from16 v1, v17

    #@5ca
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->loge(Ljava/lang/String;)V

    #@5cd
    .line 3918
    const/16 v17, 0x1

    #@5cf
    move/from16 v0, v17

    #@5d1
    move-object/from16 v1, p0

    #@5d3
    iput-boolean v0, v1, Lcom/android/internal/telephony/dataconnection/DcTracker;->mIsProvisioning:Z

    #@5d5
    .line 3919
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->startProvisioningApnAlarm()V

    #@5d8
    goto/16 :goto_0

    #@5da
    .line 3924
    .end local v7    # "bundle":Landroid/os/Bundle;
    :sswitch_23
    const-string/jumbo v17, "EVENT_PROVISIONING_APN_ALARM"

    #@5dd
    move-object/from16 v0, p0

    #@5df
    move-object/from16 v1, v17

    #@5e1
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@5e4
    .line 3925
    move-object/from16 v0, p0

    #@5e6
    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mApnContextsById:Landroid/util/SparseArray;

    #@5e8
    move-object/from16 v17, v0

    #@5ea
    const/16 v18, 0x0

    #@5ec
    invoke-virtual/range {v17 .. v18}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@5ef
    move-result-object v5

    #@5f0
    check-cast v5, Lcom/android/internal/telephony/dataconnection/ApnContext;

    #@5f2
    .line 3926
    .local v5, "apnCtx":Lcom/android/internal/telephony/dataconnection/ApnContext;
    invoke-virtual {v5}, Lcom/android/internal/telephony/dataconnection/ApnContext;->isProvisioningApn()Z

    #@5f5
    move-result v17

    #@5f6
    if-eqz v17, :cond_17

    #@5f8
    invoke-virtual {v5}, Lcom/android/internal/telephony/dataconnection/ApnContext;->isConnectedOrConnecting()Z

    #@5fb
    move-result v17

    #@5fc
    if-eqz v17, :cond_17

    #@5fe
    .line 3927
    move-object/from16 v0, p0

    #@600
    iget v0, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mProvisioningApnAlarmTag:I

    #@602
    move/from16 v17, v0

    #@604
    move-object/from16 v0, p1

    #@606
    iget v0, v0, Landroid/os/Message;->arg1:I

    #@608
    move/from16 v18, v0

    #@60a
    move/from16 v0, v17

    #@60c
    move/from16 v1, v18

    #@60e
    if-ne v0, v1, :cond_16

    #@610
    .line 3928
    const-string/jumbo v17, "EVENT_PROVISIONING_APN_ALARM: Disconnecting"

    #@613
    move-object/from16 v0, p0

    #@615
    move-object/from16 v1, v17

    #@617
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@61a
    .line 3929
    const/16 v17, 0x0

    #@61c
    move/from16 v0, v17

    #@61e
    move-object/from16 v1, p0

    #@620
    iput-boolean v0, v1, Lcom/android/internal/telephony/dataconnection/DcTracker;->mIsProvisioning:Z

    #@622
    .line 3930
    const/16 v17, 0x0

    #@624
    move-object/from16 v0, v17

    #@626
    move-object/from16 v1, p0

    #@628
    iput-object v0, v1, Lcom/android/internal/telephony/dataconnection/DcTracker;->mProvisioningUrl:Ljava/lang/String;

    #@62a
    .line 3931
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->stopProvisioningApnAlarm()V

    #@62d
    .line 3932
    const/16 v17, 0x1

    #@62f
    move-object/from16 v0, p0

    #@631
    move/from16 v1, v17

    #@633
    invoke-virtual {v0, v1, v5}, Lcom/android/internal/telephony/dataconnection/DcTracker;->sendCleanUpConnection(ZLcom/android/internal/telephony/dataconnection/ApnContext;)V

    #@636
    goto/16 :goto_0

    #@638
    .line 3935
    :cond_16
    new-instance v17, Ljava/lang/StringBuilder;

    #@63a
    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    #@63d
    const-string/jumbo v18, "EVENT_PROVISIONING_APN_ALARM: ignore stale tag, mProvisioningApnAlarmTag:"

    #@640
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@643
    move-result-object v17

    #@644
    .line 3936
    move-object/from16 v0, p0

    #@646
    iget v0, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mProvisioningApnAlarmTag:I

    #@648
    move/from16 v18, v0

    #@64a
    .line 3935
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@64d
    move-result-object v17

    #@64e
    .line 3937
    const-string/jumbo v18, " != arg1:"

    #@651
    .line 3935
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@654
    move-result-object v17

    #@655
    .line 3937
    move-object/from16 v0, p1

    #@657
    iget v0, v0, Landroid/os/Message;->arg1:I

    #@659
    move/from16 v18, v0

    #@65b
    .line 3935
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@65e
    move-result-object v17

    #@65f
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@662
    move-result-object v17

    #@663
    move-object/from16 v0, p0

    #@665
    move-object/from16 v1, v17

    #@667
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@66a
    goto/16 :goto_0

    #@66c
    .line 3941
    :cond_17
    const-string/jumbo v17, "EVENT_PROVISIONING_APN_ALARM: Not connected ignore"

    #@66f
    move-object/from16 v0, p0

    #@671
    move-object/from16 v1, v17

    #@673
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@676
    goto/16 :goto_0

    #@678
    .line 3946
    .end local v5    # "apnCtx":Lcom/android/internal/telephony/dataconnection/ApnContext;
    :sswitch_24
    const-string/jumbo v17, "CMD_IS_PROVISIONING_APN"

    #@67b
    move-object/from16 v0, p0

    #@67d
    move-object/from16 v1, v17

    #@67f
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@682
    .line 3949
    const/4 v6, 0x0

    #@683
    .line 3950
    .local v6, "apnType":Ljava/lang/String;
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    #@686
    move-result-object v7

    #@687
    .line 3951
    .restart local v7    # "bundle":Landroid/os/Bundle;
    if-eqz v7, :cond_18

    #@689
    .line 3952
    const-string/jumbo v17, "apnType"

    #@68c
    move-object/from16 v0, v17

    #@68e
    invoke-virtual {v7, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    #@691
    move-result-object v17

    #@692
    move-object/from16 v0, v17

    #@694
    check-cast v0, Ljava/lang/String;

    #@696
    move-object v6, v0

    #@697
    .line 3954
    .end local v6    # "apnType":Ljava/lang/String;
    :cond_18
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@69a
    move-result v17

    #@69b
    if-eqz v17, :cond_19

    #@69d
    .line 3955
    const-string/jumbo v17, "CMD_IS_PROVISIONING_APN: apnType is empty"

    #@6a0
    move-object/from16 v0, p0

    #@6a2
    move-object/from16 v1, v17

    #@6a4
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->loge(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    #@6a7
    .line 3956
    const/4 v11, 0x0

    #@6a8
    .line 3964
    .end local v7    # "bundle":Landroid/os/Bundle;
    :goto_a
    new-instance v17, Ljava/lang/StringBuilder;

    #@6aa
    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    #@6ad
    const-string/jumbo v18, "CMD_IS_PROVISIONING_APN: ret="

    #@6b0
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6b3
    move-result-object v17

    #@6b4
    move-object/from16 v0, v17

    #@6b6
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@6b9
    move-result-object v17

    #@6ba
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6bd
    move-result-object v17

    #@6be
    move-object/from16 v0, p0

    #@6c0
    move-object/from16 v1, v17

    #@6c2
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@6c5
    .line 3965
    move-object/from16 v0, p0

    #@6c7
    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mReplyAc:Lcom/android/internal/util/AsyncChannel;

    #@6c9
    move-object/from16 v18, v0

    #@6cb
    .line 3966
    if-eqz v11, :cond_1a

    #@6cd
    const/16 v17, 0x1

    #@6cf
    .line 3965
    :goto_b
    const v19, 0x42026

    #@6d2
    move-object/from16 v0, v18

    #@6d4
    move-object/from16 v1, p1

    #@6d6
    move/from16 v2, v19

    #@6d8
    move/from16 v3, v17

    #@6da
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    #@6dd
    goto/16 :goto_0

    #@6df
    .line 3958
    .restart local v7    # "bundle":Landroid/os/Bundle;
    :cond_19
    :try_start_2
    move-object/from16 v0, p0

    #@6e1
    invoke-direct {v0, v6}, Lcom/android/internal/telephony/dataconnection/DcTracker;->isProvisioningApn(Ljava/lang/String;)Z
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_1

    #@6e4
    move-result v11

    #@6e5
    .local v11, "isProvApn":Z
    goto :goto_a

    #@6e6
    .line 3960
    .end local v7    # "bundle":Landroid/os/Bundle;
    .end local v11    # "isProvApn":Z
    :catch_1
    move-exception v9

    #@6e7
    .line 3961
    .restart local v9    # "e":Ljava/lang/ClassCastException;
    const-string/jumbo v17, "CMD_IS_PROVISIONING_APN: NO provisioning url ignoring"

    #@6ea
    move-object/from16 v0, p0

    #@6ec
    move-object/from16 v1, v17

    #@6ee
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->loge(Ljava/lang/String;)V

    #@6f1
    .line 3962
    const/4 v11, 0x0

    #@6f2
    .local v11, "isProvApn":Z
    goto :goto_a

    #@6f3
    .line 3966
    .end local v9    # "e":Ljava/lang/ClassCastException;
    .end local v11    # "isProvApn":Z
    :cond_1a
    const/16 v17, 0x0

    #@6f5
    goto :goto_b

    #@6f6
    .line 3970
    :sswitch_25
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->onUpdateIcc()V

    #@6f9
    goto/16 :goto_0

    #@6fb
    .line 3974
    :sswitch_26
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->restartRadio()V

    #@6fe
    goto/16 :goto_0

    #@700
    .line 3978
    :sswitch_27
    move-object/from16 v0, p1

    #@702
    iget v0, v0, Landroid/os/Message;->arg1:I

    #@704
    move/from16 v17, v0

    #@706
    const/16 v18, 0x1

    #@708
    move/from16 v0, v17

    #@70a
    move/from16 v1, v18

    #@70c
    if-ne v0, v1, :cond_1b

    #@70e
    .line 3979
    move-object/from16 v0, p1

    #@710
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@712
    move-object/from16 v17, v0

    #@714
    check-cast v17, Lcom/android/internal/telephony/DctConstants$Activity;

    #@716
    move-object/from16 v0, p0

    #@718
    move-object/from16 v1, v17

    #@71a
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->handleStartNetStatPoll(Lcom/android/internal/telephony/DctConstants$Activity;)V

    #@71d
    goto/16 :goto_0

    #@71f
    .line 3980
    :cond_1b
    move-object/from16 v0, p1

    #@721
    iget v0, v0, Landroid/os/Message;->arg1:I

    #@723
    move/from16 v17, v0

    #@725
    if-nez v17, :cond_0

    #@727
    .line 3981
    move-object/from16 v0, p1

    #@729
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@72b
    move-object/from16 v17, v0

    #@72d
    check-cast v17, Lcom/android/internal/telephony/DctConstants$Activity;

    #@72f
    move-object/from16 v0, p0

    #@731
    move-object/from16 v1, v17

    #@733
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->handleStopNetStatPoll(Lcom/android/internal/telephony/DctConstants$Activity;)V

    #@736
    goto/16 :goto_0

    #@738
    .line 3991
    :sswitch_28
    move-object/from16 v0, p1

    #@73a
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@73c
    move-object/from16 v17, v0

    #@73e
    check-cast v17, Landroid/os/AsyncResult;

    #@740
    move-object/from16 v0, p0

    #@742
    move-object/from16 v1, v17

    #@744
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->handlePcoData(Landroid/os/AsyncResult;)V

    #@747
    goto/16 :goto_0

    #@749
    .line 3995
    :sswitch_29
    move-object/from16 v0, p1

    #@74b
    iget v0, v0, Landroid/os/Message;->arg1:I

    #@74d
    move/from16 v17, v0

    #@74f
    const/16 v18, 0x1

    #@751
    move/from16 v0, v17

    #@753
    move/from16 v1, v18

    #@755
    if-ne v0, v1, :cond_1c

    #@757
    const/16 v17, 0x1

    #@759
    :goto_c
    move-object/from16 v0, p0

    #@75b
    move/from16 v1, v17

    #@75d
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->onSetCarrierDataEnabled(Z)V

    #@760
    goto/16 :goto_0

    #@762
    :cond_1c
    const/16 v17, 0x0

    #@764
    goto :goto_c

    #@765
    .line 3656
    nop

    #@766
    :sswitch_data_0
    .sparse-switch
        0x11004 -> :sswitch_e
        0x42000 -> :sswitch_17
        0x42001 -> :sswitch_15
        0x42002 -> :sswitch_1
        0x42003 -> :sswitch_8
        0x42004 -> :sswitch_0
        0x42006 -> :sswitch_16
        0x42007 -> :sswitch_1b
        0x42008 -> :sswitch_1c
        0x42009 -> :sswitch_2
        0x4200b -> :sswitch_12
        0x4200c -> :sswitch_11
        0x4200d -> :sswitch_f
        0x4200f -> :sswitch_19
        0x42010 -> :sswitch_3
        0x42011 -> :sswitch_10
        0x42012 -> :sswitch_4
        0x42013 -> :sswitch_5
        0x42016 -> :sswitch_6
        0x42017 -> :sswitch_7
        0x42018 -> :sswitch_9
        0x4201a -> :sswitch_26
        0x4201b -> :sswitch_a
        0x4201c -> :sswitch_1d
        0x4201d -> :sswitch_b
        0x4201e -> :sswitch_1e
        0x4201f -> :sswitch_1f
        0x42020 -> :sswitch_20
        0x42021 -> :sswitch_25
        0x42022 -> :sswitch_1a
        0x42023 -> :sswitch_18
        0x42024 -> :sswitch_21
        0x42025 -> :sswitch_22
        0x42026 -> :sswitch_24
        0x42027 -> :sswitch_23
        0x42028 -> :sswitch_27
        0x42029 -> :sswitch_c
        0x4202a -> :sswitch_d
        0x4202b -> :sswitch_13
        0x4202c -> :sswitch_14
        0x4202d -> :sswitch_28
        0x4202e -> :sswitch_29
    .end sparse-switch
.end method

.method public hasMatchedTetherApnSetting()Z
    .locals 3

    #@0
    .prologue
    .line 1869
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->fetchDunApn()Lcom/android/internal/telephony/dataconnection/ApnSetting;

    #@3
    move-result-object v0

    #@4
    .line 1870
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
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@1b
    .line 1871
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

.method public isApnSupported(Ljava/lang/String;)Z
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 974
    if-nez p1, :cond_0

    #@3
    .line 975
    const-string/jumbo v1, "isApnSupported: name=null"

    #@6
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->loge(Ljava/lang/String;)V

    #@9
    .line 976
    return v3

    #@a
    .line 978
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    #@c
    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Lcom/android/internal/telephony/dataconnection/ApnContext;

    #@12
    .line 979
    .local v0, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    if-nez v0, :cond_1

    #@14
    .line 980
    new-instance v1, Ljava/lang/StringBuilder;

    #@16
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@19
    const-string/jumbo v2, "Request for unsupported mobile name: "

    #@1c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v1

    #@20
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v1

    #@24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@27
    move-result-object v1

    #@28
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->loge(Ljava/lang/String;)V

    #@2b
    .line 981
    return v3

    #@2c
    .line 983
    :cond_1
    const/4 v1, 0x1

    #@2d
    return v1
.end method

.method public isDataEnabled(Z)Z
    .locals 1
    .param p1, "checkUserDataEnabled"    # Z

    #@0
    .prologue
    .line 1294
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDataEnabledSettings:Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->isDataEnabled(Z)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public isDataPossible(Ljava/lang/String;)Z
    .locals 10
    .param p1, "apnType"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v9, 0x0

    #@1
    .line 1056
    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    #@3
    invoke-virtual {v7, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Lcom/android/internal/telephony/dataconnection/ApnContext;

    #@9
    .line 1057
    .local v0, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    if-nez v0, :cond_0

    #@b
    .line 1058
    const/4 v7, 0x0

    #@c
    return v7

    #@d
    .line 1060
    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->isEnabled()Z

    #@10
    move-result v1

    #@11
    .line 1061
    .local v1, "apnContextIsEnabled":Z
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getState()Lcom/android/internal/telephony/DctConstants$State;

    #@14
    move-result-object v2

    #@15
    .line 1062
    .local v2, "apnContextState":Lcom/android/internal/telephony/DctConstants$State;
    if-eqz v1, :cond_3

    #@17
    .line 1063
    sget-object v7, Lcom/android/internal/telephony/DctConstants$State;->FAILED:Lcom/android/internal/telephony/DctConstants$State;

    #@19
    if-ne v2, v7, :cond_3

    #@1b
    .line 1062
    const/4 v3, 0x0

    #@1c
    .line 1064
    .local v3, "apnTypePossible":Z
    :goto_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    #@1f
    move-result-object v7

    #@20
    const-string/jumbo v8, "emergency"

    #@23
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@26
    move-result v5

    #@27
    .line 1067
    .local v5, "isEmergencyApn":Z
    if-nez v5, :cond_4

    #@29
    invoke-direct {p0, v9}, Lcom/android/internal/telephony/dataconnection/DcTracker;->isDataAllowed(Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReason;)Z

    #@2c
    move-result v4

    #@2d
    .line 1068
    .local v4, "dataAllowed":Z
    :goto_1
    if-eqz v4, :cond_5

    #@2f
    move v6, v3

    #@30
    .line 1070
    :goto_2
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    #@33
    move-result-object v7

    #@34
    const-string/jumbo v8, "default"

    #@37
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3a
    move-result v7

    #@3b
    if-nez v7, :cond_1

    #@3d
    .line 1071
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    #@40
    move-result-object v7

    #@41
    const-string/jumbo v8, "ia"

    #@44
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@47
    move-result v7

    #@48
    .line 1070
    if-eqz v7, :cond_2

    #@4a
    .line 1072
    :cond_1
    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    #@4c
    invoke-virtual {v7}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    #@4f
    move-result-object v7

    #@50
    invoke-virtual {v7}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    #@53
    move-result v7

    #@54
    .line 1073
    const/16 v8, 0x12

    #@56
    .line 1072
    if-ne v7, v8, :cond_2

    #@58
    .line 1074
    const-string/jumbo v7, "Default data call activation not possible in iwlan."

    #@5b
    invoke-direct {p0, v7}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@5e
    .line 1075
    const/4 v6, 0x0

    #@5f
    .line 1084
    :cond_2
    return v6

    #@60
    .line 1062
    .end local v3    # "apnTypePossible":Z
    .end local v4    # "dataAllowed":Z
    .end local v5    # "isEmergencyApn":Z
    :cond_3
    const/4 v3, 0x1

    #@61
    .restart local v3    # "apnTypePossible":Z
    goto :goto_0

    #@62
    .line 1067
    .restart local v5    # "isEmergencyApn":Z
    :cond_4
    const/4 v4, 0x1

    #@63
    goto :goto_1

    #@64
    .line 1068
    .restart local v4    # "dataAllowed":Z
    :cond_5
    const/4 v6, 0x0

    #@65
    .local v6, "possible":Z
    goto :goto_2
.end method

.method public isDisconnected()Z
    .locals 3

    #@0
    .prologue
    .line 3249
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    #@2
    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    #@5
    move-result-object v2

    #@6
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@9
    move-result-object v1

    #@a
    .local v1, "apnContext$iterator":Ljava/util/Iterator;
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
    check-cast v0, Lcom/android/internal/telephony/dataconnection/ApnContext;

    #@16
    .line 3250
    .local v0, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->isDisconnected()Z

    #@19
    move-result v2

    #@1a
    if-nez v2, :cond_0

    #@1c
    .line 3252
    const/4 v2, 0x0

    #@1d
    return v2

    #@1e
    .line 3256
    .end local v0    # "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    :cond_1
    const/4 v2, 0x1

    #@1f
    return v2
.end method

.method isEmergency()Z
    .locals 3

    #@0
    .prologue
    .line 1495
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    #@2
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->isInEcm()Z

    #@5
    move-result v1

    #@6
    if-nez v1, :cond_0

    #@8
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    #@a
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->isInEmergencyCall()Z

    #@d
    move-result v0

    #@e
    .line 1496
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    #@10
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@13
    const-string/jumbo v2, "isEmergency: result="

    #@16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v1

    #@1e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21
    move-result-object v1

    #@22
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@25
    .line 1497
    return v0

    #@26
    .line 1495
    :cond_0
    const/4 v0, 0x1

    #@27
    .local v0, "result":Z
    goto :goto_0
.end method

.method isPermanentFail(Lcom/android/internal/telephony/dataconnection/DcFailCause;)Z
    .locals 3
    .param p1, "dcFailCause"    # Lcom/android/internal/telephony/dataconnection/DcFailCause;

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 1920
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/DcFailCause;->isPermanentFail()Z

    #@5
    move-result v2

    #@6
    if-eqz v2, :cond_2

    #@8
    .line 1921
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAttached:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@a
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    #@d
    move-result v2

    #@e
    if-eqz v2, :cond_0

    #@10
    sget-object v2, Lcom/android/internal/telephony/dataconnection/DcFailCause;->SIGNAL_LOST:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    #@12
    if-eq p1, v2, :cond_1

    #@14
    .line 1920
    :cond_0
    :goto_0
    return v0

    #@15
    :cond_1
    move v0, v1

    #@16
    .line 1921
    goto :goto_0

    #@17
    :cond_2
    move v0, v1

    #@18
    .line 1920
    goto :goto_0
.end method

.method public registerForAllDataDisconnected(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 4117
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAllDataDisconnectedRegistrants:Landroid/os/RegistrantList;

    #@2
    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    #@5
    .line 4119
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->isDisconnected()Z

    #@8
    move-result v0

    #@9
    if-eqz v0, :cond_0

    #@b
    .line 4120
    const-string/jumbo v0, "notify All Data Disconnected"

    #@e
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@11
    .line 4121
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->notifyAllDataDisconnected()V

    #@14
    .line 4116
    :cond_0
    return-void
.end method

.method public registerForDataEnabledChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 4130
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDataEnabledSettings:Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;

    #@2
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->registerForDataEnabledChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    #@5
    .line 4129
    return-void
.end method

.method public registerServiceStateTrackerEvents()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 738
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    #@3
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    #@6
    move-result-object v0

    #@7
    .line 739
    const v1, 0x42010

    #@a
    .line 738
    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->registerForDataConnectionAttached(Landroid/os/Handler;ILjava/lang/Object;)V

    #@d
    .line 740
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    #@f
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    #@12
    move-result-object v0

    #@13
    .line 741
    const v1, 0x42009

    #@16
    .line 740
    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->registerForDataConnectionDetached(Landroid/os/Handler;ILjava/lang/Object;)V

    #@19
    .line 742
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    #@1b
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    #@1e
    move-result-object v0

    #@1f
    .line 743
    const v1, 0x4200b

    #@22
    .line 742
    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->registerForDataRoamingOn(Landroid/os/Handler;ILjava/lang/Object;)V

    #@25
    .line 744
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    #@27
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    #@2a
    move-result-object v0

    #@2b
    .line 745
    const v1, 0x4200c

    #@2e
    .line 744
    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->registerForDataRoamingOff(Landroid/os/Handler;ILjava/lang/Object;)V

    #@31
    .line 746
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    #@33
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    #@36
    move-result-object v0

    #@37
    .line 747
    const v1, 0x42016

    #@3a
    .line 746
    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->registerForPsRestrictedEnabled(Landroid/os/Handler;ILjava/lang/Object;)V

    #@3d
    .line 748
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    #@3f
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    #@42
    move-result-object v0

    #@43
    .line 749
    const v1, 0x42017

    #@46
    .line 748
    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->registerForPsRestrictedDisabled(Landroid/os/Handler;ILjava/lang/Object;)V

    #@49
    .line 750
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    #@4b
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    #@4e
    move-result-object v0

    #@4f
    .line 751
    const v1, 0x42029

    #@52
    .line 750
    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->registerForDataRegStateOrRatChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    #@55
    .line 737
    return-void
.end method

.method public releaseNetwork(Landroid/net/NetworkRequest;Landroid/util/LocalLog;)V
    .locals 4
    .param p1, "networkRequest"    # Landroid/net/NetworkRequest;
    .param p2, "log"    # Landroid/util/LocalLog;

    #@0
    .prologue
    .line 967
    invoke-static {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->apnIdForNetworkRequest(Landroid/net/NetworkRequest;)I

    #@3
    move-result v1

    #@4
    .line 968
    .local v1, "apnId":I
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mApnContextsById:Landroid/util/SparseArray;

    #@6
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    check-cast v0, Lcom/android/internal/telephony/dataconnection/ApnContext;

    #@c
    .line 969
    .local v0, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    new-instance v2, Ljava/lang/StringBuilder;

    #@e
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@11
    const-string/jumbo v3, "DcTracker.releaseNetwork for "

    #@14
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v2

    #@18
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v2

    #@1c
    const-string/jumbo v3, " found "

    #@1f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v2

    #@23
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v2

    #@27
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2a
    move-result-object v2

    #@2b
    invoke-virtual {p2, v2}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    #@2e
    .line 970
    if-eqz v0, :cond_0

    #@30
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/dataconnection/ApnContext;->releaseNetwork(Landroid/net/NetworkRequest;Landroid/util/LocalLog;)V

    #@33
    .line 966
    :cond_0
    return-void
.end method

.method public requestNetwork(Landroid/net/NetworkRequest;Landroid/util/LocalLog;)V
    .locals 4
    .param p1, "networkRequest"    # Landroid/net/NetworkRequest;
    .param p2, "log"    # Landroid/util/LocalLog;

    #@0
    .prologue
    .line 960
    invoke-static {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->apnIdForNetworkRequest(Landroid/net/NetworkRequest;)I

    #@3
    move-result v1

    #@4
    .line 961
    .local v1, "apnId":I
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mApnContextsById:Landroid/util/SparseArray;

    #@6
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    check-cast v0, Lcom/android/internal/telephony/dataconnection/ApnContext;

    #@c
    .line 962
    .local v0, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    new-instance v2, Ljava/lang/StringBuilder;

    #@e
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@11
    const-string/jumbo v3, "DcTracker.requestNetwork for "

    #@14
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v2

    #@18
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v2

    #@1c
    const-string/jumbo v3, " found "

    #@1f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v2

    #@23
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v2

    #@27
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2a
    move-result-object v2

    #@2b
    invoke-virtual {p2, v2}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    #@2e
    .line 963
    if-eqz v0, :cond_0

    #@30
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/dataconnection/ApnContext;->requestNetwork(Landroid/net/NetworkRequest;Landroid/util/LocalLog;)V

    #@33
    .line 959
    :cond_0
    return-void
.end method

.method sendCleanUpConnection(ZLcom/android/internal/telephony/dataconnection/ApnContext;)V
    .locals 4
    .param p1, "tearDown"    # Z
    .param p2, "apnContext"    # Lcom/android/internal/telephony/dataconnection/ApnContext;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1719
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
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@23
    .line 1720
    const v1, 0x42018

    #@26
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->obtainMessage(I)Landroid/os/Message;

    #@29
    move-result-object v0

    #@2a
    .line 1721
    .local v0, "msg":Landroid/os/Message;
    if-eqz p1, :cond_0

    #@2c
    const/4 v1, 0x1

    #@2d
    :goto_0
    iput v1, v0, Landroid/os/Message;->arg1:I

    #@2f
    .line 1722
    iput v2, v0, Landroid/os/Message;->arg2:I

    #@31
    .line 1723
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@33
    .line 1724
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->sendMessage(Landroid/os/Message;)Z

    #@36
    .line 1718
    return-void

    #@37
    :cond_0
    move v1, v2

    #@38
    .line 1721
    goto :goto_0
.end method

.method sendRestartRadio()V
    .locals 2

    #@0
    .prologue
    .line 2266
    const-string/jumbo v1, "sendRestartRadio:"

    #@3
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@6
    .line 2267
    const v1, 0x4201a

    #@9
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->obtainMessage(I)Landroid/os/Message;

    #@c
    move-result-object v0

    #@d
    .line 2268
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->sendMessage(Landroid/os/Message;)Z

    #@10
    .line 2265
    return-void
.end method

.method public sendStartNetStatPoll(Lcom/android/internal/telephony/DctConstants$Activity;)V
    .locals 2
    .param p1, "activity"    # Lcom/android/internal/telephony/DctConstants$Activity;

    #@0
    .prologue
    .line 4450
    const v1, 0x42028

    #@3
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->obtainMessage(I)Landroid/os/Message;

    #@6
    move-result-object v0

    #@7
    .line 4451
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    #@8
    iput v1, v0, Landroid/os/Message;->arg1:I

    #@a
    .line 4452
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@c
    .line 4453
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->sendMessage(Landroid/os/Message;)Z

    #@f
    .line 4449
    return-void
.end method

.method public sendStopNetStatPoll(Lcom/android/internal/telephony/DctConstants$Activity;)V
    .locals 2
    .param p1, "activity"    # Lcom/android/internal/telephony/DctConstants$Activity;

    #@0
    .prologue
    .line 4463
    const v1, 0x42028

    #@3
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->obtainMessage(I)Landroid/os/Message;

    #@6
    move-result-object v0

    #@7
    .line 4464
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x0

    #@8
    iput v1, v0, Landroid/os/Message;->arg1:I

    #@a
    .line 4465
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@c
    .line 4466
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->sendMessage(Landroid/os/Message;)Z

    #@f
    .line 4462
    return-void
.end method

.method public setApnsEnabledByCarrier(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    #@0
    .prologue
    .line 2363
    const v1, 0x4202e

    #@3
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->obtainMessage(I)Landroid/os/Message;

    #@6
    move-result-object v0

    #@7
    .line 2364
    .local v0, "msg":Landroid/os/Message;
    if-eqz p1, :cond_0

    #@9
    const/4 v1, 0x1

    #@a
    :goto_0
    iput v1, v0, Landroid/os/Message;->arg1:I

    #@c
    .line 2365
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->sendMessage(Landroid/os/Message;)Z

    #@f
    .line 2362
    return-void

    #@10
    .line 2364
    :cond_0
    const/4 v1, 0x0

    #@11
    goto :goto_0
.end method

.method public setDataEnabled(Z)V
    .locals 3
    .param p1, "enable"    # Z

    #@0
    .prologue
    .line 859
    const v1, 0x4201e

    #@3
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->obtainMessage(I)Landroid/os/Message;

    #@6
    move-result-object v0

    #@7
    .line 860
    .local v0, "msg":Landroid/os/Message;
    if-eqz p1, :cond_0

    #@9
    const/4 v1, 0x1

    #@a
    :goto_0
    iput v1, v0, Landroid/os/Message;->arg1:I

    #@c
    .line 861
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
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@23
    .line 862
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->sendMessage(Landroid/os/Message;)Z

    #@26
    .line 858
    return-void

    #@27
    .line 860
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
    .line 2682
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    #@2
    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getSubId()I

    #@5
    move-result v0

    #@6
    .line 2683
    .local v0, "phoneSubId":I
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->getDataOnRoamingEnabled()Z

    #@9
    move-result v2

    #@a
    if-eq v2, p1, :cond_2

    #@c
    .line 2684
    if-eqz p1, :cond_0

    #@e
    const/4 v1, 0x1

    #@f
    .line 2687
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
    .line 2688
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mResolver:Landroid/content/ContentResolver;

    #@1c
    const-string/jumbo v3, "data_roaming"

    #@1f
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    #@22
    .line 2694
    :goto_1
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    #@24
    invoke-virtual {v2, v1, v0}, Landroid/telephony/SubscriptionManager;->setDataRoaming(II)I

    #@27
    .line 2697
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
    .line 2698
    const-string/jumbo v3, " isRoaming="

    #@3a
    .line 2697
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
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@49
    .line 2681
    .end local v1    # "roaming":I
    :goto_2
    return-void

    #@4a
    .line 2684
    :cond_0
    const/4 v1, 0x0

    #@4b
    .restart local v1    # "roaming":I
    goto :goto_0

    #@4c
    .line 2690
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mResolver:Landroid/content/ContentResolver;

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
    .line 2702
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
    .line 2703
    const-string/jumbo v3, " isRoaming="

    #@79
    .line 2702
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
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@88
    goto :goto_2
.end method

.method public setEnabled(IZ)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "enable"    # Z

    #@0
    .prologue
    .line 2605
    const v1, 0x4200d

    #@3
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->obtainMessage(I)Landroid/os/Message;

    #@6
    move-result-object v0

    #@7
    .line 2606
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    #@9
    .line 2607
    if-eqz p2, :cond_0

    #@b
    const/4 v1, 0x1

    #@c
    :goto_0
    iput v1, v0, Landroid/os/Message;->arg2:I

    #@e
    .line 2608
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->sendMessage(Landroid/os/Message;)Z

    #@11
    .line 2604
    return-void

    #@12
    .line 2607
    :cond_0
    const/4 v1, 0x0

    #@13
    goto :goto_0
.end method

.method public setInternalDataEnabled(Z)Z
    .locals 1
    .param p1, "enable"    # Z

    #@0
    .prologue
    .line 4161
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->setInternalDataEnabled(ZLandroid/os/Message;)Z

    #@4
    move-result v0

    #@5
    return v0
.end method

.method public setInternalDataEnabled(ZLandroid/os/Message;)Z
    .locals 4
    .param p1, "enable"    # Z
    .param p2, "onCompleteMsg"    # Landroid/os/Message;

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 4165
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
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@1f
    .line 4167
    const v1, 0x4201b

    #@22
    invoke-virtual {p0, v1, p2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@25
    move-result-object v0

    #@26
    .line 4168
    .local v0, "msg":Landroid/os/Message;
    if-eqz p1, :cond_0

    #@28
    move v1, v2

    #@29
    :goto_0
    iput v1, v0, Landroid/os/Message;->arg1:I

    #@2b
    .line 4169
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->sendMessage(Landroid/os/Message;)Z

    #@2e
    .line 4170
    return v2

    #@2f
    .line 4168
    :cond_0
    const/4 v1, 0x0

    #@30
    goto :goto_0
.end method

.method public setPolicyDataEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    #@0
    .prologue
    .line 2432
    new-instance v1, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v2, "setPolicyDataEnabled: "

    #@8
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v1

    #@c
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@f
    move-result-object v1

    #@10
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13
    move-result-object v1

    #@14
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@17
    .line 2433
    const v1, 0x42020

    #@1a
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->obtainMessage(I)Landroid/os/Message;

    #@1d
    move-result-object v0

    #@1e
    .line 2434
    .local v0, "msg":Landroid/os/Message;
    if-eqz p1, :cond_0

    #@20
    const/4 v1, 0x1

    #@21
    :goto_0
    iput v1, v0, Landroid/os/Message;->arg1:I

    #@23
    .line 2435
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->sendMessage(Landroid/os/Message;)Z

    #@26
    .line 2431
    return-void

    #@27
    .line 2434
    :cond_0
    const/4 v1, 0x0

    #@28
    goto :goto_0
.end method

.method public unregisterForAllDataDisconnected(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 4126
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAllDataDisconnectedRegistrants:Landroid/os/RegistrantList;

    #@2
    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    #@5
    .line 4125
    return-void
.end method

.method public unregisterForDataEnabledChanged(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 4134
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDataEnabledSettings:Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->unregisterForDataEnabledChanged(Landroid/os/Handler;)V

    #@5
    .line 4133
    return-void
.end method

.method public unregisterServiceStateTrackerEvents()V
    .locals 1

    #@0
    .prologue
    .line 755
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    #@2
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/ServiceStateTracker;->unregisterForDataConnectionAttached(Landroid/os/Handler;)V

    #@9
    .line 756
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    #@b
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    #@e
    move-result-object v0

    #@f
    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/ServiceStateTracker;->unregisterForDataConnectionDetached(Landroid/os/Handler;)V

    #@12
    .line 757
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    #@14
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    #@17
    move-result-object v0

    #@18
    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/ServiceStateTracker;->unregisterForDataRoamingOn(Landroid/os/Handler;)V

    #@1b
    .line 758
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    #@1d
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    #@20
    move-result-object v0

    #@21
    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/ServiceStateTracker;->unregisterForDataRoamingOff(Landroid/os/Handler;)V

    #@24
    .line 759
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    #@26
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    #@29
    move-result-object v0

    #@2a
    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/ServiceStateTracker;->unregisterForPsRestrictedEnabled(Landroid/os/Handler;)V

    #@2d
    .line 760
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    #@2f
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    #@32
    move-result-object v0

    #@33
    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/ServiceStateTracker;->unregisterForPsRestrictedDisabled(Landroid/os/Handler;)V

    #@36
    .line 761
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    #@38
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    #@3b
    move-result-object v0

    #@3c
    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/ServiceStateTracker;->unregisterForDataRegStateOrRatChanged(Landroid/os/Handler;)V

    #@3f
    .line 754
    return-void
.end method

.method public update()V
    .locals 2

    #@0
    .prologue
    .line 4072
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "update sub = "

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    #@e
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    #@11
    move-result v1

    #@12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@15
    move-result-object v0

    #@16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@19
    move-result-object v0

    #@1a
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@1d
    .line 4073
    const-string/jumbo v0, "update(): Active DDS, register for all events now!"

    #@20
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@23
    .line 4074
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->onUpdateIcc()V

    #@26
    .line 4076
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDataEnabledSettings:Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;

    #@28
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->getDataEnabled()Z

    #@2b
    move-result v1

    #@2c
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->setUserDataEnabled(Z)V

    #@2f
    .line 4077
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAutoAttachOnCreation:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@31
    const/4 v1, 0x0

    #@32
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    #@35
    .line 4079
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    #@37
    check-cast v0, Lcom/android/internal/telephony/GsmCdmaPhone;

    #@39
    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->updateCurrentCarrierInProvider()Z

    #@3c
    .line 4071
    return-void
.end method

.method public updateRecords()V
    .locals 0

    #@0
    .prologue
    .line 4087
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->onUpdateIcc()V

    #@3
    .line 4086
    return-void
.end method

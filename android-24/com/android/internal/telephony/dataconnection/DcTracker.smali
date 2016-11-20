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

.field private static final APN_TYPE_KEY:Ljava/lang/String; = "apnType"

.field private static final DATA_STALL_ALARM_AGGRESSIVE_DELAY_IN_MS_DEFAULT:I = 0xea60

.field private static final DATA_STALL_ALARM_NON_AGGRESSIVE_DELAY_IN_MS_DEFAULT:I = 0x57e40

.field private static final DATA_STALL_ALARM_TAG_EXTRA:Ljava/lang/String; = "data.stall.alram.tag"

.field private static final DATA_STALL_NOT_SUSPECTED:Z = false

.field private static final DATA_STALL_SUSPECTED:Z = true

.field private static final DBG:Z = true

.field private static final DEBUG_PROV_APN_ALARM:Ljava/lang/String; = "persist.debug.prov_apn_alarm"

.field private static final ERROR_CODE_KEY:Ljava/lang/String; = "errorCode"

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

.field private static final RADIO_TESTS:Z = false

.field private static final REDIRECTION_URL_KEY:Ljava/lang/String; = "redirectionUrl"

.field private static final VDBG:Z

.field private static final VDBG_STALL:Z

.field private static sEnableFailFastRefCounter:I

.field private static sPolicyDataEnabled:Z


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

.field private mColdSimDetected:Z

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

.field private mDataEnabledLock:Ljava/lang/Object;

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

.field private mInternalDataEnabled:Z

.field private mIsDisposed:Z

.field private mIsProvisioning:Z

.field private mIsPsRestricted:Z

.field private mIsScreenOn:Z

.field private mIsWifiConnected:Z

.field private mMvnoMatched:Z

.field private mNetStatPollEnabled:Z

.field private mNetStatPollPeriod:I

.field private mNoRecvPollCount:I

.field private final mOnSubscriptionsChangedListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

.field private mOutOfCreditSimDetected:Z

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

.field private mRedirectUrl:Ljava/lang/String;

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

.field private mUserDataEnabled:Z

.field private redirectApnContextSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/android/internal/telephony/dataconnection/ApnContext;",
            ">;"
        }
    .end annotation
.end field


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

.method static synthetic -wrap0(Lcom/android/internal/telephony/dataconnection/DcTracker;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->applyUnProvisionedSimDetected()V

    #@3
    return-void
.end method

.method static synthetic -wrap1(Lcom/android/internal/telephony/dataconnection/DcTracker;Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@3
    return-void
.end method

.method static synthetic -wrap10(Lcom/android/internal/telephony/dataconnection/DcTracker;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->stopNetStatPoll()V

    #@3
    return-void
.end method

.method static synthetic -wrap11(Lcom/android/internal/telephony/dataconnection/DcTracker;)V
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
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->onActionIntentDataStallAlarm(Landroid/content/Intent;)V

    #@3
    return-void
.end method

.method static synthetic -wrap3(Lcom/android/internal/telephony/dataconnection/DcTracker;Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->onActionIntentProvisioningApnAlarm(Landroid/content/Intent;)V

    #@3
    return-void
.end method

.method static synthetic -wrap4(Lcom/android/internal/telephony/dataconnection/DcTracker;Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->onActionIntentReconnectAlarm(Landroid/content/Intent;)V

    #@3
    return-void
.end method

.method static synthetic -wrap5(Lcom/android/internal/telephony/dataconnection/DcTracker;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->onRecordsLoadedOrSubIdChanged()V

    #@3
    return-void
.end method

.method static synthetic -wrap6(Lcom/android/internal/telephony/dataconnection/DcTracker;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->registerSettingsObserver()V

    #@3
    return-void
.end method

.method static synthetic -wrap7(Lcom/android/internal/telephony/dataconnection/DcTracker;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->restartDataStallAlarm()V

    #@3
    return-void
.end method

.method static synthetic -wrap8(Lcom/android/internal/telephony/dataconnection/DcTracker;Z)V
    .locals 0
    .param p1, "on"    # Z

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->setRadio(Z)V

    #@3
    return-void
.end method

.method static synthetic -wrap9(Lcom/android/internal/telephony/dataconnection/DcTracker;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->startNetStatPoll()V

    #@3
    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 140
    const/4 v0, 0x1

    #@1
    sput-boolean v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->sPolicyDataEnabled:Z

    #@3
    .line 580
    const/4 v0, 0x0

    #@4
    sput v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->sEnableFailFastRefCounter:I

    #@6
    .line 675
    const-string/jumbo v0, "content://telephony/carriers/preferapn_no_update/subId/"

    #@9
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    #@c
    move-result-object v0

    #@d
    .line 674
    sput-object v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->PREFERAPN_NO_UPDATE_URI_USING_SUBID:Landroid/net/Uri;

    #@f
    .line 117
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
    .line 759
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    #@8
    .line 124
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    #@a
    invoke-direct {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    #@d
    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->isCleanupRequired:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@f
    .line 128
    new-instance v0, Ljava/lang/Object;

    #@11
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@14
    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDataEnabledLock:Ljava/lang/Object;

    #@16
    .line 132
    iput-boolean v5, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mInternalDataEnabled:Z

    #@18
    .line 137
    iput-boolean v5, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mUserDataEnabled:Z

    #@1a
    .line 143
    const-string/jumbo v0, "default"

    #@1d
    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mRequestedApnType:Ljava/lang/String;

    #@1f
    .line 166
    const-string/jumbo v0, "gsm.radioreset"

    #@22
    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->RADIO_RESET_PROPERTY:Ljava/lang/String;

    #@24
    .line 237
    new-instance v0, Ljava/util/PriorityQueue;

    #@26
    .line 238
    new-instance v1, Lcom/android/internal/telephony/dataconnection/DcTracker$1;

    #@28
    invoke-direct {v1, p0}, Lcom/android/internal/telephony/dataconnection/DcTracker$1;-><init>(Lcom/android/internal/telephony/dataconnection/DcTracker;)V

    #@2b
    .line 237
    const/4 v2, 0x5

    #@2c
    invoke-direct {v0, v2, v1}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    #@2f
    .line 236
    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPrioritySortedApnContexts:Ljava/util/PriorityQueue;

    #@31
    .line 245
    iput-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAllApnSettings:Ljava/util/ArrayList;

    #@33
    .line 248
    iput-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPreferredApn:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    #@35
    .line 251
    iput-boolean v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mIsPsRestricted:Z

    #@37
    .line 254
    iput-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mEmergencyApn:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    #@39
    .line 257
    iput-boolean v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mIsDisposed:Z

    #@3b
    .line 262
    iput-boolean v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mIsProvisioning:Z

    #@3d
    .line 265
    iput-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mProvisioningUrl:Ljava/lang/String;

    #@3f
    .line 281
    iput-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mProvisioningApnAlarmIntent:Landroid/app/PendingIntent;

    #@41
    .line 284
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@44
    move-result-wide v0

    #@45
    long-to-int v0, v0

    #@46
    iput v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mProvisioningApnAlarmTag:I

    #@48
    .line 286
    new-instance v0, Lcom/android/internal/util/AsyncChannel;

    #@4a
    invoke-direct {v0}, Lcom/android/internal/util/AsyncChannel;-><init>()V

    #@4d
    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mReplyAc:Lcom/android/internal/util/AsyncChannel;

    #@4f
    .line 288
    new-instance v0, Lcom/android/internal/telephony/dataconnection/DcTracker$2;

    #@51
    invoke-direct {v0, p0}, Lcom/android/internal/telephony/dataconnection/DcTracker$2;-><init>(Lcom/android/internal/telephony/dataconnection/DcTracker;)V

    #@54
    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    #@56
    .line 338
    new-instance v0, Lcom/android/internal/telephony/dataconnection/DcTracker$3;

    #@58
    invoke-direct {v0, p0}, Lcom/android/internal/telephony/dataconnection/DcTracker$3;-><init>(Lcom/android/internal/telephony/dataconnection/DcTracker;)V

    #@5b
    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPollNetStat:Ljava/lang/Runnable;

    #@5d
    .line 360
    new-instance v0, Lcom/android/internal/telephony/dataconnection/DcTracker$4;

    #@5f
    invoke-direct {v0, p0}, Lcom/android/internal/telephony/dataconnection/DcTracker$4;-><init>(Lcom/android/internal/telephony/dataconnection/DcTracker;)V

    #@62
    .line 359
    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mOnSubscriptionsChangedListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    #@64
    .line 553
    new-instance v0, Ljava/util/ArrayList;

    #@66
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@69
    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDisconnectAllCompleteMsgList:Ljava/util/ArrayList;

    #@6b
    .line 555
    new-instance v0, Landroid/os/RegistrantList;

    #@6d
    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    #@70
    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAllDataDisconnectedRegistrants:Landroid/os/RegistrantList;

    #@72
    .line 560
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    #@74
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    #@77
    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    #@79
    .line 561
    sget-object v0, Lcom/android/internal/telephony/DctConstants$Activity;->NONE:Lcom/android/internal/telephony/DctConstants$Activity;

    #@7b
    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mActivity:Lcom/android/internal/telephony/DctConstants$Activity;

    #@7d
    .line 562
    sget-object v0, Lcom/android/internal/telephony/DctConstants$State;->IDLE:Lcom/android/internal/telephony/DctConstants$State;

    #@7f
    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mState:Lcom/android/internal/telephony/DctConstants$State;

    #@81
    .line 568
    iput-boolean v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mNetStatPollEnabled:Z

    #@83
    .line 570
    new-instance v0, Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxSum;

    #@85
    invoke-direct {v0, v6, v7, v6, v7}, Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxSum;-><init>(JJ)V

    #@88
    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDataStallTxRxSum:Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxSum;

    #@8a
    .line 572
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@8d
    move-result-wide v0

    #@8e
    long-to-int v0, v0

    #@8f
    iput v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDataStallAlarmTag:I

    #@91
    .line 574
    iput-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDataStallAlarmIntent:Landroid/app/PendingIntent;

    #@93
    .line 578
    iput v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mNoRecvPollCount:I

    #@95
    .line 582
    iput-boolean v5, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDataStallDetectionEnabled:Z

    #@97
    .line 584
    iput-boolean v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mFailFast:Z

    #@99
    .line 587
    iput-boolean v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mInVoiceCall:Z

    #@9b
    .line 590
    iput-boolean v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mIsWifiConnected:Z

    #@9d
    .line 593
    iput-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mReconnectIntent:Landroid/app/PendingIntent;

    #@9f
    .line 596
    iput-boolean v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAutoAttachOnCreationConfig:Z

    #@a1
    .line 597
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    #@a3
    invoke-direct {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    #@a6
    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAutoAttachOnCreation:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@a8
    .line 602
    iput-boolean v5, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mIsScreenOn:Z

    #@aa
    .line 606
    iput-boolean v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mMvnoMatched:Z

    #@ac
    .line 609
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    #@ae
    invoke-direct {v0, v3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    #@b1
    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mUniqueIdGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    #@b3
    .line 613
    new-instance v0, Ljava/util/HashMap;

    #@b5
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@b8
    .line 612
    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDataConnections:Ljava/util/HashMap;

    #@ba
    .line 617
    new-instance v0, Ljava/util/HashMap;

    #@bc
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@bf
    .line 616
    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDataConnectionAcHashMap:Ljava/util/HashMap;

    #@c1
    .line 620
    new-instance v0, Ljava/util/HashMap;

    #@c3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@c6
    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mApnToDataConnectionId:Ljava/util/HashMap;

    #@c8
    .line 624
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    #@ca
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    #@cd
    .line 623
    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    #@cf
    .line 626
    new-instance v0, Landroid/util/SparseArray;

    #@d1
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    #@d4
    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mApnContextsById:Landroid/util/SparseArray;

    #@d6
    .line 628
    iput v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDisconnectPendingCount:I

    #@d8
    .line 632
    iput-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mRedirectUrl:Ljava/lang/String;

    #@da
    .line 636
    iput-boolean v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mColdSimDetected:Z

    #@dc
    .line 640
    iput-boolean v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mOutOfCreditSimDetected:Z

    #@de
    .line 644
    new-instance v0, Ljava/util/HashSet;

    #@e0
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    #@e3
    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->redirectApnContextSet:Ljava/util/HashSet;

    #@e5
    .line 662
    iput-boolean v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mReregisterOnReconnectFailure:Z

    #@e7
    .line 678
    iput-boolean v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mCanSetPreferApn:Z

    #@e9
    .line 680
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    #@eb
    invoke-direct {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    #@ee
    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAttached:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@f0
    .line 689
    iput-boolean v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mImsRegistrationState:Z

    #@f2
    .line 760
    iput-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAlarmManager:Landroid/app/AlarmManager;

    #@f4
    .line 761
    iput-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mCm:Landroid/net/ConnectivityManager;

    #@f6
    .line 762
    iput-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    #@f8
    .line 763
    iput-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    #@fa
    .line 764
    iput-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDataConnectionTracker:Landroid/os/Handler;

    #@fc
    .line 765
    iput-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mProvisionActionName:Ljava/lang/String;

    #@fe
    .line 766
    new-instance v0, Lcom/android/internal/telephony/dataconnection/DcTracker$SettingsObserver;

    #@100
    invoke-direct {v0, v4, p0}, Lcom/android/internal/telephony/dataconnection/DcTracker$SettingsObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    #@103
    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mSettingsObserver:Lcom/android/internal/telephony/dataconnection/DcTracker$SettingsObserver;

    #@105
    .line 759
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
    .line 693
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    #@8
    .line 124
    new-instance v6, Ljava/util/concurrent/atomic/AtomicBoolean;

    #@a
    invoke-direct {v6, v9}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    #@d
    iput-object v6, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->isCleanupRequired:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@f
    .line 128
    new-instance v6, Ljava/lang/Object;

    #@11
    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    #@14
    iput-object v6, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDataEnabledLock:Ljava/lang/Object;

    #@16
    .line 132
    iput-boolean v11, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mInternalDataEnabled:Z

    #@18
    .line 137
    iput-boolean v11, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mUserDataEnabled:Z

    #@1a
    .line 143
    const-string/jumbo v6, "default"

    #@1d
    iput-object v6, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mRequestedApnType:Ljava/lang/String;

    #@1f
    .line 166
    const-string/jumbo v6, "gsm.radioreset"

    #@22
    iput-object v6, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->RADIO_RESET_PROPERTY:Ljava/lang/String;

    #@24
    .line 237
    new-instance v6, Ljava/util/PriorityQueue;

    #@26
    .line 238
    new-instance v7, Lcom/android/internal/telephony/dataconnection/DcTracker$1;

    #@28
    invoke-direct {v7, p0}, Lcom/android/internal/telephony/dataconnection/DcTracker$1;-><init>(Lcom/android/internal/telephony/dataconnection/DcTracker;)V

    #@2b
    .line 237
    const/4 v8, 0x5

    #@2c
    invoke-direct {v6, v8, v7}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    #@2f
    .line 236
    iput-object v6, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPrioritySortedApnContexts:Ljava/util/PriorityQueue;

    #@31
    .line 245
    iput-object v10, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAllApnSettings:Ljava/util/ArrayList;

    #@33
    .line 248
    iput-object v10, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPreferredApn:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    #@35
    .line 251
    iput-boolean v9, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mIsPsRestricted:Z

    #@37
    .line 254
    iput-object v10, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mEmergencyApn:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    #@39
    .line 257
    iput-boolean v9, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mIsDisposed:Z

    #@3b
    .line 262
    iput-boolean v9, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mIsProvisioning:Z

    #@3d
    .line 265
    iput-object v10, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mProvisioningUrl:Ljava/lang/String;

    #@3f
    .line 281
    iput-object v10, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mProvisioningApnAlarmIntent:Landroid/app/PendingIntent;

    #@41
    .line 284
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@44
    move-result-wide v6

    #@45
    long-to-int v6, v6

    #@46
    iput v6, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mProvisioningApnAlarmTag:I

    #@48
    .line 286
    new-instance v6, Lcom/android/internal/util/AsyncChannel;

    #@4a
    invoke-direct {v6}, Lcom/android/internal/util/AsyncChannel;-><init>()V

    #@4d
    iput-object v6, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mReplyAc:Lcom/android/internal/util/AsyncChannel;

    #@4f
    .line 288
    new-instance v6, Lcom/android/internal/telephony/dataconnection/DcTracker$2;

    #@51
    invoke-direct {v6, p0}, Lcom/android/internal/telephony/dataconnection/DcTracker$2;-><init>(Lcom/android/internal/telephony/dataconnection/DcTracker;)V

    #@54
    iput-object v6, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    #@56
    .line 338
    new-instance v6, Lcom/android/internal/telephony/dataconnection/DcTracker$3;

    #@58
    invoke-direct {v6, p0}, Lcom/android/internal/telephony/dataconnection/DcTracker$3;-><init>(Lcom/android/internal/telephony/dataconnection/DcTracker;)V

    #@5b
    iput-object v6, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPollNetStat:Ljava/lang/Runnable;

    #@5d
    .line 360
    new-instance v6, Lcom/android/internal/telephony/dataconnection/DcTracker$4;

    #@5f
    invoke-direct {v6, p0}, Lcom/android/internal/telephony/dataconnection/DcTracker$4;-><init>(Lcom/android/internal/telephony/dataconnection/DcTracker;)V

    #@62
    .line 359
    iput-object v6, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mOnSubscriptionsChangedListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    #@64
    .line 553
    new-instance v6, Ljava/util/ArrayList;

    #@66
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    #@69
    iput-object v6, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDisconnectAllCompleteMsgList:Ljava/util/ArrayList;

    #@6b
    .line 555
    new-instance v6, Landroid/os/RegistrantList;

    #@6d
    invoke-direct {v6}, Landroid/os/RegistrantList;-><init>()V

    #@70
    iput-object v6, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAllDataDisconnectedRegistrants:Landroid/os/RegistrantList;

    #@72
    .line 560
    new-instance v6, Ljava/util/concurrent/atomic/AtomicReference;

    #@74
    invoke-direct {v6}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    #@77
    iput-object v6, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    #@79
    .line 561
    sget-object v6, Lcom/android/internal/telephony/DctConstants$Activity;->NONE:Lcom/android/internal/telephony/DctConstants$Activity;

    #@7b
    iput-object v6, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mActivity:Lcom/android/internal/telephony/DctConstants$Activity;

    #@7d
    .line 562
    sget-object v6, Lcom/android/internal/telephony/DctConstants$State;->IDLE:Lcom/android/internal/telephony/DctConstants$State;

    #@7f
    iput-object v6, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mState:Lcom/android/internal/telephony/DctConstants$State;

    #@81
    .line 568
    iput-boolean v9, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mNetStatPollEnabled:Z

    #@83
    .line 570
    new-instance v6, Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxSum;

    #@85
    invoke-direct {v6, v12, v13, v12, v13}, Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxSum;-><init>(JJ)V

    #@88
    iput-object v6, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDataStallTxRxSum:Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxSum;

    #@8a
    .line 572
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@8d
    move-result-wide v6

    #@8e
    long-to-int v6, v6

    #@8f
    iput v6, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDataStallAlarmTag:I

    #@91
    .line 574
    iput-object v10, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDataStallAlarmIntent:Landroid/app/PendingIntent;

    #@93
    .line 578
    iput v9, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mNoRecvPollCount:I

    #@95
    .line 582
    iput-boolean v11, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDataStallDetectionEnabled:Z

    #@97
    .line 584
    iput-boolean v9, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mFailFast:Z

    #@99
    .line 587
    iput-boolean v9, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mInVoiceCall:Z

    #@9b
    .line 590
    iput-boolean v9, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mIsWifiConnected:Z

    #@9d
    .line 593
    iput-object v10, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mReconnectIntent:Landroid/app/PendingIntent;

    #@9f
    .line 596
    iput-boolean v9, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAutoAttachOnCreationConfig:Z

    #@a1
    .line 597
    new-instance v6, Ljava/util/concurrent/atomic/AtomicBoolean;

    #@a3
    invoke-direct {v6, v9}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    #@a6
    iput-object v6, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAutoAttachOnCreation:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@a8
    .line 602
    iput-boolean v11, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mIsScreenOn:Z

    #@aa
    .line 606
    iput-boolean v9, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mMvnoMatched:Z

    #@ac
    .line 609
    new-instance v6, Ljava/util/concurrent/atomic/AtomicInteger;

    #@ae
    invoke-direct {v6, v9}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    #@b1
    iput-object v6, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mUniqueIdGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    #@b3
    .line 613
    new-instance v6, Ljava/util/HashMap;

    #@b5
    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    #@b8
    .line 612
    iput-object v6, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDataConnections:Ljava/util/HashMap;

    #@ba
    .line 617
    new-instance v6, Ljava/util/HashMap;

    #@bc
    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    #@bf
    .line 616
    iput-object v6, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDataConnectionAcHashMap:Ljava/util/HashMap;

    #@c1
    .line 620
    new-instance v6, Ljava/util/HashMap;

    #@c3
    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    #@c6
    iput-object v6, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mApnToDataConnectionId:Ljava/util/HashMap;

    #@c8
    .line 624
    new-instance v6, Ljava/util/concurrent/ConcurrentHashMap;

    #@ca
    invoke-direct {v6}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    #@cd
    .line 623
    iput-object v6, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    #@cf
    .line 626
    new-instance v6, Landroid/util/SparseArray;

    #@d1
    invoke-direct {v6}, Landroid/util/SparseArray;-><init>()V

    #@d4
    iput-object v6, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mApnContextsById:Landroid/util/SparseArray;

    #@d6
    .line 628
    iput v9, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDisconnectPendingCount:I

    #@d8
    .line 632
    iput-object v10, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mRedirectUrl:Ljava/lang/String;

    #@da
    .line 636
    iput-boolean v9, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mColdSimDetected:Z

    #@dc
    .line 640
    iput-boolean v9, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mOutOfCreditSimDetected:Z

    #@de
    .line 644
    new-instance v6, Ljava/util/HashSet;

    #@e0
    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    #@e3
    iput-object v6, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->redirectApnContextSet:Ljava/util/HashSet;

    #@e5
    .line 662
    iput-boolean v9, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mReregisterOnReconnectFailure:Z

    #@e7
    .line 678
    iput-boolean v9, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mCanSetPreferApn:Z

    #@e9
    .line 680
    new-instance v6, Ljava/util/concurrent/atomic/AtomicBoolean;

    #@eb
    invoke-direct {v6, v9}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    #@ee
    iput-object v6, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAttached:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@f0
    .line 689
    iput-boolean v9, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mImsRegistrationState:Z

    #@f2
    .line 694
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    #@f4
    .line 696
    const-string/jumbo v6, "DCT.constructor"

    #@f7
    invoke-direct {p0, v6}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@fa
    .line 698
    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    #@fc
    invoke-virtual {v6}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    #@ff
    move-result-object v6

    #@100
    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@103
    move-result-object v6

    #@104
    iput-object v6, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mResolver:Landroid/content/ContentResolver;

    #@106
    .line 699
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    #@109
    move-result-object v6

    #@10a
    iput-object v6, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    #@10c
    .line 700
    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    #@10e
    const v7, 0x42021

    #@111
    invoke-virtual {v6, p0, v7, v10}, Lcom/android/internal/telephony/uicc/UiccController;->registerForIccChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    #@114
    .line 702
    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    #@116
    invoke-virtual {v6}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    #@119
    move-result-object v6

    #@11a
    const-string/jumbo v7, "alarm"

    #@11d
    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@120
    move-result-object v6

    #@121
    check-cast v6, Landroid/app/AlarmManager;

    #@123
    .line 701
    iput-object v6, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAlarmManager:Landroid/app/AlarmManager;

    #@125
    .line 703
    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    #@127
    invoke-virtual {v6}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    #@12a
    move-result-object v6

    #@12b
    .line 704
    const-string/jumbo v7, "connectivity"

    #@12e
    .line 703
    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@131
    move-result-object v6

    #@132
    check-cast v6, Landroid/net/ConnectivityManager;

    #@134
    iput-object v6, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mCm:Landroid/net/ConnectivityManager;

    #@136
    .line 707
    new-instance v4, Landroid/content/IntentFilter;

    #@138
    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    #@13b
    .line 708
    .local v4, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v6, "android.intent.action.SCREEN_ON"

    #@13e
    invoke-virtual {v4, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@141
    .line 709
    const-string/jumbo v6, "android.intent.action.SCREEN_OFF"

    #@144
    invoke-virtual {v4, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@147
    .line 710
    const-string/jumbo v6, "android.net.wifi.STATE_CHANGE"

    #@14a
    invoke-virtual {v4, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@14d
    .line 711
    const-string/jumbo v6, "android.net.wifi.WIFI_STATE_CHANGED"

    #@150
    invoke-virtual {v4, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@153
    .line 712
    const-string/jumbo v6, "com.android.internal.telephony.data-stall"

    #@156
    invoke-virtual {v4, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@159
    .line 713
    const-string/jumbo v6, "com.android.internal.telephony.provisioning_apn_alarm"

    #@15c
    invoke-virtual {v4, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@15f
    .line 716
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->getDataEnabled()Z

    #@162
    move-result v6

    #@163
    iput-boolean v6, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mUserDataEnabled:Z

    #@165
    .line 718
    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    #@167
    invoke-virtual {v6}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    #@16a
    move-result-object v6

    #@16b
    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    #@16d
    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    #@16f
    invoke-virtual {v6, v7, v4, v10, v8}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    #@172
    .line 720
    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    #@174
    invoke-virtual {v6}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    #@177
    move-result-object v6

    #@178
    invoke-static {v6}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    #@17b
    move-result-object v5

    #@17c
    .line 721
    .local v5, "sp":Landroid/content/SharedPreferences;
    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAutoAttachOnCreation:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@17e
    const-string/jumbo v7, "disabled_on_boot_key"

    #@181
    invoke-interface {v5, v7, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    #@184
    move-result v7

    #@185
    invoke-virtual {v6, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    #@188
    .line 723
    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    #@18a
    invoke-virtual {v6}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    #@18d
    move-result-object v6

    #@18e
    invoke-static {v6}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    #@191
    move-result-object v6

    #@192
    iput-object v6, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    #@194
    .line 724
    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    #@196
    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mOnSubscriptionsChangedListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    #@198
    invoke-virtual {v6, v7}, Landroid/telephony/SubscriptionManager;->addOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    #@19b
    .line 726
    new-instance v3, Landroid/os/HandlerThread;

    #@19d
    const-string/jumbo v6, "DcHandlerThread"

    #@1a0
    invoke-direct {v3, v6}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    #@1a3
    .line 727
    .local v3, "dcHandlerThread":Landroid/os/HandlerThread;
    invoke-virtual {v3}, Landroid/os/HandlerThread;->start()V

    #@1a6
    .line 728
    new-instance v2, Landroid/os/Handler;

    #@1a8
    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    #@1ab
    move-result-object v6

    #@1ac
    invoke-direct {v2, v6}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    #@1af
    .line 729
    .local v2, "dcHandler":Landroid/os/Handler;
    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    #@1b1
    invoke-static {v6, p0, v2}, Lcom/android/internal/telephony/dataconnection/DcController;->makeDcc(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/dataconnection/DcTracker;Landroid/os/Handler;)Lcom/android/internal/telephony/dataconnection/DcController;

    #@1b4
    move-result-object v6

    #@1b5
    iput-object v6, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDcc:Lcom/android/internal/telephony/dataconnection/DcController;

    #@1b7
    .line 730
    new-instance v6, Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;

    #@1b9
    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    #@1bb
    invoke-direct {v6, v7, v2}, Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;-><init>(Lcom/android/internal/telephony/Phone;Landroid/os/Handler;)V

    #@1be
    iput-object v6, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDcTesterFailBringUpAll:Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;

    #@1c0
    .line 732
    iput-object p0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDataConnectionTracker:Landroid/os/Handler;

    #@1c2
    .line 733
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->registerForAllEvents()V

    #@1c5
    .line 734
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->update()V

    #@1c8
    .line 735
    new-instance v6, Lcom/android/internal/telephony/dataconnection/DcTracker$ApnChangeObserver;

    #@1ca
    invoke-direct {v6, p0}, Lcom/android/internal/telephony/dataconnection/DcTracker$ApnChangeObserver;-><init>(Lcom/android/internal/telephony/dataconnection/DcTracker;)V

    #@1cd
    iput-object v6, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mApnObserver:Lcom/android/internal/telephony/dataconnection/DcTracker$ApnChangeObserver;

    #@1cf
    .line 736
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    #@1d2
    move-result-object v6

    #@1d3
    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@1d6
    move-result-object v6

    #@1d7
    .line 737
    sget-object v7, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    #@1d9
    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mApnObserver:Lcom/android/internal/telephony/dataconnection/DcTracker$ApnChangeObserver;

    #@1db
    .line 736
    invoke-virtual {v6, v7, v11, v8}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    #@1de
    .line 739
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->initApnContexts()V

    #@1e1
    .line 741
    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    #@1e3
    invoke-virtual {v6}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    #@1e6
    move-result-object v6

    #@1e7
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@1ea
    move-result-object v1

    #@1eb
    .local v1, "apnContext$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@1ee
    move-result v6

    #@1ef
    if-eqz v6, :cond_0

    #@1f1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1f4
    move-result-object v0

    #@1f5
    check-cast v0, Lcom/android/internal/telephony/dataconnection/ApnContext;

    #@1f7
    .line 743
    .local v0, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    new-instance v4, Landroid/content/IntentFilter;

    #@1f9
    .end local v4    # "filter":Landroid/content/IntentFilter;
    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    #@1fc
    .line 744
    .restart local v4    # "filter":Landroid/content/IntentFilter;
    new-instance v6, Ljava/lang/StringBuilder;

    #@1fe
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@201
    const-string/jumbo v7, "com.android.internal.telephony.data-reconnect."

    #@204
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@207
    move-result-object v6

    #@208
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    #@20b
    move-result-object v7

    #@20c
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20f
    move-result-object v6

    #@210
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@213
    move-result-object v6

    #@214
    invoke-virtual {v4, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@217
    .line 745
    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    #@219
    invoke-virtual {v6}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    #@21c
    move-result-object v6

    #@21d
    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    #@21f
    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    #@221
    invoke-virtual {v6, v7, v4, v10, v8}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    #@224
    goto :goto_0

    #@225
    .line 749
    .end local v0    # "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->initEmergencyApnSetting()V

    #@228
    .line 750
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->addEmergencyApnSetting()V

    #@22b
    .line 752
    new-instance v6, Ljava/lang/StringBuilder;

    #@22d
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@230
    const-string/jumbo v7, "com.android.internal.telephony.PROVISION"

    #@233
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@236
    move-result-object v6

    #@237
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    #@23a
    move-result v7

    #@23b
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@23e
    move-result-object v6

    #@23f
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@242
    move-result-object v6

    #@243
    iput-object v6, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mProvisionActionName:Ljava/lang/String;

    #@245
    .line 754
    new-instance v6, Lcom/android/internal/telephony/dataconnection/DcTracker$SettingsObserver;

    #@247
    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    #@249
    invoke-virtual {v7}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    #@24c
    move-result-object v7

    #@24d
    invoke-direct {v6, v7, p0}, Lcom/android/internal/telephony/dataconnection/DcTracker$SettingsObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    #@250
    iput-object v6, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mSettingsObserver:Lcom/android/internal/telephony/dataconnection/DcTracker$SettingsObserver;

    #@252
    .line 755
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->registerSettingsObserver()V

    #@255
    .line 692
    return-void
.end method

.method private addApnContext(Ljava/lang/String;Landroid/net/NetworkConfig;)Lcom/android/internal/telephony/dataconnection/ApnContext;
    .locals 6
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "networkConfig"    # Landroid/net/NetworkConfig;

    #@0
    .prologue
    .line 1123
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
    .line 1124
    .local v0, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    #@f
    invoke-virtual {v1, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@12
    .line 1125
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mApnContextsById:Landroid/util/SparseArray;

    #@14
    invoke-static {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->apnIdForApnName(Ljava/lang/String;)I

    #@17
    move-result v2

    #@18
    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@1b
    .line 1126
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPrioritySortedApnContexts:Ljava/util/PriorityQueue;

    #@1d
    invoke-virtual {v1, v0}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    #@20
    .line 1127
    return-object v0
.end method

.method private addEmergencyApnSetting()V
    .locals 5

    #@0
    .prologue
    .line 4435
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mEmergencyApn:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    #@2
    if-eqz v3, :cond_0

    #@4
    .line 4436
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAllApnSettings:Ljava/util/ArrayList;

    #@6
    if-nez v3, :cond_1

    #@8
    .line 4437
    new-instance v3, Ljava/util/ArrayList;

    #@a
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    #@d
    iput-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAllApnSettings:Ljava/util/ArrayList;

    #@f
    .line 4434
    :cond_0
    :goto_0
    return-void

    #@10
    .line 4439
    :cond_1
    const/4 v2, 0x0

    #@11
    .line 4440
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
    .line 4441
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
    .line 4442
    const/4 v2, 0x1

    #@2f
    .line 4447
    .end local v0    # "apn":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    :cond_3
    if-nez v2, :cond_4

    #@31
    .line 4448
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAllApnSettings:Ljava/util/ArrayList;

    #@33
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mEmergencyApn:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    #@35
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@38
    goto :goto_0

    #@39
    .line 4450
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
    .line 3621
    .local p1, "apns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/dataconnection/ApnSetting;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 3622
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
    .line 3623
    const/16 v3, 0x5b

    #@e
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@11
    move-result-object v4

    #@12
    .line 3624
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
    .line 3623
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v3

    #@20
    .line 3625
    const/16 v4, 0x5d

    #@22
    .line 3623
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@25
    .line 3622
    add-int/lit8 v0, v0, 0x1

    #@27
    goto :goto_0

    #@28
    .line 3627
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
    .line 3430
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
    .line 3431
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
    .line 3432
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
    .line 3433
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
    .line 3432
    if-nez v2, :cond_0

    #@26
    .line 3434
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
    .line 3432
    if-eqz v2, :cond_1

    #@34
    .line 3436
    :cond_0
    const/4 v2, 0x1

    #@35
    return v2

    #@36
    .line 3431
    :cond_1
    add-int/lit8 v1, v1, 0x1

    #@38
    goto :goto_1

    #@39
    .line 3430
    :cond_2
    add-int/lit8 v0, v0, 0x1

    #@3b
    goto :goto_0

    #@3c
    .line 3442
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
    .line 3447
    const-string/jumbo v0, "dun"

    #@3
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->canHandleType(Ljava/lang/String;)Z

    #@6
    move-result v0

    #@7
    if-nez v0, :cond_0

    #@9
    .line 3448
    const-string/jumbo v0, "dun"

    #@c
    invoke-virtual {p2, v0}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->canHandleType(Ljava/lang/String;)Z

    #@f
    move-result v0

    #@10
    if-nez v0, :cond_0

    #@12
    .line 3449
    iget-object v0, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->apn:Ljava/lang/String;

    #@14
    iget-object v1, p2, Lcom/android/internal/telephony/dataconnection/ApnSetting;->apn:Ljava/lang/String;

    #@16
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@19
    move-result v0

    #@1a
    .line 3447
    if-eqz v0, :cond_0

    #@1c
    .line 3450
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->apnTypeSameAny(Lcom/android/internal/telephony/dataconnection/ApnSetting;Lcom/android/internal/telephony/dataconnection/ApnSetting;)Z

    #@1f
    move-result v0

    #@20
    if-eqz v0, :cond_1

    #@22
    .line 3447
    :cond_0
    const/4 v0, 0x0

    #@23
    :goto_0
    return v0

    #@24
    .line 3451
    :cond_1
    iget-object v0, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->proxy:Ljava/lang/String;

    #@26
    iget-object v1, p2, Lcom/android/internal/telephony/dataconnection/ApnSetting;->proxy:Ljava/lang/String;

    #@28
    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->xorEquals(Ljava/lang/String;Ljava/lang/String;)Z

    #@2b
    move-result v0

    #@2c
    .line 3447
    if-eqz v0, :cond_0

    #@2e
    .line 3452
    iget-object v0, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->port:Ljava/lang/String;

    #@30
    iget-object v1, p2, Lcom/android/internal/telephony/dataconnection/ApnSetting;->port:Ljava/lang/String;

    #@32
    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->xorEquals(Ljava/lang/String;Ljava/lang/String;)Z

    #@35
    move-result v0

    #@36
    .line 3447
    if-eqz v0, :cond_0

    #@38
    .line 3453
    iget-boolean v0, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->carrierEnabled:Z

    #@3a
    iget-boolean v1, p2, Lcom/android/internal/telephony/dataconnection/ApnSetting;->carrierEnabled:Z

    #@3c
    if-ne v0, v1, :cond_0

    #@3e
    .line 3454
    iget v0, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->bearerBitmask:I

    #@40
    iget v1, p2, Lcom/android/internal/telephony/dataconnection/ApnSetting;->bearerBitmask:I

    #@42
    if-ne v0, v1, :cond_0

    #@44
    .line 3455
    iget v0, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->profileId:I

    #@46
    iget v1, p2, Lcom/android/internal/telephony/dataconnection/ApnSetting;->profileId:I

    #@48
    if-ne v0, v1, :cond_0

    #@4a
    .line 3456
    iget-object v0, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mvnoType:Ljava/lang/String;

    #@4c
    iget-object v1, p2, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mvnoType:Ljava/lang/String;

    #@4e
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@51
    move-result v0

    #@52
    .line 3447
    if-eqz v0, :cond_0

    #@54
    .line 3457
    iget-object v0, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mvnoMatchData:Ljava/lang/String;

    #@56
    iget-object v1, p2, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mvnoMatchData:Ljava/lang/String;

    #@58
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@5b
    move-result v0

    #@5c
    .line 3447
    if-eqz v0, :cond_0

    #@5e
    .line 3458
    iget-object v0, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mmsc:Ljava/lang/String;

    #@60
    iget-object v1, p2, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mmsc:Ljava/lang/String;

    #@62
    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->xorEquals(Ljava/lang/String;Ljava/lang/String;)Z

    #@65
    move-result v0

    #@66
    .line 3447
    if-eqz v0, :cond_0

    #@68
    .line 3459
    iget-object v0, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mmsProxy:Ljava/lang/String;

    #@6a
    iget-object v1, p2, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mmsProxy:Ljava/lang/String;

    #@6c
    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->xorEquals(Ljava/lang/String;Ljava/lang/String;)Z

    #@6f
    move-result v0

    #@70
    .line 3447
    if-eqz v0, :cond_0

    #@72
    .line 3460
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
    .line 2479
    const/4 v0, 0x0

    #@1
    .line 2480
    .local v0, "cleanup":Z
    const/4 v3, 0x0

    #@2
    .line 2481
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
    .line 2482
    const-string/jumbo v5, "("

    #@24
    .line 2481
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v4

    #@28
    .line 2482
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->isEnabled()Z

    #@2b
    move-result v5

    #@2c
    .line 2481
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v4

    #@30
    .line 2482
    const-string/jumbo v5, "), "

    #@33
    .line 2481
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v4

    #@37
    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v4

    #@3b
    .line 2482
    const-string/jumbo v5, "("

    #@3e
    .line 2481
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v4

    #@42
    .line 2483
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getDependencyMet()Z

    #@45
    move-result v5

    #@46
    .line 2481
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@49
    move-result-object v4

    #@4a
    .line 2483
    const-string/jumbo v5, "))"

    #@4d
    .line 2481
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@50
    move-result-object v4

    #@51
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@54
    move-result-object v2

    #@55
    .line 2484
    .local v2, "str":Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@58
    .line 2485
    invoke-virtual {p1, v2}, Lcom/android/internal/telephony/dataconnection/ApnContext;->requestLog(Ljava/lang/String;)V

    #@5b
    .line 2487
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->isReady()Z

    #@5e
    move-result v4

    #@5f
    if-eqz v4, :cond_6

    #@61
    .line 2488
    const/4 v0, 0x1

    #@62
    .line 2489
    if-eqz p2, :cond_3

    #@64
    if-eqz p3, :cond_3

    #@66
    .line 2490
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getState()Lcom/android/internal/telephony/DctConstants$State;

    #@69
    move-result-object v1

    #@6a
    .line 2491
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
    .line 2543
    .end local v1    # "state":Lcom/android/internal/telephony/DctConstants$State;
    :cond_0
    :goto_0
    invoke-virtual {p1, p2}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setEnabled(Z)V

    #@7a
    .line 2544
    invoke-virtual {p1, p3}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setDependencyMet(Z)V

    #@7d
    .line 2545
    if-eqz v0, :cond_1

    #@7f
    const/4 v4, 0x1

    #@80
    invoke-direct {p0, v4, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->cleanUpConnection(ZLcom/android/internal/telephony/dataconnection/ApnContext;)V

    #@83
    .line 2546
    :cond_1
    if-eqz v3, :cond_2

    #@85
    .line 2547
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->resetErrorCodeRetries()V

    #@88
    .line 2548
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->trySetupData(Lcom/android/internal/telephony/dataconnection/ApnContext;)Z

    #@8b
    .line 2478
    :cond_2
    return-void

    #@8c
    .line 2497
    .restart local v1    # "state":Lcom/android/internal/telephony/DctConstants$State;
    :pswitch_0
    const-string/jumbo v4, "applyNewState: \'ready\' so return"

    #@8f
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@92
    .line 2498
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
    .line 2499
    return-void

    #@b1
    .line 2506
    :pswitch_1
    const/4 v3, 0x1

    #@b2
    .line 2507
    const-string/jumbo v4, "dataEnabled"

    #@b5
    invoke-virtual {p1, v4}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setReason(Ljava/lang/String;)V

    #@b8
    goto :goto_0

    #@b9
    .line 2511
    .end local v1    # "state":Lcom/android/internal/telephony/DctConstants$State;
    :cond_3
    if-eqz p3, :cond_5

    #@bb
    .line 2512
    const-string/jumbo v4, "dataDisabled"

    #@be
    invoke-virtual {p1, v4}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setReason(Ljava/lang/String;)V

    #@c1
    .line 2522
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
    .line 2523
    const/4 v0, 0x1

    #@d1
    goto :goto_0

    #@d2
    .line 2525
    :cond_4
    const/4 v0, 0x0

    #@d3
    goto :goto_0

    #@d4
    .line 2528
    :cond_5
    const-string/jumbo v4, "dependencyUnmet"

    #@d7
    invoke-virtual {p1, v4}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setReason(Ljava/lang/String;)V

    #@da
    goto :goto_0

    #@db
    .line 2531
    :cond_6
    if-eqz p2, :cond_0

    #@dd
    if-eqz p3, :cond_0

    #@df
    .line 2532
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->isEnabled()Z

    #@e2
    move-result v4

    #@e3
    if-eqz v4, :cond_8

    #@e5
    .line 2533
    const-string/jumbo v4, "dependencyMet"

    #@e8
    invoke-virtual {p1, v4}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setReason(Ljava/lang/String;)V

    #@eb
    .line 2537
    :goto_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getState()Lcom/android/internal/telephony/DctConstants$State;

    #@ee
    move-result-object v4

    #@ef
    sget-object v5, Lcom/android/internal/telephony/DctConstants$State;->FAILED:Lcom/android/internal/telephony/DctConstants$State;

    #@f1
    if-ne v4, v5, :cond_7

    #@f3
    .line 2538
    sget-object v4, Lcom/android/internal/telephony/DctConstants$State;->IDLE:Lcom/android/internal/telephony/DctConstants$State;

    #@f5
    invoke-virtual {p1, v4}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setState(Lcom/android/internal/telephony/DctConstants$State;)V

    #@f8
    .line 2540
    :cond_7
    const/4 v3, 0x1

    #@f9
    goto/16 :goto_0

    #@fb
    .line 2535
    :cond_8
    const-string/jumbo v4, "dataEnabled"

    #@fe
    invoke-virtual {p1, v4}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setReason(Ljava/lang/String;)V

    #@101
    goto :goto_1

    #@102
    .line 2491
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

.method private applyUnProvisionedSimDetected()V
    .locals 6

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 2407
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->isColdSimDetected()Z

    #@5
    move-result v2

    #@6
    if-eqz v2, :cond_1

    #@8
    .line 2408
    iget-boolean v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mColdSimDetected:Z

    #@a
    if-nez v2, :cond_0

    #@c
    .line 2410
    const-string/jumbo v2, "onColdSimDetected: cleanUpAllDataConnections"

    #@f
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@12
    .line 2412
    const/4 v2, 0x0

    #@13
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->cleanUpAllConnections(Ljava/lang/String;)V

    #@16
    .line 2414
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    #@18
    const/4 v3, 0x5

    #@19
    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/Phone;->notifyOtaspChanged(I)V

    #@1c
    .line 2415
    iput-boolean v5, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mColdSimDetected:Z

    #@1e
    .line 2406
    :cond_0
    :goto_0
    return-void

    #@1f
    .line 2417
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->isOutOfCreditSimDetected()Z

    #@22
    move-result v2

    #@23
    if-eqz v2, :cond_3

    #@25
    .line 2418
    iget-boolean v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mOutOfCreditSimDetected:Z

    #@27
    if-nez v2, :cond_0

    #@29
    .line 2420
    const-string/jumbo v2, "onOutOfCreditSimDetected on subId: re-establish data connection"

    #@2c
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@2f
    .line 2422
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->redirectApnContextSet:Ljava/util/HashSet;

    #@31
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@34
    move-result-object v1

    #@35
    .local v1, "context$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@38
    move-result v2

    #@39
    if-eqz v2, :cond_2

    #@3b
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@3e
    move-result-object v0

    #@3f
    check-cast v0, Lcom/android/internal/telephony/dataconnection/ApnContext;

    #@41
    .line 2423
    .local v0, "context":Lcom/android/internal/telephony/dataconnection/ApnContext;
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->onTrySetupData(Lcom/android/internal/telephony/dataconnection/ApnContext;)Z

    #@44
    .line 2424
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->redirectApnContextSet:Ljava/util/HashSet;

    #@46
    invoke-virtual {v2, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    #@49
    goto :goto_1

    #@4a
    .line 2426
    .end local v0    # "context":Lcom/android/internal/telephony/dataconnection/ApnContext;
    :cond_2
    iput-boolean v5, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mOutOfCreditSimDetected:Z

    #@4c
    goto :goto_0

    #@4d
    .line 2429
    .end local v1    # "context$iterator":Ljava/util/Iterator;
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    #@4f
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@52
    const-string/jumbo v3, "Provisioned Sim Detected on subId: "

    #@55
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@58
    move-result-object v2

    #@59
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    #@5b
    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getSubId()I

    #@5e
    move-result v3

    #@5f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@62
    move-result-object v2

    #@63
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@66
    move-result-object v2

    #@67
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@6a
    .line 2430
    iput-boolean v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mColdSimDetected:Z

    #@6c
    .line 2431
    iput-boolean v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mOutOfCreditSimDetected:Z

    #@6e
    goto :goto_0
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
    .line 3534
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
    .line 3535
    new-instance v2, Ljava/util/ArrayList;

    #@1b
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@1e
    .line 3537
    .local v2, "apnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/dataconnection/ApnSetting;>;"
    const-string/jumbo v8, "dun"

    #@21
    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@24
    move-result v8

    #@25
    if-eqz v8, :cond_0

    #@27
    .line 3538
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->fetchDunApn()Lcom/android/internal/telephony/dataconnection/ApnSetting;

    #@2a
    move-result-object v3

    #@2b
    .line 3539
    .local v3, "dun":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    if-eqz v3, :cond_0

    #@2d
    .line 3540
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@30
    .line 3541
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
    .line 3542
    return-object v2

    #@48
    .line 3546
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
    .line 3547
    .local v6, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v6, :cond_2

    #@52
    invoke-virtual {v6}, Lcom/android/internal/telephony/uicc/IccRecords;->getOperatorNumeric()Ljava/lang/String;

    #@55
    move-result-object v5

    #@56
    .line 3554
    .local v5, "operator":Ljava/lang/String;
    :goto_0
    const/4 v7, 0x1

    #@57
    .line 3556
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
    const v9, 0x112007c

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
    .line 3562
    :goto_1
    if-eqz v7, :cond_1

    #@6d
    .line 3563
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->getPreferredApn()Lcom/android/internal/telephony/dataconnection/ApnSetting;

    #@70
    move-result-object v8

    #@71
    iput-object v8, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPreferredApn:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    #@73
    .line 3566
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
    .line 3567
    const-string/jumbo v9, " canSetPreferApn="

    #@86
    .line 3566
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@89
    move-result-object v8

    #@8a
    .line 3567
    iget-boolean v9, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mCanSetPreferApn:Z

    #@8c
    .line 3566
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@8f
    move-result-object v8

    #@90
    .line 3568
    const-string/jumbo v9, " mPreferredApn="

    #@93
    .line 3566
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@96
    move-result-object v8

    #@97
    .line 3568
    iget-object v9, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPreferredApn:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    #@99
    .line 3566
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@9c
    move-result-object v8

    #@9d
    .line 3569
    const-string/jumbo v9, " operator="

    #@a0
    .line 3566
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a3
    move-result-object v8

    #@a4
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a7
    move-result-object v8

    #@a8
    .line 3569
    const-string/jumbo v9, " radioTech="

    #@ab
    .line 3566
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ae
    move-result-object v8

    #@af
    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@b2
    move-result-object v8

    #@b3
    .line 3570
    const-string/jumbo v9, " IccRecords r="

    #@b6
    .line 3566
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
    .line 3573
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
    .line 3574
    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPreferredApn:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    #@d1
    invoke-virtual {v8, p1}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->canHandleType(Ljava/lang/String;)Z

    #@d4
    move-result v8

    #@d5
    .line 3573
    if-eqz v8, :cond_5

    #@d7
    .line 3576
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
    .line 3577
    iget-object v9, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPreferredApn:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    #@f0
    iget-object v9, v9, Lcom/android/internal/telephony/dataconnection/ApnSetting;->numeric:Ljava/lang/String;

    #@f2
    .line 3576
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f5
    move-result-object v8

    #@f6
    .line 3577
    const-string/jumbo v9, ":"

    #@f9
    .line 3576
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@fc
    move-result-object v8

    #@fd
    .line 3577
    iget-object v9, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPreferredApn:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    #@ff
    .line 3576
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
    .line 3579
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
    .line 3580
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
    .line 3581
    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPreferredApn:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    #@120
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@123
    .line 3582
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
    .line 3583
    return-object v2

    #@13b
    .line 3547
    .end local v5    # "operator":Ljava/lang/String;
    .end local v7    # "usePreferred":Z
    :cond_2
    const-string/jumbo v5, ""

    #@13e
    .restart local v5    # "operator":Ljava/lang/String;
    goto/16 :goto_0

    #@140
    .line 3556
    .restart local v7    # "usePreferred":Z
    :cond_3
    const/4 v7, 0x1

    #@141
    goto/16 :goto_1

    #@143
    .line 3558
    :catch_0
    move-exception v4

    #@144
    .line 3559
    .local v4, "e":Landroid/content/res/Resources$NotFoundException;
    const-string/jumbo v8, "buildWaitingApns: usePreferred NotFoundException set to true"

    #@147
    invoke-direct {p0, v8}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@14a
    .line 3560
    const/4 v7, 0x1

    #@14b
    goto/16 :goto_1

    #@14d
    .line 3585
    .end local v4    # "e":Landroid/content/res/Resources$NotFoundException;
    :cond_4
    const-string/jumbo v8, "buildWaitingApns: no preferred APN"

    #@150
    invoke-direct {p0, v8}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@153
    .line 3586
    invoke-direct {p0, v11}, Lcom/android/internal/telephony/dataconnection/DcTracker;->setPreferredApn(I)V

    #@156
    .line 3587
    iput-object v10, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPreferredApn:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    #@158
    .line 3595
    :cond_5
    :goto_2
    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAllApnSettings:Ljava/util/ArrayList;

    #@15a
    if-eqz v8, :cond_9

    #@15c
    .line 3596
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
    .line 3597
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
    .line 3598
    .local v0, "apn":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->canHandleType(Ljava/lang/String;)Z

    #@18a
    move-result v8

    #@18b
    if-eqz v8, :cond_8

    #@18d
    .line 3599
    iget v8, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->bearerBitmask:I

    #@18f
    invoke-static {v8, p2}, Landroid/telephony/ServiceState;->bitmaskHasTech(II)Z

    #@192
    move-result v8

    #@193
    if-eqz v8, :cond_7

    #@195
    .line 3600
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
    .line 3601
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@1af
    goto :goto_3

    #@1b0
    .line 3590
    .end local v0    # "apn":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    .end local v1    # "apn$iterator":Ljava/util/Iterator;
    :cond_6
    const-string/jumbo v8, "buildWaitingApns: no preferred APN"

    #@1b3
    invoke-direct {p0, v8}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@1b6
    .line 3591
    invoke-direct {p0, v11}, Lcom/android/internal/telephony/dataconnection/DcTracker;->setPreferredApn(I)V

    #@1b9
    .line 3592
    iput-object v10, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPreferredApn:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    #@1bb
    goto :goto_2

    #@1bc
    .line 3604
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
    .line 3605
    const-string/jumbo v9, "not include radioTech:"

    #@1d8
    .line 3604
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
    .line 3609
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
    .line 3614
    .end local v0    # "apn":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    .end local v1    # "apn$iterator":Ljava/util/Iterator;
    :cond_9
    const-string/jumbo v8, "mAllApnSettings is null!"

    #@204
    invoke-direct {p0, v8}, Lcom/android/internal/telephony/dataconnection/DcTracker;->loge(Ljava/lang/String;)V

    #@207
    .line 3616
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
    .line 3617
    return-object v2
.end method

.method private cancelReconnectAlarm(Lcom/android/internal/telephony/dataconnection/ApnContext;)V
    .locals 5
    .param p1, "apnContext"    # Lcom/android/internal/telephony/dataconnection/ApnContext;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 1935
    if-nez p1, :cond_0

    #@3
    return-void

    #@4
    .line 1937
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getReconnectIntent()Landroid/app/PendingIntent;

    #@7
    move-result-object v1

    #@8
    .line 1939
    .local v1, "intent":Landroid/app/PendingIntent;
    if-eqz v1, :cond_1

    #@a
    .line 1941
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
    .line 1942
    .local v0, "am":Landroid/app/AlarmManager;
    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    #@1c
    .line 1943
    invoke-virtual {p1, v4}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setReconnectIntent(Landroid/app/PendingIntent;)V

    #@1f
    .line 1934
    .end local v0    # "am":Landroid/app/AlarmManager;
    :cond_1
    return-void
.end method

.method private checkCarrierAppAvailable(Landroid/content/Intent;)Z
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 4134
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->getActivationAppName()[Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    .line 4135
    .local v0, "activationApp":[Ljava/lang/String;
    if-eqz v0, :cond_0

    #@8
    array-length v2, v0

    #@9
    const/4 v3, 0x2

    #@a
    if-eq v2, v3, :cond_1

    #@c
    .line 4136
    :cond_0
    return v4

    #@d
    .line 4139
    :cond_1
    aget-object v2, v0, v4

    #@f
    aget-object v3, v0, v5

    #@11
    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@14
    .line 4141
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    #@16
    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    #@19
    move-result-object v2

    #@1a
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@1d
    move-result-object v1

    #@1e
    .line 4143
    .local v1, "packageManager":Landroid/content/pm/PackageManager;
    const/high16 v2, 0x10000

    #@20
    .line 4142
    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    #@23
    move-result-object v2

    #@24
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    #@27
    move-result v2

    #@28
    if-eqz v2, :cond_2

    #@2a
    .line 4144
    new-instance v2, Ljava/lang/StringBuilder;

    #@2c
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@2f
    const-string/jumbo v3, "Activation Carrier app is configured, but not available: "

    #@32
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v2

    #@36
    .line 4145
    aget-object v3, v0, v4

    #@38
    .line 4144
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v2

    #@3c
    .line 4145
    const-string/jumbo v3, "."

    #@3f
    .line 4144
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v2

    #@43
    .line 4145
    aget-object v3, v0, v5

    #@45
    .line 4144
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v2

    #@49
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4c
    move-result-object v2

    #@4d
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->loge(Ljava/lang/String;)V

    #@50
    .line 4146
    return v4

    #@51
    .line 4148
    :cond_2
    return v5
.end method

.method private checkForCompatibleConnectedApnContext(Lcom/android/internal/telephony/dataconnection/ApnContext;)Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;
    .locals 11
    .param p1, "apnContext"    # Lcom/android/internal/telephony/dataconnection/ApnContext;

    #@0
    .prologue
    const/4 v10, 0x0

    #@1
    .line 2553
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    #@4
    move-result-object v1

    #@5
    .line 2554
    .local v1, "apnType":Ljava/lang/String;
    const/4 v5, 0x0

    #@6
    .line 2556
    .local v5, "dunSetting":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    const-string/jumbo v8, "dun"

    #@9
    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@c
    move-result v8

    #@d
    if-eqz v8, :cond_0

    #@f
    .line 2557
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->fetchDunApn()Lcom/android/internal/telephony/dataconnection/ApnSetting;

    #@12
    move-result-object v5

    #@13
    .line 2560
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
    .line 2563
    const/4 v7, 0x0

    #@2b
    .line 2564
    .local v7, "potentialDcac":Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;
    const/4 v6, 0x0

    #@2c
    .line 2565
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
    .line 2566
    .local v2, "curApnCtx":Lcom/android/internal/telephony/dataconnection/ApnContext;
    invoke-virtual {v2}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getDcAc()Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;

    #@45
    move-result-object v4

    #@46
    .line 2567
    .local v4, "curDcac":Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;
    if-eqz v4, :cond_1

    #@48
    .line 2568
    invoke-virtual {v2}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnSetting()Lcom/android/internal/telephony/dataconnection/ApnSetting;

    #@4b
    move-result-object v0

    #@4c
    .line 2569
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
    .line 2570
    if-eqz v5, :cond_2

    #@65
    .line 2571
    invoke-virtual {v5, v0}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->equals(Ljava/lang/Object;)Z

    #@68
    move-result v8

    #@69
    if-eqz v8, :cond_1

    #@6b
    .line 2572
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
    .line 2575
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
    .line 2577
    const-string/jumbo v9, " curApnCtx="

    #@90
    .line 2575
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
    .line 2579
    return-object v4

    #@a0
    .line 2582
    :pswitch_2
    move-object v7, v4

    #@a1
    .line 2583
    .local v7, "potentialDcac":Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;
    move-object v6, v2

    #@a2
    .local v6, "potentialApnCtx":Lcom/android/internal/telephony/dataconnection/ApnContext;
    goto :goto_0

    #@a3
    .line 2589
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
    .line 2590
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
    .line 2593
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
    .line 2595
    const-string/jumbo v9, " curApnCtx="

    #@d1
    .line 2593
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
    .line 2597
    return-object v4

    #@e1
    .line 2600
    :pswitch_5
    move-object v7, v4

    #@e2
    .line 2601
    .restart local v7    # "potentialDcac":Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;
    move-object v6, v2

    #@e3
    .restart local v6    # "potentialApnCtx":Lcom/android/internal/telephony/dataconnection/ApnContext;
    goto/16 :goto_0

    #@e5
    .line 2613
    .end local v0    # "apnSetting":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    .end local v2    # "curApnCtx":Lcom/android/internal/telephony/dataconnection/ApnContext;
    .end local v4    # "curDcac":Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;
    .end local v6    # "potentialApnCtx":Lcom/android/internal/telephony/dataconnection/ApnContext;
    .end local v7    # "potentialDcac":Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;
    :cond_3
    if-eqz v7, :cond_4

    #@e7
    .line 2615
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
    .line 2616
    const-string/jumbo v9, " curApnCtx="

    #@fa
    .line 2615
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
    .line 2618
    return-object v7

    #@10a
    .line 2621
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
    .line 2622
    return-object v10

    #@122
    .line 2572
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
    .line 2590
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
    .line 1705
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
    .line 1706
    const/4 v3, 0x0

    #@23
    .line 1707
    .local v3, "didDisconnect":Z
    const/4 v4, 0x0

    #@24
    .line 1710
    .local v4, "specificDisable":Z
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@27
    move-result v5

    #@28
    if-nez v5, :cond_0

    #@2a
    .line 1711
    const-string/jumbo v5, "specificDisabled"

    #@2d
    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@30
    move-result v5

    #@31
    if-nez v5, :cond_3

    #@33
    .line 1712
    const-string/jumbo v5, "roamingOn"

    #@36
    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@39
    move-result v4

    #@3a
    .line 1715
    .end local v4    # "specificDisable":Z
    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    #@3c
    invoke-virtual {v5}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    #@3f
    move-result-object v5

    #@40
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@43
    move-result-object v1

    #@44
    .local v1, "apnContext$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@47
    move-result v5

    #@48
    if-eqz v5, :cond_5

    #@4a
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@4d
    move-result-object v0

    #@4e
    check-cast v0, Lcom/android/internal/telephony/dataconnection/ApnContext;

    #@50
    .line 1716
    .local v0, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->isDisconnected()Z

    #@53
    move-result v5

    #@54
    if-nez v5, :cond_2

    #@56
    const/4 v3, 0x1

    #@57
    .line 1717
    :cond_2
    if-eqz v4, :cond_4

    #@59
    .line 1720
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnSetting()Lcom/android/internal/telephony/dataconnection/ApnSetting;

    #@5c
    move-result-object v2

    #@5d
    .line 1721
    .local v2, "apnSetting":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    if-eqz v2, :cond_1

    #@5f
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    #@61
    invoke-virtual {v5}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    #@64
    move-result-object v5

    #@65
    .line 1722
    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    #@67
    invoke-virtual {v6}, Lcom/android/internal/telephony/Phone;->getSubId()I

    #@6a
    move-result v6

    #@6b
    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    #@6d
    invoke-virtual {v7}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    #@70
    move-result-object v7

    #@71
    invoke-virtual {v7}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    #@74
    move-result v7

    #@75
    .line 1721
    invoke-virtual {v2, v5, v6, v7}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->isMetered(Landroid/content/Context;IZ)Z

    #@78
    move-result v5

    #@79
    if-eqz v5, :cond_1

    #@7b
    .line 1723
    new-instance v5, Ljava/lang/StringBuilder;

    #@7d
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@80
    const-string/jumbo v6, "clean up metered ApnContext Type: "

    #@83
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@86
    move-result-object v5

    #@87
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    #@8a
    move-result-object v6

    #@8b
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8e
    move-result-object v5

    #@8f
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@92
    move-result-object v5

    #@93
    invoke-direct {p0, v5}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@96
    .line 1724
    invoke-virtual {v0, p2}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setReason(Ljava/lang/String;)V

    #@99
    .line 1725
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->cleanUpConnection(ZLcom/android/internal/telephony/dataconnection/ApnContext;)V

    #@9c
    goto :goto_1

    #@9d
    .line 1711
    .end local v0    # "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    .end local v1    # "apnContext$iterator":Ljava/util/Iterator;
    .end local v2    # "apnSetting":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    .restart local v4    # "specificDisable":Z
    :cond_3
    const/4 v4, 0x1

    #@9e
    goto :goto_0

    #@9f
    .line 1729
    .end local v4    # "specificDisable":Z
    .restart local v0    # "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    .restart local v1    # "apnContext$iterator":Ljava/util/Iterator;
    :cond_4
    invoke-virtual {v0, p2}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setReason(Ljava/lang/String;)V

    #@a2
    .line 1730
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->cleanUpConnection(ZLcom/android/internal/telephony/dataconnection/ApnContext;)V

    #@a5
    goto :goto_1

    #@a6
    .line 1734
    .end local v0    # "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    :cond_5
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->stopNetStatPoll()V

    #@a9
    .line 1735
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->stopDataStallAlarm()V

    #@ac
    .line 1738
    const-string/jumbo v5, "default"

    #@af
    iput-object v5, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mRequestedApnType:Ljava/lang/String;

    #@b1
    .line 1740
    new-instance v5, Ljava/lang/StringBuilder;

    #@b3
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@b6
    const-string/jumbo v6, "cleanUpConnection: mDisconnectPendingCount = "

    #@b9
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bc
    move-result-object v5

    #@bd
    iget v6, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDisconnectPendingCount:I

    #@bf
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@c2
    move-result-object v5

    #@c3
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c6
    move-result-object v5

    #@c7
    invoke-direct {p0, v5}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@ca
    .line 1741
    if-eqz p1, :cond_6

    #@cc
    iget v5, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDisconnectPendingCount:I

    #@ce
    if-nez v5, :cond_6

    #@d0
    .line 1742
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->notifyDataDisconnectComplete()V

    #@d3
    .line 1743
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->notifyAllDataDisconnected()V

    #@d6
    .line 1746
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
    .line 1772
    if-nez p2, :cond_0

    #@3
    .line 1773
    const-string/jumbo v6, "cleanUpConnection: apn context is null"

    #@6
    invoke-direct {p0, v6}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@9
    .line 1774
    return-void

    #@a
    .line 1777
    :cond_0
    invoke-virtual {p2}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getDcAc()Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;

    #@d
    move-result-object v0

    #@e
    .line 1778
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
    .line 1779
    invoke-virtual {p2}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getReason()Ljava/lang/String;

    #@28
    move-result-object v7

    #@29
    .line 1778
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v6

    #@2d
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@30
    move-result-object v5

    #@31
    .line 1781
    .local v5, "str":Ljava/lang/String;
    invoke-virtual {p2, v5}, Lcom/android/internal/telephony/dataconnection/ApnContext;->requestLog(Ljava/lang/String;)V

    #@34
    .line 1782
    if-eqz p1, :cond_9

    #@36
    .line 1783
    invoke-virtual {p2}, Lcom/android/internal/telephony/dataconnection/ApnContext;->isDisconnected()Z

    #@39
    move-result v6

    #@3a
    if-eqz v6, :cond_4

    #@3c
    .line 1786
    sget-object v6, Lcom/android/internal/telephony/DctConstants$State;->IDLE:Lcom/android/internal/telephony/DctConstants$State;

    #@3e
    invoke-virtual {p2, v6}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setState(Lcom/android/internal/telephony/DctConstants$State;)V

    #@41
    .line 1787
    invoke-virtual {p2}, Lcom/android/internal/telephony/dataconnection/ApnContext;->isReady()Z

    #@44
    move-result v6

    #@45
    if-nez v6, :cond_2

    #@47
    .line 1788
    if-eqz v0, :cond_1

    #@49
    .line 1789
    const-string/jumbo v5, "cleanUpConnection: teardown, disconnected, !ready"

    #@4c
    .line 1790
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
    .line 1791
    invoke-virtual {p2, v5}, Lcom/android/internal/telephony/dataconnection/ApnContext;->requestLog(Ljava/lang/String;)V

    #@6a
    .line 1792
    const-string/jumbo v6, ""

    #@6d
    invoke-virtual {v0, p2, v6, v9}, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->tearDown(Lcom/android/internal/telephony/dataconnection/ApnContext;Ljava/lang/String;Landroid/os/Message;)V

    #@70
    .line 1794
    :cond_1
    invoke-virtual {p2, v9}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setDataConnectionAc(Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;)V

    #@73
    .line 1851
    :cond_2
    :goto_0
    if-eqz v0, :cond_3

    #@75
    .line 1852
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->cancelReconnectAlarm(Lcom/android/internal/telephony/dataconnection/ApnContext;)V

    #@78
    .line 1854
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
    .line 1855
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
    .line 1856
    invoke-virtual {p2, v5}, Lcom/android/internal/telephony/dataconnection/ApnContext;->requestLog(Ljava/lang/String;)V

    #@c8
    .line 1771
    return-void

    #@c9
    .line 1798
    :cond_4
    if-eqz v0, :cond_8

    #@cb
    .line 1799
    invoke-virtual {p2}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getState()Lcom/android/internal/telephony/DctConstants$State;

    #@ce
    move-result-object v6

    #@cf
    sget-object v7, Lcom/android/internal/telephony/DctConstants$State;->DISCONNECTING:Lcom/android/internal/telephony/DctConstants$State;

    #@d1
    if-eq v6, v7, :cond_2

    #@d3
    .line 1800
    const/4 v1, 0x0

    #@d4
    .line 1801
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
    .line 1804
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->teardownForDun()Z

    #@e4
    move-result v6

    #@e5
    if-eqz v6, :cond_5

    #@e7
    .line 1806
    const-string/jumbo v6, "cleanUpConnection: disconnectAll DUN connection"

    #@ea
    invoke-direct {p0, v6}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@ed
    .line 1812
    const/4 v1, 0x1

    #@ee
    .line 1815
    :cond_5
    invoke-virtual {p2}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getConnectionGeneration()I

    #@f1
    move-result v2

    #@f2
    .line 1816
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
    .line 1817
    const-string/jumbo v7, " using gen#"

    #@10a
    .line 1816
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
    .line 1818
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
    .line 1819
    invoke-virtual {p2, v5}, Lcom/android/internal/telephony/dataconnection/ApnContext;->requestLog(Ljava/lang/String;)V

    #@134
    .line 1821
    new-instance v4, Landroid/util/Pair;

    #@136
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@139
    move-result-object v6

    #@13a
    invoke-direct {v4, p2, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    #@13d
    .line 1822
    .local v4, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/internal/telephony/dataconnection/ApnContext;Ljava/lang/Integer;>;"
    const v6, 0x4200f

    #@140
    invoke-virtual {p0, v6, v4}, Lcom/android/internal/telephony/dataconnection/DcTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@143
    move-result-object v3

    #@144
    .line 1823
    .local v3, "msg":Landroid/os/Message;
    if-eqz v1, :cond_7

    #@146
    .line 1824
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
    .line 1829
    :goto_2
    sget-object v6, Lcom/android/internal/telephony/DctConstants$State;->DISCONNECTING:Lcom/android/internal/telephony/DctConstants$State;

    #@153
    invoke-virtual {p2, v6}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setState(Lcom/android/internal/telephony/DctConstants$State;)V

    #@156
    .line 1830
    iget v6, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDisconnectPendingCount:I

    #@158
    add-int/lit8 v6, v6, 0x1

    #@15a
    iput v6, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDisconnectPendingCount:I

    #@15c
    goto/16 :goto_0

    #@15e
    .line 1816
    .end local v3    # "msg":Landroid/os/Message;
    .end local v4    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/internal/telephony/dataconnection/ApnContext;Ljava/lang/Integer;>;"
    :cond_6
    const-string/jumbo v6, ""

    #@161
    goto :goto_1

    #@162
    .line 1826
    .restart local v3    # "msg":Landroid/os/Message;
    .restart local v4    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/internal/telephony/dataconnection/ApnContext;Ljava/lang/Integer;>;"
    :cond_7
    invoke-virtual {p2}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getDcAc()Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;

    #@165
    move-result-object v6

    #@166
    .line 1827
    invoke-virtual {p2}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getReason()Ljava/lang/String;

    #@169
    move-result-object v7

    #@16a
    .line 1826
    invoke-virtual {v6, p2, v7, v3}, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->tearDown(Lcom/android/internal/telephony/dataconnection/ApnContext;Ljava/lang/String;Landroid/os/Message;)V

    #@16d
    goto :goto_2

    #@16e
    .line 1835
    .end local v1    # "disconnectAll":Z
    .end local v2    # "generation":I
    .end local v3    # "msg":Landroid/os/Message;
    .end local v4    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/internal/telephony/dataconnection/ApnContext;Ljava/lang/Integer;>;"
    :cond_8
    sget-object v6, Lcom/android/internal/telephony/DctConstants$State;->IDLE:Lcom/android/internal/telephony/DctConstants$State;

    #@170
    invoke-virtual {p2, v6}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setState(Lcom/android/internal/telephony/DctConstants$State;)V

    #@173
    .line 1836
    const-string/jumbo v6, "cleanUpConnection: connected, bug no DCAC"

    #@176
    invoke-virtual {p2, v6}, Lcom/android/internal/telephony/dataconnection/ApnContext;->requestLog(Ljava/lang/String;)V

    #@179
    .line 1837
    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    #@17b
    invoke-virtual {p2}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getReason()Ljava/lang/String;

    #@17e
    move-result-object v7

    #@17f
    .line 1838
    invoke-virtual {p2}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    #@182
    move-result-object v8

    #@183
    .line 1837
    invoke-virtual {v6, v7, v8}, Lcom/android/internal/telephony/Phone;->notifyDataConnection(Ljava/lang/String;Ljava/lang/String;)V

    #@186
    goto/16 :goto_0

    #@188
    .line 1843
    :cond_9
    if-eqz v0, :cond_a

    #@18a
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->reqReset()V

    #@18d
    .line 1844
    :cond_a
    sget-object v6, Lcom/android/internal/telephony/DctConstants$State;->IDLE:Lcom/android/internal/telephony/DctConstants$State;

    #@18f
    invoke-virtual {p2, v6}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setState(Lcom/android/internal/telephony/DctConstants$State;)V

    #@192
    .line 1845
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
    .line 1846
    invoke-virtual {p2, v9}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setDataConnectionAc(Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;)V

    #@1a2
    goto/16 :goto_0
.end method

.method private cleanUpConnectionsOnUpdatedApns(Z)V
    .locals 9
    .param p1, "tearDown"    # Z

    #@0
    .prologue
    .line 4457
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
    .line 4458
    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAllApnSettings:Ljava/util/ArrayList;

    #@19
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    #@1c
    move-result v7

    #@1d
    if-eqz v7, :cond_3

    #@1f
    .line 4459
    const-string/jumbo v7, "apnChanged"

    #@22
    invoke-direct {p0, p1, v7}, Lcom/android/internal/telephony/dataconnection/DcTracker;->cleanUpAllConnections(ZLjava/lang/String;)Z

    #@25
    .line 4492
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->isConnected()Z

    #@28
    move-result v7

    #@29
    if-nez v7, :cond_1

    #@2b
    .line 4493
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->stopNetStatPoll()V

    #@2e
    .line 4494
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->stopDataStallAlarm()V

    #@31
    .line 4497
    :cond_1
    const-string/jumbo v7, "default"

    #@34
    iput-object v7, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mRequestedApnType:Ljava/lang/String;

    #@36
    .line 4499
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
    .line 4500
    if-eqz p1, :cond_2

    #@51
    iget v7, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDisconnectPendingCount:I

    #@53
    if-nez v7, :cond_2

    #@55
    .line 4501
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->notifyDataDisconnectComplete()V

    #@58
    .line 4502
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->notifyAllDataDisconnected()V

    #@5b
    .line 4456
    :cond_2
    return-void

    #@5c
    .line 4461
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
    .line 4464
    .local v0, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    const/4 v2, 0x1

    #@73
    .line 4465
    .local v2, "cleanUpApn":Z
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getWaitingApns()Ljava/util/ArrayList;

    #@76
    move-result-object v3

    #@77
    .line 4467
    .local v3, "currentWaitingApns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/dataconnection/ApnSetting;>;"
    if-eqz v3, :cond_5

    #@79
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->isDisconnected()Z

    #@7c
    move-result v7

    #@7d
    if-eqz v7, :cond_6

    #@7f
    .line 4485
    :cond_5
    :goto_1
    if-eqz v2, :cond_4

    #@81
    .line 4486
    const-string/jumbo v7, "apnChanged"

    #@84
    invoke-virtual {v0, v7}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setReason(Ljava/lang/String;)V

    #@87
    .line 4487
    const/4 v7, 0x1

    #@88
    invoke-direct {p0, v7, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->cleanUpConnection(ZLcom/android/internal/telephony/dataconnection/ApnContext;)V

    #@8b
    goto :goto_0

    #@8c
    .line 4468
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
    .line 4470
    .local v5, "radioTech":I
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    #@99
    move-result-object v7

    #@9a
    .line 4469
    invoke-direct {p0, v7, v5}, Lcom/android/internal/telephony/dataconnection/DcTracker;->buildWaitingApns(Ljava/lang/String;I)Ljava/util/ArrayList;

    #@9d
    move-result-object v6

    #@9e
    .line 4472
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
    .line 4473
    const/4 v2, 0x0

    #@a9
    .line 4474
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
    .line 4475
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
    .line 4477
    const/4 v2, 0x1

    #@c1
    .line 4478
    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setWaitingApns(Ljava/util/ArrayList;)V

    #@c4
    goto :goto_1

    #@c5
    .line 4474
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
    .line 2833
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
    .line 2835
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
    .line 2851
    :cond_0
    :goto_0
    iput-boolean v5, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mIsProvisioning:Z

    #@27
    .line 2852
    iput-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mProvisioningUrl:Ljava/lang/String;

    #@29
    .line 2853
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mProvisioningSpinner:Landroid/app/ProgressDialog;

    #@2b
    if-eqz v2, :cond_1

    #@2d
    .line 2855
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mProvisioningSpinner:Landroid/app/ProgressDialog;

    #@2f
    .line 2854
    const v3, 0x4202a

    #@32
    invoke-virtual {p0, v3, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@35
    move-result-object v2

    #@36
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->sendMessage(Landroid/os/Message;)Z

    #@39
    .line 2858
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
    .line 2859
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->startNetStatPoll()V

    #@49
    .line 2860
    invoke-direct {p0, v5}, Lcom/android/internal/telephony/dataconnection/DcTracker;->startDataStallAlarm(Z)V

    #@4c
    .line 2831
    return-void

    #@4d
    .line 2837
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
    .line 2838
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mProvisioningUrl:Ljava/lang/String;

    #@5b
    .line 2837
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
    .line 2840
    const-string/jumbo v2, "android.intent.action.MAIN"

    #@69
    .line 2841
    const-string/jumbo v3, "android.intent.category.APP_BROWSER"

    #@6c
    .line 2840
    invoke-static {v2, v3}, Landroid/content/Intent;->makeMainSelectorActivity(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@6f
    move-result-object v1

    #@70
    .line 2842
    .local v1, "newIntent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mProvisioningUrl:Ljava/lang/String;

    #@72
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    #@75
    move-result-object v2

    #@76
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    #@79
    .line 2843
    const/high16 v2, 0x10400000

    #@7b
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    #@7e
    .line 2846
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
    .line 2847
    :catch_0
    move-exception v0

    #@89
    .line 2848
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
    .line 3342
    iput-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mMvnoMatched:Z

    #@4
    .line 3343
    new-instance v0, Ljava/util/ArrayList;

    #@6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@9
    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAllApnSettings:Ljava/util/ArrayList;

    #@b
    .line 3344
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    #@d
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    #@10
    move-result-object v8

    #@11
    check-cast v8, Lcom/android/internal/telephony/uicc/IccRecords;

    #@13
    .line 3345
    .local v8, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v8, :cond_2

    #@15
    invoke-virtual {v8}, Lcom/android/internal/telephony/uicc/IccRecords;->getOperatorNumeric()Ljava/lang/String;

    #@18
    move-result-object v7

    #@19
    .line 3346
    .local v7, "operator":Ljava/lang/String;
    :goto_0
    if-eqz v7, :cond_1

    #@1b
    .line 3347
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
    .line 3348
    .local v3, "selection":Ljava/lang/String;
    const-string/jumbo v5, "_id"

    #@39
    .line 3352
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
    .line 3354
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
    .line 3355
    sget-object v1, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    #@5c
    move-object v4, v2

    #@5d
    .line 3354
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    #@60
    move-result-object v6

    #@61
    .line 3357
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    #@63
    .line 3358
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    #@66
    move-result v0

    #@67
    if-lez v0, :cond_0

    #@69
    .line 3359
    invoke-direct {p0, v6}, Lcom/android/internal/telephony/dataconnection/DcTracker;->createApnList(Landroid/database/Cursor;)Ljava/util/ArrayList;

    #@6c
    move-result-object v0

    #@6d
    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAllApnSettings:Ljava/util/ArrayList;

    #@6f
    .line 3361
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    #@72
    .line 3365
    .end local v3    # "selection":Ljava/lang/String;
    .end local v5    # "orderBy":Ljava/lang/String;
    .end local v6    # "cursor":Landroid/database/Cursor;
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->addEmergencyApnSetting()V

    #@75
    .line 3367
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->dedupeApnSettings()V

    #@78
    .line 3369
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAllApnSettings:Ljava/util/ArrayList;

    #@7a
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    #@7d
    move-result v0

    #@7e
    if-eqz v0, :cond_3

    #@80
    .line 3370
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
    .line 3371
    iput-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPreferredApn:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    #@99
    .line 3382
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
    .line 3384
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->setDataProfilesAsNeeded()V

    #@b5
    .line 3341
    return-void

    #@b6
    .line 3345
    .end local v7    # "operator":Ljava/lang/String;
    :cond_2
    const-string/jumbo v7, ""

    #@b9
    goto/16 :goto_0

    #@bb
    .line 3375
    .restart local v7    # "operator":Ljava/lang/String;
    :cond_3
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->getPreferredApn()Lcom/android/internal/telephony/dataconnection/ApnSetting;

    #@be
    move-result-object v0

    #@bf
    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPreferredApn:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    #@c1
    .line 3376
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
    .line 3380
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
    .line 3377
    :cond_5
    iput-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPreferredApn:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    #@eb
    .line 3378
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
    .line 2012
    new-instance v1, Ljava/util/ArrayList;

    #@2
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 2013
    .local v1, "mnoApns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/dataconnection/ApnSetting;>;"
    new-instance v2, Ljava/util/ArrayList;

    #@7
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@a
    .line 2014
    .local v2, "mvnoApns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/dataconnection/ApnSetting;>;"
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    #@c
    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    #@f
    move-result-object v3

    #@10
    check-cast v3, Lcom/android/internal/telephony/uicc/IccRecords;

    #@12
    .line 2016
    .local v3, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    #@15
    move-result v5

    #@16
    if-eqz v5, :cond_2

    #@18
    .line 2018
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->makeApnSetting(Landroid/database/Cursor;)Lcom/android/internal/telephony/dataconnection/ApnSetting;

    #@1b
    move-result-object v0

    #@1c
    .line 2019
    .local v0, "apn":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    if-nez v0, :cond_3

    #@1e
    .line 2030
    :cond_1
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    #@21
    move-result v5

    #@22
    if-nez v5, :cond_0

    #@24
    .line 2034
    .end local v0    # "apn":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    :cond_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    #@27
    move-result v5

    #@28
    if-eqz v5, :cond_5

    #@2a
    .line 2035
    move-object v4, v1

    #@2b
    .line 2036
    .local v4, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/dataconnection/ApnSetting;>;"
    const/4 v5, 0x0

    #@2c
    iput-boolean v5, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mMvnoMatched:Z

    #@2e
    .line 2041
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
    .line 2042
    return-object v4

    #@46
    .line 2023
    .end local v4    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/dataconnection/ApnSetting;>;"
    .restart local v0    # "apn":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    :cond_3
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->hasMvnoParams()Z

    #@49
    move-result v5

    #@4a
    if-eqz v5, :cond_4

    #@4c
    .line 2024
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
    .line 2025
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@5b
    goto :goto_0

    #@5c
    .line 2028
    :cond_4
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@5f
    goto :goto_0

    #@60
    .line 2038
    .end local v0    # "apn":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    :cond_5
    move-object v4, v2

    #@61
    .line 2039
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
    .line 3499
    const-string/jumbo v4, "createDataConnection E"

    #@3
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@6
    .line 3501
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mUniqueIdGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    #@8
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    #@b
    move-result v2

    #@c
    .line 3502
    .local v2, "id":I
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    #@e
    .line 3503
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDcTesterFailBringUpAll:Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;

    #@10
    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDcc:Lcom/android/internal/telephony/dataconnection/DcController;

    #@12
    .line 3502
    invoke-static {v4, v2, p0, v5, v6}, Lcom/android/internal/telephony/dataconnection/DataConnection;->makeDataConnection(Lcom/android/internal/telephony/Phone;ILcom/android/internal/telephony/dataconnection/DcTracker;Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;Lcom/android/internal/telephony/dataconnection/DcController;)Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@15
    move-result-object v0

    #@16
    .line 3504
    .local v0, "conn":Lcom/android/internal/telephony/dataconnection/DataConnection;
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDataConnections:Ljava/util/HashMap;

    #@18
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1b
    move-result-object v5

    #@1c
    invoke-virtual {v4, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1f
    .line 3505
    new-instance v1, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;

    #@21
    const-string/jumbo v4, "DCT"

    #@24
    invoke-direct {v1, v0, v4}, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;-><init>(Lcom/android/internal/telephony/dataconnection/DataConnection;Ljava/lang/String;)V

    #@27
    .line 3506
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
    .line 3507
    .local v3, "status":I
    if-nez v3, :cond_0

    #@37
    .line 3508
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
    .line 3513
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
    .line 3514
    return-object v1

    #@67
    .line 3510
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
    .line 2046
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
    .line 2047
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
    .line 2048
    .local v0, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getDcAc()Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;

    #@30
    move-result-object v2

    #@31
    if-ne v2, p1, :cond_0

    #@33
    .line 2049
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
    .line 2050
    const/4 v2, 0x0

    #@4b
    return v2

    #@4c
    .line 2056
    .end local v0    # "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    :cond_1
    const-string/jumbo v2, "dataConnectionNotInUse: tearDownAll"

    #@4f
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@52
    .line 2057
    const-string/jumbo v2, "No connection"

    #@55
    const/4 v3, 0x0

    #@56
    invoke-virtual {p1, v2, v3}, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->tearDownAll(Ljava/lang/String;Landroid/os/Message;)V

    #@59
    .line 2058
    const-string/jumbo v2, "dataConnectionNotInUse: not in use return true"

    #@5c
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@5f
    .line 2059
    const/4 v2, 0x1

    #@60
    return v2
.end method

.method private dedupeApnSettings()V
    .locals 7

    #@0
    .prologue
    .line 3388
    new-instance v4, Ljava/util/ArrayList;

    #@2
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 3392
    .local v4, "resultApns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/dataconnection/ApnSetting;>;"
    const/4 v1, 0x0

    #@6
    .line 3393
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
    .line 3394
    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAllApnSettings:Ljava/util/ArrayList;

    #@12
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@15
    move-result-object v0

    #@16
    check-cast v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;

    #@18
    .line 3395
    .local v0, "first":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    const/4 v5, 0x0

    #@19
    .line 3396
    .local v5, "second":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    add-int/lit8 v2, v1, 0x1

    #@1b
    .line 3397
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
    .line 3398
    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAllApnSettings:Ljava/util/ArrayList;

    #@25
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@28
    move-result-object v5

    #@29
    check-cast v5, Lcom/android/internal/telephony/dataconnection/ApnSetting;

    #@2b
    .line 3399
    .local v5, "second":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    invoke-direct {p0, v0, v5}, Lcom/android/internal/telephony/dataconnection/DcTracker;->apnsSimilar(Lcom/android/internal/telephony/dataconnection/ApnSetting;Lcom/android/internal/telephony/dataconnection/ApnSetting;)Z

    #@2e
    move-result v6

    #@2f
    if-eqz v6, :cond_0

    #@31
    .line 3400
    invoke-direct {p0, v0, v5}, Lcom/android/internal/telephony/dataconnection/DcTracker;->mergeApns(Lcom/android/internal/telephony/dataconnection/ApnSetting;Lcom/android/internal/telephony/dataconnection/ApnSetting;)Lcom/android/internal/telephony/dataconnection/ApnSetting;

    #@34
    move-result-object v3

    #@35
    .line 3401
    .local v3, "newApn":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAllApnSettings:Ljava/util/ArrayList;

    #@37
    invoke-virtual {v6, v1, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    #@3a
    .line 3402
    move-object v0, v3

    #@3b
    .line 3403
    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAllApnSettings:Ljava/util/ArrayList;

    #@3d
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@40
    goto :goto_1

    #@41
    .line 3405
    .end local v3    # "newApn":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    #@43
    goto :goto_1

    #@44
    .line 3408
    .end local v5    # "second":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    #@46
    goto :goto_0

    #@47
    .line 3387
    .end local v0    # "first":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    .end local v2    # "j":I
    :cond_2
    return-void
.end method

.method private destroyDataConnections()V
    .locals 1

    #@0
    .prologue
    .line 3518
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDataConnections:Ljava/util/HashMap;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 3519
    const-string/jumbo v0, "destroyDataConnections: clear mDataConnectionList"

    #@7
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@a
    .line 3520
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDataConnections:Ljava/util/HashMap;

    #@c
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    #@f
    .line 3517
    :goto_0
    return-void

    #@10
    .line 3522
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
    .line 4642
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->getOverallState()Lcom/android/internal/telephony/DctConstants$State;

    #@3
    move-result-object v2

    #@4
    sget-object v3, Lcom/android/internal/telephony/DctConstants$State;->CONNECTED:Lcom/android/internal/telephony/DctConstants$State;

    #@6
    if-ne v2, v3, :cond_0

    #@8
    .line 4644
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->getRecoveryAction()I

    #@b
    move-result v1

    #@c
    .line 4645
    .local v1, "recoveryAction":I
    packed-switch v1, :pswitch_data_0

    #@f
    .line 4691
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
    .line 4648
    :pswitch_0
    iget-wide v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mSentSinceLastRecv:J

    #@2b
    .line 4647
    const v4, 0xc3c6

    #@2e
    invoke-static {v4, v2, v3}, Landroid/util/EventLog;->writeEvent(IJ)I

    #@31
    .line 4649
    const-string/jumbo v2, "doRecovery() get data call list"

    #@34
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@37
    .line 4650
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    #@39
    iget-object v2, v2, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@3b
    const v3, 0x42004

    #@3e
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/dataconnection/DcTracker;->obtainMessage(I)Landroid/os/Message;

    #@41
    move-result-object v3

    #@42
    invoke-interface {v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->getDataCallList(Landroid/os/Message;)V

    #@45
    .line 4651
    const/4 v2, 0x1

    #@46
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->putRecoveryAction(I)V

    #@49
    .line 4694
    :goto_0
    const-wide/16 v2, 0x0

    #@4b
    iput-wide v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mSentSinceLastRecv:J

    #@4d
    .line 4641
    .end local v1    # "recoveryAction":I
    :cond_0
    return-void

    #@4e
    .line 4654
    .restart local v1    # "recoveryAction":I
    :pswitch_1
    iget-wide v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mSentSinceLastRecv:J

    #@50
    const v4, 0xc3c7

    #@53
    invoke-static {v4, v2, v3}, Landroid/util/EventLog;->writeEvent(IJ)I

    #@56
    .line 4655
    const-string/jumbo v2, "doRecovery() cleanup all connections"

    #@59
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@5c
    .line 4656
    const-string/jumbo v2, "pdpReset"

    #@5f
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->cleanUpAllConnections(Ljava/lang/String;)V

    #@62
    .line 4657
    const/4 v2, 0x2

    #@63
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->putRecoveryAction(I)V

    #@66
    goto :goto_0

    #@67
    .line 4661
    :pswitch_2
    iget-wide v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mSentSinceLastRecv:J

    #@69
    .line 4660
    const v4, 0xc3c8

    #@6c
    invoke-static {v4, v2, v3}, Landroid/util/EventLog;->writeEvent(IJ)I

    #@6f
    .line 4662
    const-string/jumbo v2, "doRecovery() re-register"

    #@72
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@75
    .line 4663
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    #@77
    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    #@7a
    move-result-object v2

    #@7b
    const/4 v3, 0x0

    #@7c
    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/ServiceStateTracker;->reRegisterNetwork(Landroid/os/Message;)V

    #@7f
    .line 4664
    const/4 v2, 0x3

    #@80
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->putRecoveryAction(I)V

    #@83
    goto :goto_0

    #@84
    .line 4668
    :pswitch_3
    iget-wide v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mSentSinceLastRecv:J

    #@86
    .line 4667
    const v4, 0xc3c9

    #@89
    invoke-static {v4, v2, v3}, Landroid/util/EventLog;->writeEvent(IJ)I

    #@8c
    .line 4669
    const-string/jumbo v2, "restarting radio"

    #@8f
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@92
    .line 4670
    const/4 v2, 0x4

    #@93
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->putRecoveryAction(I)V

    #@96
    .line 4671
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->restartRadio()V

    #@99
    goto :goto_0

    #@9a
    .line 4680
    :pswitch_4
    const v2, 0xc3ca

    #@9d
    const/4 v3, -0x1

    #@9e
    invoke-static {v2, v3}, Landroid/util/EventLog;->writeEvent(II)I

    #@a1
    .line 4681
    const-string/jumbo v2, "restarting radio with gsm.radioreset to true"

    #@a4
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@a7
    .line 4682
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->RADIO_RESET_PROPERTY:Ljava/lang/String;

    #@a9
    const-string/jumbo v3, "true"

    #@ac
    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    #@af
    .line 4685
    const-wide/16 v2, 0x3e8

    #@b1
    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    #@b4
    .line 4687
    :goto_1
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->restartRadio()V

    #@b7
    .line 4688
    const/4 v2, 0x0

    #@b8
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->putRecoveryAction(I)V

    #@bb
    goto :goto_0

    #@bc
    .line 4686
    :catch_0
    move-exception v0

    #@bd
    .local v0, "e":Ljava/lang/InterruptedException;
    goto :goto_1

    #@be
    .line 4645
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
    .line 2256
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
    .line 2257
    .local v0, "dcac":Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->getCidSync()I

    #@19
    move-result v2

    #@1a
    if-ne v2, p1, :cond_0

    #@1c
    .line 2258
    return-object v0

    #@1d
    .line 2261
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
    .line 2063
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
    .line 2064
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
    .line 2066
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
    .line 2069
    return-object v0

    #@3a
    .line 2072
    .end local v0    # "dcac":Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;
    :cond_1
    const-string/jumbo v2, "findFreeDataConnection: NO free DataConnection"

    #@3d
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@40
    .line 2073
    const/4 v2, 0x0

    #@41
    return-object v2
.end method

.method private getActivationAppName()[Ljava/lang/String;
    .locals 5

    #@0
    .prologue
    .line 3099
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    #@2
    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    #@5
    move-result-object v3

    #@6
    .line 3100
    const-string/jumbo v4, "carrier_config"

    #@9
    .line 3099
    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@c
    move-result-object v2

    #@d
    check-cast v2, Landroid/telephony/CarrierConfigManager;

    #@f
    .line 3101
    .local v2, "configManager":Landroid/telephony/CarrierConfigManager;
    const/4 v1, 0x0

    #@10
    .line 3104
    .local v1, "b":Landroid/os/PersistableBundle;
    if-eqz v2, :cond_0

    #@12
    .line 3105
    invoke-virtual {v2}, Landroid/telephony/CarrierConfigManager;->getConfig()Landroid/os/PersistableBundle;

    #@15
    move-result-object v1

    #@16
    .line 3107
    .end local v1    # "b":Landroid/os/PersistableBundle;
    :cond_0
    if-eqz v1, :cond_1

    #@18
    .line 3108
    const-string/jumbo v3, "sim_state_detection_carrier_app_string_array"

    #@1b
    invoke-virtual {v1, v3}, Landroid/os/PersistableBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    #@1e
    move-result-object v0

    #@1f
    .line 3116
    .local v0, "activationApp":[Ljava/lang/String;
    :goto_0
    return-object v0

    #@20
    .line 3112
    .end local v0    # "activationApp":[Ljava/lang/String;
    :cond_1
    invoke-static {}, Landroid/telephony/CarrierConfigManager;->getDefaultConfig()Landroid/os/PersistableBundle;

    #@23
    move-result-object v3

    #@24
    .line 3113
    const-string/jumbo v4, "sim_state_detection_carrier_app_string_array"

    #@27
    .line 3112
    invoke-virtual {v3, v4}, Landroid/os/PersistableBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    #@2a
    move-result-object v0

    #@2b
    .restart local v0    # "activationApp":[Ljava/lang/String;
    goto :goto_0
.end method

.method private getApnProfileID(Ljava/lang/String;)I
    .locals 2
    .param p1, "apnType"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 4039
    const-string/jumbo v0, "ims"

    #@4
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 4040
    const/4 v0, 0x2

    #@b
    return v0

    #@c
    .line 4041
    :cond_0
    const-string/jumbo v0, "fota"

    #@f
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    #@12
    move-result v0

    #@13
    if-eqz v0, :cond_1

    #@15
    .line 4042
    const/4 v0, 0x3

    #@16
    return v0

    #@17
    .line 4043
    :cond_1
    const-string/jumbo v0, "cbs"

    #@1a
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    #@1d
    move-result v0

    #@1e
    if-eqz v0, :cond_2

    #@20
    .line 4044
    const/4 v0, 0x4

    #@21
    return v0

    #@22
    .line 4045
    :cond_2
    const-string/jumbo v0, "ia"

    #@25
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    #@28
    move-result v0

    #@29
    if-eqz v0, :cond_3

    #@2b
    .line 4046
    return v1

    #@2c
    .line 4047
    :cond_3
    const-string/jumbo v0, "dun"

    #@2f
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    #@32
    move-result v0

    #@33
    if-eqz v0, :cond_4

    #@35
    .line 4048
    const/4 v0, 0x1

    #@36
    return v0

    #@37
    .line 4050
    :cond_4
    return v1
.end method

.method private getCellLocationId()I
    .locals 3

    #@0
    .prologue
    .line 4055
    const/4 v0, -0x1

    #@1
    .line 4056
    .local v0, "cid":I
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    #@3
    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getCellLocation()Landroid/telephony/CellLocation;

    #@6
    move-result-object v1

    #@7
    .line 4058
    .local v1, "loc":Landroid/telephony/CellLocation;
    if-eqz v1, :cond_0

    #@9
    .line 4059
    instance-of v2, v1, Landroid/telephony/gsm/GsmCellLocation;

    #@b
    if-eqz v2, :cond_1

    #@d
    .line 4060
    check-cast v1, Landroid/telephony/gsm/GsmCellLocation;

    #@f
    .end local v1    # "loc":Landroid/telephony/CellLocation;
    invoke-virtual {v1}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    #@12
    move-result v0

    #@13
    .line 4065
    :cond_0
    :goto_0
    return v0

    #@14
    .line 4061
    .restart local v1    # "loc":Landroid/telephony/CellLocation;
    :cond_1
    instance-of v2, v1, Landroid/telephony/cdma/CdmaCellLocation;

    #@16
    if-eqz v2, :cond_0

    #@18
    .line 4062
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
    .line 3651
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
    .line 3652
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
    .line 3653
    return-object v3

    #@2e
    .line 3652
    :cond_1
    const-string/jumbo v0, "empty"

    #@31
    goto :goto_0

    #@32
    .line 3656
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
    .line 3657
    .local v10, "subId":Ljava/lang/String;
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->PREFERAPN_NO_UPDATE_URI_USING_SUBID:Landroid/net/Uri;

    #@3f
    invoke-static {v0, v10}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    #@42
    move-result-object v1

    #@43
    .line 3658
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
    .line 3659
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
    .line 3660
    const-string/jumbo v5, "name ASC"

    #@63
    move-object v4, v3

    #@64
    .line 3658
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    #@67
    move-result-object v6

    #@68
    .line 3662
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_4

    #@6a
    .line 3663
    iput-boolean v12, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mCanSetPreferApn:Z

    #@6c
    .line 3667
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
    .line 3668
    const-string/jumbo v2, " cursor.count="

    #@8c
    .line 3667
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8f
    move-result-object v2

    #@90
    .line 3668
    if-eqz v6, :cond_5

    #@92
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    #@95
    move-result v0

    #@96
    .line 3667
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
    .line 3670
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
    .line 3672
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    #@ae
    .line 3673
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
    .line 3674
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
    .line 3675
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
    .line 3676
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
    .line 3677
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
    .line 3678
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    #@108
    .line 3679
    return-object v7

    #@109
    .line 3665
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
    .line 3668
    goto :goto_2

    #@10f
    .line 3684
    :cond_6
    if-eqz v6, :cond_7

    #@111
    .line 3685
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    #@114
    .line 3688
    :cond_7
    const-string/jumbo v0, "getPreferredApn: X not found"

    #@117
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@11a
    .line 3689
    return-object v3
.end method

.method private getRecoveryAction()I
    .locals 4

    #@0
    .prologue
    .line 4630
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mResolver:Landroid/content/ContentResolver;

    #@2
    .line 4631
    const-string/jumbo v2, "radio.data.stall.recovery.action"

    #@5
    const/4 v3, 0x0

    #@6
    .line 4630
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    #@9
    move-result v0

    #@a
    .line 4633
    .local v0, "action":I
    return v0
.end method

.method private getUiccRecords(I)Lcom/android/internal/telephony/uicc/IccRecords;
    .locals 2
    .param p1, "appFamily"    # I

    #@0
    .prologue
    .line 4069
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
    .line 3043
    if-eqz p1, :cond_1

    #@3
    iget-object v3, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    #@5
    instance-of v3, v3, Landroid/util/Pair;

    #@7
    if-eqz v3, :cond_1

    #@9
    .line 3044
    iget-object v2, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    #@b
    check-cast v2, Landroid/util/Pair;

    #@d
    .line 3045
    .local v2, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/internal/telephony/dataconnection/ApnContext;Ljava/lang/Integer;>;"
    iget-object v0, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    #@f
    check-cast v0, Lcom/android/internal/telephony/dataconnection/ApnContext;

    #@11
    .line 3046
    .local v0, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    if-eqz v0, :cond_1

    #@13
    .line 3047
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getConnectionGeneration()I

    #@16
    move-result v1

    #@17
    .line 3049
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
    .line 3050
    const-string/jumbo v4, " vs "

    #@40
    .line 3049
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v3

    #@44
    .line 3050
    iget-object v4, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    #@46
    .line 3049
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
    .line 3052
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
    .line 3053
    return-object v0

    #@5c
    .line 3055
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
    .line 3056
    return-object v5

    #@74
    .line 3060
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
    .line 2266
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
    .line 2267
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->notifyDataConnection(Ljava/lang/String;)V

    #@1a
    .line 2265
    return-void
.end method

.method private handleStartNetStatPoll(Lcom/android/internal/telephony/DctConstants$Activity;)V
    .locals 1
    .param p1, "activity"    # Lcom/android/internal/telephony/DctConstants$Activity;

    #@0
    .prologue
    .line 4551
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->startNetStatPoll()V

    #@3
    .line 4552
    const/4 v0, 0x0

    #@4
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->startDataStallAlarm(Z)V

    #@7
    .line 4553
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->setActivity(Lcom/android/internal/telephony/DctConstants$Activity;)V

    #@a
    .line 4550
    return-void
.end method

.method private handleStopNetStatPoll(Lcom/android/internal/telephony/DctConstants$Activity;)V
    .locals 0
    .param p1, "activity"    # Lcom/android/internal/telephony/DctConstants$Activity;

    #@0
    .prologue
    .line 4564
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->stopNetStatPoll()V

    #@3
    .line 4565
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->stopDataStallAlarm()V

    #@6
    .line 4566
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->setActivity(Lcom/android/internal/telephony/DctConstants$Activity;)V

    #@9
    .line 4563
    return-void
.end method

.method private initApnContexts()V
    .locals 8

    #@0
    .prologue
    .line 1131
    const-string/jumbo v4, "initApnContexts: E"

    #@3
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@6
    .line 1133
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
    .line 1134
    const v5, 0x107000f

    #@13
    .line 1133
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    #@16
    move-result-object v3

    #@17
    .line 1135
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
    .line 1136
    .local v2, "networkConfigString":Ljava/lang/String;
    new-instance v1, Landroid/net/NetworkConfig;

    #@1f
    invoke-direct {v1, v2}, Landroid/net/NetworkConfig;-><init>(Ljava/lang/String;)V

    #@22
    .line 1137
    .local v1, "networkConfig":Landroid/net/NetworkConfig;
    const/4 v0, 0x0

    #@23
    .line 1139
    .local v0, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    iget v6, v1, Landroid/net/NetworkConfig;->type:I

    #@25
    packed-switch v6, :pswitch_data_0

    #@28
    .line 1171
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
    .line 1135
    .end local v0    # "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    :goto_1
    add-int/lit8 v4, v4, 0x1

    #@43
    goto :goto_0

    #@44
    .line 1141
    .restart local v0    # "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    :pswitch_1
    const-string/jumbo v6, "default"

    #@47
    invoke-direct {p0, v6, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->addApnContext(Ljava/lang/String;Landroid/net/NetworkConfig;)Lcom/android/internal/telephony/dataconnection/ApnContext;

    #@4a
    move-result-object v0

    #@4b
    .line 1174
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
    .line 1144
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
    .line 1147
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
    .line 1150
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
    .line 1153
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
    .line 1156
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
    .line 1159
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
    .line 1162
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
    .line 1165
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
    .line 1168
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
    .line 1130
    .end local v0    # "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    .end local v1    # "networkConfig":Landroid/net/NetworkConfig;
    .end local v2    # "networkConfigString":Ljava/lang/String;
    :cond_0
    return-void

    #@ac
    .line 1139
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
    .line 4417
    const-string/jumbo v3, "type=\"emergency\""

    #@4
    .line 4418
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
    .line 4419
    sget-object v1, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    #@10
    move-object v4, v2

    #@11
    move-object v5, v2

    #@12
    .line 4418
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    #@15
    move-result-object v6

    #@16
    .line 4421
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    #@18
    .line 4422
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    #@1b
    move-result v0

    #@1c
    if-lez v0, :cond_0

    #@1e
    .line 4423
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    #@21
    move-result v0

    #@22
    if-eqz v0, :cond_0

    #@24
    .line 4424
    invoke-direct {p0, v6}, Lcom/android/internal/telephony/dataconnection/DcTracker;->makeApnSetting(Landroid/database/Cursor;)Lcom/android/internal/telephony/dataconnection/ApnSetting;

    #@27
    move-result-object v0

    #@28
    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mEmergencyApn:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    #@2a
    .line 4427
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    #@2d
    .line 4412
    :cond_1
    return-void
.end method

.method private isColdSimDetected()Z
    .locals 6

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    .line 983
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    #@3
    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getSubId()I

    #@6
    move-result v1

    #@7
    .line 984
    .local v1, "subId":I
    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    #@a
    move-result v3

    #@b
    if-eqz v3, :cond_0

    #@d
    .line 985
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    #@f
    invoke-virtual {v3, v1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    #@12
    move-result-object v2

    #@13
    .line 986
    .local v2, "subInfo":Landroid/telephony/SubscriptionInfo;
    if-eqz v2, :cond_0

    #@15
    .line 987
    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSimProvisioningStatus()I

    #@18
    move-result v0

    #@19
    .line 988
    .local v0, "simProvisioningStatus":I
    if-ne v0, v5, :cond_0

    #@1b
    .line 989
    new-instance v3, Ljava/lang/StringBuilder;

    #@1d
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@20
    const-string/jumbo v4, "Cold Sim Detected on SubId: "

    #@23
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v3

    #@27
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v3

    #@2b
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2e
    move-result-object v3

    #@2f
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@32
    .line 990
    return v5

    #@33
    .line 994
    .end local v0    # "simProvisioningStatus":I
    .end local v2    # "subInfo":Landroid/telephony/SubscriptionInfo;
    :cond_0
    const/4 v3, 0x0

    #@34
    return v3
.end method

.method private isConnected()Z
    .locals 4

    #@0
    .prologue
    .line 3278
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
    .line 3279
    .local v0, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getState()Lcom/android/internal/telephony/DctConstants$State;

    #@19
    move-result-object v2

    #@1a
    sget-object v3, Lcom/android/internal/telephony/DctConstants$State;->CONNECTED:Lcom/android/internal/telephony/DctConstants$State;

    #@1c
    if-ne v2, v3, :cond_0

    #@1e
    .line 3281
    const/4 v2, 0x1

    #@1f
    return v2

    #@20
    .line 3285
    .end local v0    # "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    :cond_1
    const/4 v2, 0x0

    #@21
    return v2
.end method

.method private isDataAllowed(Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReason;)Z
    .locals 13
    .param p1, "failureReason"    # Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReason;

    #@0
    .prologue
    const/4 v9, 0x1

    #@1
    const/4 v10, 0x0

    #@2
    .line 1400
    iget-object v11, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDataEnabledLock:Ljava/lang/Object;

    #@4
    monitor-enter v11

    #@5
    .line 1401
    :try_start_0
    iget-boolean v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mInternalDataEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@7
    .local v4, "internalDataEnabled":Z
    monitor-exit v11

    #@8
    .line 1404
    iget-object v11, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAttached:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@a
    invoke-virtual {v11}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    #@d
    move-result v0

    #@e
    .line 1405
    .local v0, "attachedState":Z
    iget-object v11, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    #@10
    invoke-virtual {v11}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    #@13
    move-result-object v11

    #@14
    invoke-virtual {v11}, Lcom/android/internal/telephony/ServiceStateTracker;->getDesiredPowerState()Z

    #@17
    move-result v3

    #@18
    .line 1406
    .local v3, "desiredPowerState":Z
    iget-object v11, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    #@1a
    invoke-virtual {v11}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    #@1d
    move-result-object v11

    #@1e
    invoke-virtual {v11}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    #@21
    move-result v6

    #@22
    .line 1407
    .local v6, "radioTech":I
    const/16 v11, 0x12

    #@24
    if-ne v6, v11, :cond_0

    #@26
    .line 1408
    const/4 v3, 0x1

    #@27
    .line 1411
    .end local v3    # "desiredPowerState":Z
    :cond_0
    iget-object v11, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    #@29
    invoke-virtual {v11}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    #@2c
    move-result-object v5

    #@2d
    check-cast v5, Lcom/android/internal/telephony/uicc/IccRecords;

    #@2f
    .line 1412
    .local v5, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    const/4 v7, 0x0

    #@30
    .line 1413
    .local v7, "recordsLoaded":Z
    if-eqz v5, :cond_1

    #@32
    .line 1414
    invoke-virtual {v5}, Lcom/android/internal/telephony/uicc/IccRecords;->getRecordsLoaded()Z

    #@35
    move-result v7

    #@36
    .line 1415
    .local v7, "recordsLoaded":Z
    if-eqz v7, :cond_4

    #@38
    .line 1418
    .end local v7    # "recordsLoaded":Z
    :cond_1
    :goto_0
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    #@3b
    move-result v1

    #@3c
    .line 1419
    .local v1, "dataSub":I
    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    #@3f
    move-result v2

    #@40
    .line 1421
    .local v2, "defaultDataSelected":Z
    sget-object v8, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    #@42
    .line 1429
    .local v8, "state":Lcom/android/internal/telephony/PhoneConstants$State;
    iget-object v11, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    #@44
    invoke-virtual {v11}, Lcom/android/internal/telephony/Phone;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    #@47
    move-result-object v11

    #@48
    if-eqz v11, :cond_2

    #@4a
    .line 1430
    iget-object v11, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    #@4c
    invoke-virtual {v11}, Lcom/android/internal/telephony/Phone;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    #@4f
    move-result-object v11

    #@50
    invoke-virtual {v11}, Lcom/android/internal/telephony/CallTracker;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    #@53
    move-result-object v8

    #@54
    .line 1433
    :cond_2
    if-eqz p1, :cond_3

    #@56
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReason;->clearAllReasons()V

    #@59
    .line 1434
    :cond_3
    if-nez v0, :cond_5

    #@5b
    iget-object v11, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAutoAttachOnCreation:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@5d
    invoke-virtual {v11}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    #@60
    move-result v11

    #@61
    :goto_1
    if-nez v11, :cond_7

    #@63
    .line 1435
    if-nez p1, :cond_6

    #@65
    return v10

    #@66
    .line 1400
    .end local v0    # "attachedState":Z
    .end local v1    # "dataSub":I
    .end local v2    # "defaultDataSelected":Z
    .end local v4    # "internalDataEnabled":Z
    .end local v5    # "r":Lcom/android/internal/telephony/uicc/IccRecords;
    .end local v6    # "radioTech":I
    .end local v8    # "state":Lcom/android/internal/telephony/PhoneConstants$State;
    :catchall_0
    move-exception v9

    #@67
    monitor-exit v11

    #@68
    throw v9

    #@69
    .line 1415
    .restart local v0    # "attachedState":Z
    .restart local v4    # "internalDataEnabled":Z
    .restart local v5    # "r":Lcom/android/internal/telephony/uicc/IccRecords;
    .restart local v6    # "radioTech":I
    .restart local v7    # "recordsLoaded":Z
    :cond_4
    new-instance v11, Ljava/lang/StringBuilder;

    #@6b
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@6e
    const-string/jumbo v12, "isDataAllowed getRecordsLoaded="

    #@71
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@74
    move-result-object v11

    #@75
    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@78
    move-result-object v11

    #@79
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7c
    move-result-object v11

    #@7d
    invoke-direct {p0, v11}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@80
    goto :goto_0

    #@81
    .end local v7    # "recordsLoaded":Z
    .restart local v1    # "dataSub":I
    .restart local v2    # "defaultDataSelected":Z
    .restart local v8    # "state":Lcom/android/internal/telephony/PhoneConstants$State;
    :cond_5
    move v11, v9

    #@82
    .line 1434
    goto :goto_1

    #@83
    .line 1436
    :cond_6
    sget-object v11, Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReasonType;->NOT_ATTACHED:Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReasonType;

    #@85
    invoke-virtual {p1, v11}, Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReason;->addDataAllowFailReason(Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReasonType;)V

    #@88
    .line 1438
    :cond_7
    if-nez v7, :cond_9

    #@8a
    .line 1439
    if-nez p1, :cond_8

    #@8c
    return v10

    #@8d
    .line 1440
    :cond_8
    sget-object v11, Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReasonType;->RECORD_NOT_LOADED:Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReasonType;

    #@8f
    invoke-virtual {p1, v11}, Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReason;->addDataAllowFailReason(Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReasonType;)V

    #@92
    .line 1442
    :cond_9
    sget-object v11, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    #@94
    if-eq v8, v11, :cond_a

    #@96
    .line 1443
    iget-object v11, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    #@98
    invoke-virtual {v11}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    #@9b
    move-result-object v11

    #@9c
    invoke-virtual {v11}, Lcom/android/internal/telephony/ServiceStateTracker;->isConcurrentVoiceAndDataAllowed()Z

    #@9f
    move-result v11

    #@a0
    if-eqz v11, :cond_b

    #@a2
    .line 1449
    :cond_a
    :goto_2
    if-nez v4, :cond_e

    #@a4
    .line 1450
    if-nez p1, :cond_d

    #@a6
    return v10

    #@a7
    .line 1444
    :cond_b
    if-nez p1, :cond_c

    #@a9
    return v10

    #@aa
    .line 1445
    :cond_c
    sget-object v11, Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReasonType;->INVALID_PHONE_STATE:Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReasonType;

    #@ac
    invoke-virtual {p1, v11}, Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReason;->addDataAllowFailReason(Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReasonType;)V

    #@af
    .line 1447
    sget-object v11, Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReasonType;->CONCURRENT_VOICE_DATA_NOT_ALLOWED:Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReasonType;

    #@b1
    .line 1446
    invoke-virtual {p1, v11}, Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReason;->addDataAllowFailReason(Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReasonType;)V

    #@b4
    goto :goto_2

    #@b5
    .line 1451
    :cond_d
    sget-object v11, Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReasonType;->INTERNAL_DATA_DISABLED:Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReasonType;

    #@b7
    invoke-virtual {p1, v11}, Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReason;->addDataAllowFailReason(Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReasonType;)V

    #@ba
    .line 1453
    :cond_e
    if-nez v2, :cond_10

    #@bc
    .line 1454
    if-nez p1, :cond_f

    #@be
    return v10

    #@bf
    .line 1456
    :cond_f
    sget-object v11, Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReasonType;->DEFAULT_DATA_UNSELECTED:Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReasonType;

    #@c1
    .line 1455
    invoke-virtual {p1, v11}, Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReason;->addDataAllowFailReason(Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReasonType;)V

    #@c4
    .line 1458
    :cond_10
    iget-object v11, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    #@c6
    invoke-virtual {v11}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    #@c9
    move-result-object v11

    #@ca
    invoke-virtual {v11}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    #@cd
    move-result v11

    #@ce
    if-eqz v11, :cond_11

    #@d0
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->getDataOnRoamingEnabled()Z

    #@d3
    move-result v11

    #@d4
    if-eqz v11, :cond_12

    #@d6
    .line 1462
    :cond_11
    :goto_3
    iget-boolean v11, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mIsPsRestricted:Z

    #@d8
    if-eqz v11, :cond_15

    #@da
    .line 1463
    if-nez p1, :cond_14

    #@dc
    return v10

    #@dd
    .line 1459
    :cond_12
    if-nez p1, :cond_13

    #@df
    return v10

    #@e0
    .line 1460
    :cond_13
    sget-object v11, Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReasonType;->ROAMING_DISABLED:Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReasonType;

    #@e2
    invoke-virtual {p1, v11}, Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReason;->addDataAllowFailReason(Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReasonType;)V

    #@e5
    goto :goto_3

    #@e6
    .line 1464
    :cond_14
    sget-object v11, Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReasonType;->PS_RESTRICTED:Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReasonType;

    #@e8
    invoke-virtual {p1, v11}, Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReason;->addDataAllowFailReason(Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReasonType;)V

    #@eb
    .line 1466
    :cond_15
    if-nez v3, :cond_17

    #@ed
    .line 1467
    if-nez p1, :cond_16

    #@ef
    return v10

    #@f0
    .line 1468
    :cond_16
    sget-object v11, Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReasonType;->UNDESIRED_POWER_STATE:Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReasonType;

    #@f2
    invoke-virtual {p1, v11}, Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReason;->addDataAllowFailReason(Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReasonType;)V

    #@f5
    .line 1471
    :cond_17
    if-eqz p1, :cond_18

    #@f7
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReason;->isFailed()Z

    #@fa
    move-result v11

    #@fb
    if-eqz v11, :cond_18

    #@fd
    move v9, v10

    #@fe
    :cond_18
    return v9
.end method

.method private isDataAllowedForApn(Lcom/android/internal/telephony/dataconnection/ApnContext;)Z
    .locals 2
    .param p1, "apnContext"    # Lcom/android/internal/telephony/dataconnection/ApnContext;

    #@0
    .prologue
    .line 1352
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
    .line 1353
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
    .line 1352
    if-eqz v0, :cond_1

    #@1a
    .line 1354
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
    .line 1355
    const/16 v1, 0x12

    #@26
    .line 1354
    if-ne v0, v1, :cond_1

    #@28
    .line 1356
    const-string/jumbo v0, "Default data call activation not allowed in iwlan."

    #@2b
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@2e
    .line 1357
    const/4 v0, 0x0

    #@2f
    return v0

    #@30
    .line 1360
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->isReady()Z

    #@33
    move-result v0

    #@34
    return v0
.end method

.method private isDataEnabled(Z)Z
    .locals 4
    .param p1, "checkUserDataEnabled"    # Z

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 1341
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDataEnabledLock:Ljava/lang/Object;

    #@4
    monitor-enter v3

    #@5
    .line 1342
    :try_start_0
    iget-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mInternalDataEnabled:Z

    #@7
    if-eqz v0, :cond_2

    #@9
    if-eqz p1, :cond_0

    #@b
    iget-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mUserDataEnabled:Z

    #@d
    if-eqz v0, :cond_2

    #@f
    .line 1343
    :cond_0
    if-eqz p1, :cond_1

    #@11
    sget-boolean v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->sPolicyDataEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@13
    .line 1342
    :goto_0
    if-nez v0, :cond_3

    #@15
    monitor-exit v3

    #@16
    .line 1344
    return v2

    #@17
    :cond_1
    move v0, v1

    #@18
    .line 1343
    goto :goto_0

    #@19
    :cond_2
    move v0, v2

    #@1a
    .line 1342
    goto :goto_0

    #@1b
    :cond_3
    monitor-exit v3

    #@1c
    .line 1346
    return v1

    #@1d
    .line 1341
    :catchall_0
    move-exception v0

    #@1e
    monitor-exit v3

    #@1f
    throw v0
.end method

.method private isHigherPriorityApnContextActive(Lcom/android/internal/telephony/dataconnection/ApnContext;)Z
    .locals 5
    .param p1, "apnContext"    # Lcom/android/internal/telephony/dataconnection/ApnContext;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 2276
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
    .line 2277
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
    .line 2278
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
    .line 2279
    const/4 v2, 0x1

    #@31
    return v2

    #@32
    .line 2282
    .end local v0    # "otherContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    :cond_2
    return v4
.end method

.method private isOnlySingleDcAllowed(I)Z
    .locals 5
    .param p1, "rilRadioTech"    # I

    #@0
    .prologue
    .line 2292
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
    .line 2293
    const v4, 0x1070034

    #@d
    .line 2292
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getIntArray(I)[I

    #@10
    move-result-object v2

    #@11
    .line 2294
    .local v2, "singleDcRats":[I
    const/4 v1, 0x0

    #@12
    .line 2295
    .local v1, "onlySingleDcAllowed":Z
    sget-boolean v3, Landroid/os/Build;->IS_DEBUGGABLE:Z

    #@14
    if-eqz v3, :cond_0

    #@16
    .line 2296
    const-string/jumbo v3, "persist.telephony.test.singleDc"

    #@19
    const/4 v4, 0x0

    #@1a
    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    #@1d
    move-result v3

    #@1e
    .line 2295
    if-eqz v3, :cond_0

    #@20
    .line 2297
    const/4 v1, 0x1

    #@21
    .line 2299
    :cond_0
    if-eqz v2, :cond_2

    #@23
    .line 2300
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
    .line 2301
    aget v3, v2, v0

    #@2b
    if-ne p1, v3, :cond_1

    #@2d
    const/4 v1, 0x1

    #@2e
    .line 2300
    :cond_1
    add-int/lit8 v0, v0, 0x1

    #@30
    goto :goto_0

    #@31
    .line 2305
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
    .line 2306
    return v1
.end method

.method private isOutOfCreditSimDetected()Z
    .locals 5

    #@0
    .prologue
    .line 1002
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    #@2
    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getSubId()I

    #@5
    move-result v1

    #@6
    .line 1003
    .local v1, "subId":I
    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    #@9
    move-result v3

    #@a
    if-eqz v3, :cond_0

    #@c
    .line 1004
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    #@e
    invoke-virtual {v3, v1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    #@11
    move-result-object v2

    #@12
    .line 1005
    .local v2, "subInfo":Landroid/telephony/SubscriptionInfo;
    if-eqz v2, :cond_0

    #@14
    .line 1006
    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSimProvisioningStatus()I

    #@17
    move-result v0

    #@18
    .line 1007
    .local v0, "simProvisioningStatus":I
    const/4 v3, 0x2

    #@19
    if-ne v0, v3, :cond_0

    #@1b
    .line 1008
    new-instance v3, Ljava/lang/StringBuilder;

    #@1d
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@20
    const-string/jumbo v4, "Out Of Credit Sim Detected on SubId: "

    #@23
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v3

    #@27
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v3

    #@2b
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2e
    move-result-object v3

    #@2f
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@32
    .line 1009
    const/4 v3, 0x1

    #@33
    return v3

    #@34
    .line 1013
    .end local v0    # "simProvisioningStatus":I
    .end local v2    # "subInfo":Landroid/telephony/SubscriptionInfo;
    :cond_0
    const/4 v3, 0x0

    #@35
    return v3
.end method

.method private isProvisioningApn(Ljava/lang/String;)Z
    .locals 2
    .param p1, "apnType"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1246
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    #@2
    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/android/internal/telephony/dataconnection/ApnContext;

    #@8
    .line 1247
    .local v0, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    if-eqz v0, :cond_0

    #@a
    .line 1248
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->isProvisioningApn()Z

    #@d
    move-result v1

    #@e
    return v1

    #@f
    .line 1250
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
    .line 4268
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
    .line 4267
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 4272
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
    .line 4271
    return-void
.end method

.method private makeApnSetting(Landroid/database/Cursor;)Lcom/android/internal/telephony/dataconnection/ApnSetting;
    .locals 29
    .param p1, "cursor"    # Landroid/database/Cursor;

    #@0
    .prologue
    .line 1970
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
    .line 1969
    move-object/from16 v0, p0

    #@11
    invoke-direct {v0, v3}, Lcom/android/internal/telephony/dataconnection/DcTracker;->parseTypes(Ljava/lang/String;)[Ljava/lang/String;

    #@14
    move-result-object v15

    #@15
    .line 1971
    .local v15, "types":[Ljava/lang/String;
    new-instance v2, Lcom/android/internal/telephony/dataconnection/ApnSetting;

    #@17
    .line 1972
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
    .line 1973
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
    .line 1974
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
    .line 1975
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
    .line 1978
    const-string/jumbo v7, "proxy"

    #@56
    move-object/from16 v0, p1

    #@58
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    #@5b
    move-result v7

    #@5c
    .line 1977
    move-object/from16 v0, p1

    #@5e
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    #@61
    move-result-object v7

    #@62
    .line 1976
    invoke-static {v7}, Landroid/net/NetworkUtils;->trimV4AddrZeros(Ljava/lang/String;)Ljava/lang/String;

    #@65
    move-result-object v7

    #@66
    .line 1979
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
    .line 1982
    const-string/jumbo v9, "mmsc"

    #@78
    move-object/from16 v0, p1

    #@7a
    invoke-interface {v0, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    #@7d
    move-result v9

    #@7e
    .line 1981
    move-object/from16 v0, p1

    #@80
    invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    #@83
    move-result-object v9

    #@84
    .line 1980
    invoke-static {v9}, Landroid/net/NetworkUtils;->trimV4AddrZeros(Ljava/lang/String;)Ljava/lang/String;

    #@87
    move-result-object v9

    #@88
    .line 1985
    const-string/jumbo v10, "mmsproxy"

    #@8b
    move-object/from16 v0, p1

    #@8d
    invoke-interface {v0, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    #@90
    move-result v10

    #@91
    .line 1984
    move-object/from16 v0, p1

    #@93
    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    #@96
    move-result-object v10

    #@97
    .line 1983
    invoke-static {v10}, Landroid/net/NetworkUtils;->trimV4AddrZeros(Ljava/lang/String;)Ljava/lang/String;

    #@9a
    move-result-object v10

    #@9b
    .line 1986
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
    .line 1987
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
    .line 1988
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
    .line 1989
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
    .line 1991
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
    .line 1993
    const-string/jumbo v17, "roaming_protocol"

    #@ed
    .line 1992
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
    .line 1995
    const-string/jumbo v18, "carrier_enabled"

    #@100
    .line 1994
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
    .line 1995
    const/16 v19, 0x1

    #@112
    .line 1994
    move/from16 v0, v18

    #@114
    move/from16 v1, v19

    #@116
    if-ne v0, v1, :cond_0

    #@118
    const/16 v18, 0x1

    #@11a
    .line 1996
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
    .line 1997
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
    .line 1998
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
    .line 2000
    const-string/jumbo v22, "modem_cognitive"

    #@156
    .line 1999
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
    .line 2000
    const/16 v23, 0x1

    #@168
    .line 1999
    move/from16 v0, v22

    #@16a
    move/from16 v1, v23

    #@16c
    if-ne v0, v1, :cond_1

    #@16e
    const/16 v22, 0x1

    #@170
    .line 2001
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
    .line 2003
    const-string/jumbo v24, "wait_time"

    #@186
    .line 2002
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
    .line 2004
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
    .line 2005
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
    .line 2006
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
    .line 2007
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
    .line 1971
    invoke-direct/range {v2 .. v28}, Lcom/android/internal/telephony/dataconnection/ApnSetting;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIIIZIIIILjava/lang/String;Ljava/lang/String;)V

    #@1e5
    .line 2008
    .local v2, "apn":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    return-object v2

    #@1e6
    .line 1994
    .end local v2    # "apn":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    :cond_0
    const/16 v18, 0x0

    #@1e8
    goto/16 :goto_0

    #@1ea
    .line 1999
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
    .line 3471
    move-object/from16 v0, p1

    #@2
    iget v2, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->id:I

    #@4
    .line 3472
    .local v2, "id":I
    new-instance v28, Ljava/util/ArrayList;

    #@6
    invoke-direct/range {v28 .. v28}, Ljava/util/ArrayList;-><init>()V

    #@9
    .line 3473
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
    .line 3474
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
    .line 3475
    .local v29, "srcType":Ljava/lang/String;
    invoke-virtual/range {v28 .. v29}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    #@23
    move-result v5

    #@24
    if-nez v5, :cond_0

    #@26
    invoke-virtual/range {v28 .. v29}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@29
    .line 3476
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
    .line 3474
    :cond_1
    add-int/lit8 v1, v1, 0x1

    #@3a
    goto :goto_0

    #@3b
    .line 3478
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
    .line 3479
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
    .line 3480
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
    .line 3481
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
    .line 3482
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
    .line 3483
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
    .line 3484
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
    .line 3486
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
    .line 3487
    :cond_3
    const/16 v19, 0x0

    #@b3
    .line 3489
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
    .line 3490
    move-object/from16 v0, p1

    #@c3
    iget-object v11, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->user:Ljava/lang/String;

    #@c5
    move-object/from16 v0, p1

    #@c7
    iget-object v12, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->password:Ljava/lang/String;

    #@c9
    .line 3491
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
    .line 3492
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
    .line 3493
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
    .line 3494
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
    .line 3492
    const/16 v18, 0x0

    #@118
    .line 3489
    invoke-direct/range {v1 .. v27}, Lcom/android/internal/telephony/dataconnection/ApnSetting;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIIIZIIIILjava/lang/String;Ljava/lang/String;)V

    #@11b
    return-object v1

    #@11c
    .line 3478
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
    .line 3479
    :cond_5
    move-object/from16 v0, p1

    #@124
    iget-object v9, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mmsProxy:Ljava/lang/String;

    #@126
    .restart local v9    # "mmsProxy":Ljava/lang/String;
    goto/16 :goto_2

    #@128
    .line 3480
    :cond_6
    move-object/from16 v0, p1

    #@12a
    iget-object v10, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mmsPort:Ljava/lang/String;

    #@12c
    .restart local v10    # "mmsPort":Ljava/lang/String;
    goto/16 :goto_3

    #@12e
    .line 3481
    :cond_7
    move-object/from16 v0, p1

    #@130
    iget-object v6, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->proxy:Ljava/lang/String;

    #@132
    .restart local v6    # "proxy":Ljava/lang/String;
    goto/16 :goto_4

    #@134
    .line 3482
    :cond_8
    move-object/from16 v0, p1

    #@136
    iget-object v7, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->port:Ljava/lang/String;

    #@138
    .restart local v7    # "port":Ljava/lang/String;
    goto/16 :goto_5

    #@13a
    .line 3483
    :cond_9
    move-object/from16 v0, p1

    #@13c
    iget-object v15, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->protocol:Ljava/lang/String;

    #@13e
    .restart local v15    # "protocol":Ljava/lang/String;
    goto/16 :goto_6

    #@140
    .line 3485
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
    .line 3487
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
    .line 3493
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
    .line 4196
    sput v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->sEnableFailFastRefCounter:I

    #@3
    .line 4197
    iput-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mFailFast:Z

    #@5
    .line 4198
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAllDataDisconnectedRegistrants:Landroid/os/RegistrantList;

    #@7
    invoke-virtual {v0}, Landroid/os/RegistrantList;->notifyRegistrants()V

    #@a
    .line 4195
    return-void
.end method

.method private notifyCarrierAppForRedirection()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 4179
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->isColdSimDetected()Z

    #@4
    move-result v1

    #@5
    if-nez v1, :cond_0

    #@7
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->isOutOfCreditSimDetected()Z

    #@a
    move-result v1

    #@b
    if-eqz v1, :cond_1

    #@d
    .line 4177
    :cond_0
    :goto_0
    return-void

    #@e
    .line 4179
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mRedirectUrl:Ljava/lang/String;

    #@10
    if-eqz v1, :cond_0

    #@12
    .line 4180
    new-instance v0, Landroid/content/Intent;

    #@14
    const-string/jumbo v1, "android.intent.action.REDIRECTION_DETECTED"

    #@17
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@1a
    .line 4181
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "redirectionUrl"

    #@1d
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mRedirectUrl:Ljava/lang/String;

    #@1f
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@22
    .line 4182
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->notifyCarrierAppWithIntent(Landroid/content/Intent;)Z

    #@25
    move-result v1

    #@26
    if-eqz v1, :cond_0

    #@28
    iput-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mRedirectUrl:Ljava/lang/String;

    #@2a
    goto :goto_0
.end method

.method private notifyCarrierAppWithIntent(Landroid/content/Intent;)Z
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 4154
    iget v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDisconnectPendingCount:I

    #@3
    if-eqz v1, :cond_0

    #@5
    .line 4155
    const-string/jumbo v1, "Wait for pending disconnect requests done"

    #@8
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->loge(Ljava/lang/String;)V

    #@b
    .line 4156
    return v3

    #@c
    .line 4158
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->checkCarrierAppAvailable(Landroid/content/Intent;)Z

    #@f
    move-result v1

    #@10
    if-nez v1, :cond_1

    #@12
    .line 4159
    const-string/jumbo v1, "Carrier app is unavailable"

    #@15
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->loge(Ljava/lang/String;)V

    #@18
    .line 4160
    return v3

    #@19
    .line 4163
    :cond_1
    const-string/jumbo v1, "subscription"

    #@1c
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    #@1e
    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getSubId()I

    #@21
    move-result v2

    #@22
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@25
    .line 4164
    const/high16 v1, 0x10000000

    #@27
    invoke-virtual {p1, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@2a
    .line 4167
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    #@2c
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    #@2f
    move-result-object v1

    #@30
    invoke-virtual {v1, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@33
    .line 4173
    new-instance v1, Ljava/lang/StringBuilder;

    #@35
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@38
    const-string/jumbo v2, "send Intent to Carrier app with action: "

    #@3b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v1

    #@3f
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    #@42
    move-result-object v2

    #@43
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@46
    move-result-object v1

    #@47
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4a
    move-result-object v1

    #@4b
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@4e
    .line 4174
    const/4 v1, 0x1

    #@4f
    return v1

    #@50
    .line 4168
    :catch_0
    move-exception v0

    #@51
    .line 4169
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    new-instance v1, Ljava/lang/StringBuilder;

    #@53
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@56
    const-string/jumbo v2, "sendBroadcast failed: "

    #@59
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5c
    move-result-object v1

    #@5d
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@60
    move-result-object v1

    #@61
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@64
    move-result-object v1

    #@65
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->loge(Ljava/lang/String;)V

    #@68
    .line 4170
    return v3
.end method

.method private notifyDataConnection(Ljava/lang/String;)V
    .locals 5
    .param p1, "reason"    # Ljava/lang/String;

    #@0
    .prologue
    .line 3300
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
    .line 3301
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
    .line 3302
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
    .line 3303
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
    .line 3304
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    #@58
    if-eqz p1, :cond_1

    #@5a
    move-object v2, p1

    #@5b
    .line 3305
    :goto_1
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    #@5e
    move-result-object v4

    #@5f
    .line 3304
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
    .line 3308
    .end local v0    # "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->notifyOffApnsOfAvailability(Ljava/lang/String;)V

    #@6b
    .line 3299
    return-void
.end method

.method private notifyDataDisconnectComplete()V
    .locals 3

    #@0
    .prologue
    .line 4187
    const-string/jumbo v2, "notifyDataDisconnectComplete"

    #@3
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@6
    .line 4188
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
    .line 4189
    .local v0, "m":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    #@1b
    goto :goto_0

    #@1c
    .line 4191
    .end local v0    # "m":Landroid/os/Message;
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDisconnectAllCompleteMsgList:Ljava/util/ArrayList;

    #@1e
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    #@21
    .line 4186
    return-void
.end method

.method private notifyNoData(Lcom/android/internal/telephony/dataconnection/DcFailCause;Lcom/android/internal/telephony/dataconnection/ApnContext;)V
    .locals 3
    .param p1, "lastFailCauseCode"    # Lcom/android/internal/telephony/dataconnection/DcFailCause;
    .param p2, "apnContext"    # Lcom/android/internal/telephony/dataconnection/ApnContext;

    #@0
    .prologue
    .line 2381
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
    .line 2382
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->isPermanentFail(Lcom/android/internal/telephony/dataconnection/DcFailCause;)Z

    #@1e
    move-result v0

    #@1f
    if-eqz v0, :cond_0

    #@21
    .line 2383
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
    .line 2380
    :cond_0
    :goto_0
    return-void

    #@2f
    .line 2384
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
    .line 1673
    new-instance v2, Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReason;

    #@2
    invoke-direct {v2}, Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReason;-><init>()V

    #@5
    .line 1674
    .local v2, "failureReason":Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReason;
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->isDataAllowed(Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReason;)Z

    #@8
    move-result v3

    #@9
    if-nez v3, :cond_0

    #@b
    .line 1675
    invoke-virtual {v2}, Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReason;->getDataAllowFailReason()Ljava/lang/String;

    #@e
    move-result-object v3

    #@f
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@12
    .line 1678
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
    .line 1679
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
    .line 1681
    :cond_2
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    #@38
    if-eqz p1, :cond_3

    #@3a
    move-object v3, p1

    #@3b
    .line 1682
    :goto_1
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    #@3e
    move-result-object v5

    #@3f
    .line 1683
    sget-object v6, Lcom/android/internal/telephony/PhoneConstants$DataState;->DISCONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    #@41
    .line 1681
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
    .line 1671
    .end local v0    # "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    :cond_4
    return-void
.end method

.method private onActionIntentDataStallAlarm(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 542
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    #@3
    move-result-object v1

    #@4
    .line 541
    const v2, 0x42011

    #@7
    invoke-virtual {p0, v2, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@a
    move-result-object v0

    #@b
    .line 543
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
    .line 544
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->sendMessage(Landroid/os/Message;)Z

    #@18
    .line 539
    return-void
.end method

.method private onActionIntentProvisioningApnAlarm(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 4836
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
    .line 4838
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    #@1e
    move-result-object v1

    #@1f
    .line 4837
    const v2, 0x42027

    #@22
    invoke-virtual {p0, v2, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@25
    move-result-object v0

    #@26
    .line 4839
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
    .line 4840
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->sendMessage(Landroid/os/Message;)Z

    #@33
    .line 4835
    return-void
.end method

.method private onActionIntentReconnectAlarm(Landroid/content/Intent;)V
    .locals 10
    .param p1, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    const/4 v9, 0x0

    #@1
    .line 486
    const-string/jumbo v7, "reconnect_alarm_extra_reason"

    #@4
    invoke-virtual {p1, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    #@7
    move-result-object v6

    #@8
    .line 487
    .local v6, "reason":Ljava/lang/String;
    const-string/jumbo v7, "reconnect_alarm_extra_type"

    #@b
    invoke-virtual {p1, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    #@e
    move-result-object v2

    #@f
    .line 489
    .local v2, "apnType":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    #@11
    invoke-virtual {v7}, Lcom/android/internal/telephony/Phone;->getSubId()I

    #@14
    move-result v5

    #@15
    .line 490
    .local v5, "phoneSubId":I
    const-string/jumbo v7, "subscription"

    #@18
    .line 491
    const/4 v8, -0x1

    #@19
    .line 490
    invoke-virtual {p1, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    #@1c
    move-result v3

    #@1d
    .line 492
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
    .line 496
    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    #@42
    move-result v7

    #@43
    if-eqz v7, :cond_0

    #@45
    if-eq v3, v5, :cond_1

    #@47
    .line 497
    :cond_0
    const-string/jumbo v7, "receive ReconnectAlarm but subId incorrect, ignore"

    #@4a
    invoke-direct {p0, v7}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@4d
    .line 498
    return-void

    #@4e
    .line 501
    :cond_1
    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    #@50
    invoke-virtual {v7, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@53
    move-result-object v0

    #@54
    check-cast v0, Lcom/android/internal/telephony/dataconnection/ApnContext;

    #@56
    .line 504
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
    .line 505
    const-string/jumbo v8, " apnType="

    #@76
    .line 504
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@79
    move-result-object v7

    #@7a
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7d
    move-result-object v7

    #@7e
    .line 505
    const-string/jumbo v8, " apnContext="

    #@81
    .line 504
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@84
    move-result-object v7

    #@85
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@88
    move-result-object v7

    #@89
    .line 506
    const-string/jumbo v8, " mDataConnectionAsyncChannels="

    #@8c
    .line 504
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8f
    move-result-object v7

    #@90
    .line 506
    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDataConnectionAcHashMap:Ljava/util/HashMap;

    #@92
    .line 504
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
    .line 509
    if-eqz v0, :cond_4

    #@9f
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->isEnabled()Z

    #@a2
    move-result v7

    #@a3
    if-eqz v7, :cond_4

    #@a5
    .line 510
    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setReason(Ljava/lang/String;)V

    #@a8
    .line 511
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getState()Lcom/android/internal/telephony/DctConstants$State;

    #@ab
    move-result-object v1

    #@ac
    .line 513
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
    .line 515
    sget-object v7, Lcom/android/internal/telephony/DctConstants$State;->FAILED:Lcom/android/internal/telephony/DctConstants$State;

    #@c5
    if-eq v1, v7, :cond_2

    #@c7
    .line 516
    sget-object v7, Lcom/android/internal/telephony/DctConstants$State;->IDLE:Lcom/android/internal/telephony/DctConstants$State;

    #@c9
    if-ne v1, v7, :cond_5

    #@cb
    .line 518
    :cond_2
    const-string/jumbo v7, "onActionIntentReconnectAlarm: state is FAILED|IDLE, disassociate"

    #@ce
    invoke-direct {p0, v7}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@d1
    .line 520
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getDcAc()Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;

    #@d4
    move-result-object v4

    #@d5
    .line 521
    .local v4, "dcac":Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;
    if-eqz v4, :cond_3

    #@d7
    .line 523
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
    .line 525
    const-string/jumbo v7, ""

    #@f1
    invoke-virtual {v4, v0, v7, v9}, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->tearDown(Lcom/android/internal/telephony/dataconnection/ApnContext;Ljava/lang/String;Landroid/os/Message;)V

    #@f4
    .line 527
    :cond_3
    invoke-virtual {v0, v9}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setDataConnectionAc(Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;)V

    #@f7
    .line 528
    sget-object v7, Lcom/android/internal/telephony/DctConstants$State;->IDLE:Lcom/android/internal/telephony/DctConstants$State;

    #@f9
    invoke-virtual {v0, v7}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setState(Lcom/android/internal/telephony/DctConstants$State;)V

    #@fc
    .line 533
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
    .line 535
    invoke-virtual {v0, v9}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setReconnectIntent(Landroid/app/PendingIntent;)V

    #@109
    .line 485
    .end local v1    # "apnContextState":Lcom/android/internal/telephony/DctConstants$State;
    :cond_4
    return-void

    #@10a
    .line 530
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
    .line 2229
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->getOverallState()Lcom/android/internal/telephony/DctConstants$State;

    #@3
    move-result-object v1

    #@4
    .line 2230
    .local v1, "overallState":Lcom/android/internal/telephony/DctConstants$State;
    sget-object v2, Lcom/android/internal/telephony/DctConstants$State;->IDLE:Lcom/android/internal/telephony/DctConstants$State;

    #@6
    if-eq v1, v2, :cond_2

    #@8
    .line 2231
    sget-object v2, Lcom/android/internal/telephony/DctConstants$State;->FAILED:Lcom/android/internal/telephony/DctConstants$State;

    #@a
    if-ne v1, v2, :cond_3

    #@c
    const/4 v0, 0x1

    #@d
    .line 2233
    .local v0, "isDisconnected":Z
    :goto_0
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    #@f
    instance-of v2, v2, Lcom/android/internal/telephony/GsmCdmaPhone;

    #@11
    if-eqz v2, :cond_0

    #@13
    .line 2235
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    #@15
    check-cast v2, Lcom/android/internal/telephony/GsmCdmaPhone;

    #@17
    invoke-virtual {v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->updateCurrentCarrierInProvider()Z

    #@1a
    .line 2240
    :cond_0
    const-string/jumbo v2, "onApnChanged: createAllApnList and cleanUpAllConnections"

    #@1d
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@20
    .line 2241
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->createAllApnList()V

    #@23
    .line 2242
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->setInitialAttachApn()V

    #@26
    .line 2243
    if-eqz v0, :cond_4

    #@28
    const/4 v2, 0x0

    #@29
    :goto_1
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->cleanUpConnectionsOnUpdatedApns(Z)V

    #@2c
    .line 2246
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
    .line 2247
    const-string/jumbo v2, "apnChanged"

    #@3b
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->setupDataOnConnectableApns(Ljava/lang/String;)V

    #@3e
    .line 2228
    :cond_1
    return-void

    #@3f
    .line 2230
    .end local v0    # "isDisconnected":Z
    :cond_2
    const/4 v0, 0x1

    #@40
    .restart local v0    # "isDisconnected":Z
    goto :goto_0

    #@41
    .line 2231
    .end local v0    # "isDisconnected":Z
    :cond_3
    const/4 v0, 0x0

    #@42
    .restart local v0    # "isDisconnected":Z
    goto :goto_0

    #@43
    .line 2243
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
    .line 1759
    const/4 v0, 0x1

    #@1
    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->cleanUpAllConnections(ZLjava/lang/String;)Z

    #@4
    .line 1758
    return-void
.end method

.method private onCleanUpConnection(ZILjava/lang/String;)V
    .locals 2
    .param p1, "tearDown"    # Z
    .param p2, "apnId"    # I
    .param p3, "reason"    # Ljava/lang/String;

    #@0
    .prologue
    .line 3269
    const-string/jumbo v1, "onCleanUpConnection"

    #@3
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@6
    .line 3270
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mApnContextsById:Landroid/util/SparseArray;

    #@8
    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@b
    move-result-object v0

    #@c
    check-cast v0, Lcom/android/internal/telephony/dataconnection/ApnContext;

    #@e
    .line 3271
    .local v0, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    if-eqz v0, :cond_0

    #@10
    .line 3272
    invoke-virtual {v0, p3}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setReason(Ljava/lang/String;)V

    #@13
    .line 3273
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->cleanUpConnection(ZLcom/android/internal/telephony/dataconnection/ApnContext;)V

    #@16
    .line 3268
    :cond_0
    return-void
.end method

.method private onDataConnectionAttached()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 1381
    const-string/jumbo v0, "onDataConnectionAttached"

    #@4
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@7
    .line 1382
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAttached:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@9
    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    #@c
    .line 1383
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->getOverallState()Lcom/android/internal/telephony/DctConstants$State;

    #@f
    move-result-object v0

    #@10
    sget-object v1, Lcom/android/internal/telephony/DctConstants$State;->CONNECTED:Lcom/android/internal/telephony/DctConstants$State;

    #@12
    if-ne v0, v1, :cond_1

    #@14
    .line 1384
    const-string/jumbo v0, "onDataConnectionAttached: start polling notify attached"

    #@17
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@1a
    .line 1385
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->startNetStatPoll()V

    #@1d
    .line 1386
    const/4 v0, 0x0

    #@1e
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->startDataStallAlarm(Z)V

    #@21
    .line 1387
    const-string/jumbo v0, "dataAttached"

    #@24
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->notifyDataConnection(Ljava/lang/String;)V

    #@27
    .line 1392
    :goto_0
    iget-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAutoAttachOnCreationConfig:Z

    #@29
    if-eqz v0, :cond_0

    #@2b
    .line 1393
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAutoAttachOnCreation:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@2d
    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    #@30
    .line 1395
    :cond_0
    const-string/jumbo v0, "dataAttached"

    #@33
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->setupDataOnConnectableApns(Ljava/lang/String;)V

    #@36
    .line 1380
    return-void

    #@37
    .line 1390
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
    .line 1373
    const-string/jumbo v0, "onDataConnectionDetached: stop polling and notify detached"

    #@3
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@6
    .line 1374
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->stopNetStatPoll()V

    #@9
    .line 1375
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->stopDataStallAlarm()V

    #@c
    .line 1376
    const-string/jumbo v0, "dataDetached"

    #@f
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->notifyDataConnection(Ljava/lang/String;)V

    #@12
    .line 1377
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAttached:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@14
    const/4 v1, 0x0

    #@15
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    #@18
    .line 1368
    return-void
.end method

.method private onDataConnectionRedirected(Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 5
    .param p1, "redirectUrl"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/internal/telephony/dataconnection/ApnContext;",
            "Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 3124
    .local p2, "apnContextMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/internal/telephony/dataconnection/ApnContext;Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@3
    move-result v3

    #@4
    if-nez v3, :cond_0

    #@6
    .line 3125
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mRedirectUrl:Ljava/lang/String;

    #@8
    .line 3126
    new-instance v2, Landroid/content/Intent;

    #@a
    const-string/jumbo v3, "android.intent.action.REDIRECTION_DETECTED"

    #@d
    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@10
    .line 3127
    .local v2, "intent":Landroid/content/Intent;
    const-string/jumbo v3, "redirectionUrl"

    #@13
    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@16
    .line 3128
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->isColdSimDetected()Z

    #@19
    move-result v3

    #@1a
    if-nez v3, :cond_0

    #@1c
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->isOutOfCreditSimDetected()Z

    #@1f
    move-result v3

    #@20
    if-eqz v3, :cond_1

    #@22
    .line 3123
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_0
    return-void

    #@23
    .line 3129
    .restart local v2    # "intent":Landroid/content/Intent;
    :cond_1
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->checkCarrierAppAvailable(Landroid/content/Intent;)Z

    #@26
    move-result v3

    #@27
    .line 3128
    if-eqz v3, :cond_0

    #@29
    .line 3130
    new-instance v3, Ljava/lang/StringBuilder;

    #@2b
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@2e
    const-string/jumbo v4, "Starting Activation Carrier app with redirectUrl : "

    #@31
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v3

    #@35
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v3

    #@39
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3c
    move-result-object v3

    #@3d
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@40
    .line 3133
    invoke-virtual {p2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    #@43
    move-result-object v3

    #@44
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@47
    move-result-object v1

    #@48
    .local v1, "context$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@4b
    move-result v3

    #@4c
    if-eqz v3, :cond_0

    #@4e
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@51
    move-result-object v0

    #@52
    check-cast v0, Lcom/android/internal/telephony/dataconnection/ApnContext;

    #@54
    .line 3134
    .local v0, "context":Lcom/android/internal/telephony/dataconnection/ApnContext;
    const/4 v3, 0x1

    #@55
    invoke-direct {p0, v3, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->cleanUpConnection(ZLcom/android/internal/telephony/dataconnection/ApnContext;)V

    #@58
    .line 3135
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->redirectApnContextSet:Ljava/util/HashSet;

    #@5a
    invoke-virtual {v3, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@5d
    goto :goto_0
.end method

.method private onDataSetupComplete(Landroid/os/AsyncResult;)V
    .locals 23
    .param p1, "ar"    # Landroid/os/AsyncResult;

    #@0
    .prologue
    .line 2869
    sget-object v7, Lcom/android/internal/telephony/dataconnection/DcFailCause;->UNKNOWN:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    #@2
    .line 2870
    .local v7, "cause":Lcom/android/internal/telephony/dataconnection/DcFailCause;
    const/4 v13, 0x0

    #@3
    .line 2871
    .local v13, "handleError":Z
    const-string/jumbo v18, "onDataSetupComplete"

    #@6
    move-object/from16 v0, p0

    #@8
    move-object/from16 v1, p1

    #@a
    move-object/from16 v2, v18

    #@c
    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->getValidApnContext(Landroid/os/AsyncResult;Ljava/lang/String;)Lcom/android/internal/telephony/dataconnection/ApnContext;

    #@f
    move-result-object v6

    #@10
    .line 2873
    .local v6, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    if-nez v6, :cond_0

    #@12
    return-void

    #@13
    .line 2875
    :cond_0
    move-object/from16 v0, p1

    #@15
    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@17
    move-object/from16 v18, v0

    #@19
    if-nez v18, :cond_c

    #@1b
    .line 2876
    invoke-virtual {v6}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getDcAc()Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;

    #@1e
    move-result-object v10

    #@1f
    .line 2896
    .local v10, "dcac":Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;
    if-nez v10, :cond_3

    #@21
    .line 2897
    const-string/jumbo v18, "onDataSetupComplete: no connection to DC, handle as error"

    #@24
    move-object/from16 v0, p0

    #@26
    move-object/from16 v1, v18

    #@28
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@2b
    .line 2898
    sget-object v7, Lcom/android/internal/telephony/dataconnection/DcFailCause;->CONNECTION_TO_DATACONNECTIONAC_BROKEN:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    #@2d
    .line 2899
    const/4 v13, 0x1

    #@2e
    .line 3026
    .end local v10    # "dcac":Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;
    :goto_0
    if-eqz v13, :cond_1

    #@30
    .line 3027
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->onDataSetupCompleteError(Landroid/os/AsyncResult;)V

    #@33
    .line 3033
    :cond_1
    move-object/from16 v0, p0

    #@35
    iget-boolean v0, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mInternalDataEnabled:Z

    #@37
    move/from16 v18, v0

    #@39
    if-nez v18, :cond_2

    #@3b
    .line 3034
    const/16 v18, 0x0

    #@3d
    move-object/from16 v0, p0

    #@3f
    move-object/from16 v1, v18

    #@41
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->cleanUpAllConnections(Ljava/lang/String;)V

    #@44
    .line 2867
    :cond_2
    return-void

    #@45
    .line 2901
    .restart local v10    # "dcac":Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;
    :cond_3
    invoke-virtual {v6}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnSetting()Lcom/android/internal/telephony/dataconnection/ApnSetting;

    #@48
    move-result-object v5

    #@49
    .line 2903
    .local v5, "apn":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    new-instance v18, Ljava/lang/StringBuilder;

    #@4b
    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    #@4e
    const-string/jumbo v19, "onDataSetupComplete: success apn="

    #@51
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@54
    move-result-object v19

    #@55
    if-nez v5, :cond_9

    #@57
    const-string/jumbo v18, "unknown"

    #@5a
    :goto_1
    move-object/from16 v0, v19

    #@5c
    move-object/from16 v1, v18

    #@5e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@61
    move-result-object v18

    #@62
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@65
    move-result-object v18

    #@66
    move-object/from16 v0, p0

    #@68
    move-object/from16 v1, v18

    #@6a
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@6d
    .line 2905
    if-eqz v5, :cond_5

    #@6f
    iget-object v0, v5, Lcom/android/internal/telephony/dataconnection/ApnSetting;->proxy:Ljava/lang/String;

    #@71
    move-object/from16 v18, v0

    #@73
    if-eqz v18, :cond_5

    #@75
    iget-object v0, v5, Lcom/android/internal/telephony/dataconnection/ApnSetting;->proxy:Ljava/lang/String;

    #@77
    move-object/from16 v18, v0

    #@79
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    #@7c
    move-result v18

    #@7d
    if-eqz v18, :cond_5

    #@7f
    .line 2907
    :try_start_0
    iget-object v0, v5, Lcom/android/internal/telephony/dataconnection/ApnSetting;->port:Ljava/lang/String;

    #@81
    move-object/from16 v16, v0

    #@83
    .line 2908
    .local v16, "port":Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@86
    move-result v18

    #@87
    if-eqz v18, :cond_4

    #@89
    const-string/jumbo v16, "8080"

    #@8c
    .line 2909
    :cond_4
    new-instance v17, Landroid/net/ProxyInfo;

    #@8e
    iget-object v0, v5, Lcom/android/internal/telephony/dataconnection/ApnSetting;->proxy:Ljava/lang/String;

    #@90
    move-object/from16 v18, v0

    #@92
    .line 2910
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@95
    move-result v19

    #@96
    const/16 v20, 0x0

    #@98
    .line 2909
    invoke-direct/range {v17 .. v20}, Landroid/net/ProxyInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    #@9b
    .line 2911
    .local v17, "proxy":Landroid/net/ProxyInfo;
    move-object/from16 v0, v17

    #@9d
    invoke-virtual {v10, v0}, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->setLinkPropertiesHttpProxySync(Landroid/net/ProxyInfo;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@a0
    .line 2919
    .end local v16    # "port":Ljava/lang/String;
    .end local v17    # "proxy":Landroid/net/ProxyInfo;
    :cond_5
    :goto_2
    invoke-virtual {v6}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    #@a3
    move-result-object v18

    #@a4
    const-string/jumbo v19, "default"

    #@a7
    invoke-static/range {v18 .. v19}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    #@aa
    move-result v18

    #@ab
    if-eqz v18, :cond_a

    #@ad
    .line 2921
    :try_start_1
    const-string/jumbo v18, "gsm.defaultpdpcontext.active"

    #@b0
    const-string/jumbo v19, "true"

    #@b3
    invoke-static/range {v18 .. v19}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    #@b6
    .line 2925
    :goto_3
    move-object/from16 v0, p0

    #@b8
    iget-boolean v0, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mCanSetPreferApn:Z

    #@ba
    move/from16 v18, v0

    #@bc
    if-eqz v18, :cond_6

    #@be
    move-object/from16 v0, p0

    #@c0
    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPreferredApn:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    #@c2
    move-object/from16 v18, v0

    #@c4
    if-nez v18, :cond_6

    #@c6
    .line 2926
    const-string/jumbo v18, "onDataSetupComplete: PREFERRED APN is null"

    #@c9
    move-object/from16 v0, p0

    #@cb
    move-object/from16 v1, v18

    #@cd
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@d0
    .line 2927
    move-object/from16 v0, p0

    #@d2
    iput-object v5, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPreferredApn:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    #@d4
    .line 2928
    move-object/from16 v0, p0

    #@d6
    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPreferredApn:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    #@d8
    move-object/from16 v18, v0

    #@da
    if-eqz v18, :cond_6

    #@dc
    .line 2929
    move-object/from16 v0, p0

    #@de
    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPreferredApn:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    #@e0
    move-object/from16 v18, v0

    #@e2
    move-object/from16 v0, v18

    #@e4
    iget v0, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->id:I

    #@e6
    move/from16 v18, v0

    #@e8
    move-object/from16 v0, p0

    #@ea
    move/from16 v1, v18

    #@ec
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->setPreferredApn(I)V

    #@ef
    .line 2941
    :cond_6
    :goto_4
    sget-object v18, Lcom/android/internal/telephony/DctConstants$State;->CONNECTED:Lcom/android/internal/telephony/DctConstants$State;

    #@f1
    move-object/from16 v0, v18

    #@f3
    invoke-virtual {v6, v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setState(Lcom/android/internal/telephony/DctConstants$State;)V

    #@f6
    .line 2943
    invoke-virtual {v6}, Lcom/android/internal/telephony/dataconnection/ApnContext;->isProvisioningApn()Z

    #@f9
    move-result v15

    #@fa
    .line 2944
    .local v15, "isProvApn":Z
    move-object/from16 v0, p0

    #@fc
    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    #@fe
    move-object/from16 v18, v0

    #@100
    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    #@103
    move-result-object v18

    #@104
    invoke-static/range {v18 .. v18}, Landroid/net/ConnectivityManager;->from(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    #@107
    move-result-object v9

    #@108
    .line 2945
    .local v9, "cm":Landroid/net/ConnectivityManager;
    move-object/from16 v0, p0

    #@10a
    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mProvisionBroadcastReceiver:Landroid/content/BroadcastReceiver;

    #@10c
    move-object/from16 v18, v0

    #@10e
    if-eqz v18, :cond_7

    #@110
    .line 2946
    move-object/from16 v0, p0

    #@112
    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    #@114
    move-object/from16 v18, v0

    #@116
    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    #@119
    move-result-object v18

    #@11a
    move-object/from16 v0, p0

    #@11c
    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mProvisionBroadcastReceiver:Landroid/content/BroadcastReceiver;

    #@11e
    move-object/from16 v19, v0

    #@120
    invoke-virtual/range {v18 .. v19}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    #@123
    .line 2947
    const/16 v18, 0x0

    #@125
    move-object/from16 v0, v18

    #@127
    move-object/from16 v1, p0

    #@129
    iput-object v0, v1, Lcom/android/internal/telephony/dataconnection/DcTracker;->mProvisionBroadcastReceiver:Landroid/content/BroadcastReceiver;

    #@12b
    .line 2949
    :cond_7
    if-eqz v15, :cond_8

    #@12d
    move-object/from16 v0, p0

    #@12f
    iget-boolean v0, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mIsProvisioning:Z

    #@131
    move/from16 v18, v0

    #@133
    if-eqz v18, :cond_b

    #@135
    .line 2952
    :cond_8
    move-object/from16 v0, p0

    #@137
    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mProvisionActionName:Ljava/lang/String;

    #@139
    move-object/from16 v18, v0

    #@13b
    .line 2951
    const/16 v19, 0x0

    #@13d
    const/16 v20, 0x0

    #@13f
    move/from16 v0, v19

    #@141
    move/from16 v1, v20

    #@143
    move-object/from16 v2, v18

    #@145
    invoke-virtual {v9, v0, v1, v2}, Landroid/net/ConnectivityManager;->setProvisioningNotificationVisible(ZILjava/lang/String;)V

    #@148
    .line 2956
    move-object/from16 v0, p0

    #@14a
    invoke-direct {v0, v6}, Lcom/android/internal/telephony/dataconnection/DcTracker;->completeConnection(Lcom/android/internal/telephony/dataconnection/ApnContext;)V

    #@14d
    .line 2984
    :goto_5
    new-instance v18, Ljava/lang/StringBuilder;

    #@14f
    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    #@152
    const-string/jumbo v19, "onDataSetupComplete: SETUP complete type="

    #@155
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@158
    move-result-object v18

    #@159
    invoke-virtual {v6}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    #@15c
    move-result-object v19

    #@15d
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@160
    move-result-object v18

    #@161
    .line 2985
    const-string/jumbo v19, ", reason:"

    #@164
    .line 2984
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@167
    move-result-object v18

    #@168
    .line 2985
    invoke-virtual {v6}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getReason()Ljava/lang/String;

    #@16b
    move-result-object v19

    #@16c
    .line 2984
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16f
    move-result-object v18

    #@170
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@173
    move-result-object v18

    #@174
    move-object/from16 v0, p0

    #@176
    move-object/from16 v1, v18

    #@178
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@17b
    goto/16 :goto_0

    #@17d
    .line 2903
    .end local v9    # "cm":Landroid/net/ConnectivityManager;
    .end local v15    # "isProvApn":Z
    :cond_9
    iget-object v0, v5, Lcom/android/internal/telephony/dataconnection/ApnSetting;->apn:Ljava/lang/String;

    #@17f
    move-object/from16 v18, v0

    #@181
    goto/16 :goto_1

    #@183
    .line 2912
    :catch_0
    move-exception v11

    #@184
    .line 2913
    .local v11, "e":Ljava/lang/NumberFormatException;
    new-instance v18, Ljava/lang/StringBuilder;

    #@186
    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    #@189
    const-string/jumbo v19, "onDataSetupComplete: NumberFormatException making ProxyProperties ("

    #@18c
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18f
    move-result-object v18

    #@190
    .line 2914
    iget-object v0, v5, Lcom/android/internal/telephony/dataconnection/ApnSetting;->port:Ljava/lang/String;

    #@192
    move-object/from16 v19, v0

    #@194
    .line 2913
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@197
    move-result-object v18

    #@198
    .line 2914
    const-string/jumbo v19, "): "

    #@19b
    .line 2913
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19e
    move-result-object v18

    #@19f
    move-object/from16 v0, v18

    #@1a1
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1a4
    move-result-object v18

    #@1a5
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a8
    move-result-object v18

    #@1a9
    move-object/from16 v0, p0

    #@1ab
    move-object/from16 v1, v18

    #@1ad
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->loge(Ljava/lang/String;)V

    #@1b0
    goto/16 :goto_2

    #@1b2
    .line 2922
    .end local v11    # "e":Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v12

    #@1b3
    .line 2923
    .local v12, "ex":Ljava/lang/RuntimeException;
    const-string/jumbo v18, "Failed to set PUPPET_MASTER_RADIO_STRESS_TEST to true"

    #@1b6
    move-object/from16 v0, p0

    #@1b8
    move-object/from16 v1, v18

    #@1ba
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@1bd
    goto/16 :goto_3

    #@1bf
    .line 2934
    .end local v12    # "ex":Ljava/lang/RuntimeException;
    :cond_a
    :try_start_2
    const-string/jumbo v18, "gsm.defaultpdpcontext.active"

    #@1c2
    const-string/jumbo v19, "false"

    #@1c5
    invoke-static/range {v18 .. v19}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2

    #@1c8
    goto/16 :goto_4

    #@1ca
    .line 2935
    :catch_2
    move-exception v12

    #@1cb
    .line 2936
    .restart local v12    # "ex":Ljava/lang/RuntimeException;
    const-string/jumbo v18, "Failed to set PUPPET_MASTER_RADIO_STRESS_TEST to false"

    #@1ce
    move-object/from16 v0, p0

    #@1d0
    move-object/from16 v1, v18

    #@1d2
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@1d5
    goto/16 :goto_4

    #@1d7
    .line 2964
    .end local v12    # "ex":Ljava/lang/RuntimeException;
    .restart local v9    # "cm":Landroid/net/ConnectivityManager;
    .restart local v15    # "isProvApn":Z
    :cond_b
    new-instance v18, Ljava/lang/StringBuilder;

    #@1d9
    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    #@1dc
    const-string/jumbo v19, "onDataSetupComplete: successful, BUT send connected to prov apn as mIsProvisioning:"

    #@1df
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e2
    move-result-object v18

    #@1e3
    .line 2965
    move-object/from16 v0, p0

    #@1e5
    iget-boolean v0, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mIsProvisioning:Z

    #@1e7
    move/from16 v19, v0

    #@1e9
    .line 2964
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@1ec
    move-result-object v18

    #@1ed
    .line 2965
    const-string/jumbo v19, " == false"

    #@1f0
    .line 2964
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f3
    move-result-object v18

    #@1f4
    .line 2966
    const-string/jumbo v19, " && (isProvisioningApn:"

    #@1f7
    .line 2964
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1fa
    move-result-object v18

    #@1fb
    move-object/from16 v0, v18

    #@1fd
    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@200
    move-result-object v18

    #@201
    .line 2966
    const-string/jumbo v19, " == true"

    #@204
    .line 2964
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@207
    move-result-object v18

    #@208
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@20b
    move-result-object v18

    #@20c
    move-object/from16 v0, p0

    #@20e
    move-object/from16 v1, v18

    #@210
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@213
    .line 2971
    new-instance v18, Lcom/android/internal/telephony/dataconnection/DcTracker$ProvisionNotificationBroadcastReceiver;

    #@215
    .line 2972
    invoke-virtual {v9}, Landroid/net/ConnectivityManager;->getMobileProvisioningUrl()Ljava/lang/String;

    #@218
    move-result-object v19

    #@219
    .line 2973
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    #@21c
    move-result-object v20

    #@21d
    invoke-virtual/range {v20 .. v20}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    #@220
    move-result-object v20

    #@221
    .line 2971
    move-object/from16 v0, v18

    #@223
    move-object/from16 v1, p0

    #@225
    move-object/from16 v2, v19

    #@227
    move-object/from16 v3, v20

    #@229
    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/dataconnection/DcTracker$ProvisionNotificationBroadcastReceiver;-><init>(Lcom/android/internal/telephony/dataconnection/DcTracker;Ljava/lang/String;Ljava/lang/String;)V

    #@22c
    move-object/from16 v0, v18

    #@22e
    move-object/from16 v1, p0

    #@230
    iput-object v0, v1, Lcom/android/internal/telephony/dataconnection/DcTracker;->mProvisionBroadcastReceiver:Landroid/content/BroadcastReceiver;

    #@232
    .line 2974
    move-object/from16 v0, p0

    #@234
    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    #@236
    move-object/from16 v18, v0

    #@238
    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    #@23b
    move-result-object v18

    #@23c
    move-object/from16 v0, p0

    #@23e
    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mProvisionBroadcastReceiver:Landroid/content/BroadcastReceiver;

    #@240
    move-object/from16 v19, v0

    #@242
    .line 2975
    new-instance v20, Landroid/content/IntentFilter;

    #@244
    move-object/from16 v0, p0

    #@246
    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mProvisionActionName:Ljava/lang/String;

    #@248
    move-object/from16 v21, v0

    #@24a
    invoke-direct/range {v20 .. v21}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    #@24d
    .line 2974
    invoke-virtual/range {v18 .. v20}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    #@250
    .line 2978
    move-object/from16 v0, p0

    #@252
    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mProvisionActionName:Ljava/lang/String;

    #@254
    move-object/from16 v18, v0

    #@256
    .line 2977
    const/16 v19, 0x1

    #@258
    const/16 v20, 0x0

    #@25a
    move/from16 v0, v19

    #@25c
    move/from16 v1, v20

    #@25e
    move-object/from16 v2, v18

    #@260
    invoke-virtual {v9, v0, v1, v2}, Landroid/net/ConnectivityManager;->setProvisioningNotificationVisible(ZILjava/lang/String;)V

    #@263
    .line 2981
    const/16 v18, 0x0

    #@265
    move-object/from16 v0, p0

    #@267
    move/from16 v1, v18

    #@269
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->setRadio(Z)V

    #@26c
    goto/16 :goto_5

    #@26e
    .line 2989
    .end local v5    # "apn":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    .end local v9    # "cm":Landroid/net/ConnectivityManager;
    .end local v10    # "dcac":Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;
    .end local v15    # "isProvApn":Z
    :cond_c
    move-object/from16 v0, p1

    #@270
    iget-object v7, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@272
    .end local v7    # "cause":Lcom/android/internal/telephony/dataconnection/DcFailCause;
    check-cast v7, Lcom/android/internal/telephony/dataconnection/DcFailCause;

    #@274
    .line 2991
    .restart local v7    # "cause":Lcom/android/internal/telephony/dataconnection/DcFailCause;
    invoke-virtual {v6}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnSetting()Lcom/android/internal/telephony/dataconnection/ApnSetting;

    #@277
    move-result-object v5

    #@278
    .line 2992
    .restart local v5    # "apn":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    const-string/jumbo v19, "onDataSetupComplete: error apn=%s cause=%s"

    #@27b
    const/16 v18, 0x2

    #@27d
    move/from16 v0, v18

    #@27f
    new-array v0, v0, [Ljava/lang/Object;

    #@281
    move-object/from16 v20, v0

    #@283
    .line 2993
    if-nez v5, :cond_11

    #@285
    const-string/jumbo v18, "unknown"

    #@288
    :goto_6
    const/16 v21, 0x0

    #@28a
    aput-object v18, v20, v21

    #@28c
    const/16 v18, 0x1

    #@28e
    aput-object v7, v20, v18

    #@290
    .line 2992
    invoke-static/range {v19 .. v20}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@293
    move-result-object v18

    #@294
    move-object/from16 v0, p0

    #@296
    move-object/from16 v1, v18

    #@298
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@29b
    .line 2995
    invoke-virtual {v7}, Lcom/android/internal/telephony/dataconnection/DcFailCause;->isEventLoggable()Z

    #@29e
    move-result v18

    #@29f
    if-eqz v18, :cond_d

    #@2a1
    .line 2997
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->getCellLocationId()I

    #@2a4
    move-result v8

    #@2a5
    .line 2998
    .local v8, "cid":I
    const/16 v18, 0x3

    #@2a7
    move/from16 v0, v18

    #@2a9
    new-array v0, v0, [Ljava/lang/Object;

    #@2ab
    move-object/from16 v18, v0

    #@2ad
    .line 2999
    invoke-virtual {v7}, Lcom/android/internal/telephony/dataconnection/DcFailCause;->ordinal()I

    #@2b0
    move-result v19

    #@2b1
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@2b4
    move-result-object v19

    #@2b5
    const/16 v20, 0x0

    #@2b7
    aput-object v19, v18, v20

    #@2b9
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@2bc
    move-result-object v19

    #@2bd
    const/16 v20, 0x1

    #@2bf
    aput-object v19, v18, v20

    #@2c1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    #@2c4
    move-result-object v19

    #@2c5
    invoke-virtual/range {v19 .. v19}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    #@2c8
    move-result v19

    #@2c9
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@2cc
    move-result-object v19

    #@2cd
    const/16 v20, 0x2

    #@2cf
    aput-object v19, v18, v20

    #@2d1
    .line 2998
    const v19, 0xc3b9

    #@2d4
    move/from16 v0, v19

    #@2d6
    move-object/from16 v1, v18

    #@2d8
    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    #@2db
    .line 3001
    .end local v8    # "cid":I
    :cond_d
    invoke-virtual {v6}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnSetting()Lcom/android/internal/telephony/dataconnection/ApnSetting;

    #@2de
    move-result-object v5

    #@2df
    .line 3002
    move-object/from16 v0, p0

    #@2e1
    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    #@2e3
    move-object/from16 v19, v0

    #@2e5
    invoke-virtual {v6}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getReason()Ljava/lang/String;

    #@2e8
    move-result-object v20

    #@2e9
    .line 3003
    invoke-virtual {v6}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    #@2ec
    move-result-object v21

    #@2ed
    if-eqz v5, :cond_12

    #@2ef
    iget-object v0, v5, Lcom/android/internal/telephony/dataconnection/ApnSetting;->apn:Ljava/lang/String;

    #@2f1
    move-object/from16 v18, v0

    #@2f3
    :goto_7
    invoke-virtual {v7}, Lcom/android/internal/telephony/dataconnection/DcFailCause;->toString()Ljava/lang/String;

    #@2f6
    move-result-object v22

    #@2f7
    .line 3002
    move-object/from16 v0, v19

    #@2f9
    move-object/from16 v1, v20

    #@2fb
    move-object/from16 v2, v21

    #@2fd
    move-object/from16 v3, v18

    #@2ff
    move-object/from16 v4, v22

    #@301
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/Phone;->notifyPreciseDataConnectionFailed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@304
    .line 3006
    new-instance v14, Landroid/content/Intent;

    #@306
    const-string/jumbo v18, "android.intent.action.REQUEST_NETWORK_FAILED"

    #@309
    move-object/from16 v0, v18

    #@30b
    invoke-direct {v14, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@30e
    .line 3007
    .local v14, "intent":Landroid/content/Intent;
    const-string/jumbo v18, "errorCode"

    #@311
    invoke-virtual {v7}, Lcom/android/internal/telephony/dataconnection/DcFailCause;->getErrorCode()I

    #@314
    move-result v19

    #@315
    move-object/from16 v0, v18

    #@317
    move/from16 v1, v19

    #@319
    invoke-virtual {v14, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@31c
    .line 3008
    const-string/jumbo v18, "apnType"

    #@31f
    invoke-virtual {v6}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    #@322
    move-result-object v19

    #@323
    move-object/from16 v0, v18

    #@325
    move-object/from16 v1, v19

    #@327
    invoke-virtual {v14, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@32a
    .line 3009
    move-object/from16 v0, p0

    #@32c
    invoke-direct {v0, v14}, Lcom/android/internal/telephony/dataconnection/DcTracker;->notifyCarrierAppWithIntent(Landroid/content/Intent;)Z

    #@32f
    .line 3011
    invoke-virtual {v7}, Lcom/android/internal/telephony/dataconnection/DcFailCause;->isRestartRadioFail()Z

    #@332
    move-result v18

    #@333
    if-nez v18, :cond_e

    #@335
    invoke-virtual {v7}, Lcom/android/internal/telephony/dataconnection/DcFailCause;->getErrorCode()I

    #@338
    move-result v18

    #@339
    move/from16 v0, v18

    #@33b
    invoke-virtual {v6, v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->restartOnError(I)Z

    #@33e
    move-result v18

    #@33f
    if-eqz v18, :cond_f

    #@341
    .line 3012
    :cond_e
    const-string/jumbo v18, "Modem restarted."

    #@344
    move-object/from16 v0, p0

    #@346
    move-object/from16 v1, v18

    #@348
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@34b
    .line 3013
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->sendRestartRadio()V

    #@34e
    .line 3018
    :cond_f
    move-object/from16 v0, p0

    #@350
    invoke-virtual {v0, v7}, Lcom/android/internal/telephony/dataconnection/DcTracker;->isPermanentFail(Lcom/android/internal/telephony/dataconnection/DcFailCause;)Z

    #@353
    move-result v18

    #@354
    if-eqz v18, :cond_10

    #@356
    .line 3019
    new-instance v18, Ljava/lang/StringBuilder;

    #@358
    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    #@35b
    const-string/jumbo v19, "cause = "

    #@35e
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@361
    move-result-object v18

    #@362
    move-object/from16 v0, v18

    #@364
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@367
    move-result-object v18

    #@368
    const-string/jumbo v19, ", mark apn as permanent failed. apn = "

    #@36b
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36e
    move-result-object v18

    #@36f
    move-object/from16 v0, v18

    #@371
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@374
    move-result-object v18

    #@375
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@378
    move-result-object v18

    #@379
    move-object/from16 v0, p0

    #@37b
    move-object/from16 v1, v18

    #@37d
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@380
    .line 3020
    invoke-virtual {v6, v5}, Lcom/android/internal/telephony/dataconnection/ApnContext;->markApnPermanentFailed(Lcom/android/internal/telephony/dataconnection/ApnSetting;)V

    #@383
    .line 3023
    :cond_10
    const/4 v13, 0x1

    #@384
    goto/16 :goto_0

    #@386
    .line 2993
    .end local v14    # "intent":Landroid/content/Intent;
    :cond_11
    iget-object v0, v5, Lcom/android/internal/telephony/dataconnection/ApnSetting;->apn:Ljava/lang/String;

    #@388
    move-object/from16 v18, v0

    #@38a
    goto/16 :goto_6

    #@38c
    .line 3003
    :cond_12
    const-string/jumbo v18, "unknown"

    #@38f
    goto/16 :goto_7
.end method

.method private onDataSetupCompleteError(Landroid/os/AsyncResult;)V
    .locals 7
    .param p1, "ar"    # Landroid/os/AsyncResult;

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 3071
    const-string/jumbo v1, "onDataSetupCompleteError"

    #@4
    invoke-direct {p0, p1, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->getValidApnContext(Landroid/os/AsyncResult;Ljava/lang/String;)Lcom/android/internal/telephony/dataconnection/ApnContext;

    #@7
    move-result-object v0

    #@8
    .line 3073
    .local v0, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    if-nez v0, :cond_0

    #@a
    return-void

    #@b
    .line 3075
    :cond_0
    iget-boolean v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mFailFast:Z

    #@d
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getDelayForNextApn(Z)J

    #@10
    move-result-wide v2

    #@11
    .line 3078
    .local v2, "delay":J
    const-wide/16 v4, 0x0

    #@13
    cmp-long v1, v2, v4

    #@15
    if-ltz v1, :cond_1

    #@17
    .line 3079
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
    .line 3080
    sget-object v1, Lcom/android/internal/telephony/DctConstants$State;->SCANNING:Lcom/android/internal/telephony/DctConstants$State;

    #@30
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setState(Lcom/android/internal/telephony/DctConstants$State;)V

    #@33
    .line 3083
    invoke-direct {p0, v2, v3, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->startAlarmForReconnect(JLcom/android/internal/telephony/dataconnection/ApnContext;)V

    #@36
    .line 3069
    :goto_0
    return-void

    #@37
    .line 3087
    :cond_1
    sget-object v1, Lcom/android/internal/telephony/DctConstants$State;->FAILED:Lcom/android/internal/telephony/DctConstants$State;

    #@39
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setState(Lcom/android/internal/telephony/DctConstants$State;)V

    #@3c
    .line 3088
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
    .line 3089
    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setDataConnectionAc(Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;)V

    #@4b
    .line 3090
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
    .line 4742
    iget v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDataStallAlarmTag:I

    #@2
    if-eq v2, p1, :cond_0

    #@4
    .line 4744
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
    .line 4746
    return-void

    #@29
    .line 4748
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->updateDataStallInfo()V

    #@2c
    .line 4750
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mResolver:Landroid/content/ContentResolver;

    #@2e
    .line 4751
    const-string/jumbo v3, "pdp_watchdog_trigger_packet_count"

    #@31
    .line 4752
    const/16 v4, 0xa

    #@33
    .line 4750
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    #@36
    move-result v0

    #@37
    .line 4754
    .local v0, "hangWatchdogTrigger":I
    const/4 v1, 0x0

    #@38
    .line 4755
    .local v1, "suspectedStall":Z
    iget-wide v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mSentSinceLastRecv:J

    #@3a
    int-to-long v4, v0

    #@3b
    cmp-long v2, v2, v4

    #@3d
    if-ltz v2, :cond_1

    #@3f
    .line 4757
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
    .line 4759
    const/4 v1, 0x1

    #@66
    .line 4760
    const v2, 0x42012

    #@69
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->obtainMessage(I)Landroid/os/Message;

    #@6c
    move-result-object v2

    #@6d
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->sendMessage(Landroid/os/Message;)Z

    #@70
    .line 4767
    :cond_1
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->startDataStallAlarm(Z)V

    #@73
    .line 4741
    return-void
.end method

.method private onDeviceProvisionedChange()V
    .locals 1

    #@0
    .prologue
    .line 927
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->getDataEnabled()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 928
    const/4 v0, 0x1

    #@7
    iput-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mUserDataEnabled:Z

    #@9
    .line 929
    const-string/jumbo v0, "dataEnabled"

    #@c
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->onTrySetupData(Ljava/lang/String;)Z

    #@f
    .line 926
    :goto_0
    return-void

    #@10
    .line 931
    :cond_0
    const/4 v0, 0x0

    #@11
    iput-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mUserDataEnabled:Z

    #@13
    .line 932
    const-string/jumbo v0, "specificDisabled"

    #@16
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->onCleanUpAllConnections(Ljava/lang/String;)V

    #@19
    goto :goto_0
.end method

.method private onDisconnectDcRetrying(Landroid/os/AsyncResult;)V
    .locals 4
    .param p1, "ar"    # Landroid/os/AsyncResult;

    #@0
    .prologue
    .line 3231
    const-string/jumbo v1, "onDisconnectDcRetrying"

    #@3
    invoke-direct {p0, p1, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->getValidApnContext(Landroid/os/AsyncResult;Ljava/lang/String;)Lcom/android/internal/telephony/dataconnection/ApnContext;

    #@6
    move-result-object v0

    #@7
    .line 3232
    .local v0, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    if-nez v0, :cond_0

    #@9
    return-void

    #@a
    .line 3234
    :cond_0
    sget-object v1, Lcom/android/internal/telephony/DctConstants$State;->RETRYING:Lcom/android/internal/telephony/DctConstants$State;

    #@c
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setState(Lcom/android/internal/telephony/DctConstants$State;)V

    #@f
    .line 3235
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
    .line 3237
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
    .line 3229
    return-void
.end method

.method private onDisconnectDone(Landroid/os/AsyncResult;)V
    .locals 9
    .param p1, "ar"    # Landroid/os/AsyncResult;

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 3145
    const-string/jumbo v5, "onDisconnectDone"

    #@4
    invoke-direct {p0, p1, v5}, Lcom/android/internal/telephony/dataconnection/DcTracker;->getValidApnContext(Landroid/os/AsyncResult;Ljava/lang/String;)Lcom/android/internal/telephony/dataconnection/ApnContext;

    #@7
    move-result-object v0

    #@8
    .line 3146
    .local v0, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    if-nez v0, :cond_0

    #@a
    return-void

    #@b
    .line 3148
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
    .line 3149
    sget-object v5, Lcom/android/internal/telephony/DctConstants$State;->IDLE:Lcom/android/internal/telephony/DctConstants$State;

    #@24
    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setState(Lcom/android/internal/telephony/DctConstants$State;)V

    #@27
    .line 3151
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
    .line 3155
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->isDisconnected()Z

    #@37
    move-result v5

    #@38
    if-eqz v5, :cond_3

    #@3a
    .line 3156
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
    .line 3157
    const-string/jumbo v5, "onDisconnectDone: radio will be turned off, no retries"

    #@49
    invoke-direct {p0, v5}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@4c
    .line 3159
    invoke-virtual {v0, v8}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setApnSetting(Lcom/android/internal/telephony/dataconnection/ApnSetting;)V

    #@4f
    .line 3160
    invoke-virtual {v0, v8}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setDataConnectionAc(Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;)V

    #@52
    .line 3164
    iget v5, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDisconnectPendingCount:I

    #@54
    if-lez v5, :cond_1

    #@56
    .line 3165
    iget v5, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDisconnectPendingCount:I

    #@58
    add-int/lit8 v5, v5, -0x1

    #@5a
    iput v5, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDisconnectPendingCount:I

    #@5c
    .line 3168
    :cond_1
    iget v5, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDisconnectPendingCount:I

    #@5e
    if-nez v5, :cond_2

    #@60
    .line 3169
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->notifyDataDisconnectComplete()V

    #@63
    .line 3170
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->notifyAllDataDisconnected()V

    #@66
    .line 3172
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->notifyCarrierAppForRedirection()V

    #@69
    .line 3174
    :cond_2
    return-void

    #@6a
    .line 3178
    :cond_3
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAttached:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@6c
    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    #@6f
    move-result v5

    #@70
    if-eqz v5, :cond_7

    #@72
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->isReady()Z

    #@75
    move-result v5

    #@76
    if-eqz v5, :cond_7

    #@78
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->retryAfterDisconnected(Lcom/android/internal/telephony/dataconnection/ApnContext;)Z

    #@7b
    move-result v5

    #@7c
    if-eqz v5, :cond_7

    #@7e
    .line 3180
    :try_start_0
    const-string/jumbo v5, "gsm.defaultpdpcontext.active"

    #@81
    const-string/jumbo v6, "false"

    #@84
    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    #@87
    .line 3187
    :goto_0
    const-string/jumbo v5, "onDisconnectDone: attached, ready and retry after disconnect"

    #@8a
    invoke-direct {p0, v5}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@8d
    .line 3188
    iget-boolean v5, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mFailFast:Z

    #@8f
    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getInterApnDelay(Z)J

    #@92
    move-result-wide v2

    #@93
    .line 3189
    .local v2, "delay":J
    const-wide/16 v6, 0x0

    #@95
    cmp-long v5, v2, v6

    #@97
    if-lez v5, :cond_4

    #@99
    .line 3192
    invoke-direct {p0, v2, v3, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->startAlarmForReconnect(JLcom/android/internal/telephony/dataconnection/ApnContext;)V

    #@9c
    .line 3212
    .end local v2    # "delay":J
    :cond_4
    :goto_1
    iget v5, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDisconnectPendingCount:I

    #@9e
    if-lez v5, :cond_5

    #@a0
    .line 3213
    iget v5, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDisconnectPendingCount:I

    #@a2
    add-int/lit8 v5, v5, -0x1

    #@a4
    iput v5, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDisconnectPendingCount:I

    #@a6
    .line 3215
    :cond_5
    iget v5, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDisconnectPendingCount:I

    #@a8
    if-nez v5, :cond_6

    #@aa
    .line 3217
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    #@ac
    invoke-virtual {v5}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    #@af
    move-result-object v5

    #@b0
    invoke-virtual {v5}, Lcom/android/internal/telephony/ServiceStateTracker;->isConcurrentVoiceAndDataAllowed()Z

    #@b3
    move-result v5

    #@b4
    .line 3216
    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setConcurrentVoiceAndDataAllowed(Z)V

    #@b7
    .line 3218
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->notifyDataDisconnectComplete()V

    #@ba
    .line 3219
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->notifyAllDataDisconnected()V

    #@bd
    .line 3221
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->notifyCarrierAppForRedirection()V

    #@c0
    .line 3144
    :cond_6
    return-void

    #@c1
    .line 3181
    :catch_0
    move-exception v1

    #@c2
    .line 3182
    .local v1, "ex":Ljava/lang/RuntimeException;
    const-string/jumbo v5, "Failed to set PUPPET_MASTER_RADIO_STRESS_TEST to false"

    #@c5
    invoke-direct {p0, v5}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@c8
    goto :goto_0

    #@c9
    .line 3195
    .end local v1    # "ex":Ljava/lang/RuntimeException;
    :cond_7
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    #@cb
    invoke-virtual {v5}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    #@ce
    move-result-object v5

    #@cf
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@d2
    move-result-object v5

    #@d3
    .line 3196
    const v6, 0x112007d

    #@d6
    .line 3195
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    #@d9
    move-result v4

    #@da
    .line 3198
    .local v4, "restartRadioAfterProvisioning":Z
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->isProvisioningApn()Z

    #@dd
    move-result v5

    #@de
    if-eqz v5, :cond_8

    #@e0
    if-eqz v4, :cond_8

    #@e2
    .line 3199
    const-string/jumbo v5, "onDisconnectDone: restartRadio after provisioning"

    #@e5
    invoke-direct {p0, v5}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@e8
    .line 3200
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->restartRadio()V

    #@eb
    .line 3202
    :cond_8
    invoke-virtual {v0, v8}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setApnSetting(Lcom/android/internal/telephony/dataconnection/ApnSetting;)V

    #@ee
    .line 3203
    invoke-virtual {v0, v8}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setDataConnectionAc(Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;)V

    #@f1
    .line 3204
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    #@f3
    invoke-virtual {v5}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    #@f6
    move-result-object v5

    #@f7
    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    #@fa
    move-result v5

    #@fb
    invoke-direct {p0, v5}, Lcom/android/internal/telephony/dataconnection/DcTracker;->isOnlySingleDcAllowed(I)Z

    #@fe
    move-result v5

    #@ff
    if-eqz v5, :cond_9

    #@101
    .line 3205
    const-string/jumbo v5, "onDisconnectDone: isOnlySigneDcAllowed true so setup single apn"

    #@104
    invoke-direct {p0, v5}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@107
    .line 3206
    const-string/jumbo v5, "SinglePdnArbitration"

    #@10a
    invoke-direct {p0, v5}, Lcom/android/internal/telephony/dataconnection/DcTracker;->setupDataOnConnectableApns(Ljava/lang/String;)V

    #@10d
    goto :goto_1

    #@10e
    .line 3208
    :cond_9
    const-string/jumbo v5, "onDisconnectDone: not retrying"

    #@111
    invoke-direct {p0, v5}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@114
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
    .line 2633
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mApnContextsById:Landroid/util/SparseArray;

    #@3
    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Lcom/android/internal/telephony/dataconnection/ApnContext;

    #@9
    .line 2634
    .local v0, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    if-nez v0, :cond_0

    #@b
    .line 2635
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
    .line 2636
    return-void

    #@35
    .line 2639
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
    .line 2640
    if-ne p2, v1, :cond_1

    #@55
    :goto_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getDependencyMet()Z

    #@58
    move-result v2

    #@59
    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->applyNewState(Lcom/android/internal/telephony/dataconnection/ApnContext;ZZ)V

    #@5c
    .line 2632
    return-void

    #@5d
    .line 2640
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
    .line 2794
    const-string/jumbo v1, "onRadioAvailable"

    #@4
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@7
    .line 2795
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    #@9
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getSimulatedRadioControl()Lcom/android/internal/telephony/test/SimulatedRadioControl;

    #@c
    move-result-object v1

    #@d
    if-eqz v1, :cond_0

    #@f
    .line 2799
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/dataconnection/DcTracker;->notifyDataConnection(Ljava/lang/String;)V

    #@12
    .line 2801
    const-string/jumbo v1, "onRadioAvailable: We\'re on the simulator; assuming data is connected"

    #@15
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@18
    .line 2804
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    #@1a
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    #@1d
    move-result-object v0

    #@1e
    check-cast v0, Lcom/android/internal/telephony/uicc/IccRecords;

    #@20
    .line 2805
    .local v0, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v0, :cond_1

    #@22
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccRecords;->getRecordsLoaded()Z

    #@25
    move-result v1

    #@26
    if-eqz v1, :cond_1

    #@28
    .line 2806
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/dataconnection/DcTracker;->notifyOffApnsOfAvailability(Ljava/lang/String;)V

    #@2b
    .line 2809
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->getOverallState()Lcom/android/internal/telephony/DctConstants$State;

    #@2e
    move-result-object v1

    #@2f
    sget-object v2, Lcom/android/internal/telephony/DctConstants$State;->IDLE:Lcom/android/internal/telephony/DctConstants$State;

    #@31
    if-eq v1, v2, :cond_2

    #@33
    .line 2810
    const/4 v1, 0x1

    #@34
    invoke-direct {p0, v1, v3}, Lcom/android/internal/telephony/dataconnection/DcTracker;->cleanUpConnection(ZLcom/android/internal/telephony/dataconnection/ApnContext;)V

    #@37
    .line 2793
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
    .line 2818
    iput-boolean v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mReregisterOnReconnectFailure:Z

    #@4
    .line 2820
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    #@6
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getSimulatedRadioControl()Lcom/android/internal/telephony/test/SimulatedRadioControl;

    #@9
    move-result-object v0

    #@a
    if-eqz v0, :cond_0

    #@c
    .line 2823
    const-string/jumbo v0, "We\'re on the simulator; assuming radio off is meaningless"

    #@f
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@12
    .line 2828
    :goto_0
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->notifyOffApnsOfAvailability(Ljava/lang/String;)V

    #@15
    .line 2814
    return-void

    #@16
    .line 2825
    :cond_0
    const-string/jumbo v0, "onRadioOffOrNotAvailable: is off and clean up all connections"

    #@19
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@1c
    .line 2826
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
    .line 2393
    const-string/jumbo v0, "onRecordsLoadedOrSubIdChanged: createAllApnList"

    #@3
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@6
    .line 2394
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
    .line 2395
    const v1, 0x1120094

    #@13
    .line 2394
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    #@16
    move-result v0

    #@17
    iput-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAutoAttachOnCreationConfig:Z

    #@19
    .line 2397
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->createAllApnList()V

    #@1c
    .line 2398
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->setInitialAttachApn()V

    #@1f
    .line 2399
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
    .line 2400
    const-string/jumbo v0, "onRecordsLoadedOrSubIdChanged: notifying data availability"

    #@30
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@33
    .line 2401
    const-string/jumbo v0, "simLoaded"

    #@36
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->notifyOffApnsOfAvailability(Ljava/lang/String;)V

    #@39
    .line 2403
    :cond_0
    const-string/jumbo v0, "simLoaded"

    #@3c
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->setupDataOnConnectableApns(Ljava/lang/String;)V

    #@3f
    .line 2392
    return-void
.end method

.method private onResetDone(Landroid/os/AsyncResult;)V
    .locals 2
    .param p1, "ar"    # Landroid/os/AsyncResult;

    #@0
    .prologue
    .line 877
    const-string/jumbo v1, "EVENT_RESET_DONE"

    #@3
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@6
    .line 878
    const/4 v0, 0x0

    #@7
    .line 879
    .local v0, "reason":Ljava/lang/String;
    iget-object v1, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    #@9
    instance-of v1, v1, Ljava/lang/String;

    #@b
    if-eqz v1, :cond_0

    #@d
    .line 880
    iget-object v0, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    #@f
    .end local v0    # "reason":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    #@11
    .line 882
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->gotoIdleAndNotifyDataConnection(Ljava/lang/String;)V

    #@14
    .line 876
    return-void
.end method

.method private onRoamingOff()V
    .locals 1

    #@0
    .prologue
    .line 2756
    const-string/jumbo v0, "onRoamingOff"

    #@3
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@6
    .line 2758
    iget-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mUserDataEnabled:Z

    #@8
    if-nez v0, :cond_0

    #@a
    return-void

    #@b
    .line 2760
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->getDataOnRoamingEnabled()Z

    #@e
    move-result v0

    #@f
    if-nez v0, :cond_1

    #@11
    .line 2761
    const-string/jumbo v0, "roamingOff"

    #@14
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->notifyOffApnsOfAvailability(Ljava/lang/String;)V

    #@17
    .line 2762
    const-string/jumbo v0, "roamingOff"

    #@1a
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->setupDataOnConnectableApns(Ljava/lang/String;)V

    #@1d
    .line 2755
    :goto_0
    return-void

    #@1e
    .line 2764
    :cond_1
    const-string/jumbo v0, "roamingOff"

    #@21
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->notifyDataConnection(Ljava/lang/String;)V

    #@24
    goto :goto_0
.end method

.method private onRoamingOn()V
    .locals 2

    #@0
    .prologue
    .line 2769
    const-string/jumbo v0, "onRoamingOn"

    #@3
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@6
    .line 2771
    iget-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mUserDataEnabled:Z

    #@8
    if-nez v0, :cond_0

    #@a
    .line 2772
    const-string/jumbo v0, "data not enabled by user"

    #@d
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@10
    .line 2773
    return-void

    #@11
    .line 2777
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    #@13
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    #@16
    move-result-object v0

    #@17
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    #@1a
    move-result v0

    #@1b
    if-nez v0, :cond_1

    #@1d
    .line 2778
    const-string/jumbo v0, "device is not roaming. ignored the request."

    #@20
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@23
    .line 2779
    return-void

    #@24
    .line 2782
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->getDataOnRoamingEnabled()Z

    #@27
    move-result v0

    #@28
    if-eqz v0, :cond_2

    #@2a
    .line 2783
    const-string/jumbo v0, "onRoamingOn: setup data on roaming"

    #@2d
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@30
    .line 2784
    const-string/jumbo v0, "roamingOn"

    #@33
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->setupDataOnConnectableApns(Ljava/lang/String;)V

    #@36
    .line 2785
    const-string/jumbo v0, "roamingOn"

    #@39
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->notifyDataConnection(Ljava/lang/String;)V

    #@3c
    .line 2768
    :goto_0
    return-void

    #@3d
    .line 2787
    :cond_2
    const-string/jumbo v0, "onRoamingOn: Tear down data connection on roaming."

    #@40
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@43
    .line 2788
    const-string/jumbo v0, "roamingOn"

    #@46
    const/4 v1, 0x1

    #@47
    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->cleanUpAllConnections(ZLjava/lang/String;)Z

    #@4a
    .line 2789
    const-string/jumbo v0, "roamingOn"

    #@4d
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->notifyOffApnsOfAvailability(Ljava/lang/String;)V

    #@50
    goto :goto_0
.end method

.method private onSetDependencyMet(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "apnType"    # Ljava/lang/String;
    .param p2, "met"    # Z

    #@0
    .prologue
    .line 2445
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
    .line 2447
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    #@c
    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Lcom/android/internal/telephony/dataconnection/ApnContext;

    #@12
    .line 2448
    .local v0, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    if-nez v0, :cond_1

    #@14
    .line 2449
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
    .line 2450
    const-string/jumbo v2, ", "

    #@27
    .line 2449
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v1

    #@2b
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v1

    #@2f
    .line 2450
    const-string/jumbo v2, ")"

    #@32
    .line 2449
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
    .line 2451
    return-void

    #@3e
    .line 2453
    :cond_1
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->isEnabled()Z

    #@41
    move-result v1

    #@42
    invoke-direct {p0, v0, v1, p2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->applyNewState(Lcom/android/internal/telephony/dataconnection/ApnContext;ZZ)V

    #@45
    .line 2454
    const-string/jumbo v1, "default"

    #@48
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@4b
    move-result v1

    #@4c
    if-eqz v1, :cond_2

    #@4e
    .line 2456
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
    .line 2457
    .restart local v0    # "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    if-eqz v0, :cond_2

    #@5b
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->isEnabled()Z

    #@5e
    move-result v1

    #@5f
    invoke-direct {p0, v0, v1, p2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->applyNewState(Lcom/android/internal/telephony/dataconnection/ApnContext;ZZ)V

    #@62
    .line 2443
    :cond_2
    return-void
.end method

.method private onSetInternalDataEnabled(ZLandroid/os/Message;)V
    .locals 3
    .param p1, "enabled"    # Z
    .param p2, "onCompleteMsg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 4216
    new-instance v1, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v2, "onSetInternalDataEnabled: enabled="

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
    .line 4217
    const/4 v0, 0x1

    #@18
    .line 4219
    .local v0, "sendOnComplete":Z
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDataEnabledLock:Ljava/lang/Object;

    #@1a
    monitor-enter v2

    #@1b
    .line 4220
    :try_start_0
    iput-boolean p1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mInternalDataEnabled:Z

    #@1d
    .line 4221
    if-eqz p1, :cond_1

    #@1f
    .line 4222
    const-string/jumbo v1, "onSetInternalDataEnabled: changed to enabled, try to setup data call"

    #@22
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@25
    .line 4223
    const-string/jumbo v1, "dataEnabled"

    #@28
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->onTrySetupData(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2b
    :goto_0
    monitor-exit v2

    #@2c
    .line 4231
    if-eqz v0, :cond_0

    #@2e
    .line 4232
    if-eqz p2, :cond_0

    #@30
    .line 4233
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    #@33
    .line 4215
    :cond_0
    return-void

    #@34
    .line 4225
    :cond_1
    const/4 v0, 0x0

    #@35
    .line 4226
    :try_start_1
    const-string/jumbo v1, "onSetInternalDataEnabled: changed to disabled, cleanUpAllConnections"

    #@38
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@3b
    .line 4227
    const/4 v1, 0x0

    #@3c
    invoke-virtual {p0, v1, p2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->cleanUpAllConnections(Ljava/lang/String;Landroid/os/Message;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3f
    goto :goto_0

    #@40
    .line 4219
    :catchall_0
    move-exception v1

    #@41
    monitor-exit v2

    #@42
    throw v1
.end method

.method private onSetPolicyDataEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    #@0
    .prologue
    .line 2462
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDataEnabledLock:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 2463
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->getAnyDataEnabled()Z

    #@6
    move-result v0

    #@7
    .line 2464
    .local v0, "prevEnabled":Z
    sget-boolean v1, Lcom/android/internal/telephony/dataconnection/DcTracker;->sPolicyDataEnabled:Z

    #@9
    if-eq v1, p1, :cond_0

    #@b
    .line 2465
    sput-boolean p1, Lcom/android/internal/telephony/dataconnection/DcTracker;->sPolicyDataEnabled:Z

    #@d
    .line 2466
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->getAnyDataEnabled()Z

    #@10
    move-result v1

    #@11
    if-eq v0, v1, :cond_0

    #@13
    .line 2467
    if-nez v0, :cond_1

    #@15
    .line 2468
    const-string/jumbo v1, "dataEnabled"

    #@18
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->onTrySetupData(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1b
    :cond_0
    :goto_0
    monitor-exit v2

    #@1c
    .line 2461
    return-void

    #@1d
    .line 2470
    :cond_1
    :try_start_1
    const-string/jumbo v1, "specificDisabled"

    #@20
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->onCleanUpAllConnections(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@23
    goto :goto_0

    #@24
    .line 2462
    .end local v0    # "prevEnabled":Z
    :catchall_0
    move-exception v1

    #@25
    monitor-exit v2

    #@26
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
    .line 896
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDataEnabledLock:Ljava/lang/Object;

    #@4
    monitor-enter v3

    #@5
    .line 897
    :try_start_0
    iget-boolean v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mUserDataEnabled:Z

    #@7
    if-eq v4, p1, :cond_1

    #@9
    .line 898
    iput-boolean p1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mUserDataEnabled:Z

    #@b
    .line 901
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
    .line 902
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mResolver:Landroid/content/ContentResolver;

    #@17
    const-string/jumbo v5, "mobile_data"

    #@1a
    if-eqz p1, :cond_2

    #@1c
    :goto_0
    invoke-static {v4, v5, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    #@1f
    .line 908
    :goto_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->getDataOnRoamingEnabled()Z

    #@22
    move-result v1

    #@23
    if-nez v1, :cond_0

    #@25
    .line 909
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    #@27
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    #@2a
    move-result-object v1

    #@2b
    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    #@2e
    move-result v1

    #@2f
    if-eqz v1, :cond_0

    #@31
    .line 910
    if-eqz p1, :cond_5

    #@33
    .line 911
    const-string/jumbo v1, "roamingOn"

    #@36
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->notifyOffApnsOfAvailability(Ljava/lang/String;)V

    #@39
    .line 917
    :cond_0
    :goto_2
    if-eqz p1, :cond_6

    #@3b
    .line 918
    const-string/jumbo v1, "dataEnabled"

    #@3e
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->onTrySetupData(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@41
    :cond_1
    :goto_3
    monitor-exit v3

    #@42
    .line 895
    return-void

    #@43
    :cond_2
    move v1, v2

    #@44
    .line 902
    goto :goto_0

    #@45
    .line 904
    :cond_3
    :try_start_1
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    #@47
    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getSubId()I

    #@4a
    move-result v0

    #@4b
    .line 905
    .local v0, "phoneSubId":I
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mResolver:Landroid/content/ContentResolver;

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
    .line 906
    if-eqz p1, :cond_4

    #@63
    .line 905
    :goto_4
    invoke-static {v4, v5, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@66
    goto :goto_1

    #@67
    .line 896
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
    .line 906
    goto :goto_4

    #@6c
    .line 913
    .end local v0    # "phoneSubId":I
    :cond_5
    :try_start_2
    const-string/jumbo v1, "dataDisabled"

    #@6f
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->notifyOffApnsOfAvailability(Ljava/lang/String;)V

    #@72
    goto :goto_2

    #@73
    .line 920
    :cond_6
    const-string/jumbo v1, "specificDisabled"

    #@76
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->onCleanUpAllConnections(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@79
    goto :goto_3
.end method

.method private onSimNotReady()V
    .locals 2

    #@0
    .prologue
    .line 2436
    const-string/jumbo v0, "onSimNotReady"

    #@3
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@6
    .line 2438
    const-string/jumbo v0, "simNotReady"

    #@9
    const/4 v1, 0x1

    #@a
    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->cleanUpAllConnections(ZLjava/lang/String;)Z

    #@d
    .line 2439
    const/4 v0, 0x0

    #@e
    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAllApnSettings:Ljava/util/ArrayList;

    #@10
    .line 2440
    const/4 v0, 0x0

    #@11
    iput-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAutoAttachOnCreationConfig:Z

    #@13
    .line 2435
    return-void
.end method

.method private onTrySetupData(Lcom/android/internal/telephony/dataconnection/ApnContext;)Z
    .locals 2
    .param p1, "apnContext"    # Lcom/android/internal/telephony/dataconnection/ApnContext;

    #@0
    .prologue
    .line 2651
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
    .line 2652
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
    .line 2645
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
    .line 2646
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->setupDataOnConnectableApns(Ljava/lang/String;)V

    #@1a
    .line 2647
    const/4 v0, 0x1

    #@1b
    return v0
.end method

.method private onUpdateIcc()V
    .locals 5

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 4074
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    #@3
    if-nez v2, :cond_0

    #@5
    .line 4075
    return-void

    #@6
    .line 4078
    :cond_0
    const/4 v2, 0x1

    #@7
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->getUiccRecords(I)Lcom/android/internal/telephony/uicc/IccRecords;

    #@a
    move-result-object v0

    #@b
    .line 4080
    .local v0, "newIccRecords":Lcom/android/internal/telephony/uicc/IccRecords;
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    #@d
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    #@10
    move-result-object v1

    #@11
    check-cast v1, Lcom/android/internal/telephony/uicc/IccRecords;

    #@13
    .line 4081
    .local v1, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eq v1, v0, :cond_2

    #@15
    .line 4082
    if-eqz v1, :cond_1

    #@17
    .line 4083
    const-string/jumbo v2, "Removing stale icc objects."

    #@1a
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@1d
    .line 4084
    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/uicc/IccRecords;->unregisterForRecordsLoaded(Landroid/os/Handler;)V

    #@20
    .line 4085
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    #@22
    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    #@25
    .line 4087
    :cond_1
    if-eqz v0, :cond_3

    #@27
    .line 4088
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    #@29
    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getSubId()I

    #@2c
    move-result v2

    #@2d
    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    #@30
    move-result v2

    #@31
    if-eqz v2, :cond_2

    #@33
    .line 4089
    const-string/jumbo v2, "New records found."

    #@36
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@39
    .line 4090
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    #@3b
    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    #@3e
    .line 4092
    const v2, 0x42002

    #@41
    .line 4091
    invoke-virtual {v0, p0, v2, v3}, Lcom/android/internal/telephony/uicc/IccRecords;->registerForRecordsLoaded(Landroid/os/Handler;ILjava/lang/Object;)V

    #@44
    .line 4093
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    #@47
    move-result-object v2

    #@48
    .line 4094
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    #@4a
    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getSubId()I

    #@4d
    move-result v3

    #@4e
    const/4 v4, 0x0

    #@4f
    .line 4093
    invoke-virtual {v2, v4, v3}, Lcom/android/internal/telephony/SubscriptionController;->setSimProvisioningStatus(II)I

    #@52
    .line 4073
    :cond_2
    :goto_0
    return-void

    #@53
    .line 4097
    :cond_3
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->onSimNotReady()V

    #@56
    goto :goto_0
.end method

.method private onVoiceCallEnded()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 3252
    const-string/jumbo v0, "onVoiceCallEnded"

    #@4
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@7
    .line 3253
    iput-boolean v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mInVoiceCall:Z

    #@9
    .line 3254
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->isConnected()Z

    #@c
    move-result v0

    #@d
    if-eqz v0, :cond_0

    #@f
    .line 3255
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
    .line 3256
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->startNetStatPoll()V

    #@1e
    .line 3257
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->startDataStallAlarm(Z)V

    #@21
    .line 3258
    const-string/jumbo v0, "2GVoiceCallEnded"

    #@24
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->notifyDataConnection(Ljava/lang/String;)V

    #@27
    .line 3265
    :cond_0
    :goto_0
    const-string/jumbo v0, "2GVoiceCallEnded"

    #@2a
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->setupDataOnConnectableApns(Ljava/lang/String;)V

    #@2d
    .line 3251
    return-void

    #@2e
    .line 3261
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->resetPollStats()V

    #@31
    goto :goto_0
.end method

.method private onVoiceCallStarted()V
    .locals 1

    #@0
    .prologue
    .line 3241
    const-string/jumbo v0, "onVoiceCallStarted"

    #@3
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@6
    .line 3242
    const/4 v0, 0x1

    #@7
    iput-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mInVoiceCall:Z

    #@9
    .line 3243
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
    .line 3240
    :cond_0
    :goto_0
    return-void

    #@1c
    .line 3244
    :cond_1
    const-string/jumbo v0, "onVoiceCallStarted stop polling"

    #@1f
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@22
    .line 3245
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->stopNetStatPoll()V

    #@25
    .line 3246
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->stopDataStallAlarm()V

    #@28
    .line 3247
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
    .line 1954
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
    .line 1955
    :cond_0
    const/4 v1, 0x1

    #@c
    new-array v0, v1, [Ljava/lang/String;

    #@e
    .line 1956
    .local v0, "result":[Ljava/lang/String;
    const-string/jumbo v1, "*"

    #@11
    const/4 v2, 0x0

    #@12
    aput-object v1, v0, v2

    #@14
    .line 1960
    :goto_0
    return-object v0

    #@15
    .line 1958
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
    .line 4637
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mResolver:Landroid/content/ContentResolver;

    #@2
    const-string/jumbo v1, "radio.data.stall.recovery.action"

    #@5
    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    #@8
    .line 4636
    return-void
.end method

.method private registerForAllEvents()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 797
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    #@3
    iget-object v0, v0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@5
    const v1, 0x42001

    #@8
    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    #@b
    .line 798
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    #@d
    iget-object v0, v0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@f
    .line 799
    const v1, 0x42006

    #@12
    .line 798
    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForOffOrNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    #@15
    .line 800
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    #@17
    iget-object v0, v0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@19
    .line 801
    const v1, 0x42004

    #@1c
    .line 800
    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForDataNetworkStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    #@1f
    .line 807
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    #@21
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    #@24
    move-result-object v0

    #@25
    .line 808
    const v1, 0x42008

    #@28
    .line 807
    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/CallTracker;->registerForVoiceCallEnded(Landroid/os/Handler;ILjava/lang/Object;)V

    #@2b
    .line 809
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    #@2d
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    #@30
    move-result-object v0

    #@31
    .line 810
    const v1, 0x42007

    #@34
    .line 809
    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/CallTracker;->registerForVoiceCallStarted(Landroid/os/Handler;ILjava/lang/Object;)V

    #@37
    .line 811
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->registerServiceStateTrackerEvents()V

    #@3a
    .line 796
    return-void
.end method

.method private registerSettingsObserver()V
    .locals 5

    #@0
    .prologue
    const v4, 0x4202b

    #@3
    .line 428
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mSettingsObserver:Lcom/android/internal/telephony/dataconnection/DcTracker$SettingsObserver;

    #@5
    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/DcTracker$SettingsObserver;->unobserve()V

    #@8
    .line 429
    const-string/jumbo v0, ""

    #@b
    .line 430
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
    .line 431
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
    .line 434
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mSettingsObserver:Lcom/android/internal/telephony/dataconnection/DcTracker$SettingsObserver;

    #@22
    .line 435
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
    .line 436
    const v3, 0x4200b

    #@3d
    .line 434
    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/dataconnection/DcTracker$SettingsObserver;->observe(Landroid/net/Uri;I)V

    #@40
    .line 437
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mSettingsObserver:Lcom/android/internal/telephony/dataconnection/DcTracker$SettingsObserver;

    #@42
    .line 438
    const-string/jumbo v2, "device_provisioned"

    #@45
    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    #@48
    move-result-object v2

    #@49
    .line 437
    invoke-virtual {v1, v2, v4}, Lcom/android/internal/telephony/dataconnection/DcTracker$SettingsObserver;->observe(Landroid/net/Uri;I)V

    #@4c
    .line 440
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mSettingsObserver:Lcom/android/internal/telephony/dataconnection/DcTracker$SettingsObserver;

    #@4e
    .line 441
    const-string/jumbo v2, "device_provisioning_mobile_data"

    #@51
    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    #@54
    move-result-object v2

    #@55
    .line 440
    invoke-virtual {v1, v2, v4}, Lcom/android/internal/telephony/dataconnection/DcTracker$SettingsObserver;->observe(Landroid/net/Uri;I)V

    #@58
    .line 427
    return-void
.end method

.method private resetPollStats()V
    .locals 2

    #@0
    .prologue
    const-wide/16 v0, -0x1

    #@2
    .line 4510
    iput-wide v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mTxPkts:J

    #@4
    .line 4511
    iput-wide v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mRxPkts:J

    #@6
    .line 4512
    const/16 v0, 0x3e8

    #@8
    iput v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mNetStatPollPeriod:I

    #@a
    .line 4509
    return-void
.end method

.method private restartDataStallAlarm()V
    .locals 2

    #@0
    .prologue
    .line 4818
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->isConnected()Z

    #@3
    move-result v1

    #@4
    if-nez v1, :cond_0

    #@6
    return-void

    #@7
    .line 4821
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->getRecoveryAction()I

    #@a
    move-result v0

    #@b
    .line 4823
    .local v0, "nextAction":I
    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DcTracker$RecoveryAction;->-wrap0(I)Z

    #@e
    move-result v1

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 4824
    const-string/jumbo v1, "restartDataStallAlarm: action is pending. not resetting the alarm."

    #@14
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@17
    .line 4825
    return-void

    #@18
    .line 4828
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->stopDataStallAlarm()V

    #@1b
    .line 4829
    const/4 v1, 0x0

    #@1c
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->startDataStallAlarm(Z)V

    #@1f
    .line 4817
    return-void
.end method

.method private restartRadio()V
    .locals 3

    #@0
    .prologue
    .line 2316
    const-string/jumbo v1, "restartRadio: ************TURN OFF RADIO**************"

    #@3
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@6
    .line 2317
    const-string/jumbo v1, "radioTurnedOff"

    #@9
    const/4 v2, 0x1

    #@a
    invoke-direct {p0, v2, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->cleanUpAllConnections(ZLjava/lang/String;)Z

    #@d
    .line 2318
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    #@f
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    #@12
    move-result-object v1

    #@13
    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/ServiceStateTracker;->powerOffRadioSafely(Lcom/android/internal/telephony/dataconnection/DcTracker;)V

    #@16
    .line 2327
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
    .line 2328
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
    .line 2315
    return-void
.end method

.method private retryAfterDisconnected(Lcom/android/internal/telephony/dataconnection/ApnContext;)Z
    .locals 3
    .param p1, "apnContext"    # Lcom/android/internal/telephony/dataconnection/ApnContext;

    #@0
    .prologue
    .line 2339
    const/4 v1, 0x1

    #@1
    .line 2340
    .local v1, "retry":Z
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getReason()Ljava/lang/String;

    #@4
    move-result-object v0

    #@5
    .line 2342
    .local v0, "reason":Ljava/lang/String;
    const-string/jumbo v2, "radioTurnedOff"

    #@8
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@b
    move-result v2

    #@c
    if-nez v2, :cond_0

    #@e
    .line 2343
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
    .line 2344
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->isHigherPriorityApnContextActive(Lcom/android/internal/telephony/dataconnection/ApnContext;)Z

    #@21
    move-result v2

    #@22
    .line 2342
    if-eqz v2, :cond_1

    #@24
    .line 2345
    :cond_0
    const/4 v1, 0x0

    #@25
    .line 2347
    :cond_1
    return v1
.end method

.method private setActivity(Lcom/android/internal/telephony/DctConstants$Activity;)V
    .locals 2
    .param p1, "activity"    # Lcom/android/internal/telephony/DctConstants$Activity;

    #@0
    .prologue
    .line 946
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
    .line 947
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mActivity:Lcom/android/internal/telephony/DctConstants$Activity;

    #@19
    .line 948
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    #@1b
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->notifyDataActivity()V

    #@1e
    .line 945
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
    .line 3312
    const-string/jumbo v7, "setDataProfilesAsNeeded"

    #@5
    invoke-direct {p0, v7}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@8
    .line 3313
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
    .line 3311
    :cond_0
    :goto_0
    return-void

    #@15
    .line 3314
    :cond_1
    new-instance v5, Ljava/util/ArrayList;

    #@17
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    #@1a
    .line 3315
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
    .line 3316
    .local v0, "apn":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    iget-boolean v7, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->modemCognitive:Z

    #@2e
    if-eqz v7, :cond_2

    #@30
    .line 3317
    new-instance v2, Lcom/android/internal/telephony/dataconnection/DataProfile;

    #@32
    .line 3318
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
    .line 3317
    invoke-direct {v2, v0, v7}, Lcom/android/internal/telephony/dataconnection/DataProfile;-><init>(Lcom/android/internal/telephony/dataconnection/ApnSetting;Z)V

    #@3f
    .line 3319
    .local v2, "dp":Lcom/android/internal/telephony/dataconnection/DataProfile;
    const/4 v6, 0x0

    #@40
    .line 3320
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
    .line 3321
    .local v3, "dpIn":Lcom/android/internal/telephony/dataconnection/DataProfile;
    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/dataconnection/DataProfile;->equals(Ljava/lang/Object;)Z

    #@53
    move-result v7

    #@54
    if-eqz v7, :cond_3

    #@56
    .line 3322
    const/4 v6, 0x1

    #@57
    .line 3326
    .end local v3    # "dpIn":Lcom/android/internal/telephony/dataconnection/DataProfile;
    :cond_4
    if-nez v6, :cond_2

    #@59
    .line 3327
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@5c
    goto :goto_1

    #@5d
    .line 3331
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
    .line 3332
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
    .line 2165
    const/4 v11, 0x0

    #@2
    .line 2166
    .local v11, "iaApnSetting":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    const/4 v9, 0x0

    #@3
    .line 2167
    .local v9, "defaultApnSetting":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    const/4 v10, 0x0

    #@4
    .line 2169
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
    .line 2171
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
    .line 2199
    .end local v9    # "defaultApnSetting":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    .end local v10    # "firstApnSetting":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    .end local v11    # "iaApnSetting":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    :cond_0
    :goto_0
    const/4 v12, 0x0

    #@2a
    .line 2200
    .local v12, "initialAttachApnSetting":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    if-eqz v11, :cond_5

    #@2c
    .line 2201
    const-string/jumbo v0, "setInitialAttachApn: using iaApnSetting"

    #@2f
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@32
    .line 2202
    move-object v12, v11

    #@33
    .line 2214
    .end local v12    # "initialAttachApnSetting":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    :cond_1
    :goto_1
    if-nez v12, :cond_8

    #@35
    .line 2215
    const-string/jumbo v0, "setInitialAttachApn: X There in no available apn"

    #@38
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@3b
    .line 2164
    :goto_2
    return-void

    #@3c
    .line 2172
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
    .line 2173
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
    .line 2176
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
    .line 2178
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
    .line 2179
    iget-boolean v0, v7, Lcom/android/internal/telephony/dataconnection/ApnSetting;->carrierEnabled:Z

    #@7b
    .line 2178
    if-eqz v0, :cond_4

    #@7d
    .line 2181
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
    .line 2182
    move-object v11, v7

    #@95
    .line 2183
    .local v11, "iaApnSetting":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    goto :goto_0

    #@96
    .line 2184
    .local v11, "iaApnSetting":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    :cond_4
    if-nez v9, :cond_3

    #@98
    .line 2185
    const-string/jumbo v0, "default"

    #@9b
    invoke-virtual {v7, v0}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->canHandleType(Ljava/lang/String;)Z

    #@9e
    move-result v0

    #@9f
    .line 2184
    if-eqz v0, :cond_3

    #@a1
    .line 2187
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
    .line 2188
    move-object v9, v7

    #@b9
    .local v9, "defaultApnSetting":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    goto :goto_3

    #@ba
    .line 2203
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
    .line 2204
    const-string/jumbo v0, "setInitialAttachApn: using mPreferredApn"

    #@c1
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@c4
    .line 2205
    iget-object v12, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPreferredApn:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    #@c6
    .local v12, "initialAttachApnSetting":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    goto/16 :goto_1

    #@c8
    .line 2206
    .local v12, "initialAttachApnSetting":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    :cond_6
    if-eqz v9, :cond_7

    #@ca
    .line 2207
    const-string/jumbo v0, "setInitialAttachApn: using defaultApnSetting"

    #@cd
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@d0
    .line 2208
    move-object v12, v9

    #@d1
    .local v12, "initialAttachApnSetting":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    goto/16 :goto_1

    #@d3
    .line 2209
    .local v12, "initialAttachApnSetting":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    :cond_7
    if-eqz v10, :cond_1

    #@d5
    .line 2210
    const-string/jumbo v0, "setInitialAttachApn: using firstApnSetting"

    #@d8
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@db
    .line 2211
    move-object v12, v10

    #@dc
    .local v12, "initialAttachApnSetting":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    goto/16 :goto_1

    #@de
    .line 2217
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
    .line 2219
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    #@f7
    iget-object v0, v0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@f9
    iget-object v1, v12, Lcom/android/internal/telephony/dataconnection/ApnSetting;->apn:Ljava/lang/String;

    #@fb
    .line 2220
    iget-object v2, v12, Lcom/android/internal/telephony/dataconnection/ApnSetting;->protocol:Ljava/lang/String;

    #@fd
    iget v3, v12, Lcom/android/internal/telephony/dataconnection/ApnSetting;->authType:I

    #@ff
    .line 2221
    iget-object v4, v12, Lcom/android/internal/telephony/dataconnection/ApnSetting;->user:Ljava/lang/String;

    #@101
    iget-object v5, v12, Lcom/android/internal/telephony/dataconnection/ApnSetting;->password:Ljava/lang/String;

    #@103
    .line 2219
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
    .line 3631
    iget-boolean v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mCanSetPreferApn:Z

    #@3
    if-nez v4, :cond_0

    #@5
    .line 3632
    const-string/jumbo v4, "setPreferredApn: X !canSEtPreferApn"

    #@8
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@b
    .line 3633
    return-void

    #@c
    .line 3636
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
    .line 3637
    .local v1, "subId":Ljava/lang/String;
    sget-object v4, Lcom/android/internal/telephony/dataconnection/DcTracker;->PREFERAPN_NO_UPDATE_URI_USING_SUBID:Landroid/net/Uri;

    #@19
    invoke-static {v4, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    #@1c
    move-result-object v2

    #@1d
    .line 3638
    .local v2, "uri":Landroid/net/Uri;
    const-string/jumbo v4, "setPreferredApn: delete"

    #@20
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@23
    .line 3639
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
    .line 3640
    .local v0, "resolver":Landroid/content/ContentResolver;
    invoke-virtual {v0, v2, v6, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    #@30
    .line 3642
    if-ltz p1, :cond_1

    #@32
    .line 3643
    const-string/jumbo v4, "setPreferredApn: insert"

    #@35
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@38
    .line 3644
    new-instance v3, Landroid/content/ContentValues;

    #@3a
    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    #@3d
    .line 3645
    .local v3, "values":Landroid/content/ContentValues;
    const-string/jumbo v4, "apn_id"

    #@40
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@43
    move-result-object v5

    #@44
    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    #@47
    .line 3646
    invoke-virtual {v0, v2, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    #@4a
    .line 3630
    .end local v3    # "values":Landroid/content/ContentValues;
    :cond_1
    return-void
.end method

.method private setRadio(Z)V
    .locals 3
    .param p1, "on"    # Z

    #@0
    .prologue
    .line 1026
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
    .line 1028
    .local v1, "phone":Lcom/android/internal/telephony/ITelephony;
    :try_start_0
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->setRadio(Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@e
    .line 1025
    :goto_0
    return-void

    #@f
    .line 1029
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
    .line 2077
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
    .line 2078
    const-string/jumbo v1, "setupData"

    #@1c
    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->requestLog(Ljava/lang/String;)V

    #@1f
    .line 2080
    const/4 v0, 0x0

    #@20
    .line 2082
    .local v0, "dcac":Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getNextApnSetting()Lcom/android/internal/telephony/dataconnection/ApnSetting;

    #@23
    move-result-object v6

    #@24
    .line 2084
    .local v6, "apnSetting":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    if-nez v6, :cond_0

    #@26
    .line 2085
    const-string/jumbo v1, "setupData: return for no apn found!"

    #@29
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@2c
    .line 2086
    return v8

    #@2d
    .line 2089
    :cond_0
    iget v2, v6, Lcom/android/internal/telephony/dataconnection/ApnSetting;->profileId:I

    #@2f
    .line 2090
    .local v2, "profileId":I
    if-nez v2, :cond_1

    #@31
    .line 2091
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    #@34
    move-result-object v1

    #@35
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->getApnProfileID(Ljava/lang/String;)I

    #@38
    move-result v2

    #@39
    .line 2098
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    #@3c
    move-result-object v1

    #@3d
    const-string/jumbo v3, "dun"

    #@40
    if-ne v1, v3, :cond_2

    #@42
    .line 2099
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->teardownForDun()Z

    #@45
    move-result v1

    #@46
    if-nez v1, :cond_3

    #@48
    .line 2100
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->checkForCompatibleConnectedApnContext(Lcom/android/internal/telephony/dataconnection/ApnContext;)Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;

    #@4b
    move-result-object v0

    #@4c
    .line 2101
    .local v0, "dcac":Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;
    if-eqz v0, :cond_3

    #@4e
    .line 2103
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->getApnSettingSync()Lcom/android/internal/telephony/dataconnection/ApnSetting;

    #@51
    move-result-object v7

    #@52
    .line 2104
    .local v7, "dcacApnSetting":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    if-eqz v7, :cond_3

    #@54
    .line 2106
    move-object v6, v7

    #@55
    .line 2110
    .end local v0    # "dcac":Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;
    .end local v7    # "dcacApnSetting":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    :cond_3
    if-nez v0, :cond_8

    #@57
    .line 2111
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->isOnlySingleDcAllowed(I)Z

    #@5a
    move-result v1

    #@5b
    if-eqz v1, :cond_6

    #@5d
    .line 2112
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->isHigherPriorityApnContextActive(Lcom/android/internal/telephony/dataconnection/ApnContext;)Z

    #@60
    move-result v1

    #@61
    if-eqz v1, :cond_4

    #@63
    .line 2114
    const-string/jumbo v1, "setupData: Higher priority ApnContext active.  Ignoring call"

    #@66
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@69
    .line 2116
    return v8

    #@6a
    .line 2122
    :cond_4
    const-string/jumbo v1, "SinglePdnArbitration"

    #@6d
    invoke-direct {p0, v9, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->cleanUpAllConnections(ZLjava/lang/String;)Z

    #@70
    move-result v1

    #@71
    if-eqz v1, :cond_5

    #@73
    .line 2126
    const-string/jumbo v1, "setupData: Some calls are disconnecting first.  Wait and retry"

    #@76
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@79
    .line 2127
    return v8

    #@7a
    .line 2131
    :cond_5
    const-string/jumbo v1, "setupData: Single pdp. Continue setting up data call."

    #@7d
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@80
    .line 2134
    :cond_6
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->findFreeDataConnection()Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;

    #@83
    move-result-object v0

    #@84
    .line 2136
    .restart local v0    # "dcac":Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;
    if-nez v0, :cond_7

    #@86
    .line 2137
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->createDataConnection()Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;

    #@89
    move-result-object v0

    #@8a
    .line 2140
    :cond_7
    if-nez v0, :cond_8

    #@8c
    .line 2141
    const-string/jumbo v1, "setupData: No free DataConnection and couldn\'t create one, WEIRD"

    #@8f
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@92
    .line 2142
    return v8

    #@93
    .line 2145
    .end local v0    # "dcac":Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;
    :cond_8
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->incAndGetConnectionGeneration()I

    #@96
    move-result v5

    #@97
    .line 2147
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
    .line 2150
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setDataConnectionAc(Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;)V

    #@c7
    .line 2151
    invoke-virtual {p1, v6}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setApnSetting(Lcom/android/internal/telephony/dataconnection/ApnSetting;)V

    #@ca
    .line 2152
    sget-object v1, Lcom/android/internal/telephony/DctConstants$State;->CONNECTING:Lcom/android/internal/telephony/DctConstants$State;

    #@cc
    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setState(Lcom/android/internal/telephony/DctConstants$State;)V

    #@cf
    .line 2153
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
    .line 2155
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->obtainMessage()Landroid/os/Message;

    #@df
    move-result-object v4

    #@e0
    .line 2156
    .local v4, "msg":Landroid/os/Message;
    const v1, 0x42000

    #@e3
    iput v1, v4, Landroid/os/Message;->what:I

    #@e5
    .line 2157
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
    .line 2158
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->bringUp(Lcom/android/internal/telephony/dataconnection/ApnContext;IILandroid/os/Message;I)V

    #@f5
    .line 2160
    const-string/jumbo v1, "setupData: initing!"

    #@f8
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@fb
    .line 2161
    return v9
.end method

.method private setupDataOnConnectableApns(Ljava/lang/String;)V
    .locals 1
    .param p1, "reason"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1485
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcTracker$RetryFailures;->ALWAYS:Lcom/android/internal/telephony/dataconnection/DcTracker$RetryFailures;

    #@2
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->setupDataOnConnectableApns(Ljava/lang/String;Lcom/android/internal/telephony/dataconnection/DcTracker$RetryFailures;)V

    #@5
    .line 1484
    return-void
.end method

.method private setupDataOnConnectableApns(Ljava/lang/String;Lcom/android/internal/telephony/dataconnection/DcTracker$RetryFailures;)V
    .locals 8
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "retryFailures"    # Lcom/android/internal/telephony/dataconnection/DcTracker$RetryFailures;

    #@0
    .prologue
    .line 1492
    new-instance v4, Ljava/lang/StringBuilder;

    #@2
    const/16 v6, 0x78

    #@4
    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    #@7
    .line 1493
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
    .line 1494
    .local v0, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    #@1c
    move-result-object v6

    #@1d
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    .line 1495
    const-string/jumbo v6, ":[state="

    #@23
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    .line 1496
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getState()Lcom/android/internal/telephony/DctConstants$State;

    #@29
    move-result-object v6

    #@2a
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2d
    .line 1497
    const-string/jumbo v6, ",enabled="

    #@30
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    .line 1498
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->isEnabled()Z

    #@36
    move-result v6

    #@37
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@3a
    .line 1499
    const-string/jumbo v6, "] "

    #@3d
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    goto :goto_0

    #@41
    .line 1501
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
    .line 1504
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
    .line 1505
    .restart local v0    # "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    const/4 v5, 0x0

    #@76
    .line 1509
    .local v5, "waitingApns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/dataconnection/ApnSetting;>;"
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getState()Lcom/android/internal/telephony/DctConstants$State;

    #@79
    move-result-object v6

    #@7a
    sget-object v7, Lcom/android/internal/telephony/DctConstants$State;->FAILED:Lcom/android/internal/telephony/DctConstants$State;

    #@7c
    if-eq v6, v7, :cond_2

    #@7e
    .line 1510
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getState()Lcom/android/internal/telephony/DctConstants$State;

    #@81
    move-result-object v6

    #@82
    sget-object v7, Lcom/android/internal/telephony/DctConstants$State;->SCANNING:Lcom/android/internal/telephony/DctConstants$State;

    #@84
    if-ne v6, v7, :cond_3

    #@86
    .line 1511
    :cond_2
    sget-object v6, Lcom/android/internal/telephony/dataconnection/DcTracker$RetryFailures;->ALWAYS:Lcom/android/internal/telephony/dataconnection/DcTracker$RetryFailures;

    #@88
    if-ne p2, v6, :cond_4

    #@8a
    .line 1512
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->releaseDataConnection(Ljava/lang/String;)V

    #@8d
    .line 1534
    .end local v5    # "waitingApns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/dataconnection/ApnSetting;>;"
    :cond_3
    :goto_2
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->isConnectable()Z

    #@90
    move-result v6

    #@91
    if-eqz v6, :cond_1

    #@93
    .line 1535
    const-string/jumbo v6, "isConnectable() call trySetupData"

    #@96
    invoke-direct {p0, v6}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@99
    .line 1536
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setReason(Ljava/lang/String;)V

    #@9c
    .line 1537
    invoke-direct {p0, v0, v5}, Lcom/android/internal/telephony/dataconnection/DcTracker;->trySetupData(Lcom/android/internal/telephony/dataconnection/ApnContext;Ljava/util/ArrayList;)Z

    #@9f
    goto :goto_1

    #@a0
    .line 1513
    .restart local v5    # "waitingApns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/dataconnection/ApnSetting;>;"
    :cond_4
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->isConcurrentVoiceAndDataAllowed()Z

    #@a3
    move-result v6

    #@a4
    if-nez v6, :cond_5

    #@a6
    .line 1514
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
    .line 1513
    if-eqz v6, :cond_5

    #@b2
    .line 1516
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->releaseDataConnection(Ljava/lang/String;)V

    #@b5
    goto :goto_2

    #@b6
    .line 1519
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
    .line 1520
    .local v3, "radioTech":I
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getWaitingApns()Ljava/util/ArrayList;

    #@c3
    move-result-object v2

    #@c4
    .line 1521
    .local v2, "originalApns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/dataconnection/ApnSetting;>;"
    if-eqz v2, :cond_1

    #@c6
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    #@c9
    move-result v6

    #@ca
    if-nez v6, :cond_1

    #@cc
    .line 1522
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    #@cf
    move-result-object v6

    #@d0
    invoke-direct {p0, v6, v3}, Lcom/android/internal/telephony/dataconnection/DcTracker;->buildWaitingApns(Ljava/lang/String;I)Ljava/util/ArrayList;

    #@d3
    move-result-object v5

    #@d4
    .line 1523
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
    .line 1524
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->containsAll(Ljava/util/Collection;)Z

    #@e1
    move-result v6

    #@e2
    if-nez v6, :cond_1

    #@e4
    .line 1525
    :cond_6
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->releaseDataConnection(Ljava/lang/String;)V

    #@e7
    goto :goto_2

    #@e8
    .line 1488
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
    .line 2351
    invoke-virtual {p3}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    #@3
    move-result-object v1

    #@4
    .line 2353
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
    .line 2354
    .local v2, "intent":Landroid/content/Intent;
    const-string/jumbo v4, "reconnect_alarm_extra_reason"

    #@20
    invoke-virtual {p3}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getReason()Ljava/lang/String;

    #@23
    move-result-object v5

    #@24
    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@27
    .line 2355
    const-string/jumbo v4, "reconnect_alarm_extra_type"

    #@2a
    invoke-virtual {v2, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@2d
    .line 2356
    const/high16 v4, 0x10000000

    #@2f
    invoke-virtual {v2, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@32
    .line 2359
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    #@35
    move-result v3

    #@36
    .line 2360
    .local v3, "subId":I
    const-string/jumbo v4, "subscription"

    #@39
    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@3c
    .line 2363
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
    .line 2364
    const-string/jumbo v5, " apn="

    #@5e
    .line 2363
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
    .line 2367
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    #@6f
    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    #@72
    move-result-object v4

    #@73
    const/4 v5, 0x0

    #@74
    .line 2368
    const/high16 v6, 0x8000000

    #@76
    .line 2367
    invoke-static {v4, v5, v2, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    #@79
    move-result-object v0

    #@7a
    .line 2369
    .local v0, "alarmIntent":Landroid/app/PendingIntent;
    invoke-virtual {p3, v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setReconnectIntent(Landroid/app/PendingIntent;)V

    #@7d
    .line 2375
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAlarmManager:Landroid/app/AlarmManager;

    #@7f
    .line 2376
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@82
    move-result-wide v6

    #@83
    add-long/2addr v6, p1

    #@84
    .line 2375
    const/4 v5, 0x2

    #@85
    invoke-virtual {v4, v5, v6, v7, v0}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    #@88
    .line 2350
    return-void
.end method

.method private startDataStallAlarm(Z)V
    .locals 8
    .param p1, "suspectedStall"    # Z

    #@0
    .prologue
    .line 4771
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->getRecoveryAction()I

    #@3
    move-result v2

    #@4
    .line 4774
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
    .line 4777
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
    .line 4778
    :cond_0
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mResolver:Landroid/content/ContentResolver;

    #@1e
    .line 4779
    const-string/jumbo v4, "data_stall_alarm_aggressive_delay_in_ms"

    #@21
    .line 4780
    const v5, 0xea60

    #@24
    .line 4778
    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    #@27
    move-result v0

    #@28
    .line 4787
    .local v0, "delayInMs":I
    :goto_0
    iget v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDataStallAlarmTag:I

    #@2a
    add-int/lit8 v3, v3, 0x1

    #@2c
    iput v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDataStallAlarmTag:I

    #@2e
    .line 4792
    new-instance v1, Landroid/content/Intent;

    #@30
    const-string/jumbo v3, "com.android.internal.telephony.data-stall"

    #@33
    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@36
    .line 4793
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v3, "data.stall.alram.tag"

    #@39
    iget v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDataStallAlarmTag:I

    #@3b
    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@3e
    .line 4794
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    #@40
    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    #@43
    move-result-object v3

    #@44
    const/4 v4, 0x0

    #@45
    .line 4795
    const/high16 v5, 0x8000000

    #@47
    .line 4794
    invoke-static {v3, v4, v1, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    #@4a
    move-result-object v3

    #@4b
    iput-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDataStallAlarmIntent:Landroid/app/PendingIntent;

    #@4d
    .line 4796
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAlarmManager:Landroid/app/AlarmManager;

    #@4f
    .line 4797
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
    .line 4796
    const/4 v7, 0x2

    #@58
    invoke-virtual {v3, v7, v4, v5, v6}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    #@5b
    .line 4770
    .end local v0    # "delayInMs":I
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_1
    return-void

    #@5c
    .line 4782
    :cond_2
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mResolver:Landroid/content/ContentResolver;

    #@5e
    .line 4783
    const-string/jumbo v4, "data_stall_alarm_non_aggressive_delay_in_ms"

    #@61
    .line 4784
    const v5, 0x57e40

    #@64
    .line 4782
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
    .line 4516
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->getOverallState()Lcom/android/internal/telephony/DctConstants$State;

    #@3
    move-result-object v0

    #@4
    sget-object v1, Lcom/android/internal/telephony/DctConstants$State;->CONNECTED:Lcom/android/internal/telephony/DctConstants$State;

    #@6
    if-ne v0, v1, :cond_0

    #@8
    .line 4517
    iget-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mNetStatPollEnabled:Z

    #@a
    if-nez v0, :cond_0

    #@c
    .line 4519
    const-string/jumbo v0, "startNetStatPoll"

    #@f
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@12
    .line 4521
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->resetPollStats()V

    #@15
    .line 4522
    const/4 v0, 0x1

    #@16
    iput-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mNetStatPollEnabled:Z

    #@18
    .line 4523
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPollNetStat:Ljava/lang/Runnable;

    #@1a
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    #@1d
    .line 4525
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    #@1f
    if-eqz v0, :cond_1

    #@21
    .line 4526
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    #@23
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->notifyDataActivity()V

    #@26
    .line 4515
    :cond_1
    return-void
.end method

.method private startProvisioningApnAlarm()V
    .locals 10

    #@0
    .prologue
    .line 4844
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mResolver:Landroid/content/ContentResolver;

    #@2
    .line 4845
    const-string/jumbo v5, "provisioning_apn_alarm_delay_in_ms"

    #@5
    .line 4846
    const v6, 0xdbba0

    #@8
    .line 4844
    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    #@b
    move-result v0

    #@c
    .line 4847
    .local v0, "delayInMs":I
    sget-boolean v4, Landroid/os/Build;->IS_DEBUGGABLE:Z

    #@e
    if-eqz v4, :cond_0

    #@10
    .line 4849
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@13
    move-result-object v1

    #@14
    .line 4850
    .local v1, "delayInMsStrg":Ljava/lang/String;
    const-string/jumbo v4, "persist.debug.prov_apn_alarm"

    #@17
    invoke-static {v4, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@1a
    move-result-object v1

    #@1b
    .line 4852
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@1e
    move-result v0

    #@1f
    .line 4857
    .end local v1    # "delayInMsStrg":Ljava/lang/String;
    :cond_0
    :goto_0
    iget v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mProvisioningApnAlarmTag:I

    #@21
    add-int/lit8 v4, v4, 0x1

    #@23
    iput v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mProvisioningApnAlarmTag:I

    #@25
    .line 4859
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
    .line 4860
    const-string/jumbo v5, " delay="

    #@3a
    .line 4859
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v4

    #@3e
    .line 4860
    div-int/lit16 v5, v0, 0x3e8

    #@40
    .line 4859
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@43
    move-result-object v4

    #@44
    .line 4860
    const-string/jumbo v5, "s"

    #@47
    .line 4859
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
    .line 4862
    new-instance v3, Landroid/content/Intent;

    #@54
    const-string/jumbo v4, "com.android.internal.telephony.provisioning_apn_alarm"

    #@57
    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@5a
    .line 4863
    .local v3, "intent":Landroid/content/Intent;
    const-string/jumbo v4, "provisioning.apn.alarm.tag"

    #@5d
    iget v5, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mProvisioningApnAlarmTag:I

    #@5f
    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@62
    .line 4864
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    #@64
    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    #@67
    move-result-object v4

    #@68
    const/4 v5, 0x0

    #@69
    .line 4865
    const/high16 v6, 0x8000000

    #@6b
    .line 4864
    invoke-static {v4, v5, v3, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    #@6e
    move-result-object v4

    #@6f
    iput-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mProvisioningApnAlarmIntent:Landroid/app/PendingIntent;

    #@71
    .line 4866
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAlarmManager:Landroid/app/AlarmManager;

    #@73
    .line 4867
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
    .line 4866
    const/4 v8, 0x2

    #@7c
    invoke-virtual {v4, v8, v6, v7, v5}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    #@7f
    .line 4843
    return-void

    #@80
    .line 4853
    .end local v3    # "intent":Landroid/content/Intent;
    .restart local v1    # "delayInMsStrg":Ljava/lang/String;
    :catch_0
    move-exception v2

    #@81
    .line 4854
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
    .line 4810
    iget v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDataStallAlarmTag:I

    #@3
    add-int/lit8 v0, v0, 0x1

    #@5
    iput v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDataStallAlarmTag:I

    #@7
    .line 4811
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDataStallAlarmIntent:Landroid/app/PendingIntent;

    #@9
    if-eqz v0, :cond_0

    #@b
    .line 4812
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAlarmManager:Landroid/app/AlarmManager;

    #@d
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDataStallAlarmIntent:Landroid/app/PendingIntent;

    #@f
    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    #@12
    .line 4813
    iput-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDataStallAlarmIntent:Landroid/app/PendingIntent;

    #@14
    .line 4805
    :cond_0
    return-void
.end method

.method private stopNetStatPoll()V
    .locals 1

    #@0
    .prologue
    .line 4531
    const/4 v0, 0x0

    #@1
    iput-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mNetStatPollEnabled:Z

    #@3
    .line 4532
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPollNetStat:Ljava/lang/Runnable;

    #@5
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->removeCallbacks(Ljava/lang/Runnable;)V

    #@8
    .line 4534
    const-string/jumbo v0, "stopNetStatPoll"

    #@b
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@e
    .line 4538
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    #@10
    if-eqz v0, :cond_0

    #@12
    .line 4539
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    #@14
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->notifyDataActivity()V

    #@17
    .line 4530
    :cond_0
    return-void
.end method

.method private stopProvisioningApnAlarm()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 4872
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
    .line 4873
    const-string/jumbo v1, " mProvsioningApnAlarmIntent="

    #@16
    .line 4872
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v0

    #@1a
    .line 4873
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mProvisioningApnAlarmIntent:Landroid/app/PendingIntent;

    #@1c
    .line 4872
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
    .line 4875
    iget v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mProvisioningApnAlarmTag:I

    #@29
    add-int/lit8 v0, v0, 0x1

    #@2b
    iput v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mProvisioningApnAlarmTag:I

    #@2d
    .line 4876
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mProvisioningApnAlarmIntent:Landroid/app/PendingIntent;

    #@2f
    if-eqz v0, :cond_0

    #@31
    .line 4877
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAlarmManager:Landroid/app/AlarmManager;

    #@33
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mProvisioningApnAlarmIntent:Landroid/app/PendingIntent;

    #@35
    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    #@38
    .line 4878
    iput-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mProvisioningApnAlarmIntent:Landroid/app/PendingIntent;

    #@3a
    .line 4870
    :cond_0
    return-void
.end method

.method private teardownForDun()Z
    .locals 3

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 1923
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
    .line 1924
    .local v0, "rilRat":I
    invoke-static {v0}, Landroid/telephony/ServiceState;->isCdma(I)Z

    #@e
    move-result v2

    #@f
    if-eqz v2, :cond_0

    #@11
    return v1

    #@12
    .line 1926
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

.method private trySetupData(Lcom/android/internal/telephony/dataconnection/ApnContext;)Z
    .locals 1
    .param p1, "apnContext"    # Lcom/android/internal/telephony/dataconnection/ApnContext;

    #@0
    .prologue
    .line 1552
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
    .line 1557
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
    .line 1558
    const-string/jumbo v10, " due to "

    #@17
    .line 1557
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v9

    #@1b
    .line 1558
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getReason()Ljava/lang/String;

    #@1e
    move-result-object v10

    #@1f
    .line 1557
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v9

    #@23
    .line 1558
    const-string/jumbo v10, ", mIsPsRestricted="

    #@26
    .line 1557
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v9

    #@2a
    .line 1558
    iget-boolean v10, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mIsPsRestricted:Z

    #@2c
    .line 1557
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
    .line 1560
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
    .line 1562
    iget-object v9, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    #@54
    invoke-virtual {v9}, Lcom/android/internal/telephony/Phone;->getSimulatedRadioControl()Lcom/android/internal/telephony/test/SimulatedRadioControl;

    #@57
    move-result-object v9

    #@58
    if-eqz v9, :cond_0

    #@5a
    .line 1565
    sget-object v9, Lcom/android/internal/telephony/DctConstants$State;->CONNECTED:Lcom/android/internal/telephony/DctConstants$State;

    #@5c
    invoke-virtual {p1, v9}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setState(Lcom/android/internal/telephony/DctConstants$State;)V

    #@5f
    .line 1566
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
    .line 1568
    const-string/jumbo v9, "trySetupData: X We\'re on the simulator; assuming connected retValue=true"

    #@6f
    invoke-direct {p0, v9}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@72
    .line 1569
    const/4 v9, 0x1

    #@73
    return v9

    #@74
    .line 1574
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
    .line 1575
    .local v3, "isEmergencyApn":Z
    iget-object v9, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    #@81
    invoke-virtual {v9}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    #@84
    move-result-object v6

    #@85
    .line 1579
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
    .line 1580
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
    .line 1579
    invoke-static {v9, v10, v11, v12}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->isMeteredApnType(Ljava/lang/String;Landroid/content/Context;IZ)Z

    #@a2
    move-result v0

    #@a3
    .line 1582
    .local v0, "checkUserDataEnabled":Z
    new-instance v1, Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReason;

    #@a5
    invoke-direct {v1}, Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReason;-><init>()V

    #@a8
    .line 1586
    .local v1, "failureReason":Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReason;
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->isDataAllowed(Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReason;)Z

    #@ab
    move-result v9

    #@ac
    if-nez v9, :cond_9

    #@ae
    .line 1587
    sget-object v9, Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReasonType;->ROAMING_DISABLED:Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReasonType;

    #@b0
    invoke-virtual {v1, v9}, Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReason;->isFailForSingleReason(Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReasonType;)Z

    #@b3
    move-result v9

    #@b4
    if-eqz v9, :cond_b

    #@b6
    .line 1588
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    #@b9
    move-result-object v9

    #@ba
    iget-object v10, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    #@bc
    invoke-virtual {v10}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    #@bf
    move-result-object v10

    #@c0
    .line 1589
    iget-object v11, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    #@c2
    invoke-virtual {v11}, Lcom/android/internal/telephony/Phone;->getSubId()I

    #@c5
    move-result v11

    #@c6
    iget-object v12, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    #@c8
    invoke-virtual {v12}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    #@cb
    move-result-object v12

    #@cc
    invoke-virtual {v12}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    #@cf
    move-result v12

    #@d0
    .line 1588
    invoke-static {v9, v10, v11, v12}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->isMeteredApnType(Ljava/lang/String;Landroid/content/Context;IZ)Z

    #@d3
    move-result v9

    #@d4
    if-eqz v9, :cond_a

    #@d6
    const/4 v2, 0x0

    #@d7
    .line 1591
    .local v2, "isDataAllowed":Z
    :goto_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->isConnectable()Z

    #@da
    move-result v9

    #@db
    if-eqz v9, :cond_1

    #@dd
    if-nez v3, :cond_c

    #@df
    .line 1592
    if-eqz v2, :cond_1

    #@e1
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->isDataAllowedForApn(Lcom/android/internal/telephony/dataconnection/ApnContext;)Z

    #@e4
    move-result v9

    #@e5
    if-eqz v9, :cond_1

    #@e7
    .line 1593
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->isDataEnabled(Z)Z

    #@ea
    move-result v9

    #@eb
    .line 1592
    if-eqz v9, :cond_1

    #@ed
    .line 1593
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->isEmergency()Z

    #@f0
    move-result v9

    #@f1
    if-eqz v9, :cond_c

    #@f3
    .line 1628
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    #@f6
    move-result-object v9

    #@f7
    const-string/jumbo v10, "default"

    #@fa
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@fd
    move-result v9

    #@fe
    if-nez v9, :cond_2

    #@100
    .line 1629
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->isConnectable()Z

    #@103
    move-result v9

    #@104
    .line 1628
    if-eqz v9, :cond_2

    #@106
    .line 1630
    iget-object v9, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    #@108
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getReason()Ljava/lang/String;

    #@10b
    move-result-object v10

    #@10c
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    #@10f
    move-result-object v11

    #@110
    invoke-virtual {v9, v10, v11}, Lcom/android/internal/telephony/Phone;->notifyDataConnectionFailed(Ljava/lang/String;Ljava/lang/String;)V

    #@113
    .line 1632
    :cond_2
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getReason()Ljava/lang/String;

    #@116
    move-result-object v9

    #@117
    invoke-direct {p0, v9}, Lcom/android/internal/telephony/dataconnection/DcTracker;->notifyOffApnsOfAvailability(Ljava/lang/String;)V

    #@11a
    .line 1634
    new-instance v8, Ljava/lang/StringBuilder;

    #@11c
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@11f
    .line 1636
    .local v8, "str":Ljava/lang/StringBuilder;
    const-string/jumbo v9, "trySetupData failed. apnContext = [type="

    #@122
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@125
    move-result-object v9

    #@126
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    #@129
    move-result-object v10

    #@12a
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12d
    move-result-object v9

    #@12e
    .line 1637
    const-string/jumbo v10, ", mState="

    #@131
    .line 1636
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@134
    move-result-object v9

    #@135
    .line 1637
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getState()Lcom/android/internal/telephony/DctConstants$State;

    #@138
    move-result-object v10

    #@139
    .line 1636
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@13c
    move-result-object v9

    #@13d
    .line 1637
    const-string/jumbo v10, ", mDataEnabled="

    #@140
    .line 1636
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@143
    move-result-object v9

    #@144
    .line 1638
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->isEnabled()Z

    #@147
    move-result v10

    #@148
    .line 1636
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@14b
    move-result-object v9

    #@14c
    .line 1638
    const-string/jumbo v10, ", mDependencyMet="

    #@14f
    .line 1636
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@152
    move-result-object v9

    #@153
    .line 1639
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getDependencyMet()Z

    #@156
    move-result v10

    #@157
    .line 1636
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@15a
    move-result-object v9

    #@15b
    .line 1639
    const-string/jumbo v10, "] "

    #@15e
    .line 1636
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@161
    .line 1641
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->isConnectable()Z

    #@164
    move-result v9

    #@165
    if-nez v9, :cond_3

    #@167
    .line 1642
    const-string/jumbo v9, "isConnectable = false. "

    #@16a
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16d
    .line 1644
    :cond_3
    if-nez v2, :cond_4

    #@16f
    .line 1645
    const-string/jumbo v9, "data not allowed: "

    #@172
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@175
    move-result-object v9

    #@176
    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReason;->getDataAllowFailReason()Ljava/lang/String;

    #@179
    move-result-object v10

    #@17a
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17d
    move-result-object v9

    #@17e
    const-string/jumbo v10, ". "

    #@181
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@184
    .line 1647
    :cond_4
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->isDataAllowedForApn(Lcom/android/internal/telephony/dataconnection/ApnContext;)Z

    #@187
    move-result v9

    #@188
    if-nez v9, :cond_5

    #@18a
    .line 1648
    const-string/jumbo v9, "isDataAllowedForApn = false. RAT = "

    #@18d
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@190
    move-result-object v9

    #@191
    .line 1649
    iget-object v10, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    #@193
    invoke-virtual {v10}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    #@196
    move-result-object v10

    #@197
    invoke-virtual {v10}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    #@19a
    move-result v10

    #@19b
    .line 1648
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@19e
    .line 1651
    :cond_5
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->isDataEnabled(Z)Z

    #@1a1
    move-result v9

    #@1a2
    if-nez v9, :cond_6

    #@1a4
    .line 1652
    const-string/jumbo v9, "isDataEnabled("

    #@1a7
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1aa
    move-result-object v9

    #@1ab
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@1ae
    move-result-object v9

    #@1af
    const-string/jumbo v10, ") = false. "

    #@1b2
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b5
    move-result-object v9

    #@1b6
    .line 1653
    const-string/jumbo v10, "mInternalDataEnabled = "

    #@1b9
    .line 1652
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1bc
    move-result-object v9

    #@1bd
    .line 1653
    iget-boolean v10, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mInternalDataEnabled:Z

    #@1bf
    .line 1652
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@1c2
    move-result-object v9

    #@1c3
    .line 1653
    const-string/jumbo v10, " , mUserDataEnabled = "

    #@1c6
    .line 1652
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c9
    move-result-object v9

    #@1ca
    .line 1654
    iget-boolean v10, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mUserDataEnabled:Z

    #@1cc
    .line 1652
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@1cf
    move-result-object v9

    #@1d0
    .line 1654
    const-string/jumbo v10, ", sPolicyDataEnabled = "

    #@1d3
    .line 1652
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d6
    move-result-object v9

    #@1d7
    .line 1654
    sget-boolean v10, Lcom/android/internal/telephony/dataconnection/DcTracker;->sPolicyDataEnabled:Z

    #@1d9
    .line 1652
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@1dc
    move-result-object v9

    #@1dd
    .line 1654
    const-string/jumbo v10, " "

    #@1e0
    .line 1652
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e3
    .line 1656
    :cond_6
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->isEmergency()Z

    #@1e6
    move-result v9

    #@1e7
    if-eqz v9, :cond_7

    #@1e9
    .line 1657
    const-string/jumbo v9, "emergency = true"

    #@1ec
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1ef
    .line 1659
    :cond_7
    iget-boolean v9, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mColdSimDetected:Z

    #@1f1
    if-eqz v9, :cond_8

    #@1f3
    .line 1660
    const-string/jumbo v9, "coldSimDetected = true"

    #@1f6
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f9
    .line 1663
    :cond_8
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1fc
    move-result-object v9

    #@1fd
    invoke-direct {p0, v9}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@200
    .line 1664
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@203
    move-result-object v9

    #@204
    invoke-virtual {p1, v9}, Lcom/android/internal/telephony/dataconnection/ApnContext;->requestLog(Ljava/lang/String;)V

    #@207
    .line 1666
    const/4 v9, 0x0

    #@208
    return v9

    #@209
    .line 1586
    .end local v2    # "isDataAllowed":Z
    .end local v8    # "str":Ljava/lang/StringBuilder;
    :cond_9
    const/4 v2, 0x1

    #@20a
    .restart local v2    # "isDataAllowed":Z
    goto/16 :goto_0

    #@20c
    .line 1588
    .end local v2    # "isDataAllowed":Z
    :cond_a
    const/4 v2, 0x1

    #@20d
    .restart local v2    # "isDataAllowed":Z
    goto/16 :goto_0

    #@20f
    .line 1587
    .end local v2    # "isDataAllowed":Z
    :cond_b
    const/4 v2, 0x0

    #@210
    .restart local v2    # "isDataAllowed":Z
    goto/16 :goto_0

    #@212
    .line 1593
    :cond_c
    iget-boolean v9, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mColdSimDetected:Z

    #@214
    if-nez v9, :cond_1

    #@216
    .line 1594
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getState()Lcom/android/internal/telephony/DctConstants$State;

    #@219
    move-result-object v9

    #@21a
    sget-object v10, Lcom/android/internal/telephony/DctConstants$State;->FAILED:Lcom/android/internal/telephony/DctConstants$State;

    #@21c
    if-ne v9, v10, :cond_d

    #@21e
    .line 1595
    const-string/jumbo v7, "trySetupData: make a FAILED ApnContext IDLE so its reusable"

    #@221
    .line 1596
    .local v7, "str":Ljava/lang/String;
    invoke-direct {p0, v7}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@224
    .line 1597
    invoke-virtual {p1, v7}, Lcom/android/internal/telephony/dataconnection/ApnContext;->requestLog(Ljava/lang/String;)V

    #@227
    .line 1598
    sget-object v9, Lcom/android/internal/telephony/DctConstants$State;->IDLE:Lcom/android/internal/telephony/DctConstants$State;

    #@229
    invoke-virtual {p1, v9}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setState(Lcom/android/internal/telephony/DctConstants$State;)V

    #@22c
    .line 1600
    .end local v7    # "str":Ljava/lang/String;
    :cond_d
    iget-object v9, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    #@22e
    invoke-virtual {v9}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    #@231
    move-result-object v9

    #@232
    invoke-virtual {v9}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    #@235
    move-result v4

    #@236
    .line 1601
    .local v4, "radioTech":I
    invoke-virtual {v6}, Lcom/android/internal/telephony/ServiceStateTracker;->isConcurrentVoiceAndDataAllowed()Z

    #@239
    move-result v9

    #@23a
    invoke-virtual {p1, v9}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setConcurrentVoiceAndDataAllowed(Z)V

    #@23d
    .line 1602
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getState()Lcom/android/internal/telephony/DctConstants$State;

    #@240
    move-result-object v9

    #@241
    sget-object v10, Lcom/android/internal/telephony/DctConstants$State;->IDLE:Lcom/android/internal/telephony/DctConstants$State;

    #@243
    if-ne v9, v10, :cond_10

    #@245
    .line 1603
    if-nez p2, :cond_e

    #@247
    .line 1604
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    #@24a
    move-result-object v9

    #@24b
    invoke-direct {p0, v9, v4}, Lcom/android/internal/telephony/dataconnection/DcTracker;->buildWaitingApns(Ljava/lang/String;I)Ljava/util/ArrayList;

    #@24e
    move-result-object p2

    #@24f
    .line 1606
    :cond_e
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    #@252
    move-result v9

    #@253
    if-eqz v9, :cond_f

    #@255
    .line 1607
    sget-object v9, Lcom/android/internal/telephony/dataconnection/DcFailCause;->MISSING_UNKNOWN_APN:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    #@257
    invoke-direct {p0, v9, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->notifyNoData(Lcom/android/internal/telephony/dataconnection/DcFailCause;Lcom/android/internal/telephony/dataconnection/ApnContext;)V

    #@25a
    .line 1608
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getReason()Ljava/lang/String;

    #@25d
    move-result-object v9

    #@25e
    invoke-direct {p0, v9}, Lcom/android/internal/telephony/dataconnection/DcTracker;->notifyOffApnsOfAvailability(Ljava/lang/String;)V

    #@261
    .line 1609
    const-string/jumbo v7, "trySetupData: X No APN found retValue=false"

    #@264
    .line 1610
    .restart local v7    # "str":Ljava/lang/String;
    invoke-direct {p0, v7}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@267
    .line 1611
    invoke-virtual {p1, v7}, Lcom/android/internal/telephony/dataconnection/ApnContext;->requestLog(Ljava/lang/String;)V

    #@26a
    .line 1612
    const/4 v9, 0x0

    #@26b
    return v9

    #@26c
    .line 1614
    .end local v7    # "str":Ljava/lang/String;
    :cond_f
    invoke-virtual {p1, p2}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setWaitingApns(Ljava/util/ArrayList;)V

    #@26f
    .line 1616
    new-instance v9, Ljava/lang/StringBuilder;

    #@271
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@274
    const-string/jumbo v10, "trySetupData: Create from mAllApnSettings : "

    #@277
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27a
    move-result-object v9

    #@27b
    .line 1617
    iget-object v10, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAllApnSettings:Ljava/util/ArrayList;

    #@27d
    invoke-direct {p0, v10}, Lcom/android/internal/telephony/dataconnection/DcTracker;->apnListToString(Ljava/util/ArrayList;)Ljava/lang/String;

    #@280
    move-result-object v10

    #@281
    .line 1616
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@284
    move-result-object v9

    #@285
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@288
    move-result-object v9

    #@289
    invoke-direct {p0, v9}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@28c
    .line 1622
    :cond_10
    invoke-direct {p0, p1, v4}, Lcom/android/internal/telephony/dataconnection/DcTracker;->setupData(Lcom/android/internal/telephony/dataconnection/ApnContext;I)Z

    #@28f
    move-result v5

    #@290
    .line 1623
    .local v5, "retValue":Z
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getReason()Ljava/lang/String;

    #@293
    move-result-object v9

    #@294
    invoke-direct {p0, v9}, Lcom/android/internal/telephony/dataconnection/DcTracker;->notifyOffApnsOfAvailability(Ljava/lang/String;)V

    #@297
    .line 1625
    new-instance v9, Ljava/lang/StringBuilder;

    #@299
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@29c
    const-string/jumbo v10, "trySetupData: X retValue="

    #@29f
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a2
    move-result-object v9

    #@2a3
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@2a6
    move-result-object v9

    #@2a7
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2aa
    move-result-object v9

    #@2ab
    invoke-direct {p0, v9}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@2ae
    .line 1626
    return v5
.end method

.method private unregisterForAllEvents()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 855
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    #@3
    iget-object v1, v1, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@5
    invoke-interface {v1, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForAvailable(Landroid/os/Handler;)V

    #@8
    .line 856
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    #@a
    iget-object v1, v1, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@c
    invoke-interface {v1, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOffOrNotAvailable(Landroid/os/Handler;)V

    #@f
    .line 857
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    #@11
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    #@14
    move-result-object v0

    #@15
    check-cast v0, Lcom/android/internal/telephony/uicc/IccRecords;

    #@17
    .line 858
    .local v0, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v0, :cond_0

    #@19
    .line 859
    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/uicc/IccRecords;->unregisterForRecordsLoaded(Landroid/os/Handler;)V

    #@1c
    .line 860
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    #@1e
    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    #@21
    .line 862
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    #@23
    iget-object v1, v1, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@25
    invoke-interface {v1, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForDataNetworkStateChanged(Landroid/os/Handler;)V

    #@28
    .line 863
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    #@2a
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    #@2d
    move-result-object v1

    #@2e
    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/CallTracker;->unregisterForVoiceCallEnded(Landroid/os/Handler;)V

    #@31
    .line 864
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    #@33
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    #@36
    move-result-object v1

    #@37
    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/CallTracker;->unregisterForVoiceCallStarted(Landroid/os/Handler;)V

    #@3a
    .line 865
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->unregisterServiceStateTrackerEvents()V

    #@3d
    .line 853
    return-void
.end method

.method private updateDataActivity()V
    .locals 14

    #@0
    .prologue
    const-wide/16 v12, 0x0

    #@2
    .line 4574
    new-instance v2, Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxSum;

    #@4
    iget-wide v8, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mTxPkts:J

    #@6
    iget-wide v10, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mRxPkts:J

    #@8
    invoke-direct {v2, v8, v9, v10, v11}, Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxSum;-><init>(JJ)V

    #@b
    .line 4575
    .local v2, "preTxRxSum":Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxSum;
    new-instance v0, Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxSum;

    #@d
    invoke-direct {v0}, Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxSum;-><init>()V

    #@10
    .line 4576
    .local v0, "curTxRxSum":Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxSum;
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxSum;->updateTxRxSum()V

    #@13
    .line 4577
    iget-wide v8, v0, Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxSum;->txPkts:J

    #@15
    iput-wide v8, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mTxPkts:J

    #@17
    .line 4578
    iget-wide v8, v0, Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxSum;->rxPkts:J

    #@19
    iput-wide v8, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mRxPkts:J

    #@1b
    .line 4584
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
    .line 4585
    :cond_0
    iget-wide v8, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mTxPkts:J

    #@2d
    iget-wide v10, v2, Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxSum;->txPkts:J

    #@2f
    sub-long v6, v8, v10

    #@31
    .line 4586
    .local v6, "sent":J
    iget-wide v8, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mRxPkts:J

    #@33
    iget-wide v10, v2, Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxSum;->rxPkts:J

    #@35
    sub-long v4, v8, v10

    #@37
    .line 4590
    .local v4, "received":J
    cmp-long v3, v6, v12

    #@39
    if-lez v3, :cond_2

    #@3b
    cmp-long v3, v4, v12

    #@3d
    if-lez v3, :cond_2

    #@3f
    .line 4591
    sget-object v1, Lcom/android/internal/telephony/DctConstants$Activity;->DATAINANDOUT:Lcom/android/internal/telephony/DctConstants$Activity;

    #@41
    .line 4601
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
    .line 4604
    iput-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mActivity:Lcom/android/internal/telephony/DctConstants$Activity;

    #@4b
    .line 4605
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    #@4d
    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->notifyDataActivity()V

    #@50
    .line 4569
    .end local v1    # "newActivity":Lcom/android/internal/telephony/DctConstants$Activity;
    .end local v4    # "received":J
    .end local v6    # "sent":J
    :cond_1
    return-void

    #@51
    .line 4592
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
    .line 4593
    sget-object v1, Lcom/android/internal/telephony/DctConstants$Activity;->DATAOUT:Lcom/android/internal/telephony/DctConstants$Activity;

    #@5b
    .restart local v1    # "newActivity":Lcom/android/internal/telephony/DctConstants$Activity;
    goto :goto_0

    #@5c
    .line 4594
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
    .line 4595
    sget-object v1, Lcom/android/internal/telephony/DctConstants$Activity;->DATAIN:Lcom/android/internal/telephony/DctConstants$Activity;

    #@66
    .restart local v1    # "newActivity":Lcom/android/internal/telephony/DctConstants$Activity;
    goto :goto_0

    #@67
    .line 4597
    .end local v1    # "newActivity":Lcom/android/internal/telephony/DctConstants$Activity;
    :cond_4
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mActivity:Lcom/android/internal/telephony/DctConstants$Activity;

    #@69
    sget-object v8, Lcom/android/internal/telephony/DctConstants$Activity;->DORMANT:Lcom/android/internal/telephony/DctConstants$Activity;

    #@6b
    if-ne v3, v8, :cond_5

    #@6d
    .line 4598
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
    .line 4701
    new-instance v0, Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxSum;

    #@5
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDataStallTxRxSum:Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxSum;

    #@7
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxSum;-><init>(Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxSum;)V

    #@a
    .line 4702
    .local v0, "preTxRxSum":Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxSum;
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDataStallTxRxSum:Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxSum;

    #@c
    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxSum;->updateTxRxSum()V

    #@f
    .line 4709
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDataStallTxRxSum:Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxSum;

    #@11
    iget-wide v6, v1, Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxSum;->txPkts:J

    #@13
    iget-wide v8, v0, Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxSum;->txPkts:J

    #@15
    sub-long v4, v6, v8

    #@17
    .line 4710
    .local v4, "sent":J
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDataStallTxRxSum:Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxSum;

    #@19
    iget-wide v6, v1, Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxSum;->rxPkts:J

    #@1b
    iget-wide v8, v0, Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxSum;->rxPkts:J

    #@1d
    sub-long v2, v6, v8

    #@1f
    .line 4718
    .local v2, "received":J
    cmp-long v1, v4, v10

    #@21
    if-lez v1, :cond_1

    #@23
    cmp-long v1, v2, v10

    #@25
    if-lez v1, :cond_1

    #@27
    .line 4720
    iput-wide v10, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mSentSinceLastRecv:J

    #@29
    .line 4721
    invoke-direct {p0, v12}, Lcom/android/internal/telephony/dataconnection/DcTracker;->putRecoveryAction(I)V

    #@2c
    .line 4698
    :cond_0
    :goto_0
    return-void

    #@2d
    .line 4722
    :cond_1
    cmp-long v1, v4, v10

    #@2f
    if-lez v1, :cond_3

    #@31
    cmp-long v1, v2, v10

    #@33
    if-nez v1, :cond_3

    #@35
    .line 4723
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
    .line 4724
    iget-wide v6, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mSentSinceLastRecv:J

    #@41
    add-long/2addr v6, v4

    #@42
    iput-wide v6, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mSentSinceLastRecv:J

    #@44
    .line 4729
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
    .line 4730
    const-string/jumbo v6, " mSentSinceLastRecv="

    #@57
    .line 4729
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v1

    #@5b
    .line 4730
    iget-wide v6, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mSentSinceLastRecv:J

    #@5d
    .line 4729
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
    .line 4726
    :cond_2
    iput-wide v10, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mSentSinceLastRecv:J

    #@6b
    goto :goto_1

    #@6c
    .line 4732
    :cond_3
    cmp-long v1, v4, v10

    #@6e
    if-nez v1, :cond_0

    #@70
    cmp-long v1, v2, v10

    #@72
    if-lez v1, :cond_0

    #@74
    .line 4734
    iput-wide v10, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mSentSinceLastRecv:J

    #@76
    .line 4735
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
    .line 3465
    invoke-static {p1, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 3466
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@9
    move-result v0

    #@a
    .line 3465
    if-nez v0, :cond_0

    #@c
    .line 3467
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@f
    move-result v0

    #@10
    .line 3465
    :goto_0
    return v0

    #@11
    :cond_0
    const/4 v0, 0x1

    #@12
    goto :goto_0
.end method


# virtual methods
.method public cleanUpAllConnections(Ljava/lang/String;)V
    .locals 1
    .param p1, "cause"    # Ljava/lang/String;

    #@0
    .prologue
    .line 4114
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->cleanUpAllConnections(Ljava/lang/String;Landroid/os/Message;)V

    #@4
    .line 4113
    return-void
.end method

.method public cleanUpAllConnections(Ljava/lang/String;Landroid/os/Message;)V
    .locals 2
    .param p1, "cause"    # Ljava/lang/String;
    .param p2, "disconnectAllCompleteMsg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 4122
    const-string/jumbo v1, "cleanUpAllConnections"

    #@3
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@6
    .line 4123
    if-eqz p2, :cond_0

    #@8
    .line 4124
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDisconnectAllCompleteMsgList:Ljava/util/ArrayList;

    #@a
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@d
    .line 4127
    :cond_0
    const v1, 0x4201d

    #@10
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->obtainMessage(I)Landroid/os/Message;

    #@13
    move-result-object v0

    #@14
    .line 4128
    .local v0, "msg":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@16
    .line 4129
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->sendMessage(Landroid/os/Message;)Z

    #@19
    .line 4121
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
    .line 817
    const-string/jumbo v2, "DCT.dispose"

    #@5
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@8
    .line 819
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mProvisionBroadcastReceiver:Landroid/content/BroadcastReceiver;

    #@a
    if-eqz v2, :cond_0

    #@c
    .line 820
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
    .line 821
    iput-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mProvisionBroadcastReceiver:Landroid/content/BroadcastReceiver;

    #@19
    .line 823
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mProvisioningSpinner:Landroid/app/ProgressDialog;

    #@1b
    if-eqz v2, :cond_1

    #@1d
    .line 824
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mProvisioningSpinner:Landroid/app/ProgressDialog;

    #@1f
    invoke-virtual {v2}, Landroid/app/ProgressDialog;->dismiss()V

    #@22
    .line 825
    iput-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mProvisioningSpinner:Landroid/app/ProgressDialog;

    #@24
    .line 828
    :cond_1
    invoke-direct {p0, v5, v4}, Lcom/android/internal/telephony/dataconnection/DcTracker;->cleanUpAllConnections(ZLjava/lang/String;)Z

    #@27
    .line 830
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
    .line 831
    .local v0, "dcac":Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->disconnect()V

    #@40
    goto :goto_0

    #@41
    .line 833
    .end local v0    # "dcac":Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;
    :cond_2
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDataConnectionAcHashMap:Ljava/util/HashMap;

    #@43
    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    #@46
    .line 834
    iput-boolean v5, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mIsDisposed:Z

    #@48
    .line 835
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
    .line 836
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    #@55
    invoke-virtual {v2, p0}, Lcom/android/internal/telephony/uicc/UiccController;->unregisterForIccChanged(Landroid/os/Handler;)V

    #@58
    .line 837
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mSettingsObserver:Lcom/android/internal/telephony/dataconnection/DcTracker$SettingsObserver;

    #@5a
    invoke-virtual {v2}, Lcom/android/internal/telephony/dataconnection/DcTracker$SettingsObserver;->unobserve()V

    #@5d
    .line 839
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    #@5f
    .line 840
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mOnSubscriptionsChangedListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    #@61
    .line 839
    invoke-virtual {v2, v3}, Landroid/telephony/SubscriptionManager;->removeOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    #@64
    .line 841
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDcc:Lcom/android/internal/telephony/dataconnection/DcController;

    #@66
    invoke-virtual {v2}, Lcom/android/internal/telephony/dataconnection/DcController;->dispose()V

    #@69
    .line 842
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDcTesterFailBringUpAll:Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;

    #@6b
    invoke-virtual {v2}, Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;->dispose()V

    #@6e
    .line 844
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
    .line 845
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    #@7f
    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    #@82
    .line 846
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mApnContextsById:Landroid/util/SparseArray;

    #@84
    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    #@87
    .line 847
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPrioritySortedApnContexts:Ljava/util/PriorityQueue;

    #@89
    invoke-virtual {v2}, Ljava/util/PriorityQueue;->clear()V

    #@8c
    .line 848
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->unregisterForAllEvents()V

    #@8f
    .line 850
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->destroyDataConnections()V

    #@92
    .line 816
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 21
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 4276
    const-string/jumbo v17, "DcTracker:"

    #@3
    move-object/from16 v0, p2

    #@5
    move-object/from16 v1, v17

    #@7
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@a
    .line 4277
    const-string/jumbo v17, " RADIO_TESTS=false"

    #@d
    move-object/from16 v0, p2

    #@f
    move-object/from16 v1, v17

    #@11
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@14
    .line 4278
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
    iget-boolean v0, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mInternalDataEnabled:Z

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
    .line 4279
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
    iget-boolean v0, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mUserDataEnabled:Z

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
    .line 4280
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
    sget-boolean v18, Lcom/android/internal/telephony/dataconnection/DcTracker;->sPolicyDataEnabled:Z

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
    .line 4281
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->flush()V

    #@76
    .line 4282
    new-instance v17, Ljava/lang/StringBuilder;

    #@78
    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    #@7b
    const-string/jumbo v18, " mRequestedApnType="

    #@7e
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@81
    move-result-object v17

    #@82
    move-object/from16 v0, p0

    #@84
    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mRequestedApnType:Ljava/lang/String;

    #@86
    move-object/from16 v18, v0

    #@88
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8b
    move-result-object v17

    #@8c
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8f
    move-result-object v17

    #@90
    move-object/from16 v0, p2

    #@92
    move-object/from16 v1, v17

    #@94
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@97
    .line 4283
    new-instance v17, Ljava/lang/StringBuilder;

    #@99
    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    #@9c
    const-string/jumbo v18, " mPhone="

    #@9f
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a2
    move-result-object v17

    #@a3
    move-object/from16 v0, p0

    #@a5
    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    #@a7
    move-object/from16 v18, v0

    #@a9
    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/Phone;->getPhoneName()Ljava/lang/String;

    #@ac
    move-result-object v18

    #@ad
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b0
    move-result-object v17

    #@b1
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b4
    move-result-object v17

    #@b5
    move-object/from16 v0, p2

    #@b7
    move-object/from16 v1, v17

    #@b9
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@bc
    .line 4284
    new-instance v17, Ljava/lang/StringBuilder;

    #@be
    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    #@c1
    const-string/jumbo v18, " mActivity="

    #@c4
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c7
    move-result-object v17

    #@c8
    move-object/from16 v0, p0

    #@ca
    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mActivity:Lcom/android/internal/telephony/DctConstants$Activity;

    #@cc
    move-object/from16 v18, v0

    #@ce
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@d1
    move-result-object v17

    #@d2
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d5
    move-result-object v17

    #@d6
    move-object/from16 v0, p2

    #@d8
    move-object/from16 v1, v17

    #@da
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@dd
    .line 4285
    new-instance v17, Ljava/lang/StringBuilder;

    #@df
    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    #@e2
    const-string/jumbo v18, " mState="

    #@e5
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e8
    move-result-object v17

    #@e9
    move-object/from16 v0, p0

    #@eb
    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mState:Lcom/android/internal/telephony/DctConstants$State;

    #@ed
    move-object/from16 v18, v0

    #@ef
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@f2
    move-result-object v17

    #@f3
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@f6
    move-result-object v17

    #@f7
    move-object/from16 v0, p2

    #@f9
    move-object/from16 v1, v17

    #@fb
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@fe
    .line 4286
    new-instance v17, Ljava/lang/StringBuilder;

    #@100
    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    #@103
    const-string/jumbo v18, " mTxPkts="

    #@106
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@109
    move-result-object v17

    #@10a
    move-object/from16 v0, p0

    #@10c
    iget-wide v0, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mTxPkts:J

    #@10e
    move-wide/from16 v18, v0

    #@110
    invoke-virtual/range {v17 .. v19}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@113
    move-result-object v17

    #@114
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@117
    move-result-object v17

    #@118
    move-object/from16 v0, p2

    #@11a
    move-object/from16 v1, v17

    #@11c
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@11f
    .line 4287
    new-instance v17, Ljava/lang/StringBuilder;

    #@121
    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    #@124
    const-string/jumbo v18, " mRxPkts="

    #@127
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12a
    move-result-object v17

    #@12b
    move-object/from16 v0, p0

    #@12d
    iget-wide v0, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mRxPkts:J

    #@12f
    move-wide/from16 v18, v0

    #@131
    invoke-virtual/range {v17 .. v19}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@134
    move-result-object v17

    #@135
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@138
    move-result-object v17

    #@139
    move-object/from16 v0, p2

    #@13b
    move-object/from16 v1, v17

    #@13d
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@140
    .line 4288
    new-instance v17, Ljava/lang/StringBuilder;

    #@142
    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    #@145
    const-string/jumbo v18, " mNetStatPollPeriod="

    #@148
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14b
    move-result-object v17

    #@14c
    move-object/from16 v0, p0

    #@14e
    iget v0, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mNetStatPollPeriod:I

    #@150
    move/from16 v18, v0

    #@152
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@155
    move-result-object v17

    #@156
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@159
    move-result-object v17

    #@15a
    move-object/from16 v0, p2

    #@15c
    move-object/from16 v1, v17

    #@15e
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@161
    .line 4289
    new-instance v17, Ljava/lang/StringBuilder;

    #@163
    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    #@166
    const-string/jumbo v18, " mNetStatPollEnabled="

    #@169
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16c
    move-result-object v17

    #@16d
    move-object/from16 v0, p0

    #@16f
    iget-boolean v0, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mNetStatPollEnabled:Z

    #@171
    move/from16 v18, v0

    #@173
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@176
    move-result-object v17

    #@177
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@17a
    move-result-object v17

    #@17b
    move-object/from16 v0, p2

    #@17d
    move-object/from16 v1, v17

    #@17f
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@182
    .line 4290
    new-instance v17, Ljava/lang/StringBuilder;

    #@184
    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    #@187
    const-string/jumbo v18, " mDataStallTxRxSum="

    #@18a
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18d
    move-result-object v17

    #@18e
    move-object/from16 v0, p0

    #@190
    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDataStallTxRxSum:Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxSum;

    #@192
    move-object/from16 v18, v0

    #@194
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@197
    move-result-object v17

    #@198
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@19b
    move-result-object v17

    #@19c
    move-object/from16 v0, p2

    #@19e
    move-object/from16 v1, v17

    #@1a0
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1a3
    .line 4291
    new-instance v17, Ljava/lang/StringBuilder;

    #@1a5
    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    #@1a8
    const-string/jumbo v18, " mDataStallAlarmTag="

    #@1ab
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1ae
    move-result-object v17

    #@1af
    move-object/from16 v0, p0

    #@1b1
    iget v0, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDataStallAlarmTag:I

    #@1b3
    move/from16 v18, v0

    #@1b5
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1b8
    move-result-object v17

    #@1b9
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1bc
    move-result-object v17

    #@1bd
    move-object/from16 v0, p2

    #@1bf
    move-object/from16 v1, v17

    #@1c1
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1c4
    .line 4292
    new-instance v17, Ljava/lang/StringBuilder;

    #@1c6
    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    #@1c9
    const-string/jumbo v18, " mDataStallDetectionEanbled="

    #@1cc
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1cf
    move-result-object v17

    #@1d0
    move-object/from16 v0, p0

    #@1d2
    iget-boolean v0, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDataStallDetectionEnabled:Z

    #@1d4
    move/from16 v18, v0

    #@1d6
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@1d9
    move-result-object v17

    #@1da
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1dd
    move-result-object v17

    #@1de
    move-object/from16 v0, p2

    #@1e0
    move-object/from16 v1, v17

    #@1e2
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1e5
    .line 4293
    new-instance v17, Ljava/lang/StringBuilder;

    #@1e7
    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    #@1ea
    const-string/jumbo v18, " mSentSinceLastRecv="

    #@1ed
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f0
    move-result-object v17

    #@1f1
    move-object/from16 v0, p0

    #@1f3
    iget-wide v0, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mSentSinceLastRecv:J

    #@1f5
    move-wide/from16 v18, v0

    #@1f7
    invoke-virtual/range {v17 .. v19}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@1fa
    move-result-object v17

    #@1fb
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1fe
    move-result-object v17

    #@1ff
    move-object/from16 v0, p2

    #@201
    move-object/from16 v1, v17

    #@203
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@206
    .line 4294
    new-instance v17, Ljava/lang/StringBuilder;

    #@208
    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    #@20b
    const-string/jumbo v18, " mNoRecvPollCount="

    #@20e
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@211
    move-result-object v17

    #@212
    move-object/from16 v0, p0

    #@214
    iget v0, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mNoRecvPollCount:I

    #@216
    move/from16 v18, v0

    #@218
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@21b
    move-result-object v17

    #@21c
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21f
    move-result-object v17

    #@220
    move-object/from16 v0, p2

    #@222
    move-object/from16 v1, v17

    #@224
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@227
    .line 4295
    new-instance v17, Ljava/lang/StringBuilder;

    #@229
    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    #@22c
    const-string/jumbo v18, " mResolver="

    #@22f
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@232
    move-result-object v17

    #@233
    move-object/from16 v0, p0

    #@235
    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mResolver:Landroid/content/ContentResolver;

    #@237
    move-object/from16 v18, v0

    #@239
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@23c
    move-result-object v17

    #@23d
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@240
    move-result-object v17

    #@241
    move-object/from16 v0, p2

    #@243
    move-object/from16 v1, v17

    #@245
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@248
    .line 4296
    new-instance v17, Ljava/lang/StringBuilder;

    #@24a
    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    #@24d
    const-string/jumbo v18, " mIsWifiConnected="

    #@250
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@253
    move-result-object v17

    #@254
    move-object/from16 v0, p0

    #@256
    iget-boolean v0, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mIsWifiConnected:Z

    #@258
    move/from16 v18, v0

    #@25a
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@25d
    move-result-object v17

    #@25e
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@261
    move-result-object v17

    #@262
    move-object/from16 v0, p2

    #@264
    move-object/from16 v1, v17

    #@266
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@269
    .line 4297
    new-instance v17, Ljava/lang/StringBuilder;

    #@26b
    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    #@26e
    const-string/jumbo v18, " mReconnectIntent="

    #@271
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@274
    move-result-object v17

    #@275
    move-object/from16 v0, p0

    #@277
    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mReconnectIntent:Landroid/app/PendingIntent;

    #@279
    move-object/from16 v18, v0

    #@27b
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@27e
    move-result-object v17

    #@27f
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@282
    move-result-object v17

    #@283
    move-object/from16 v0, p2

    #@285
    move-object/from16 v1, v17

    #@287
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@28a
    .line 4298
    new-instance v17, Ljava/lang/StringBuilder;

    #@28c
    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    #@28f
    const-string/jumbo v18, " mAutoAttachOnCreation="

    #@292
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@295
    move-result-object v17

    #@296
    move-object/from16 v0, p0

    #@298
    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAutoAttachOnCreation:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@29a
    move-object/from16 v18, v0

    #@29c
    invoke-virtual/range {v18 .. v18}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    #@29f
    move-result v18

    #@2a0
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@2a3
    move-result-object v17

    #@2a4
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2a7
    move-result-object v17

    #@2a8
    move-object/from16 v0, p2

    #@2aa
    move-object/from16 v1, v17

    #@2ac
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@2af
    .line 4299
    new-instance v17, Ljava/lang/StringBuilder;

    #@2b1
    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    #@2b4
    const-string/jumbo v18, " mIsScreenOn="

    #@2b7
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2ba
    move-result-object v17

    #@2bb
    move-object/from16 v0, p0

    #@2bd
    iget-boolean v0, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mIsScreenOn:Z

    #@2bf
    move/from16 v18, v0

    #@2c1
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@2c4
    move-result-object v17

    #@2c5
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2c8
    move-result-object v17

    #@2c9
    move-object/from16 v0, p2

    #@2cb
    move-object/from16 v1, v17

    #@2cd
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@2d0
    .line 4300
    new-instance v17, Ljava/lang/StringBuilder;

    #@2d2
    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    #@2d5
    const-string/jumbo v18, " mUniqueIdGenerator="

    #@2d8
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2db
    move-result-object v17

    #@2dc
    move-object/from16 v0, p0

    #@2de
    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mUniqueIdGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    #@2e0
    move-object/from16 v18, v0

    #@2e2
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2e5
    move-result-object v17

    #@2e6
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2e9
    move-result-object v17

    #@2ea
    move-object/from16 v0, p2

    #@2ec
    move-object/from16 v1, v17

    #@2ee
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@2f1
    .line 4301
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->flush()V

    #@2f4
    .line 4302
    const-string/jumbo v17, " ***************************************"

    #@2f7
    move-object/from16 v0, p2

    #@2f9
    move-object/from16 v1, v17

    #@2fb
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@2fe
    .line 4303
    move-object/from16 v0, p0

    #@300
    iget-object v9, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDcc:Lcom/android/internal/telephony/dataconnection/DcController;

    #@302
    .line 4304
    .local v9, "dcc":Lcom/android/internal/telephony/dataconnection/DcController;
    if-eqz v9, :cond_0

    #@304
    .line 4305
    move-object/from16 v0, p1

    #@306
    move-object/from16 v1, p2

    #@308
    move-object/from16 v2, p3

    #@30a
    invoke-virtual {v9, v0, v1, v2}, Lcom/android/internal/telephony/dataconnection/DcController;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    #@30d
    .line 4309
    :goto_0
    const-string/jumbo v17, " ***************************************"

    #@310
    move-object/from16 v0, p2

    #@312
    move-object/from16 v1, v17

    #@314
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@317
    .line 4310
    move-object/from16 v0, p0

    #@319
    iget-object v10, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDataConnections:Ljava/util/HashMap;

    #@31b
    .line 4311
    .local v10, "dcs":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/android/internal/telephony/dataconnection/DataConnection;>;"
    if-eqz v10, :cond_1

    #@31d
    .line 4312
    move-object/from16 v0, p0

    #@31f
    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDataConnections:Ljava/util/HashMap;

    #@321
    move-object/from16 v17, v0

    #@323
    invoke-virtual/range {v17 .. v17}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    #@326
    move-result-object v16

    #@327
    .line 4313
    .local v16, "mDcSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/internal/telephony/dataconnection/DataConnection;>;>;"
    new-instance v17, Ljava/lang/StringBuilder;

    #@329
    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    #@32c
    const-string/jumbo v18, " mDataConnections: count="

    #@32f
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@332
    move-result-object v17

    #@333
    invoke-interface/range {v16 .. v16}, Ljava/util/Set;->size()I

    #@336
    move-result v18

    #@337
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@33a
    move-result-object v17

    #@33b
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@33e
    move-result-object v17

    #@33f
    move-object/from16 v0, p2

    #@341
    move-object/from16 v1, v17

    #@343
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@346
    .line 4314
    invoke-interface/range {v16 .. v16}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@349
    move-result-object v14

    #@34a
    .local v14, "entry$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    #@34d
    move-result v17

    #@34e
    if-eqz v17, :cond_2

    #@350
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@353
    move-result-object v11

    #@354
    check-cast v11, Ljava/util/Map$Entry;

    #@356
    .line 4315
    .local v11, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/internal/telephony/dataconnection/DataConnection;>;"
    const-string/jumbo v17, " *** mDataConnection[%d] \n"

    #@359
    const/16 v18, 0x1

    #@35b
    move/from16 v0, v18

    #@35d
    new-array v0, v0, [Ljava/lang/Object;

    #@35f
    move-object/from16 v18, v0

    #@361
    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@364
    move-result-object v19

    #@365
    const/16 v20, 0x0

    #@367
    aput-object v19, v18, v20

    #@369
    move-object/from16 v0, p2

    #@36b
    move-object/from16 v1, v17

    #@36d
    move-object/from16 v2, v18

    #@36f
    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    #@372
    .line 4316
    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@375
    move-result-object v17

    #@376
    check-cast v17, Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@378
    move-object/from16 v0, v17

    #@37a
    move-object/from16 v1, p1

    #@37c
    move-object/from16 v2, p2

    #@37e
    move-object/from16 v3, p3

    #@380
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/dataconnection/DataConnection;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    #@383
    goto :goto_1

    #@384
    .line 4307
    .end local v10    # "dcs":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/android/internal/telephony/dataconnection/DataConnection;>;"
    .end local v11    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/internal/telephony/dataconnection/DataConnection;>;"
    .end local v14    # "entry$iterator":Ljava/util/Iterator;
    .end local v16    # "mDcSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/internal/telephony/dataconnection/DataConnection;>;>;"
    :cond_0
    const-string/jumbo v17, " mDcc=null"

    #@387
    move-object/from16 v0, p2

    #@389
    move-object/from16 v1, v17

    #@38b
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@38e
    goto/16 :goto_0

    #@390
    .line 4319
    .restart local v10    # "dcs":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/android/internal/telephony/dataconnection/DataConnection;>;"
    :cond_1
    const-string/jumbo v17, "mDataConnections=null"

    #@393
    move-object/from16 v0, p2

    #@395
    move-object/from16 v1, v17

    #@397
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@39a
    .line 4321
    :cond_2
    const-string/jumbo v17, " ***************************************"

    #@39d
    move-object/from16 v0, p2

    #@39f
    move-object/from16 v1, v17

    #@3a1
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@3a4
    .line 4322
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->flush()V

    #@3a7
    .line 4323
    move-object/from16 v0, p0

    #@3a9
    iget-object v7, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mApnToDataConnectionId:Ljava/util/HashMap;

    #@3ab
    .line 4324
    .local v7, "apnToDcId":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    if-eqz v7, :cond_3

    #@3ad
    .line 4325
    invoke-virtual {v7}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    #@3b0
    move-result-object v8

    #@3b1
    .line 4326
    .local v8, "apnToDcIdSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    new-instance v17, Ljava/lang/StringBuilder;

    #@3b3
    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    #@3b6
    const-string/jumbo v18, " mApnToDataConnectonId size="

    #@3b9
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3bc
    move-result-object v17

    #@3bd
    invoke-interface {v8}, Ljava/util/Set;->size()I

    #@3c0
    move-result v18

    #@3c1
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3c4
    move-result-object v17

    #@3c5
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3c8
    move-result-object v17

    #@3c9
    move-object/from16 v0, p2

    #@3cb
    move-object/from16 v1, v17

    #@3cd
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@3d0
    .line 4327
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@3d3
    move-result-object v14

    #@3d4
    .restart local v14    # "entry$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    #@3d7
    move-result v17

    #@3d8
    if-eqz v17, :cond_4

    #@3da
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@3dd
    move-result-object v13

    #@3de
    check-cast v13, Ljava/util/Map$Entry;

    #@3e0
    .line 4328
    .local v13, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    const-string/jumbo v17, " mApnToDataConnectonId[%s]=%d\n"

    #@3e3
    const/16 v18, 0x2

    #@3e5
    move/from16 v0, v18

    #@3e7
    new-array v0, v0, [Ljava/lang/Object;

    #@3e9
    move-object/from16 v18, v0

    #@3eb
    invoke-interface {v13}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@3ee
    move-result-object v19

    #@3ef
    const/16 v20, 0x0

    #@3f1
    aput-object v19, v18, v20

    #@3f3
    invoke-interface {v13}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@3f6
    move-result-object v19

    #@3f7
    const/16 v20, 0x1

    #@3f9
    aput-object v19, v18, v20

    #@3fb
    move-object/from16 v0, p2

    #@3fd
    move-object/from16 v1, v17

    #@3ff
    move-object/from16 v2, v18

    #@401
    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    #@404
    goto :goto_2

    #@405
    .line 4331
    .end local v8    # "apnToDcIdSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    .end local v13    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v14    # "entry$iterator":Ljava/util/Iterator;
    :cond_3
    const-string/jumbo v17, "mApnToDataConnectionId=null"

    #@408
    move-object/from16 v0, p2

    #@40a
    move-object/from16 v1, v17

    #@40c
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@40f
    .line 4333
    :cond_4
    const-string/jumbo v17, " ***************************************"

    #@412
    move-object/from16 v0, p2

    #@414
    move-object/from16 v1, v17

    #@416
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@419
    .line 4334
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->flush()V

    #@41c
    .line 4335
    move-object/from16 v0, p0

    #@41e
    iget-object v4, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    #@420
    .line 4336
    .local v4, "apnCtxs":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/String;Lcom/android/internal/telephony/dataconnection/ApnContext;>;"
    if-eqz v4, :cond_6

    #@422
    .line 4337
    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    #@425
    move-result-object v5

    #@426
    .line 4338
    .local v5, "apnCtxsSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/telephony/dataconnection/ApnContext;>;>;"
    new-instance v17, Ljava/lang/StringBuilder;

    #@428
    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    #@42b
    const-string/jumbo v18, " mApnContexts size="

    #@42e
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@431
    move-result-object v17

    #@432
    invoke-interface {v5}, Ljava/util/Set;->size()I

    #@435
    move-result v18

    #@436
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@439
    move-result-object v17

    #@43a
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@43d
    move-result-object v17

    #@43e
    move-object/from16 v0, p2

    #@440
    move-object/from16 v1, v17

    #@442
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@445
    .line 4339
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@448
    move-result-object v14

    #@449
    .restart local v14    # "entry$iterator":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    #@44c
    move-result v17

    #@44d
    if-eqz v17, :cond_5

    #@44f
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@452
    move-result-object v12

    #@453
    check-cast v12, Ljava/util/Map$Entry;

    #@455
    .line 4340
    .local v12, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/telephony/dataconnection/ApnContext;>;"
    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@458
    move-result-object v17

    #@459
    check-cast v17, Lcom/android/internal/telephony/dataconnection/ApnContext;

    #@45b
    move-object/from16 v0, v17

    #@45d
    move-object/from16 v1, p1

    #@45f
    move-object/from16 v2, p2

    #@461
    move-object/from16 v3, p3

    #@463
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/dataconnection/ApnContext;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    #@466
    goto :goto_3

    #@467
    .line 4342
    .end local v12    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/telephony/dataconnection/ApnContext;>;"
    :cond_5
    const-string/jumbo v17, " ***************************************"

    #@46a
    move-object/from16 v0, p2

    #@46c
    move-object/from16 v1, v17

    #@46e
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@471
    .line 4346
    .end local v5    # "apnCtxsSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/telephony/dataconnection/ApnContext;>;>;"
    .end local v14    # "entry$iterator":Ljava/util/Iterator;
    :goto_4
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->flush()V

    #@474
    .line 4347
    move-object/from16 v0, p0

    #@476
    iget-object v6, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAllApnSettings:Ljava/util/ArrayList;

    #@478
    .line 4348
    .local v6, "apnSettings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/dataconnection/ApnSetting;>;"
    if-eqz v6, :cond_8

    #@47a
    .line 4349
    new-instance v17, Ljava/lang/StringBuilder;

    #@47c
    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    #@47f
    const-string/jumbo v18, " mAllApnSettings size="

    #@482
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@485
    move-result-object v17

    #@486
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    #@489
    move-result v18

    #@48a
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@48d
    move-result-object v17

    #@48e
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@491
    move-result-object v17

    #@492
    move-object/from16 v0, p2

    #@494
    move-object/from16 v1, v17

    #@496
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@499
    .line 4350
    const/4 v15, 0x0

    #@49a
    .local v15, "i":I
    :goto_5
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    #@49d
    move-result v17

    #@49e
    move/from16 v0, v17

    #@4a0
    if-ge v15, v0, :cond_7

    #@4a2
    .line 4351
    const-string/jumbo v17, " mAllApnSettings[%d]: %s\n"

    #@4a5
    const/16 v18, 0x2

    #@4a7
    move/from16 v0, v18

    #@4a9
    new-array v0, v0, [Ljava/lang/Object;

    #@4ab
    move-object/from16 v18, v0

    #@4ad
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@4b0
    move-result-object v19

    #@4b1
    const/16 v20, 0x0

    #@4b3
    aput-object v19, v18, v20

    #@4b5
    invoke-virtual {v6, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@4b8
    move-result-object v19

    #@4b9
    const/16 v20, 0x1

    #@4bb
    aput-object v19, v18, v20

    #@4bd
    move-object/from16 v0, p2

    #@4bf
    move-object/from16 v1, v17

    #@4c1
    move-object/from16 v2, v18

    #@4c3
    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    #@4c6
    .line 4350
    add-int/lit8 v15, v15, 0x1

    #@4c8
    goto :goto_5

    #@4c9
    .line 4344
    .end local v6    # "apnSettings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/dataconnection/ApnSetting;>;"
    .end local v15    # "i":I
    :cond_6
    const-string/jumbo v17, " mApnContexts=null"

    #@4cc
    move-object/from16 v0, p2

    #@4ce
    move-object/from16 v1, v17

    #@4d0
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@4d3
    goto :goto_4

    #@4d4
    .line 4353
    .restart local v6    # "apnSettings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/dataconnection/ApnSetting;>;"
    .restart local v15    # "i":I
    :cond_7
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->flush()V

    #@4d7
    .line 4357
    .end local v15    # "i":I
    :goto_6
    new-instance v17, Ljava/lang/StringBuilder;

    #@4d9
    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    #@4dc
    const-string/jumbo v18, " mPreferredApn="

    #@4df
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e2
    move-result-object v17

    #@4e3
    move-object/from16 v0, p0

    #@4e5
    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPreferredApn:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    #@4e7
    move-object/from16 v18, v0

    #@4e9
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@4ec
    move-result-object v17

    #@4ed
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4f0
    move-result-object v17

    #@4f1
    move-object/from16 v0, p2

    #@4f3
    move-object/from16 v1, v17

    #@4f5
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@4f8
    .line 4358
    new-instance v17, Ljava/lang/StringBuilder;

    #@4fa
    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    #@4fd
    const-string/jumbo v18, " mIsPsRestricted="

    #@500
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@503
    move-result-object v17

    #@504
    move-object/from16 v0, p0

    #@506
    iget-boolean v0, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mIsPsRestricted:Z

    #@508
    move/from16 v18, v0

    #@50a
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@50d
    move-result-object v17

    #@50e
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@511
    move-result-object v17

    #@512
    move-object/from16 v0, p2

    #@514
    move-object/from16 v1, v17

    #@516
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@519
    .line 4359
    new-instance v17, Ljava/lang/StringBuilder;

    #@51b
    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    #@51e
    const-string/jumbo v18, " mIsDisposed="

    #@521
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@524
    move-result-object v17

    #@525
    move-object/from16 v0, p0

    #@527
    iget-boolean v0, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mIsDisposed:Z

    #@529
    move/from16 v18, v0

    #@52b
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@52e
    move-result-object v17

    #@52f
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@532
    move-result-object v17

    #@533
    move-object/from16 v0, p2

    #@535
    move-object/from16 v1, v17

    #@537
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@53a
    .line 4360
    new-instance v17, Ljava/lang/StringBuilder;

    #@53c
    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    #@53f
    const-string/jumbo v18, " mIntentReceiver="

    #@542
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@545
    move-result-object v17

    #@546
    move-object/from16 v0, p0

    #@548
    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    #@54a
    move-object/from16 v18, v0

    #@54c
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@54f
    move-result-object v17

    #@550
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@553
    move-result-object v17

    #@554
    move-object/from16 v0, p2

    #@556
    move-object/from16 v1, v17

    #@558
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@55b
    .line 4361
    new-instance v17, Ljava/lang/StringBuilder;

    #@55d
    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    #@560
    const-string/jumbo v18, " mReregisterOnReconnectFailure="

    #@563
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@566
    move-result-object v17

    #@567
    move-object/from16 v0, p0

    #@569
    iget-boolean v0, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mReregisterOnReconnectFailure:Z

    #@56b
    move/from16 v18, v0

    #@56d
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@570
    move-result-object v17

    #@571
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@574
    move-result-object v17

    #@575
    move-object/from16 v0, p2

    #@577
    move-object/from16 v1, v17

    #@579
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@57c
    .line 4362
    new-instance v17, Ljava/lang/StringBuilder;

    #@57e
    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    #@581
    const-string/jumbo v18, " canSetPreferApn="

    #@584
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@587
    move-result-object v17

    #@588
    move-object/from16 v0, p0

    #@58a
    iget-boolean v0, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mCanSetPreferApn:Z

    #@58c
    move/from16 v18, v0

    #@58e
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@591
    move-result-object v17

    #@592
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@595
    move-result-object v17

    #@596
    move-object/from16 v0, p2

    #@598
    move-object/from16 v1, v17

    #@59a
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@59d
    .line 4363
    new-instance v17, Ljava/lang/StringBuilder;

    #@59f
    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    #@5a2
    const-string/jumbo v18, " mApnObserver="

    #@5a5
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5a8
    move-result-object v17

    #@5a9
    move-object/from16 v0, p0

    #@5ab
    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mApnObserver:Lcom/android/internal/telephony/dataconnection/DcTracker$ApnChangeObserver;

    #@5ad
    move-object/from16 v18, v0

    #@5af
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@5b2
    move-result-object v17

    #@5b3
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5b6
    move-result-object v17

    #@5b7
    move-object/from16 v0, p2

    #@5b9
    move-object/from16 v1, v17

    #@5bb
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@5be
    .line 4364
    new-instance v17, Ljava/lang/StringBuilder;

    #@5c0
    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    #@5c3
    const-string/jumbo v18, " getOverallState="

    #@5c6
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5c9
    move-result-object v17

    #@5ca
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->getOverallState()Lcom/android/internal/telephony/DctConstants$State;

    #@5cd
    move-result-object v18

    #@5ce
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@5d1
    move-result-object v17

    #@5d2
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5d5
    move-result-object v17

    #@5d6
    move-object/from16 v0, p2

    #@5d8
    move-object/from16 v1, v17

    #@5da
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@5dd
    .line 4365
    new-instance v17, Ljava/lang/StringBuilder;

    #@5df
    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    #@5e2
    const-string/jumbo v18, " mDataConnectionAsyncChannels=%s\n"

    #@5e5
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5e8
    move-result-object v17

    #@5e9
    move-object/from16 v0, p0

    #@5eb
    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDataConnectionAcHashMap:Ljava/util/HashMap;

    #@5ed
    move-object/from16 v18, v0

    #@5ef
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@5f2
    move-result-object v17

    #@5f3
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5f6
    move-result-object v17

    #@5f7
    move-object/from16 v0, p2

    #@5f9
    move-object/from16 v1, v17

    #@5fb
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@5fe
    .line 4366
    new-instance v17, Ljava/lang/StringBuilder;

    #@600
    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    #@603
    const-string/jumbo v18, " mAttached="

    #@606
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@609
    move-result-object v17

    #@60a
    move-object/from16 v0, p0

    #@60c
    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAttached:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@60e
    move-object/from16 v18, v0

    #@610
    invoke-virtual/range {v18 .. v18}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    #@613
    move-result v18

    #@614
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@617
    move-result-object v17

    #@618
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@61b
    move-result-object v17

    #@61c
    move-object/from16 v0, p2

    #@61e
    move-object/from16 v1, v17

    #@620
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@623
    .line 4367
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->flush()V

    #@626
    .line 4275
    return-void

    #@627
    .line 4355
    :cond_8
    const-string/jumbo v17, " mAllApnSettings=null"

    #@62a
    move-object/from16 v0, p2

    #@62c
    move-object/from16 v1, v17

    #@62e
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@631
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
    .line 1860
    const-string/jumbo v12, "net.tethering.noprovisioning"

    #@5
    invoke-static {v12, v11}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    #@8
    move-result v12

    #@9
    if-eqz v12, :cond_0

    #@b
    .line 1861
    const-string/jumbo v11, "fetchDunApn: net.tethering.noprovisioning=true ret: null"

    #@e
    invoke-direct {p0, v11}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@11
    .line 1862
    return-object v13

    #@12
    .line 1864
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
    .line 1865
    .local v3, "bearer":I
    const/4 v10, 0x0

    #@1d
    .line 1866
    .local v10, "retDunSetting":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    iget-object v12, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mResolver:Landroid/content/ContentResolver;

    #@1f
    const-string/jumbo v13, "tether_dun_apn"

    #@22
    invoke-static {v12, v13}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    #@25
    move-result-object v2

    #@26
    .line 1867
    .local v2, "apnData":Ljava/lang/String;
    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->arrayFromString(Ljava/lang/String;)Ljava/util/List;

    #@29
    move-result-object v7

    #@2a
    .line 1868
    .local v7, "dunSettings":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/dataconnection/ApnSetting;>;"
    iget-object v12, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    #@2c
    invoke-virtual {v12}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    #@2f
    move-result-object v9

    #@30
    check-cast v9, Lcom/android/internal/telephony/uicc/IccRecords;

    #@32
    .line 1869
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
    .line 1870
    .local v5, "dunSetting":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    if-eqz v9, :cond_2

    #@44
    invoke-virtual {v9}, Lcom/android/internal/telephony/uicc/IccRecords;->getOperatorNumeric()Ljava/lang/String;

    #@47
    move-result-object v8

    #@48
    .line 1871
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
    .line 1872
    iget-object v12, v5, Lcom/android/internal/telephony/dataconnection/ApnSetting;->numeric:Ljava/lang/String;

    #@52
    invoke-virtual {v12, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@55
    move-result v12

    #@56
    if-eqz v12, :cond_1

    #@58
    .line 1873
    invoke-virtual {v5}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->hasMvnoParams()Z

    #@5b
    move-result v12

    #@5c
    if-eqz v12, :cond_3

    #@5e
    .line 1874
    if-eqz v9, :cond_1

    #@60
    iget-object v12, v5, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mvnoType:Ljava/lang/String;

    #@62
    .line 1875
    iget-object v13, v5, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mvnoMatchData:Ljava/lang/String;

    #@64
    .line 1874
    invoke-static {v9, v12, v13}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mvnoMatches(Lcom/android/internal/telephony/uicc/IccRecords;Ljava/lang/String;Ljava/lang/String;)Z

    #@67
    move-result v12

    #@68
    if-eqz v12, :cond_1

    #@6a
    .line 1879
    return-object v5

    #@6b
    .line 1870
    .end local v8    # "operator":Ljava/lang/String;
    :cond_2
    const-string/jumbo v8, ""

    #@6e
    .restart local v8    # "operator":Ljava/lang/String;
    goto :goto_0

    #@6f
    .line 1881
    :cond_3
    iget-boolean v12, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mMvnoMatched:Z

    #@71
    if-nez v12, :cond_1

    #@73
    .line 1883
    return-object v5

    #@74
    .line 1888
    .end local v5    # "dunSetting":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    .end local v8    # "operator":Ljava/lang/String;
    :cond_4
    iget-object v12, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    #@76
    invoke-virtual {v12}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    #@79
    move-result-object v4

    #@7a
    .line 1889
    .local v4, "c":Landroid/content/Context;
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@7d
    move-result-object v12

    #@7e
    const v13, 0x107001a

    #@81
    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    #@84
    move-result-object v1

    #@85
    .line 1890
    .local v1, "apnArrayData":[Ljava/lang/String;
    array-length v12, v1

    #@86
    .end local v10    # "retDunSetting":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    :goto_1
    if-ge v11, v12, :cond_8

    #@88
    aget-object v0, v1, v11

    #@8a
    .line 1891
    .local v0, "apn":Ljava/lang/String;
    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->fromString(Ljava/lang/String;)Lcom/android/internal/telephony/dataconnection/ApnSetting;

    #@8d
    move-result-object v5

    #@8e
    .line 1892
    .restart local v5    # "dunSetting":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    if-eqz v5, :cond_5

    #@90
    .line 1893
    iget v13, v5, Lcom/android/internal/telephony/dataconnection/ApnSetting;->bearerBitmask:I

    #@92
    invoke-static {v13, v3}, Landroid/telephony/ServiceState;->bitmaskHasTech(II)Z

    #@95
    move-result v13

    #@96
    if-nez v13, :cond_6

    #@98
    .line 1890
    :cond_5
    :goto_2
    add-int/lit8 v11, v11, 0x1

    #@9a
    goto :goto_1

    #@9b
    .line 1894
    :cond_6
    invoke-virtual {v5}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->hasMvnoParams()Z

    #@9e
    move-result v13

    #@9f
    if-eqz v13, :cond_7

    #@a1
    .line 1895
    if-eqz v9, :cond_5

    #@a3
    iget-object v13, v5, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mvnoType:Ljava/lang/String;

    #@a5
    .line 1896
    iget-object v14, v5, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mvnoMatchData:Ljava/lang/String;

    #@a7
    .line 1895
    invoke-static {v9, v13, v14}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mvnoMatches(Lcom/android/internal/telephony/uicc/IccRecords;Ljava/lang/String;Ljava/lang/String;)Z

    #@aa
    move-result v13

    #@ab
    if-eqz v13, :cond_5

    #@ad
    .line 1900
    return-object v5

    #@ae
    .line 1902
    :cond_7
    iget-boolean v13, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mMvnoMatched:Z

    #@b0
    if-nez v13, :cond_5

    #@b2
    .line 1903
    move-object v10, v5

    #@b3
    .local v10, "retDunSetting":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    goto :goto_2

    #@b4
    .line 1909
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
    .line 1119
    const-string/jumbo v0, "finalize"

    #@3
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@6
    .line 1118
    return-void
.end method

.method public getActiveApnString(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "apnType"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1225
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    #@3
    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Lcom/android/internal/telephony/dataconnection/ApnContext;

    #@9
    .line 1226
    .local v0, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    if-eqz v0, :cond_0

    #@b
    .line 1227
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnSetting()Lcom/android/internal/telephony/dataconnection/ApnSetting;

    #@e
    move-result-object v1

    #@f
    .line 1228
    .local v1, "apnSetting":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    if-eqz v1, :cond_0

    #@11
    .line 1229
    iget-object v2, v1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->apn:Ljava/lang/String;

    #@13
    return-object v2

    #@14
    .line 1232
    .end local v1    # "apnSetting":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    :cond_0
    return-object v3
.end method

.method public getActiveApnTypes()[Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 1210
    const-string/jumbo v3, "get all active apn types"

    #@3
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@6
    .line 1211
    new-instance v2, Ljava/util/ArrayList;

    #@8
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@b
    .line 1213
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
    .line 1214
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
    .line 1215
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    #@32
    move-result-object v3

    #@33
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@36
    goto :goto_0

    #@37
    .line 1219
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
    .line 942
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
    .line 1306
    invoke-direct {p0, v5}, Lcom/android/internal/telephony/dataconnection/DcTracker;->isDataEnabled(Z)Z

    #@5
    move-result v3

    #@6
    if-nez v3, :cond_0

    #@8
    return v4

    #@9
    .line 1307
    :cond_0
    new-instance v2, Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReason;

    #@b
    invoke-direct {v2}, Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReason;-><init>()V

    #@e
    .line 1308
    .local v2, "failureReason":Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReason;
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->isDataAllowed(Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReason;)Z

    #@11
    move-result v3

    #@12
    if-nez v3, :cond_1

    #@14
    .line 1309
    invoke-virtual {v2}, Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReason;->getDataAllowFailReason()Ljava/lang/String;

    #@17
    move-result-object v3

    #@18
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@1b
    .line 1310
    return v4

    #@1c
    .line 1312
    :cond_1
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    #@1e
    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    #@21
    move-result-object v3

    #@22
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@25
    move-result-object v1

    #@26
    .local v1, "apnContext$iterator":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@29
    move-result v3

    #@2a
    if-eqz v3, :cond_3

    #@2c
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@2f
    move-result-object v0

    #@30
    check-cast v0, Lcom/android/internal/telephony/dataconnection/ApnContext;

    #@32
    .line 1315
    .local v0, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->isDataAllowedForApn(Lcom/android/internal/telephony/dataconnection/ApnContext;)Z

    #@35
    move-result v3

    #@36
    if-eqz v3, :cond_2

    #@38
    .line 1316
    return v5

    #@39
    .line 1319
    .end local v0    # "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    :cond_3
    return v4
.end method

.method public getAnyDataEnabled(Z)Z
    .locals 5
    .param p1, "checkUserDataEnabled"    # Z

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 1323
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->isDataEnabled(Z)Z

    #@4
    move-result v3

    #@5
    if-nez v3, :cond_0

    #@7
    return v4

    #@8
    .line 1325
    :cond_0
    new-instance v2, Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReason;

    #@a
    invoke-direct {v2}, Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReason;-><init>()V

    #@d
    .line 1326
    .local v2, "failureReason":Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReason;
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->isDataAllowed(Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReason;)Z

    #@10
    move-result v3

    #@11
    if-nez v3, :cond_1

    #@13
    .line 1327
    invoke-virtual {v2}, Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReason;->getDataAllowFailReason()Ljava/lang/String;

    #@16
    move-result-object v3

    #@17
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@1a
    .line 1328
    return v4

    #@1b
    .line 1330
    :cond_1
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    #@1d
    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    #@20
    move-result-object v3

    #@21
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@24
    move-result-object v1

    #@25
    .local v1, "apnContext$iterator":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@28
    move-result v3

    #@29
    if-eqz v3, :cond_3

    #@2b
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@2e
    move-result-object v0

    #@2f
    check-cast v0, Lcom/android/internal/telephony/dataconnection/ApnContext;

    #@31
    .line 1333
    .local v0, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->isDataAllowedForApn(Lcom/android/internal/telephony/dataconnection/ApnContext;)Z

    #@34
    move-result v3

    #@35
    if-eqz v3, :cond_2

    #@37
    .line 1334
    const/4 v3, 0x1

    #@38
    return v3

    #@39
    .line 1337
    .end local v0    # "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    :cond_3
    return v4
.end method

.method public getApnPriority(Ljava/lang/String;)I
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1017
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    #@2
    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/android/internal/telephony/dataconnection/ApnContext;

    #@8
    .line 1018
    .local v0, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    if-nez v0, :cond_0

    #@a
    .line 1019
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
    .line 1021
    :cond_0
    iget v1, v0, Lcom/android/internal/telephony/dataconnection/ApnContext;->priority:I

    #@23
    return v1
.end method

.method public getAutoAttachOnCreation()Z
    .locals 1

    #@0
    .prologue
    .line 2389
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
    .line 2660
    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mResolver:Landroid/content/ContentResolver;

    #@4
    const-string/jumbo v9, "device_provisioned"

    #@7
    invoke-static {v6, v9, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    #@a
    move-result v0

    #@b
    .line 2662
    .local v0, "device_provisioned":I
    const-string/jumbo v6, "true"

    #@e
    .line 2663
    const-string/jumbo v9, "ro.com.android.mobiledata"

    #@11
    const-string/jumbo v10, "true"

    #@14
    .line 2662
    invoke-static {v9, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@17
    move-result-object v9

    #@18
    invoke-virtual {v6, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@1b
    move-result v5

    #@1c
    .line 2664
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
    .line 2665
    iget-object v9, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mResolver:Landroid/content/ContentResolver;

    #@28
    const-string/jumbo v10, "mobile_data"

    #@2b
    .line 2666
    if-eqz v5, :cond_1

    #@2d
    move v6, v7

    #@2e
    .line 2665
    :goto_0
    invoke-static {v9, v10, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    #@31
    move-result v6

    #@32
    if-eqz v6, :cond_2

    #@34
    const/4 v5, 0x1

    #@35
    .line 2677
    .end local v5    # "retVal":Z
    :goto_1
    if-nez v0, :cond_0

    #@37
    .line 2683
    const-string/jumbo v9, "ro.com.android.prov_mobiledata"

    #@3a
    .line 2684
    if-eqz v5, :cond_5

    #@3c
    const-string/jumbo v6, "true"

    #@3f
    .line 2683
    :goto_2
    invoke-static {v9, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@42
    move-result-object v4

    #@43
    .line 2685
    .local v4, "prov_property":Ljava/lang/String;
    const-string/jumbo v6, "true"

    #@46
    invoke-virtual {v6, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@49
    move-result v5

    #@4a
    .line 2687
    .restart local v5    # "retVal":Z
    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mResolver:Landroid/content/ContentResolver;

    #@4c
    .line 2688
    const-string/jumbo v9, "device_provisioning_mobile_data"

    #@4f
    .line 2689
    if-eqz v5, :cond_6

    #@51
    .line 2687
    :goto_3
    invoke-static {v6, v9, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    #@54
    move-result v3

    #@55
    .line 2690
    .local v3, "prov_mobile_data":I
    if-eqz v3, :cond_7

    #@57
    const/4 v5, 0x1

    #@58
    .line 2691
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
    .line 2692
    const-string/jumbo v7, ", "

    #@76
    .line 2691
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@79
    move-result-object v6

    #@7a
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@7d
    move-result-object v6

    #@7e
    .line 2692
    const-string/jumbo v7, ")"

    #@81
    .line 2691
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
    .line 2695
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
    .line 2666
    goto :goto_0

    #@8f
    .line 2665
    :cond_2
    const/4 v5, 0x0

    #@90
    .local v5, "retVal":Z
    goto :goto_1

    #@91
    .line 2668
    .local v5, "retVal":Z
    :cond_3
    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    #@93
    invoke-virtual {v6}, Lcom/android/internal/telephony/Phone;->getSubId()I

    #@96
    move-result v2

    #@97
    .line 2670
    .local v2, "phoneSubId":I
    :try_start_0
    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mResolver:Landroid/content/ContentResolver;

    #@99
    .line 2671
    const-string/jumbo v9, "mobile_data"

    #@9c
    .line 2670
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
    .line 2684
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
    .line 2689
    goto :goto_3

    #@ac
    .line 2690
    .restart local v3    # "prov_mobile_data":I
    :cond_7
    const/4 v5, 0x0

    #@ad
    .local v5, "retVal":Z
    goto :goto_4

    #@ae
    .line 2672
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
    .line 2732
    const-string/jumbo v5, "true"

    #@5
    .line 2733
    const-string/jumbo v6, "ro.com.android.dataroaming"

    #@8
    const-string/jumbo v7, "false"

    #@b
    .line 2732
    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@e
    move-result-object v6

    #@f
    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@12
    move-result v0

    #@13
    .line 2734
    .local v0, "isDataRoamingEnabled":Z
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    #@15
    invoke-virtual {v5}, Lcom/android/internal/telephony/Phone;->getSubId()I

    #@18
    move-result v1

    #@19
    .line 2738
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
    .line 2739
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mResolver:Landroid/content/ContentResolver;

    #@25
    .line 2740
    const-string/jumbo v6, "data_roaming"

    #@28
    if-eqz v0, :cond_0

    #@2a
    .line 2739
    :goto_0
    invoke-static {v5, v6, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    #@2d
    move-result v3

    #@2e
    if-eqz v3, :cond_1

    #@30
    const/4 v0, 0x1

    #@31
    .line 2752
    .end local v0    # "isDataRoamingEnabled":Z
    :goto_1
    return v0

    #@32
    .restart local v0    # "isDataRoamingEnabled":Z
    :cond_0
    move v3, v4

    #@33
    .line 2740
    goto :goto_0

    #@34
    .line 2739
    :cond_1
    const/4 v0, 0x0

    #@35
    .local v0, "isDataRoamingEnabled":Z
    goto :goto_1

    #@36
    .line 2742
    .local v0, "isDataRoamingEnabled":Z
    :cond_2
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mResolver:Landroid/content/ContentResolver;

    #@38
    .line 2743
    const-string/jumbo v4, "data_roaming"

    #@3b
    .line 2742
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
    .line 2745
    .local v0, "isDataRoamingEnabled":Z
    :catch_0
    move-exception v2

    #@46
    .line 2746
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
    .line 1181
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    #@2
    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/android/internal/telephony/dataconnection/ApnContext;

    #@8
    .line 1182
    .local v0, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    if-eqz v0, :cond_0

    #@a
    .line 1183
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getDcAc()Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;

    #@d
    move-result-object v1

    #@e
    .line 1184
    .local v1, "dcac":Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;
    if-eqz v1, :cond_0

    #@10
    .line 1185
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
    .line 1186
    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->getLinkPropertiesSync()Landroid/net/LinkProperties;

    #@2a
    move-result-object v2

    #@2b
    return-object v2

    #@2c
    .line 1189
    .end local v1    # "dcac":Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;
    :cond_0
    const-string/jumbo v2, "return new LinkProperties"

    #@2f
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@32
    .line 1190
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
    .line 1194
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    #@2
    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/android/internal/telephony/dataconnection/ApnContext;

    #@8
    .line 1195
    .local v0, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    if-eqz v0, :cond_0

    #@a
    .line 1196
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getDcAc()Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;

    #@d
    move-result-object v1

    #@e
    .line 1197
    .local v1, "dataConnectionAc":Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;
    if-eqz v1, :cond_0

    #@10
    .line 1199
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
    .line 1201
    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->getNetworkCapabilitiesSync()Landroid/net/NetworkCapabilities;

    #@2a
    move-result-object v2

    #@2b
    return-object v2

    #@2c
    .line 1204
    .end local v1    # "dataConnectionAc":Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;
    :cond_0
    const-string/jumbo v2, "return new NetworkCapabilities"

    #@2f
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@32
    .line 1205
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
    .line 1255
    const/4 v3, 0x0

    #@1
    .line 1256
    .local v3, "isConnecting":Z
    const/4 v4, 0x1

    #@2
    .line 1257
    .local v4, "isFailed":Z
    const/4 v2, 0x0

    #@3
    .line 1259
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
    .line 1260
    .local v0, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->isEnabled()Z

    #@1c
    move-result v5

    #@1d
    if-eqz v5, :cond_0

    #@1f
    .line 1261
    const/4 v2, 0x1

    #@20
    .line 1262
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
    .line 1277
    :pswitch_0
    const/4 v2, 0x1

    #@32
    .line 1278
    goto :goto_0

    #@33
    .line 1266
    :pswitch_1
    sget-object v5, Lcom/android/internal/telephony/DctConstants$State;->CONNECTED:Lcom/android/internal/telephony/DctConstants$State;

    #@35
    return-object v5

    #@36
    .line 1269
    :pswitch_2
    const/4 v3, 0x1

    #@37
    .line 1270
    const/4 v4, 0x0

    #@38
    .line 1271
    goto :goto_0

    #@39
    .line 1274
    :pswitch_3
    const/4 v4, 0x0

    #@3a
    .line 1275
    goto :goto_0

    #@3b
    .line 1283
    .end local v0    # "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    :cond_1
    if-nez v2, :cond_2

    #@3d
    .line 1285
    sget-object v5, Lcom/android/internal/telephony/DctConstants$State;->IDLE:Lcom/android/internal/telephony/DctConstants$State;

    #@3f
    return-object v5

    #@40
    .line 1288
    :cond_2
    if-eqz v3, :cond_3

    #@42
    .line 1290
    sget-object v5, Lcom/android/internal/telephony/DctConstants$State;->CONNECTING:Lcom/android/internal/telephony/DctConstants$State;

    #@44
    return-object v5

    #@45
    .line 1291
    :cond_3
    if-nez v4, :cond_4

    #@47
    .line 1293
    sget-object v5, Lcom/android/internal/telephony/DctConstants$State;->IDLE:Lcom/android/internal/telephony/DctConstants$State;

    #@49
    return-object v5

    #@4a
    .line 1296
    :cond_4
    sget-object v5, Lcom/android/internal/telephony/DctConstants$State;->FAILED:Lcom/android/internal/telephony/DctConstants$State;

    #@4c
    return-object v5

    #@4d
    .line 1262
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
    .line 4371
    const-string/jumbo v4, "getPcscfAddress()"

    #@4
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@7
    .line 4372
    const/4 v0, 0x0

    #@8
    .line 4374
    .local v0, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    if-nez p1, :cond_0

    #@a
    .line 4375
    const-string/jumbo v4, "apnType is null, return null"

    #@d
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@10
    .line 4376
    return-object v6

    #@11
    .line 4379
    :cond_0
    const-string/jumbo v4, "emergency"

    #@14
    invoke-static {p1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    #@17
    move-result v4

    #@18
    if-eqz v4, :cond_1

    #@1a
    .line 4380
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
    .line 4388
    .local v0, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    :goto_0
    if-nez v0, :cond_3

    #@26
    .line 4389
    const-string/jumbo v4, "apnContext is null, return null"

    #@29
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@2c
    .line 4390
    return-object v6

    #@2d
    .line 4381
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
    .line 4382
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
    .line 4384
    .local v0, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    :cond_2
    const-string/jumbo v4, "apnType is invalid, return null"

    #@43
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@46
    .line 4385
    return-object v6

    #@47
    .line 4393
    .local v0, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    :cond_3
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getDcAc()Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;

    #@4a
    move-result-object v1

    #@4b
    .line 4394
    .local v1, "dcac":Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;
    const/4 v3, 0x0

    #@4c
    .line 4396
    .local v3, "result":[Ljava/lang/String;
    if-eqz v1, :cond_5

    #@4e
    .line 4397
    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->getPcscfAddr()[Ljava/lang/String;

    #@51
    move-result-object v3

    #@52
    .line 4399
    .local v3, "result":[Ljava/lang/String;
    const/4 v2, 0x0

    #@53
    .local v2, "i":I
    :goto_1
    array-length v4, v3

    #@54
    if-ge v2, v4, :cond_4

    #@56
    .line 4400
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
    .line 4399
    add-int/lit8 v2, v2, 0x1

    #@7c
    goto :goto_1

    #@7d
    .line 4402
    :cond_4
    return-object v3

    #@7e
    .line 4404
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
    .line 1237
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    #@2
    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/android/internal/telephony/dataconnection/ApnContext;

    #@8
    .line 1238
    .local v0, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    if-eqz v0, :cond_0

    #@a
    .line 1239
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getState()Lcom/android/internal/telephony/DctConstants$State;

    #@d
    move-result-object v1

    #@e
    return-object v1

    #@f
    .line 1241
    :cond_0
    sget-object v1, Lcom/android/internal/telephony/DctConstants$State;->FAILED:Lcom/android/internal/telephony/DctConstants$State;

    #@11
    return-object v1
.end method

.method public getSubId()J
    .locals 2

    #@0
    .prologue
    .line 938
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
    .locals 21
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 3696
    move-object/from16 v0, p1

    #@2
    iget v0, v0, Landroid/os/Message;->what:I

    #@4
    move/from16 v18, v0

    #@6
    sparse-switch v18, :sswitch_data_0

    #@9
    .line 4032
    const-string/jumbo v18, "DcTracker"

    #@c
    new-instance v19, Ljava/lang/StringBuilder;

    #@e
    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    #@11
    const-string/jumbo v20, "Unhandled event="

    #@14
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v19

    #@18
    move-object/from16 v0, v19

    #@1a
    move-object/from16 v1, p1

    #@1c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v19

    #@20
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@23
    move-result-object v19

    #@24
    invoke-static/range {v18 .. v19}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@27
    .line 3693
    :cond_0
    :goto_0
    :sswitch_0
    return-void

    #@28
    .line 3700
    :sswitch_1
    move-object/from16 v0, p0

    #@2a
    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    #@2c
    move-object/from16 v18, v0

    #@2e
    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/Phone;->getSubId()I

    #@31
    move-result v15

    #@32
    .line 3701
    .local v15, "subId":I
    invoke-static {v15}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    #@35
    move-result v18

    #@36
    if-eqz v18, :cond_1

    #@38
    .line 3702
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->onRecordsLoadedOrSubIdChanged()V

    #@3b
    goto :goto_0

    #@3c
    .line 3704
    :cond_1
    new-instance v18, Ljava/lang/StringBuilder;

    #@3e
    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    #@41
    const-string/jumbo v19, "Ignoring EVENT_RECORDS_LOADED as subId is not valid: "

    #@44
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v18

    #@48
    move-object/from16 v0, v18

    #@4a
    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v18

    #@4e
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@51
    move-result-object v18

    #@52
    move-object/from16 v0, p0

    #@54
    move-object/from16 v1, v18

    #@56
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@59
    goto :goto_0

    #@5a
    .line 3709
    .end local v15    # "subId":I
    :sswitch_2
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->onDataConnectionDetached()V

    #@5d
    goto :goto_0

    #@5e
    .line 3713
    :sswitch_3
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->onDataConnectionAttached()V

    #@61
    goto :goto_0

    #@62
    .line 3717
    :sswitch_4
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->doRecovery()V

    #@65
    goto :goto_0

    #@66
    .line 3721
    :sswitch_5
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->onApnChanged()V

    #@69
    goto :goto_0

    #@6a
    .line 3731
    :sswitch_6
    new-instance v18, Ljava/lang/StringBuilder;

    #@6c
    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    #@6f
    const-string/jumbo v19, "EVENT_PS_RESTRICT_ENABLED "

    #@72
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@75
    move-result-object v18

    #@76
    move-object/from16 v0, p0

    #@78
    iget-boolean v0, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mIsPsRestricted:Z

    #@7a
    move/from16 v19, v0

    #@7c
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@7f
    move-result-object v18

    #@80
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@83
    move-result-object v18

    #@84
    move-object/from16 v0, p0

    #@86
    move-object/from16 v1, v18

    #@88
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@8b
    .line 3732
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->stopNetStatPoll()V

    #@8e
    .line 3733
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->stopDataStallAlarm()V

    #@91
    .line 3734
    const/16 v18, 0x1

    #@93
    move/from16 v0, v18

    #@95
    move-object/from16 v1, p0

    #@97
    iput-boolean v0, v1, Lcom/android/internal/telephony/dataconnection/DcTracker;->mIsPsRestricted:Z

    #@99
    goto :goto_0

    #@9a
    .line 3742
    :sswitch_7
    new-instance v18, Ljava/lang/StringBuilder;

    #@9c
    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    #@9f
    const-string/jumbo v19, "EVENT_PS_RESTRICT_DISABLED "

    #@a2
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a5
    move-result-object v18

    #@a6
    move-object/from16 v0, p0

    #@a8
    iget-boolean v0, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mIsPsRestricted:Z

    #@aa
    move/from16 v19, v0

    #@ac
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@af
    move-result-object v18

    #@b0
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b3
    move-result-object v18

    #@b4
    move-object/from16 v0, p0

    #@b6
    move-object/from16 v1, v18

    #@b8
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@bb
    .line 3743
    const/16 v18, 0x0

    #@bd
    move/from16 v0, v18

    #@bf
    move-object/from16 v1, p0

    #@c1
    iput-boolean v0, v1, Lcom/android/internal/telephony/dataconnection/DcTracker;->mIsPsRestricted:Z

    #@c3
    .line 3744
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->isConnected()Z

    #@c6
    move-result v18

    #@c7
    if-eqz v18, :cond_2

    #@c9
    .line 3745
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->startNetStatPoll()V

    #@cc
    .line 3746
    const/16 v18, 0x0

    #@ce
    move-object/from16 v0, p0

    #@d0
    move/from16 v1, v18

    #@d2
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->startDataStallAlarm(Z)V

    #@d5
    goto/16 :goto_0

    #@d7
    .line 3749
    :cond_2
    move-object/from16 v0, p0

    #@d9
    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mState:Lcom/android/internal/telephony/DctConstants$State;

    #@db
    move-object/from16 v18, v0

    #@dd
    sget-object v19, Lcom/android/internal/telephony/DctConstants$State;->FAILED:Lcom/android/internal/telephony/DctConstants$State;

    #@df
    move-object/from16 v0, v18

    #@e1
    move-object/from16 v1, v19

    #@e3
    if-ne v0, v1, :cond_3

    #@e5
    .line 3750
    const-string/jumbo v18, "psRestrictEnabled"

    #@e8
    const/16 v19, 0x0

    #@ea
    move-object/from16 v0, p0

    #@ec
    move/from16 v1, v19

    #@ee
    move-object/from16 v2, v18

    #@f0
    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->cleanUpAllConnections(ZLjava/lang/String;)Z

    #@f3
    .line 3751
    const/16 v18, 0x0

    #@f5
    move/from16 v0, v18

    #@f7
    move-object/from16 v1, p0

    #@f9
    iput-boolean v0, v1, Lcom/android/internal/telephony/dataconnection/DcTracker;->mReregisterOnReconnectFailure:Z

    #@fb
    .line 3753
    :cond_3
    move-object/from16 v0, p0

    #@fd
    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mApnContextsById:Landroid/util/SparseArray;

    #@ff
    move-object/from16 v18, v0

    #@101
    const/16 v19, 0x0

    #@103
    invoke-virtual/range {v18 .. v19}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@106
    move-result-object v4

    #@107
    check-cast v4, Lcom/android/internal/telephony/dataconnection/ApnContext;

    #@109
    .line 3754
    .local v4, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    if-eqz v4, :cond_4

    #@10b
    .line 3755
    const-string/jumbo v18, "psRestrictEnabled"

    #@10e
    move-object/from16 v0, v18

    #@110
    invoke-virtual {v4, v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setReason(Ljava/lang/String;)V

    #@113
    .line 3756
    move-object/from16 v0, p0

    #@115
    invoke-direct {v0, v4}, Lcom/android/internal/telephony/dataconnection/DcTracker;->trySetupData(Lcom/android/internal/telephony/dataconnection/ApnContext;)Z

    #@118
    goto/16 :goto_0

    #@11a
    .line 3758
    :cond_4
    const-string/jumbo v18, "**** Default ApnContext not found ****"

    #@11d
    move-object/from16 v0, p0

    #@11f
    move-object/from16 v1, v18

    #@121
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->loge(Ljava/lang/String;)V

    #@124
    .line 3759
    sget-boolean v18, Landroid/os/Build;->IS_DEBUGGABLE:Z

    #@126
    if-eqz v18, :cond_0

    #@128
    .line 3760
    new-instance v18, Ljava/lang/RuntimeException;

    #@12a
    const-string/jumbo v19, "Default ApnContext not found"

    #@12d
    invoke-direct/range {v18 .. v19}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@130
    throw v18

    #@131
    .line 3767
    .end local v4    # "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    :sswitch_8
    move-object/from16 v0, p1

    #@133
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@135
    move-object/from16 v18, v0

    #@137
    move-object/from16 v0, v18

    #@139
    instance-of v0, v0, Lcom/android/internal/telephony/dataconnection/ApnContext;

    #@13b
    move/from16 v18, v0

    #@13d
    if-eqz v18, :cond_5

    #@13f
    .line 3768
    move-object/from16 v0, p1

    #@141
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@143
    move-object/from16 v18, v0

    #@145
    check-cast v18, Lcom/android/internal/telephony/dataconnection/ApnContext;

    #@147
    move-object/from16 v0, p0

    #@149
    move-object/from16 v1, v18

    #@14b
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->onTrySetupData(Lcom/android/internal/telephony/dataconnection/ApnContext;)Z

    #@14e
    goto/16 :goto_0

    #@150
    .line 3769
    :cond_5
    move-object/from16 v0, p1

    #@152
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@154
    move-object/from16 v18, v0

    #@156
    move-object/from16 v0, v18

    #@158
    instance-of v0, v0, Ljava/lang/String;

    #@15a
    move/from16 v18, v0

    #@15c
    if-eqz v18, :cond_6

    #@15e
    .line 3770
    move-object/from16 v0, p1

    #@160
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@162
    move-object/from16 v18, v0

    #@164
    check-cast v18, Ljava/lang/String;

    #@166
    move-object/from16 v0, p0

    #@168
    move-object/from16 v1, v18

    #@16a
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->onTrySetupData(Ljava/lang/String;)Z

    #@16d
    goto/16 :goto_0

    #@16f
    .line 3772
    :cond_6
    const-string/jumbo v18, "EVENT_TRY_SETUP request w/o apnContext or String"

    #@172
    move-object/from16 v0, p0

    #@174
    move-object/from16 v1, v18

    #@176
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->loge(Ljava/lang/String;)V

    #@179
    goto/16 :goto_0

    #@17b
    .line 3777
    :sswitch_9
    move-object/from16 v0, p1

    #@17d
    iget v0, v0, Landroid/os/Message;->arg1:I

    #@17f
    move/from16 v18, v0

    #@181
    if-nez v18, :cond_7

    #@183
    const/16 v16, 0x0

    #@185
    .line 3778
    .local v16, "tearDown":Z
    :goto_1
    new-instance v18, Ljava/lang/StringBuilder;

    #@187
    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    #@18a
    const-string/jumbo v19, "EVENT_CLEAN_UP_CONNECTION tearDown="

    #@18d
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@190
    move-result-object v18

    #@191
    move-object/from16 v0, v18

    #@193
    move/from16 v1, v16

    #@195
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@198
    move-result-object v18

    #@199
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@19c
    move-result-object v18

    #@19d
    move-object/from16 v0, p0

    #@19f
    move-object/from16 v1, v18

    #@1a1
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@1a4
    .line 3779
    move-object/from16 v0, p1

    #@1a6
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@1a8
    move-object/from16 v18, v0

    #@1aa
    move-object/from16 v0, v18

    #@1ac
    instance-of v0, v0, Lcom/android/internal/telephony/dataconnection/ApnContext;

    #@1ae
    move/from16 v18, v0

    #@1b0
    if-eqz v18, :cond_8

    #@1b2
    .line 3780
    move-object/from16 v0, p1

    #@1b4
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@1b6
    move-object/from16 v18, v0

    #@1b8
    check-cast v18, Lcom/android/internal/telephony/dataconnection/ApnContext;

    #@1ba
    move-object/from16 v0, p0

    #@1bc
    move/from16 v1, v16

    #@1be
    move-object/from16 v2, v18

    #@1c0
    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->cleanUpConnection(ZLcom/android/internal/telephony/dataconnection/ApnContext;)V

    #@1c3
    goto/16 :goto_0

    #@1c5
    .line 3777
    .end local v16    # "tearDown":Z
    :cond_7
    const/16 v16, 0x1

    #@1c7
    .restart local v16    # "tearDown":Z
    goto :goto_1

    #@1c8
    .line 3782
    :cond_8
    move-object/from16 v0, p1

    #@1ca
    iget v0, v0, Landroid/os/Message;->arg2:I

    #@1cc
    move/from16 v19, v0

    #@1ce
    move-object/from16 v0, p1

    #@1d0
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@1d2
    move-object/from16 v18, v0

    #@1d4
    check-cast v18, Ljava/lang/String;

    #@1d6
    move-object/from16 v0, p0

    #@1d8
    move/from16 v1, v16

    #@1da
    move/from16 v2, v19

    #@1dc
    move-object/from16 v3, v18

    #@1de
    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/dataconnection/DcTracker;->onCleanUpConnection(ZILjava/lang/String;)V

    #@1e1
    goto/16 :goto_0

    #@1e3
    .line 3786
    .end local v16    # "tearDown":Z
    :sswitch_a
    move-object/from16 v0, p1

    #@1e5
    iget v0, v0, Landroid/os/Message;->arg1:I

    #@1e7
    move/from16 v18, v0

    #@1e9
    const/16 v19, 0x1

    #@1eb
    move/from16 v0, v18

    #@1ed
    move/from16 v1, v19

    #@1ef
    if-ne v0, v1, :cond_9

    #@1f1
    const/4 v11, 0x1

    #@1f2
    .line 3787
    .local v11, "enabled":Z
    :goto_2
    move-object/from16 v0, p1

    #@1f4
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@1f6
    move-object/from16 v18, v0

    #@1f8
    check-cast v18, Landroid/os/Message;

    #@1fa
    move-object/from16 v0, p0

    #@1fc
    move-object/from16 v1, v18

    #@1fe
    invoke-direct {v0, v11, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->onSetInternalDataEnabled(ZLandroid/os/Message;)V

    #@201
    goto/16 :goto_0

    #@203
    .line 3786
    .end local v11    # "enabled":Z
    :cond_9
    const/4 v11, 0x0

    #@204
    .restart local v11    # "enabled":Z
    goto :goto_2

    #@205
    .line 3791
    .end local v11    # "enabled":Z
    :sswitch_b
    move-object/from16 v0, p1

    #@207
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@209
    move-object/from16 v18, v0

    #@20b
    if-eqz v18, :cond_a

    #@20d
    move-object/from16 v0, p1

    #@20f
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@211
    move-object/from16 v18, v0

    #@213
    move-object/from16 v0, v18

    #@215
    instance-of v0, v0, Ljava/lang/String;

    #@217
    move/from16 v18, v0

    #@219
    if-nez v18, :cond_a

    #@21b
    .line 3792
    const/16 v18, 0x0

    #@21d
    move-object/from16 v0, v18

    #@21f
    move-object/from16 v1, p1

    #@221
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@223
    .line 3794
    :cond_a
    move-object/from16 v0, p1

    #@225
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@227
    move-object/from16 v18, v0

    #@229
    check-cast v18, Ljava/lang/String;

    #@22b
    move-object/from16 v0, p0

    #@22d
    move-object/from16 v1, v18

    #@22f
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->onCleanUpAllConnections(Ljava/lang/String;)V

    #@232
    goto/16 :goto_0

    #@234
    .line 3799
    :sswitch_c
    const-string/jumbo v18, "nwTypeChanged"

    #@237
    .line 3800
    sget-object v19, Lcom/android/internal/telephony/dataconnection/DcTracker$RetryFailures;->ONLY_ON_CHANGE:Lcom/android/internal/telephony/dataconnection/DcTracker$RetryFailures;

    #@239
    .line 3799
    move-object/from16 v0, p0

    #@23b
    move-object/from16 v1, v18

    #@23d
    move-object/from16 v2, v19

    #@23f
    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->setupDataOnConnectableApns(Ljava/lang/String;Lcom/android/internal/telephony/dataconnection/DcTracker$RetryFailures;)V

    #@242
    goto/16 :goto_0

    #@244
    .line 3805
    :sswitch_d
    move-object/from16 v0, p0

    #@246
    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mProvisioningSpinner:Landroid/app/ProgressDialog;

    #@248
    move-object/from16 v18, v0

    #@24a
    move-object/from16 v0, p1

    #@24c
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@24e
    move-object/from16 v19, v0

    #@250
    move-object/from16 v0, v18

    #@252
    move-object/from16 v1, v19

    #@254
    if-ne v0, v1, :cond_0

    #@256
    .line 3806
    move-object/from16 v0, p0

    #@258
    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mProvisioningSpinner:Landroid/app/ProgressDialog;

    #@25a
    move-object/from16 v18, v0

    #@25c
    invoke-virtual/range {v18 .. v18}, Landroid/app/ProgressDialog;->dismiss()V

    #@25f
    .line 3807
    const/16 v18, 0x0

    #@261
    move-object/from16 v0, v18

    #@263
    move-object/from16 v1, p0

    #@265
    iput-object v0, v1, Lcom/android/internal/telephony/dataconnection/DcTracker;->mProvisioningSpinner:Landroid/app/ProgressDialog;

    #@267
    goto/16 :goto_0

    #@269
    .line 3811
    :sswitch_e
    new-instance v18, Ljava/lang/StringBuilder;

    #@26b
    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    #@26e
    const-string/jumbo v19, "DISCONNECTED_CONNECTED: msg="

    #@271
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@274
    move-result-object v18

    #@275
    move-object/from16 v0, v18

    #@277
    move-object/from16 v1, p1

    #@279
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@27c
    move-result-object v18

    #@27d
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@280
    move-result-object v18

    #@281
    move-object/from16 v0, p0

    #@283
    move-object/from16 v1, v18

    #@285
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@288
    .line 3812
    move-object/from16 v0, p1

    #@28a
    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@28c
    check-cast v9, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;

    #@28e
    .line 3813
    .local v9, "dcac":Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;
    move-object/from16 v0, p0

    #@290
    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDataConnectionAcHashMap:Ljava/util/HashMap;

    #@292
    move-object/from16 v18, v0

    #@294
    invoke-virtual {v9}, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->getDataConnectionIdSync()I

    #@297
    move-result v19

    #@298
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@29b
    move-result-object v19

    #@29c
    invoke-virtual/range {v18 .. v19}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@29f
    .line 3814
    invoke-virtual {v9}, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->disconnected()V

    #@2a2
    goto/16 :goto_0

    #@2a4
    .line 3818
    .end local v9    # "dcac":Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;
    :sswitch_f
    move-object/from16 v0, p1

    #@2a6
    iget v0, v0, Landroid/os/Message;->arg1:I

    #@2a8
    move/from16 v18, v0

    #@2aa
    move-object/from16 v0, p1

    #@2ac
    iget v0, v0, Landroid/os/Message;->arg2:I

    #@2ae
    move/from16 v19, v0

    #@2b0
    move-object/from16 v0, p0

    #@2b2
    move/from16 v1, v18

    #@2b4
    move/from16 v2, v19

    #@2b6
    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->onEnableApn(II)V

    #@2b9
    goto/16 :goto_0

    #@2bb
    .line 3822
    :sswitch_10
    move-object/from16 v0, p1

    #@2bd
    iget v0, v0, Landroid/os/Message;->arg1:I

    #@2bf
    move/from16 v18, v0

    #@2c1
    move-object/from16 v0, p0

    #@2c3
    move/from16 v1, v18

    #@2c5
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->onDataStallAlarm(I)V

    #@2c8
    goto/16 :goto_0

    #@2ca
    .line 3826
    :sswitch_11
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->onRoamingOff()V

    #@2cd
    goto/16 :goto_0

    #@2cf
    .line 3830
    :sswitch_12
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->onRoamingOn()V

    #@2d2
    goto/16 :goto_0

    #@2d4
    .line 3834
    :sswitch_13
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->onDeviceProvisionedChange()V

    #@2d7
    goto/16 :goto_0

    #@2d9
    .line 3838
    :sswitch_14
    move-object/from16 v0, p1

    #@2db
    iget-object v7, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@2dd
    check-cast v7, Landroid/os/AsyncResult;

    #@2df
    .line 3839
    .local v7, "ar":Landroid/os/AsyncResult;
    iget-object v0, v7, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    #@2e1
    move-object/from16 v17, v0

    #@2e3
    check-cast v17, Ljava/lang/String;

    #@2e5
    .line 3840
    .local v17, "url":Ljava/lang/String;
    new-instance v18, Ljava/lang/StringBuilder;

    #@2e7
    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    #@2ea
    const-string/jumbo v19, "dataConnectionTracker.handleMessage: EVENT_REDIRECTION_DETECTED="

    #@2ed
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f0
    move-result-object v18

    #@2f1
    move-object/from16 v0, v18

    #@2f3
    move-object/from16 v1, v17

    #@2f5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f8
    move-result-object v18

    #@2f9
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2fc
    move-result-object v18

    #@2fd
    move-object/from16 v0, p0

    #@2ff
    move-object/from16 v1, v18

    #@301
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@304
    .line 3841
    iget-object v0, v7, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@306
    move-object/from16 v18, v0

    #@308
    check-cast v18, Ljava/util/HashMap;

    #@30a
    move-object/from16 v0, p0

    #@30c
    move-object/from16 v1, v17

    #@30e
    move-object/from16 v2, v18

    #@310
    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->onDataConnectionRedirected(Ljava/lang/String;Ljava/util/HashMap;)V

    #@313
    .line 3844
    .end local v7    # "ar":Landroid/os/AsyncResult;
    .end local v17    # "url":Ljava/lang/String;
    :sswitch_15
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->onRadioAvailable()V

    #@316
    goto/16 :goto_0

    #@318
    .line 3848
    :sswitch_16
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->onRadioOffOrNotAvailable()V

    #@31b
    goto/16 :goto_0

    #@31d
    .line 3852
    :sswitch_17
    move-object/from16 v0, p1

    #@31f
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@321
    move-object/from16 v18, v0

    #@323
    check-cast v18, Landroid/os/AsyncResult;

    #@325
    move-object/from16 v0, p0

    #@327
    move-object/from16 v1, v18

    #@329
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->onDataSetupComplete(Landroid/os/AsyncResult;)V

    #@32c
    goto/16 :goto_0

    #@32e
    .line 3856
    :sswitch_18
    move-object/from16 v0, p1

    #@330
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@332
    move-object/from16 v18, v0

    #@334
    check-cast v18, Landroid/os/AsyncResult;

    #@336
    move-object/from16 v0, p0

    #@338
    move-object/from16 v1, v18

    #@33a
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->onDataSetupCompleteError(Landroid/os/AsyncResult;)V

    #@33d
    goto/16 :goto_0

    #@33f
    .line 3860
    :sswitch_19
    new-instance v18, Ljava/lang/StringBuilder;

    #@341
    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    #@344
    const-string/jumbo v19, "DataConnectionTracker.handleMessage: EVENT_DISCONNECT_DONE msg="

    #@347
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34a
    move-result-object v18

    #@34b
    move-object/from16 v0, v18

    #@34d
    move-object/from16 v1, p1

    #@34f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@352
    move-result-object v18

    #@353
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@356
    move-result-object v18

    #@357
    move-object/from16 v0, p0

    #@359
    move-object/from16 v1, v18

    #@35b
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@35e
    .line 3861
    move-object/from16 v0, p1

    #@360
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@362
    move-object/from16 v18, v0

    #@364
    check-cast v18, Landroid/os/AsyncResult;

    #@366
    move-object/from16 v0, p0

    #@368
    move-object/from16 v1, v18

    #@36a
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->onDisconnectDone(Landroid/os/AsyncResult;)V

    #@36d
    goto/16 :goto_0

    #@36f
    .line 3865
    :sswitch_1a
    new-instance v18, Ljava/lang/StringBuilder;

    #@371
    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    #@374
    const-string/jumbo v19, "DataConnectionTracker.handleMessage: EVENT_DISCONNECT_DC_RETRYING msg="

    #@377
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37a
    move-result-object v18

    #@37b
    move-object/from16 v0, v18

    #@37d
    move-object/from16 v1, p1

    #@37f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@382
    move-result-object v18

    #@383
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@386
    move-result-object v18

    #@387
    move-object/from16 v0, p0

    #@389
    move-object/from16 v1, v18

    #@38b
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@38e
    .line 3866
    move-object/from16 v0, p1

    #@390
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@392
    move-object/from16 v18, v0

    #@394
    check-cast v18, Landroid/os/AsyncResult;

    #@396
    move-object/from16 v0, p0

    #@398
    move-object/from16 v1, v18

    #@39a
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->onDisconnectDcRetrying(Landroid/os/AsyncResult;)V

    #@39d
    goto/16 :goto_0

    #@39f
    .line 3870
    :sswitch_1b
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->onVoiceCallStarted()V

    #@3a2
    goto/16 :goto_0

    #@3a4
    .line 3874
    :sswitch_1c
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->onVoiceCallEnded()V

    #@3a7
    goto/16 :goto_0

    #@3a9
    .line 3878
    :sswitch_1d
    const-string/jumbo v18, "EVENT_RESET_DONE"

    #@3ac
    move-object/from16 v0, p0

    #@3ae
    move-object/from16 v1, v18

    #@3b0
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@3b3
    .line 3879
    move-object/from16 v0, p1

    #@3b5
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@3b7
    move-object/from16 v18, v0

    #@3b9
    check-cast v18, Landroid/os/AsyncResult;

    #@3bb
    move-object/from16 v0, p0

    #@3bd
    move-object/from16 v1, v18

    #@3bf
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->onResetDone(Landroid/os/AsyncResult;)V

    #@3c2
    goto/16 :goto_0

    #@3c4
    .line 3883
    :sswitch_1e
    move-object/from16 v0, p1

    #@3c6
    iget v0, v0, Landroid/os/Message;->arg1:I

    #@3c8
    move/from16 v18, v0

    #@3ca
    const/16 v19, 0x1

    #@3cc
    move/from16 v0, v18

    #@3ce
    move/from16 v1, v19

    #@3d0
    if-ne v0, v1, :cond_b

    #@3d2
    const/4 v11, 0x1

    #@3d3
    .line 3884
    .restart local v11    # "enabled":Z
    :goto_3
    new-instance v18, Ljava/lang/StringBuilder;

    #@3d5
    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    #@3d8
    const-string/jumbo v19, "CMD_SET_USER_DATA_ENABLE enabled="

    #@3db
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3de
    move-result-object v18

    #@3df
    move-object/from16 v0, v18

    #@3e1
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@3e4
    move-result-object v18

    #@3e5
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3e8
    move-result-object v18

    #@3e9
    move-object/from16 v0, p0

    #@3eb
    move-object/from16 v1, v18

    #@3ed
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@3f0
    .line 3885
    move-object/from16 v0, p0

    #@3f2
    invoke-direct {v0, v11}, Lcom/android/internal/telephony/dataconnection/DcTracker;->onSetUserDataEnabled(Z)V

    #@3f5
    goto/16 :goto_0

    #@3f7
    .line 3883
    .end local v11    # "enabled":Z
    :cond_b
    const/4 v11, 0x0

    #@3f8
    .restart local v11    # "enabled":Z
    goto :goto_3

    #@3f9
    .line 3890
    .end local v11    # "enabled":Z
    :sswitch_1f
    move-object/from16 v0, p1

    #@3fb
    iget v0, v0, Landroid/os/Message;->arg1:I

    #@3fd
    move/from16 v18, v0

    #@3ff
    const/16 v19, 0x1

    #@401
    move/from16 v0, v18

    #@403
    move/from16 v1, v19

    #@405
    if-ne v0, v1, :cond_c

    #@407
    const/4 v13, 0x1

    #@408
    .line 3891
    .local v13, "met":Z
    :goto_4
    new-instance v18, Ljava/lang/StringBuilder;

    #@40a
    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    #@40d
    const-string/jumbo v19, "CMD_SET_DEPENDENCY_MET met="

    #@410
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@413
    move-result-object v18

    #@414
    move-object/from16 v0, v18

    #@416
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@419
    move-result-object v18

    #@41a
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@41d
    move-result-object v18

    #@41e
    move-object/from16 v0, p0

    #@420
    move-object/from16 v1, v18

    #@422
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@425
    .line 3892
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    #@428
    move-result-object v8

    #@429
    .line 3893
    .local v8, "bundle":Landroid/os/Bundle;
    if-eqz v8, :cond_0

    #@42b
    .line 3894
    const-string/jumbo v18, "apnType"

    #@42e
    move-object/from16 v0, v18

    #@430
    invoke-virtual {v8, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    #@433
    move-result-object v6

    #@434
    check-cast v6, Ljava/lang/String;

    #@436
    .line 3895
    .local v6, "apnType":Ljava/lang/String;
    if-eqz v6, :cond_0

    #@438
    .line 3896
    move-object/from16 v0, p0

    #@43a
    invoke-direct {v0, v6, v13}, Lcom/android/internal/telephony/dataconnection/DcTracker;->onSetDependencyMet(Ljava/lang/String;Z)V

    #@43d
    goto/16 :goto_0

    #@43f
    .line 3890
    .end local v6    # "apnType":Ljava/lang/String;
    .end local v8    # "bundle":Landroid/os/Bundle;
    .end local v13    # "met":Z
    :cond_c
    const/4 v13, 0x0

    #@440
    .restart local v13    # "met":Z
    goto :goto_4

    #@441
    .line 3902
    .end local v13    # "met":Z
    :sswitch_20
    move-object/from16 v0, p1

    #@443
    iget v0, v0, Landroid/os/Message;->arg1:I

    #@445
    move/from16 v18, v0

    #@447
    const/16 v19, 0x1

    #@449
    move/from16 v0, v18

    #@44b
    move/from16 v1, v19

    #@44d
    if-ne v0, v1, :cond_d

    #@44f
    const/4 v11, 0x1

    #@450
    .line 3903
    .local v11, "enabled":Z
    :goto_5
    move-object/from16 v0, p0

    #@452
    invoke-direct {v0, v11}, Lcom/android/internal/telephony/dataconnection/DcTracker;->onSetPolicyDataEnabled(Z)V

    #@455
    goto/16 :goto_0

    #@457
    .line 3902
    .end local v11    # "enabled":Z
    :cond_d
    const/4 v11, 0x0

    #@458
    goto :goto_5

    #@459
    .line 3907
    :sswitch_21
    sget v19, Lcom/android/internal/telephony/dataconnection/DcTracker;->sEnableFailFastRefCounter:I

    #@45b
    move-object/from16 v0, p1

    #@45d
    iget v0, v0, Landroid/os/Message;->arg1:I

    #@45f
    move/from16 v18, v0

    #@461
    const/16 v20, 0x1

    #@463
    move/from16 v0, v18

    #@465
    move/from16 v1, v20

    #@467
    if-ne v0, v1, :cond_10

    #@469
    const/16 v18, 0x1

    #@46b
    :goto_6
    add-int v18, v18, v19

    #@46d
    sput v18, Lcom/android/internal/telephony/dataconnection/DcTracker;->sEnableFailFastRefCounter:I

    #@46f
    .line 3909
    new-instance v18, Ljava/lang/StringBuilder;

    #@471
    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    #@474
    const-string/jumbo v19, "CMD_SET_ENABLE_FAIL_FAST_MOBILE_DATA:  sEnableFailFastRefCounter="

    #@477
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47a
    move-result-object v18

    #@47b
    .line 3910
    sget v19, Lcom/android/internal/telephony/dataconnection/DcTracker;->sEnableFailFastRefCounter:I

    #@47d
    .line 3909
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@480
    move-result-object v18

    #@481
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@484
    move-result-object v18

    #@485
    move-object/from16 v0, p0

    #@487
    move-object/from16 v1, v18

    #@489
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@48c
    .line 3912
    sget v18, Lcom/android/internal/telephony/dataconnection/DcTracker;->sEnableFailFastRefCounter:I

    #@48e
    if-gez v18, :cond_e

    #@490
    .line 3913
    new-instance v18, Ljava/lang/StringBuilder;

    #@492
    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    #@495
    const-string/jumbo v19, "CMD_SET_ENABLE_FAIL_FAST_MOBILE_DATA: sEnableFailFastRefCounter:"

    #@498
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@49b
    move-result-object v18

    #@49c
    .line 3914
    sget v19, Lcom/android/internal/telephony/dataconnection/DcTracker;->sEnableFailFastRefCounter:I

    #@49e
    .line 3913
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@4a1
    move-result-object v18

    #@4a2
    .line 3914
    const-string/jumbo v19, " < 0"

    #@4a5
    .line 3913
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a8
    move-result-object v18

    #@4a9
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4ac
    move-result-object v14

    #@4ad
    .line 3915
    .local v14, "s":Ljava/lang/String;
    move-object/from16 v0, p0

    #@4af
    invoke-direct {v0, v14}, Lcom/android/internal/telephony/dataconnection/DcTracker;->loge(Ljava/lang/String;)V

    #@4b2
    .line 3916
    const/16 v18, 0x0

    #@4b4
    sput v18, Lcom/android/internal/telephony/dataconnection/DcTracker;->sEnableFailFastRefCounter:I

    #@4b6
    .line 3918
    .end local v14    # "s":Ljava/lang/String;
    :cond_e
    sget v18, Lcom/android/internal/telephony/dataconnection/DcTracker;->sEnableFailFastRefCounter:I

    #@4b8
    if-lez v18, :cond_11

    #@4ba
    const/4 v11, 0x1

    #@4bb
    .line 3920
    .local v11, "enabled":Z
    :goto_7
    new-instance v18, Ljava/lang/StringBuilder;

    #@4bd
    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    #@4c0
    const-string/jumbo v19, "CMD_SET_ENABLE_FAIL_FAST_MOBILE_DATA: enabled="

    #@4c3
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c6
    move-result-object v18

    #@4c7
    move-object/from16 v0, v18

    #@4c9
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@4cc
    move-result-object v18

    #@4cd
    .line 3921
    const-string/jumbo v19, " sEnableFailFastRefCounter="

    #@4d0
    .line 3920
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d3
    move-result-object v18

    #@4d4
    .line 3921
    sget v19, Lcom/android/internal/telephony/dataconnection/DcTracker;->sEnableFailFastRefCounter:I

    #@4d6
    .line 3920
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@4d9
    move-result-object v18

    #@4da
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4dd
    move-result-object v18

    #@4de
    move-object/from16 v0, p0

    #@4e0
    move-object/from16 v1, v18

    #@4e2
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@4e5
    .line 3923
    move-object/from16 v0, p0

    #@4e7
    iget-boolean v0, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mFailFast:Z

    #@4e9
    move/from16 v18, v0

    #@4eb
    move/from16 v0, v18

    #@4ed
    if-eq v0, v11, :cond_0

    #@4ef
    .line 3924
    move-object/from16 v0, p0

    #@4f1
    iput-boolean v11, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mFailFast:Z

    #@4f3
    .line 3926
    if-eqz v11, :cond_12

    #@4f5
    const/16 v18, 0x0

    #@4f7
    :goto_8
    move/from16 v0, v18

    #@4f9
    move-object/from16 v1, p0

    #@4fb
    iput-boolean v0, v1, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDataStallDetectionEnabled:Z

    #@4fd
    .line 3927
    move-object/from16 v0, p0

    #@4ff
    iget-boolean v0, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDataStallDetectionEnabled:Z

    #@501
    move/from16 v18, v0

    #@503
    if-eqz v18, :cond_13

    #@505
    .line 3928
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->getOverallState()Lcom/android/internal/telephony/DctConstants$State;

    #@508
    move-result-object v18

    #@509
    sget-object v19, Lcom/android/internal/telephony/DctConstants$State;->CONNECTED:Lcom/android/internal/telephony/DctConstants$State;

    #@50b
    move-object/from16 v0, v18

    #@50d
    move-object/from16 v1, v19

    #@50f
    if-ne v0, v1, :cond_13

    #@511
    .line 3929
    move-object/from16 v0, p0

    #@513
    iget-boolean v0, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mInVoiceCall:Z

    #@515
    move/from16 v18, v0

    #@517
    if-eqz v18, :cond_f

    #@519
    .line 3930
    move-object/from16 v0, p0

    #@51b
    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    #@51d
    move-object/from16 v18, v0

    #@51f
    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    #@522
    move-result-object v18

    #@523
    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/ServiceStateTracker;->isConcurrentVoiceAndDataAllowed()Z

    #@526
    move-result v18

    #@527
    .line 3927
    if-eqz v18, :cond_13

    #@529
    .line 3932
    :cond_f
    const-string/jumbo v18, "CMD_SET_ENABLE_FAIL_FAST_MOBILE_DATA: start data stall"

    #@52c
    move-object/from16 v0, p0

    #@52e
    move-object/from16 v1, v18

    #@530
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@533
    .line 3933
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->stopDataStallAlarm()V

    #@536
    .line 3934
    const/16 v18, 0x0

    #@538
    move-object/from16 v0, p0

    #@53a
    move/from16 v1, v18

    #@53c
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->startDataStallAlarm(Z)V

    #@53f
    goto/16 :goto_0

    #@541
    .line 3907
    .end local v11    # "enabled":Z
    :cond_10
    const/16 v18, -0x1

    #@543
    goto/16 :goto_6

    #@545
    .line 3918
    :cond_11
    const/4 v11, 0x0

    #@546
    .restart local v11    # "enabled":Z
    goto/16 :goto_7

    #@548
    .line 3926
    :cond_12
    const/16 v18, 0x1

    #@54a
    goto :goto_8

    #@54b
    .line 3936
    :cond_13
    const-string/jumbo v18, "CMD_SET_ENABLE_FAIL_FAST_MOBILE_DATA: stop data stall"

    #@54e
    move-object/from16 v0, p0

    #@550
    move-object/from16 v1, v18

    #@552
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@555
    .line 3937
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->stopDataStallAlarm()V

    #@558
    goto/16 :goto_0

    #@55a
    .line 3944
    .end local v11    # "enabled":Z
    :sswitch_22
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    #@55d
    move-result-object v8

    #@55e
    .line 3945
    .restart local v8    # "bundle":Landroid/os/Bundle;
    if-eqz v8, :cond_14

    #@560
    .line 3947
    :try_start_0
    const-string/jumbo v18, "provisioningUrl"

    #@563
    move-object/from16 v0, v18

    #@565
    invoke-virtual {v8, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    #@568
    move-result-object v18

    #@569
    check-cast v18, Ljava/lang/String;

    #@56b
    move-object/from16 v0, v18

    #@56d
    move-object/from16 v1, p0

    #@56f
    iput-object v0, v1, Lcom/android/internal/telephony/dataconnection/DcTracker;->mProvisioningUrl:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    #@571
    .line 3953
    :cond_14
    :goto_9
    move-object/from16 v0, p0

    #@573
    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mProvisioningUrl:Ljava/lang/String;

    #@575
    move-object/from16 v18, v0

    #@577
    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@57a
    move-result v18

    #@57b
    if-eqz v18, :cond_15

    #@57d
    .line 3954
    const-string/jumbo v18, "CMD_ENABLE_MOBILE_PROVISIONING: provisioning url is empty, ignoring"

    #@580
    move-object/from16 v0, p0

    #@582
    move-object/from16 v1, v18

    #@584
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->loge(Ljava/lang/String;)V

    #@587
    .line 3955
    const/16 v18, 0x0

    #@589
    move/from16 v0, v18

    #@58b
    move-object/from16 v1, p0

    #@58d
    iput-boolean v0, v1, Lcom/android/internal/telephony/dataconnection/DcTracker;->mIsProvisioning:Z

    #@58f
    .line 3956
    const/16 v18, 0x0

    #@591
    move-object/from16 v0, v18

    #@593
    move-object/from16 v1, p0

    #@595
    iput-object v0, v1, Lcom/android/internal/telephony/dataconnection/DcTracker;->mProvisioningUrl:Ljava/lang/String;

    #@597
    goto/16 :goto_0

    #@599
    .line 3948
    :catch_0
    move-exception v10

    #@59a
    .line 3949
    .local v10, "e":Ljava/lang/ClassCastException;
    new-instance v18, Ljava/lang/StringBuilder;

    #@59c
    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    #@59f
    const-string/jumbo v19, "CMD_ENABLE_MOBILE_PROVISIONING: provisioning url not a string"

    #@5a2
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5a5
    move-result-object v18

    #@5a6
    move-object/from16 v0, v18

    #@5a8
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@5ab
    move-result-object v18

    #@5ac
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5af
    move-result-object v18

    #@5b0
    move-object/from16 v0, p0

    #@5b2
    move-object/from16 v1, v18

    #@5b4
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->loge(Ljava/lang/String;)V

    #@5b7
    .line 3950
    const/16 v18, 0x0

    #@5b9
    move-object/from16 v0, v18

    #@5bb
    move-object/from16 v1, p0

    #@5bd
    iput-object v0, v1, Lcom/android/internal/telephony/dataconnection/DcTracker;->mProvisioningUrl:Ljava/lang/String;

    #@5bf
    goto :goto_9

    #@5c0
    .line 3958
    .end local v10    # "e":Ljava/lang/ClassCastException;
    :cond_15
    new-instance v18, Ljava/lang/StringBuilder;

    #@5c2
    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    #@5c5
    const-string/jumbo v19, "CMD_ENABLE_MOBILE_PROVISIONING: provisioningUrl="

    #@5c8
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5cb
    move-result-object v18

    #@5cc
    move-object/from16 v0, p0

    #@5ce
    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mProvisioningUrl:Ljava/lang/String;

    #@5d0
    move-object/from16 v19, v0

    #@5d2
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5d5
    move-result-object v18

    #@5d6
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5d9
    move-result-object v18

    #@5da
    move-object/from16 v0, p0

    #@5dc
    move-object/from16 v1, v18

    #@5de
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->loge(Ljava/lang/String;)V

    #@5e1
    .line 3959
    const/16 v18, 0x1

    #@5e3
    move/from16 v0, v18

    #@5e5
    move-object/from16 v1, p0

    #@5e7
    iput-boolean v0, v1, Lcom/android/internal/telephony/dataconnection/DcTracker;->mIsProvisioning:Z

    #@5e9
    .line 3960
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->startProvisioningApnAlarm()V

    #@5ec
    goto/16 :goto_0

    #@5ee
    .line 3965
    .end local v8    # "bundle":Landroid/os/Bundle;
    :sswitch_23
    const-string/jumbo v18, "EVENT_PROVISIONING_APN_ALARM"

    #@5f1
    move-object/from16 v0, p0

    #@5f3
    move-object/from16 v1, v18

    #@5f5
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@5f8
    .line 3966
    move-object/from16 v0, p0

    #@5fa
    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mApnContextsById:Landroid/util/SparseArray;

    #@5fc
    move-object/from16 v18, v0

    #@5fe
    const/16 v19, 0x0

    #@600
    invoke-virtual/range {v18 .. v19}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@603
    move-result-object v5

    #@604
    check-cast v5, Lcom/android/internal/telephony/dataconnection/ApnContext;

    #@606
    .line 3967
    .local v5, "apnCtx":Lcom/android/internal/telephony/dataconnection/ApnContext;
    invoke-virtual {v5}, Lcom/android/internal/telephony/dataconnection/ApnContext;->isProvisioningApn()Z

    #@609
    move-result v18

    #@60a
    if-eqz v18, :cond_17

    #@60c
    invoke-virtual {v5}, Lcom/android/internal/telephony/dataconnection/ApnContext;->isConnectedOrConnecting()Z

    #@60f
    move-result v18

    #@610
    if-eqz v18, :cond_17

    #@612
    .line 3968
    move-object/from16 v0, p0

    #@614
    iget v0, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mProvisioningApnAlarmTag:I

    #@616
    move/from16 v18, v0

    #@618
    move-object/from16 v0, p1

    #@61a
    iget v0, v0, Landroid/os/Message;->arg1:I

    #@61c
    move/from16 v19, v0

    #@61e
    move/from16 v0, v18

    #@620
    move/from16 v1, v19

    #@622
    if-ne v0, v1, :cond_16

    #@624
    .line 3969
    const-string/jumbo v18, "EVENT_PROVISIONING_APN_ALARM: Disconnecting"

    #@627
    move-object/from16 v0, p0

    #@629
    move-object/from16 v1, v18

    #@62b
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@62e
    .line 3970
    const/16 v18, 0x0

    #@630
    move/from16 v0, v18

    #@632
    move-object/from16 v1, p0

    #@634
    iput-boolean v0, v1, Lcom/android/internal/telephony/dataconnection/DcTracker;->mIsProvisioning:Z

    #@636
    .line 3971
    const/16 v18, 0x0

    #@638
    move-object/from16 v0, v18

    #@63a
    move-object/from16 v1, p0

    #@63c
    iput-object v0, v1, Lcom/android/internal/telephony/dataconnection/DcTracker;->mProvisioningUrl:Ljava/lang/String;

    #@63e
    .line 3972
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->stopProvisioningApnAlarm()V

    #@641
    .line 3973
    const/16 v18, 0x1

    #@643
    move-object/from16 v0, p0

    #@645
    move/from16 v1, v18

    #@647
    invoke-virtual {v0, v1, v5}, Lcom/android/internal/telephony/dataconnection/DcTracker;->sendCleanUpConnection(ZLcom/android/internal/telephony/dataconnection/ApnContext;)V

    #@64a
    goto/16 :goto_0

    #@64c
    .line 3976
    :cond_16
    new-instance v18, Ljava/lang/StringBuilder;

    #@64e
    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    #@651
    const-string/jumbo v19, "EVENT_PROVISIONING_APN_ALARM: ignore stale tag, mProvisioningApnAlarmTag:"

    #@654
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@657
    move-result-object v18

    #@658
    .line 3977
    move-object/from16 v0, p0

    #@65a
    iget v0, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mProvisioningApnAlarmTag:I

    #@65c
    move/from16 v19, v0

    #@65e
    .line 3976
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@661
    move-result-object v18

    #@662
    .line 3978
    const-string/jumbo v19, " != arg1:"

    #@665
    .line 3976
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@668
    move-result-object v18

    #@669
    .line 3978
    move-object/from16 v0, p1

    #@66b
    iget v0, v0, Landroid/os/Message;->arg1:I

    #@66d
    move/from16 v19, v0

    #@66f
    .line 3976
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@672
    move-result-object v18

    #@673
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@676
    move-result-object v18

    #@677
    move-object/from16 v0, p0

    #@679
    move-object/from16 v1, v18

    #@67b
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@67e
    goto/16 :goto_0

    #@680
    .line 3982
    :cond_17
    const-string/jumbo v18, "EVENT_PROVISIONING_APN_ALARM: Not connected ignore"

    #@683
    move-object/from16 v0, p0

    #@685
    move-object/from16 v1, v18

    #@687
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@68a
    goto/16 :goto_0

    #@68c
    .line 3987
    .end local v5    # "apnCtx":Lcom/android/internal/telephony/dataconnection/ApnContext;
    :sswitch_24
    const-string/jumbo v18, "CMD_IS_PROVISIONING_APN"

    #@68f
    move-object/from16 v0, p0

    #@691
    move-object/from16 v1, v18

    #@693
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@696
    .line 3990
    const/4 v6, 0x0

    #@697
    .line 3991
    .local v6, "apnType":Ljava/lang/String;
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    #@69a
    move-result-object v8

    #@69b
    .line 3992
    .restart local v8    # "bundle":Landroid/os/Bundle;
    if-eqz v8, :cond_18

    #@69d
    .line 3993
    const-string/jumbo v18, "apnType"

    #@6a0
    move-object/from16 v0, v18

    #@6a2
    invoke-virtual {v8, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    #@6a5
    move-result-object v18

    #@6a6
    move-object/from16 v0, v18

    #@6a8
    check-cast v0, Ljava/lang/String;

    #@6aa
    move-object v6, v0

    #@6ab
    .line 3995
    .end local v6    # "apnType":Ljava/lang/String;
    :cond_18
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@6ae
    move-result v18

    #@6af
    if-eqz v18, :cond_19

    #@6b1
    .line 3996
    const-string/jumbo v18, "CMD_IS_PROVISIONING_APN: apnType is empty"

    #@6b4
    move-object/from16 v0, p0

    #@6b6
    move-object/from16 v1, v18

    #@6b8
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->loge(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    #@6bb
    .line 3997
    const/4 v12, 0x0

    #@6bc
    .line 4005
    .end local v8    # "bundle":Landroid/os/Bundle;
    :goto_a
    new-instance v18, Ljava/lang/StringBuilder;

    #@6be
    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    #@6c1
    const-string/jumbo v19, "CMD_IS_PROVISIONING_APN: ret="

    #@6c4
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6c7
    move-result-object v18

    #@6c8
    move-object/from16 v0, v18

    #@6ca
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@6cd
    move-result-object v18

    #@6ce
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6d1
    move-result-object v18

    #@6d2
    move-object/from16 v0, p0

    #@6d4
    move-object/from16 v1, v18

    #@6d6
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@6d9
    .line 4006
    move-object/from16 v0, p0

    #@6db
    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mReplyAc:Lcom/android/internal/util/AsyncChannel;

    #@6dd
    move-object/from16 v19, v0

    #@6df
    .line 4007
    if-eqz v12, :cond_1a

    #@6e1
    const/16 v18, 0x1

    #@6e3
    .line 4006
    :goto_b
    const v20, 0x42026

    #@6e6
    move-object/from16 v0, v19

    #@6e8
    move-object/from16 v1, p1

    #@6ea
    move/from16 v2, v20

    #@6ec
    move/from16 v3, v18

    #@6ee
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    #@6f1
    goto/16 :goto_0

    #@6f3
    .line 3999
    .restart local v8    # "bundle":Landroid/os/Bundle;
    :cond_19
    :try_start_2
    move-object/from16 v0, p0

    #@6f5
    invoke-direct {v0, v6}, Lcom/android/internal/telephony/dataconnection/DcTracker;->isProvisioningApn(Ljava/lang/String;)Z
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_1

    #@6f8
    move-result v12

    #@6f9
    .local v12, "isProvApn":Z
    goto :goto_a

    #@6fa
    .line 4001
    .end local v8    # "bundle":Landroid/os/Bundle;
    .end local v12    # "isProvApn":Z
    :catch_1
    move-exception v10

    #@6fb
    .line 4002
    .restart local v10    # "e":Ljava/lang/ClassCastException;
    const-string/jumbo v18, "CMD_IS_PROVISIONING_APN: NO provisioning url ignoring"

    #@6fe
    move-object/from16 v0, p0

    #@700
    move-object/from16 v1, v18

    #@702
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->loge(Ljava/lang/String;)V

    #@705
    .line 4003
    const/4 v12, 0x0

    #@706
    .local v12, "isProvApn":Z
    goto :goto_a

    #@707
    .line 4007
    .end local v10    # "e":Ljava/lang/ClassCastException;
    .end local v12    # "isProvApn":Z
    :cond_1a
    const/16 v18, 0x0

    #@709
    goto :goto_b

    #@70a
    .line 4011
    :sswitch_25
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->onUpdateIcc()V

    #@70d
    goto/16 :goto_0

    #@70f
    .line 4015
    :sswitch_26
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->restartRadio()V

    #@712
    goto/16 :goto_0

    #@714
    .line 4019
    :sswitch_27
    move-object/from16 v0, p1

    #@716
    iget v0, v0, Landroid/os/Message;->arg1:I

    #@718
    move/from16 v18, v0

    #@71a
    const/16 v19, 0x1

    #@71c
    move/from16 v0, v18

    #@71e
    move/from16 v1, v19

    #@720
    if-ne v0, v1, :cond_1b

    #@722
    .line 4020
    move-object/from16 v0, p1

    #@724
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@726
    move-object/from16 v18, v0

    #@728
    check-cast v18, Lcom/android/internal/telephony/DctConstants$Activity;

    #@72a
    move-object/from16 v0, p0

    #@72c
    move-object/from16 v1, v18

    #@72e
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->handleStartNetStatPoll(Lcom/android/internal/telephony/DctConstants$Activity;)V

    #@731
    goto/16 :goto_0

    #@733
    .line 4021
    :cond_1b
    move-object/from16 v0, p1

    #@735
    iget v0, v0, Landroid/os/Message;->arg1:I

    #@737
    move/from16 v18, v0

    #@739
    if-nez v18, :cond_0

    #@73b
    .line 4022
    move-object/from16 v0, p1

    #@73d
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@73f
    move-object/from16 v18, v0

    #@741
    check-cast v18, Lcom/android/internal/telephony/DctConstants$Activity;

    #@743
    move-object/from16 v0, p0

    #@745
    move-object/from16 v1, v18

    #@747
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->handleStopNetStatPoll(Lcom/android/internal/telephony/DctConstants$Activity;)V

    #@74a
    goto/16 :goto_0

    #@74c
    .line 3696
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
    .end sparse-switch
.end method

.method public hasMatchedTetherApnSetting()Z
    .locals 3

    #@0
    .prologue
    .line 1913
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->fetchDunApn()Lcom/android/internal/telephony/dataconnection/ApnSetting;

    #@3
    move-result-object v0

    #@4
    .line 1914
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
    .line 1915
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
    .line 966
    if-nez p1, :cond_0

    #@3
    .line 967
    const-string/jumbo v1, "isApnSupported: name=null"

    #@6
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->loge(Ljava/lang/String;)V

    #@9
    .line 968
    return v3

    #@a
    .line 970
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    #@c
    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Lcom/android/internal/telephony/dataconnection/ApnContext;

    #@12
    .line 971
    .local v0, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    if-nez v0, :cond_1

    #@14
    .line 972
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
    .line 973
    return v3

    #@2c
    .line 975
    :cond_1
    const/4 v1, 0x1

    #@2d
    return v1
.end method

.method public isDataPossible(Ljava/lang/String;)Z
    .locals 10
    .param p1, "apnType"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v9, 0x0

    #@1
    .line 1086
    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    #@3
    invoke-virtual {v7, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Lcom/android/internal/telephony/dataconnection/ApnContext;

    #@9
    .line 1087
    .local v0, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    if-nez v0, :cond_0

    #@b
    .line 1088
    const/4 v7, 0x0

    #@c
    return v7

    #@d
    .line 1090
    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->isEnabled()Z

    #@10
    move-result v1

    #@11
    .line 1091
    .local v1, "apnContextIsEnabled":Z
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getState()Lcom/android/internal/telephony/DctConstants$State;

    #@14
    move-result-object v2

    #@15
    .line 1092
    .local v2, "apnContextState":Lcom/android/internal/telephony/DctConstants$State;
    if-eqz v1, :cond_3

    #@17
    .line 1093
    sget-object v7, Lcom/android/internal/telephony/DctConstants$State;->FAILED:Lcom/android/internal/telephony/DctConstants$State;

    #@19
    if-ne v2, v7, :cond_3

    #@1b
    .line 1092
    const/4 v3, 0x0

    #@1c
    .line 1094
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
    .line 1097
    .local v5, "isEmergencyApn":Z
    if-nez v5, :cond_4

    #@29
    invoke-direct {p0, v9}, Lcom/android/internal/telephony/dataconnection/DcTracker;->isDataAllowed(Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReason;)Z

    #@2c
    move-result v4

    #@2d
    .line 1098
    .local v4, "dataAllowed":Z
    :goto_1
    if-eqz v4, :cond_5

    #@2f
    move v6, v3

    #@30
    .line 1100
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
    .line 1101
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
    .line 1100
    if-eqz v7, :cond_2

    #@4a
    .line 1102
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
    .line 1103
    const/16 v8, 0x12

    #@56
    .line 1102
    if-ne v7, v8, :cond_2

    #@58
    .line 1104
    const-string/jumbo v7, "Default data call activation not possible in iwlan."

    #@5b
    invoke-direct {p0, v7}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@5e
    .line 1105
    const/4 v6, 0x0

    #@5f
    .line 1114
    :cond_2
    return v6

    #@60
    .line 1092
    .end local v3    # "apnTypePossible":Z
    .end local v4    # "dataAllowed":Z
    .end local v5    # "isEmergencyApn":Z
    :cond_3
    const/4 v3, 0x1

    #@61
    .restart local v3    # "apnTypePossible":Z
    goto :goto_0

    #@62
    .line 1097
    .restart local v5    # "isEmergencyApn":Z
    :cond_4
    const/4 v4, 0x1

    #@63
    goto :goto_1

    #@64
    .line 1098
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
    .line 3289
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
    .line 3290
    .local v0, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->isDisconnected()Z

    #@19
    move-result v2

    #@1a
    if-nez v2, :cond_0

    #@1c
    .line 3292
    const/4 v2, 0x0

    #@1d
    return v2

    #@1e
    .line 3296
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
    .line 1544
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDataEnabledLock:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 1545
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    #@5
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->isInEcm()Z

    #@8
    move-result v1

    #@9
    if-nez v1, :cond_0

    #@b
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    #@d
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->isInEmergencyCall()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    move-result v0

    #@11
    :goto_0
    monitor-exit v2

    #@12
    .line 1547
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
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@29
    .line 1548
    return v0

    #@2a
    .line 1545
    :cond_0
    const/4 v0, 0x1

    #@2b
    .local v0, "result":Z
    goto :goto_0

    #@2c
    .line 1544
    .end local v0    # "result":Z
    :catchall_0
    move-exception v1

    #@2d
    monitor-exit v2

    #@2e
    throw v1
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
    .line 1964
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/DcFailCause;->isPermanentFail()Z

    #@5
    move-result v2

    #@6
    if-eqz v2, :cond_2

    #@8
    .line 1965
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
    .line 1964
    :cond_0
    :goto_0
    return v0

    #@15
    :cond_1
    move v0, v1

    #@16
    .line 1965
    goto :goto_0

    #@17
    :cond_2
    move v0, v1

    #@18
    .line 1964
    goto :goto_0
.end method

.method public registerForAllDataDisconnected(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 4202
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAllDataDisconnectedRegistrants:Landroid/os/RegistrantList;

    #@2
    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    #@5
    .line 4204
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->isDisconnected()Z

    #@8
    move-result v0

    #@9
    if-eqz v0, :cond_0

    #@b
    .line 4205
    const-string/jumbo v0, "notify All Data Disconnected"

    #@e
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@11
    .line 4206
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->notifyAllDataDisconnected()V

    #@14
    .line 4201
    :cond_0
    return-void
.end method

.method public registerServiceStateTrackerEvents()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 770
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    #@3
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    #@6
    move-result-object v0

    #@7
    .line 771
    const v1, 0x42010

    #@a
    .line 770
    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->registerForDataConnectionAttached(Landroid/os/Handler;ILjava/lang/Object;)V

    #@d
    .line 772
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    #@f
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    #@12
    move-result-object v0

    #@13
    .line 773
    const v1, 0x42009

    #@16
    .line 772
    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->registerForDataConnectionDetached(Landroid/os/Handler;ILjava/lang/Object;)V

    #@19
    .line 774
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    #@1b
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    #@1e
    move-result-object v0

    #@1f
    .line 775
    const v1, 0x4200b

    #@22
    .line 774
    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->registerForDataRoamingOn(Landroid/os/Handler;ILjava/lang/Object;)V

    #@25
    .line 776
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    #@27
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    #@2a
    move-result-object v0

    #@2b
    .line 777
    const v1, 0x4200c

    #@2e
    .line 776
    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->registerForDataRoamingOff(Landroid/os/Handler;ILjava/lang/Object;)V

    #@31
    .line 778
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    #@33
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    #@36
    move-result-object v0

    #@37
    .line 779
    const v1, 0x42016

    #@3a
    .line 778
    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->registerForPsRestrictedEnabled(Landroid/os/Handler;ILjava/lang/Object;)V

    #@3d
    .line 780
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    #@3f
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    #@42
    move-result-object v0

    #@43
    .line 781
    const v1, 0x42017

    #@46
    .line 780
    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->registerForPsRestrictedDisabled(Landroid/os/Handler;ILjava/lang/Object;)V

    #@49
    .line 782
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    #@4b
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    #@4e
    move-result-object v0

    #@4f
    .line 783
    const v1, 0x42029

    #@52
    .line 782
    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->registerForDataRegStateOrRatChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    #@55
    .line 769
    return-void
.end method

.method public releaseNetwork(Landroid/net/NetworkRequest;Landroid/util/LocalLog;)V
    .locals 4
    .param p1, "networkRequest"    # Landroid/net/NetworkRequest;
    .param p2, "log"    # Landroid/util/LocalLog;

    #@0
    .prologue
    .line 959
    invoke-static {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->apnIdForNetworkRequest(Landroid/net/NetworkRequest;)I

    #@3
    move-result v1

    #@4
    .line 960
    .local v1, "apnId":I
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mApnContextsById:Landroid/util/SparseArray;

    #@6
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    check-cast v0, Lcom/android/internal/telephony/dataconnection/ApnContext;

    #@c
    .line 961
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
    .line 962
    if-eqz v0, :cond_0

    #@30
    invoke-virtual {v0, p2}, Lcom/android/internal/telephony/dataconnection/ApnContext;->decRefCount(Landroid/util/LocalLog;)V

    #@33
    .line 958
    :cond_0
    return-void
.end method

.method public requestNetwork(Landroid/net/NetworkRequest;Landroid/util/LocalLog;)V
    .locals 4
    .param p1, "networkRequest"    # Landroid/net/NetworkRequest;
    .param p2, "log"    # Landroid/util/LocalLog;

    #@0
    .prologue
    .line 952
    invoke-static {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->apnIdForNetworkRequest(Landroid/net/NetworkRequest;)I

    #@3
    move-result v1

    #@4
    .line 953
    .local v1, "apnId":I
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mApnContextsById:Landroid/util/SparseArray;

    #@6
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    check-cast v0, Lcom/android/internal/telephony/dataconnection/ApnContext;

    #@c
    .line 954
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
    .line 955
    if-eqz v0, :cond_0

    #@30
    invoke-virtual {v0, p2}, Lcom/android/internal/telephony/dataconnection/ApnContext;->incRefCount(Landroid/util/LocalLog;)V

    #@33
    .line 951
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
    .line 1763
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
    .line 1764
    const v1, 0x42018

    #@26
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->obtainMessage(I)Landroid/os/Message;

    #@29
    move-result-object v0

    #@2a
    .line 1765
    .local v0, "msg":Landroid/os/Message;
    if-eqz p1, :cond_0

    #@2c
    const/4 v1, 0x1

    #@2d
    :goto_0
    iput v1, v0, Landroid/os/Message;->arg1:I

    #@2f
    .line 1766
    iput v2, v0, Landroid/os/Message;->arg2:I

    #@31
    .line 1767
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@33
    .line 1768
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->sendMessage(Landroid/os/Message;)Z

    #@36
    .line 1762
    return-void

    #@37
    :cond_0
    move v1, v2

    #@38
    .line 1765
    goto :goto_0
.end method

.method sendRestartRadio()V
    .locals 2

    #@0
    .prologue
    .line 2310
    const-string/jumbo v1, "sendRestartRadio:"

    #@3
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@6
    .line 2311
    const v1, 0x4201a

    #@9
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->obtainMessage(I)Landroid/os/Message;

    #@c
    move-result-object v0

    #@d
    .line 2312
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->sendMessage(Landroid/os/Message;)Z

    #@10
    .line 2309
    return-void
.end method

.method public sendStartNetStatPoll(Lcom/android/internal/telephony/DctConstants$Activity;)V
    .locals 2
    .param p1, "activity"    # Lcom/android/internal/telephony/DctConstants$Activity;

    #@0
    .prologue
    .line 4544
    const v1, 0x42028

    #@3
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->obtainMessage(I)Landroid/os/Message;

    #@6
    move-result-object v0

    #@7
    .line 4545
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    #@8
    iput v1, v0, Landroid/os/Message;->arg1:I

    #@a
    .line 4546
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@c
    .line 4547
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->sendMessage(Landroid/os/Message;)Z

    #@f
    .line 4543
    return-void
.end method

.method public sendStopNetStatPoll(Lcom/android/internal/telephony/DctConstants$Activity;)V
    .locals 2
    .param p1, "activity"    # Lcom/android/internal/telephony/DctConstants$Activity;

    #@0
    .prologue
    .line 4557
    const v1, 0x42028

    #@3
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->obtainMessage(I)Landroid/os/Message;

    #@6
    move-result-object v0

    #@7
    .line 4558
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x0

    #@8
    iput v1, v0, Landroid/os/Message;->arg1:I

    #@a
    .line 4559
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@c
    .line 4560
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->sendMessage(Landroid/os/Message;)Z

    #@f
    .line 4556
    return-void
.end method

.method public setDataAllowed(ZLandroid/os/Message;)V
    .locals 2
    .param p1, "enable"    # Z
    .param p2, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 4261
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "setDataAllowed: enable="

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@f
    move-result-object v0

    #@10
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13
    move-result-object v0

    #@14
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@17
    .line 4262
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->isCleanupRequired:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@19
    if-eqz p1, :cond_0

    #@1b
    const/4 v0, 0x0

    #@1c
    :goto_0
    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    #@1f
    .line 4263
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    #@21
    iget-object v0, v0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@23
    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/CommandsInterface;->setDataAllowed(ZLandroid/os/Message;)V

    #@26
    .line 4264
    iput-boolean p1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mInternalDataEnabled:Z

    #@28
    .line 4260
    return-void

    #@29
    .line 4262
    :cond_0
    const/4 v0, 0x1

    #@2a
    goto :goto_0
.end method

.method public setDataEnabled(Z)V
    .locals 3
    .param p1, "enable"    # Z

    #@0
    .prologue
    .line 889
    const v1, 0x4201e

    #@3
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->obtainMessage(I)Landroid/os/Message;

    #@6
    move-result-object v0

    #@7
    .line 890
    .local v0, "msg":Landroid/os/Message;
    if-eqz p1, :cond_0

    #@9
    const/4 v1, 0x1

    #@a
    :goto_0
    iput v1, v0, Landroid/os/Message;->arg1:I

    #@c
    .line 891
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
    .line 892
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->sendMessage(Landroid/os/Message;)Z

    #@26
    .line 888
    return-void

    #@27
    .line 890
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
    .line 2702
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    #@2
    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getSubId()I

    #@5
    move-result v0

    #@6
    .line 2703
    .local v0, "phoneSubId":I
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->getDataOnRoamingEnabled()Z

    #@9
    move-result v2

    #@a
    if-eq v2, p1, :cond_2

    #@c
    .line 2704
    if-eqz p1, :cond_0

    #@e
    const/4 v1, 0x1

    #@f
    .line 2707
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
    .line 2708
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mResolver:Landroid/content/ContentResolver;

    #@1c
    const-string/jumbo v3, "data_roaming"

    #@1f
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    #@22
    .line 2714
    :goto_1
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    #@24
    invoke-virtual {v2, v1, v0}, Landroid/telephony/SubscriptionManager;->setDataRoaming(II)I

    #@27
    .line 2717
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
    .line 2718
    const-string/jumbo v3, " isRoaming="

    #@3a
    .line 2717
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
    .line 2701
    .end local v1    # "roaming":I
    :goto_2
    return-void

    #@4a
    .line 2704
    :cond_0
    const/4 v1, 0x0

    #@4b
    .restart local v1    # "roaming":I
    goto :goto_0

    #@4c
    .line 2710
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
    .line 2722
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
    .line 2723
    const-string/jumbo v3, " isRoaming="

    #@79
    .line 2722
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
    .line 2626
    const v1, 0x4200d

    #@3
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->obtainMessage(I)Landroid/os/Message;

    #@6
    move-result-object v0

    #@7
    .line 2627
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    #@9
    .line 2628
    if-eqz p2, :cond_0

    #@b
    const/4 v1, 0x1

    #@c
    :goto_0
    iput v1, v0, Landroid/os/Message;->arg2:I

    #@e
    .line 2629
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->sendMessage(Landroid/os/Message;)Z

    #@11
    .line 2625
    return-void

    #@12
    .line 2628
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
    .line 4248
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
    .line 4252
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
    .line 4254
    const v1, 0x4201b

    #@22
    invoke-virtual {p0, v1, p2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@25
    move-result-object v0

    #@26
    .line 4255
    .local v0, "msg":Landroid/os/Message;
    if-eqz p1, :cond_0

    #@28
    move v1, v2

    #@29
    :goto_0
    iput v1, v0, Landroid/os/Message;->arg1:I

    #@2b
    .line 4256
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->sendMessage(Landroid/os/Message;)Z

    #@2e
    .line 4257
    return v2

    #@2f
    .line 4255
    :cond_0
    const/4 v1, 0x0

    #@30
    goto :goto_0
.end method

.method public setInternalDataEnabledFlag(Z)Z
    .locals 2
    .param p1, "enable"    # Z

    #@0
    .prologue
    .line 4239
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "setInternalDataEnabledFlag("

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@f
    move-result-object v0

    #@10
    const-string/jumbo v1, ")"

    #@13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v0

    #@17
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a
    move-result-object v0

    #@1b
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@1e
    .line 4241
    iget-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mInternalDataEnabled:Z

    #@20
    if-eq v0, p1, :cond_0

    #@22
    .line 4242
    iput-boolean p1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mInternalDataEnabled:Z

    #@24
    .line 4244
    :cond_0
    const/4 v0, 0x1

    #@25
    return v0
.end method

.method public unregisterForAllDataDisconnected(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 4211
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAllDataDisconnectedRegistrants:Landroid/os/RegistrantList;

    #@2
    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    #@5
    .line 4210
    return-void
.end method

.method public unregisterServiceStateTrackerEvents()V
    .locals 1

    #@0
    .prologue
    .line 787
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    #@2
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/ServiceStateTracker;->unregisterForDataConnectionAttached(Landroid/os/Handler;)V

    #@9
    .line 788
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    #@b
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    #@e
    move-result-object v0

    #@f
    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/ServiceStateTracker;->unregisterForDataConnectionDetached(Landroid/os/Handler;)V

    #@12
    .line 789
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    #@14
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    #@17
    move-result-object v0

    #@18
    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/ServiceStateTracker;->unregisterForDataRoamingOn(Landroid/os/Handler;)V

    #@1b
    .line 790
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    #@1d
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    #@20
    move-result-object v0

    #@21
    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/ServiceStateTracker;->unregisterForDataRoamingOff(Landroid/os/Handler;)V

    #@24
    .line 791
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    #@26
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    #@29
    move-result-object v0

    #@2a
    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/ServiceStateTracker;->unregisterForPsRestrictedEnabled(Landroid/os/Handler;)V

    #@2d
    .line 792
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    #@2f
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    #@32
    move-result-object v0

    #@33
    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/ServiceStateTracker;->unregisterForPsRestrictedDisabled(Landroid/os/Handler;)V

    #@36
    .line 793
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    #@38
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    #@3b
    move-result-object v0

    #@3c
    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/ServiceStateTracker;->unregisterForDataRegStateOrRatChanged(Landroid/os/Handler;)V

    #@3f
    .line 786
    return-void
.end method

.method public update()V
    .locals 2

    #@0
    .prologue
    .line 4103
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
    .line 4104
    const-string/jumbo v0, "update(): Active DDS, register for all events now!"

    #@20
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@23
    .line 4105
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->onUpdateIcc()V

    #@26
    .line 4107
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->getDataEnabled()Z

    #@29
    move-result v0

    #@2a
    iput-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mUserDataEnabled:Z

    #@2c
    .line 4108
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAutoAttachOnCreation:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@2e
    const/4 v1, 0x0

    #@2f
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    #@32
    .line 4110
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    #@34
    check-cast v0, Lcom/android/internal/telephony/GsmCdmaPhone;

    #@36
    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->updateCurrentCarrierInProvider()Z

    #@39
    .line 4102
    return-void
.end method

.method public updateRecords()V
    .locals 0

    #@0
    .prologue
    .line 4118
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->onUpdateIcc()V

    #@3
    .line 4117
    return-void
.end method

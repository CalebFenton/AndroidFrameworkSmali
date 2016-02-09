.class public Lcom/android/server/notification/NotificationManagerService;
.super Lcom/android/server/SystemService;
.source "NotificationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/notification/NotificationManagerService$Archive;,
        Lcom/android/server/notification/NotificationManagerService$ToastRecord;,
        Lcom/android/server/notification/NotificationManagerService$SettingsObserver;,
        Lcom/android/server/notification/NotificationManagerService$WorkerHandler;,
        Lcom/android/server/notification/NotificationManagerService$RankingWorkerHandler;,
        Lcom/android/server/notification/NotificationManagerService$NotificationListeners;,
        Lcom/android/server/notification/NotificationManagerService$DumpFilter;,
        Lcom/android/server/notification/NotificationManagerService$StatusBarNotificationHolder;,
        Lcom/android/server/notification/NotificationManagerService$PolicyAccess;,
        Lcom/android/server/notification/NotificationManagerService$1;,
        Lcom/android/server/notification/NotificationManagerService$2;,
        Lcom/android/server/notification/NotificationManagerService$3;,
        Lcom/android/server/notification/NotificationManagerService$4;,
        Lcom/android/server/notification/NotificationManagerService$5;,
        Lcom/android/server/notification/NotificationManagerService$6;
    }
.end annotation


# static fields
.field private static final ATTR_NAME:Ljava/lang/String; = "name"

.field private static final ATTR_VERSION:Ljava/lang/String; = "version"

.field static final DBG:Z

.field private static final DB_VERSION:I = 0x1

.field static final DEFAULT_STREAM_TYPE:I = 0x5

.field static final DEFAULT_VIBRATE_PATTERN:[J

.field static final ENABLE_BLOCKED_NOTIFICATIONS:Z = true

.field static final ENABLE_BLOCKED_TOASTS:Z = true

.field public static final ENABLE_CHILD_NOTIFICATIONS:Z

.field private static final EVENTLOG_ENQUEUE_STATUS_IGNORED:I = 0x2

.field private static final EVENTLOG_ENQUEUE_STATUS_NEW:I = 0x0

.field private static final EVENTLOG_ENQUEUE_STATUS_UPDATE:I = 0x1

.field static final JUNK_SCORE:I = -0x3e8

.field static final LONG_DELAY:I = 0xdac

.field static final MATCHES_CALL_FILTER_CONTACTS_TIMEOUT_MS:I = 0xbb8

.field static final MATCHES_CALL_FILTER_TIMEOUT_AFFINITY:F = 1.0f

.field static final MAX_PACKAGE_NOTIFICATIONS:I = 0x32

.field static final MESSAGE_LISTENER_HINTS_CHANGED:I = 0x7

.field static final MESSAGE_LISTENER_NOTIFICATION_FILTER_CHANGED:I = 0x8

.field static final MESSAGE_RANKING_CONFIG_CHANGE:I = 0x5

.field static final MESSAGE_RECONSIDER_RANKING:I = 0x4

.field static final MESSAGE_SAVE_POLICY_FILE:I = 0x3

.field static final MESSAGE_SEND_RANKING_UPDATE:I = 0x6

.field static final MESSAGE_TIMEOUT:I = 0x2

.field private static final MY_PID:I

.field private static final MY_UID:I

.field static final NOTIFICATION_PRIORITY_MULTIPLIER:I = 0xa

.field private static final REASON_DELEGATE_CANCEL:I = 0x2

.field private static final REASON_DELEGATE_CANCEL_ALL:I = 0x3

.field private static final REASON_DELEGATE_CLICK:I = 0x1

.field private static final REASON_DELEGATE_ERROR:I = 0x4

.field private static final REASON_GROUP_OPTIMIZATION:I = 0xd

.field private static final REASON_GROUP_SUMMARY_CANCELED:I = 0xc

.field private static final REASON_LISTENER_CANCEL:I = 0xa

.field private static final REASON_LISTENER_CANCEL_ALL:I = 0xb

.field private static final REASON_NOMAN_CANCEL:I = 0x8

.field private static final REASON_NOMAN_CANCEL_ALL:I = 0x9

.field private static final REASON_PACKAGE_BANNED:I = 0x7

.field private static final REASON_PACKAGE_CHANGED:I = 0x5

.field private static final REASON_USER_STOPPED:I = 0x6

.field static final SCORE_DISPLAY_THRESHOLD:I = -0x14

.field static final SCORE_INTERRUPTION_THRESHOLD:I = -0xa

.field static final SCORE_ONGOING_HIGHER:Z = false

.field static final SHORT_DELAY:I = 0x7d0

.field static final TAG:Ljava/lang/String; = "NotificationService"

.field private static final TAG_BLOCKED_PKGS:Ljava/lang/String; = "blocked-packages"

.field private static final TAG_NOTIFICATION_POLICY:Ljava/lang/String; = "notification-policy"

.field private static final TAG_PACKAGE:Ljava/lang/String; = "package"

.field static final VIBRATE_PATTERN_MAXLEN:I = 0x11


# instance fields
.field private mAm:Landroid/app/IActivityManager;

.field private mAppOps:Landroid/app/AppOpsManager;

.field private mAppUsageStats:Landroid/app/usage/UsageStatsManagerInternal;

.field private mArchive:Lcom/android/server/notification/NotificationManagerService$Archive;

.field mAttentionLight:Lcom/android/server/lights/Light;

.field mAudioManager:Landroid/media/AudioManager;

.field mAudioManagerInternal:Landroid/media/AudioManagerInternal;

.field private mBlockedPackages:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mBuzzBeepBlinked:Ljava/lang/Runnable;

.field private mCallState:I

.field private mConditionProviders:Lcom/android/server/notification/ConditionProviders;

.field private mDefaultNotificationColor:I

.field private mDefaultNotificationLedOff:I

.field private mDefaultNotificationLedOn:I

.field private mDefaultVibrationPattern:[J

.field private mDisableNotificationEffects:Z

.field private mEffectsSuppressor:Landroid/content/ComponentName;

.field private mFallbackVibrationPattern:[J

.field final mForegroundToken:Landroid/os/IBinder;

.field private mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

.field private mInCall:Z

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private final mInternalService:Lcom/android/server/notification/NotificationManagerInternal;

.field private mInterruptionFilter:I

.field mLights:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mListenerHints:I

.field private mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

.field private final mListenersDisablingEffects:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mNotificationDelegate:Lcom/android/server/notification/NotificationDelegate;

.field private mNotificationLight:Lcom/android/server/lights/Light;

.field final mNotificationList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/notification/NotificationRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mNotificationPulseEnabled:Z

.field final mNotificationsByKey:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/notification/NotificationRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mPackageIntentReceiver:Landroid/content/BroadcastReceiver;

.field final mPolicyAccess:Lcom/android/server/notification/NotificationManagerService$PolicyAccess;

.field private mPolicyFile:Landroid/util/AtomicFile;

.field private mRankingHelper:Lcom/android/server/notification/RankingHelper;

.field private final mRankingThread:Landroid/os/HandlerThread;

.field private mScreenOn:Z

.field private final mService:Landroid/os/IBinder;

.field private mSettingsObserver:Lcom/android/server/notification/NotificationManagerService$SettingsObserver;

.field private mSoundNotificationKey:Ljava/lang/String;

.field mStatusBar:Lcom/android/server/statusbar/StatusBarManagerInternal;

.field final mSummaryByGroupKey:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/notification/NotificationRecord;",
            ">;"
        }
    .end annotation
.end field

.field mSystemReady:Z

.field final mToastQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/notification/NotificationManagerService$ToastRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mUsageStats:Lcom/android/server/notification/NotificationUsageStats;

.field private mUseAttentionLight:Z

.field private final mUserProfiles:Lcom/android/server/notification/ManagedServices$UserProfiles;

.field private mVibrateNotificationKey:Ljava/lang/String;

.field mVibrator:Landroid/os/Vibrator;

.field private mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;


# direct methods
.method static synthetic -get0()I
    .locals 1

    #@0
    sget v0, Lcom/android/server/notification/NotificationManagerService;->MY_PID:I

    #@2
    return v0
.end method

.method static synthetic -get1()I
    .locals 1

    #@0
    sget v0, Lcom/android/server/notification/NotificationManagerService;->MY_UID:I

    #@2
    return v0
.end method

.method static synthetic -get10(Lcom/android/server/notification/NotificationManagerService;)I
    .locals 1

    #@0
    iget v0, p0, Lcom/android/server/notification/NotificationManagerService;->mListenerHints:I

    #@2
    return v0
.end method

.method static synthetic -get11(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    #@2
    return-object v0
.end method

.method static synthetic -get12(Lcom/android/server/notification/NotificationManagerService;)Landroid/util/ArraySet;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mListenersDisablingEffects:Landroid/util/ArraySet;

    #@2
    return-object v0
.end method

.method static synthetic -get13(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/lights/Light;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLight:Lcom/android/server/lights/Light;

    #@2
    return-object v0
.end method

.method static synthetic -get14(Lcom/android/server/notification/NotificationManagerService;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationPulseEnabled:Z

    #@2
    return v0
.end method

.method static synthetic -get15(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/RankingHelper;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mRankingHelper:Lcom/android/server/notification/RankingHelper;

    #@2
    return-object v0
.end method

.method static synthetic -get16(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$SettingsObserver;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mSettingsObserver:Lcom/android/server/notification/NotificationManagerService$SettingsObserver;

    #@2
    return-object v0
.end method

.method static synthetic -get17(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationUsageStats;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mUsageStats:Lcom/android/server/notification/NotificationUsageStats;

    #@2
    return-object v0
.end method

.method static synthetic -get18(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/ManagedServices$UserProfiles;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mUserProfiles:Lcom/android/server/notification/ManagedServices$UserProfiles;

    #@2
    return-object v0
.end method

.method static synthetic -get19(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/ZenModeHelper;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/notification/NotificationManagerService;)Landroid/app/AppOpsManager;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mAppOps:Landroid/app/AppOpsManager;

    #@2
    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/notification/NotificationManagerService;)Landroid/app/usage/UsageStatsManagerInternal;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mAppUsageStats:Landroid/app/usage/UsageStatsManagerInternal;

    #@2
    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$Archive;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mArchive:Lcom/android/server/notification/NotificationManagerService$Archive;

    #@2
    return-object v0
.end method

.method static synthetic -get5(Lcom/android/server/notification/NotificationManagerService;)I
    .locals 1

    #@0
    iget v0, p0, Lcom/android/server/notification/NotificationManagerService;->mCallState:I

    #@2
    return v0
.end method

.method static synthetic -get6(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/ConditionProviders;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mConditionProviders:Lcom/android/server/notification/ConditionProviders;

    #@2
    return-object v0
.end method

.method static synthetic -get7(Lcom/android/server/notification/NotificationManagerService;)Landroid/content/ComponentName;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mEffectsSuppressor:Landroid/content/ComponentName;

    #@2
    return-object v0
.end method

.method static synthetic -get8(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$WorkerHandler;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    #@2
    return-object v0
.end method

.method static synthetic -get9(Lcom/android/server/notification/NotificationManagerService;)I
    .locals 1

    #@0
    iget v0, p0, Lcom/android/server/notification/NotificationManagerService;->mInterruptionFilter:I

    #@2
    return v0
.end method

.method static synthetic -set0(Lcom/android/server/notification/NotificationManagerService;I)I
    .locals 0

    #@0
    iput p1, p0, Lcom/android/server/notification/NotificationManagerService;->mCallState:I

    #@2
    return p1
.end method

.method static synthetic -set1(Lcom/android/server/notification/NotificationManagerService;Z)Z
    .locals 0

    #@0
    iput-boolean p1, p0, Lcom/android/server/notification/NotificationManagerService;->mDisableNotificationEffects:Z

    #@2
    return p1
.end method

.method static synthetic -set2(Lcom/android/server/notification/NotificationManagerService;Z)Z
    .locals 0

    #@0
    iput-boolean p1, p0, Lcom/android/server/notification/NotificationManagerService;->mInCall:Z

    #@2
    return p1
.end method

.method static synthetic -set3(Lcom/android/server/notification/NotificationManagerService;Z)Z
    .locals 0

    #@0
    iput-boolean p1, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationPulseEnabled:Z

    #@2
    return p1
.end method

.method static synthetic -set4(Lcom/android/server/notification/NotificationManagerService;Z)Z
    .locals 0

    #@0
    iput-boolean p1, p0, Lcom/android/server/notification/NotificationManagerService;->mScreenOn:Z

    #@2
    return p1
.end method

.method static synthetic -set5(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    #@0
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService;->mSoundNotificationKey:Ljava/lang/String;

    #@2
    return-object p1
.end method

.method static synthetic -set6(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    #@0
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService;->mVibrateNotificationKey:Ljava/lang/String;

    #@2
    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Landroid/service/notification/NotificationRankingUpdate;
    .locals 1
    .param p1, "info"    # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->makeRankingUpdateLocked(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Landroid/service/notification/NotificationRankingUpdate;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap1()Z
    .locals 1

    #@0
    invoke-static {}, Lcom/android/server/notification/NotificationManagerService;->isCallerSystem()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap10(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;ZI)V
    .locals 0
    .param p1, "r"    # Lcom/android/server/notification/NotificationRecord;
    .param p2, "sendDelete"    # Z
    .param p3, "reason"    # I

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/notification/NotificationManagerService;->cancelNotificationLocked(Lcom/android/server/notification/NotificationRecord;ZI)V

    #@3
    return-void
.end method

.method static synthetic -wrap11(Ljava/lang/String;)V
    .locals 0
    .param p0, "pkg"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-static {p0}, Lcom/android/server/notification/NotificationManagerService;->checkCallerIsSystemOrSameApp(Ljava/lang/String;)V

    #@3
    return-void
.end method

.method static synthetic -wrap12()V
    .locals 0

    #@0
    invoke-static {}, Lcom/android/server/notification/NotificationManagerService;->checkCallerIsSystem()V

    #@3
    return-void
.end method

.method static synthetic -wrap13(Lcom/android/server/notification/NotificationManagerService;Ljava/io/PrintWriter;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V
    .locals 0
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "filter"    # Lcom/android/server/notification/NotificationManagerService$DumpFilter;

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/NotificationManagerService;->dumpJson(Ljava/io/PrintWriter;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V

    #@3
    return-void
.end method

.method static synthetic -wrap14(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationRecord;II)V
    .locals 0
    .param p1, "r"    # Lcom/android/server/notification/NotificationRecord;
    .param p2, "old"    # Lcom/android/server/notification/NotificationRecord;
    .param p3, "callingUid"    # I
    .param p4, "callingPid"    # I

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/notification/NotificationManagerService;->handleGroupedNotificationLocked(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationRecord;II)V

    #@3
    return-void
.end method

.method static synthetic -wrap15(Lcom/android/server/notification/NotificationManagerService;I)V
    .locals 0
    .param p1, "hints"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->handleListenerHintsChanged(I)V

    #@3
    return-void
.end method

.method static synthetic -wrap16(Lcom/android/server/notification/NotificationManagerService;I)V
    .locals 0
    .param p1, "interruptionFilter"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->handleListenerInterruptionFilterChanged(I)V

    #@3
    return-void
.end method

.method static synthetic -wrap17(Lcom/android/server/notification/NotificationManagerService;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/notification/NotificationManagerService;->handleRankingConfigChange()V

    #@3
    return-void
.end method

.method static synthetic -wrap18(Lcom/android/server/notification/NotificationManagerService;Landroid/os/Message;)V
    .locals 0
    .param p1, "message"    # Landroid/os/Message;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->handleRankingReconsideration(Landroid/os/Message;)V

    #@3
    return-void
.end method

.method static synthetic -wrap19(Lcom/android/server/notification/NotificationManagerService;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/notification/NotificationManagerService;->handleSavePolicyFile()V

    #@3
    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/notification/NotificationManagerService;Landroid/service/notification/StatusBarNotification;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Z
    .locals 1
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;
    .param p2, "listener"    # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/NotificationManagerService;->isVisibleToListener(Landroid/service/notification/StatusBarNotification;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap20(Lcom/android/server/notification/NotificationManagerService;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/notification/NotificationManagerService;->handleSendRankingUpdate()V

    #@3
    return-void
.end method

.method static synthetic -wrap21(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationManagerService$ToastRecord;)V
    .locals 0
    .param p1, "record"    # Lcom/android/server/notification/NotificationManagerService$ToastRecord;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->handleTimeout(Lcom/android/server/notification/NotificationManagerService$ToastRecord;)V

    #@3
    return-void
.end method

.method static synthetic -wrap22(Lcom/android/server/notification/NotificationManagerService;Ljava/io/InputStream;Z)V
    .locals 0
    .param p1, "stream"    # Ljava/io/InputStream;
    .param p2, "forRestore"    # Z

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/NotificationManagerService;->readPolicyXml(Ljava/io/InputStream;Z)V

    #@3
    return-void
.end method

.method static synthetic -wrap23(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;)V
    .locals 0
    .param p1, "action"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->sendRegisteredOnlyBroadcast(Ljava/lang/String;)V

    #@3
    return-void
.end method

.method static synthetic -wrap24(Lcom/android/server/notification/NotificationManagerService;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/notification/NotificationManagerService;->updateEffectsSuppressorLocked()V

    #@3
    return-void
.end method

.method static synthetic -wrap25(Lcom/android/server/notification/NotificationManagerService;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/notification/NotificationManagerService;->updateInterruptionFilterLocked()V

    #@3
    return-void
.end method

.method static synthetic -wrap26(Lcom/android/server/notification/NotificationManagerService;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/notification/NotificationManagerService;->updateListenerHintsLocked()V

    #@3
    return-void
.end method

.method static synthetic -wrap27(Lcom/android/server/notification/NotificationManagerService;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/notification/NotificationManagerService;->updateNotificationPulse()V

    #@3
    return-void
.end method

.method static synthetic -wrap28(Lcom/android/server/notification/NotificationManagerService;Ljava/io/OutputStream;Z)V
    .locals 0
    .param p1, "stream"    # Ljava/io/OutputStream;
    .param p2, "forBackup"    # Z

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/NotificationManagerService;->writePolicyXml(Ljava/io/OutputStream;Z)V

    #@3
    return-void
.end method

.method static synthetic -wrap3(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;I)Z
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/NotificationManagerService;->noteNotificationOp(Ljava/lang/String;I)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap4(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationRecord;II)Z
    .locals 1
    .param p1, "r"    # Lcom/android/server/notification/NotificationRecord;
    .param p2, "old"    # Lcom/android/server/notification/NotificationRecord;
    .param p3, "callingUid"    # I
    .param p4, "callingPid"    # I

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/notification/NotificationManagerService;->removeUnusedGroupedNotificationLocked(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationRecord;II)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap5(I)Ljava/lang/String;
    .locals 1
    .param p0, "state"    # I

    #@0
    .prologue
    invoke-static {p0}, Lcom/android/server/notification/NotificationManagerService;->callStateToString(I)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap6(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;)Ljava/lang/String;
    .locals 1
    .param p1, "record"    # Lcom/android/server/notification/NotificationRecord;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->disableNotificationEffects(Lcom/android/server/notification/NotificationRecord;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap7(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;)V
    .locals 0
    .param p1, "record"    # Lcom/android/server/notification/NotificationRecord;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->applyZenModeLocked(Lcom/android/server/notification/NotificationRecord;)V

    #@3
    return-void
.end method

.method static synthetic -wrap8(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;)V
    .locals 0
    .param p1, "record"    # Lcom/android/server/notification/NotificationRecord;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->buzzBeepBlinkLocked(Lcom/android/server/notification/NotificationRecord;)V

    #@3
    return-void
.end method

.method static synthetic -wrap9(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;IILjava/lang/String;I)V
    .locals 0
    .param p1, "r"    # Lcom/android/server/notification/NotificationRecord;
    .param p2, "callingUid"    # I
    .param p3, "callingPid"    # I
    .param p4, "listenerName"    # Ljava/lang/String;
    .param p5, "reason"    # I

    #@0
    .prologue
    invoke-direct/range {p0 .. p5}, Lcom/android/server/notification/NotificationManagerService;->cancelGroupChildrenLocked(Lcom/android/server/notification/NotificationRecord;IILjava/lang/String;I)V

    #@3
    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 145
    const-string/jumbo v1, "NotificationService"

    #@4
    const/4 v2, 0x3

    #@5
    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@8
    move-result v1

    #@9
    sput-boolean v1, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    #@b
    .line 146
    sget-boolean v1, Landroid/os/Build;->IS_DEBUGGABLE:Z

    #@d
    if-eqz v1, :cond_0

    #@f
    .line 147
    const-string/jumbo v1, "debug.child_notifs"

    #@12
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    #@15
    move-result v0

    #@16
    .line 146
    :cond_0
    sput-boolean v0, Lcom/android/server/notification/NotificationManagerService;->ENABLE_CHILD_NOTIFICATIONS:Z

    #@18
    .line 163
    const/4 v0, 0x4

    #@19
    new-array v0, v0, [J

    #@1b
    fill-array-data v0, :array_0

    #@1e
    sput-object v0, Lcom/android/server/notification/NotificationManagerService;->DEFAULT_VIBRATE_PATTERN:[J

    #@20
    .line 279
    invoke-static {}, Landroid/os/Process;->myUid()I

    #@23
    move-result v0

    #@24
    sput v0, Lcom/android/server/notification/NotificationManagerService;->MY_UID:I

    #@26
    .line 280
    invoke-static {}, Landroid/os/Process;->myPid()I

    #@29
    move-result v0

    #@2a
    sput v0, Lcom/android/server/notification/NotificationManagerService;->MY_PID:I

    #@2c
    .line 143
    return-void

    #@2d
    .line 163
    nop

    #@2e
    :array_0
    .array-data 8
        0x0
        0xfa
        0xfa
        0xfa
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 853
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    #@4
    .line 207
    new-instance v0, Landroid/os/Binder;

    #@6
    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    #@9
    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mForegroundToken:Landroid/os/IBinder;

    #@b
    .line 209
    new-instance v0, Landroid/os/HandlerThread;

    #@d
    const-string/jumbo v1, "ranker"

    #@10
    .line 210
    const/16 v2, 0xa

    #@12
    .line 209
    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    #@15
    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mRankingThread:Landroid/os/HandlerThread;

    #@17
    .line 229
    new-instance v0, Landroid/util/ArraySet;

    #@19
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    #@1c
    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mListenersDisablingEffects:Landroid/util/ArraySet;

    #@1e
    .line 232
    iput v3, p0, Lcom/android/server/notification/NotificationManagerService;->mInterruptionFilter:I

    #@20
    .line 235
    const/4 v0, 0x1

    #@21
    iput-boolean v0, p0, Lcom/android/server/notification/NotificationManagerService;->mScreenOn:Z

    #@23
    .line 236
    iput-boolean v3, p0, Lcom/android/server/notification/NotificationManagerService;->mInCall:Z

    #@25
    .line 241
    new-instance v0, Ljava/util/ArrayList;

    #@27
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@2a
    .line 240
    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    #@2c
    .line 243
    new-instance v0, Landroid/util/ArrayMap;

    #@2e
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    #@31
    .line 242
    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    #@33
    .line 244
    new-instance v0, Ljava/util/ArrayList;

    #@35
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@38
    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    #@3a
    .line 245
    new-instance v0, Landroid/util/ArrayMap;

    #@3c
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    #@3f
    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mSummaryByGroupKey:Landroid/util/ArrayMap;

    #@41
    .line 246
    new-instance v0, Lcom/android/server/notification/NotificationManagerService$PolicyAccess;

    #@43
    const/4 v1, 0x0

    #@44
    invoke-direct {v0, p0, v1}, Lcom/android/server/notification/NotificationManagerService$PolicyAccess;-><init>(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationManagerService$PolicyAccess;)V

    #@47
    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mPolicyAccess:Lcom/android/server/notification/NotificationManagerService$PolicyAccess;

    #@49
    .line 249
    new-instance v0, Ljava/util/ArrayList;

    #@4b
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@4e
    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mLights:Ljava/util/ArrayList;

    #@50
    .line 260
    new-instance v0, Ljava/util/HashSet;

    #@52
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    #@55
    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mBlockedPackages:Ljava/util/HashSet;

    #@57
    .line 274
    new-instance v0, Lcom/android/server/notification/ManagedServices$UserProfiles;

    #@59
    invoke-direct {v0}, Lcom/android/server/notification/ManagedServices$UserProfiles;-><init>()V

    #@5c
    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mUserProfiles:Lcom/android/server/notification/ManagedServices$UserProfiles;

    #@5e
    .line 490
    new-instance v0, Lcom/android/server/notification/NotificationManagerService$1;

    #@60
    invoke-direct {v0, p0}, Lcom/android/server/notification/NotificationManagerService$1;-><init>(Lcom/android/server/notification/NotificationManagerService;)V

    #@63
    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationDelegate:Lcom/android/server/notification/NotificationDelegate;

    #@65
    .line 675
    new-instance v0, Lcom/android/server/notification/NotificationManagerService$2;

    #@67
    invoke-direct {v0, p0}, Lcom/android/server/notification/NotificationManagerService$2;-><init>(Lcom/android/server/notification/NotificationManagerService;)V

    #@6a
    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mPackageIntentReceiver:Landroid/content/BroadcastReceiver;

    #@6c
    .line 752
    new-instance v0, Lcom/android/server/notification/NotificationManagerService$3;

    #@6e
    invoke-direct {v0, p0}, Lcom/android/server/notification/NotificationManagerService$3;-><init>(Lcom/android/server/notification/NotificationManagerService;)V

    #@71
    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    #@73
    .line 832
    new-instance v0, Lcom/android/server/notification/NotificationManagerService$4;

    #@75
    invoke-direct {v0, p0}, Lcom/android/server/notification/NotificationManagerService$4;-><init>(Lcom/android/server/notification/NotificationManagerService;)V

    #@78
    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mBuzzBeepBlinked:Ljava/lang/Runnable;

    #@7a
    .line 1061
    new-instance v0, Lcom/android/server/notification/NotificationManagerService$5;

    #@7c
    invoke-direct {v0, p0}, Lcom/android/server/notification/NotificationManagerService$5;-><init>(Lcom/android/server/notification/NotificationManagerService;)V

    #@7f
    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mService:Landroid/os/IBinder;

    #@81
    .line 1998
    new-instance v0, Lcom/android/server/notification/NotificationManagerService$6;

    #@83
    invoke-direct {v0, p0}, Lcom/android/server/notification/NotificationManagerService$6;-><init>(Lcom/android/server/notification/NotificationManagerService;)V

    #@86
    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mInternalService:Lcom/android/server/notification/NotificationManagerInternal;

    #@88
    .line 852
    return-void
.end method

.method private applyZenModeLocked(Lcom/android/server/notification/NotificationRecord;)V
    .locals 1
    .param p1, "record"    # Lcom/android/server/notification/NotificationRecord;

    #@0
    .prologue
    .line 2647
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/server/notification/ZenModeHelper;->shouldIntercept(Lcom/android/server/notification/NotificationRecord;)Z

    #@5
    move-result v0

    #@6
    invoke-virtual {p1, v0}, Lcom/android/server/notification/NotificationRecord;->setIntercepted(Z)Z

    #@9
    .line 2646
    return-void
.end method

.method private static audioAttributesForNotification(Landroid/app/Notification;)Landroid/media/AudioAttributes;
    .locals 5
    .param p0, "n"    # Landroid/app/Notification;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 2476
    iget-object v0, p0, Landroid/app/Notification;->audioAttributes:Landroid/media/AudioAttributes;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 2477
    sget-object v0, Landroid/app/Notification;->AUDIO_ATTRIBUTES_DEFAULT:Landroid/media/AudioAttributes;

    #@7
    iget-object v1, p0, Landroid/app/Notification;->audioAttributes:Landroid/media/AudioAttributes;

    #@9
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes;->equals(Ljava/lang/Object;)Z

    #@c
    move-result v0

    #@d
    if-eqz v0, :cond_1

    #@f
    .line 2480
    :cond_0
    iget v0, p0, Landroid/app/Notification;->audioStreamType:I

    #@11
    if-ltz v0, :cond_2

    #@13
    iget v0, p0, Landroid/app/Notification;->audioStreamType:I

    #@15
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    #@18
    move-result v1

    #@19
    if-ge v0, v1, :cond_2

    #@1b
    .line 2482
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    #@1d
    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    #@20
    .line 2483
    iget v1, p0, Landroid/app/Notification;->audioStreamType:I

    #@22
    .line 2482
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setInternalLegacyStreamType(I)Landroid/media/AudioAttributes$Builder;

    #@25
    move-result-object v0

    #@26
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    #@29
    move-result-object v0

    #@2a
    return-object v0

    #@2b
    .line 2479
    :cond_1
    iget-object v0, p0, Landroid/app/Notification;->audioAttributes:Landroid/media/AudioAttributes;

    #@2d
    return-object v0

    #@2e
    .line 2485
    :cond_2
    iget v0, p0, Landroid/app/Notification;->audioStreamType:I

    #@30
    const/4 v1, -0x1

    #@31
    if-ne v0, v1, :cond_3

    #@33
    .line 2486
    sget-object v0, Landroid/app/Notification;->AUDIO_ATTRIBUTES_DEFAULT:Landroid/media/AudioAttributes;

    #@35
    return-object v0

    #@36
    .line 2488
    :cond_3
    const-string/jumbo v0, "NotificationService"

    #@39
    const-string/jumbo v1, "Invalid stream type: %d"

    #@3c
    const/4 v2, 0x1

    #@3d
    new-array v2, v2, [Ljava/lang/Object;

    #@3f
    iget v3, p0, Landroid/app/Notification;->audioStreamType:I

    #@41
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@44
    move-result-object v3

    #@45
    aput-object v3, v2, v4

    #@47
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@4a
    move-result-object v1

    #@4b
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@4e
    .line 2489
    sget-object v0, Landroid/app/Notification;->AUDIO_ATTRIBUTES_DEFAULT:Landroid/media/AudioAttributes;

    #@50
    return-object v0
.end method

.method private buzzBeepBlinkLocked(Lcom/android/server/notification/NotificationRecord;)V
    .locals 34
    .param p1, "record"    # Lcom/android/server/notification/NotificationRecord;

    #@0
    .prologue
    .line 2314
    const/4 v14, 0x0

    #@1
    .line 2315
    .local v14, "buzz":Z
    const/4 v12, 0x0

    #@2
    .line 2316
    .local v12, "beep":Z
    const/4 v13, 0x0

    #@3
    .line 2318
    .local v13, "blink":Z
    move-object/from16 v0, p1

    #@5
    iget-object v4, v0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    #@7
    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    #@a
    move-result-object v25

    #@b
    .line 2321
    .local v25, "notification":Landroid/app/Notification;
    move-object/from16 v0, p1

    #@d
    iget v4, v0, Lcom/android/server/notification/NotificationRecord;->score:I

    #@f
    const/16 v5, -0xa

    #@11
    if-lt v4, v5, :cond_9

    #@13
    const/4 v10, 0x1

    #@14
    .line 2322
    .local v10, "aboveThreshold":Z
    :goto_0
    if-eqz v10, :cond_0

    #@16
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->isIntercepted()Z

    #@19
    move-result v4

    #@1a
    if-eqz v4, :cond_a

    #@1c
    :cond_0
    const/4 v15, 0x0

    #@1d
    .line 2323
    .local v15, "canInterrupt":Z
    :goto_1
    sget-boolean v4, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    #@1f
    if-nez v4, :cond_1

    #@21
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->isIntercepted()Z

    #@24
    move-result v4

    #@25
    if-eqz v4, :cond_2

    #@27
    .line 2324
    :cond_1
    const-string/jumbo v4, "NotificationService"

    #@2a
    .line 2325
    new-instance v5, Ljava/lang/StringBuilder;

    #@2c
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@2f
    const-string/jumbo v6, "pkg="

    #@32
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v5

    #@36
    move-object/from16 v0, p1

    #@38
    iget-object v6, v0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    #@3a
    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    #@3d
    move-result-object v6

    #@3e
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v5

    #@42
    const-string/jumbo v6, " canInterrupt="

    #@45
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v5

    #@49
    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v5

    #@4d
    .line 2326
    const-string/jumbo v6, " intercept="

    #@50
    .line 2325
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@53
    move-result-object v5

    #@54
    .line 2326
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->isIntercepted()Z

    #@57
    move-result v6

    #@58
    .line 2325
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@5b
    move-result-object v5

    #@5c
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5f
    move-result-object v5

    #@60
    .line 2324
    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@63
    .line 2330
    :cond_2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@66
    move-result-wide v30

    #@67
    .line 2332
    .local v30, "token":J
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6a
    move-result v17

    #@6b
    .line 2334
    .local v17, "currentUser":I
    invoke-static/range {v30 .. v31}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@6e
    .line 2338
    invoke-direct/range {p0 .. p1}, Lcom/android/server/notification/NotificationManagerService;->disableNotificationEffects(Lcom/android/server/notification/NotificationRecord;)Ljava/lang/String;

    #@71
    move-result-object v18

    #@72
    .line 2339
    .local v18, "disableEffects":Ljava/lang/String;
    if-eqz v18, :cond_3

    #@74
    .line 2340
    move-object/from16 v0, p1

    #@76
    move-object/from16 v1, v18

    #@78
    invoke-static {v0, v1}, Lcom/android/server/notification/ZenLog;->traceDisableEffects(Lcom/android/server/notification/NotificationRecord;Ljava/lang/String;)V

    #@7b
    .line 2342
    :cond_3
    if-nez v18, :cond_4

    #@7d
    .line 2343
    move-object/from16 v0, p1

    #@7f
    iget-boolean v4, v0, Lcom/android/server/notification/NotificationRecord;->isUpdate:Z

    #@81
    if-eqz v4, :cond_b

    #@83
    .line 2344
    move-object/from16 v0, v25

    #@85
    iget v4, v0, Landroid/app/Notification;->flags:I

    #@87
    and-int/lit8 v4, v4, 0x8

    #@89
    if-eqz v4, :cond_b

    #@8b
    .line 2457
    :cond_4
    :goto_2
    move-object/from16 v0, p0

    #@8d
    iget-object v4, v0, Lcom/android/server/notification/NotificationManagerService;->mLights:Ljava/util/ArrayList;

    #@8f
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    #@92
    move-result-object v5

    #@93
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@96
    move-result v33

    #@97
    .line 2458
    .local v33, "wasShowLights":Z
    move-object/from16 v0, v25

    #@99
    iget v4, v0, Landroid/app/Notification;->flags:I

    #@9b
    and-int/lit8 v4, v4, 0x1

    #@9d
    if-eqz v4, :cond_23

    #@9f
    if-eqz v10, :cond_23

    #@a1
    .line 2459
    move-object/from16 v0, p0

    #@a3
    iget-object v4, v0, Lcom/android/server/notification/NotificationManagerService;->mLights:Ljava/util/ArrayList;

    #@a5
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    #@a8
    move-result-object v5

    #@a9
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@ac
    .line 2460
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->updateLightsLocked()V

    #@af
    .line 2461
    move-object/from16 v0, p0

    #@b1
    iget-boolean v4, v0, Lcom/android/server/notification/NotificationManagerService;->mUseAttentionLight:Z

    #@b3
    if-eqz v4, :cond_5

    #@b5
    .line 2462
    move-object/from16 v0, p0

    #@b7
    iget-object v4, v0, Lcom/android/server/notification/NotificationManagerService;->mAttentionLight:Lcom/android/server/lights/Light;

    #@b9
    invoke-virtual {v4}, Lcom/android/server/lights/Light;->pulse()V

    #@bc
    .line 2464
    :cond_5
    const/4 v13, 0x1

    #@bd
    .line 2468
    :cond_6
    :goto_3
    if-nez v14, :cond_7

    #@bf
    if-nez v12, :cond_7

    #@c1
    if-eqz v13, :cond_8

    #@c3
    .line 2469
    :cond_7
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    #@c6
    move-result-object v7

    #@c7
    .line 2470
    if-eqz v14, :cond_24

    #@c9
    const/4 v4, 0x1

    #@ca
    move v6, v4

    #@cb
    :goto_4
    if-eqz v12, :cond_25

    #@cd
    const/4 v4, 0x1

    #@ce
    move v5, v4

    #@cf
    :goto_5
    if-eqz v13, :cond_26

    #@d1
    const/4 v4, 0x1

    #@d2
    .line 2469
    :goto_6
    invoke-static {v7, v6, v5, v4}, Lcom/android/server/EventLogTags;->writeNotificationAlert(Ljava/lang/String;III)V

    #@d5
    .line 2471
    move-object/from16 v0, p0

    #@d7
    iget-object v4, v0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    #@d9
    move-object/from16 v0, p0

    #@db
    iget-object v5, v0, Lcom/android/server/notification/NotificationManagerService;->mBuzzBeepBlinked:Ljava/lang/Runnable;

    #@dd
    invoke-virtual {v4, v5}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->post(Ljava/lang/Runnable;)Z

    #@e0
    .line 2313
    :cond_8
    return-void

    #@e1
    .line 2321
    .end local v10    # "aboveThreshold":Z
    .end local v15    # "canInterrupt":Z
    .end local v17    # "currentUser":I
    .end local v18    # "disableEffects":Ljava/lang/String;
    .end local v30    # "token":J
    .end local v33    # "wasShowLights":Z
    :cond_9
    const/4 v10, 0x0

    #@e2
    .restart local v10    # "aboveThreshold":Z
    goto/16 :goto_0

    #@e4
    .line 2322
    :cond_a
    const/4 v15, 0x1

    #@e5
    .restart local v15    # "canInterrupt":Z
    goto/16 :goto_1

    #@e7
    .line 2333
    .restart local v30    # "token":J
    :catchall_0
    move-exception v4

    #@e8
    .line 2334
    invoke-static/range {v30 .. v31}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@eb
    .line 2333
    throw v4

    #@ec
    .line 2345
    .restart local v17    # "currentUser":I
    .restart local v18    # "disableEffects":Ljava/lang/String;
    :cond_b
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getUserId()I

    #@ef
    move-result v4

    #@f0
    const/4 v5, -0x1

    #@f1
    if-eq v4, v5, :cond_c

    #@f3
    .line 2346
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getUserId()I

    #@f6
    move-result v4

    #@f7
    move/from16 v0, v17

    #@f9
    if-ne v4, v0, :cond_12

    #@fb
    .line 2342
    :cond_c
    :goto_7
    if-eqz v15, :cond_4

    #@fd
    .line 2349
    move-object/from16 v0, p0

    #@ff
    iget-boolean v4, v0, Lcom/android/server/notification/NotificationManagerService;->mSystemReady:Z

    #@101
    .line 2342
    if-eqz v4, :cond_4

    #@103
    .line 2350
    move-object/from16 v0, p0

    #@105
    iget-object v4, v0, Lcom/android/server/notification/NotificationManagerService;->mAudioManager:Landroid/media/AudioManager;

    #@107
    if-eqz v4, :cond_4

    #@109
    .line 2351
    sget-boolean v4, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    #@10b
    if-eqz v4, :cond_d

    #@10d
    const-string/jumbo v4, "NotificationService"

    #@110
    const-string/jumbo v5, "Interrupting!"

    #@113
    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@116
    .line 2353
    :cond_d
    move-object/from16 v0, p1

    #@118
    iget-object v4, v0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    #@11a
    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    #@11d
    move-result-object v4

    #@11e
    move-object/from16 v0, p0

    #@120
    move-object/from16 v1, v25

    #@122
    invoke-virtual {v0, v1, v4}, Lcom/android/server/notification/NotificationManagerService;->sendAccessibilityEvent(Landroid/app/Notification;Ljava/lang/CharSequence;)V

    #@125
    .line 2361
    move-object/from16 v0, v25

    #@127
    iget v4, v0, Landroid/app/Notification;->defaults:I

    #@129
    and-int/lit8 v4, v4, 0x1

    #@12b
    if-nez v4, :cond_13

    #@12d
    .line 2362
    sget-object v4, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    #@12f
    .line 2363
    move-object/from16 v0, v25

    #@131
    iget-object v5, v0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    #@133
    .line 2362
    invoke-virtual {v4, v5}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    #@136
    move-result v29

    #@137
    .line 2365
    :goto_8
    const/16 v28, 0x0

    #@139
    .line 2366
    .local v28, "soundUri":Landroid/net/Uri;
    const/16 v21, 0x0

    #@13b
    .line 2368
    .local v21, "hasValidSound":Z
    if-eqz v29, :cond_15

    #@13d
    .line 2369
    sget-object v28, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    #@13f
    .line 2372
    .local v28, "soundUri":Landroid/net/Uri;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    #@142
    move-result-object v4

    #@143
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@146
    move-result-object v27

    #@147
    .line 2374
    .local v27, "resolver":Landroid/content/ContentResolver;
    const-string/jumbo v4, "notification_sound"

    #@14a
    .line 2373
    move-object/from16 v0, v27

    #@14c
    invoke-static {v0, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    #@14f
    move-result-object v4

    #@150
    if-eqz v4, :cond_14

    #@152
    const/16 v21, 0x1

    #@154
    .line 2380
    .end local v27    # "resolver":Landroid/content/ContentResolver;
    .end local v28    # "soundUri":Landroid/net/Uri;
    :cond_e
    :goto_9
    if-eqz v21, :cond_f

    #@156
    .line 2382
    move-object/from16 v0, v25

    #@158
    iget v4, v0, Landroid/app/Notification;->flags:I

    #@15a
    and-int/lit8 v4, v4, 0x4

    #@15c
    if-eqz v4, :cond_17

    #@15e
    const/16 v24, 0x1

    #@160
    .line 2383
    .local v24, "looping":Z
    :goto_a
    invoke-static/range {v25 .. v25}, Lcom/android/server/notification/NotificationManagerService;->audioAttributesForNotification(Landroid/app/Notification;)Landroid/media/AudioAttributes;

    #@163
    move-result-object v11

    #@164
    .line 2384
    .local v11, "audioAttributes":Landroid/media/AudioAttributes;
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    #@167
    move-result-object v4

    #@168
    move-object/from16 v0, p0

    #@16a
    iput-object v4, v0, Lcom/android/server/notification/NotificationManagerService;->mSoundNotificationKey:Ljava/lang/String;

    #@16c
    .line 2387
    move-object/from16 v0, p0

    #@16e
    iget-object v4, v0, Lcom/android/server/notification/NotificationManagerService;->mAudioManager:Landroid/media/AudioManager;

    #@170
    .line 2388
    invoke-static {v11}, Landroid/media/AudioAttributes;->toLegacyStreamType(Landroid/media/AudioAttributes;)I

    #@173
    move-result v5

    #@174
    .line 2387
    invoke-virtual {v4, v5}, Landroid/media/AudioManager;->getStreamVolume(I)I

    #@177
    move-result v4

    #@178
    if-eqz v4, :cond_f

    #@17a
    .line 2389
    move-object/from16 v0, p0

    #@17c
    iget-object v4, v0, Lcom/android/server/notification/NotificationManagerService;->mAudioManager:Landroid/media/AudioManager;

    #@17e
    invoke-virtual {v4}, Landroid/media/AudioManager;->isAudioFocusExclusive()Z

    #@181
    move-result v4

    #@182
    if-eqz v4, :cond_18

    #@184
    .line 2410
    .end local v11    # "audioAttributes":Landroid/media/AudioAttributes;
    .end local v24    # "looping":Z
    :cond_f
    :goto_b
    move-object/from16 v0, v25

    #@186
    iget-object v4, v0, Landroid/app/Notification;->vibrate:[J

    #@188
    if-eqz v4, :cond_1b

    #@18a
    const/16 v20, 0x1

    #@18c
    .line 2415
    .local v20, "hasCustomVibrate":Z
    :goto_c
    if-nez v20, :cond_1d

    #@18e
    if-eqz v21, :cond_1d

    #@190
    .line 2417
    move-object/from16 v0, p0

    #@192
    iget-object v4, v0, Lcom/android/server/notification/NotificationManagerService;->mAudioManager:Landroid/media/AudioManager;

    #@194
    invoke-virtual {v4}, Landroid/media/AudioManager;->getRingerModeInternal()I

    #@197
    move-result v4

    #@198
    .line 2418
    const/4 v5, 0x1

    #@199
    .line 2417
    if-ne v4, v5, :cond_1c

    #@19b
    const/16 v16, 0x1

    #@19d
    .line 2422
    .local v16, "convertSoundToVibration":Z
    :goto_d
    move-object/from16 v0, v25

    #@19f
    iget v4, v0, Landroid/app/Notification;->defaults:I

    #@1a1
    and-int/lit8 v4, v4, 0x2

    #@1a3
    if-eqz v4, :cond_1e

    #@1a5
    const/16 v32, 0x1

    #@1a7
    .line 2424
    .local v32, "useDefaultVibrate":Z
    :goto_e
    if-nez v32, :cond_10

    #@1a9
    if-nez v16, :cond_10

    #@1ab
    if-eqz v20, :cond_4

    #@1ad
    .line 2425
    :cond_10
    move-object/from16 v0, p0

    #@1af
    iget-object v4, v0, Lcom/android/server/notification/NotificationManagerService;->mAudioManager:Landroid/media/AudioManager;

    #@1b1
    invoke-virtual {v4}, Landroid/media/AudioManager;->getRingerModeInternal()I

    #@1b4
    move-result v4

    #@1b5
    if-eqz v4, :cond_4

    #@1b7
    .line 2427
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    #@1ba
    move-result-object v4

    #@1bb
    move-object/from16 v0, p0

    #@1bd
    iput-object v4, v0, Lcom/android/server/notification/NotificationManagerService;->mVibrateNotificationKey:Ljava/lang/String;

    #@1bf
    .line 2429
    if-nez v32, :cond_11

    #@1c1
    if-eqz v16, :cond_21

    #@1c3
    .line 2432
    :cond_11
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@1c6
    move-result-wide v22

    #@1c7
    .line 2434
    .local v22, "identity":J
    :try_start_1
    move-object/from16 v0, p0

    #@1c9
    iget-object v4, v0, Lcom/android/server/notification/NotificationManagerService;->mVibrator:Landroid/os/Vibrator;

    #@1cb
    move-object/from16 v0, p1

    #@1cd
    iget-object v5, v0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    #@1cf
    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getUid()I

    #@1d2
    move-result v5

    #@1d3
    move-object/from16 v0, p1

    #@1d5
    iget-object v6, v0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    #@1d7
    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getOpPkg()Ljava/lang/String;

    #@1da
    move-result-object v6

    #@1db
    .line 2435
    if-eqz v32, :cond_1f

    #@1dd
    move-object/from16 v0, p0

    #@1df
    iget-object v7, v0, Lcom/android/server/notification/NotificationManagerService;->mDefaultVibrationPattern:[J

    #@1e1
    .line 2437
    :goto_f
    move-object/from16 v0, v25

    #@1e3
    iget v8, v0, Landroid/app/Notification;->flags:I

    #@1e5
    and-int/lit8 v8, v8, 0x4

    #@1e7
    if-eqz v8, :cond_20

    #@1e9
    .line 2438
    const/4 v8, 0x0

    #@1ea
    :goto_10
    invoke-static/range {v25 .. v25}, Lcom/android/server/notification/NotificationManagerService;->audioAttributesForNotification(Landroid/app/Notification;)Landroid/media/AudioAttributes;

    #@1ed
    move-result-object v9

    #@1ee
    .line 2434
    invoke-virtual/range {v4 .. v9}, Landroid/os/Vibrator;->vibrate(ILjava/lang/String;[JILandroid/media/AudioAttributes;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    #@1f1
    .line 2439
    const/4 v14, 0x1

    #@1f2
    .line 2441
    invoke-static/range {v22 .. v23}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@1f5
    goto/16 :goto_2

    #@1f7
    .line 2347
    .end local v16    # "convertSoundToVibration":Z
    .end local v20    # "hasCustomVibrate":Z
    .end local v21    # "hasValidSound":Z
    .end local v22    # "identity":J
    .end local v32    # "useDefaultVibrate":Z
    :cond_12
    move-object/from16 v0, p0

    #@1f9
    iget-object v4, v0, Lcom/android/server/notification/NotificationManagerService;->mUserProfiles:Lcom/android/server/notification/ManagedServices$UserProfiles;

    #@1fb
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getUserId()I

    #@1fe
    move-result v5

    #@1ff
    invoke-virtual {v4, v5}, Lcom/android/server/notification/ManagedServices$UserProfiles;->isCurrentProfile(I)Z

    #@202
    move-result v4

    #@203
    .line 2342
    if-eqz v4, :cond_4

    #@205
    goto/16 :goto_7

    #@207
    .line 2361
    :cond_13
    const/16 v29, 0x1

    #@209
    .local v29, "useDefaultSound":Z
    goto/16 :goto_8

    #@20b
    .line 2373
    .end local v29    # "useDefaultSound":Z
    .restart local v21    # "hasValidSound":Z
    .restart local v27    # "resolver":Landroid/content/ContentResolver;
    .restart local v28    # "soundUri":Landroid/net/Uri;
    :cond_14
    const/16 v21, 0x0

    #@20d
    goto/16 :goto_9

    #@20f
    .line 2375
    .end local v27    # "resolver":Landroid/content/ContentResolver;
    .local v28, "soundUri":Landroid/net/Uri;
    :cond_15
    move-object/from16 v0, v25

    #@211
    iget-object v4, v0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    #@213
    if-eqz v4, :cond_e

    #@215
    .line 2376
    move-object/from16 v0, v25

    #@217
    iget-object v0, v0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    #@219
    move-object/from16 v28, v0

    #@21b
    .line 2377
    .local v28, "soundUri":Landroid/net/Uri;
    if-eqz v28, :cond_16

    #@21d
    const/16 v21, 0x1

    #@21f
    goto/16 :goto_9

    #@221
    :cond_16
    const/16 v21, 0x0

    #@223
    goto/16 :goto_9

    #@225
    .line 2382
    .end local v28    # "soundUri":Landroid/net/Uri;
    :cond_17
    const/16 v24, 0x0

    #@227
    .restart local v24    # "looping":Z
    goto/16 :goto_a

    #@229
    .line 2390
    .restart local v11    # "audioAttributes":Landroid/media/AudioAttributes;
    :cond_18
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@22c
    move-result-wide v22

    #@22d
    .line 2393
    .restart local v22    # "identity":J
    :try_start_2
    move-object/from16 v0, p0

    #@22f
    iget-object v4, v0, Lcom/android/server/notification/NotificationManagerService;->mAudioManager:Landroid/media/AudioManager;

    #@231
    invoke-virtual {v4}, Landroid/media/AudioManager;->getRingtonePlayer()Landroid/media/IRingtonePlayer;

    #@234
    move-result-object v26

    #@235
    .line 2394
    .local v26, "player":Landroid/media/IRingtonePlayer;
    if-eqz v26, :cond_1a

    #@237
    .line 2395
    sget-boolean v4, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    #@239
    if-eqz v4, :cond_19

    #@23b
    const-string/jumbo v4, "NotificationService"

    #@23e
    new-instance v5, Ljava/lang/StringBuilder;

    #@240
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@243
    const-string/jumbo v6, "Playing sound "

    #@246
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@249
    move-result-object v5

    #@24a
    move-object/from16 v0, v28

    #@24c
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@24f
    move-result-object v5

    #@250
    .line 2396
    const-string/jumbo v6, " with attributes "

    #@253
    .line 2395
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@256
    move-result-object v5

    #@257
    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@25a
    move-result-object v5

    #@25b
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@25e
    move-result-object v5

    #@25f
    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@262
    .line 2397
    :cond_19
    move-object/from16 v0, p1

    #@264
    iget-object v4, v0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    #@266
    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    #@269
    move-result-object v4

    #@26a
    move-object/from16 v0, v26

    #@26c
    move-object/from16 v1, v28

    #@26e
    move/from16 v2, v24

    #@270
    invoke-interface {v0, v1, v4, v2, v11}, Landroid/media/IRingtonePlayer;->playAsync(Landroid/net/Uri;Landroid/os/UserHandle;ZLandroid/media/AudioAttributes;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@273
    .line 2399
    const/4 v12, 0x1

    #@274
    .line 2403
    :cond_1a
    invoke-static/range {v22 .. v23}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@277
    goto/16 :goto_b

    #@279
    .line 2401
    .end local v26    # "player":Landroid/media/IRingtonePlayer;
    :catch_0
    move-exception v19

    #@27a
    .line 2403
    .local v19, "e":Landroid/os/RemoteException;
    invoke-static/range {v22 .. v23}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@27d
    goto/16 :goto_b

    #@27f
    .line 2402
    .end local v19    # "e":Landroid/os/RemoteException;
    :catchall_1
    move-exception v4

    #@280
    .line 2403
    invoke-static/range {v22 .. v23}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@283
    .line 2402
    throw v4

    #@284
    .line 2410
    .end local v11    # "audioAttributes":Landroid/media/AudioAttributes;
    .end local v22    # "identity":J
    .end local v24    # "looping":Z
    :cond_1b
    const/16 v20, 0x0

    #@286
    .restart local v20    # "hasCustomVibrate":Z
    goto/16 :goto_c

    #@288
    .line 2417
    :cond_1c
    const/16 v16, 0x0

    #@28a
    .restart local v16    # "convertSoundToVibration":Z
    goto/16 :goto_d

    #@28c
    .line 2415
    .end local v16    # "convertSoundToVibration":Z
    :cond_1d
    const/16 v16, 0x0

    #@28e
    .restart local v16    # "convertSoundToVibration":Z
    goto/16 :goto_d

    #@290
    .line 2422
    :cond_1e
    const/16 v32, 0x0

    #@292
    .restart local v32    # "useDefaultVibrate":Z
    goto/16 :goto_e

    #@294
    .line 2436
    .restart local v22    # "identity":J
    :cond_1f
    :try_start_3
    move-object/from16 v0, p0

    #@296
    iget-object v7, v0, Lcom/android/server/notification/NotificationManagerService;->mFallbackVibrationPattern:[J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    #@298
    goto/16 :goto_f

    #@29a
    .line 2438
    :cond_20
    const/4 v8, -0x1

    #@29b
    goto/16 :goto_10

    #@29d
    .line 2440
    :catchall_2
    move-exception v4

    #@29e
    .line 2441
    invoke-static/range {v22 .. v23}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@2a1
    .line 2440
    throw v4

    #@2a2
    .line 2443
    .end local v22    # "identity":J
    :cond_21
    move-object/from16 v0, v25

    #@2a4
    iget-object v4, v0, Landroid/app/Notification;->vibrate:[J

    #@2a6
    array-length v4, v4

    #@2a7
    const/4 v5, 0x1

    #@2a8
    if-le v4, v5, :cond_4

    #@2aa
    .line 2446
    move-object/from16 v0, p0

    #@2ac
    iget-object v4, v0, Lcom/android/server/notification/NotificationManagerService;->mVibrator:Landroid/os/Vibrator;

    #@2ae
    move-object/from16 v0, p1

    #@2b0
    iget-object v5, v0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    #@2b2
    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getUid()I

    #@2b5
    move-result v5

    #@2b6
    move-object/from16 v0, p1

    #@2b8
    iget-object v6, v0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    #@2ba
    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getOpPkg()Ljava/lang/String;

    #@2bd
    move-result-object v6

    #@2be
    .line 2447
    move-object/from16 v0, v25

    #@2c0
    iget-object v7, v0, Landroid/app/Notification;->vibrate:[J

    #@2c2
    .line 2448
    move-object/from16 v0, v25

    #@2c4
    iget v8, v0, Landroid/app/Notification;->flags:I

    #@2c6
    and-int/lit8 v8, v8, 0x4

    #@2c8
    if-eqz v8, :cond_22

    #@2ca
    .line 2449
    const/4 v8, 0x0

    #@2cb
    :goto_11
    invoke-static/range {v25 .. v25}, Lcom/android/server/notification/NotificationManagerService;->audioAttributesForNotification(Landroid/app/Notification;)Landroid/media/AudioAttributes;

    #@2ce
    move-result-object v9

    #@2cf
    .line 2446
    invoke-virtual/range {v4 .. v9}, Landroid/os/Vibrator;->vibrate(ILjava/lang/String;[JILandroid/media/AudioAttributes;)V

    #@2d2
    .line 2450
    const/4 v14, 0x1

    #@2d3
    goto/16 :goto_2

    #@2d5
    .line 2449
    :cond_22
    const/4 v8, -0x1

    #@2d6
    goto :goto_11

    #@2d7
    .line 2465
    .end local v16    # "convertSoundToVibration":Z
    .end local v20    # "hasCustomVibrate":Z
    .end local v21    # "hasValidSound":Z
    .end local v32    # "useDefaultVibrate":Z
    .restart local v33    # "wasShowLights":Z
    :cond_23
    if-eqz v33, :cond_6

    #@2d9
    .line 2466
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->updateLightsLocked()V

    #@2dc
    goto/16 :goto_3

    #@2de
    .line 2470
    :cond_24
    const/4 v4, 0x0

    #@2df
    move v6, v4

    #@2e0
    goto/16 :goto_4

    #@2e2
    :cond_25
    const/4 v4, 0x0

    #@2e3
    move v5, v4

    #@2e4
    goto/16 :goto_5

    #@2e6
    :cond_26
    const/4 v4, 0x0

    #@2e7
    goto/16 :goto_6
.end method

.method private static callStateToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "state"    # I

    #@0
    .prologue
    .line 3150
    packed-switch p0, :pswitch_data_0

    #@3
    .line 3154
    new-instance v0, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v1, "CALL_STATE_UNKNOWN_"

    #@b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v0

    #@f
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@12
    move-result-object v0

    #@13
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@16
    move-result-object v0

    #@17
    return-object v0

    #@18
    .line 3151
    :pswitch_0
    const-string/jumbo v0, "CALL_STATE_IDLE"

    #@1b
    return-object v0

    #@1c
    .line 3152
    :pswitch_1
    const-string/jumbo v0, "CALL_STATE_RINGING"

    #@1f
    return-object v0

    #@20
    .line 3153
    :pswitch_2
    const-string/jumbo v0, "CALL_STATE_OFFHOOK"

    #@23
    return-object v0

    #@24
    .line 3150
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private cancelGroupChildrenLocked(Lcom/android/server/notification/NotificationRecord;IILjava/lang/String;I)V
    .locals 17
    .param p1, "r"    # Lcom/android/server/notification/NotificationRecord;
    .param p2, "callingUid"    # I
    .param p3, "callingPid"    # I
    .param p4, "listenerName"    # Ljava/lang/String;
    .param p5, "reason"    # I

    #@0
    .prologue
    .line 3016
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    #@3
    move-result-object v16

    #@4
    .line 3017
    .local v16, "n":Landroid/app/Notification;
    invoke-virtual/range {v16 .. v16}, Landroid/app/Notification;->isGroupSummary()Z

    #@7
    move-result v2

    #@8
    if-nez v2, :cond_0

    #@a
    .line 3018
    return-void

    #@b
    .line 3021
    :cond_0
    move-object/from16 v0, p1

    #@d
    iget-object v2, v0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    #@f
    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    #@12
    move-result-object v4

    #@13
    .line 3022
    .local v4, "pkg":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getUserId()I

    #@16
    move-result v7

    #@17
    .line 3024
    .local v7, "userId":I
    if-nez v4, :cond_2

    #@19
    .line 3025
    sget-boolean v2, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    #@1b
    if-eqz v2, :cond_1

    #@1d
    const-string/jumbo v2, "NotificationService"

    #@20
    new-instance v3, Ljava/lang/StringBuilder;

    #@22
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@25
    const-string/jumbo v5, "No package for group summary: "

    #@28
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v3

    #@2c
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    #@2f
    move-result-object v5

    #@30
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v3

    #@34
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@37
    move-result-object v3

    #@38
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@3b
    .line 3026
    :cond_1
    return-void

    #@3c
    .line 3029
    :cond_2
    move-object/from16 v0, p0

    #@3e
    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    #@40
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@43
    move-result v12

    #@44
    .line 3030
    .local v12, "N":I
    add-int/lit8 v15, v12, -0x1

    #@46
    .local v15, "i":I
    :goto_0
    if-ltz v15, :cond_4

    #@48
    .line 3031
    move-object/from16 v0, p0

    #@4a
    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    #@4c
    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@4f
    move-result-object v13

    #@50
    check-cast v13, Lcom/android/server/notification/NotificationRecord;

    #@52
    .line 3032
    .local v13, "childR":Lcom/android/server/notification/NotificationRecord;
    iget-object v14, v13, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    #@54
    .line 3033
    .local v14, "childSbn":Landroid/service/notification/StatusBarNotification;
    invoke-virtual {v13}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    #@57
    move-result-object v2

    #@58
    invoke-virtual {v2}, Landroid/app/Notification;->isGroupChild()Z

    #@5b
    move-result v2

    #@5c
    if-eqz v2, :cond_3

    #@5e
    .line 3034
    invoke-virtual {v13}, Lcom/android/server/notification/NotificationRecord;->getGroupKey()Ljava/lang/String;

    #@61
    move-result-object v2

    #@62
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getGroupKey()Ljava/lang/String;

    #@65
    move-result-object v3

    #@66
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@69
    move-result v2

    #@6a
    .line 3033
    if-eqz v2, :cond_3

    #@6c
    .line 3035
    invoke-virtual {v14}, Landroid/service/notification/StatusBarNotification;->getId()I

    #@6f
    move-result v5

    #@70
    .line 3036
    invoke-virtual {v14}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    #@73
    move-result-object v6

    #@74
    const/4 v8, 0x0

    #@75
    const/4 v9, 0x0

    #@76
    move/from16 v2, p2

    #@78
    move/from16 v3, p3

    #@7a
    move/from16 v10, p5

    #@7c
    move-object/from16 v11, p4

    #@7e
    .line 3035
    invoke-static/range {v2 .. v11}, Lcom/android/server/EventLogTags;->writeNotificationCancel(IILjava/lang/String;ILjava/lang/String;IIIILjava/lang/String;)V

    #@81
    .line 3037
    move-object/from16 v0, p0

    #@83
    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    #@85
    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@88
    .line 3038
    const/4 v2, 0x0

    #@89
    move-object/from16 v0, p0

    #@8b
    move/from16 v1, p5

    #@8d
    invoke-direct {v0, v13, v2, v1}, Lcom/android/server/notification/NotificationManagerService;->cancelNotificationLocked(Lcom/android/server/notification/NotificationRecord;ZI)V

    #@90
    .line 3030
    :cond_3
    add-int/lit8 v15, v15, -0x1

    #@92
    goto :goto_0

    #@93
    .line 3015
    .end local v13    # "childR":Lcom/android/server/notification/NotificationRecord;
    .end local v14    # "childSbn":Landroid/service/notification/StatusBarNotification;
    :cond_4
    return-void
.end method

.method private cancelNotificationLocked(Lcom/android/server/notification/NotificationRecord;ZI)V
    .locals 15
    .param p1, "r"    # Lcom/android/server/notification/NotificationRecord;
    .param p2, "sendDelete"    # Z
    .param p3, "reason"    # I

    #@0
    .prologue
    .line 2765
    if-eqz p2, :cond_0

    #@2
    .line 2766
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    #@5
    move-result-object v12

    #@6
    iget-object v12, v12, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    #@8
    if-eqz v12, :cond_0

    #@a
    .line 2768
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    #@d
    move-result-object v12

    #@e
    iget-object v12, v12, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    #@10
    invoke-virtual {v12}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    #@13
    .line 2778
    :cond_0
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    #@16
    move-result-object v12

    #@17
    invoke-virtual {v12}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    #@1a
    move-result-object v12

    #@1b
    if-eqz v12, :cond_1

    #@1d
    .line 2779
    const/4 v12, 0x1

    #@1e
    move-object/from16 v0, p1

    #@20
    iput-boolean v12, v0, Lcom/android/server/notification/NotificationRecord;->isCanceled:Z

    #@22
    .line 2780
    iget-object v12, p0, Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    #@24
    move-object/from16 v0, p1

    #@26
    iget-object v13, v0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    #@28
    invoke-virtual {v12, v13}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->notifyRemovedLocked(Landroid/service/notification/StatusBarNotification;)V

    #@2b
    .line 2783
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    #@2e
    move-result-object v2

    #@2f
    .line 2786
    .local v2, "canceledKey":Ljava/lang/String;
    iget-object v12, p0, Lcom/android/server/notification/NotificationManagerService;->mSoundNotificationKey:Ljava/lang/String;

    #@31
    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@34
    move-result v12

    #@35
    if-eqz v12, :cond_3

    #@37
    .line 2787
    const/4 v12, 0x0

    #@38
    iput-object v12, p0, Lcom/android/server/notification/NotificationManagerService;->mSoundNotificationKey:Ljava/lang/String;

    #@3a
    .line 2788
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@3d
    move-result-wide v8

    #@3e
    .line 2790
    .local v8, "identity":J
    :try_start_1
    iget-object v12, p0, Lcom/android/server/notification/NotificationManagerService;->mAudioManager:Landroid/media/AudioManager;

    #@40
    invoke-virtual {v12}, Landroid/media/AudioManager;->getRingtonePlayer()Landroid/media/IRingtonePlayer;

    #@43
    move-result-object v7

    #@44
    .line 2791
    .local v7, "player":Landroid/media/IRingtonePlayer;
    if-eqz v7, :cond_2

    #@46
    .line 2792
    invoke-interface {v7}, Landroid/media/IRingtonePlayer;->stopAsync()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@49
    .line 2796
    :cond_2
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@4c
    .line 2801
    .end local v7    # "player":Landroid/media/IRingtonePlayer;
    .end local v8    # "identity":J
    :cond_3
    :goto_1
    iget-object v12, p0, Lcom/android/server/notification/NotificationManagerService;->mVibrateNotificationKey:Ljava/lang/String;

    #@4e
    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@51
    move-result v12

    #@52
    if-eqz v12, :cond_4

    #@54
    .line 2802
    const/4 v12, 0x0

    #@55
    iput-object v12, p0, Lcom/android/server/notification/NotificationManagerService;->mVibrateNotificationKey:Ljava/lang/String;

    #@57
    .line 2803
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@5a
    move-result-wide v8

    #@5b
    .line 2805
    .restart local v8    # "identity":J
    :try_start_2
    iget-object v12, p0, Lcom/android/server/notification/NotificationManagerService;->mVibrator:Landroid/os/Vibrator;

    #@5d
    invoke-virtual {v12}, Landroid/os/Vibrator;->cancel()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@60
    .line 2808
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@63
    .line 2813
    .end local v8    # "identity":J
    :cond_4
    iget-object v12, p0, Lcom/android/server/notification/NotificationManagerService;->mLights:Ljava/util/ArrayList;

    #@65
    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@68
    .line 2816
    packed-switch p3, :pswitch_data_0

    #@6b
    .line 2829
    :goto_2
    :pswitch_0
    iget-object v12, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    #@6d
    move-object/from16 v0, p1

    #@6f
    iget-object v13, v0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    #@71
    invoke-virtual {v13}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    #@74
    move-result-object v13

    #@75
    invoke-virtual {v12, v13}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@78
    .line 2830
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getGroupKey()Ljava/lang/String;

    #@7b
    move-result-object v5

    #@7c
    .line 2831
    .local v5, "groupKey":Ljava/lang/String;
    iget-object v12, p0, Lcom/android/server/notification/NotificationManagerService;->mSummaryByGroupKey:Landroid/util/ArrayMap;

    #@7e
    invoke-virtual {v12, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@81
    move-result-object v6

    #@82
    check-cast v6, Lcom/android/server/notification/NotificationRecord;

    #@84
    .line 2832
    .local v6, "groupSummary":Lcom/android/server/notification/NotificationRecord;
    if-eqz v6, :cond_5

    #@86
    invoke-virtual {v6}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    #@89
    move-result-object v12

    #@8a
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    #@8d
    move-result-object v13

    #@8e
    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@91
    move-result v12

    #@92
    if-eqz v12, :cond_5

    #@94
    .line 2833
    iget-object v12, p0, Lcom/android/server/notification/NotificationManagerService;->mSummaryByGroupKey:Landroid/util/ArrayMap;

    #@96
    invoke-virtual {v12, v5}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@99
    .line 2837
    :cond_5
    iget-object v12, p0, Lcom/android/server/notification/NotificationManagerService;->mArchive:Lcom/android/server/notification/NotificationManagerService$Archive;

    #@9b
    move-object/from16 v0, p1

    #@9d
    iget-object v13, v0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    #@9f
    invoke-virtual {v12, v13}, Lcom/android/server/notification/NotificationManagerService$Archive;->record(Landroid/service/notification/StatusBarNotification;)V

    #@a2
    .line 2839
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@a5
    move-result-wide v10

    #@a6
    .line 2841
    .local v10, "now":J
    move-object/from16 v0, p1

    #@a8
    invoke-virtual {v0, v10, v11}, Lcom/android/server/notification/NotificationRecord;->getLifespanMs(J)I

    #@ab
    move-result v12

    #@ac
    move-object/from16 v0, p1

    #@ae
    invoke-virtual {v0, v10, v11}, Lcom/android/server/notification/NotificationRecord;->getFreshnessMs(J)I

    #@b1
    move-result v13

    #@b2
    move-object/from16 v0, p1

    #@b4
    invoke-virtual {v0, v10, v11}, Lcom/android/server/notification/NotificationRecord;->getExposureMs(J)I

    #@b7
    move-result v14

    #@b8
    .line 2840
    move/from16 v0, p3

    #@ba
    invoke-static {v2, v0, v12, v13, v14}, Lcom/android/server/EventLogTags;->writeNotificationCanceled(Ljava/lang/String;IIII)V

    #@bd
    .line 2763
    return-void

    #@be
    .line 2769
    .end local v2    # "canceledKey":Ljava/lang/String;
    .end local v5    # "groupKey":Ljava/lang/String;
    .end local v6    # "groupSummary":Lcom/android/server/notification/NotificationRecord;
    .end local v10    # "now":J
    :catch_0
    move-exception v4

    #@bf
    .line 2772
    .local v4, "ex":Landroid/app/PendingIntent$CanceledException;
    const-string/jumbo v12, "NotificationService"

    #@c2
    new-instance v13, Ljava/lang/StringBuilder;

    #@c4
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    #@c7
    const-string/jumbo v14, "canceled PendingIntent for "

    #@ca
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@cd
    move-result-object v13

    #@ce
    move-object/from16 v0, p1

    #@d0
    iget-object v14, v0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    #@d2
    invoke-virtual {v14}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    #@d5
    move-result-object v14

    #@d6
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d9
    move-result-object v13

    #@da
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@dd
    move-result-object v13

    #@de
    invoke-static {v12, v13, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@e1
    goto/16 :goto_0

    #@e3
    .line 2794
    .end local v4    # "ex":Landroid/app/PendingIntent$CanceledException;
    .restart local v2    # "canceledKey":Ljava/lang/String;
    .restart local v8    # "identity":J
    :catch_1
    move-exception v3

    #@e4
    .line 2796
    .local v3, "e":Landroid/os/RemoteException;
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@e7
    goto/16 :goto_1

    #@e9
    .line 2795
    .end local v3    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v12

    #@ea
    .line 2796
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@ed
    .line 2795
    throw v12

    #@ee
    .line 2807
    :catchall_1
    move-exception v12

    #@ef
    .line 2808
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@f2
    .line 2807
    throw v12

    #@f3
    .line 2821
    .end local v8    # "identity":J
    :pswitch_1
    iget-object v12, p0, Lcom/android/server/notification/NotificationManagerService;->mUsageStats:Lcom/android/server/notification/NotificationUsageStats;

    #@f5
    move-object/from16 v0, p1

    #@f7
    invoke-virtual {v12, v0}, Lcom/android/server/notification/NotificationUsageStats;->registerDismissedByUser(Lcom/android/server/notification/NotificationRecord;)V

    #@fa
    goto/16 :goto_2

    #@fc
    .line 2825
    :pswitch_2
    iget-object v12, p0, Lcom/android/server/notification/NotificationManagerService;->mUsageStats:Lcom/android/server/notification/NotificationUsageStats;

    #@fe
    move-object/from16 v0, p1

    #@100
    invoke-virtual {v12, v0}, Lcom/android/server/notification/NotificationUsageStats;->registerRemovedByApp(Lcom/android/server/notification/NotificationRecord;)V

    #@103
    goto/16 :goto_2

    #@105
    .line 2816
    nop

    #@106
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private static checkCallerIsSystem()V
    .locals 3

    #@0
    .prologue
    .line 3123
    invoke-static {}, Lcom/android/server/notification/NotificationManagerService;->isCallerSystem()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 3124
    return-void

    #@7
    .line 3126
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    #@9
    new-instance v1, Ljava/lang/StringBuilder;

    #@b
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    const-string/jumbo v2, "Disallowed call for uid "

    #@11
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v1

    #@15
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@18
    move-result v2

    #@19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v1

    #@1d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@20
    move-result-object v1

    #@21
    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@24
    throw v0
.end method

.method private static checkCallerIsSystemOrSameApp(Ljava/lang/String;)V
    .locals 6
    .param p0, "pkg"    # Ljava/lang/String;

    #@0
    .prologue
    .line 3130
    invoke-static {}, Lcom/android/server/notification/NotificationManagerService;->isCallerSystem()Z

    #@3
    move-result v3

    #@4
    if-eqz v3, :cond_0

    #@6
    .line 3131
    return-void

    #@7
    .line 3133
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@a
    move-result v2

    #@b
    .line 3135
    .local v2, "uid":I
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    #@e
    move-result-object v3

    #@f
    .line 3136
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@12
    move-result v4

    #@13
    const/4 v5, 0x0

    #@14
    .line 3135
    invoke-interface {v3, p0, v5, v4}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    #@17
    move-result-object v0

    #@18
    .line 3137
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    if-nez v0, :cond_1

    #@1a
    .line 3138
    new-instance v3, Ljava/lang/SecurityException;

    #@1c
    new-instance v4, Ljava/lang/StringBuilder;

    #@1e
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@21
    const-string/jumbo v5, "Unknown package "

    #@24
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v4

    #@28
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v4

    #@2c
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2f
    move-result-object v4

    #@30
    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@33
    throw v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@34
    .line 3144
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v1

    #@35
    .line 3145
    .local v1, "re":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/SecurityException;

    #@37
    new-instance v4, Ljava/lang/StringBuilder;

    #@39
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@3c
    const-string/jumbo v5, "Unknown package "

    #@3f
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v4

    #@43
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@46
    move-result-object v4

    #@47
    const-string/jumbo v5, "\n"

    #@4a
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v4

    #@4e
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@51
    move-result-object v4

    #@52
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@55
    move-result-object v4

    #@56
    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@59
    throw v3

    #@5a
    .line 3140
    .end local v1    # "re":Landroid/os/RemoteException;
    .restart local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    :cond_1
    :try_start_1
    iget v3, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    #@5c
    invoke-static {v3, v2}, Landroid/os/UserHandle;->isSameApp(II)Z

    #@5f
    move-result v3

    #@60
    if-nez v3, :cond_2

    #@62
    .line 3141
    new-instance v3, Ljava/lang/SecurityException;

    #@64
    new-instance v4, Ljava/lang/StringBuilder;

    #@66
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@69
    const-string/jumbo v5, "Calling uid "

    #@6c
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6f
    move-result-object v4

    #@70
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@73
    move-result-object v4

    #@74
    const-string/jumbo v5, " gave package"

    #@77
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7a
    move-result-object v4

    #@7b
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7e
    move-result-object v4

    #@7f
    .line 3142
    const-string/jumbo v5, " which is owned by uid "

    #@82
    .line 3141
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@85
    move-result-object v4

    #@86
    .line 3142
    iget v5, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    #@88
    .line 3141
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@8b
    move-result-object v4

    #@8c
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8f
    move-result-object v4

    #@90
    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@93
    throw v3
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    #@94
    .line 3129
    :cond_2
    return-void
.end method

.method private checkNotificationOp(Ljava/lang/String;I)Z
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 451
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mAppOps:Landroid/app/AppOpsManager;

    #@3
    const/16 v2, 0xb

    #@5
    invoke-virtual {v1, v2, p2, p1}, Landroid/app/AppOpsManager;->checkOp(IILjava/lang/String;)I

    #@8
    move-result v1

    #@9
    if-nez v1, :cond_0

    #@b
    const/4 v0, 0x1

    #@c
    :cond_0
    return v0
.end method

.method static clamp(III)I
    .locals 0
    .param p0, "x"    # I
    .param p1, "low"    # I
    .param p2, "high"    # I

    #@0
    .prologue
    .line 2741
    if-ge p0, p1, :cond_0

    #@2
    .end local p1    # "low":I
    :goto_0
    return p1

    #@3
    .restart local p1    # "low":I
    :cond_0
    if-le p0, p2, :cond_1

    #@5
    move p1, p2

    #@6
    goto :goto_0

    #@7
    :cond_1
    move p1, p0

    #@8
    goto :goto_0
.end method

.method private disableNotificationEffects(Lcom/android/server/notification/NotificationRecord;)Ljava/lang/String;
    .locals 1
    .param p1, "record"    # Lcom/android/server/notification/NotificationRecord;

    #@0
    .prologue
    .line 1800
    iget-boolean v0, p0, Lcom/android/server/notification/NotificationManagerService;->mDisableNotificationEffects:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 1801
    const-string/jumbo v0, "booleanState"

    #@7
    return-object v0

    #@8
    .line 1803
    :cond_0
    iget v0, p0, Lcom/android/server/notification/NotificationManagerService;->mListenerHints:I

    #@a
    and-int/lit8 v0, v0, 0x1

    #@c
    if-eqz v0, :cond_1

    #@e
    .line 1804
    const-string/jumbo v0, "listenerHints"

    #@11
    return-object v0

    #@12
    .line 1806
    :cond_1
    iget v0, p0, Lcom/android/server/notification/NotificationManagerService;->mCallState:I

    #@14
    if-eqz v0, :cond_2

    #@16
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    #@18
    invoke-virtual {v0, p1}, Lcom/android/server/notification/ZenModeHelper;->isCall(Lcom/android/server/notification/NotificationRecord;)Z

    #@1b
    move-result v0

    #@1c
    if-eqz v0, :cond_3

    #@1e
    .line 1809
    :cond_2
    const/4 v0, 0x0

    #@1f
    return-object v0

    #@20
    .line 1807
    :cond_3
    const-string/jumbo v0, "callState"

    #@23
    return-object v0
.end method

.method private dumpJson(Ljava/io/PrintWriter;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V
    .locals 12
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "filter"    # Lcom/android/server/notification/NotificationManagerService$DumpFilter;

    #@0
    .prologue
    .line 1813
    new-instance v2, Lorg/json/JSONObject;

    #@2
    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    #@5
    .line 1815
    .local v2, "dump":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v10, "service"

    #@8
    const-string/jumbo v11, "Notification Manager"

    #@b
    invoke-virtual {v2, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    #@e
    .line 1816
    new-instance v1, Lorg/json/JSONArray;

    #@10
    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    #@13
    .line 1818
    .local v1, "bans":Lorg/json/JSONArray;
    :try_start_1
    invoke-direct {p0, p2}, Lcom/android/server/notification/NotificationManagerService;->getPackageBans(Lcom/android/server/notification/NotificationManagerService$DumpFilter;)Landroid/util/ArrayMap;

    #@16
    move-result-object v5

    #@17
    .line 1819
    .local v5, "packageBans":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    invoke-virtual {v5}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    #@1a
    move-result-object v10

    #@1b
    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@1e
    move-result-object v9

    #@1f
    .local v9, "userId$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    #@22
    move-result v10

    #@23
    if-eqz v10, :cond_1

    #@25
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@28
    move-result-object v8

    #@29
    check-cast v8, Ljava/lang/Integer;

    #@2b
    .line 1820
    .local v8, "userId":Ljava/lang/Integer;
    invoke-virtual {v5, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@2e
    move-result-object v10

    #@2f
    check-cast v10, Ljava/util/ArrayList;

    #@31
    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@34
    move-result-object v7

    #@35
    .local v7, "packageName$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    #@38
    move-result v10

    #@39
    if-eqz v10, :cond_0

    #@3b
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@3e
    move-result-object v6

    #@3f
    check-cast v6, Ljava/lang/String;

    #@41
    .line 1821
    .local v6, "packageName":Ljava/lang/String;
    new-instance v0, Lorg/json/JSONObject;

    #@43
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    #@46
    .line 1822
    .local v0, "ban":Lorg/json/JSONObject;
    const-string/jumbo v10, "userId"

    #@49
    invoke-virtual {v0, v10, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    #@4c
    .line 1823
    const-string/jumbo v10, "packageName"

    #@4f
    invoke-virtual {v0, v10, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    #@52
    .line 1824
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    #@55
    goto :goto_0

    #@56
    .line 1827
    .end local v0    # "ban":Lorg/json/JSONObject;
    .end local v5    # "packageBans":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .end local v6    # "packageName":Ljava/lang/String;
    .end local v7    # "packageName$iterator":Ljava/util/Iterator;
    .end local v8    # "userId":Ljava/lang/Integer;
    .end local v9    # "userId$iterator":Ljava/util/Iterator;
    :catch_0
    move-exception v3

    #@57
    .line 1830
    :cond_1
    :try_start_2
    const-string/jumbo v10, "bans"

    #@5a
    invoke-virtual {v2, v10, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    #@5d
    .line 1831
    const-string/jumbo v10, "stats"

    #@60
    iget-object v11, p0, Lcom/android/server/notification/NotificationManagerService;->mUsageStats:Lcom/android/server/notification/NotificationUsageStats;

    #@62
    invoke-virtual {v11, p2}, Lcom/android/server/notification/NotificationUsageStats;->dumpJson(Lcom/android/server/notification/NotificationManagerService$DumpFilter;)Lorg/json/JSONObject;

    #@65
    move-result-object v11

    #@66
    invoke-virtual {v2, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    #@69
    .line 1835
    .end local v1    # "bans":Lorg/json/JSONArray;
    :goto_1
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@6c
    .line 1812
    return-void

    #@6d
    .line 1832
    :catch_1
    move-exception v4

    #@6e
    .line 1833
    .local v4, "e":Lorg/json/JSONException;
    invoke-virtual {v4}, Lorg/json/JSONException;->printStackTrace()V

    #@71
    goto :goto_1
.end method

.method private findNotificationRecordIndexLocked(Lcom/android/server/notification/NotificationRecord;)I
    .locals 2
    .param p1, "target"    # Lcom/android/server/notification/NotificationRecord;

    #@0
    .prologue
    .line 2652
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mRankingHelper:Lcom/android/server/notification/RankingHelper;

    #@2
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    #@4
    invoke-virtual {v0, v1, p1}, Lcom/android/server/notification/RankingHelper;->indexOf(Ljava/util/ArrayList;Lcom/android/server/notification/NotificationRecord;)I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method static getLongArray(Landroid/content/res/Resources;II[J)[J
    .locals 6
    .param p0, "r"    # Landroid/content/res/Resources;
    .param p1, "resid"    # I
    .param p2, "maxlen"    # I
    .param p3, "def"    # [J

    #@0
    .prologue
    .line 840
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getIntArray(I)[I

    #@3
    move-result-object v0

    #@4
    .line 841
    .local v0, "ar":[I
    if-nez v0, :cond_0

    #@6
    .line 842
    return-object p3

    #@7
    .line 844
    :cond_0
    array-length v4, v0

    #@8
    if-le v4, p2, :cond_1

    #@a
    move v2, p2

    #@b
    .line 845
    .local v2, "len":I
    :goto_0
    new-array v3, v2, [J

    #@d
    .line 846
    .local v3, "out":[J
    const/4 v1, 0x0

    #@e
    .local v1, "i":I
    :goto_1
    if-ge v1, v2, :cond_2

    #@10
    .line 847
    aget v4, v0, v1

    #@12
    int-to-long v4, v4

    #@13
    aput-wide v4, v3, v1

    #@15
    .line 846
    add-int/lit8 v1, v1, 0x1

    #@17
    goto :goto_1

    #@18
    .line 844
    .end local v1    # "i":I
    .end local v2    # "len":I
    .end local v3    # "out":[J
    :cond_1
    array-length v2, v0

    #@19
    .restart local v2    # "len":I
    goto :goto_0

    #@1a
    .line 849
    .restart local v1    # "i":I
    .restart local v3    # "out":[J
    :cond_2
    return-object v3
.end method

.method private getPackageBans(Lcom/android/server/notification/NotificationManagerService$DumpFilter;)Landroid/util/ArrayMap;
    .locals 12
    .param p1, "filter"    # Lcom/android/server/notification/NotificationManagerService$DumpFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/notification/NotificationManagerService$DumpFilter;",
            ")",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 1971
    new-instance v1, Landroid/util/ArrayMap;

    #@2
    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    #@5
    .line 1972
    .local v1, "packageBans":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    new-instance v5, Ljava/util/ArrayList;

    #@7
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    #@a
    .line 1973
    .local v5, "packageNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    #@d
    move-result-object v11

    #@e
    invoke-static {v11}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    #@11
    move-result-object v11

    #@12
    invoke-virtual {v11}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    #@15
    move-result-object v11

    #@16
    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@19
    move-result-object v9

    #@1a
    .local v9, "user$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    #@1d
    move-result v11

    #@1e
    if-eqz v11, :cond_4

    #@20
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@23
    move-result-object v8

    #@24
    check-cast v8, Landroid/content/pm/UserInfo;

    #@26
    .line 1974
    .local v8, "user":Landroid/content/pm/UserInfo;
    invoke-virtual {v8}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    #@29
    move-result-object v11

    #@2a
    invoke-virtual {v11}, Landroid/os/UserHandle;->getIdentifier()I

    #@2d
    move-result v10

    #@2e
    .line 1975
    .local v10, "userId":I
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    #@31
    move-result-object v11

    #@32
    invoke-virtual {v11}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@35
    move-result-object v3

    #@36
    .line 1976
    .local v3, "packageManager":Landroid/content/pm/PackageManager;
    const/4 v11, 0x0

    #@37
    invoke-virtual {v3, v11, v10}, Landroid/content/pm/PackageManager;->getInstalledPackages(II)Ljava/util/List;

    #@3a
    move-result-object v6

    #@3b
    .line 1977
    .local v6, "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-interface {v6}, Ljava/util/List;->size()I

    #@3e
    move-result v2

    #@3f
    .line 1978
    .local v2, "packageCount":I
    const/4 v0, 0x0

    #@40
    .local v0, "p":I
    :goto_1
    if-ge v0, v2, :cond_3

    #@42
    .line 1979
    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@45
    move-result-object v11

    #@46
    check-cast v11, Landroid/content/pm/PackageInfo;

    #@48
    iget-object v4, v11, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    #@4a
    .line 1980
    .local v4, "packageName":Ljava/lang/String;
    if-eqz p1, :cond_1

    #@4c
    invoke-virtual {p1, v4}, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->matches(Ljava/lang/String;)Z

    #@4f
    move-result v11

    #@50
    if-eqz v11, :cond_2

    #@52
    .line 1981
    :cond_1
    invoke-virtual {v3, v4, v10}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I

    #@55
    move-result v7

    #@56
    .line 1982
    .local v7, "uid":I
    invoke-direct {p0, v4, v7}, Lcom/android/server/notification/NotificationManagerService;->checkNotificationOp(Ljava/lang/String;I)Z

    #@59
    move-result v11

    #@5a
    if-nez v11, :cond_2

    #@5c
    .line 1983
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@5f
    .line 1978
    .end local v7    # "uid":I
    :cond_2
    add-int/lit8 v0, v0, 0x1

    #@61
    goto :goto_1

    #@62
    .line 1987
    .end local v4    # "packageName":Ljava/lang/String;
    :cond_3
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    #@65
    move-result v11

    #@66
    if-nez v11, :cond_0

    #@68
    .line 1988
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@6b
    move-result-object v11

    #@6c
    invoke-virtual {v1, v11, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@6f
    .line 1989
    new-instance v5, Ljava/util/ArrayList;

    #@71
    .end local v5    # "packageNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    #@74
    .restart local v5    # "packageNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    goto :goto_0

    #@75
    .line 1992
    .end local v0    # "p":I
    .end local v2    # "packageCount":I
    .end local v3    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v6    # "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .end local v8    # "user":Landroid/content/pm/UserInfo;
    .end local v10    # "userId":I
    :cond_4
    return-object v1
.end method

.method private handleGroupedNotificationLocked(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationRecord;II)V
    .locals 16
    .param p1, "r"    # Lcom/android/server/notification/NotificationRecord;
    .param p2, "old"    # Lcom/android/server/notification/NotificationRecord;
    .param p3, "callingUid"    # I
    .param p4, "callingPid"    # I

    #@0
    .prologue
    .line 2229
    move-object/from16 v0, p1

    #@2
    iget-object v15, v0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    #@4
    .line 2230
    .local v15, "sbn":Landroid/service/notification/StatusBarNotification;
    invoke-virtual {v15}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    #@7
    move-result-object v9

    #@8
    .line 2231
    .local v9, "n":Landroid/app/Notification;
    invoke-virtual {v15}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    #@b
    move-result-object v7

    #@c
    .line 2232
    .local v7, "group":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/app/Notification;->isGroupSummary()Z

    #@f
    move-result v8

    #@10
    .line 2234
    .local v8, "isSummary":Z
    if-eqz p2, :cond_3

    #@12
    move-object/from16 v0, p2

    #@14
    iget-object v1, v0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    #@16
    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    #@19
    move-result-object v12

    #@1a
    .line 2235
    :goto_0
    if-eqz p2, :cond_4

    #@1c
    move-object/from16 v0, p2

    #@1e
    iget-object v1, v0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    #@20
    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    #@23
    move-result-object v10

    #@24
    .line 2236
    :goto_1
    if-eqz p2, :cond_5

    #@26
    invoke-virtual {v12}, Landroid/app/Notification;->isGroupSummary()Z

    #@29
    move-result v11

    #@2a
    .line 2238
    :goto_2
    if-eqz v11, :cond_0

    #@2c
    .line 2239
    move-object/from16 v0, p0

    #@2e
    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mSummaryByGroupKey:Landroid/util/ArrayMap;

    #@30
    invoke-virtual {v1, v10}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@33
    move-result-object v14

    #@34
    check-cast v14, Lcom/android/server/notification/NotificationRecord;

    #@36
    .line 2240
    .local v14, "removedSummary":Lcom/android/server/notification/NotificationRecord;
    move-object/from16 v0, p2

    #@38
    if-eq v14, v0, :cond_0

    #@3a
    .line 2242
    if-eqz v14, :cond_6

    #@3c
    invoke-virtual {v14}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    #@3f
    move-result-object v13

    #@40
    .line 2243
    .local v13, "removedKey":Ljava/lang/String;
    :goto_3
    const-string/jumbo v1, "NotificationService"

    #@43
    new-instance v2, Ljava/lang/StringBuilder;

    #@45
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@48
    const-string/jumbo v3, "Removed summary didn\'t match old notification: old="

    #@4b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v2

    #@4f
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    #@52
    move-result-object v3

    #@53
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@56
    move-result-object v2

    #@57
    .line 2244
    const-string/jumbo v3, ", removed="

    #@5a
    .line 2243
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5d
    move-result-object v2

    #@5e
    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@61
    move-result-object v2

    #@62
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@65
    move-result-object v2

    #@66
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@69
    .line 2247
    .end local v13    # "removedKey":Ljava/lang/String;
    .end local v14    # "removedSummary":Lcom/android/server/notification/NotificationRecord;
    :cond_0
    if-eqz v8, :cond_1

    #@6b
    .line 2248
    move-object/from16 v0, p0

    #@6d
    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mSummaryByGroupKey:Landroid/util/ArrayMap;

    #@6f
    move-object/from16 v0, p1

    #@71
    invoke-virtual {v1, v7, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@74
    .line 2255
    :cond_1
    if-eqz v11, :cond_2

    #@76
    if-eqz v8, :cond_7

    #@78
    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@7b
    move-result v1

    #@7c
    if-eqz v1, :cond_7

    #@7e
    .line 2228
    :cond_2
    :goto_4
    return-void

    #@7f
    .line 2234
    :cond_3
    const/4 v12, 0x0

    #@80
    .local v12, "oldN":Landroid/app/Notification;
    goto :goto_0

    #@81
    .line 2235
    .end local v12    # "oldN":Landroid/app/Notification;
    :cond_4
    const/4 v10, 0x0

    #@82
    .local v10, "oldGroup":Ljava/lang/String;
    goto :goto_1

    #@83
    .line 2236
    .end local v10    # "oldGroup":Ljava/lang/String;
    :cond_5
    const/4 v11, 0x0

    #@84
    .local v11, "oldIsSummary":Z
    goto :goto_2

    #@85
    .line 2242
    .end local v11    # "oldIsSummary":Z
    .restart local v14    # "removedSummary":Lcom/android/server/notification/NotificationRecord;
    :cond_6
    const-string/jumbo v13, "<null>"

    #@88
    .restart local v13    # "removedKey":Ljava/lang/String;
    goto :goto_3

    #@89
    .line 2256
    .end local v13    # "removedKey":Ljava/lang/String;
    .end local v14    # "removedSummary":Lcom/android/server/notification/NotificationRecord;
    :cond_7
    const/4 v5, 0x0

    #@8a
    .line 2257
    const/16 v6, 0xc

    #@8c
    move-object/from16 v1, p0

    #@8e
    move-object/from16 v2, p2

    #@90
    move/from16 v3, p3

    #@92
    move/from16 v4, p4

    #@94
    .line 2256
    invoke-direct/range {v1 .. v6}, Lcom/android/server/notification/NotificationManagerService;->cancelGroupChildrenLocked(Lcom/android/server/notification/NotificationRecord;IILjava/lang/String;I)V

    #@97
    goto :goto_4
.end method

.method private handleListenerHintsChanged(I)V
    .locals 2
    .param p1, "hints"    # I

    #@0
    .prologue
    .line 2681
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    #@2
    monitor-enter v1

    #@3
    .line 2682
    :try_start_0
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    #@5
    invoke-virtual {v0, p1}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->notifyListenerHintsChangedLocked(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    monitor-exit v1

    #@9
    .line 2680
    return-void

    #@a
    .line 2681
    :catchall_0
    move-exception v0

    #@b
    monitor-exit v1

    #@c
    throw v0
.end method

.method private handleListenerInterruptionFilterChanged(I)V
    .locals 2
    .param p1, "interruptionFilter"    # I

    #@0
    .prologue
    .line 2687
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    #@2
    monitor-enter v1

    #@3
    .line 2688
    :try_start_0
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    #@5
    invoke-virtual {v0, p1}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->notifyInterruptionFilterChanged(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    monitor-exit v1

    #@9
    .line 2686
    return-void

    #@a
    .line 2687
    :catchall_0
    move-exception v0

    #@b
    monitor-exit v1

    #@c
    throw v0
.end method

.method private handleRankingConfigChange()V
    .locals 8

    #@0
    .prologue
    .line 2623
    iget-object v6, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    #@2
    monitor-enter v6

    #@3
    .line 2624
    :try_start_0
    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    #@5
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    #@8
    move-result v0

    #@9
    .line 2625
    .local v0, "N":I
    new-instance v2, Ljava/util/ArrayList;

    #@b
    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    #@e
    .line 2626
    .local v2, "orderBefore":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-array v4, v0, [I

    #@10
    .line 2627
    .local v4, "visibilities":[I
    const/4 v1, 0x0

    #@11
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    #@13
    .line 2628
    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    #@15
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@18
    move-result-object v3

    #@19
    check-cast v3, Lcom/android/server/notification/NotificationRecord;

    #@1b
    .line 2629
    .local v3, "r":Lcom/android/server/notification/NotificationRecord;
    invoke-virtual {v3}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    #@1e
    move-result-object v5

    #@1f
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@22
    .line 2630
    invoke-virtual {v3}, Lcom/android/server/notification/NotificationRecord;->getPackageVisibilityOverride()I

    #@25
    move-result v5

    #@26
    aput v5, v4, v1

    #@28
    .line 2631
    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService;->mRankingHelper:Lcom/android/server/notification/RankingHelper;

    #@2a
    invoke-virtual {v5, v3}, Lcom/android/server/notification/RankingHelper;->extractSignals(Lcom/android/server/notification/NotificationRecord;)V

    #@2d
    .line 2627
    add-int/lit8 v1, v1, 0x1

    #@2f
    goto :goto_0

    #@30
    .line 2633
    .end local v3    # "r":Lcom/android/server/notification/NotificationRecord;
    :cond_0
    const/4 v1, 0x0

    #@31
    :goto_1
    if-ge v1, v0, :cond_3

    #@33
    .line 2634
    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService;->mRankingHelper:Lcom/android/server/notification/RankingHelper;

    #@35
    iget-object v7, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    #@37
    invoke-virtual {v5, v7}, Lcom/android/server/notification/RankingHelper;->sort(Ljava/util/ArrayList;)V

    #@3a
    .line 2635
    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    #@3c
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@3f
    move-result-object v3

    #@40
    check-cast v3, Lcom/android/server/notification/NotificationRecord;

    #@42
    .line 2636
    .restart local v3    # "r":Lcom/android/server/notification/NotificationRecord;
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@45
    move-result-object v5

    #@46
    check-cast v5, Ljava/lang/String;

    #@48
    invoke-virtual {v3}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    #@4b
    move-result-object v7

    #@4c
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@4f
    move-result v5

    #@50
    if-eqz v5, :cond_1

    #@52
    .line 2637
    aget v5, v4, v1

    #@54
    invoke-virtual {v3}, Lcom/android/server/notification/NotificationRecord;->getPackageVisibilityOverride()I

    #@57
    move-result v7

    #@58
    if-eq v5, v7, :cond_2

    #@5a
    .line 2638
    :cond_1
    invoke-direct {p0}, Lcom/android/server/notification/NotificationManagerService;->scheduleSendRankingUpdate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5d
    monitor-exit v6

    #@5e
    .line 2639
    return-void

    #@5f
    .line 2633
    :cond_2
    add-int/lit8 v1, v1, 0x1

    #@61
    goto :goto_1

    #@62
    .end local v3    # "r":Lcom/android/server/notification/NotificationRecord;
    :cond_3
    monitor-exit v6

    #@63
    .line 2622
    return-void

    #@64
    .line 2623
    .end local v0    # "N":I
    .end local v1    # "i":I
    .end local v2    # "orderBefore":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v4    # "visibilities":[I
    :catchall_0
    move-exception v5

    #@65
    monitor-exit v6

    #@66
    throw v5
.end method

.method private handleRankingReconsideration(Landroid/os/Message;)V
    .locals 12
    .param p1, "message"    # Landroid/os/Message;

    #@0
    .prologue
    .line 2593
    iget-object v9, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@2
    instance-of v9, v9, Lcom/android/server/notification/RankingReconsideration;

    #@4
    if-nez v9, :cond_0

    #@6
    return-void

    #@7
    .line 2594
    :cond_0
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@9
    check-cast v5, Lcom/android/server/notification/RankingReconsideration;

    #@b
    .line 2595
    .local v5, "recon":Lcom/android/server/notification/RankingReconsideration;
    invoke-virtual {v5}, Lcom/android/server/notification/RankingReconsideration;->run()V

    #@e
    .line 2597
    iget-object v10, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    #@10
    monitor-enter v10

    #@11
    .line 2598
    :try_start_0
    iget-object v9, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    #@13
    invoke-virtual {v5}, Lcom/android/server/notification/RankingReconsideration;->getKey()Ljava/lang/String;

    #@16
    move-result-object v11

    #@17
    invoke-virtual {v9, v11}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@1a
    move-result-object v6

    #@1b
    check-cast v6, Lcom/android/server/notification/NotificationRecord;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1d
    .line 2599
    .local v6, "record":Lcom/android/server/notification/NotificationRecord;
    if-nez v6, :cond_1

    #@1f
    monitor-exit v10

    #@20
    .line 2600
    return-void

    #@21
    .line 2602
    :cond_1
    :try_start_1
    invoke-direct {p0, v6}, Lcom/android/server/notification/NotificationManagerService;->findNotificationRecordIndexLocked(Lcom/android/server/notification/NotificationRecord;)I

    #@24
    move-result v2

    #@25
    .line 2603
    .local v2, "indexBefore":I
    invoke-virtual {v6}, Lcom/android/server/notification/NotificationRecord;->isIntercepted()Z

    #@28
    move-result v4

    #@29
    .line 2604
    .local v4, "interceptBefore":Z
    invoke-virtual {v6}, Lcom/android/server/notification/NotificationRecord;->getPackageVisibilityOverride()I

    #@2c
    move-result v8

    #@2d
    .line 2605
    .local v8, "visibilityBefore":I
    invoke-virtual {v5, v6}, Lcom/android/server/notification/RankingReconsideration;->applyChangesLocked(Lcom/android/server/notification/NotificationRecord;)V

    #@30
    .line 2606
    invoke-direct {p0, v6}, Lcom/android/server/notification/NotificationManagerService;->applyZenModeLocked(Lcom/android/server/notification/NotificationRecord;)V

    #@33
    .line 2607
    iget-object v9, p0, Lcom/android/server/notification/NotificationManagerService;->mRankingHelper:Lcom/android/server/notification/RankingHelper;

    #@35
    iget-object v11, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    #@37
    invoke-virtual {v9, v11}, Lcom/android/server/notification/RankingHelper;->sort(Ljava/util/ArrayList;)V

    #@3a
    .line 2608
    invoke-direct {p0, v6}, Lcom/android/server/notification/NotificationManagerService;->findNotificationRecordIndexLocked(Lcom/android/server/notification/NotificationRecord;)I

    #@3d
    move-result v1

    #@3e
    .line 2609
    .local v1, "indexAfter":I
    invoke-virtual {v6}, Lcom/android/server/notification/NotificationRecord;->isIntercepted()Z

    #@41
    move-result v3

    #@42
    .line 2610
    .local v3, "interceptAfter":Z
    invoke-virtual {v6}, Lcom/android/server/notification/NotificationRecord;->getPackageVisibilityOverride()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@45
    move-result v7

    #@46
    .line 2611
    .local v7, "visibilityAfter":I
    if-ne v2, v1, :cond_2

    #@48
    if-eq v4, v3, :cond_5

    #@4a
    :cond_2
    const/4 v0, 0x1

    #@4b
    .line 2613
    .local v0, "changed":Z
    :goto_0
    if-eqz v4, :cond_3

    #@4d
    if-eqz v3, :cond_7

    #@4f
    :cond_3
    :goto_1
    monitor-exit v10

    #@50
    .line 2617
    if-eqz v0, :cond_4

    #@52
    .line 2618
    invoke-direct {p0}, Lcom/android/server/notification/NotificationManagerService;->scheduleSendRankingUpdate()V

    #@55
    .line 2592
    :cond_4
    return-void

    #@56
    .line 2612
    .end local v0    # "changed":Z
    :cond_5
    if-eq v8, v7, :cond_6

    #@58
    const/4 v0, 0x1

    #@59
    .restart local v0    # "changed":Z
    goto :goto_0

    #@5a
    .end local v0    # "changed":Z
    :cond_6
    const/4 v0, 0x0

    #@5b
    .restart local v0    # "changed":Z
    goto :goto_0

    #@5c
    .line 2614
    :cond_7
    :try_start_2
    invoke-direct {p0, v6}, Lcom/android/server/notification/NotificationManagerService;->buzzBeepBlinkLocked(Lcom/android/server/notification/NotificationRecord;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@5f
    goto :goto_1

    #@60
    .line 2597
    .end local v0    # "changed":Z
    .end local v1    # "indexAfter":I
    .end local v2    # "indexBefore":I
    .end local v3    # "interceptAfter":Z
    .end local v4    # "interceptBefore":Z
    .end local v6    # "record":Lcom/android/server/notification/NotificationRecord;
    .end local v7    # "visibilityAfter":I
    .end local v8    # "visibilityBefore":I
    :catchall_0
    move-exception v9

    #@61
    monitor-exit v10

    #@62
    throw v9
.end method

.method private handleSavePolicyFile()V
    .locals 5

    #@0
    .prologue
    .line 403
    sget-boolean v2, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    #@2
    if-eqz v2, :cond_0

    #@4
    const-string/jumbo v2, "NotificationService"

    #@7
    const-string/jumbo v3, "handleSavePolicyFile"

    #@a
    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@d
    .line 404
    :cond_0
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mPolicyFile:Landroid/util/AtomicFile;

    #@f
    monitor-enter v3

    #@10
    .line 407
    :try_start_0
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mPolicyFile:Landroid/util/AtomicFile;

    #@12
    invoke-virtual {v2}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@15
    move-result-object v1

    #@16
    .line 414
    .local v1, "stream":Ljava/io/FileOutputStream;
    const/4 v2, 0x0

    #@17
    :try_start_1
    invoke-direct {p0, v1, v2}, Lcom/android/server/notification/NotificationManagerService;->writePolicyXml(Ljava/io/OutputStream;Z)V

    #@1a
    .line 415
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mPolicyFile:Landroid/util/AtomicFile;

    #@1c
    invoke-virtual {v2, v1}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1f
    :goto_0
    monitor-exit v3

    #@20
    .line 421
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    #@23
    move-result-object v2

    #@24
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@27
    move-result-object v2

    #@28
    invoke-static {v2}, Landroid/app/backup/BackupManager;->dataChanged(Ljava/lang/String;)V

    #@2b
    .line 402
    return-void

    #@2c
    .line 408
    .end local v1    # "stream":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v0

    #@2d
    .line 409
    .local v0, "e":Ljava/io/IOException;
    :try_start_2
    const-string/jumbo v2, "NotificationService"

    #@30
    const-string/jumbo v4, "Failed to save policy file"

    #@33
    invoke-static {v2, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@36
    monitor-exit v3

    #@37
    .line 410
    return-void

    #@38
    .line 416
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v1    # "stream":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v0

    #@39
    .line 417
    .restart local v0    # "e":Ljava/io/IOException;
    :try_start_3
    const-string/jumbo v2, "NotificationService"

    #@3c
    const-string/jumbo v4, "Failed to save policy file, restoring backup"

    #@3f
    invoke-static {v2, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@42
    .line 418
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mPolicyFile:Landroid/util/AtomicFile;

    #@44
    invoke-virtual {v2, v1}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@47
    goto :goto_0

    #@48
    .line 404
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "stream":Ljava/io/FileOutputStream;
    :catchall_0
    move-exception v2

    #@49
    monitor-exit v3

    #@4a
    throw v2
.end method

.method private handleSendRankingUpdate()V
    .locals 2

    #@0
    .prologue
    .line 2662
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    #@2
    monitor-enter v1

    #@3
    .line 2663
    :try_start_0
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    #@5
    invoke-virtual {v0}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->notifyRankingUpdateLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    monitor-exit v1

    #@9
    .line 2661
    return-void

    #@a
    .line 2662
    :catchall_0
    move-exception v0

    #@b
    monitor-exit v1

    #@c
    throw v0
.end method

.method private handleTimeout(Lcom/android/server/notification/NotificationManagerService$ToastRecord;)V
    .locals 4
    .param p1, "record"    # Lcom/android/server/notification/NotificationManagerService$ToastRecord;

    #@0
    .prologue
    .line 2549
    sget-boolean v1, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    #@2
    if-eqz v1, :cond_0

    #@4
    const-string/jumbo v1, "NotificationService"

    #@7
    new-instance v2, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    const-string/jumbo v3, "Timeout pkg="

    #@f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v2

    #@13
    iget-object v3, p1, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->pkg:Ljava/lang/String;

    #@15
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v2

    #@19
    const-string/jumbo v3, " callback="

    #@1c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v2

    #@20
    iget-object v3, p1, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->callback:Landroid/app/ITransientNotification;

    #@22
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v2

    #@26
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@29
    move-result-object v2

    #@2a
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@2d
    .line 2550
    :cond_0
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    #@2f
    monitor-enter v2

    #@30
    .line 2551
    :try_start_0
    iget-object v1, p1, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->pkg:Ljava/lang/String;

    #@32
    iget-object v3, p1, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->callback:Landroid/app/ITransientNotification;

    #@34
    invoke-virtual {p0, v1, v3}, Lcom/android/server/notification/NotificationManagerService;->indexOfToastLocked(Ljava/lang/String;Landroid/app/ITransientNotification;)I

    #@37
    move-result v0

    #@38
    .line 2552
    .local v0, "index":I
    if-ltz v0, :cond_1

    #@3a
    .line 2553
    invoke-virtual {p0, v0}, Lcom/android/server/notification/NotificationManagerService;->cancelToastLocked(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3d
    :cond_1
    monitor-exit v2

    #@3e
    .line 2547
    return-void

    #@3f
    .line 2550
    .end local v0    # "index":I
    :catchall_0
    move-exception v1

    #@40
    monitor-exit v2

    #@41
    throw v1
.end method

.method private importOldBlockDb()V
    .locals 7

    #@0
    .prologue
    .line 989
    invoke-direct {p0}, Lcom/android/server/notification/NotificationManagerService;->loadPolicyFile()V

    #@3
    .line 991
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    #@6
    move-result-object v5

    #@7
    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@a
    move-result-object v4

    #@b
    .line 992
    .local v4, "pm":Landroid/content/pm/PackageManager;
    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService;->mBlockedPackages:Ljava/util/HashSet;

    #@d
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@10
    move-result-object v3

    #@11
    .local v3, "pkg$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@14
    move-result v5

    #@15
    if-eqz v5, :cond_0

    #@17
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1a
    move-result-object v2

    #@1b
    check-cast v2, Ljava/lang/String;

    #@1d
    .line 993
    .local v2, "pkg":Ljava/lang/String;
    const/4 v1, 0x0

    #@1e
    .line 995
    .local v1, "info":Landroid/content/pm/PackageInfo;
    const/4 v5, 0x0

    #@1f
    :try_start_0
    invoke-virtual {v4, v2, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    #@22
    move-result-object v1

    #@23
    .line 996
    .local v1, "info":Landroid/content/pm/PackageInfo;
    iget-object v5, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@25
    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    #@27
    const/4 v6, 0x0

    #@28
    invoke-virtual {p0, v2, v5, v6}, Lcom/android/server/notification/NotificationManagerService;->setNotificationsEnabledForPackageImpl(Ljava/lang/String;IZ)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@2b
    goto :goto_0

    #@2c
    .line 997
    .end local v1    # "info":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v0

    #@2d
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0

    #@2e
    .line 1001
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v2    # "pkg":Ljava/lang/String;
    :cond_0
    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService;->mBlockedPackages:Ljava/util/HashSet;

    #@30
    invoke-virtual {v5}, Ljava/util/HashSet;->clear()V

    #@33
    .line 988
    return-void
.end method

.method private static isCallerSystem()Z
    .locals 1

    #@0
    .prologue
    .line 3119
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@3
    move-result v0

    #@4
    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->isUidSystem(I)Z

    #@7
    move-result v0

    #@8
    return v0
.end method

.method private static isUidSystem(I)Z
    .locals 4
    .param p0, "uid"    # I

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 3114
    invoke-static {p0}, Landroid/os/UserHandle;->getAppId(I)I

    #@5
    move-result v0

    #@6
    .line 3115
    .local v0, "appid":I
    const/16 v3, 0x3e8

    #@8
    if-eq v0, v3, :cond_0

    #@a
    const/16 v3, 0x3e9

    #@c
    if-ne v0, v3, :cond_1

    #@e
    :cond_0
    :goto_0
    return v1

    #@f
    :cond_1
    if-eqz p0, :cond_0

    #@11
    move v1, v2

    #@12
    goto :goto_0
.end method

.method private isVisibleToListener(Landroid/service/notification/StatusBarNotification;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Z
    .locals 1
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;
    .param p2, "listener"    # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    #@0
    .prologue
    .line 3215
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    #@3
    move-result v0

    #@4
    invoke-virtual {p2, v0}, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->enabledAndUserMatches(I)Z

    #@7
    move-result v0

    #@8
    if-nez v0, :cond_0

    #@a
    .line 3216
    const/4 v0, 0x0

    #@b
    return v0

    #@c
    .line 3219
    :cond_0
    const/4 v0, 0x1

    #@d
    return v0
.end method

.method private listenForCallState()V
    .locals 3

    #@0
    .prologue
    .line 3159
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    #@7
    move-result-object v0

    #@8
    new-instance v1, Lcom/android/server/notification/NotificationManagerService$10;

    #@a
    invoke-direct {v1, p0}, Lcom/android/server/notification/NotificationManagerService$10;-><init>(Lcom/android/server/notification/NotificationManagerService;)V

    #@d
    .line 3166
    const/16 v2, 0x20

    #@f
    .line 3159
    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    #@12
    .line 3158
    return-void
.end method

.method private loadPolicyFile()V
    .locals 8

    #@0
    .prologue
    .line 375
    sget-boolean v5, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    #@2
    if-eqz v5, :cond_0

    #@4
    const-string/jumbo v5, "NotificationService"

    #@7
    const-string/jumbo v6, "loadPolicyFile"

    #@a
    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@d
    .line 376
    :cond_0
    iget-object v6, p0, Lcom/android/server/notification/NotificationManagerService;->mPolicyFile:Landroid/util/AtomicFile;

    #@f
    monitor-enter v6

    #@10
    .line 377
    :try_start_0
    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService;->mBlockedPackages:Ljava/util/HashSet;

    #@12
    invoke-virtual {v5}, Ljava/util/HashSet;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@15
    .line 379
    const/4 v4, 0x0

    #@16
    .line 381
    .local v4, "infile":Ljava/io/FileInputStream;
    :try_start_1
    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService;->mPolicyFile:Landroid/util/AtomicFile;

    #@18
    invoke-virtual {v5}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    #@1b
    move-result-object v4

    #@1c
    .line 382
    .local v4, "infile":Ljava/io/FileInputStream;
    const/4 v5, 0x0

    #@1d
    invoke-direct {p0, v4, v5}, Lcom/android/server/notification/NotificationManagerService;->readPolicyXml(Ljava/io/InputStream;Z)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@20
    .line 392
    :try_start_2
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@23
    .end local v4    # "infile":Ljava/io/FileInputStream;
    :goto_0
    monitor-exit v6

    #@24
    .line 374
    return-void

    #@25
    .line 389
    :catch_0
    move-exception v3

    #@26
    .line 390
    .local v3, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_3
    const-string/jumbo v5, "NotificationService"

    #@29
    const-string/jumbo v7, "Unable to parse notification policy"

    #@2c
    invoke-static {v5, v7, v3}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@2f
    .line 392
    :try_start_4
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@32
    goto :goto_0

    #@33
    .line 376
    .end local v3    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catchall_0
    move-exception v5

    #@34
    monitor-exit v6

    #@35
    throw v5

    #@36
    .line 387
    :catch_1
    move-exception v2

    #@37
    .line 388
    .local v2, "e":Ljava/lang/NumberFormatException;
    :try_start_5
    const-string/jumbo v5, "NotificationService"

    #@3a
    const-string/jumbo v7, "Unable to parse notification policy"

    #@3d
    invoke-static {v5, v7, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    #@40
    .line 392
    :try_start_6
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    #@43
    goto :goto_0

    #@44
    .line 385
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    :catch_2
    move-exception v1

    #@45
    .line 386
    .local v1, "e":Ljava/io/IOException;
    :try_start_7
    const-string/jumbo v5, "NotificationService"

    #@48
    const-string/jumbo v7, "Unable to read notification policy"

    #@4b
    invoke-static {v5, v7, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    #@4e
    .line 392
    :try_start_8
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@51
    goto :goto_0

    #@52
    .line 383
    .end local v1    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v0

    #@53
    .line 392
    .local v0, "e":Ljava/io/FileNotFoundException;
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@56
    goto :goto_0

    #@57
    .line 391
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catchall_1
    move-exception v5

    #@58
    .line 392
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@5b
    .line 391
    throw v5
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
.end method

.method private makeRankingUpdateLocked(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Landroid/service/notification/NotificationRankingUpdate;
    .locals 11
    .param p1, "info"    # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    #@0
    .prologue
    .line 3176
    const/4 v7, -0x1

    #@1
    .line 3177
    .local v7, "speedBumpIndex":I
    iget-object v9, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    #@3
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    #@6
    move-result v0

    #@7
    .line 3178
    .local v0, "N":I
    new-instance v4, Ljava/util/ArrayList;

    #@9
    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(I)V

    #@c
    .line 3179
    .local v4, "keys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/ArrayList;

    #@e
    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    #@11
    .line 3180
    .local v2, "interceptedKeys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v8, Landroid/os/Bundle;

    #@13
    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    #@16
    .line 3181
    .local v8, "visibilityOverrides":Landroid/os/Bundle;
    const/4 v1, 0x0

    #@17
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_4

    #@19
    .line 3182
    iget-object v9, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    #@1b
    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@1e
    move-result-object v6

    #@1f
    check-cast v6, Lcom/android/server/notification/NotificationRecord;

    #@21
    .line 3183
    .local v6, "record":Lcom/android/server/notification/NotificationRecord;
    iget-object v9, v6, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    #@23
    invoke-direct {p0, v9, p1}, Lcom/android/server/notification/NotificationManagerService;->isVisibleToListener(Landroid/service/notification/StatusBarNotification;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Z

    #@26
    move-result v9

    #@27
    if-nez v9, :cond_1

    #@29
    .line 3181
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    #@2b
    goto :goto_0

    #@2c
    .line 3186
    :cond_1
    iget-object v9, v6, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    #@2e
    invoke-virtual {v9}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    #@31
    move-result-object v9

    #@32
    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@35
    .line 3187
    invoke-virtual {v6}, Lcom/android/server/notification/NotificationRecord;->isIntercepted()Z

    #@38
    move-result v9

    #@39
    if-eqz v9, :cond_2

    #@3b
    .line 3188
    iget-object v9, v6, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    #@3d
    invoke-virtual {v9}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    #@40
    move-result-object v9

    #@41
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@44
    .line 3190
    :cond_2
    invoke-virtual {v6}, Lcom/android/server/notification/NotificationRecord;->getPackageVisibilityOverride()I

    #@47
    move-result v9

    #@48
    .line 3191
    const/16 v10, -0x3e8

    #@4a
    .line 3190
    if-eq v9, v10, :cond_3

    #@4c
    .line 3192
    iget-object v9, v6, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    #@4e
    invoke-virtual {v9}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    #@51
    move-result-object v9

    #@52
    .line 3193
    invoke-virtual {v6}, Lcom/android/server/notification/NotificationRecord;->getPackageVisibilityOverride()I

    #@55
    move-result v10

    #@56
    .line 3192
    invoke-virtual {v8, v9, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@59
    .line 3196
    :cond_3
    const/4 v9, -0x1

    #@5a
    if-ne v7, v9, :cond_0

    #@5c
    .line 3198
    invoke-virtual {v6}, Lcom/android/server/notification/NotificationRecord;->isRecentlyIntrusive()Z

    #@5f
    move-result v9

    #@60
    if-nez v9, :cond_0

    #@62
    .line 3203
    invoke-virtual {v6}, Lcom/android/server/notification/NotificationRecord;->getPackagePriority()I

    #@65
    move-result v9

    #@66
    if-gtz v9, :cond_0

    #@68
    .line 3204
    iget-object v9, v6, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    #@6a
    invoke-virtual {v9}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    #@6d
    move-result-object v9

    #@6e
    iget v9, v9, Landroid/app/Notification;->priority:I

    #@70
    const/4 v10, -0x2

    #@71
    if-ne v9, v10, :cond_0

    #@73
    .line 3205
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@76
    move-result v9

    #@77
    add-int/lit8 v7, v9, -0x1

    #@79
    goto :goto_1

    #@7a
    .line 3208
    .end local v6    # "record":Lcom/android/server/notification/NotificationRecord;
    :cond_4
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@7d
    move-result v9

    #@7e
    new-array v9, v9, [Ljava/lang/String;

    #@80
    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@83
    move-result-object v5

    #@84
    check-cast v5, [Ljava/lang/String;

    #@86
    .line 3209
    .local v5, "keysAr":[Ljava/lang/String;
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@89
    move-result v9

    #@8a
    new-array v9, v9, [Ljava/lang/String;

    #@8c
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@8f
    move-result-object v3

    #@90
    check-cast v3, [Ljava/lang/String;

    #@92
    .line 3210
    .local v3, "interceptedKeysAr":[Ljava/lang/String;
    new-instance v9, Landroid/service/notification/NotificationRankingUpdate;

    #@94
    invoke-direct {v9, v5, v3, v8, v7}, Landroid/service/notification/NotificationRankingUpdate;-><init>([Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;I)V

    #@97
    return-object v9
.end method

.method private noteNotificationOp(Ljava/lang/String;I)Z
    .locals 4
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 441
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mAppOps:Landroid/app/AppOpsManager;

    #@3
    const/16 v1, 0xb

    #@5
    invoke-virtual {v0, v1, p2, p1}, Landroid/app/AppOpsManager;->noteOpNoThrow(IILjava/lang/String;)I

    #@8
    move-result v0

    #@9
    if-eqz v0, :cond_0

    #@b
    .line 443
    const-string/jumbo v0, "NotificationService"

    #@e
    new-instance v1, Ljava/lang/StringBuilder;

    #@10
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@13
    const-string/jumbo v2, "notifications are disabled by AppOps for "

    #@16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v1

    #@1e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21
    move-result-object v1

    #@22
    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@25
    .line 444
    return v3

    #@26
    .line 446
    :cond_0
    const/4 v0, 0x1

    #@27
    return v0
.end method

.method private notificationMatchesCurrentProfiles(Lcom/android/server/notification/NotificationRecord;I)Z
    .locals 2
    .param p1, "r"    # Lcom/android/server/notification/NotificationRecord;
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 2913
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/NotificationManagerService;->notificationMatchesUserId(Lcom/android/server/notification/NotificationRecord;I)Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 2914
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mUserProfiles:Lcom/android/server/notification/ManagedServices$UserProfiles;

    #@8
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getUserId()I

    #@b
    move-result v1

    #@c
    invoke-virtual {v0, v1}, Lcom/android/server/notification/ManagedServices$UserProfiles;->isCurrentProfile(I)Z

    #@f
    move-result v0

    #@10
    .line 2913
    :goto_0
    return v0

    #@11
    :cond_0
    const/4 v0, 0x1

    #@12
    goto :goto_0
.end method

.method private notificationMatchesUserId(Lcom/android/server/notification/NotificationRecord;I)Z
    .locals 3
    .param p1, "r"    # Lcom/android/server/notification/NotificationRecord;
    .param p2, "userId"    # I

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v2, -0x1

    #@2
    .line 2900
    if-eq p2, v2, :cond_0

    #@4
    .line 2902
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getUserId()I

    #@7
    move-result v1

    #@8
    if-ne v1, v2, :cond_1

    #@a
    .line 2898
    :cond_0
    :goto_0
    return v0

    #@b
    .line 2904
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getUserId()I

    #@e
    move-result v1

    #@f
    if-eq v1, p2, :cond_0

    #@11
    const/4 v0, 0x0

    #@12
    goto :goto_0
.end method

.method private readPolicyXml(Ljava/io/InputStream;Z)V
    .locals 8
    .param p1, "stream"    # Ljava/io/InputStream;
    .param p2, "forRestore"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/lang/NumberFormatException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    const/4 v6, 0x1

    #@2
    .line 345
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    #@5
    move-result-object v0

    #@6
    .line 346
    .local v0, "parser":Lorg/xmlpull/v1/XmlPullParser;
    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    #@8
    invoke-virtual {v4}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    #@b
    move-result-object v4

    #@c
    invoke-interface {v0, p1, v4}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    #@f
    .line 350
    const/4 v3, 0x1

    #@10
    .line 351
    .local v3, "version":I
    :goto_0
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@13
    move-result v2

    #@14
    .local v2, "type":I
    if-eq v2, v6, :cond_4

    #@16
    .line 352
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@19
    move-result-object v1

    #@1a
    .line 353
    .local v1, "tag":Ljava/lang/String;
    const/4 v4, 0x2

    #@1b
    if-ne v2, v4, :cond_0

    #@1d
    .line 354
    const-string/jumbo v4, "notification-policy"

    #@20
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@23
    move-result v4

    #@24
    if-eqz v4, :cond_1

    #@26
    .line 356
    const-string/jumbo v4, "version"

    #@29
    invoke-interface {v0, v7, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@2c
    move-result-object v4

    #@2d
    .line 355
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@30
    move-result v3

    #@31
    .line 369
    :cond_0
    :goto_1
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    #@33
    invoke-virtual {v4, v0, p2}, Lcom/android/server/notification/ZenModeHelper;->readXml(Lorg/xmlpull/v1/XmlPullParser;Z)V

    #@36
    .line 370
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService;->mRankingHelper:Lcom/android/server/notification/RankingHelper;

    #@38
    invoke-virtual {v4, v0, p2}, Lcom/android/server/notification/RankingHelper;->readXml(Lorg/xmlpull/v1/XmlPullParser;Z)V

    #@3b
    goto :goto_0

    #@3c
    .line 357
    :cond_1
    const-string/jumbo v4, "blocked-packages"

    #@3f
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@42
    move-result v4

    #@43
    if-eqz v4, :cond_0

    #@45
    .line 358
    :cond_2
    :goto_2
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@48
    move-result v2

    #@49
    if-eq v2, v6, :cond_0

    #@4b
    .line 359
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@4e
    move-result-object v1

    #@4f
    .line 360
    const-string/jumbo v4, "package"

    #@52
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@55
    move-result v4

    #@56
    if-eqz v4, :cond_3

    #@58
    .line 361
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService;->mBlockedPackages:Ljava/util/HashSet;

    #@5a
    .line 362
    const-string/jumbo v5, "name"

    #@5d
    invoke-interface {v0, v7, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@60
    move-result-object v5

    #@61
    .line 361
    invoke-virtual {v4, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@64
    goto :goto_2

    #@65
    .line 363
    :cond_3
    const-string/jumbo v4, "blocked-packages"

    #@68
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6b
    move-result v4

    #@6c
    if-eqz v4, :cond_2

    #@6e
    const/4 v4, 0x3

    #@6f
    if-ne v2, v4, :cond_2

    #@71
    goto :goto_1

    #@72
    .line 344
    .end local v1    # "tag":Ljava/lang/String;
    :cond_4
    return-void
.end method

.method private removeUnusedGroupedNotificationLocked(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationRecord;II)Z
    .locals 11
    .param p1, "r"    # Lcom/android/server/notification/NotificationRecord;
    .param p2, "old"    # Lcom/android/server/notification/NotificationRecord;
    .param p3, "callingUid"    # I
    .param p4, "callingPid"    # I

    #@0
    .prologue
    .line 2278
    sget-boolean v0, Lcom/android/server/notification/NotificationManagerService;->ENABLE_CHILD_NOTIFICATIONS:Z

    #@2
    if-nez v0, :cond_5

    #@4
    .line 2280
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    #@6
    invoke-virtual {v0}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->notificationGroupsDesired()Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_0

    #@c
    .line 2281
    const/4 v0, 0x0

    #@d
    return v0

    #@e
    .line 2284
    :cond_0
    iget-object v9, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    #@10
    .line 2285
    .local v9, "sbn":Landroid/service/notification/StatusBarNotification;
    invoke-virtual {v9}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    #@13
    move-result-object v6

    #@14
    .line 2286
    .local v6, "group":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    #@17
    move-result-object v0

    #@18
    invoke-virtual {v0}, Landroid/app/Notification;->isGroupSummary()Z

    #@1b
    move-result v8

    #@1c
    .line 2287
    .local v8, "isSummary":Z
    invoke-virtual {v9}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    #@1f
    move-result-object v0

    #@20
    invoke-virtual {v0}, Landroid/app/Notification;->isGroupChild()Z

    #@23
    move-result v7

    #@24
    .line 2289
    .local v7, "isChild":Z
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mSummaryByGroupKey:Landroid/util/ArrayMap;

    #@26
    invoke-virtual {v0, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@29
    move-result-object v10

    #@2a
    check-cast v10, Lcom/android/server/notification/NotificationRecord;

    #@2c
    .line 2290
    .local v10, "summary":Lcom/android/server/notification/NotificationRecord;
    if-eqz v7, :cond_4

    #@2e
    if-eqz v10, :cond_4

    #@30
    .line 2292
    sget-boolean v0, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    #@32
    if-eqz v0, :cond_1

    #@34
    .line 2293
    const-string/jumbo v0, "NotificationService"

    #@37
    new-instance v1, Ljava/lang/StringBuilder;

    #@39
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@3c
    const-string/jumbo v2, "Ignoring group child "

    #@3f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v1

    #@43
    invoke-virtual {v9}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    #@46
    move-result-object v2

    #@47
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v1

    #@4b
    const-string/jumbo v2, " due to existing summary "

    #@4e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@51
    move-result-object v1

    #@52
    .line 2294
    invoke-virtual {v10}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    #@55
    move-result-object v2

    #@56
    .line 2293
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@59
    move-result-object v1

    #@5a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5d
    move-result-object v1

    #@5e
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@61
    .line 2297
    :cond_1
    if-eqz p2, :cond_3

    #@63
    .line 2298
    sget-boolean v0, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    #@65
    if-eqz v0, :cond_2

    #@67
    .line 2299
    const-string/jumbo v0, "NotificationService"

    #@6a
    new-instance v1, Ljava/lang/StringBuilder;

    #@6c
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@6f
    const-string/jumbo v2, "Canceling old version of ignored group child "

    #@72
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@75
    move-result-object v1

    #@76
    invoke-virtual {v9}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    #@79
    move-result-object v2

    #@7a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7d
    move-result-object v1

    #@7e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@81
    move-result-object v1

    #@82
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@85
    .line 2301
    :cond_2
    const/4 v0, 0x0

    #@86
    const/16 v1, 0xd

    #@88
    invoke-direct {p0, p2, v0, v1}, Lcom/android/server/notification/NotificationManagerService;->cancelNotificationLocked(Lcom/android/server/notification/NotificationRecord;ZI)V

    #@8b
    .line 2303
    :cond_3
    const/4 v0, 0x1

    #@8c
    return v0

    #@8d
    .line 2304
    :cond_4
    if-eqz v8, :cond_5

    #@8f
    .line 2306
    const/4 v4, 0x0

    #@90
    .line 2307
    const/16 v5, 0xd

    #@92
    move-object v0, p0

    #@93
    move-object v1, p1

    #@94
    move v2, p3

    #@95
    move v3, p4

    #@96
    .line 2306
    invoke-direct/range {v0 .. v5}, Lcom/android/server/notification/NotificationManagerService;->cancelGroupChildrenLocked(Lcom/android/server/notification/NotificationRecord;IILjava/lang/String;I)V

    #@99
    .line 2310
    .end local v6    # "group":Ljava/lang/String;
    .end local v7    # "isChild":Z
    .end local v8    # "isSummary":Z
    .end local v9    # "sbn":Landroid/service/notification/StatusBarNotification;
    .end local v10    # "summary":Lcom/android/server/notification/NotificationRecord;
    :cond_5
    const/4 v0, 0x0

    #@9a
    return v0
.end method

.method private scheduleInterruptionFilterChanged(I)V
    .locals 3
    .param p1, "listenerInterruptionFilter"    # I

    #@0
    .prologue
    const/16 v2, 0x8

    #@2
    .line 2673
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    #@4
    invoke-virtual {v0, v2}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->removeMessages(I)V

    #@7
    .line 2674
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    #@9
    .line 2677
    const/4 v1, 0x0

    #@a
    .line 2674
    invoke-virtual {v0, v2, p1, v1}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->obtainMessage(III)Landroid/os/Message;

    #@d
    move-result-object v0

    #@e
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    #@11
    .line 2672
    return-void
.end method

.method private scheduleListenerHintsChanged(I)V
    .locals 3
    .param p1, "state"    # I

    #@0
    .prologue
    const/4 v2, 0x7

    #@1
    .line 2668
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    #@3
    invoke-virtual {v0, v2}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->removeMessages(I)V

    #@6
    .line 2669
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    #@8
    const/4 v1, 0x0

    #@9
    invoke-virtual {v0, v2, p1, v1}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->obtainMessage(III)Landroid/os/Message;

    #@c
    move-result-object v0

    #@d
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    #@10
    .line 2667
    return-void
.end method

.method private scheduleSendRankingUpdate()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x6

    #@1
    .line 2656
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    #@3
    invoke-virtual {v1, v2}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->removeMessages(I)V

    #@6
    .line 2657
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    #@8
    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    #@b
    move-result-object v0

    #@c
    .line 2658
    .local v0, "m":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    #@e
    invoke-virtual {v1, v0}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->sendMessage(Landroid/os/Message;)Z

    #@11
    .line 2655
    return-void
.end method

.method private scheduleTimeoutLocked(Lcom/android/server/notification/NotificationManagerService$ToastRecord;)V
    .locals 5
    .param p1, "r"    # Lcom/android/server/notification/NotificationManagerService$ToastRecord;

    #@0
    .prologue
    .line 2541
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    #@2
    invoke-virtual {v3, p1}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    #@5
    .line 2542
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    #@7
    const/4 v4, 0x2

    #@8
    invoke-static {v3, v4, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    #@b
    move-result-object v2

    #@c
    .line 2543
    .local v2, "m":Landroid/os/Message;
    iget v3, p1, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->duration:I

    #@e
    const/4 v4, 0x1

    #@f
    if-ne v3, v4, :cond_0

    #@11
    const/16 v3, 0xdac

    #@13
    :goto_0
    int-to-long v0, v3

    #@14
    .line 2544
    .local v0, "delay":J
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    #@16
    invoke-virtual {v3, v2, v0, v1}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    #@19
    .line 2539
    return-void

    #@1a
    .line 2543
    .end local v0    # "delay":J
    :cond_0
    const/16 v3, 0x7d0

    #@1c
    goto :goto_0
.end method

.method private sendRegisteredOnlyBroadcast(Ljava/lang/String;)V
    .locals 4
    .param p1, "action"    # Ljava/lang/String;

    #@0
    .prologue
    .line 981
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    #@3
    move-result-object v0

    #@4
    new-instance v1, Landroid/content/Intent;

    #@6
    invoke-direct {v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@9
    .line 982
    const/high16 v2, 0x40000000    # 2.0f

    #@b
    .line 981
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@e
    move-result-object v1

    #@f
    .line 982
    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    #@11
    const/4 v3, 0x0

    #@12
    .line 981
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    #@15
    .line 980
    return-void
.end method

.method private updateEffectsSuppressorLocked()V
    .locals 4

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1045
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mListenersDisablingEffects:Landroid/util/ArraySet;

    #@3
    invoke-virtual {v1}, Landroid/util/ArraySet;->isEmpty()Z

    #@6
    move-result v1

    #@7
    if-nez v1, :cond_0

    #@9
    .line 1046
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mListenersDisablingEffects:Landroid/util/ArraySet;

    #@b
    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    #@e
    move-result-object v1

    #@f
    check-cast v1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    #@11
    iget-object v0, v1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    #@13
    .line 1047
    :goto_0
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mEffectsSuppressor:Landroid/content/ComponentName;

    #@15
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@18
    move-result v1

    #@19
    if-eqz v1, :cond_1

    #@1b
    return-void

    #@1c
    .line 1046
    :cond_0
    const/4 v0, 0x0

    #@1d
    .local v0, "suppressor":Landroid/content/ComponentName;
    goto :goto_0

    #@1e
    .line 1048
    .end local v0    # "suppressor":Landroid/content/ComponentName;
    :cond_1
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mEffectsSuppressor:Landroid/content/ComponentName;

    #@20
    invoke-static {v1, v0}, Lcom/android/server/notification/ZenLog;->traceEffectsSuppressorChanged(Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    #@23
    .line 1049
    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mEffectsSuppressor:Landroid/content/ComponentName;

    #@25
    .line 1050
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    #@27
    if-eqz v0, :cond_2

    #@29
    const/4 v1, 0x1

    #@2a
    :goto_1
    invoke-virtual {v3, v1}, Lcom/android/server/notification/ZenModeHelper;->setEffectsSuppressed(Z)V

    #@2d
    .line 1051
    const-string/jumbo v1, "android.os.action.ACTION_EFFECTS_SUPPRESSOR_CHANGED"

    #@30
    invoke-direct {p0, v1}, Lcom/android/server/notification/NotificationManagerService;->sendRegisteredOnlyBroadcast(Ljava/lang/String;)V

    #@33
    .line 1044
    return-void

    #@34
    :cond_2
    move v1, v2

    #@35
    .line 1050
    goto :goto_1
.end method

.method private updateInterruptionFilterLocked()V
    .locals 2

    #@0
    .prologue
    .line 1055
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    #@2
    invoke-virtual {v1}, Lcom/android/server/notification/ZenModeHelper;->getZenModeListenerInterruptionFilter()I

    #@5
    move-result v0

    #@6
    .line 1056
    .local v0, "interruptionFilter":I
    iget v1, p0, Lcom/android/server/notification/NotificationManagerService;->mInterruptionFilter:I

    #@8
    if-ne v0, v1, :cond_0

    #@a
    return-void

    #@b
    .line 1057
    :cond_0
    iput v0, p0, Lcom/android/server/notification/NotificationManagerService;->mInterruptionFilter:I

    #@d
    .line 1058
    invoke-direct {p0, v0}, Lcom/android/server/notification/NotificationManagerService;->scheduleInterruptionFilterChanged(I)V

    #@10
    .line 1054
    return-void
.end method

.method private updateListenerHintsLocked()V
    .locals 3

    #@0
    .prologue
    .line 1037
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mListenersDisablingEffects:Landroid/util/ArraySet;

    #@2
    invoke-virtual {v1}, Landroid/util/ArraySet;->isEmpty()Z

    #@5
    move-result v1

    #@6
    if-eqz v1, :cond_0

    #@8
    const/4 v0, 0x0

    #@9
    .line 1038
    .local v0, "hints":I
    :goto_0
    iget v1, p0, Lcom/android/server/notification/NotificationManagerService;->mListenerHints:I

    #@b
    if-ne v0, v1, :cond_1

    #@d
    return-void

    #@e
    .line 1037
    .end local v0    # "hints":I
    :cond_0
    const/4 v0, 0x1

    #@f
    .restart local v0    # "hints":I
    goto :goto_0

    #@10
    .line 1039
    :cond_1
    iget v1, p0, Lcom/android/server/notification/NotificationManagerService;->mListenerHints:I

    #@12
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mListenersDisablingEffects:Landroid/util/ArraySet;

    #@14
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    #@17
    move-result v2

    #@18
    invoke-static {v1, v0, v2}, Lcom/android/server/notification/ZenLog;->traceListenerHintsChanged(III)V

    #@1b
    .line 1040
    iput v0, p0, Lcom/android/server/notification/NotificationManagerService;->mListenerHints:I

    #@1d
    .line 1041
    invoke-direct {p0, v0}, Lcom/android/server/notification/NotificationManagerService;->scheduleListenerHintsChanged(I)V

    #@20
    .line 1036
    return-void
.end method

.method private updateNotificationPulse()V
    .locals 2

    #@0
    .prologue
    .line 3108
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    #@2
    monitor-enter v0

    #@3
    .line 3109
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->updateLightsLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    monitor-exit v0

    #@7
    .line 3107
    return-void

    #@8
    .line 3108
    :catchall_0
    move-exception v1

    #@9
    monitor-exit v0

    #@a
    throw v1
.end method

.method private writePolicyXml(Ljava/io/OutputStream;Z)V
    .locals 4
    .param p1, "stream"    # Ljava/io/OutputStream;
    .param p2, "forBackup"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 425
    new-instance v0, Lcom/android/internal/util/FastXmlSerializer;

    #@4
    invoke-direct {v0}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    #@7
    .line 426
    .local v0, "out":Lorg/xmlpull/v1/XmlSerializer;
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    #@9
    invoke-virtual {v1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    #@c
    move-result-object v1

    #@d
    invoke-interface {v0, p1, v1}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    #@10
    .line 427
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@13
    move-result-object v1

    #@14
    invoke-interface {v0, v3, v1}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    #@17
    .line 428
    const-string/jumbo v1, "notification-policy"

    #@1a
    invoke-interface {v0, v3, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@1d
    .line 429
    const-string/jumbo v1, "version"

    #@20
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@23
    move-result-object v2

    #@24
    invoke-interface {v0, v3, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@27
    .line 430
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    #@29
    invoke-virtual {v1, v0, p2}, Lcom/android/server/notification/ZenModeHelper;->writeXml(Lorg/xmlpull/v1/XmlSerializer;Z)V

    #@2c
    .line 431
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mRankingHelper:Lcom/android/server/notification/RankingHelper;

    #@2e
    invoke-virtual {v1, v0, p2}, Lcom/android/server/notification/RankingHelper;->writeXml(Lorg/xmlpull/v1/XmlSerializer;Z)V

    #@31
    .line 432
    const-string/jumbo v1, "notification-policy"

    #@34
    invoke-interface {v0, v3, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@37
    .line 433
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    #@3a
    .line 424
    return-void
.end method


# virtual methods
.method cancelAllLocked(IIIILcom/android/server/notification/ManagedServices$ManagedServiceInfo;Z)V
    .locals 15
    .param p1, "callingUid"    # I
    .param p2, "callingPid"    # I
    .param p3, "userId"    # I
    .param p4, "reason"    # I
    .param p5, "listener"    # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    .param p6, "includeCurrentProfiles"    # Z

    #@0
    .prologue
    .line 2976
    if-nez p5, :cond_1

    #@2
    const/4 v8, 0x0

    #@3
    .line 2978
    :goto_0
    const/4 v3, 0x0

    #@4
    const/4 v5, 0x0

    #@5
    const/4 v6, 0x0

    #@6
    move/from16 v1, p1

    #@8
    move/from16 v2, p2

    #@a
    move/from16 v4, p3

    #@c
    move/from16 v7, p4

    #@e
    .line 2977
    invoke-static/range {v1 .. v8}, Lcom/android/server/EventLogTags;->writeNotificationCancelAll(IILjava/lang/String;IIIILjava/lang/String;)V

    #@11
    .line 2980
    const/4 v12, 0x0

    #@12
    .line 2981
    .local v12, "canceledNotifications":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/notification/NotificationRecord;>;"
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    #@14
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@17
    move-result v11

    #@18
    .line 2982
    .local v11, "N":I
    add-int/lit8 v13, v11, -0x1

    #@1a
    .end local v12    # "canceledNotifications":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/notification/NotificationRecord;>;"
    .local v13, "i":I
    :goto_1
    if-ltz v13, :cond_5

    #@1c
    .line 2983
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    #@1e
    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@21
    move-result-object v14

    #@22
    check-cast v14, Lcom/android/server/notification/NotificationRecord;

    #@24
    .line 2984
    .local v14, "r":Lcom/android/server/notification/NotificationRecord;
    if-eqz p6, :cond_2

    #@26
    .line 2985
    move/from16 v0, p3

    #@28
    invoke-direct {p0, v14, v0}, Lcom/android/server/notification/NotificationManagerService;->notificationMatchesCurrentProfiles(Lcom/android/server/notification/NotificationRecord;I)Z

    #@2b
    move-result v1

    #@2c
    if-nez v1, :cond_3

    #@2e
    .line 2982
    :cond_0
    :goto_2
    add-int/lit8 v13, v13, -0x1

    #@30
    goto :goto_1

    #@31
    .line 2976
    .end local v11    # "N":I
    .end local v13    # "i":I
    .end local v14    # "r":Lcom/android/server/notification/NotificationRecord;
    :cond_1
    move-object/from16 v0, p5

    #@33
    iget-object v1, v0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    #@35
    invoke-virtual {v1}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    #@38
    move-result-object v8

    #@39
    .local v8, "listenerName":Ljava/lang/String;
    goto :goto_0

    #@3a
    .line 2989
    .end local v8    # "listenerName":Ljava/lang/String;
    .restart local v11    # "N":I
    .restart local v13    # "i":I
    .restart local v14    # "r":Lcom/android/server/notification/NotificationRecord;
    :cond_2
    move/from16 v0, p3

    #@3c
    invoke-direct {p0, v14, v0}, Lcom/android/server/notification/NotificationManagerService;->notificationMatchesUserId(Lcom/android/server/notification/NotificationRecord;I)Z

    #@3f
    move-result v1

    #@40
    if-eqz v1, :cond_0

    #@42
    .line 2994
    :cond_3
    invoke-virtual {v14}, Lcom/android/server/notification/NotificationRecord;->getFlags()I

    #@45
    move-result v1

    #@46
    and-int/lit8 v1, v1, 0x22

    #@48
    if-nez v1, :cond_0

    #@4a
    .line 2996
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    #@4c
    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@4f
    .line 2997
    const/4 v1, 0x1

    #@50
    move/from16 v0, p4

    #@52
    invoke-direct {p0, v14, v1, v0}, Lcom/android/server/notification/NotificationManagerService;->cancelNotificationLocked(Lcom/android/server/notification/NotificationRecord;ZI)V

    #@55
    .line 2999
    if-nez v12, :cond_4

    #@57
    .line 3000
    new-instance v12, Ljava/util/ArrayList;

    #@59
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    #@5c
    .line 3002
    :cond_4
    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@5f
    goto :goto_2

    #@60
    .line 3005
    .end local v14    # "r":Lcom/android/server/notification/NotificationRecord;
    :cond_5
    if-eqz v12, :cond_6

    #@62
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    #@65
    move-result v10

    #@66
    .line 3006
    .local v10, "M":I
    :goto_3
    const/4 v13, 0x0

    #@67
    :goto_4
    if-ge v13, v10, :cond_7

    #@69
    .line 3007
    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@6c
    move-result-object v5

    #@6d
    check-cast v5, Lcom/android/server/notification/NotificationRecord;

    #@6f
    .line 3008
    const/16 v9, 0xc

    #@71
    move-object v4, p0

    #@72
    move/from16 v6, p1

    #@74
    move/from16 v7, p2

    #@76
    .line 3007
    invoke-direct/range {v4 .. v9}, Lcom/android/server/notification/NotificationManagerService;->cancelGroupChildrenLocked(Lcom/android/server/notification/NotificationRecord;IILjava/lang/String;I)V

    #@79
    .line 3006
    add-int/lit8 v13, v13, 0x1

    #@7b
    goto :goto_4

    #@7c
    .line 3005
    .end local v10    # "M":I
    :cond_6
    const/4 v10, 0x0

    #@7d
    .restart local v10    # "M":I
    goto :goto_3

    #@7e
    .line 3010
    :cond_7
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->updateLightsLocked()V

    #@81
    .line 2975
    return-void
.end method

.method cancelAllNotificationsInt(IILjava/lang/String;IIZIILcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Z
    .locals 15
    .param p1, "callingUid"    # I
    .param p2, "callingPid"    # I
    .param p3, "pkg"    # Ljava/lang/String;
    .param p4, "mustHaveFlags"    # I
    .param p5, "mustNotHaveFlags"    # I
    .param p6, "doit"    # Z
    .param p7, "userId"    # I
    .param p8, "reason"    # I
    .param p9, "listener"    # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    #@0
    .prologue
    .line 2924
    if-nez p9, :cond_1

    #@2
    const/4 v8, 0x0

    #@3
    :goto_0
    move/from16 v1, p1

    #@5
    move/from16 v2, p2

    #@7
    move-object/from16 v3, p3

    #@9
    move/from16 v4, p7

    #@b
    move/from16 v5, p4

    #@d
    move/from16 v6, p5

    #@f
    move/from16 v7, p8

    #@11
    .line 2925
    invoke-static/range {v1 .. v8}, Lcom/android/server/EventLogTags;->writeNotificationCancelAll(IILjava/lang/String;IIIILjava/lang/String;)V

    #@14
    .line 2929
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    #@16
    monitor-enter v2

    #@17
    .line 2930
    :try_start_0
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    #@19
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@1c
    move-result v11

    #@1d
    .line 2931
    .local v11, "N":I
    const/4 v12, 0x0

    #@1e
    .line 2932
    .local v12, "canceledNotifications":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/notification/NotificationRecord;>;"
    add-int/lit8 v13, v11, -0x1

    #@20
    .end local v12    # "canceledNotifications":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/notification/NotificationRecord;>;"
    .local v13, "i":I
    :goto_1
    if-ltz v13, :cond_7

    #@22
    .line 2933
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    #@24
    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@27
    move-result-object v14

    #@28
    check-cast v14, Lcom/android/server/notification/NotificationRecord;

    #@2a
    .line 2934
    .local v14, "r":Lcom/android/server/notification/NotificationRecord;
    move/from16 v0, p7

    #@2c
    invoke-direct {p0, v14, v0}, Lcom/android/server/notification/NotificationManagerService;->notificationMatchesUserId(Lcom/android/server/notification/NotificationRecord;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2f
    move-result v1

    #@30
    if-nez v1, :cond_2

    #@32
    .line 2932
    :cond_0
    :goto_2
    add-int/lit8 v13, v13, -0x1

    #@34
    goto :goto_1

    #@35
    .line 2924
    .end local v11    # "N":I
    .end local v13    # "i":I
    .end local v14    # "r":Lcom/android/server/notification/NotificationRecord;
    :cond_1
    move-object/from16 v0, p9

    #@37
    iget-object v1, v0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    #@39
    invoke-virtual {v1}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    #@3c
    move-result-object v8

    #@3d
    .local v8, "listenerName":Ljava/lang/String;
    goto :goto_0

    #@3e
    .line 2938
    .end local v8    # "listenerName":Ljava/lang/String;
    .restart local v11    # "N":I
    .restart local v13    # "i":I
    .restart local v14    # "r":Lcom/android/server/notification/NotificationRecord;
    :cond_2
    :try_start_1
    invoke-virtual {v14}, Lcom/android/server/notification/NotificationRecord;->getUserId()I

    #@41
    move-result v1

    #@42
    const/4 v3, -0x1

    #@43
    if-ne v1, v3, :cond_3

    #@45
    if-eqz p3, :cond_0

    #@47
    .line 2941
    :cond_3
    invoke-virtual {v14}, Lcom/android/server/notification/NotificationRecord;->getFlags()I

    #@4a
    move-result v1

    #@4b
    and-int v1, v1, p4

    #@4d
    move/from16 v0, p4

    #@4f
    if-ne v1, v0, :cond_0

    #@51
    .line 2944
    invoke-virtual {v14}, Lcom/android/server/notification/NotificationRecord;->getFlags()I

    #@54
    move-result v1

    #@55
    and-int v1, v1, p5

    #@57
    if-nez v1, :cond_0

    #@59
    .line 2947
    if-eqz p3, :cond_4

    #@5b
    iget-object v1, v14, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    #@5d
    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    #@60
    move-result-object v1

    #@61
    move-object/from16 v0, p3

    #@63
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@66
    move-result v1

    #@67
    if-eqz v1, :cond_0

    #@69
    .line 2950
    :cond_4
    if-nez v12, :cond_5

    #@6b
    .line 2951
    new-instance v12, Ljava/util/ArrayList;

    #@6d
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    #@70
    .line 2953
    :cond_5
    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@73
    .line 2954
    if-nez p6, :cond_6

    #@75
    .line 2955
    const/4 v1, 0x1

    #@76
    monitor-exit v2

    #@77
    return v1

    #@78
    .line 2957
    :cond_6
    :try_start_2
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    #@7a
    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@7d
    .line 2958
    const/4 v1, 0x0

    #@7e
    move/from16 v0, p8

    #@80
    invoke-direct {p0, v14, v1, v0}, Lcom/android/server/notification/NotificationManagerService;->cancelNotificationLocked(Lcom/android/server/notification/NotificationRecord;ZI)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@83
    goto :goto_2

    #@84
    .line 2929
    .end local v11    # "N":I
    .end local v13    # "i":I
    .end local v14    # "r":Lcom/android/server/notification/NotificationRecord;
    :catchall_0
    move-exception v1

    #@85
    monitor-exit v2

    #@86
    throw v1

    #@87
    .line 2960
    .restart local v11    # "N":I
    .restart local v13    # "i":I
    :cond_7
    if-eqz p6, :cond_8

    #@89
    if-eqz v12, :cond_8

    #@8b
    .line 2961
    :try_start_3
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    #@8e
    move-result v10

    #@8f
    .line 2962
    .local v10, "M":I
    const/4 v13, 0x0

    #@90
    :goto_3
    if-ge v13, v10, :cond_8

    #@92
    .line 2963
    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@95
    move-result-object v5

    #@96
    check-cast v5, Lcom/android/server/notification/NotificationRecord;

    #@98
    .line 2964
    const/16 v9, 0xc

    #@9a
    move-object v4, p0

    #@9b
    move/from16 v6, p1

    #@9d
    move/from16 v7, p2

    #@9f
    .line 2963
    invoke-direct/range {v4 .. v9}, Lcom/android/server/notification/NotificationManagerService;->cancelGroupChildrenLocked(Lcom/android/server/notification/NotificationRecord;IILjava/lang/String;I)V

    #@a2
    .line 2962
    add-int/lit8 v13, v13, 0x1

    #@a4
    goto :goto_3

    #@a5
    .line 2967
    .end local v10    # "M":I
    :cond_8
    if-eqz v12, :cond_9

    #@a7
    .line 2968
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->updateLightsLocked()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@aa
    .line 2970
    :cond_9
    if-eqz v12, :cond_a

    #@ac
    const/4 v1, 0x1

    #@ad
    :goto_4
    monitor-exit v2

    #@ae
    return v1

    #@af
    :cond_a
    const/4 v1, 0x0

    #@b0
    goto :goto_4
.end method

.method cancelNotification(IILjava/lang/String;Ljava/lang/String;IIIZIILcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V
    .locals 14
    .param p1, "callingUid"    # I
    .param p2, "callingPid"    # I
    .param p3, "pkg"    # Ljava/lang/String;
    .param p4, "tag"    # Ljava/lang/String;
    .param p5, "id"    # I
    .param p6, "mustHaveFlags"    # I
    .param p7, "mustNotHaveFlags"    # I
    .param p8, "sendDelete"    # Z
    .param p9, "userId"    # I
    .param p10, "reason"    # I
    .param p11, "listener"    # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    #@0
    .prologue
    .line 2856
    iget-object v13, p0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    #@2
    new-instance v0, Lcom/android/server/notification/NotificationManagerService$9;

    #@4
    move-object v1, p0

    #@5
    move-object/from16 v2, p11

    #@7
    move v3, p1

    #@8
    move/from16 v4, p2

    #@a
    move-object/from16 v5, p3

    #@c
    move/from16 v6, p5

    #@e
    move-object/from16 v7, p4

    #@10
    move/from16 v8, p9

    #@12
    move/from16 v9, p6

    #@14
    move/from16 v10, p7

    #@16
    move/from16 v11, p10

    #@18
    move/from16 v12, p8

    #@1a
    invoke-direct/range {v0 .. v12}, Lcom/android/server/notification/NotificationManagerService$9;-><init>(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;IILjava/lang/String;ILjava/lang/String;IIIIZ)V

    #@1d
    invoke-virtual {v13, v0}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->post(Ljava/lang/Runnable;)Z

    #@20
    .line 2851
    return-void
.end method

.method cancelToastLocked(I)V
    .locals 5
    .param p1, "index"    # I

    #@0
    .prologue
    .line 2520
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@5
    move-result-object v1

    #@6
    check-cast v1, Lcom/android/server/notification/NotificationManagerService$ToastRecord;

    #@8
    .line 2522
    .local v1, "record":Lcom/android/server/notification/NotificationManagerService$ToastRecord;
    :try_start_0
    iget-object v2, v1, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->callback:Landroid/app/ITransientNotification;

    #@a
    invoke-interface {v2}, Landroid/app/ITransientNotification;->hide()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@d
    .line 2529
    :goto_0
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    #@f
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@12
    .line 2530
    iget v2, v1, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->pid:I

    #@14
    invoke-virtual {p0, v2}, Lcom/android/server/notification/NotificationManagerService;->keepProcessAliveLocked(I)V

    #@17
    .line 2531
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    #@19
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@1c
    move-result v2

    #@1d
    if-lez v2, :cond_0

    #@1f
    .line 2535
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->showNextToastLocked()V

    #@22
    .line 2519
    :cond_0
    return-void

    #@23
    .line 2523
    :catch_0
    move-exception v0

    #@24
    .line 2524
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "NotificationService"

    #@27
    new-instance v3, Ljava/lang/StringBuilder;

    #@29
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@2c
    const-string/jumbo v4, "Object died trying to hide notification "

    #@2f
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v3

    #@33
    iget-object v4, v1, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->callback:Landroid/app/ITransientNotification;

    #@35
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v3

    #@39
    .line 2525
    const-string/jumbo v4, " in package "

    #@3c
    .line 2524
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v3

    #@40
    .line 2525
    iget-object v4, v1, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->pkg:Ljava/lang/String;

    #@42
    .line 2524
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v3

    #@46
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@49
    move-result-object v3

    #@4a
    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@4d
    goto :goto_0
.end method

.method dumpImpl(Ljava/io/PrintWriter;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V
    .locals 24
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "filter"    # Lcom/android/server/notification/NotificationManagerService$DumpFilter;

    #@0
    .prologue
    .line 1839
    const-string/jumbo v20, "Current Notification Manager state"

    #@3
    move-object/from16 v0, p1

    #@5
    move-object/from16 v1, v20

    #@7
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@a
    .line 1840
    move-object/from16 v0, p2

    #@c
    iget-boolean v0, v0, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->filtered:Z

    #@e
    move/from16 v20, v0

    #@10
    if-eqz v20, :cond_0

    #@12
    .line 1841
    const-string/jumbo v20, " (filtered to "

    #@15
    move-object/from16 v0, p1

    #@17
    move-object/from16 v1, v20

    #@19
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1c
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    #@1f
    const-string/jumbo v20, ")"

    #@22
    move-object/from16 v0, p1

    #@24
    move-object/from16 v1, v20

    #@26
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@29
    .line 1843
    :cond_0
    const/16 v20, 0x3a

    #@2b
    move-object/from16 v0, p1

    #@2d
    move/from16 v1, v20

    #@2f
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(C)V

    #@32
    .line 1845
    move-object/from16 v0, p2

    #@34
    iget-boolean v0, v0, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->filtered:Z

    #@36
    move/from16 v20, v0

    #@38
    if-eqz v20, :cond_1

    #@3a
    move-object/from16 v0, p2

    #@3c
    iget-boolean v0, v0, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->zen:Z

    #@3e
    move/from16 v19, v0

    #@40
    .line 1847
    :goto_0
    if-nez v19, :cond_4

    #@42
    .line 1848
    move-object/from16 v0, p0

    #@44
    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    #@46
    move-object/from16 v21, v0

    #@48
    monitor-enter v21

    #@49
    .line 1849
    :try_start_0
    move-object/from16 v0, p0

    #@4b
    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    #@4d
    move-object/from16 v20, v0

    #@4f
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    #@52
    move-result v4

    #@53
    .line 1850
    .local v4, "N":I
    if-lez v4, :cond_3

    #@55
    .line 1851
    const-string/jumbo v20, "  Toast Queue:"

    #@58
    move-object/from16 v0, p1

    #@5a
    move-object/from16 v1, v20

    #@5c
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@5f
    .line 1852
    const/4 v8, 0x0

    #@60
    .local v8, "i":I
    :goto_1
    if-ge v8, v4, :cond_2

    #@62
    .line 1853
    move-object/from16 v0, p0

    #@64
    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    #@66
    move-object/from16 v20, v0

    #@68
    move-object/from16 v0, v20

    #@6a
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@6d
    move-result-object v20

    #@6e
    check-cast v20, Lcom/android/server/notification/NotificationManagerService$ToastRecord;

    #@70
    const-string/jumbo v22, "    "

    #@73
    move-object/from16 v0, v20

    #@75
    move-object/from16 v1, p1

    #@77
    move-object/from16 v2, v22

    #@79
    move-object/from16 v3, p2

    #@7b
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V

    #@7e
    .line 1852
    add-int/lit8 v8, v8, 0x1

    #@80
    goto :goto_1

    #@81
    .line 1845
    .end local v4    # "N":I
    .end local v8    # "i":I
    :cond_1
    const/16 v19, 0x0

    #@83
    .local v19, "zenOnly":Z
    goto :goto_0

    #@84
    .line 1855
    .end local v19    # "zenOnly":Z
    .restart local v4    # "N":I
    .restart local v8    # "i":I
    :cond_2
    const-string/jumbo v20, "  "

    #@87
    move-object/from16 v0, p1

    #@89
    move-object/from16 v1, v20

    #@8b
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8e
    .end local v8    # "i":I
    :cond_3
    monitor-exit v21

    #@8f
    .line 1860
    .end local v4    # "N":I
    :cond_4
    move-object/from16 v0, p0

    #@91
    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    #@93
    move-object/from16 v21, v0

    #@95
    monitor-enter v21

    #@96
    .line 1861
    if-nez v19, :cond_f

    #@98
    .line 1862
    :try_start_1
    move-object/from16 v0, p0

    #@9a
    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    #@9c
    move-object/from16 v20, v0

    #@9e
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    #@a1
    move-result v4

    #@a2
    .line 1863
    .restart local v4    # "N":I
    if-lez v4, :cond_8

    #@a4
    .line 1864
    const-string/jumbo v20, "  Notification List:"

    #@a7
    move-object/from16 v0, p1

    #@a9
    move-object/from16 v1, v20

    #@ab
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@ae
    .line 1865
    const/4 v8, 0x0

    #@af
    .restart local v8    # "i":I
    :goto_2
    if-ge v8, v4, :cond_7

    #@b1
    .line 1866
    move-object/from16 v0, p0

    #@b3
    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    #@b5
    move-object/from16 v20, v0

    #@b7
    move-object/from16 v0, v20

    #@b9
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@bc
    move-result-object v11

    #@bd
    check-cast v11, Lcom/android/server/notification/NotificationRecord;

    #@bf
    .line 1867
    .local v11, "nr":Lcom/android/server/notification/NotificationRecord;
    move-object/from16 v0, p2

    #@c1
    iget-boolean v0, v0, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->filtered:Z

    #@c3
    move/from16 v20, v0

    #@c5
    if-eqz v20, :cond_5

    #@c7
    iget-object v0, v11, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    #@c9
    move-object/from16 v20, v0

    #@cb
    move-object/from16 v0, p2

    #@cd
    move-object/from16 v1, v20

    #@cf
    invoke-virtual {v0, v1}, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->matches(Landroid/service/notification/StatusBarNotification;)Z

    #@d2
    move-result v20

    #@d3
    if-eqz v20, :cond_6

    #@d5
    .line 1868
    :cond_5
    const-string/jumbo v20, "    "

    #@d8
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    #@db
    move-result-object v22

    #@dc
    move-object/from16 v0, p2

    #@de
    iget-boolean v0, v0, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->redact:Z

    #@e0
    move/from16 v23, v0

    #@e2
    move-object/from16 v0, p1

    #@e4
    move-object/from16 v1, v20

    #@e6
    move-object/from16 v2, v22

    #@e8
    move/from16 v3, v23

    #@ea
    invoke-virtual {v11, v0, v1, v2, v3}, Lcom/android/server/notification/NotificationRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/content/Context;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@ed
    .line 1865
    :cond_6
    add-int/lit8 v8, v8, 0x1

    #@ef
    goto :goto_2

    #@f0
    .line 1848
    .end local v4    # "N":I
    .end local v8    # "i":I
    .end local v11    # "nr":Lcom/android/server/notification/NotificationRecord;
    :catchall_0
    move-exception v20

    #@f1
    monitor-exit v21

    #@f2
    throw v20

    #@f3
    .line 1870
    .restart local v4    # "N":I
    .restart local v8    # "i":I
    :cond_7
    :try_start_2
    const-string/jumbo v20, "  "

    #@f6
    move-object/from16 v0, p1

    #@f8
    move-object/from16 v1, v20

    #@fa
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@fd
    .line 1873
    .end local v8    # "i":I
    :cond_8
    move-object/from16 v0, p2

    #@ff
    iget-boolean v0, v0, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->filtered:Z

    #@101
    move/from16 v20, v0

    #@103
    if-nez v20, :cond_c

    #@105
    .line 1874
    move-object/from16 v0, p0

    #@107
    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mLights:Ljava/util/ArrayList;

    #@109
    move-object/from16 v20, v0

    #@10b
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    #@10e
    move-result v4

    #@10f
    .line 1875
    if-lez v4, :cond_b

    #@111
    .line 1876
    const-string/jumbo v20, "  Lights List:"

    #@114
    move-object/from16 v0, p1

    #@116
    move-object/from16 v1, v20

    #@118
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@11b
    .line 1877
    const/4 v8, 0x0

    #@11c
    .restart local v8    # "i":I
    :goto_3
    if-ge v8, v4, :cond_a

    #@11e
    .line 1878
    add-int/lit8 v20, v4, -0x1

    #@120
    move/from16 v0, v20

    #@122
    if-ne v8, v0, :cond_9

    #@124
    .line 1879
    const-string/jumbo v20, "  > "

    #@127
    move-object/from16 v0, p1

    #@129
    move-object/from16 v1, v20

    #@12b
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@12e
    .line 1883
    :goto_4
    move-object/from16 v0, p0

    #@130
    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mLights:Ljava/util/ArrayList;

    #@132
    move-object/from16 v20, v0

    #@134
    move-object/from16 v0, v20

    #@136
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@139
    move-result-object v20

    #@13a
    check-cast v20, Ljava/lang/String;

    #@13c
    move-object/from16 v0, p1

    #@13e
    move-object/from16 v1, v20

    #@140
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@143
    .line 1877
    add-int/lit8 v8, v8, 0x1

    #@145
    goto :goto_3

    #@146
    .line 1881
    :cond_9
    const-string/jumbo v20, "    "

    #@149
    move-object/from16 v0, p1

    #@14b
    move-object/from16 v1, v20

    #@14d
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@150
    goto :goto_4

    #@151
    .line 1860
    .end local v4    # "N":I
    .end local v8    # "i":I
    :catchall_1
    move-exception v20

    #@152
    monitor-exit v21

    #@153
    throw v20

    #@154
    .line 1885
    .restart local v4    # "N":I
    .restart local v8    # "i":I
    :cond_a
    :try_start_3
    const-string/jumbo v20, "  "

    #@157
    move-object/from16 v0, p1

    #@159
    move-object/from16 v1, v20

    #@15b
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@15e
    .line 1887
    .end local v8    # "i":I
    :cond_b
    new-instance v20, Ljava/lang/StringBuilder;

    #@160
    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    #@163
    const-string/jumbo v22, "  mUseAttentionLight="

    #@166
    move-object/from16 v0, v20

    #@168
    move-object/from16 v1, v22

    #@16a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16d
    move-result-object v20

    #@16e
    move-object/from16 v0, p0

    #@170
    iget-boolean v0, v0, Lcom/android/server/notification/NotificationManagerService;->mUseAttentionLight:Z

    #@172
    move/from16 v22, v0

    #@174
    move-object/from16 v0, v20

    #@176
    move/from16 v1, v22

    #@178
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@17b
    move-result-object v20

    #@17c
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@17f
    move-result-object v20

    #@180
    move-object/from16 v0, p1

    #@182
    move-object/from16 v1, v20

    #@184
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@187
    .line 1888
    new-instance v20, Ljava/lang/StringBuilder;

    #@189
    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    #@18c
    const-string/jumbo v22, "  mNotificationPulseEnabled="

    #@18f
    move-object/from16 v0, v20

    #@191
    move-object/from16 v1, v22

    #@193
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@196
    move-result-object v20

    #@197
    move-object/from16 v0, p0

    #@199
    iget-boolean v0, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationPulseEnabled:Z

    #@19b
    move/from16 v22, v0

    #@19d
    move-object/from16 v0, v20

    #@19f
    move/from16 v1, v22

    #@1a1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@1a4
    move-result-object v20

    #@1a5
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a8
    move-result-object v20

    #@1a9
    move-object/from16 v0, p1

    #@1ab
    move-object/from16 v1, v20

    #@1ad
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1b0
    .line 1889
    new-instance v20, Ljava/lang/StringBuilder;

    #@1b2
    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    #@1b5
    const-string/jumbo v22, "  mSoundNotificationKey="

    #@1b8
    move-object/from16 v0, v20

    #@1ba
    move-object/from16 v1, v22

    #@1bc
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1bf
    move-result-object v20

    #@1c0
    move-object/from16 v0, p0

    #@1c2
    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mSoundNotificationKey:Ljava/lang/String;

    #@1c4
    move-object/from16 v22, v0

    #@1c6
    move-object/from16 v0, v20

    #@1c8
    move-object/from16 v1, v22

    #@1ca
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1cd
    move-result-object v20

    #@1ce
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d1
    move-result-object v20

    #@1d2
    move-object/from16 v0, p1

    #@1d4
    move-object/from16 v1, v20

    #@1d6
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1d9
    .line 1890
    new-instance v20, Ljava/lang/StringBuilder;

    #@1db
    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    #@1de
    const-string/jumbo v22, "  mVibrateNotificationKey="

    #@1e1
    move-object/from16 v0, v20

    #@1e3
    move-object/from16 v1, v22

    #@1e5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e8
    move-result-object v20

    #@1e9
    move-object/from16 v0, p0

    #@1eb
    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mVibrateNotificationKey:Ljava/lang/String;

    #@1ed
    move-object/from16 v22, v0

    #@1ef
    move-object/from16 v0, v20

    #@1f1
    move-object/from16 v1, v22

    #@1f3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f6
    move-result-object v20

    #@1f7
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1fa
    move-result-object v20

    #@1fb
    move-object/from16 v0, p1

    #@1fd
    move-object/from16 v1, v20

    #@1ff
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@202
    .line 1891
    new-instance v20, Ljava/lang/StringBuilder;

    #@204
    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    #@207
    const-string/jumbo v22, "  mDisableNotificationEffects="

    #@20a
    move-object/from16 v0, v20

    #@20c
    move-object/from16 v1, v22

    #@20e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@211
    move-result-object v20

    #@212
    move-object/from16 v0, p0

    #@214
    iget-boolean v0, v0, Lcom/android/server/notification/NotificationManagerService;->mDisableNotificationEffects:Z

    #@216
    move/from16 v22, v0

    #@218
    move-object/from16 v0, v20

    #@21a
    move/from16 v1, v22

    #@21c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@21f
    move-result-object v20

    #@220
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@223
    move-result-object v20

    #@224
    move-object/from16 v0, p1

    #@226
    move-object/from16 v1, v20

    #@228
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@22b
    .line 1892
    new-instance v20, Ljava/lang/StringBuilder;

    #@22d
    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    #@230
    const-string/jumbo v22, "  mCallState="

    #@233
    move-object/from16 v0, v20

    #@235
    move-object/from16 v1, v22

    #@237
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23a
    move-result-object v20

    #@23b
    move-object/from16 v0, p0

    #@23d
    iget v0, v0, Lcom/android/server/notification/NotificationManagerService;->mCallState:I

    #@23f
    move/from16 v22, v0

    #@241
    invoke-static/range {v22 .. v22}, Lcom/android/server/notification/NotificationManagerService;->callStateToString(I)Ljava/lang/String;

    #@244
    move-result-object v22

    #@245
    move-object/from16 v0, v20

    #@247
    move-object/from16 v1, v22

    #@249
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24c
    move-result-object v20

    #@24d
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@250
    move-result-object v20

    #@251
    move-object/from16 v0, p1

    #@253
    move-object/from16 v1, v20

    #@255
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@258
    .line 1893
    new-instance v20, Ljava/lang/StringBuilder;

    #@25a
    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    #@25d
    const-string/jumbo v22, "  mSystemReady="

    #@260
    move-object/from16 v0, v20

    #@262
    move-object/from16 v1, v22

    #@264
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@267
    move-result-object v20

    #@268
    move-object/from16 v0, p0

    #@26a
    iget-boolean v0, v0, Lcom/android/server/notification/NotificationManagerService;->mSystemReady:Z

    #@26c
    move/from16 v22, v0

    #@26e
    move-object/from16 v0, v20

    #@270
    move/from16 v1, v22

    #@272
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@275
    move-result-object v20

    #@276
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@279
    move-result-object v20

    #@27a
    move-object/from16 v0, p1

    #@27c
    move-object/from16 v1, v20

    #@27e
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@281
    .line 1895
    :cond_c
    new-instance v20, Ljava/lang/StringBuilder;

    #@283
    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    #@286
    const-string/jumbo v22, "  mArchive="

    #@289
    move-object/from16 v0, v20

    #@28b
    move-object/from16 v1, v22

    #@28d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@290
    move-result-object v20

    #@291
    move-object/from16 v0, p0

    #@293
    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mArchive:Lcom/android/server/notification/NotificationManagerService$Archive;

    #@295
    move-object/from16 v22, v0

    #@297
    invoke-virtual/range {v22 .. v22}, Lcom/android/server/notification/NotificationManagerService$Archive;->toString()Ljava/lang/String;

    #@29a
    move-result-object v22

    #@29b
    move-object/from16 v0, v20

    #@29d
    move-object/from16 v1, v22

    #@29f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a2
    move-result-object v20

    #@2a3
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2a6
    move-result-object v20

    #@2a7
    move-object/from16 v0, p1

    #@2a9
    move-object/from16 v1, v20

    #@2ab
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@2ae
    .line 1896
    move-object/from16 v0, p0

    #@2b0
    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mArchive:Lcom/android/server/notification/NotificationManagerService$Archive;

    #@2b2
    move-object/from16 v20, v0

    #@2b4
    invoke-virtual/range {v20 .. v20}, Lcom/android/server/notification/NotificationManagerService$Archive;->descendingIterator()Ljava/util/Iterator;

    #@2b7
    move-result-object v9

    #@2b8
    .line 1897
    .local v9, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/service/notification/StatusBarNotification;>;"
    const/4 v8, 0x0

    #@2b9
    .line 1898
    .restart local v8    # "i":I
    :cond_d
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    #@2bc
    move-result v20

    #@2bd
    if-eqz v20, :cond_f

    #@2bf
    .line 1899
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@2c2
    move-result-object v16

    #@2c3
    check-cast v16, Landroid/service/notification/StatusBarNotification;

    #@2c5
    .line 1900
    .local v16, "sbn":Landroid/service/notification/StatusBarNotification;
    if-eqz p2, :cond_e

    #@2c7
    move-object/from16 v0, p2

    #@2c9
    move-object/from16 v1, v16

    #@2cb
    invoke-virtual {v0, v1}, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->matches(Landroid/service/notification/StatusBarNotification;)Z

    #@2ce
    move-result v20

    #@2cf
    if-eqz v20, :cond_d

    #@2d1
    .line 1901
    :cond_e
    new-instance v20, Ljava/lang/StringBuilder;

    #@2d3
    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    #@2d6
    const-string/jumbo v22, "    "

    #@2d9
    move-object/from16 v0, v20

    #@2db
    move-object/from16 v1, v22

    #@2dd
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e0
    move-result-object v20

    #@2e1
    move-object/from16 v0, v20

    #@2e3
    move-object/from16 v1, v16

    #@2e5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2e8
    move-result-object v20

    #@2e9
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2ec
    move-result-object v20

    #@2ed
    move-object/from16 v0, p1

    #@2ef
    move-object/from16 v1, v20

    #@2f1
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@2f4
    .line 1902
    add-int/lit8 v8, v8, 0x1

    #@2f6
    const/16 v20, 0x5

    #@2f8
    move/from16 v0, v20

    #@2fa
    if-lt v8, v0, :cond_d

    #@2fc
    .line 1903
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    #@2ff
    move-result v20

    #@300
    if-eqz v20, :cond_f

    #@302
    const-string/jumbo v20, "    ..."

    #@305
    move-object/from16 v0, p1

    #@307
    move-object/from16 v1, v20

    #@309
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@30c
    .line 1909
    .end local v4    # "N":I
    .end local v8    # "i":I
    .end local v9    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/service/notification/StatusBarNotification;>;"
    .end local v16    # "sbn":Landroid/service/notification/StatusBarNotification;
    :cond_f
    if-nez v19, :cond_10

    #@30e
    .line 1910
    const-string/jumbo v20, "\n  Usage Stats:"

    #@311
    move-object/from16 v0, p1

    #@313
    move-object/from16 v1, v20

    #@315
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@318
    .line 1911
    move-object/from16 v0, p0

    #@31a
    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mUsageStats:Lcom/android/server/notification/NotificationUsageStats;

    #@31c
    move-object/from16 v20, v0

    #@31e
    const-string/jumbo v22, "    "

    #@321
    move-object/from16 v0, v20

    #@323
    move-object/from16 v1, p1

    #@325
    move-object/from16 v2, v22

    #@327
    move-object/from16 v3, p2

    #@329
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/notification/NotificationUsageStats;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V

    #@32c
    .line 1914
    :cond_10
    move-object/from16 v0, p2

    #@32e
    iget-boolean v0, v0, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->filtered:Z

    #@330
    move/from16 v20, v0

    #@332
    if-eqz v20, :cond_11

    #@334
    if-eqz v19, :cond_12

    #@336
    .line 1915
    :cond_11
    const-string/jumbo v20, "\n  Zen Mode:"

    #@339
    move-object/from16 v0, p1

    #@33b
    move-object/from16 v1, v20

    #@33d
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@340
    .line 1916
    const-string/jumbo v20, "    mInterruptionFilter="

    #@343
    move-object/from16 v0, p1

    #@345
    move-object/from16 v1, v20

    #@347
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@34a
    move-object/from16 v0, p0

    #@34c
    iget v0, v0, Lcom/android/server/notification/NotificationManagerService;->mInterruptionFilter:I

    #@34e
    move/from16 v20, v0

    #@350
    move-object/from16 v0, p1

    #@352
    move/from16 v1, v20

    #@354
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(I)V

    #@357
    .line 1917
    move-object/from16 v0, p0

    #@359
    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    #@35b
    move-object/from16 v20, v0

    #@35d
    const-string/jumbo v22, "    "

    #@360
    move-object/from16 v0, v20

    #@362
    move-object/from16 v1, p1

    #@364
    move-object/from16 v2, v22

    #@366
    invoke-virtual {v0, v1, v2}, Lcom/android/server/notification/ZenModeHelper;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    #@369
    .line 1919
    const-string/jumbo v20, "\n  Zen Log:"

    #@36c
    move-object/from16 v0, p1

    #@36e
    move-object/from16 v1, v20

    #@370
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@373
    .line 1920
    const-string/jumbo v20, "    "

    #@376
    move-object/from16 v0, p1

    #@378
    move-object/from16 v1, v20

    #@37a
    invoke-static {v0, v1}, Lcom/android/server/notification/ZenLog;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    #@37d
    .line 1923
    :cond_12
    if-nez v19, :cond_15

    #@37f
    .line 1924
    const-string/jumbo v20, "\n  Ranking Config:"

    #@382
    move-object/from16 v0, p1

    #@384
    move-object/from16 v1, v20

    #@386
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@389
    .line 1925
    move-object/from16 v0, p0

    #@38b
    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mRankingHelper:Lcom/android/server/notification/RankingHelper;

    #@38d
    move-object/from16 v20, v0

    #@38f
    const-string/jumbo v22, "    "

    #@392
    move-object/from16 v0, v20

    #@394
    move-object/from16 v1, p1

    #@396
    move-object/from16 v2, v22

    #@398
    move-object/from16 v3, p2

    #@39a
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/notification/RankingHelper;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V

    #@39d
    .line 1927
    const-string/jumbo v20, "\n  Notification listeners:"

    #@3a0
    move-object/from16 v0, p1

    #@3a2
    move-object/from16 v1, v20

    #@3a4
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@3a7
    .line 1928
    move-object/from16 v0, p0

    #@3a9
    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    #@3ab
    move-object/from16 v20, v0

    #@3ad
    move-object/from16 v0, v20

    #@3af
    move-object/from16 v1, p1

    #@3b1
    move-object/from16 v2, p2

    #@3b3
    invoke-virtual {v0, v1, v2}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->dump(Ljava/io/PrintWriter;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V

    #@3b6
    .line 1929
    const-string/jumbo v20, "    mListenerHints: "

    #@3b9
    move-object/from16 v0, p1

    #@3bb
    move-object/from16 v1, v20

    #@3bd
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3c0
    move-object/from16 v0, p0

    #@3c2
    iget v0, v0, Lcom/android/server/notification/NotificationManagerService;->mListenerHints:I

    #@3c4
    move/from16 v20, v0

    #@3c6
    move-object/from16 v0, p1

    #@3c8
    move/from16 v1, v20

    #@3ca
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(I)V

    #@3cd
    .line 1930
    const-string/jumbo v20, "    mListenersDisablingEffects: ("

    #@3d0
    move-object/from16 v0, p1

    #@3d2
    move-object/from16 v1, v20

    #@3d4
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3d7
    .line 1931
    move-object/from16 v0, p0

    #@3d9
    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mListenersDisablingEffects:Landroid/util/ArraySet;

    #@3db
    move-object/from16 v20, v0

    #@3dd
    invoke-virtual/range {v20 .. v20}, Landroid/util/ArraySet;->size()I

    #@3e0
    move-result v4

    #@3e1
    .line 1932
    .restart local v4    # "N":I
    const/4 v8, 0x0

    #@3e2
    .restart local v8    # "i":I
    :goto_5
    if-ge v8, v4, :cond_14

    #@3e4
    .line 1933
    move-object/from16 v0, p0

    #@3e6
    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mListenersDisablingEffects:Landroid/util/ArraySet;

    #@3e8
    move-object/from16 v20, v0

    #@3ea
    move-object/from16 v0, v20

    #@3ec
    invoke-virtual {v0, v8}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    #@3ef
    move-result-object v10

    #@3f0
    check-cast v10, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    #@3f2
    .line 1934
    .local v10, "listener":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    if-lez v8, :cond_13

    #@3f4
    const/16 v20, 0x2c

    #@3f6
    move-object/from16 v0, p1

    #@3f8
    move/from16 v1, v20

    #@3fa
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    #@3fd
    .line 1935
    :cond_13
    iget-object v0, v10, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    #@3ff
    move-object/from16 v20, v0

    #@401
    move-object/from16 v0, p1

    #@403
    move-object/from16 v1, v20

    #@405
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    #@408
    .line 1932
    add-int/lit8 v8, v8, 0x1

    #@40a
    goto :goto_5

    #@40b
    .line 1937
    .end local v10    # "listener":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    :cond_14
    const/16 v20, 0x29

    #@40d
    move-object/from16 v0, p1

    #@40f
    move/from16 v1, v20

    #@411
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(C)V

    #@414
    .line 1939
    .end local v4    # "N":I
    .end local v8    # "i":I
    :cond_15
    const-string/jumbo v20, "\n  Policy access:"

    #@417
    move-object/from16 v0, p1

    #@419
    move-object/from16 v1, v20

    #@41b
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@41e
    .line 1940
    const-string/jumbo v20, "    mPolicyAccess: "

    #@421
    move-object/from16 v0, p1

    #@423
    move-object/from16 v1, v20

    #@425
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@428
    move-object/from16 v0, p0

    #@42a
    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mPolicyAccess:Lcom/android/server/notification/NotificationManagerService$PolicyAccess;

    #@42c
    move-object/from16 v20, v0

    #@42e
    move-object/from16 v0, p1

    #@430
    move-object/from16 v1, v20

    #@432
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@435
    .line 1942
    const-string/jumbo v20, "\n  Condition providers:"

    #@438
    move-object/from16 v0, p1

    #@43a
    move-object/from16 v1, v20

    #@43c
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@43f
    .line 1943
    move-object/from16 v0, p0

    #@441
    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mConditionProviders:Lcom/android/server/notification/ConditionProviders;

    #@443
    move-object/from16 v20, v0

    #@445
    move-object/from16 v0, v20

    #@447
    move-object/from16 v1, p1

    #@449
    move-object/from16 v2, p2

    #@44b
    invoke-virtual {v0, v1, v2}, Lcom/android/server/notification/ConditionProviders;->dump(Ljava/io/PrintWriter;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V

    #@44e
    .line 1945
    const-string/jumbo v20, "\n  Group summaries:"

    #@451
    move-object/from16 v0, p1

    #@453
    move-object/from16 v1, v20

    #@455
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@458
    .line 1946
    move-object/from16 v0, p0

    #@45a
    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mSummaryByGroupKey:Landroid/util/ArrayMap;

    #@45c
    move-object/from16 v20, v0

    #@45e
    invoke-virtual/range {v20 .. v20}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    #@461
    move-result-object v20

    #@462
    invoke-interface/range {v20 .. v20}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@465
    move-result-object v7

    #@466
    .local v7, "entry$iterator":Ljava/util/Iterator;
    :cond_16
    :goto_6
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    #@469
    move-result v20

    #@46a
    if-eqz v20, :cond_17

    #@46c
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@46f
    move-result-object v6

    #@470
    check-cast v6, Ljava/util/Map$Entry;

    #@472
    .line 1947
    .local v6, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/notification/NotificationRecord;>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@475
    move-result-object v15

    #@476
    check-cast v15, Lcom/android/server/notification/NotificationRecord;

    #@478
    .line 1948
    .local v15, "r":Lcom/android/server/notification/NotificationRecord;
    new-instance v20, Ljava/lang/StringBuilder;

    #@47a
    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    #@47d
    const-string/jumbo v22, "    "

    #@480
    move-object/from16 v0, v20

    #@482
    move-object/from16 v1, v22

    #@484
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@487
    move-result-object v22

    #@488
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@48b
    move-result-object v20

    #@48c
    check-cast v20, Ljava/lang/String;

    #@48e
    move-object/from16 v0, v22

    #@490
    move-object/from16 v1, v20

    #@492
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@495
    move-result-object v20

    #@496
    const-string/jumbo v22, " -> "

    #@499
    move-object/from16 v0, v20

    #@49b
    move-object/from16 v1, v22

    #@49d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a0
    move-result-object v20

    #@4a1
    invoke-virtual {v15}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    #@4a4
    move-result-object v22

    #@4a5
    move-object/from16 v0, v20

    #@4a7
    move-object/from16 v1, v22

    #@4a9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4ac
    move-result-object v20

    #@4ad
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4b0
    move-result-object v20

    #@4b1
    move-object/from16 v0, p1

    #@4b3
    move-object/from16 v1, v20

    #@4b5
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@4b8
    .line 1949
    move-object/from16 v0, p0

    #@4ba
    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    #@4bc
    move-object/from16 v20, v0

    #@4be
    invoke-virtual {v15}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    #@4c1
    move-result-object v22

    #@4c2
    move-object/from16 v0, v20

    #@4c4
    move-object/from16 v1, v22

    #@4c6
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@4c9
    move-result-object v20

    #@4ca
    move-object/from16 v0, v20

    #@4cc
    if-eq v0, v15, :cond_16

    #@4ce
    .line 1950
    const-string/jumbo v20, "!!!!!!LEAK: Record not found in mNotificationsByKey."

    #@4d1
    move-object/from16 v0, p1

    #@4d3
    move-object/from16 v1, v20

    #@4d5
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@4d8
    .line 1951
    const-string/jumbo v20, "      "

    #@4db
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    #@4de
    move-result-object v22

    #@4df
    move-object/from16 v0, p2

    #@4e1
    iget-boolean v0, v0, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->redact:Z

    #@4e3
    move/from16 v23, v0

    #@4e5
    move-object/from16 v0, p1

    #@4e7
    move-object/from16 v1, v20

    #@4e9
    move-object/from16 v2, v22

    #@4eb
    move/from16 v3, v23

    #@4ed
    invoke-virtual {v15, v0, v1, v2, v3}, Lcom/android/server/notification/NotificationRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/content/Context;Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@4f0
    goto/16 :goto_6

    #@4f2
    .line 1956
    .end local v6    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/notification/NotificationRecord;>;"
    .end local v15    # "r":Lcom/android/server/notification/NotificationRecord;
    :cond_17
    :try_start_4
    const-string/jumbo v20, "\n  Banned Packages:"

    #@4f5
    move-object/from16 v0, p1

    #@4f7
    move-object/from16 v1, v20

    #@4f9
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@4fc
    .line 1957
    move-object/from16 v0, p0

    #@4fe
    move-object/from16 v1, p2

    #@500
    invoke-direct {v0, v1}, Lcom/android/server/notification/NotificationManagerService;->getPackageBans(Lcom/android/server/notification/NotificationManagerService$DumpFilter;)Landroid/util/ArrayMap;

    #@503
    move-result-object v12

    #@504
    .line 1958
    .local v12, "packageBans":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    invoke-virtual {v12}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    #@507
    move-result-object v20

    #@508
    invoke-interface/range {v20 .. v20}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@50b
    move-result-object v18

    #@50c
    .local v18, "userId$iterator":Ljava/util/Iterator;
    :cond_18
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    #@50f
    move-result v20

    #@510
    if-eqz v20, :cond_19

    #@512
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@515
    move-result-object v17

    #@516
    check-cast v17, Ljava/lang/Integer;

    #@518
    .line 1959
    .local v17, "userId":Ljava/lang/Integer;
    move-object/from16 v0, v17

    #@51a
    invoke-virtual {v12, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@51d
    move-result-object v20

    #@51e
    check-cast v20, Ljava/util/ArrayList;

    #@520
    invoke-interface/range {v20 .. v20}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@523
    move-result-object v14

    #@524
    .local v14, "packageName$iterator":Ljava/util/Iterator;
    :goto_7
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    #@527
    move-result v20

    #@528
    if-eqz v20, :cond_18

    #@52a
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@52d
    move-result-object v13

    #@52e
    check-cast v13, Ljava/lang/String;

    #@530
    .line 1960
    .local v13, "packageName":Ljava/lang/String;
    new-instance v20, Ljava/lang/StringBuilder;

    #@532
    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    #@535
    const-string/jumbo v22, "    "

    #@538
    move-object/from16 v0, v20

    #@53a
    move-object/from16 v1, v22

    #@53c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@53f
    move-result-object v20

    #@540
    move-object/from16 v0, v20

    #@542
    move-object/from16 v1, v17

    #@544
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@547
    move-result-object v20

    #@548
    const-string/jumbo v22, ": "

    #@54b
    move-object/from16 v0, v20

    #@54d
    move-object/from16 v1, v22

    #@54f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@552
    move-result-object v20

    #@553
    move-object/from16 v0, v20

    #@555
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@558
    move-result-object v20

    #@559
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@55c
    move-result-object v20

    #@55d
    move-object/from16 v0, p1

    #@55f
    move-object/from16 v1, v20

    #@561
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@564
    goto :goto_7

    #@565
    .line 1963
    .end local v12    # "packageBans":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .end local v13    # "packageName":Ljava/lang/String;
    .end local v14    # "packageName$iterator":Ljava/util/Iterator;
    .end local v17    # "userId":Ljava/lang/Integer;
    .end local v18    # "userId$iterator":Ljava/util/Iterator;
    :catch_0
    move-exception v5

    #@566
    :cond_19
    monitor-exit v21

    #@567
    .line 1838
    return-void
.end method

.method enqueueNotificationInternal(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ILandroid/app/Notification;[II)V
    .locals 19
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "opPkg"    # Ljava/lang/String;
    .param p3, "callingUid"    # I
    .param p4, "callingPid"    # I
    .param p5, "tag"    # Ljava/lang/String;
    .param p6, "id"    # I
    .param p7, "notification"    # Landroid/app/Notification;
    .param p8, "idOut"    # [I
    .param p9, "incomingUserId"    # I

    #@0
    .prologue
    .line 2034
    sget-boolean v1, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 2035
    const-string/jumbo v1, "NotificationService"

    #@7
    new-instance v2, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    const-string/jumbo v3, "enqueueNotificationInternal: pkg="

    #@f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v2

    #@13
    move-object/from16 v0, p1

    #@15
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v2

    #@19
    const-string/jumbo v3, " id="

    #@1c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v2

    #@20
    move/from16 v0, p6

    #@22
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@25
    move-result-object v2

    #@26
    .line 2036
    const-string/jumbo v3, " notification="

    #@29
    .line 2035
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v2

    #@2d
    move-object/from16 v0, p7

    #@2f
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v2

    #@33
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@36
    move-result-object v2

    #@37
    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@3a
    .line 2038
    :cond_0
    invoke-static/range {p1 .. p1}, Lcom/android/server/notification/NotificationManagerService;->checkCallerIsSystemOrSameApp(Ljava/lang/String;)V

    #@3d
    .line 2039
    invoke-static/range {p3 .. p3}, Lcom/android/server/notification/NotificationManagerService;->isUidSystem(I)Z

    #@40
    move-result v1

    #@41
    if-nez v1, :cond_3

    #@43
    const-string/jumbo v1, "android"

    #@46
    move-object/from16 v0, p1

    #@48
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@4b
    move-result v12

    #@4c
    .line 2040
    :goto_0
    move-object/from16 v0, p0

    #@4e
    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    #@50
    move-object/from16 v0, p1

    #@52
    invoke-static {v1, v0}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->-wrap0(Lcom/android/server/notification/NotificationManagerService$NotificationListeners;Ljava/lang/String;)Z

    #@55
    move-result v16

    #@56
    .line 2043
    .local v16, "isNotificationFromListener":Z
    const-string/jumbo v6, "enqueueNotification"

    #@59
    const/4 v4, 0x1

    #@5a
    const/4 v5, 0x0

    #@5b
    move/from16 v1, p4

    #@5d
    move/from16 v2, p3

    #@5f
    move/from16 v3, p9

    #@61
    move-object/from16 v7, p1

    #@63
    .line 2042
    invoke-static/range {v1 .. v7}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    #@66
    move-result v11

    #@67
    .line 2044
    .local v11, "userId":I
    new-instance v10, Landroid/os/UserHandle;

    #@69
    invoke-direct {v10, v11}, Landroid/os/UserHandle;-><init>(I)V

    #@6c
    .line 2048
    .local v10, "user":Landroid/os/UserHandle;
    if-nez v12, :cond_1

    #@6e
    if-eqz v16, :cond_4

    #@70
    .line 2069
    :cond_1
    :goto_1
    if-eqz p1, :cond_2

    #@72
    if-nez p7, :cond_8

    #@74
    .line 2070
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@76
    new-instance v2, Ljava/lang/StringBuilder;

    #@78
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@7b
    const-string/jumbo v3, "null not allowed: pkg="

    #@7e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@81
    move-result-object v2

    #@82
    move-object/from16 v0, p1

    #@84
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@87
    move-result-object v2

    #@88
    .line 2071
    const-string/jumbo v3, " id="

    #@8b
    .line 2070
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8e
    move-result-object v2

    #@8f
    move/from16 v0, p6

    #@91
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@94
    move-result-object v2

    #@95
    .line 2071
    const-string/jumbo v3, " notification="

    #@98
    .line 2070
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9b
    move-result-object v2

    #@9c
    move-object/from16 v0, p7

    #@9e
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@a1
    move-result-object v2

    #@a2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a5
    move-result-object v2

    #@a6
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a9
    throw v1

    #@aa
    .line 2039
    .end local v10    # "user":Landroid/os/UserHandle;
    .end local v11    # "userId":I
    .end local v16    # "isNotificationFromListener":Z
    :cond_3
    const/4 v12, 0x1

    #@ab
    .local v12, "isSystemNotification":Z
    goto :goto_0

    #@ac
    .line 2049
    .end local v12    # "isSystemNotification":Z
    .restart local v10    # "user":Landroid/os/UserHandle;
    .restart local v11    # "userId":I
    .restart local v16    # "isNotificationFromListener":Z
    :cond_4
    move-object/from16 v0, p0

    #@ae
    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    #@b0
    monitor-enter v2

    #@b1
    .line 2050
    const/4 v14, 0x0

    #@b2
    .line 2051
    .local v14, "count":I
    :try_start_0
    move-object/from16 v0, p0

    #@b4
    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    #@b6
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@b9
    move-result v13

    #@ba
    .line 2052
    .local v13, "N":I
    const/4 v15, 0x0

    #@bb
    .local v15, "i":I
    :goto_2
    if-ge v15, v13, :cond_5

    #@bd
    .line 2053
    move-object/from16 v0, p0

    #@bf
    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    #@c1
    invoke-virtual {v1, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@c4
    move-result-object v17

    #@c5
    check-cast v17, Lcom/android/server/notification/NotificationRecord;

    #@c7
    .line 2054
    .local v17, "r":Lcom/android/server/notification/NotificationRecord;
    move-object/from16 v0, v17

    #@c9
    iget-object v1, v0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    #@cb
    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    #@ce
    move-result-object v1

    #@cf
    move-object/from16 v0, p1

    #@d1
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@d4
    move-result v1

    #@d5
    if-eqz v1, :cond_7

    #@d7
    move-object/from16 v0, v17

    #@d9
    iget-object v1, v0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    #@db
    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    #@de
    move-result v1

    #@df
    if-ne v1, v11, :cond_7

    #@e1
    .line 2055
    move-object/from16 v0, v17

    #@e3
    iget-object v1, v0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    #@e5
    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getId()I

    #@e8
    move-result v1

    #@e9
    move/from16 v0, p6

    #@eb
    if-ne v1, v0, :cond_6

    #@ed
    move-object/from16 v0, v17

    #@ef
    iget-object v1, v0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    #@f1
    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    #@f4
    move-result-object v1

    #@f5
    move-object/from16 v0, p5

    #@f7
    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@fa
    move-result v1

    #@fb
    if-eqz v1, :cond_6

    #@fd
    .end local v17    # "r":Lcom/android/server/notification/NotificationRecord;
    :cond_5
    monitor-exit v2

    #@fe
    goto/16 :goto_1

    #@100
    .line 2058
    .restart local v17    # "r":Lcom/android/server/notification/NotificationRecord;
    :cond_6
    add-int/lit8 v14, v14, 0x1

    #@102
    .line 2059
    const/16 v1, 0x32

    #@104
    if-lt v14, v1, :cond_7

    #@106
    .line 2060
    :try_start_1
    const-string/jumbo v1, "NotificationService"

    #@109
    new-instance v3, Ljava/lang/StringBuilder;

    #@10b
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@10e
    const-string/jumbo v4, "Package has already posted "

    #@111
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@114
    move-result-object v3

    #@115
    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@118
    move-result-object v3

    #@119
    .line 2061
    const-string/jumbo v4, " notifications.  Not showing more.  package="

    #@11c
    .line 2060
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11f
    move-result-object v3

    #@120
    move-object/from16 v0, p1

    #@122
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@125
    move-result-object v3

    #@126
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@129
    move-result-object v3

    #@12a
    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@12d
    monitor-exit v2

    #@12e
    .line 2062
    return-void

    #@12f
    .line 2052
    :cond_7
    add-int/lit8 v15, v15, 0x1

    #@131
    goto :goto_2

    #@132
    .line 2049
    .end local v13    # "N":I
    .end local v15    # "i":I
    .end local v17    # "r":Lcom/android/server/notification/NotificationRecord;
    :catchall_0
    move-exception v1

    #@133
    monitor-exit v2

    #@134
    throw v1

    #@135
    .line 2074
    .end local v14    # "count":I
    :cond_8
    invoke-virtual/range {p7 .. p7}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    #@138
    move-result-object v1

    #@139
    if-eqz v1, :cond_9

    #@13b
    .line 2075
    invoke-virtual/range {p7 .. p7}, Landroid/app/Notification;->isValid()Z

    #@13e
    move-result v1

    #@13f
    if-nez v1, :cond_9

    #@141
    .line 2076
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@143
    new-instance v2, Ljava/lang/StringBuilder;

    #@145
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@148
    const-string/jumbo v3, "Invalid notification (): pkg="

    #@14b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14e
    move-result-object v2

    #@14f
    move-object/from16 v0, p1

    #@151
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@154
    move-result-object v2

    #@155
    .line 2077
    const-string/jumbo v3, " id="

    #@158
    .line 2076
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15b
    move-result-object v2

    #@15c
    move/from16 v0, p6

    #@15e
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@161
    move-result-object v2

    #@162
    .line 2077
    const-string/jumbo v3, " notification="

    #@165
    .line 2076
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@168
    move-result-object v2

    #@169
    move-object/from16 v0, p7

    #@16b
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@16e
    move-result-object v2

    #@16f
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@172
    move-result-object v2

    #@173
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@176
    throw v1

    #@177
    .line 2081
    :cond_9
    move-object/from16 v0, p0

    #@179
    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    #@17b
    move-object/from16 v18, v0

    #@17d
    new-instance v1, Lcom/android/server/notification/NotificationManagerService$8;

    #@17f
    move-object/from16 v2, p0

    #@181
    move-object/from16 v3, p7

    #@183
    move-object/from16 v4, p1

    #@185
    move/from16 v5, p3

    #@187
    move-object/from16 v6, p2

    #@189
    move/from16 v7, p6

    #@18b
    move-object/from16 v8, p5

    #@18d
    move/from16 v9, p4

    #@18f
    invoke-direct/range {v1 .. v12}, Lcom/android/server/notification/NotificationManagerService$8;-><init>(Lcom/android/server/notification/NotificationManagerService;Landroid/app/Notification;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;ILandroid/os/UserHandle;IZ)V

    #@192
    move-object/from16 v0, v18

    #@194
    invoke-virtual {v0, v1}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->post(Ljava/lang/Runnable;)Z

    #@197
    .line 2216
    const/4 v1, 0x0

    #@198
    aput p6, p8, v1

    #@19a
    .line 2033
    return-void
.end method

.method indexOfNotificationLocked(Ljava/lang/String;)I
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    #@0
    .prologue
    .line 3098
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@5
    move-result v0

    #@6
    .line 3099
    .local v0, "N":I
    const/4 v1, 0x0

    #@7
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    #@9
    .line 3100
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    #@b
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@e
    move-result-object v2

    #@f
    check-cast v2, Lcom/android/server/notification/NotificationRecord;

    #@11
    invoke-virtual {v2}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    #@14
    move-result-object v2

    #@15
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@18
    move-result v2

    #@19
    if-eqz v2, :cond_0

    #@1b
    .line 3101
    return v1

    #@1c
    .line 3099
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@1e
    goto :goto_0

    #@1f
    .line 3104
    :cond_1
    const/4 v2, -0x1

    #@20
    return v2
.end method

.method indexOfNotificationLocked(Ljava/lang/String;Ljava/lang/String;II)I
    .locals 5
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "id"    # I
    .param p4, "userId"    # I

    #@0
    .prologue
    .line 3084
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    #@2
    .line 3085
    .local v2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/notification/NotificationRecord;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@5
    move-result v1

    #@6
    .line 3086
    .local v1, "len":I
    const/4 v0, 0x0

    #@7
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    #@9
    .line 3087
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@c
    move-result-object v3

    #@d
    check-cast v3, Lcom/android/server/notification/NotificationRecord;

    #@f
    .line 3088
    .local v3, "r":Lcom/android/server/notification/NotificationRecord;
    invoke-direct {p0, v3, p4}, Lcom/android/server/notification/NotificationManagerService;->notificationMatchesUserId(Lcom/android/server/notification/NotificationRecord;I)Z

    #@12
    move-result v4

    #@13
    if-eqz v4, :cond_0

    #@15
    iget-object v4, v3, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    #@17
    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getId()I

    #@1a
    move-result v4

    #@1b
    if-ne v4, p3, :cond_0

    #@1d
    .line 3089
    iget-object v4, v3, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    #@1f
    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    #@22
    move-result-object v4

    #@23
    invoke-static {v4, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    #@26
    move-result v4

    #@27
    .line 3088
    if-eqz v4, :cond_0

    #@29
    .line 3089
    iget-object v4, v3, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    #@2b
    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    #@2e
    move-result-object v4

    #@2f
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@32
    move-result v4

    #@33
    .line 3088
    if-eqz v4, :cond_0

    #@35
    .line 3090
    return v0

    #@36
    .line 3086
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@38
    goto :goto_0

    #@39
    .line 3093
    .end local v3    # "r":Lcom/android/server/notification/NotificationRecord;
    :cond_1
    const/4 v4, -0x1

    #@3a
    return v4
.end method

.method indexOfToastLocked(Ljava/lang/String;Landroid/app/ITransientNotification;)I
    .locals 6
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "callback"    # Landroid/app/ITransientNotification;

    #@0
    .prologue
    .line 2561
    invoke-interface {p2}, Landroid/app/ITransientNotification;->asBinder()Landroid/os/IBinder;

    #@3
    move-result-object v0

    #@4
    .line 2562
    .local v0, "cbak":Landroid/os/IBinder;
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    #@6
    .line 2563
    .local v3, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/notification/NotificationManagerService$ToastRecord;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@9
    move-result v2

    #@a
    .line 2564
    .local v2, "len":I
    const/4 v1, 0x0

    #@b
    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    #@d
    .line 2565
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@10
    move-result-object v4

    #@11
    check-cast v4, Lcom/android/server/notification/NotificationManagerService$ToastRecord;

    #@13
    .line 2566
    .local v4, "r":Lcom/android/server/notification/NotificationManagerService$ToastRecord;
    iget-object v5, v4, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->pkg:Ljava/lang/String;

    #@15
    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@18
    move-result v5

    #@19
    if-eqz v5, :cond_0

    #@1b
    iget-object v5, v4, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->callback:Landroid/app/ITransientNotification;

    #@1d
    invoke-interface {v5}, Landroid/app/ITransientNotification;->asBinder()Landroid/os/IBinder;

    #@20
    move-result-object v5

    #@21
    if-ne v5, v0, :cond_0

    #@23
    .line 2567
    return v1

    #@24
    .line 2564
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@26
    goto :goto_0

    #@27
    .line 2570
    .end local v4    # "r":Lcom/android/server/notification/NotificationManagerService$ToastRecord;
    :cond_1
    const/4 v5, -0x1

    #@28
    return v5
.end method

.method keepProcessAliveLocked(I)V
    .locals 9
    .param p1, "pid"    # I

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 2576
    const/4 v5, 0x0

    #@2
    .line 2577
    .local v5, "toastCount":I
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    #@4
    .line 2578
    .local v3, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/notification/NotificationManagerService$ToastRecord;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@7
    move-result v0

    #@8
    .line 2579
    .local v0, "N":I
    const/4 v2, 0x0

    #@9
    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    #@b
    .line 2580
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@e
    move-result-object v4

    #@f
    check-cast v4, Lcom/android/server/notification/NotificationManagerService$ToastRecord;

    #@11
    .line 2581
    .local v4, "r":Lcom/android/server/notification/NotificationManagerService$ToastRecord;
    iget v7, v4, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->pid:I

    #@13
    if-ne v7, p1, :cond_0

    #@15
    .line 2582
    add-int/lit8 v5, v5, 0x1

    #@17
    .line 2579
    :cond_0
    add-int/lit8 v2, v2, 0x1

    #@19
    goto :goto_0

    #@1a
    .line 2586
    .end local v4    # "r":Lcom/android/server/notification/NotificationManagerService$ToastRecord;
    :cond_1
    :try_start_0
    iget-object v7, p0, Lcom/android/server/notification/NotificationManagerService;->mAm:Landroid/app/IActivityManager;

    #@1c
    iget-object v8, p0, Lcom/android/server/notification/NotificationManagerService;->mForegroundToken:Landroid/os/IBinder;

    #@1e
    if-lez v5, :cond_2

    #@20
    const/4 v6, 0x1

    #@21
    :cond_2
    invoke-interface {v7, v8, p1, v6}, Landroid/app/IActivityManager;->setProcessForeground(Landroid/os/IBinder;IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@24
    .line 2574
    :goto_1
    return-void

    #@25
    .line 2587
    :catch_0
    move-exception v1

    #@26
    .local v1, "e":Landroid/os/RemoteException;
    goto :goto_1
.end method

.method public onBootPhase(I)V
    .locals 2
    .param p1, "phase"    # I

    #@0
    .prologue
    .line 1006
    const/16 v0, 0x1f4

    #@2
    if-ne p1, v0, :cond_1

    #@4
    .line 1008
    const/4 v0, 0x1

    #@5
    iput-boolean v0, p0, Lcom/android/server/notification/NotificationManagerService;->mSystemReady:Z

    #@7
    .line 1011
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    #@a
    move-result-object v0

    #@b
    const-string/jumbo v1, "audio"

    #@e
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@11
    move-result-object v0

    #@12
    check-cast v0, Landroid/media/AudioManager;

    #@14
    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mAudioManager:Landroid/media/AudioManager;

    #@16
    .line 1012
    const-class v0, Landroid/media/AudioManagerInternal;

    #@18
    invoke-virtual {p0, v0}, Lcom/android/server/notification/NotificationManagerService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    #@1b
    move-result-object v0

    #@1c
    check-cast v0, Landroid/media/AudioManagerInternal;

    #@1e
    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mAudioManagerInternal:Landroid/media/AudioManagerInternal;

    #@20
    .line 1013
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    #@22
    invoke-virtual {v0}, Lcom/android/server/notification/ZenModeHelper;->onSystemReady()V

    #@25
    .line 1005
    :cond_0
    :goto_0
    return-void

    #@26
    .line 1014
    :cond_1
    const/16 v0, 0x258

    #@28
    if-ne p1, v0, :cond_0

    #@2a
    .line 1017
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mSettingsObserver:Lcom/android/server/notification/NotificationManagerService$SettingsObserver;

    #@2c
    invoke-virtual {v0}, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->observe()V

    #@2f
    .line 1018
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    #@31
    invoke-virtual {v0}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->onBootPhaseAppsCanStart()V

    #@34
    .line 1019
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mConditionProviders:Lcom/android/server/notification/ConditionProviders;

    #@36
    invoke-virtual {v0}, Lcom/android/server/notification/ConditionProviders;->onBootPhaseAppsCanStart()V

    #@39
    goto :goto_0
.end method

.method public onStart()V
    .locals 17

    #@0
    .prologue
    .line 858
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    #@3
    move-result-object v1

    #@4
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@7
    move-result-object v15

    #@8
    .line 860
    .local v15, "resources":Landroid/content/res/Resources;
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@b
    move-result-object v1

    #@c
    move-object/from16 v0, p0

    #@e
    iput-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mAm:Landroid/app/IActivityManager;

    #@10
    .line 861
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    #@13
    move-result-object v1

    #@14
    const-string/jumbo v2, "appops"

    #@17
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@1a
    move-result-object v1

    #@1b
    check-cast v1, Landroid/app/AppOpsManager;

    #@1d
    move-object/from16 v0, p0

    #@1f
    iput-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mAppOps:Landroid/app/AppOpsManager;

    #@21
    .line 862
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    #@24
    move-result-object v1

    #@25
    const-string/jumbo v2, "vibrator"

    #@28
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@2b
    move-result-object v1

    #@2c
    check-cast v1, Landroid/os/Vibrator;

    #@2e
    move-object/from16 v0, p0

    #@30
    iput-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mVibrator:Landroid/os/Vibrator;

    #@32
    .line 863
    const-class v1, Landroid/app/usage/UsageStatsManagerInternal;

    #@34
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    #@37
    move-result-object v1

    #@38
    check-cast v1, Landroid/app/usage/UsageStatsManagerInternal;

    #@3a
    move-object/from16 v0, p0

    #@3c
    iput-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mAppUsageStats:Landroid/app/usage/UsageStatsManagerInternal;

    #@3e
    .line 865
    new-instance v1, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    #@40
    const/4 v2, 0x0

    #@41
    move-object/from16 v0, p0

    #@43
    invoke-direct {v1, v0, v2}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;-><init>(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationManagerService$WorkerHandler;)V

    #@46
    move-object/from16 v0, p0

    #@48
    iput-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    #@4a
    .line 866
    move-object/from16 v0, p0

    #@4c
    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mRankingThread:Landroid/os/HandlerThread;

    #@4e
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    #@51
    .line 869
    const v1, 0x1070035

    #@54
    :try_start_0
    invoke-virtual {v15, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@57
    move-result-object v12

    #@58
    .line 873
    .local v12, "extractorNames":[Ljava/lang/String;
    :goto_0
    new-instance v1, Lcom/android/server/notification/NotificationUsageStats;

    #@5a
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    #@5d
    move-result-object v2

    #@5e
    invoke-direct {v1, v2}, Lcom/android/server/notification/NotificationUsageStats;-><init>(Landroid/content/Context;)V

    #@61
    move-object/from16 v0, p0

    #@63
    iput-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mUsageStats:Lcom/android/server/notification/NotificationUsageStats;

    #@65
    .line 874
    new-instance v1, Lcom/android/server/notification/RankingHelper;

    #@67
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    #@6a
    move-result-object v2

    #@6b
    .line 875
    new-instance v3, Lcom/android/server/notification/NotificationManagerService$RankingWorkerHandler;

    #@6d
    move-object/from16 v0, p0

    #@6f
    iget-object v5, v0, Lcom/android/server/notification/NotificationManagerService;->mRankingThread:Landroid/os/HandlerThread;

    #@71
    invoke-virtual {v5}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    #@74
    move-result-object v5

    #@75
    move-object/from16 v0, p0

    #@77
    invoke-direct {v3, v0, v5}, Lcom/android/server/notification/NotificationManagerService$RankingWorkerHandler;-><init>(Lcom/android/server/notification/NotificationManagerService;Landroid/os/Looper;)V

    #@7a
    .line 876
    move-object/from16 v0, p0

    #@7c
    iget-object v5, v0, Lcom/android/server/notification/NotificationManagerService;->mUsageStats:Lcom/android/server/notification/NotificationUsageStats;

    #@7e
    .line 874
    invoke-direct {v1, v2, v3, v5, v12}, Lcom/android/server/notification/RankingHelper;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/notification/NotificationUsageStats;[Ljava/lang/String;)V

    #@81
    move-object/from16 v0, p0

    #@83
    iput-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mRankingHelper:Lcom/android/server/notification/RankingHelper;

    #@85
    .line 878
    new-instance v1, Lcom/android/server/notification/ConditionProviders;

    #@87
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    #@8a
    move-result-object v2

    #@8b
    move-object/from16 v0, p0

    #@8d
    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    #@8f
    move-object/from16 v0, p0

    #@91
    iget-object v5, v0, Lcom/android/server/notification/NotificationManagerService;->mUserProfiles:Lcom/android/server/notification/ManagedServices$UserProfiles;

    #@93
    invoke-direct {v1, v2, v3, v5}, Lcom/android/server/notification/ConditionProviders;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/notification/ManagedServices$UserProfiles;)V

    #@96
    move-object/from16 v0, p0

    #@98
    iput-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mConditionProviders:Lcom/android/server/notification/ConditionProviders;

    #@9a
    .line 879
    new-instance v1, Lcom/android/server/notification/ZenModeHelper;

    #@9c
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    #@9f
    move-result-object v2

    #@a0
    move-object/from16 v0, p0

    #@a2
    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    #@a4
    invoke-virtual {v3}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->getLooper()Landroid/os/Looper;

    #@a7
    move-result-object v3

    #@a8
    move-object/from16 v0, p0

    #@aa
    iget-object v5, v0, Lcom/android/server/notification/NotificationManagerService;->mConditionProviders:Lcom/android/server/notification/ConditionProviders;

    #@ac
    invoke-direct {v1, v2, v3, v5}, Lcom/android/server/notification/ZenModeHelper;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/notification/ConditionProviders;)V

    #@af
    move-object/from16 v0, p0

    #@b1
    iput-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    #@b3
    .line 880
    move-object/from16 v0, p0

    #@b5
    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    #@b7
    new-instance v2, Lcom/android/server/notification/NotificationManagerService$7;

    #@b9
    move-object/from16 v0, p0

    #@bb
    invoke-direct {v2, v0}, Lcom/android/server/notification/NotificationManagerService$7;-><init>(Lcom/android/server/notification/NotificationManagerService;)V

    #@be
    invoke-virtual {v1, v2}, Lcom/android/server/notification/ZenModeHelper;->addCallback(Lcom/android/server/notification/ZenModeHelper$Callback;)V

    #@c1
    .line 899
    new-instance v16, Ljava/io/File;

    #@c3
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    #@c6
    move-result-object v1

    #@c7
    const-string/jumbo v2, "system"

    #@ca
    move-object/from16 v0, v16

    #@cc
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@cf
    .line 900
    .local v16, "systemDir":Ljava/io/File;
    new-instance v1, Landroid/util/AtomicFile;

    #@d1
    new-instance v2, Ljava/io/File;

    #@d3
    const-string/jumbo v3, "notification_policy.xml"

    #@d6
    move-object/from16 v0, v16

    #@d8
    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@db
    invoke-direct {v1, v2}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    #@de
    move-object/from16 v0, p0

    #@e0
    iput-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mPolicyFile:Landroid/util/AtomicFile;

    #@e2
    .line 902
    invoke-direct/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->importOldBlockDb()V

    #@e5
    .line 904
    new-instance v1, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    #@e7
    move-object/from16 v0, p0

    #@e9
    invoke-direct {v1, v0}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;-><init>(Lcom/android/server/notification/NotificationManagerService;)V

    #@ec
    move-object/from16 v0, p0

    #@ee
    iput-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    #@f0
    .line 905
    const-class v1, Lcom/android/server/statusbar/StatusBarManagerInternal;

    #@f2
    move-object/from16 v0, p0

    #@f4
    invoke-virtual {v0, v1}, Lcom/android/server/notification/NotificationManagerService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    #@f7
    move-result-object v1

    #@f8
    check-cast v1, Lcom/android/server/statusbar/StatusBarManagerInternal;

    #@fa
    move-object/from16 v0, p0

    #@fc
    iput-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mStatusBar:Lcom/android/server/statusbar/StatusBarManagerInternal;

    #@fe
    .line 906
    move-object/from16 v0, p0

    #@100
    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mStatusBar:Lcom/android/server/statusbar/StatusBarManagerInternal;

    #@102
    move-object/from16 v0, p0

    #@104
    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationDelegate:Lcom/android/server/notification/NotificationDelegate;

    #@106
    invoke-interface {v1, v2}, Lcom/android/server/statusbar/StatusBarManagerInternal;->setNotificationDelegate(Lcom/android/server/notification/NotificationDelegate;)V

    #@109
    .line 908
    const-class v1, Lcom/android/server/lights/LightsManager;

    #@10b
    move-object/from16 v0, p0

    #@10d
    invoke-virtual {v0, v1}, Lcom/android/server/notification/NotificationManagerService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    #@110
    move-result-object v14

    #@111
    check-cast v14, Lcom/android/server/lights/LightsManager;

    #@113
    .line 909
    .local v14, "lights":Lcom/android/server/lights/LightsManager;
    const/4 v1, 0x4

    #@114
    invoke-virtual {v14, v1}, Lcom/android/server/lights/LightsManager;->getLight(I)Lcom/android/server/lights/Light;

    #@117
    move-result-object v1

    #@118
    move-object/from16 v0, p0

    #@11a
    iput-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLight:Lcom/android/server/lights/Light;

    #@11c
    .line 910
    const/4 v1, 0x5

    #@11d
    invoke-virtual {v14, v1}, Lcom/android/server/lights/LightsManager;->getLight(I)Lcom/android/server/lights/Light;

    #@120
    move-result-object v1

    #@121
    move-object/from16 v0, p0

    #@123
    iput-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mAttentionLight:Lcom/android/server/lights/Light;

    #@125
    .line 913
    const v1, 0x10600ed

    #@128
    .line 912
    invoke-virtual {v15, v1}, Landroid/content/res/Resources;->getColor(I)I

    #@12b
    move-result v1

    #@12c
    move-object/from16 v0, p0

    #@12e
    iput v1, v0, Lcom/android/server/notification/NotificationManagerService;->mDefaultNotificationColor:I

    #@130
    .line 915
    const v1, 0x10e0051

    #@133
    .line 914
    invoke-virtual {v15, v1}, Landroid/content/res/Resources;->getInteger(I)I

    #@136
    move-result v1

    #@137
    move-object/from16 v0, p0

    #@139
    iput v1, v0, Lcom/android/server/notification/NotificationManagerService;->mDefaultNotificationLedOn:I

    #@13b
    .line 917
    const v1, 0x10e0052

    #@13e
    .line 916
    invoke-virtual {v15, v1}, Landroid/content/res/Resources;->getInteger(I)I

    #@141
    move-result v1

    #@142
    move-object/from16 v0, p0

    #@144
    iput v1, v0, Lcom/android/server/notification/NotificationManagerService;->mDefaultNotificationLedOff:I

    #@146
    .line 922
    sget-object v1, Lcom/android/server/notification/NotificationManagerService;->DEFAULT_VIBRATE_PATTERN:[J

    #@148
    .line 920
    const v2, 0x1070031

    #@14b
    .line 921
    const/16 v3, 0x11

    #@14d
    .line 919
    invoke-static {v15, v2, v3, v1}, Lcom/android/server/notification/NotificationManagerService;->getLongArray(Landroid/content/res/Resources;II[J)[J

    #@150
    move-result-object v1

    #@151
    move-object/from16 v0, p0

    #@153
    iput-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mDefaultVibrationPattern:[J

    #@155
    .line 927
    sget-object v1, Lcom/android/server/notification/NotificationManagerService;->DEFAULT_VIBRATE_PATTERN:[J

    #@157
    .line 925
    const v2, 0x1070032

    #@15a
    .line 926
    const/16 v3, 0x11

    #@15c
    .line 924
    invoke-static {v15, v2, v3, v1}, Lcom/android/server/notification/NotificationManagerService;->getLongArray(Landroid/content/res/Resources;II[J)[J

    #@15f
    move-result-object v1

    #@160
    move-object/from16 v0, p0

    #@162
    iput-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mFallbackVibrationPattern:[J

    #@164
    .line 929
    const v1, 0x1120024

    #@167
    invoke-virtual {v15, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    #@16a
    move-result v1

    #@16b
    move-object/from16 v0, p0

    #@16d
    iput-boolean v1, v0, Lcom/android/server/notification/NotificationManagerService;->mUseAttentionLight:Z

    #@16f
    .line 935
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    #@172
    move-result-object v1

    #@173
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@176
    move-result-object v1

    #@177
    .line 936
    const-string/jumbo v2, "device_provisioned"

    #@17a
    const/4 v3, 0x0

    #@17b
    .line 935
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    #@17e
    move-result v1

    #@17f
    if-nez v1, :cond_0

    #@181
    .line 937
    const/4 v1, 0x1

    #@182
    move-object/from16 v0, p0

    #@184
    iput-boolean v1, v0, Lcom/android/server/notification/NotificationManagerService;->mDisableNotificationEffects:Z

    #@186
    .line 939
    :cond_0
    move-object/from16 v0, p0

    #@188
    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    #@18a
    invoke-virtual {v1}, Lcom/android/server/notification/ZenModeHelper;->initZenMode()V

    #@18d
    .line 940
    move-object/from16 v0, p0

    #@18f
    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    #@191
    invoke-virtual {v1}, Lcom/android/server/notification/ZenModeHelper;->getZenModeListenerInterruptionFilter()I

    #@194
    move-result v1

    #@195
    move-object/from16 v0, p0

    #@197
    iput v1, v0, Lcom/android/server/notification/NotificationManagerService;->mInterruptionFilter:I

    #@199
    .line 942
    move-object/from16 v0, p0

    #@19b
    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mUserProfiles:Lcom/android/server/notification/ManagedServices$UserProfiles;

    #@19d
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    #@1a0
    move-result-object v2

    #@1a1
    invoke-virtual {v1, v2}, Lcom/android/server/notification/ManagedServices$UserProfiles;->updateCache(Landroid/content/Context;)V

    #@1a4
    .line 943
    invoke-direct/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->listenForCallState()V

    #@1a7
    .line 946
    new-instance v13, Landroid/content/IntentFilter;

    #@1a9
    invoke-direct {v13}, Landroid/content/IntentFilter;-><init>()V

    #@1ac
    .line 947
    .local v13, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.intent.action.SCREEN_ON"

    #@1af
    invoke-virtual {v13, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@1b2
    .line 948
    const-string/jumbo v1, "android.intent.action.SCREEN_OFF"

    #@1b5
    invoke-virtual {v13, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@1b8
    .line 949
    const-string/jumbo v1, "android.intent.action.PHONE_STATE"

    #@1bb
    invoke-virtual {v13, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@1be
    .line 950
    const-string/jumbo v1, "android.intent.action.USER_PRESENT"

    #@1c1
    invoke-virtual {v13, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@1c4
    .line 951
    const-string/jumbo v1, "android.intent.action.USER_STOPPED"

    #@1c7
    invoke-virtual {v13, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@1ca
    .line 952
    const-string/jumbo v1, "android.intent.action.USER_SWITCHED"

    #@1cd
    invoke-virtual {v13, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@1d0
    .line 953
    const-string/jumbo v1, "android.intent.action.USER_ADDED"

    #@1d3
    invoke-virtual {v13, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@1d6
    .line 954
    const-string/jumbo v1, "android.intent.action.USER_REMOVED"

    #@1d9
    invoke-virtual {v13, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@1dc
    .line 955
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    #@1df
    move-result-object v1

    #@1e0
    move-object/from16 v0, p0

    #@1e2
    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    #@1e4
    invoke-virtual {v1, v2, v13}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    #@1e7
    .line 957
    new-instance v4, Landroid/content/IntentFilter;

    #@1e9
    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    #@1ec
    .line 958
    .local v4, "pkgFilter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.intent.action.PACKAGE_ADDED"

    #@1ef
    invoke-virtual {v4, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@1f2
    .line 959
    const-string/jumbo v1, "android.intent.action.PACKAGE_REMOVED"

    #@1f5
    invoke-virtual {v4, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@1f8
    .line 960
    const-string/jumbo v1, "android.intent.action.PACKAGE_CHANGED"

    #@1fb
    invoke-virtual {v4, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@1fe
    .line 961
    const-string/jumbo v1, "android.intent.action.PACKAGE_RESTARTED"

    #@201
    invoke-virtual {v4, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@204
    .line 962
    const-string/jumbo v1, "android.intent.action.QUERY_PACKAGE_RESTART"

    #@207
    invoke-virtual {v4, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@20a
    .line 963
    const-string/jumbo v1, "package"

    #@20d
    invoke-virtual {v4, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    #@210
    .line 964
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    #@213
    move-result-object v1

    #@214
    move-object/from16 v0, p0

    #@216
    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService;->mPackageIntentReceiver:Landroid/content/BroadcastReceiver;

    #@218
    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    #@21a
    const/4 v5, 0x0

    #@21b
    .line 965
    const/4 v6, 0x0

    #@21c
    .line 964
    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    #@21f
    .line 967
    new-instance v8, Landroid/content/IntentFilter;

    #@221
    const-string/jumbo v1, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    #@224
    invoke-direct {v8, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    #@227
    .line 968
    .local v8, "sdFilter":Landroid/content/IntentFilter;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    #@22a
    move-result-object v5

    #@22b
    move-object/from16 v0, p0

    #@22d
    iget-object v6, v0, Lcom/android/server/notification/NotificationManagerService;->mPackageIntentReceiver:Landroid/content/BroadcastReceiver;

    #@22f
    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    #@231
    const/4 v9, 0x0

    #@232
    .line 969
    const/4 v10, 0x0

    #@233
    .line 968
    invoke-virtual/range {v5 .. v10}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    #@236
    .line 971
    new-instance v1, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;

    #@238
    move-object/from16 v0, p0

    #@23a
    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    #@23c
    move-object/from16 v0, p0

    #@23e
    invoke-direct {v1, v0, v2}, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;-><init>(Lcom/android/server/notification/NotificationManagerService;Landroid/os/Handler;)V

    #@241
    move-object/from16 v0, p0

    #@243
    iput-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mSettingsObserver:Lcom/android/server/notification/NotificationManagerService$SettingsObserver;

    #@245
    .line 973
    new-instance v1, Lcom/android/server/notification/NotificationManagerService$Archive;

    #@247
    .line 974
    const v2, 0x10e0058

    #@24a
    .line 973
    invoke-virtual {v15, v2}, Landroid/content/res/Resources;->getInteger(I)I

    #@24d
    move-result v2

    #@24e
    invoke-direct {v1, v2}, Lcom/android/server/notification/NotificationManagerService$Archive;-><init>(I)V

    #@251
    move-object/from16 v0, p0

    #@253
    iput-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mArchive:Lcom/android/server/notification/NotificationManagerService$Archive;

    #@255
    .line 976
    const-string/jumbo v1, "notification"

    #@258
    move-object/from16 v0, p0

    #@25a
    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService;->mService:Landroid/os/IBinder;

    #@25c
    move-object/from16 v0, p0

    #@25e
    invoke-virtual {v0, v1, v2}, Lcom/android/server/notification/NotificationManagerService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    #@261
    .line 977
    const-class v1, Lcom/android/server/notification/NotificationManagerInternal;

    #@263
    move-object/from16 v0, p0

    #@265
    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService;->mInternalService:Lcom/android/server/notification/NotificationManagerInternal;

    #@267
    move-object/from16 v0, p0

    #@269
    invoke-virtual {v0, v1, v2}, Lcom/android/server/notification/NotificationManagerService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    #@26c
    .line 857
    return-void

    #@26d
    .line 870
    .end local v4    # "pkgFilter":Landroid/content/IntentFilter;
    .end local v8    # "sdFilter":Landroid/content/IntentFilter;
    .end local v12    # "extractorNames":[Ljava/lang/String;
    .end local v13    # "filter":Landroid/content/IntentFilter;
    .end local v14    # "lights":Lcom/android/server/lights/LightsManager;
    .end local v16    # "systemDir":Ljava/io/File;
    :catch_0
    move-exception v11

    #@26e
    .line 871
    .local v11, "e":Landroid/content/res/Resources$NotFoundException;
    const/4 v1, 0x0

    #@26f
    new-array v12, v1, [Ljava/lang/String;

    #@271
    .restart local v12    # "extractorNames":[Ljava/lang/String;
    goto/16 :goto_0
.end method

.method public savePolicyFile()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x3

    #@1
    .line 398
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    #@3
    invoke-virtual {v0, v1}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->removeMessages(I)V

    #@6
    .line 399
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    #@8
    invoke-virtual {v0, v1}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->sendEmptyMessage(I)Z

    #@b
    .line 397
    return-void
.end method

.method sendAccessibilityEvent(Landroid/app/Notification;Ljava/lang/CharSequence;)V
    .locals 4
    .param p1, "notification"    # Landroid/app/Notification;
    .param p2, "packageName"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 2745
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    #@3
    move-result-object v3

    #@4
    invoke-static {v3}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    #@7
    move-result-object v1

    #@8
    .line 2746
    .local v1, "manager":Landroid/view/accessibility/AccessibilityManager;
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    #@b
    move-result v3

    #@c
    if-nez v3, :cond_0

    #@e
    .line 2747
    return-void

    #@f
    .line 2751
    :cond_0
    const/16 v3, 0x40

    #@11
    invoke-static {v3}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    #@14
    move-result-object v0

    #@15
    .line 2752
    .local v0, "event":Landroid/view/accessibility/AccessibilityEvent;
    invoke-virtual {v0, p2}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    #@18
    .line 2753
    const-class v3, Landroid/app/Notification;

    #@1a
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@1d
    move-result-object v3

    #@1e
    invoke-virtual {v0, v3}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    #@21
    .line 2754
    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityEvent;->setParcelableData(Landroid/os/Parcelable;)V

    #@24
    .line 2755
    iget-object v2, p1, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    #@26
    .line 2756
    .local v2, "tickerText":Ljava/lang/CharSequence;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@29
    move-result v3

    #@2a
    if-nez v3, :cond_1

    #@2c
    .line 2757
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    #@2f
    move-result-object v3

    #@30
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@33
    .line 2760
    :cond_1
    invoke-virtual {v1, v0}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    #@36
    .line 2744
    return-void
.end method

.method setNotificationsEnabledForPackageImpl(Ljava/lang/String;IZ)V
    .locals 10
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "enabled"    # Z

    #@0
    .prologue
    const/4 v6, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 1024
    const-string/jumbo v1, "NotificationService"

    #@5
    new-instance v2, Ljava/lang/StringBuilder;

    #@7
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@a
    if-eqz p3, :cond_0

    #@c
    const-string/jumbo v0, "en"

    #@f
    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v0

    #@13
    const-string/jumbo v2, "abling notifications for "

    #@16
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v0

    #@1a
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v0

    #@1e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21
    move-result-object v0

    #@22
    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@25
    .line 1026
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mAppOps:Landroid/app/AppOpsManager;

    #@27
    .line 1027
    if-eqz p3, :cond_1

    #@29
    move v0, v4

    #@2a
    .line 1026
    :goto_1
    const/16 v2, 0xb

    #@2c
    invoke-virtual {v1, v2, p2, p1, v0}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

    #@2f
    .line 1030
    if-eqz p3, :cond_2

    #@31
    .line 1023
    :goto_2
    return-void

    #@32
    .line 1024
    :cond_0
    const-string/jumbo v0, "dis"

    #@35
    goto :goto_0

    #@36
    :cond_1
    move v0, v6

    #@37
    .line 1027
    goto :goto_1

    #@38
    .line 1031
    :cond_2
    sget v1, Lcom/android/server/notification/NotificationManagerService;->MY_UID:I

    #@3a
    sget v2, Lcom/android/server/notification/NotificationManagerService;->MY_PID:I

    #@3c
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    #@3f
    move-result v7

    #@40
    .line 1032
    const/4 v8, 0x7

    #@41
    const/4 v9, 0x0

    #@42
    move-object v0, p0

    #@43
    move-object v3, p1

    #@44
    move v5, v4

    #@45
    .line 1031
    invoke-virtual/range {v0 .. v9}, Lcom/android/server/notification/NotificationManagerService;->cancelAllNotificationsInt(IILjava/lang/String;IIZIILcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Z

    #@48
    goto :goto_2
.end method

.method showNextToastLocked()V
    .locals 7

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 2494
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    #@3
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@6
    move-result-object v2

    #@7
    check-cast v2, Lcom/android/server/notification/NotificationManagerService$ToastRecord;

    #@9
    .line 2495
    :goto_0
    if-eqz v2, :cond_3

    #@b
    .line 2496
    sget-boolean v3, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    #@d
    if-eqz v3, :cond_0

    #@f
    const-string/jumbo v3, "NotificationService"

    #@12
    new-instance v4, Ljava/lang/StringBuilder;

    #@14
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@17
    const-string/jumbo v5, "Show pkg="

    #@1a
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v4

    #@1e
    iget-object v5, v2, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->pkg:Ljava/lang/String;

    #@20
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v4

    #@24
    const-string/jumbo v5, " callback="

    #@27
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v4

    #@2b
    iget-object v5, v2, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->callback:Landroid/app/ITransientNotification;

    #@2d
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v4

    #@31
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@34
    move-result-object v4

    #@35
    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@38
    .line 2498
    :cond_0
    :try_start_0
    iget-object v3, v2, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->callback:Landroid/app/ITransientNotification;

    #@3a
    invoke-interface {v3}, Landroid/app/ITransientNotification;->show()V

    #@3d
    .line 2499
    invoke-direct {p0, v2}, Lcom/android/server/notification/NotificationManagerService;->scheduleTimeoutLocked(Lcom/android/server/notification/NotificationManagerService$ToastRecord;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@40
    .line 2500
    return-void

    #@41
    .line 2501
    :catch_0
    move-exception v0

    #@42
    .line 2502
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "NotificationService"

    #@45
    new-instance v4, Ljava/lang/StringBuilder;

    #@47
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@4a
    const-string/jumbo v5, "Object died trying to show notification "

    #@4d
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@50
    move-result-object v4

    #@51
    iget-object v5, v2, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->callback:Landroid/app/ITransientNotification;

    #@53
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@56
    move-result-object v4

    #@57
    .line 2503
    const-string/jumbo v5, " in package "

    #@5a
    .line 2502
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5d
    move-result-object v4

    #@5e
    .line 2503
    iget-object v5, v2, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->pkg:Ljava/lang/String;

    #@60
    .line 2502
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@63
    move-result-object v4

    #@64
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@67
    move-result-object v4

    #@68
    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@6b
    .line 2505
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    #@6d
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    #@70
    move-result v1

    #@71
    .line 2506
    .local v1, "index":I
    if-ltz v1, :cond_1

    #@73
    .line 2507
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    #@75
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@78
    .line 2509
    :cond_1
    iget v3, v2, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->pid:I

    #@7a
    invoke-virtual {p0, v3}, Lcom/android/server/notification/NotificationManagerService;->keepProcessAliveLocked(I)V

    #@7d
    .line 2510
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    #@7f
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@82
    move-result v3

    #@83
    if-lez v3, :cond_2

    #@85
    .line 2511
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    #@87
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@8a
    move-result-object v2

    #@8b
    check-cast v2, Lcom/android/server/notification/NotificationManagerService$ToastRecord;

    #@8d
    .local v2, "record":Lcom/android/server/notification/NotificationManagerService$ToastRecord;
    goto/16 :goto_0

    #@8f
    .line 2513
    .end local v2    # "record":Lcom/android/server/notification/NotificationManagerService$ToastRecord;
    :cond_2
    const/4 v2, 0x0

    #@90
    .local v2, "record":Lcom/android/server/notification/NotificationManagerService$ToastRecord;
    goto/16 :goto_0

    #@92
    .line 2493
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "index":I
    .end local v2    # "record":Lcom/android/server/notification/NotificationManagerService$ToastRecord;
    :cond_3
    return-void
.end method

.method updateLightsLocked()V
    .locals 9

    #@0
    .prologue
    .line 3047
    const/4 v1, 0x0

    #@1
    .line 3048
    :cond_0
    :goto_0
    if-nez v1, :cond_1

    #@3
    iget-object v6, p0, Lcom/android/server/notification/NotificationManagerService;->mLights:Ljava/util/ArrayList;

    #@5
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    #@8
    move-result v6

    #@9
    if-eqz v6, :cond_3

    #@b
    .line 3058
    :cond_1
    if-eqz v1, :cond_2

    #@d
    iget-boolean v6, p0, Lcom/android/server/notification/NotificationManagerService;->mInCall:Z

    #@f
    if-nez v6, :cond_2

    #@11
    iget-boolean v6, p0, Lcom/android/server/notification/NotificationManagerService;->mScreenOn:Z

    #@13
    if-eqz v6, :cond_4

    #@15
    .line 3059
    :cond_2
    iget-object v6, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLight:Lcom/android/server/lights/Light;

    #@17
    invoke-virtual {v6}, Lcom/android/server/lights/Light;->turnOff()V

    #@1a
    .line 3060
    iget-object v6, p0, Lcom/android/server/notification/NotificationManagerService;->mStatusBar:Lcom/android/server/statusbar/StatusBarManagerInternal;

    #@1c
    invoke-interface {v6}, Lcom/android/server/statusbar/StatusBarManagerInternal;->notificationLightOff()V

    #@1f
    .line 3044
    :goto_1
    return-void

    #@20
    .line 3049
    :cond_3
    iget-object v6, p0, Lcom/android/server/notification/NotificationManagerService;->mLights:Ljava/util/ArrayList;

    #@22
    iget-object v7, p0, Lcom/android/server/notification/NotificationManagerService;->mLights:Ljava/util/ArrayList;

    #@24
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    #@27
    move-result v7

    #@28
    add-int/lit8 v7, v7, -0x1

    #@2a
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@2d
    move-result-object v5

    #@2e
    check-cast v5, Ljava/lang/String;

    #@30
    .line 3050
    .local v5, "owner":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    #@32
    invoke-virtual {v6, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@35
    move-result-object v1

    #@36
    check-cast v1, Lcom/android/server/notification/NotificationRecord;

    #@38
    .line 3051
    .local v1, "ledNotification":Lcom/android/server/notification/NotificationRecord;
    if-nez v1, :cond_0

    #@3a
    .line 3052
    const-string/jumbo v6, "NotificationService"

    #@3d
    new-instance v7, Ljava/lang/StringBuilder;

    #@3f
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@42
    const-string/jumbo v8, "LED Notification does not exist: "

    #@45
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v7

    #@49
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v7

    #@4d
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@50
    move-result-object v7

    #@51
    invoke-static {v6, v7}, Landroid/util/Slog;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    #@54
    .line 3053
    iget-object v6, p0, Lcom/android/server/notification/NotificationManagerService;->mLights:Ljava/util/ArrayList;

    #@56
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@59
    goto :goto_0

    #@5a
    .line 3062
    .end local v1    # "ledNotification":Lcom/android/server/notification/NotificationRecord;
    .end local v5    # "owner":Ljava/lang/String;
    :cond_4
    iget-object v6, v1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    #@5c
    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    #@5f
    move-result-object v4

    #@60
    .line 3063
    .local v4, "ledno":Landroid/app/Notification;
    iget v0, v4, Landroid/app/Notification;->ledARGB:I

    #@62
    .line 3064
    .local v0, "ledARGB":I
    iget v3, v4, Landroid/app/Notification;->ledOnMS:I

    #@64
    .line 3065
    .local v3, "ledOnMS":I
    iget v2, v4, Landroid/app/Notification;->ledOffMS:I

    #@66
    .line 3066
    .local v2, "ledOffMS":I
    iget v6, v4, Landroid/app/Notification;->defaults:I

    #@68
    and-int/lit8 v6, v6, 0x4

    #@6a
    if-eqz v6, :cond_5

    #@6c
    .line 3067
    iget v0, p0, Lcom/android/server/notification/NotificationManagerService;->mDefaultNotificationColor:I

    #@6e
    .line 3068
    iget v3, p0, Lcom/android/server/notification/NotificationManagerService;->mDefaultNotificationLedOn:I

    #@70
    .line 3069
    iget v2, p0, Lcom/android/server/notification/NotificationManagerService;->mDefaultNotificationLedOff:I

    #@72
    .line 3071
    :cond_5
    iget-boolean v6, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationPulseEnabled:Z

    #@74
    if-eqz v6, :cond_6

    #@76
    .line 3073
    iget-object v6, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLight:Lcom/android/server/lights/Light;

    #@78
    const/4 v7, 0x1

    #@79
    invoke-virtual {v6, v0, v7, v3, v2}, Lcom/android/server/lights/Light;->setFlashing(IIII)V

    #@7c
    .line 3077
    :cond_6
    iget-object v6, p0, Lcom/android/server/notification/NotificationManagerService;->mStatusBar:Lcom/android/server/statusbar/StatusBarManagerInternal;

    #@7e
    invoke-interface {v6, v0, v3, v2}, Lcom/android/server/statusbar/StatusBarManagerInternal;->notificationLightPulse(III)V

    #@81
    goto :goto_1
.end method
